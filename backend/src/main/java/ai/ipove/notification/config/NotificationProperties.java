package ai.ipove.notification.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "ipove.notifications")
public class NotificationProperties {

    private EmailConfig email = new EmailConfig();
    private SmsConfig sms = new SmsConfig();

    @Data
    public static class EmailConfig {
        private boolean enabled = true;
        private String provider = "console";
        private String apiKey;
        private String fromAddress = "noreply@ipove.ai";
        private String fromName = "ipove.ai";
    }

    @Data
    public static class SmsConfig {
        private boolean enabled = true;
        private String provider = "console";
        private String accountSid;
        private String authToken;
        private String fromNumber;
    }
}
