package ai.ipove.notification.email;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile({"dev", "test"})
public class ConsoleEmailService implements EmailService {

    @Override
    public void sendEmail(String to, String subject, String body) {
        log.info("[DEV EMAIL] To: {} | Subject: {} | Body: {}", to, subject, body);
    }

    @Override
    public void sendHtmlEmail(String to, String subject, String htmlBody) {
        log.info("[DEV HTML EMAIL] To: {} | Subject: {} | Body length: {}", to, subject, htmlBody.length());
    }
}
