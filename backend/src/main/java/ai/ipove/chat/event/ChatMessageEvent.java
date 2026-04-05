package ai.ipove.chat.event;

import java.time.Instant;
import java.util.UUID;

public record ChatMessageEvent(
        UUID sessionId, UUID userId, UUID tenantId, String sessionMode, String contentPreview, Instant at) {}
