package ai.ipove.notification.sms;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile({"staging", "prod"})
public class TwilioSmsService implements SmsService {

    @Override
    public void sendSms(String to, String message) {
        // TODO: Integrate Twilio API in Sprint 6+
        log.warn("[TWILIO] SMS sending not yet implemented. To: {} | Message: {}", to, message);
    }
}
