package ai.ipove.chat.event;

import java.time.Instant;
import java.util.UUID;

public record ListingSubmittedEvent(
        UUID productId, UUID sellerId, UUID tenantId, UUID chatSessionId, Instant at) {}
