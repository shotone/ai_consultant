package ai.ipove.notification.sms;

import ai.ipove.notification.config.NotificationProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
@ConditionalOnProperty(name = "ipove.notifications.sms.provider", havingValue = "twilio")
public class TwilioSmsService implements SmsService {

    private final NotificationProperties properties;

    @Override
    public void sendSms(String to, String message) {
        if (!properties.getSms().isEnabled()) {
            log.debug("[TWILIO] SMS disabled by config. Skipping: to={}", to);
            return;
        }
        // TODO: Real Twilio API call
        log.warn("[TWILIO] SMS sending not yet implemented. To: {} | Message: {}", to, message);
    }
}
