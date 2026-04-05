package ai.ipove.chat.service;

import ai.ipove.chat.dto.CreateChatSessionRequest;
import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.dto.SendChatMessageRequest;
import ai.ipove.chat.entity.*;
import ai.ipove.chat.repository.ChatMessageRepository;
import ai.ipove.chat.repository.ChatSessionRepository;
import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.amqp.rabbit.core.RabbitTemplate;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ChatServiceTest {

    @Mock private ChatSessionRepository chatSessionRepository;
    @Mock private ChatMessageRepository chatMessageRepository;
    @Mock private StubBuyerLlmClient stubBuyerLlmClient;
    @Mock private GeminiBuyerLlmClient geminiBuyerLlmClient;
    @Mock private AnthropicBuyerLlmClient anthropicBuyerLlmClient;
    @Mock private RabbitTemplate rabbitTemplate;

    @InjectMocks private ChatService chatService;

    private User user;
    private ChatSession session;
    private UUID sessionId;

    @BeforeEach
    void setUp() {
        sessionId = UUID.randomUUID();
        user = User.builder()
                .keycloakId("kc")
                .email("u@test.com")
                .fullName("U")
                .role(UserRole.BUYER)
                .build();
        user.setId(UUID.randomUUID());
        user.setTenantId(UUID.fromString("00000000-0000-0000-0000-000000000001"));

        session = ChatSession.builder()
                .user(user)
                .sessionMode(ChatSessionMode.BUYER)
                .status(ChatSessionStatus.ACTIVE)
                .build();
        session.setId(sessionId);
        session.setTenantId(user.getTenantId());
    }

    @Test
    @DisplayName("createSession persists session for user")
    void createSession() {
        CreateChatSessionRequest req = new CreateChatSessionRequest();
        req.setMode(ChatSessionMode.BUYER);
        when(chatSessionRepository.save(any(ChatSession.class))).thenAnswer(inv -> {
            ChatSession s = inv.getArgument(0);
            s.setId(sessionId);
            return s;
        });

        var res = chatService.createSession(user, req);
        assertThat(res.mode()).isEqualTo(ChatSessionMode.BUYER);
        verify(chatSessionRepository).save(any(ChatSession.class));
    }

    @Test
    @DisplayName("sendMessage saves user and assistant messages")
    void sendMessage() {
        when(chatSessionRepository.findByIdAndUser_IdAndDeletedAtIsNull(sessionId, user.getId()))
                .thenReturn(Optional.of(session));
        when(chatMessageRepository.save(any(ChatMessage.class)))
                .thenAnswer(inv -> inv.getArgument(0));
        ChatMessage userLine = ChatMessage.builder()
                .session(session)
                .role(ChatMessageRole.USER)
                .content("hello")
                .build();
        when(chatMessageRepository.findBySessionIdOrderByCreatedAtAsc(sessionId))
                .thenReturn(List.of(userLine));
        when(geminiBuyerLlmClient.isEnabled()).thenReturn(false);
        when(anthropicBuyerLlmClient.isEnabled()).thenReturn(false);
        when(stubBuyerLlmClient.completeBuyerTurn(any(), any()))
                .thenReturn(LlmReply.textOnly("**გამარჯობა**"));

        SendChatMessageRequest req = new SendChatMessageRequest();
        req.setContent("hello");

        var result = chatService.sendMessage(user, sessionId, req);
        assertThat(result.userMessage().content()).isEqualTo("hello");
        assertThat(result.assistantMessage().content()).isEqualTo("გამარჯობა");

        ArgumentCaptor<ChatMessage> captor = ArgumentCaptor.forClass(ChatMessage.class);
        verify(chatMessageRepository, times(2)).save(captor.capture());
    }
}
