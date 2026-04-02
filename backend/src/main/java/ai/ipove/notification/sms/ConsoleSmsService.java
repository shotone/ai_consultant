package ai.ipove.notification.sms;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@ConditionalOnProperty(name = "ipove.notifications.sms.provider", havingValue = "console", matchIfMissing = true)
public class ConsoleSmsService implements SmsService {

    @Override
    public void sendSms(String to, String message) {
        log.info("[CONSOLE SMS] To: {} | Message: {}", to, message);
    }
}
