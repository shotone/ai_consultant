package ai.ipove.chat.controller;

import ai.ipove.chat.dto.CreateChatSessionRequest;
import ai.ipove.chat.entity.ChatSessionMode;
import ai.ipove.chat.repository.ChatMessageRepository;
import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import ai.ipove.user.repository.UserRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.jwt;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
class ChatControllerIntegrationTest {

    @Autowired private MockMvc mockMvc;
    @Autowired private ObjectMapper objectMapper;
    @Autowired private UserRepository userRepository;
    @Autowired private ChatMessageRepository chatMessageRepository;

    @MockBean private RabbitTemplate rabbitTemplate;

    private static final UUID TENANT = UUID.fromString("00000000-0000-0000-0000-000000000001");
    private User user;

    @BeforeEach
    void setUp() {
        user = User.builder()
                .keycloakId("kc-chat-test")
                .email("chat@test.com")
                .fullName("Chat User")
                .role(UserRole.BUYER)
                .isVerified(true)
                .build();
        user.setTenantId(TENANT);
        user = userRepository.save(user);
    }

    @Test
    @DisplayName("POST /api/chat/sessions creates buyer session")
    void createSession() throws Exception {
        CreateChatSessionRequest req = new CreateChatSessionRequest();
        req.setMode(ChatSessionMode.BUYER);

        mockMvc.perform(post("/api/chat/sessions")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(req)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true))
                .andExpect(jsonPath("$.data.mode").value("BUYER"));
    }

    @Test
    @DisplayName("POST message returns assistant reply (stub LLM)")
    void sendMessage() throws Exception {
        CreateChatSessionRequest req = new CreateChatSessionRequest();
        req.setMode(ChatSessionMode.BUYER);
        String sessionJson = mockMvc.perform(post("/api/chat/sessions")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(req)))
                .andExpect(status().isOk())
                .andReturn()
                .getResponse()
                .getContentAsString();

        String sessionId = objectMapper.readTree(sessionJson).path("data").path("id").asText();

        String body = "{\"content\":\"MacBook test query\"}";
        mockMvc.perform(post("/api/chat/sessions/" + sessionId + "/messages")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(body))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true))
                .andExpect(jsonPath("$.data.assistantMessage.role").value("assistant"));

        org.junit.jupiter.api.Assertions.assertEquals(
                2, chatMessageRepository.findBySessionIdOrderByCreatedAtAsc(UUID.fromString(sessionId)).size());
    }

    @Test
    @DisplayName("POST close then message returns 409")
    void closeThenSendConflict() throws Exception {
        CreateChatSessionRequest req = new CreateChatSessionRequest();
        req.setMode(ChatSessionMode.BUYER);
        String sessionJson = mockMvc.perform(post("/api/chat/sessions")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(req)))
                .andExpect(status().isOk())
                .andReturn()
                .getResponse()
                .getContentAsString();

        String sessionId = objectMapper.readTree(sessionJson).path("data").path("id").asText();

        mockMvc.perform(post("/api/chat/sessions/" + sessionId + "/close")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{\"rating\":5}"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.status").value("closed"))
                .andExpect(jsonPath("$.data.rating").value(5));

        mockMvc.perform(post("/api/chat/sessions/" + sessionId + "/messages")
                        .with(jwt().jwt(b -> b.subject("kc-chat-test")
                                .claim("email", "chat@test.com")
                                .claim("name", "Chat User")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{\"content\":\"hi\"}"))
                .andExpect(status().isConflict());
    }
}
