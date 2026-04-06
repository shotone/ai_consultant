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
        // Add space when ** or __ is adjacent to a non-space character to prevent words merging
        String t = raw.replaceAll("(\\S)\\*\\*(\\S)", "$1 $2");
        t = t.replaceAll("(\\S)\\*\\*", "$1");
        t = t.replaceAll("\\*\\*(\\S)", "$1");
        t = t.replace("**", "");
        t = t.replaceAll("(\\S)__(\\S)", "$1 $2");
        t = t.replaceAll("(\\S)__", "$1");
        t = t.replaceAll("__(\\S)", "$1");
        t = t.replace("__", "");
        // Normalize multiple spaces (preserve newlines)
        t = t.replaceAll("[ \t]+", " ");
        // Ensure paragraphs are separated by blank lines so the frontend parser can split them
        t = t.replaceAll("(?<!\n)\n(?!\n)", "\n\n");
        return t.trim();
    }
}
