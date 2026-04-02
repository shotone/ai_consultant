package ai.ipove.notification.email;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile({"staging", "prod"})
public class SendGridEmailService implements EmailService {

    @Override
    public void sendEmail(String to, String subject, String body) {
        // TODO: Integrate SendGrid API in Sprint 6+
        log.warn("[SENDGRID] Email sending not yet implemented. To: {} | Subject: {}", to, subject);
    }

    @Override
    public void sendHtmlEmail(String to, String subject, String htmlBody) {
        log.warn("[SENDGRID] HTML email sending not yet implemented. To: {} | Subject: {}", to, subject);
    }
}
