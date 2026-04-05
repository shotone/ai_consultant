package ai.ipove.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    public static final String EVENTS_EXCHANGE = "ipove.events";
    public static final String NOTIFICATIONS_EXCHANGE = "ipove.notifications";
    public static final String CHAT_MESSAGE_ROUTING_KEY = "chat.message";

    @Bean
    public TopicExchange eventsExchange() {
        return new TopicExchange(EVENTS_EXCHANGE, true, false);
    }

    @Bean
    public FanoutExchange notificationsExchange() {
        return new FanoutExchange(NOTIFICATIONS_EXCHANGE, true, false);
    }

    @Bean
    public Queue chatMessageQueue() {
        return new Queue("chat.message", true);
    }

    @Bean
    public Binding chatMessageBinding(TopicExchange eventsExchange, Queue chatMessageQueue) {
        return BindingBuilder.bind(chatMessageQueue).to(eventsExchange).with(CHAT_MESSAGE_ROUTING_KEY);
    }

    @Bean
    public MessageConverter jsonMessageConverter() {
        return new Jackson2JsonMessageConverter();
    }
}
