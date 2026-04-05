package ai.ipove.chat.util;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class AssistantTextSanitizerTest {

    @Test
    void stripsDoubleAsterisksAndUnderscores() {
        assertThat(AssistantTextSanitizer.toPlainAssistantText("**bold** and __x__"))
                .isEqualTo("bold and x");
    }

    @Test
    void nullSafe() {
        assertThat(AssistantTextSanitizer.toPlainAssistantText(null)).isNull();
    }
}
