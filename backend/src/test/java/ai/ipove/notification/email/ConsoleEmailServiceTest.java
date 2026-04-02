package ai.ipove.notification.email;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.Assertions.assertThatNoException;

@ExtendWith(MockitoExtension.class)
class ConsoleEmailServiceTest {

    private final ConsoleEmailService service = new ConsoleEmailService();

    @Test
    @DisplayName("sendEmail logs without throwing")
    void sendEmail_doesNotThrow() {
        assertThatNoException().isThrownBy(() ->
                service.sendEmail("test@test.com", "Test Subject", "Test body"));
    }

    @Test
    @DisplayName("sendHtmlEmail logs without throwing")
    void sendHtmlEmail_doesNotThrow() {
        assertThatNoException().isThrownBy(() ->
                service.sendHtmlEmail("test@test.com", "Test Subject", "<h1>Hello</h1>"));
    }
}
