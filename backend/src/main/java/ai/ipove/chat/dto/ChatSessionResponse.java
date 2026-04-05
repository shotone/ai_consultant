package ai.ipove.chat.dto;

import ai.ipove.chat.entity.ChatSession;
import ai.ipove.chat.entity.ChatSessionMode;
import lombok.Builder;

import java.time.Instant;
import java.util.UUID;

@Builder
public record ChatSessionResponse(UUID id, ChatSessionMode mode, String title, String status, Instant createdAt) {

    public static ChatSessionResponse from(ChatSession s) {
        return ChatSessionResponse.builder()
                .id(s.getId())
                .mode(s.getSessionMode())
                .title(s.getTitle())
                .status(s.getStatus().name().toLowerCase())
                .createdAt(s.getCreatedAt())
                .build();
    }
}
