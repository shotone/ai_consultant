package ai.ipove.chat.controller;

import ai.ipove.chat.dto.*;
import ai.ipove.chat.service.ChatService;
import ai.ipove.common.dto.ApiResponse;
import ai.ipove.user.entity.User;
import ai.ipove.user.service.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;

@Slf4j
@RestController
@RequestMapping("/api/chat/sessions")
public class ChatController {

    private final ChatService chatService;
    private final UserService userService;
    private final ObjectMapper objectMapper;
    private final Executor chatSseExecutor;

    public ChatController(
            ChatService chatService,
            UserService userService,
            ObjectMapper objectMapper,
            @Qualifier("chatSseExecutor") Executor chatSseExecutor) {
        this.chatService = chatService;
        this.userService = userService;
        this.objectMapper = objectMapper;
        this.chatSseExecutor = chatSseExecutor;
    }

    @PostMapping
    public ResponseEntity<ApiResponse<ChatSessionResponse>> createSession(
            @AuthenticationPrincipal Jwt jwt, @Valid @RequestBody CreateChatSessionRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(chatService.createSession(user, request)));
    }

    @GetMapping
    public ResponseEntity<ApiResponse<List<ChatSessionResponse>>> listSessions(@AuthenticationPrincipal Jwt jwt) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(chatService.listSessions(user)));
    }

    @GetMapping("/{id}/messages")
    public ResponseEntity<ApiResponse<List<ChatMessageResponse>>> listMessages(
            @PathVariable UUID id, @AuthenticationPrincipal Jwt jwt) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(chatService.listMessages(user, id)));
    }

    @PostMapping("/{id}/close")
    public ResponseEntity<ApiResponse<ChatSessionResponse>> closeSession(
            @PathVariable UUID id,
            @AuthenticationPrincipal Jwt jwt,
            @RequestBody(required = false) @Valid CloseChatSessionRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        CloseChatSessionRequest body = request != null ? request : new CloseChatSessionRequest();
        return ResponseEntity.ok(ApiResponse.ok(chatService.closeSession(user, id, body)));
    }

    @PostMapping("/{id}/messages")
    public ResponseEntity<ApiResponse<ChatService.SendMessageResult>> sendMessage(
            @PathVariable UUID id,
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody SendChatMessageRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(chatService.sendMessage(user, id, request)));
    }

    @PostMapping(value = "/{id}/messages/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter sendMessageStream(
            @PathVariable UUID id,
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody SendChatMessageRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        SseEmitter emitter = new SseEmitter(300_000L);
        chatSseExecutor.execute(() -> {
            try {
                ChatService.SendMessageResult result = chatService.sendMessage(user, id, request);
                Map<String, Object> meta = result.assistantMessage().metadata();
                Object products = meta != null ? meta.get("products") : null;
                emitter.send(SseEmitter.event()
                        .name("products")
                        .data(products != null ? objectMapper.writeValueAsString(products) : "[]"));
                Object createdListing = meta != null ? meta.get("createdListing") : null;
                if (createdListing != null) {
                    emitter.send(SseEmitter.event()
                            .name("createdListing")
                            .data(objectMapper.writeValueAsString(createdListing)));
                }
                String text = result.assistantMessage().content();
                for (String chunk : chunkForStream(text)) {
                    emitter.send(SseEmitter.event().name("token").data(chunk));
                }
                emitter.send(SseEmitter.event().name("done").data("{}"));
                emitter.complete();
            } catch (Exception e) {
                log.error("Chat SSE failed", e);
                try {
                    emitter.send(SseEmitter.event()
                            .name("error")
                            .data(e.getMessage() != null ? e.getMessage() : "error"));
                } catch (Exception ignored) {
                    // ignore
                }
                emitter.completeWithError(e);
            }
        });
        return emitter;
    }

    private static List<String> chunkForStream(String text) {
        if (text == null || text.isEmpty()) {
            return List.of("");
        }
        List<String> out = new ArrayList<>();
        int step = 16;
        for (int i = 0; i < text.length(); i += step) {
            out.add(text.substring(i, Math.min(text.length(), i + step)));
        }
        return out;
    }
}
