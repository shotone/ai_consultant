package ai.ipove.chat.service;

import ai.ipove.chat.dto.*;
import ai.ipove.chat.entity.*;
import ai.ipove.chat.event.ChatMessageEvent;
import ai.ipove.chat.repository.ChatMessageRepository;
import ai.ipove.chat.repository.ChatSessionRepository;
import ai.ipove.config.RabbitMQConfig;
import ai.ipove.user.entity.User;
import jakarta.persistence.EntityNotFoundException;
import ai.ipove.chat.util.AssistantTextSanitizer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.time.Instant;
import java.util.*;

@Slf4j
@Service
@RequiredArgsConstructor
public class ChatService {

    private static final String SELLER_PLACEHOLDER_KA =
            "გამყიდველის რეჟიმი (\"რას ყიდი?\") — პროდუქტის ჩათიდან განთავსება მალე დაემატება (Sprint 4). "
                    + "ახლა შეგიძლია გამოიყენო გვერდი „პროდუქტის დამატება“.";

    private final ChatSessionRepository chatSessionRepository;
    private final ChatMessageRepository chatMessageRepository;
    private final StubBuyerLlmClient stubBuyerLlmClient;
    private final GeminiBuyerLlmClient geminiBuyerLlmClient;
    private final AnthropicBuyerLlmClient anthropicBuyerLlmClient;
    private final RabbitTemplate rabbitTemplate;

    public record SendMessageResult(ChatMessageResponse userMessage, ChatMessageResponse assistantMessage) {}

    @Transactional
    public ChatSessionResponse createSession(User user, CreateChatSessionRequest request) {
        ChatSession session = ChatSession.builder()
                .user(user)
                .sessionMode(request.getMode())
                .status(ChatSessionStatus.ACTIVE)
                .build();
        session.setTenantId(user.getTenantId());
        session = chatSessionRepository.save(session);
        return ChatSessionResponse.from(session);
    }

    @Transactional(readOnly = true)
    public List<ChatSessionResponse> listSessions(User user) {
        return chatSessionRepository
                .findByUser_IdAndDeletedAtIsNullOrderByUpdatedAtDescCreatedAtDesc(
                        user.getId(), PageRequest.of(0, 50))
                .stream()
                .map(ChatSessionResponse::from)
                .toList();
    }

    @Transactional(readOnly = true)
    public List<ChatMessageResponse> listMessages(User user, UUID sessionId) {
        verifySession(user, sessionId);
        return chatMessageRepository.findBySessionIdOrderByCreatedAtAsc(sessionId).stream()
                .map(ChatMessageResponse::from)
                .toList();
    }

    @Transactional
    public ChatSessionResponse closeSession(User user, UUID sessionId, CloseChatSessionRequest request) {
        ChatSession session = verifySession(user, sessionId);
        if (session.getStatus() != ChatSessionStatus.ACTIVE) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Chat session is already closed");
        }
        session.setStatus(ChatSessionStatus.CLOSED);
        session.setClosedAt(Instant.now());
        if (request.getRating() != null) {
            session.setRating(request.getRating());
        }
        chatSessionRepository.save(session);
        return ChatSessionResponse.from(session);
    }

    @Transactional
    public SendMessageResult sendMessage(User user, UUID sessionId, SendChatMessageRequest request) {
        ChatSession session = verifyActiveSession(user, sessionId);

        ChatMessage userMsg = ChatMessage.builder()
                .session(session)
                .role(ChatMessageRole.USER)
                .content(request.getContent().trim())
                .build();
        userMsg.setTenantId(session.getTenantId());
        userMsg = chatMessageRepository.save(userMsg);

        publishChatEvent(session, user, request.getContent());

        List<ChatMessage> history = chatMessageRepository.findBySessionIdOrderByCreatedAtAsc(sessionId);
        LlmReply reply = generateReply(session, history);

        Map<String, Object> metadata = new LinkedHashMap<>();
        if (!reply.suggestedProducts().isEmpty()) {
            metadata.put(
                    "products",
                    reply.suggestedProducts().stream().map(this::snippetToMap).toList());
        }

        String assistantPlain = AssistantTextSanitizer.toPlainAssistantText(reply.text());

        ChatMessage assistantMsg = ChatMessage.builder()
                .session(session)
                .role(ChatMessageRole.ASSISTANT)
                .content(assistantPlain)
                .metadata(metadata)
                .build();
        assistantMsg.setTenantId(session.getTenantId());
        assistantMsg = chatMessageRepository.save(assistantMsg);

        return new SendMessageResult(
                ChatMessageResponse.from(userMsg), ChatMessageResponse.from(assistantMsg));
    }

    private Map<String, Object> snippetToMap(ProductSnippetDto p) {
        Map<String, Object> m = new LinkedHashMap<>();
        m.put("id", p.id().toString());
        m.put("title", p.title());
        m.put("price", p.price());
        m.put("currency", p.currency());
        if (p.imageUrl() != null) {
            m.put("imageUrl", p.imageUrl());
        }
        return m;
    }

    private void publishChatEvent(ChatSession session, User user, String content) {
        String preview = content.length() > 200 ? content.substring(0, 200) : content;
        var event = new ChatMessageEvent(
                session.getId(),
                user.getId(),
                session.getTenantId(),
                session.getSessionMode().name(),
                preview,
                Instant.now());
        try {
            rabbitTemplate.convertAndSend(RabbitMQConfig.EVENTS_EXCHANGE, RabbitMQConfig.CHAT_MESSAGE_ROUTING_KEY, event);
        } catch (Exception e) {
            log.warn("Failed to publish chat.message event: {}", e.getMessage());
        }
    }

    private LlmReply generateReply(ChatSession session, List<ChatMessage> history) {
        if (session.getSessionMode() == ChatSessionMode.SELLER) {
            return LlmReply.textOnly(SELLER_PLACEHOLDER_KA);
        }
        try {
            if (geminiBuyerLlmClient.isEnabled()) {
                return geminiBuyerLlmClient.completeBuyerTurn(session, history);
            }
        } catch (Exception e) {
            log.warn("Gemini buyer LLM failed, trying next provider: {}", e.getMessage());
        }
        try {
            if (anthropicBuyerLlmClient.isEnabled()) {
                return anthropicBuyerLlmClient.completeBuyerTurn(session, history);
            }
        } catch (Exception e) {
            String msg = e.getMessage() != null ? e.getMessage() : "";
            if (msg.contains("credit balance") || msg.contains("Plans & Billing")) {
                log.warn(
                        "Anthropic API: billing/credits issue (see console.anthropic.com → Plans & Billing). Using local stub LLM.");
            } else {
                log.warn("Anthropic buyer LLM failed, using stub: {}", e.getMessage());
            }
        }
        return stubBuyerLlmClient.completeBuyerTurn(session, history);
    }

    private ChatSession verifySession(User user, UUID sessionId) {
        return chatSessionRepository
                .findByIdAndUser_IdAndDeletedAtIsNull(sessionId, user.getId())
                .orElseThrow(() -> new EntityNotFoundException("Chat session not found"));
    }

    private ChatSession verifyActiveSession(User user, UUID sessionId) {
        ChatSession session = verifySession(user, sessionId);
        if (session.getStatus() != ChatSessionStatus.ACTIVE) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Chat session is closed");
        }
        return session;
    }
}
