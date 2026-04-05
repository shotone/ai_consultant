package ai.ipove.config;

import jakarta.annotation.PostConstruct;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.util.StringUtils;

@Data
@ConfigurationProperties(prefix = "ipove.ai")
public class AiProperties {

    /**
     * Anthropic (optional). Env: {@code ANTHROPIC_API_KEY} or {@code IPOVE_AI_ANTHROPIC_API_KEY}.
     */
    private String anthropicApiKey = "";

    private String model = "claude-3-5-sonnet-20241022";

    private int maxTokens = 2048;

    /**
     * Google AI Studio / Gemini API key. Env: {@code GOOGLE_AI_API_KEY} or {@code IPOVE_AI_GOOGLE_API_KEY}.
     * თუ დაყენებულია, buyer ჩათი პირველად აქ ცდის (იხ. {@code ChatService}).
     */
    private String googleAiApiKey = "";

    /** AI Studio სტილი: {@code gemini-flash-latest} — env {@code IPOVE_AI_GOOGLE_MODEL} */
    private String googleAiModel = "gemini-flash-latest";

    private int googleAiMaxOutputTokens = 2048;

    /**
     * Buyer ჩათი: LLM-ის მიერ გენერირებული SELECT (მხოლოდ products/categories) უსაფრთხო შესრულება.
     */
    private boolean buyerNlSqlEnabled = true;

    /** NL→SQL შედეგის მაქსიმალური რიგები (სერვერი აკაპებს LIMIT-ს). */
    private int buyerNlSqlMaxRows = 30;

    @PostConstruct
    void fillFromEnvironmentIfBlank() {
        if (!StringUtils.hasText(anthropicApiKey)) {
            String a = firstNonBlank(
                    System.getenv("ANTHROPIC_API_KEY"), System.getenv("IPOVE_AI_ANTHROPIC_API_KEY"));
            if (StringUtils.hasText(a)) {
                this.anthropicApiKey = a.strip();
            }
        }
        if (!StringUtils.hasText(googleAiApiKey)) {
            String g = firstNonBlank(
                    System.getenv("GOOGLE_AI_API_KEY"), System.getenv("IPOVE_AI_GOOGLE_API_KEY"));
            if (StringUtils.hasText(g)) {
                this.googleAiApiKey = g.strip();
            }
        }
        String modelOverride = System.getenv("IPOVE_AI_GOOGLE_MODEL");
        if (StringUtils.hasText(modelOverride)) {
            this.googleAiModel = modelOverride.strip();
        }

        this.googleAiApiKey = "AIzaSyDrTp2Uq0Yowp441ZU-49Ity8X8zty3eWY";
    }

    private static String firstNonBlank(String a, String b) {
        if (StringUtils.hasText(a)) {
            return a.strip();
        }
        if (StringUtils.hasText(b)) {
            return b.strip();
        }
        return null;
    }
}
