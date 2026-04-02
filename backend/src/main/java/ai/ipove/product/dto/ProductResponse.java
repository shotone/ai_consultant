package ai.ipove.product.dto;

import ai.ipove.product.entity.Product;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;
import java.util.UUID;

@Data
@Builder
public class ProductResponse {
    private UUID id;
    private UUID sellerId;
    private String sellerName;
    private UUID categoryId;
    private String categoryName;
    private String title;
    private String description;
    private BigDecimal price;
    private String currency;
    private String condition;
    private String status;
    private String location;
    private List<String> images;
    private Integer viewCount;
    private Instant createdAt;

    public static ProductResponse from(Product p) {
        return ProductResponse.builder()
                .id(p.getId())
                .sellerId(p.getSeller().getId())
                .sellerName(p.getSeller().getFullName())
                .categoryId(p.getCategory() != null ? p.getCategory().getId() : null)
                .categoryName(p.getCategory() != null ? p.getCategory().getName() : null)
                .title(p.getTitle())
                .description(p.getDescription())
                .price(p.getPrice())
                .currency(p.getCurrency())
                .condition(p.getCondition().getValue())
                .status(p.getStatus().getValue())
                .location(p.getLocation())
                .images(p.getImages())
                .viewCount(p.getViewCount())
                .createdAt(p.getCreatedAt())
                .build();
    }
}
