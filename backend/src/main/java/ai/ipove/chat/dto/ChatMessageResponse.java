package ai.ipove.chat.dto;

import ai.ipove.chat.entity.ChatMessage;
import lombok.Builder;

import java.time.Instant;
import java.util.Map;
import java.util.UUID;

@Builder
public record ChatMessageResponse(
        UUID id, String role, String content, Map<String, Object> metadata, Instant createdAt) {

    public static ChatMessageResponse from(ChatMessage m) {
        return ChatMessageResponse.builder()
                .id(m.getId())
                .role(m.getRole().name().toLowerCase())
                .content(m.getContent())
                .metadata(m.getMetadata() != null ? Map.copyOf(m.getMetadata()) : Map.of())
                .createdAt(m.getCreatedAt())
                .build();
    }
}
