package ai.ipove.chat.dto;

import java.util.List;
import java.util.UUID;

public record LlmReply(String text, List<ProductSnippetDto> suggestedProducts, UUID createdProductId) {

    public static LlmReply textOnly(String text) {
        return new LlmReply(text, List.of(), null);
    }

    public static LlmReply withProducts(String text, List<ProductSnippetDto> products) {
        return new LlmReply(text, products, null);
    }

    public static LlmReply listingCreated(String text, UUID productId) {
        return new LlmReply(text, List.of(), productId);
    }
}
