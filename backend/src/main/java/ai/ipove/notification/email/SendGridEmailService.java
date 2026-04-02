package ai.ipove.notification.email;

import ai.ipove.notification.config.NotificationProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
@ConditionalOnProperty(name = "ipove.notifications.email.provider", havingValue = "sendgrid")
public class SendGridEmailService implements EmailService {

    private final NotificationProperties properties;

    @Override
    public void sendEmail(String to, String subject, String body) {
        if (!properties.getEmail().isEnabled()) {
            log.debug("[SENDGRID] Email disabled by config. Skipping: to={}", to);
            return;
        }
        // TODO: Real SendGrid API call
        log.warn("[SENDGRID] Email sending not yet implemented. To: {} | Subject: {}", to, subject);
    }

    @Override
    public void sendHtmlEmail(String to, String subject, String htmlBody) {
        if (!properties.getEmail().isEnabled()) {
            log.debug("[SENDGRID] Email disabled by config. Skipping: to={}", to);
            return;
        }
        // TODO: Real SendGrid API call
        log.warn("[SENDGRID] HTML email sending not yet implemented. To: {} | Subject: {}", to, subject);
    }
}
