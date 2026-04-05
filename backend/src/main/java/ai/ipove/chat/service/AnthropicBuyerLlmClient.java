package ai.ipove.chat.service;

import ai.ipove.chat.dto.BuyerRouteDecision;
import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.dto.ProductSnippetDto;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatMessageRole;
import ai.ipove.chat.entity.ChatSession;
import ai.ipove.config.AiProperties;
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

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class AnthropicBuyerLlmClient implements BuyerLlmClient {

    private static final String BUYER_SYSTEM =
            """
            You are the ipove.ai shopping consultant (buyer mode: "What are you looking for?").
            Reply in Georgian by default; match the user's language if they write in English or Russian.
            """
                    + BuyerChatFormattingRules.TEXT
                    + """
            Be concise and helpful. Call search_products ONLY when the user needs live marketplace listings (find, filter, compare products, prices, availability).
            Do NOT call search_products for greetings, thanks, small talk, or generic questions that do not require the product database.
            When you do call it, use a short focused query in the user's language.
            After tool results, summarize options in natural language and suggest next steps (filters, budget, condition).""";

    private final AiProperties aiProperties;
    private final ObjectMapper objectMapper;
    private final ProductSearchTool productSearchTool;
    private final BuyerNlSqlSearchService buyerNlSqlSearchService;
    private final RestClient anthropicClient;

    public AnthropicBuyerLlmClient(
            AiProperties aiProperties,
            ObjectMapper objectMapper,
            ProductSearchTool productSearchTool,
            BuyerNlSqlSearchService buyerNlSqlSearchService) {
        this.aiProperties = aiProperties;
        this.objectMapper = objectMapper;
        this.productSearchTool = productSearchTool;
        this.buyerNlSqlSearchService = buyerNlSqlSearchService;
        this.anthropicClient = RestClient.builder()
                .baseUrl("https://api.anthropic.com")
                .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                .defaultHeader("anthropic-version", "2023-06-01")
                .build();
    }

    public boolean isEnabled() {
        return aiProperties.getAnthropicApiKey() != null
                && !aiProperties.getAnthropicApiKey().isBlank();
    }

    @Override
    public LlmReply completeBuyerTurn(ChatSession session, List<ChatMessage> historyIncludingLatestUser) {
        if (!isEnabled()) {
            throw new IllegalStateException("Anthropic is not configured");
        }
        ArrayNode messages = objectMapper.createArrayNode();
        for (ChatMessage m : historyIncludingLatestUser) {
            if (m.getRole() == ChatMessageRole.SYSTEM) {
                continue;
            }
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

        ArrayNode tools = objectMapper.createArrayNode();
        ObjectNode tool = objectMapper.createObjectNode();
        tool.put("name", "search_products");
        tool.put(
                "description",
                "Search marketplace listings by keywords (brand, model, category, features). Use the user's language in the query.");
        ObjectNode inputSchema = objectMapper.createObjectNode();
        inputSchema.put("type", "object");
        ObjectNode queryProp = objectMapper.createObjectNode();
        queryProp.put("type", "string");
        queryProp.put("description", "Search query in any language");
        ObjectNode properties = objectMapper.createObjectNode();
        properties.set("query", queryProp);
        inputSchema.set("properties", properties);
        inputSchema.set("required", objectMapper.createArrayNode().add("query"));
        tool.set("input_schema", inputSchema);
        tools.add(tool);

        ChatMessage lastUserMsg = historyIncludingLatestUser.getLast();
        BuyerRouteDecision routeDecision =
                aiProperties.isBuyerNlSqlEnabled()
                        ? buyerNlSqlSearchService.routeMarketplaceAndSql(lastUserMsg.getContent())
                        : new BuyerRouteDecision(true, null);
        boolean offerSearchTools = routeDecision.queryMarketplace();
        final boolean[] routeSqlConsumed = {false};

        List<ProductSnippetDto> lastProducts = List.of();
        StringBuilder finalText = new StringBuilder();

        for (int round = 0; round < 6; round++) {
            ObjectNode body = objectMapper.createObjectNode();
            body.put("model", aiProperties.getModel());
            body.put("max_tokens", aiProperties.getMaxTokens());
            body.put("system", BUYER_SYSTEM);
            if (offerSearchTools) {
                body.set("tools", tools);
            }
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
                log.warn("Anthropic request failed: {}", e.getMessage());
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
                    if ("search_products".equals(name)) {
                        String q = input.path("query").asText("");
                        ChatMessage lastMsg = historyIncludingLatestUser.getLast();
                        String nlQuestion =
                                lastMsg.getRole() == ChatMessageRole.USER ? lastMsg.getContent() : q;
                        resultJson = "[]";
                        boolean filled = false;
                        if (!routeSqlConsumed[0] && StringUtils.hasText(routeDecision.sql())) {
                            routeSqlConsumed[0] = true;
                            var routed =
                                    buyerNlSqlSearchService.tryExecuteRoutedSelect(
                                            session.getTenantId(), routeDecision.sql());
                            if (routed.isPresent()) {
                                lastProducts = routed.get().productSnippets();
                                try {
                                    resultJson = objectMapper.writeValueAsString(routed.get().rows());
                                } catch (Exception e) {
                                    resultJson = "[]";
                                }
                                filled = true;
                            }
                        }
                        if (!filled) {
                            var nlOpt = buyerNlSqlSearchService.run(session.getTenantId(), nlQuestion);
                            if (nlOpt.isPresent()) {
                                lastProducts = nlOpt.get().productSnippets();
                                try {
                                    resultJson = objectMapper.writeValueAsString(nlOpt.get().rows());
                                } catch (Exception e) {
                                    resultJson = "[]";
                                }
                            } else {
                                lastProducts = productSearchTool.search(session.getTenantId(), q, 10);
                                try {
                                    resultJson = objectMapper.writeValueAsString(lastProducts);
                                } catch (Exception e) {
                                    resultJson = "[]";
                                }
                            }
                        }
                    } else {
                        resultJson = "{\"error\":\"unknown tool\"}";
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

        return new LlmReply(finalText.toString().trim(), lastProducts);
    }
}
