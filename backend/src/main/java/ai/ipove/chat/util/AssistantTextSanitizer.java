package ai.ipove.chat.util;

/**
 * LLM-ები ხშირად აბრუნებენ Markdown-ის ნაშთებს (მაგ. **bold**), UI კი plain ტექსტს აჩვენებს — ვასუფთხვილებთ.
 */
public final class AssistantTextSanitizer {

    private AssistantTextSanitizer() {}

    public static String toPlainAssistantText(String raw) {
        if (raw == null || raw.isEmpty()) {
            return raw;
        }
        String t = raw.replace("**", "");
        t = t.replace("__", "");
        return t;
    }
}
