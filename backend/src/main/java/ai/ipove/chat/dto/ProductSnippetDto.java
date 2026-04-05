package ai.ipove.chat.dto;

import lombok.Builder;

import java.math.BigDecimal;
import java.util.UUID;

@Builder
public record ProductSnippetDto(UUID id, String title, BigDecimal price, String currency, String imageUrl) {}
