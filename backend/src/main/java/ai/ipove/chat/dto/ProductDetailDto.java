package ai.ipove.chat.dto;

import lombok.Builder;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Builder
public record ProductDetailDto(
        UUID id,
        String title,
        String description,
        BigDecimal price,
        String currency,
        String condition,
        String location,
        List<String> images,
        String categoryName,
        Integer viewCount) {}
