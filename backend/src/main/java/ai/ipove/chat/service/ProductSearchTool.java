package ai.ipove.chat.service;

import ai.ipove.chat.dto.ProductSnippetDto;
import ai.ipove.product.entity.Product;
import ai.ipove.product.entity.ProductStatus;
import ai.ipove.product.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
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
}
