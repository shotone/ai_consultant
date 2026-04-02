package ai.ipove.notification.email;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@ConditionalOnProperty(name = "ipove.notifications.email.provider", havingValue = "console", matchIfMissing = true)
public class ConsoleEmailService implements EmailService {

    @Override
    public void sendEmail(String to, String subject, String body) {
        log.info("[CONSOLE EMAIL] To: {} | Subject: {} | Body: {}", to, subject, body);
    }

    @Override
    public void sendHtmlEmail(String to, String subject, String htmlBody) {
        log.info("[CONSOLE HTML EMAIL] To: {} | Subject: {} | Body length: {}", to, subject, htmlBody.length());
    }
}
