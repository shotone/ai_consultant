package ai.ipove.notification.sms;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Profile({"dev", "test"})
public class ConsoleSmsService implements SmsService {

    @Override
    public void sendSms(String to, String message) {
        log.info("[DEV SMS] To: {} | Message: {}", to, message);
    }
}
