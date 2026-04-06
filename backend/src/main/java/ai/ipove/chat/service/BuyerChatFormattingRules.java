package ai.ipove.chat.service;

/**
 * Shared instructions so buyer-mode replies use paragraphs and lists; no Markdown bold or underscore markers.
 */
public final class BuyerChatFormattingRules {

    private BuyerChatFormattingRules() {}

    public static final String TEXT =
            """
            LENGTH: Be concise. Most replies should be 2-4 short sentences. Only write longer when the user explicitly asks for details, comparisons, or explanations. A greeting needs one sentence, not a paragraph. Product suggestions need the key facts (name, price, condition), not essays. If you can say it in fewer words, do so.

            FORMATTING: Never use ** or __ for emphasis. Structure every reply for readability: put a blank line between paragraphs; for several tips, steps, or options use a numbered list with each item on its own line ("1. ...", "2. ...") or bullet lines starting with "• "; put closing questions in a separate short paragraph at the end.
            """;
}
