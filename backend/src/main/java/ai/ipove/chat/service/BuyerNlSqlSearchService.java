package ai.ipove.chat.service;

import ai.ipove.chat.dto.BuyerMarketplaceContext;
import ai.ipove.chat.dto.BuyerRouteDecision;
import ai.ipove.chat.dto.NlSqlBuyerSearchResult;
import ai.ipove.chat.dto.ProductSnippetDto;
import ai.ipove.chat.sql.BuyerMarketplaceSqlSchema;
import ai.ipove.chat.sql.SafeBuyerSqlExecutor;
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
import org.springframework.web.util.UriComponentsBuilder;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

/**
 * რაუტინგი (საჭიროა თუ არა კატალოგი) + ოფციონალური NL→SELECT და უსაფრთხო შესრულება.
 */
@Slf4j
@Service
public class BuyerNlSqlSearchService {

    private final AiProperties aiProperties;
    private final ObjectMapper objectMapper;
    private final SafeBuyerSqlExecutor safeBuyerSqlExecutor;
    private final ProductSearchTool productSearchTool;
    private final RestClient geminiClient;
    private final RestClient anthropicClient;

    public BuyerNlSqlSearchService(
            AiProperties aiProperties,
            ObjectMapper objectMapper,
            SafeBuyerSqlExecutor safeBuyerSqlExecutor,
            ProductSearchTool productSearchTool) {
        this.aiProperties = aiProperties;
        this.objectMapper = objectMapper;
        this.safeBuyerSqlExecutor = safeBuyerSqlExecutor;
        this.productSearchTool = productSearchTool;
        this.geminiClient = RestClient.builder().baseUrl("https://generativelanguage.googleapis.com").build();
        this.anthropicClient = RestClient.builder()
                .baseUrl("https://api.anthropic.com")
                .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                .defaultHeader("anthropic-version", "2023-06-01")
                .build();
    }

    /**
     * Gemini: განსაზღვრავს საუბარია თუ კატალოგის მოძიება; ბაზას მხოლოდ მეორე შემთხვევაში ეხება.
     */
    public BuyerMarketplaceContext resolveForGemini(UUID tenantId, String userQuestion) {
        if (!StringUtils.hasText(userQuestion)) {
            return conversationalContext();
        }
        String q = userQuestion.trim();
        if (q.length() > 2000) {
            q = q.substring(0, 2000);
        }
        if (!aiProperties.isBuyerNlSqlEnabled()) {
            return keywordContext(tenantId, q);
        }
        BuyerRouteDecision route = routeMarketplaceAndSql(q);
        if (!route.queryMarketplace()) {
            log.debug("Router: conversational only (no DB lookup)");
            return conversationalContext();
        }
        if (StringUtils.hasText(route.sql())) {
            try {
                var exec = safeBuyerSqlExecutor.execute(tenantId, route.sql());
                log.debug("NL SQL executed after route: {}", exec.sanitizedSql());
                List<ProductSnippetDto> snippets = snippetsFromRows(exec.rows());
                String json = toJson(exec.rows());
                return new BuyerMarketplaceContext(false, snippets, json);
            } catch (IllegalArgumentException | IllegalStateException e) {
                log.debug("Routed SQL failed, keyword fallback: {}", e.getMessage());
            }
        }
        return keywordContext(tenantId, q);
    }

    /**
     * ერთი LLM პასუხი: query_marketplace + ოფციონალური sql. პარსინგის ჩავარდნისას უსაფრთხო ნაგულისხმევი: კატალოგი ჩართული, sql გარეშე.
     */
    public BuyerRouteDecision routeMarketplaceAndSql(String userQuestion) {
        if (!StringUtils.hasText(userQuestion)) {
            return new BuyerRouteDecision(true, null);
        }
        String q = userQuestion.trim();
        if (q.length() > 2000) {
            q = q.substring(0, 2000);
        }
        String raw = null;
        if (StringUtils.hasText(aiProperties.getGoogleAiApiKey())) {
            raw = tryGeminiRoute(q);
        }
        if (raw == null && StringUtils.hasText(aiProperties.getAnthropicApiKey())) {
            raw = tryAnthropicRoute(q);
        }
        if (!StringUtils.hasText(raw)) {
            return new BuyerRouteDecision(true, null);
        }
        return parseRouteDecision(raw);
    }

    /**
     * უსაფრთხოდ ასრულებს უკვე გენერირებულ SELECT-ს (მაგ. რაუტერის პირველი ცდა Anthropic-ზე).
     */
    public Optional<NlSqlBuyerSearchResult> tryExecuteRoutedSelect(UUID tenantId, String sql) {
        if (!StringUtils.hasText(sql)) {
            return Optional.empty();
        }
        try {
            var exec = safeBuyerSqlExecutor.execute(tenantId, sql.trim());
            return Optional.of(new NlSqlBuyerSearchResult(
                    exec.rows(), exec.sanitizedSql(), snippetsFromRows(exec.rows())));
        } catch (IllegalArgumentException | IllegalStateException e) {
            log.debug("Routed SELECT execution failed: {}", e.getMessage());
            return Optional.empty();
        }
    }

    /**
     * მხოლოდ SQL-ის ხელახალი გენერაცია + შესრულება (როცა რაუტერის sql ცარიელი იყო ან ჩავარდა).
     */
    public Optional<NlSqlBuyerSearchResult> run(UUID tenantId, String userQuestion) {
        if (!aiProperties.isBuyerNlSqlEnabled() || !StringUtils.hasText(userQuestion)) {
            return Optional.empty();
        }
        String q = userQuestion.trim();
        if (q.length() > 2000) {
            q = q.substring(0, 2000);
        }
        String rawSql = generateSqlOnlyWithLlm(q);
        if (!StringUtils.hasText(rawSql)) {
            return Optional.empty();
        }
        try {
            var exec = safeBuyerSqlExecutor.execute(tenantId, rawSql);
            List<ProductSnippetDto> snippets = snippetsFromRows(exec.rows());
            return Optional.of(new NlSqlBuyerSearchResult(exec.rows(), exec.sanitizedSql(), snippets));
        } catch (IllegalArgumentException | IllegalStateException e) {
            log.debug("NL SQL run() skipped: {}", e.getMessage());
            return Optional.empty();
        }
    }

    private String generateSqlOnlyWithLlm(String userQuestion) {
        String raw = null;
        if (StringUtils.hasText(aiProperties.getGoogleAiApiKey())) {
            raw = tryGeminiSqlOnly(userQuestion);
        }
        if (raw == null && StringUtils.hasText(aiProperties.getAnthropicApiKey())) {
            raw = tryAnthropicSqlOnly(userQuestion);
        }
        return raw;
    }

    private BuyerMarketplaceContext conversationalContext() {
        return new BuyerMarketplaceContext(true, List.of(), "[]");
    }

    private BuyerMarketplaceContext keywordContext(UUID tenantId, String q) {
        List<ProductSnippetDto> products = productSearchTool.search(tenantId, q, 12);
        return new BuyerMarketplaceContext(false, products, toJson(products));
    }

    private String toJson(Object o) {
        try {
            return objectMapper.writeValueAsString(o);
        } catch (Exception e) {
            return "[]";
        }
    }

    private BuyerRouteDecision parseRouteDecision(String raw) {
        String t = raw.trim();
        int start = t.indexOf('{');
        int end = t.lastIndexOf('}');
        if (start >= 0 && end > start) {
            t = t.substring(start, end + 1);
        }
        try {
            JsonNode n = objectMapper.readTree(t);
            boolean qm = n.has("query_marketplace") && n.get("query_marketplace").isBoolean()
                    ? n.get("query_marketplace").asBoolean()
                    : true;
            String sql = n.path("sql").asText(null);
            if (StringUtils.hasText(sql)) {
                sql = sql.trim();
            } else {
                sql = null;
            }
            if (!qm) {
                sql = null;
            }
            return new BuyerRouteDecision(qm, sql);
        } catch (Exception e) {
            log.debug("Route JSON parse failed: {}", e.getMessage());
            return new BuyerRouteDecision(true, null);
        }
    }

    private String tryGeminiRoute(String userQuestion) {
        return callGemini(BuyerMarketplaceSqlSchema.ROUTING_AND_SQL_JSON, userQuestion, 1024);
    }

    private String callGemini(String systemText, String userText, int maxTokens) {
        ObjectNode root = objectMapper.createObjectNode();
        ObjectNode sys = objectMapper.createObjectNode();
        ArrayNode sysParts = objectMapper.createArrayNode();
        sysParts.add(objectMapper.createObjectNode().put("text", systemText));
        sys.set("parts", sysParts);
        root.set("systemInstruction", sys);

        ArrayNode parts = objectMapper.createArrayNode();
        parts.add(objectMapper.createObjectNode().put("text", "User question:\n" + userText));
        ObjectNode userTurn = objectMapper.createObjectNode();
        userTurn.put("role", "user");
        userTurn.set("parts", parts);
        ArrayNode contents = objectMapper.createArrayNode();
        contents.add(userTurn);
        root.set("contents", contents);

        ObjectNode genCfg = objectMapper.createObjectNode();
        genCfg.put("maxOutputTokens", maxTokens);
        genCfg.put("temperature", 0.1);
        root.set("generationConfig", genCfg);

        String model = aiProperties.getGoogleAiModel();
        String path = UriComponentsBuilder.fromPath("/v1beta/models/{model}:generateContent")
                .buildAndExpand(model)
                .toUriString();
        try {
            JsonNode response = geminiClient
                    .post()
                    .uri(path)
                    .header("X-goog-api-key", aiProperties.getGoogleAiApiKey())
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(root.toString())
                    .retrieve()
                    .body(JsonNode.class);
            if (response == null) {
                return null;
            }
            return extractGeminiText(response);
        } catch (RestClientException e) {
            log.debug("Gemini LLM call failed: {}", e.getMessage());
            return null;
        }
    }

    private String tryAnthropicRoute(String userQuestion) {
        return callAnthropic(BuyerMarketplaceSqlSchema.ROUTING_AND_SQL_JSON, userQuestion, 1024);
    }

    private String callAnthropic(String systemText, String userText, int maxTokens) {
        ObjectNode body = objectMapper.createObjectNode();
        body.put("model", aiProperties.getModel());
        body.put("max_tokens", maxTokens);
        body.put("system", systemText);
        ArrayNode messages = objectMapper.createArrayNode();
        ObjectNode userMsg = objectMapper.createObjectNode();
        userMsg.put("role", "user");
        ArrayNode content = objectMapper.createArrayNode();
        ObjectNode block = objectMapper.createObjectNode();
        block.put("type", "text");
        block.put("text", "User question:\n" + userText);
        content.add(block);
        userMsg.set("content", content);
        messages.add(userMsg);
        body.set("messages", messages);
        try {
            JsonNode response = anthropicClient
                    .post()
                    .uri("/v1/messages")
                    .header("x-api-key", aiProperties.getAnthropicApiKey())
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(body.toString())
                    .retrieve()
                    .body(JsonNode.class);
            if (response == null) {
                return null;
            }
            StringBuilder text = new StringBuilder();
            for (JsonNode b : response.path("content")) {
                if ("text".equals(b.path("type").asText())) {
                    text.append(b.path("text").asText(""));
                }
            }
            return text.toString();
        } catch (RestClientException e) {
            log.debug("Anthropic LLM call failed: {}", e.getMessage());
            return null;
        }
    }

    private static String extractGeminiText(JsonNode response) {
        StringBuilder sb = new StringBuilder();
        JsonNode candidates = response.path("candidates");
        if (!candidates.isArray() || candidates.isEmpty()) {
            return "";
        }
        JsonNode pnodes = candidates.get(0).path("content").path("parts");
        if (!pnodes.isArray()) {
            return "";
        }
        for (JsonNode p : pnodes) {
            if (p.has("text")) {
                sb.append(p.path("text").asText(""));
            }
        }
        return sb.toString();
    }

    /** SQL-ის გამოყოფა მხოლოდ {"sql":"..."} ფორმატიდან (sql-only პრომპტი). */
    private String parseSqlOnlyJson(String raw) {
        if (!StringUtils.hasText(raw)) {
            return null;
        }
        String t = raw.trim();
        int start = t.indexOf('{');
        int end = t.lastIndexOf('}');
        if (start >= 0 && end > start) {
            t = t.substring(start, end + 1);
        }
        try {
            JsonNode n = objectMapper.readTree(t);
            String sql = n.path("sql").asText(null);
            return StringUtils.hasText(sql) ? sql.trim() : null;
        } catch (Exception e) {
            return null;
        }
    }

    private String tryGeminiSqlOnly(String userQuestion) {
        String text = callGemini(
                BuyerMarketplaceSqlSchema.LLM_INSTRUCTIONS + "\n\n" + BuyerMarketplaceSqlSchema.TABLES_REFERENCE,
                userQuestion,
                1024);
        return parseSqlOnlyJson(text);
    }

    private String tryAnthropicSqlOnly(String userQuestion) {
        String text = callAnthropic(
                BuyerMarketplaceSqlSchema.LLM_INSTRUCTIONS + "\n\n" + BuyerMarketplaceSqlSchema.TABLES_REFERENCE,
                userQuestion,
                1024);
        return parseSqlOnlyJson(text);
    }

    static List<ProductSnippetDto> snippetsFromRows(List<Map<String, Object>> rows) {
        List<ProductSnippetDto> out = new ArrayList<>();
        for (Map<String, Object> row : rows) {
            UUID id = toUuid(row.get("id"));
            if (id == null) {
                continue;
            }
            String title = Objects.toString(row.get("title"), "");
            BigDecimal price = toBigDecimal(row.get("price"));
            String currency = Objects.toString(row.get("currency"), "GEL");
            String imageUrl = firstImage(row.get("images"));
            out.add(ProductSnippetDto.builder()
                    .id(id)
                    .title(title)
                    .price(price != null ? price : BigDecimal.ZERO)
                    .currency(currency)
                    .imageUrl(imageUrl)
                    .build());
        }
        return out;
    }

    private static UUID toUuid(Object o) {
        if (o instanceof UUID u) {
            return u;
        }
        if (o instanceof String s) {
            try {
                return UUID.fromString(s);
            } catch (IllegalArgumentException ignored) {
                return null;
            }
        }
        return null;
    }

    private static BigDecimal toBigDecimal(Object o) {
        if (o instanceof BigDecimal bd) {
            return bd;
        }
        if (o instanceof Number n) {
            return BigDecimal.valueOf(n.doubleValue());
        }
        if (o instanceof String s) {
            try {
                return new BigDecimal(s);
            } catch (NumberFormatException ignored) {
                return null;
            }
        }
        return null;
    }

    private static String firstImage(Object imagesVal) {
        if (imagesVal == null) {
            return null;
        }
        if (imagesVal instanceof List<?> list && !list.isEmpty()) {
            return Objects.toString(list.get(0), null);
        }
        if (imagesVal instanceof String[] arr && arr.length > 0) {
            return arr[0];
        }
        if (imagesVal instanceof Object[] arr && arr.length > 0) {
            return Objects.toString(arr[0], null);
        }
        return null;
    }
}
