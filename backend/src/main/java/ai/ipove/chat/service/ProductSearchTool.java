package ai.ipove.chat.service;

import ai.ipove.chat.dto.ProductDetailDto;
import ai.ipove.chat.dto.ProductSnippetDto;
import ai.ipove.product.entity.Product;
import ai.ipove.product.entity.ProductStatus;
import ai.ipove.product.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ProductSearchTool {

    private final ProductRepository productRepository;

    @Transactional(readOnly = true)
    public List<ProductSnippetDto> search(UUID tenantId, String query, int limit) {
        if (query == null || query.isBlank()) {
            return List.of();
        }
        String q = query.trim();
        if (q.length() > 200) {
            q = q.substring(0, 200);
        }
        var slice = productRepository.searchActiveByKeyword(
                tenantId, ProductStatus.ACTIVE, q, PageRequest.of(0, Math.min(limit, 20)));
        return slice.getContent().stream().map(this::toSnippet).toList();
    }

    @Transactional(readOnly = true)
    public Optional<ProductDetailDto> getDetails(UUID tenantId, UUID productId) {
        return productRepository.findById(productId)
                .filter(p -> p.getDeletedAt() == null)
                .filter(p -> p.getStatus() == ProductStatus.ACTIVE)
                .filter(p -> p.getTenantId().equals(tenantId))
                .map(this::toDetail);
    }

    @Transactional(readOnly = true)
    public List<ProductDetailDto> getMultipleDetails(UUID tenantId, List<UUID> productIds) {
        if (productIds == null || productIds.isEmpty() || productIds.size() > 5) {
            return List.of();
        }
        return productIds.stream()
                .map(id -> getDetails(tenantId, id))
                .filter(Optional::isPresent)
                .map(Optional::get)
                .toList();
    }

    private ProductSnippetDto toSnippet(Product p) {
        String img = null;
        if (p.getImages() != null && !p.getImages().isEmpty()) {
            img = p.getImages().getFirst();
        }
        return ProductSnippetDto.builder()
                .id(p.getId())
                .title(p.getTitle())
                .price(p.getPrice())
                .currency(p.getCurrency())
                .imageUrl(img)
                .build();
    }

    private ProductDetailDto toDetail(Product p) {
        String categoryName = null;
        if (p.getCategory() != null) {
            categoryName = p.getCategory().getName();
        }
        return ProductDetailDto.builder()
                .id(p.getId())
                .title(p.getTitle())
                .description(p.getDescription())
                .price(p.getPrice())
                .currency(p.getCurrency())
                .condition(p.getCondition() != null ? p.getCondition().getValue() : null)
                .location(p.getLocation())
                .images(p.getImages() != null ? p.getImages() : List.of())
                .categoryName(categoryName)
                .viewCount(p.getViewCount())
                .build();
    }
}
