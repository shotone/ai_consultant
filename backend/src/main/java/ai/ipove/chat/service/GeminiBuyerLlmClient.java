package ai.ipove.chat.service;

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
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestClientResponseException;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

/**
 * Buyer ჩათი Google Gemini (AI Studio) API-ით: ჯერ ლოკალური პროდუქტების ძებნა, შემდეგ მოდელი აჯამებს ტექსტს.
 */
@Slf4j
@Service
public class GeminiBuyerLlmClient implements BuyerLlmClient {

    private static final String SYSTEM =
            """
            You are the ipove.ai shopping assistant (buyer mode: helping users find products).
            Reply in Georgian by default; use the same language the user used if they write in English or Russian.
            Be concise and helpful. Summarize matching listings clearly (title, price, currency). If the list is empty, suggest how to refine the search.""";

    private final AiProperties aiProperties;
    private final ObjectMapper objectMapper;
    private final BuyerNlSqlSearchService buyerNlSqlSearchService;
    private final RestClient geminiClient;

    public GeminiBuyerLlmClient(
            AiProperties aiProperties,
            ObjectMapper objectMapper,
            BuyerNlSqlSearchService buyerNlSqlSearchService) {
        this.aiProperties = aiProperties;
        this.objectMapper = objectMapper;
        this.buyerNlSqlSearchService = buyerNlSqlSearchService;
        this.geminiClient = RestClient.builder().baseUrl("https://generativelanguage.googleapis.com").build();
    }

    public boolean isEnabled() {
        return aiProperties.getGoogleAiApiKey() != null && !aiProperties.getGoogleAiApiKey().isBlank();
    }

    @Override
    public LlmReply completeBuyerTurn(ChatSession session, List<ChatMessage> historyIncludingLatestUser) {
        if (!isEnabled()) {
            throw new IllegalStateException("Gemini is not configured");
        }
        ChatMessage last = historyIncludingLatestUser.getLast();
        String userQuery = last.getContent();

        var ctx = buyerNlSqlSearchService.resolveForGemini(session.getTenantId(), userQuery);
        List<ProductSnippetDto> products = ctx.products();
        String resultsJson = ctx.dataJson();

        StringBuilder transcript = new StringBuilder();
        for (ChatMessage m : historyIncludingLatestUser) {
            if (m.getRole() == ChatMessageRole.SYSTEM) {
                continue;
            }
            String label = m.getRole() == ChatMessageRole.USER ? "User" : "Assistant";
            transcript.append(label).append(": ").append(m.getContent()).append("\n");
        }

        String userPayload =
                ctx.conversationalOnly()
                        ? "Conversation:\n"
                                + transcript
                                + "\nThe latest user message does NOT require querying the live product catalog. "
                                + "Reply naturally (greeting, how-you-can-help, general guidance). "
                                + "Do not invent specific products, prices, or stock. "
                                + "Marketplace JSON (always empty here): []\n"
                        : "Conversation:\n"
                                + transcript
                                + "\nMarketplace data (JSON rows — use only these values as facts; columns match the query):\n"
                                + resultsJson
                                + "\n\nRespond in natural language using only this JSON for factual listings; if empty, suggest refining the search.";

        ObjectNode root = objectMapper.createObjectNode();
        ObjectNode sys = objectMapper.createObjectNode();
        ArrayNode sysParts = objectMapper.createArrayNode();
        sysParts.add(objectMapper.createObjectNode().put("text", SYSTEM));
        sys.set("parts", sysParts);
        root.set("systemInstruction", sys);

        ArrayNode parts = objectMapper.createArrayNode();
        parts.add(objectMapper.createObjectNode().put("text", userPayload));
        ObjectNode userTurn = objectMapper.createObjectNode();
        userTurn.put("role", "user");
        userTurn.set("parts", parts);
        ArrayNode contents = objectMapper.createArrayNode();
        contents.add(userTurn);
        root.set("contents", contents);

        ObjectNode genCfg = objectMapper.createObjectNode();
        genCfg.put("maxOutputTokens", aiProperties.getGoogleAiMaxOutputTokens());
        genCfg.put("temperature", 0.6);
        root.set("generationConfig", genCfg);

        String model = aiProperties.getGoogleAiModel();
        String path = UriComponentsBuilder.fromPath("/v1beta/models/{model}:generateContent")
                .buildAndExpand(model)
                .toUriString();

        JsonNode response;
        try {
            response = geminiClient
                    .post()
                    .uri(path)
                    .header("X-goog-api-key", aiProperties.getGoogleAiApiKey())
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(root.toString())
                    .retrieve()
                    .body(JsonNode.class);
        } catch (RestClientResponseException e) {
            if (e.getStatusCode().value() == 429) {
                log.warn(
                        "Gemini 429 (quota or rate limit). See https://ai.google.dev/gemini-api/docs/rate-limits — "
                                + "try another IPOVE_AI_GOOGLE_MODEL (e.g. gemini-flash-latest), enable billing, or wait. "
                                + "Next provider in chain will be used if configured.");
            } else {
                log.warn("Gemini request failed {}: {}", e.getStatusCode().value(), e.getMessage());
            }
            throw e;
        } catch (RestClientException e) {
            log.warn("Gemini request failed: {}", e.getMessage());
            throw e;
        }

        if (response == null) {
            throw new IllegalStateException("Empty Gemini response");
        }

        JsonNode blockReason = response.path("promptFeedback").path("blockReason");
        if (!blockReason.isMissingNode() && !blockReason.asText().isEmpty()) {
            log.warn("Gemini blocked prompt: {}", blockReason.asText());
            return LlmReply.textOnly(
                    "სამწუხაროდ, უსაფრთხოების ფილტრმა ეს მოთხოვნა შეზღუდა. სცადე სხვა ფორმულირება ან მოკლე აღწერა.");
        }

        String text = extractText(response);
        if (text.isBlank()) {
            if (ctx.conversationalOnly()) {
                text = "გამარჯობა! ვარ ipove.ai-ის შოპინგ ასისტენტი — მითხარი რას ეძებ ან რით დაგეხმარო.";
            } else if (products.isEmpty()) {
                text = "ვერ ვიპოვე შესაბამისი პროდუქტი. სცადე სხვა საკვანძო სიტყვები.";
            } else {
                text = "აქ არის რამდენიმე ვარიანტი — იხილე პროდუქტის ბარათები ქვემოთ.";
            }
        }
        return new LlmReply(text.trim(), products);
    }

    private String extractText(JsonNode response) {
        StringBuilder sb = new StringBuilder();
        JsonNode candidates = response.path("candidates");
        if (!candidates.isArray() || candidates.isEmpty()) {
            return "";
        }
        JsonNode parts = candidates.get(0).path("content").path("parts");
        if (!parts.isArray()) {
            return "";
        }
        for (JsonNode p : parts) {
            if (p.has("text")) {
                sb.append(p.path("text").asText(""));
            }
        }
        return sb.toString();
    }
}
