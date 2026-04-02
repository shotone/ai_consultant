package ai.ipove.notification.sms;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.Assertions.assertThatNoException;

@ExtendWith(MockitoExtension.class)
class ConsoleSmsServiceTest {

    private final ConsoleSmsService service = new ConsoleSmsService();

    @Test
    @DisplayName("sendSms logs without throwing")
    void sendSms_doesNotThrow() {
        assertThatNoException().isThrownBy(() ->
                service.sendSms("+995555123456", "Test OTP: 123456"));
    }
}
