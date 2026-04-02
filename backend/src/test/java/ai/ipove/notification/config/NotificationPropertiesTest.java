package ai.ipove.notification.config;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class NotificationPropertiesTest {

    @Test
    @DisplayName("Default email config has console provider and is enabled")
    void defaultEmailConfig() {
        NotificationProperties props = new NotificationProperties();
        assertThat(props.getEmail().isEnabled()).isTrue();
        assertThat(props.getEmail().getProvider()).isEqualTo("console");
        assertThat(props.getEmail().getFromAddress()).isEqualTo("noreply@ipove.ai");
    }

    @Test
    @DisplayName("Default SMS config has console provider and is enabled")
    void defaultSmsConfig() {
        NotificationProperties props = new NotificationProperties();
        assertThat(props.getSms().isEnabled()).isTrue();
        assertThat(props.getSms().getProvider()).isEqualTo("console");
    }

    @Test
    @DisplayName("Email can be disabled via setter")
    void emailCanBeDisabled() {
        NotificationProperties props = new NotificationProperties();
        props.getEmail().setEnabled(false);
        assertThat(props.getEmail().isEnabled()).isFalse();
    }

    @Test
    @DisplayName("SMS can be disabled via setter")
    void smsCanBeDisabled() {
        NotificationProperties props = new NotificationProperties();
        props.getSms().setEnabled(false);
        assertThat(props.getSms().isEnabled()).isFalse();
    }

    @Test
    @DisplayName("Provider can be changed to sendgrid/twilio")
    void providerCanBeChanged() {
        NotificationProperties props = new NotificationProperties();
        props.getEmail().setProvider("sendgrid");
        props.getSms().setProvider("twilio");
        assertThat(props.getEmail().getProvider()).isEqualTo("sendgrid");
        assertThat(props.getSms().getProvider()).isEqualTo("twilio");
    }
}
