package ai.ipove;

import ai.ipove.config.AiProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({AiProperties.class})
public class IpoveApplication {

    public static void main(String[] args) {
        SpringApplication.run(IpoveApplication.class, args);
    }
}
