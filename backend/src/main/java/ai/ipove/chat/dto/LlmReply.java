package ai.ipove.chat.dto;

import java.util.List;

public record LlmReply(String text, List<ProductSnippetDto> suggestedProducts) {

    public static LlmReply textOnly(String text) {
        return new LlmReply(text, List.of());
    }
}
