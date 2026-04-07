package ai.ipove.chat.service;

import ai.ipove.category.dto.CategoryResponse;
import ai.ipove.category.service.CategoryService;
import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatMessageRole;
import ai.ipove.chat.entity.ChatSession;
import ai.ipove.config.AiProperties;
import ai.ipove.product.dto.CreateProductRequest;
import ai.ipove.product.service.ProductService;
import ai.ipove.user.entity.User;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Slf4j
@Service
public class AnthropicSellerLlmClient implements SellerLlmClient {

    private static final String SELLER_SYSTEM =
            """
            You are the ipove.ai listing assistant (seller mode: "What are you selling?").
            Your job is to help the seller list their product on the marketplace through a friendly conversation.
            Reply in Georgian by default; match the user's language if they write in English or Russian.

            LISTING FLOW:
            1. Greet the seller and ask what they want to sell.
            2. Collect: title/description, price, condition (new/like_new/good/fair), category, location (optional).
            3. When you have enough info (title + price at minimum), call detect_category to find the right category.
            4. Optionally call suggest_price to validate or recommend a price.
            5. Call generate_description to craft a professional product description.
            6. Present a summary to the seller and ask for confirmation.
            7. When the seller confirms (says yes/კი/ok/ready), call create_listing to publish the product.
            8. After create_listing succeeds, congratulate the seller and tell them to add photos.

            RULES:
            - Ask ONE question at a time; don't overwhelm the seller.
            - Be encouraging and brief.
            - If the seller provides all info in one message, skip unnecessary follow-up questions.
            - ONLY call create_listing when the seller explicitly confirms they want to publish.
            - Price must be a positive number in GEL (or another currency if seller specifies).
            - Condition values: new, like_new, good, fair.
            """;

    private final AiProperties aiProperties;
    private final ObjectMapper objectMapper;
    private final CategoryService categoryService;
    private final ProductService productService;
    private final RestClient anthropicClient;

    public AnthropicSellerLlmClient(
            AiProperties aiProperties,
            ObjectMapper objectMapper,
            CategoryService categoryService,
            ProductService productService) {
        this.aiProperties = aiProperties;
        this.objectMapper = objectMapper;
        this.categoryService = categoryService;
        this.productService = productService;
        this.anthropicClient = RestClient.builder()
                .baseUrl("https://api.anthropic.com")
                .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                .defaultHeader("anthropic-version", "2023-06-01")
                .build();
    }

    @Override
    public boolean isEnabled() {
        return StringUtils.hasText(aiProperties.getAnthropicApiKey());
    }

    @Override
    public LlmReply completeSellerTurn(User seller, ChatSession session, List<ChatMessage> history) {
        if (!isEnabled()) {
            throw new IllegalStateException("Anthropic is not configured");
        }

        List<CategoryResponse> categories = fetchCategories();
        String categoryListJson = buildCategoryListJson(categories);

        ArrayNode messages = buildMessages(history);
        ArrayNode tools = buildToolDefinitions(categoryListJson);

        StringBuilder finalText = new StringBuilder();
        UUID createdProductId = null;

        for (int round = 0; round < 8; round++) {
            ObjectNode body = objectMapper.createObjectNode();
            body.put("model", aiProperties.getModel());
            body.put("max_tokens", aiProperties.getMaxTokens());
            body.put("system", SELLER_SYSTEM);
            body.set("tools", tools);
            body.set("messages", messages);

            JsonNode response;
            try {
                response = anthropicClient
                        .post()
                        .uri("/v1/messages")
                        .header("x-api-key", aiProperties.getAnthropicApiKey())
                        .contentType(MediaType.APPLICATION_JSON)
                        .body(body.toString())
                        .retrieve()
                        .body(JsonNode.class);
            } catch (RestClientException e) {
                log.warn("Anthropic seller request failed: {}", e.getMessage());
                throw e;
            }

            if (response == null) {
                throw new IllegalStateException("Empty Anthropic response");
            }

            String stopReason = response.path("stop_reason").asText("");
            JsonNode content = response.path("content");

            List<JsonNode> toolUses = new ArrayList<>();
            for (JsonNode block : content) {
                if ("text".equals(block.path("type").asText())) {
                    finalText.append(block.path("text").asText(""));
                } else if ("tool_use".equals(block.path("type").asText())) {
                    toolUses.add(block);
                }
            }

            if ("tool_use".equals(stopReason) && !toolUses.isEmpty()) {
                ObjectNode asst = objectMapper.createObjectNode();
                asst.put("role", "assistant");
                asst.set("content", content);
                messages.add(asst);

                ArrayNode toolResults = objectMapper.createArrayNode();
                for (JsonNode tu : toolUses) {
                    String id = tu.path("id").asText();
                    String name = tu.path("name").asText();
                    JsonNode input = tu.path("input");
                    String resultJson;

                    switch (name) {
                        case "detect_category" -> resultJson = handleDetectCategory(input, categories);
                        case "suggest_price" -> resultJson = handleSuggestPrice(input);
                        case "generate_description" -> resultJson = handleGenerateDescription(input);
                        case "create_listing" -> {
                            var result = handleCreateListing(seller, input, categories);
                            createdProductId = result.productId();
                            resultJson = result.json();
                        }
                        default -> resultJson = "{\"error\":\"unknown tool\"}";
                    }

                    ObjectNode tr = objectMapper.createObjectNode();
                    tr.put("type", "tool_result");
                    tr.put("tool_use_id", id);
                    tr.put("content", resultJson);
                    toolResults.add(tr);
                }

                ObjectNode userTool = objectMapper.createObjectNode();
                userTool.put("role", "user");
                userTool.set("content", toolResults);
                messages.add(userTool);
                continue;
            }

            break;
        }

        String text = finalText.toString().trim();
        if (createdProductId != null) {
            return LlmReply.listingCreated(text, createdProductId);
        }
        return LlmReply.textOnly(text);
    }

    // ── Tool Handlers ──────────────────────────────────────────────────────────

    private String handleDetectCategory(JsonNode input, List<CategoryResponse> categories) {
        String description = input.path("description").asText("");
        String descLower = description.toLowerCase();

        for (CategoryResponse cat : categories) {
            if (descLower.contains(cat.getName().toLowerCase())
                    || descLower.contains(cat.getSlug().toLowerCase())) {
                return buildCategoryResult(cat);
            }
            if (cat.getChildren() != null) {
                for (CategoryResponse child : cat.getChildren()) {
                    if (descLower.contains(child.getName().toLowerCase())
                            || descLower.contains(child.getSlug().toLowerCase())) {
                        return buildCategoryResult(child);
                    }
                }
            }
        }
        // Return first available category as default
        if (!categories.isEmpty()) {
            return buildCategoryResult(categories.get(0));
        }
        return "{\"category_id\":null,\"category_name\":\"სხვა\"}";
    }

    private String buildCategoryResult(CategoryResponse cat) {
        try {
            ObjectNode n = objectMapper.createObjectNode();
            n.put("category_id", cat.getId().toString());
            n.put("category_name", cat.getName());
            return objectMapper.writeValueAsString(n);
        } catch (Exception e) {
            return "{\"category_id\":null,\"category_name\":\"სხვა\"}";
        }
    }

    private String handleSuggestPrice(JsonNode input) {
        // Simple heuristic — real pricing would use market data
        String condition = input.path("condition").asText("good");
        double baseHint = switch (condition) {
            case "new" -> 1.0;
            case "like_new" -> 0.85;
            case "good" -> 0.65;
            default -> 0.45;
        };
        try {
            ObjectNode n = objectMapper.createObjectNode();
            n.put("suggested_price_note", "მიუთითე ფასი ბაზრის ანალიზის გათვალისწინებით (" + Math.round(baseHint * 100) + "% ახალი ფასიდან)");
            n.put("currency", "GEL");
            return objectMapper.writeValueAsString(n);
        } catch (Exception e) {
            return "{\"suggested_price_note\":\"გთხოვ, ბაზრის ანალიზი ჩაატარე\"}";
        }
    }

    private String handleGenerateDescription(JsonNode input) {
        String details = input.path("details").asText("");
        String generated = details.isBlank() ? "პროდუქტი კარგ მდგომარეობაში." : details;
        try {
            ObjectNode n = objectMapper.createObjectNode();
            n.put("description", generated);
            return objectMapper.writeValueAsString(n);
        } catch (Exception e) {
            return "{\"description\":\"" + generated + "\"}";
        }
    }

    private record CreateListingResult(UUID productId, String json) {}

    private CreateListingResult handleCreateListing(User seller, JsonNode input, List<CategoryResponse> categories) {
        try {
            String title = input.path("title").asText("").trim();
            String description = input.path("description").asText("").trim();
            String priceStr = input.path("price").asText("0");
            String currency = input.path("currency").asText("GEL");
            String categoryIdStr = input.path("category_id").asText("");
            String condition = input.path("condition").asText("good");
            String location = input.path("location").asText("").trim();

            if (title.isBlank()) {
                return new CreateListingResult(null, "{\"error\":\"title is required\"}");
            }
            if (description.isBlank()) {
                description = title;
            }

            BigDecimal price;
            try {
                price = new BigDecimal(priceStr.replaceAll("[^\\d.]", ""));
                if (price.compareTo(BigDecimal.ONE) < 0) price = BigDecimal.ONE;
            } catch (NumberFormatException e) {
                price = BigDecimal.valueOf(1);
            }

            UUID categoryId = null;
            if (StringUtils.hasText(categoryIdStr)) {
                try {
                    categoryId = UUID.fromString(categoryIdStr);
                } catch (IllegalArgumentException ignored) {
                    // category name match fallback
                    for (CategoryResponse cat : categories) {
                        if (cat.getName().equalsIgnoreCase(categoryIdStr)) {
                            categoryId = cat.getId();
                            break;
                        }
                    }
                }
            }

            CreateProductRequest req = new CreateProductRequest();
            req.setTitle(title);
            req.setDescription(description);
            req.setPrice(price);
            req.setCurrency(currency.isBlank() ? "GEL" : currency);
            req.setCondition(condition);
            req.setCategoryId(categoryId);
            if (!location.isBlank()) req.setLocation(location);

            var product = productService.create(seller, req);
            log.info("Seller listing created via AI chat: productId={}, seller={}", product.getId(), seller.getId());

            ObjectNode result = objectMapper.createObjectNode();
            result.put("success", true);
            result.put("product_id", product.getId().toString());
            result.put("title", product.getTitle());
            result.put("price", product.getPrice().toPlainString());
            result.put("currency", product.getCurrency());
            return new CreateListingResult(product.getId(), objectMapper.writeValueAsString(result));

        } catch (Exception e) {
            log.error("Failed to create listing from chat: {}", e.getMessage(), e);
            return new CreateListingResult(null, "{\"error\":\"" + e.getMessage() + "\"}");
        }
    }

    // ── Message / Tool builders ────────────────────────────────────────────────

    private ArrayNode buildMessages(List<ChatMessage> history) {
        ArrayNode messages = objectMapper.createArrayNode();
        for (ChatMessage m : history) {
            if (m.getRole() == ChatMessageRole.SYSTEM) continue;
            String role = m.getRole() == ChatMessageRole.USER ? "user" : "assistant";
            ObjectNode block = objectMapper.createObjectNode();
            block.put("type", "text");
            block.put("text", m.getContent());
            ArrayNode content = objectMapper.createArrayNode();
            content.add(block);
            ObjectNode msg = objectMapper.createObjectNode();
            msg.put("role", role);
            msg.set("content", content);
            messages.add(msg);
        }
        return messages;
    }

    private List<CategoryResponse> fetchCategories() {
        try {
            return categoryService.getCategoryTree();
        } catch (Exception e) {
            log.warn("Could not fetch categories for seller LLM: {}", e.getMessage());
            return List.of();
        }
    }

    private String buildCategoryListJson(List<CategoryResponse> categories) {
        try {
            return objectMapper.writeValueAsString(
                    categories.stream().map(c -> {
                        ObjectNode n = objectMapper.createObjectNode();
                        n.put("id", c.getId().toString());
                        n.put("name", c.getName());
                        if (c.getChildren() != null && !c.getChildren().isEmpty()) {
                            ArrayNode ch = objectMapper.createArrayNode();
                            c.getChildren().forEach(child -> {
                                ObjectNode cn = objectMapper.createObjectNode();
                                cn.put("id", child.getId().toString());
                                cn.put("name", child.getName());
                                ch.add(cn);
                            });
                            n.set("children", ch);
                        }
                        return n;
                    }).toList());
        } catch (Exception e) {
            return "[]";
        }
    }

    private ArrayNode buildToolDefinitions(String categoryListJson) {
        ArrayNode tools = objectMapper.createArrayNode();

        // detect_category
        ObjectNode detectCat = objectMapper.createObjectNode();
        detectCat.put("name", "detect_category");
        detectCat.put("description",
                "Detect the best matching product category from available categories. " +
                "Available categories (JSON): " + categoryListJson);
        ObjectNode dcSchema = objectMapper.createObjectNode();
        dcSchema.put("type", "object");
        ObjectNode dcProps = objectMapper.createObjectNode();
        ObjectNode dcDesc = objectMapper.createObjectNode();
        dcDesc.put("type", "string");
        dcDesc.put("description", "Product description or keywords to match against categories");
        dcProps.set("description", dcDesc);
        dcSchema.set("properties", dcProps);
        dcSchema.set("required", objectMapper.createArrayNode().add("description"));
        detectCat.set("input_schema", dcSchema);
        tools.add(detectCat);

        // suggest_price
        ObjectNode suggestPrice = objectMapper.createObjectNode();
        suggestPrice.put("name", "suggest_price");
        suggestPrice.put("description", "Get a price suggestion hint based on product condition and category.");
        ObjectNode spSchema = objectMapper.createObjectNode();
        spSchema.put("type", "object");
        ObjectNode spProps = objectMapper.createObjectNode();
        ObjectNode spCond = objectMapper.createObjectNode();
        spCond.put("type", "string");
        spCond.put("description", "Product condition: new, like_new, good, or fair");
        spProps.set("condition", spCond);
        ObjectNode spCat = objectMapper.createObjectNode();
        spCat.put("type", "string");
        spCat.put("description", "Category name (optional)");
        spProps.set("category", spCat);
        spSchema.set("properties", spProps);
        spSchema.set("required", objectMapper.createArrayNode().add("condition"));
        suggestPrice.set("input_schema", spSchema);
        tools.add(suggestPrice);

        // generate_description
        ObjectNode genDesc = objectMapper.createObjectNode();
        genDesc.put("name", "generate_description");
        genDesc.put("description", "Generate a professional product description from seller-provided details.");
        ObjectNode gdSchema = objectMapper.createObjectNode();
        gdSchema.put("type", "object");
        ObjectNode gdProps = objectMapper.createObjectNode();
        ObjectNode gdDetails = objectMapper.createObjectNode();
        gdDetails.put("type", "string");
        gdDetails.put("description", "Raw product details from the seller conversation");
        gdProps.set("details", gdDetails);
        gdSchema.set("properties", gdProps);
        gdSchema.set("required", objectMapper.createArrayNode().add("details"));
        genDesc.set("input_schema", gdSchema);
        tools.add(genDesc);

        // create_listing
        ObjectNode createListing = objectMapper.createObjectNode();
        createListing.put("name", "create_listing");
        createListing.put("description",
                "Create and publish a product listing on the marketplace. Call ONLY after the seller confirms.");
        ObjectNode clSchema = objectMapper.createObjectNode();
        clSchema.put("type", "object");
        ObjectNode clProps = objectMapper.createObjectNode();
        addStringProp(clProps, "title", "Product title (max 100 characters)");
        addStringProp(clProps, "description", "Full product description");
        addStringProp(clProps, "price", "Price as a number string (e.g. '299.99')");
        addStringProp(clProps, "currency", "Currency code: GEL, USD, or EUR");
        addStringProp(clProps, "category_id", "Category UUID from detect_category result");
        addStringProp(clProps, "condition", "Condition: new, like_new, good, or fair");
        addStringProp(clProps, "location", "Seller location (optional, e.g. 'თბილისი')");
        clSchema.set("properties", clProps);
        clSchema.set("required", objectMapper.createArrayNode()
                .add("title").add("description").add("price").add("condition"));
        createListing.set("input_schema", clSchema);
        tools.add(createListing);

        return tools;
    }

    private void addStringProp(ObjectNode props, String name, String description) {
        ObjectNode prop = objectMapper.createObjectNode();
        prop.put("type", "string");
        prop.put("description", description);
        props.set(name, prop);
    }
}
