package ai.ipove.product.service;

import ai.ipove.category.entity.Category;
import ai.ipove.category.service.CategoryService;
import ai.ipove.product.dto.CreateProductRequest;
import ai.ipove.product.dto.UpdateProductRequest;
import ai.ipove.product.entity.Product;
import ai.ipove.product.entity.ProductCondition;
import ai.ipove.product.entity.ProductStatus;
import ai.ipove.product.repository.ProductRepository;
import ai.ipove.user.entity.User;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class ProductService {

    private static final UUID DEFAULT_TENANT_ID = UUID.fromString("00000000-0000-0000-0000-000000000001");

    private final ProductRepository productRepository;
    private final CategoryService categoryService;

    @Transactional
    public Product create(User seller, CreateProductRequest request) {
        Category category = null;
        if (request.getCategoryId() != null) {
            category = categoryService.getById(request.getCategoryId());
        }

        Product product = Product.builder()
                .seller(seller)
                .category(category)
                .title(request.getTitle())
                .description(request.getDescription())
                .price(request.getPrice())
                .currency(request.getCurrency() != null ? request.getCurrency() : "GEL")
                .condition(ProductCondition.fromString(request.getCondition()))
                .status(ProductStatus.ACTIVE)
                .location(request.getLocation())
                .images(request.getImages() != null ? request.getImages() : java.util.List.of())
                .build();
        product.setTenantId(DEFAULT_TENANT_ID);

        Product saved = productRepository.save(product);
        log.info("Product created: id={}, title={}, seller={}", saved.getId(), saved.getTitle(), seller.getId());
        return saved;
    }

    @Transactional(readOnly = true)
    public Product getById(UUID id) {
        return productRepository.findActiveById(id)
                .orElseThrow(() -> new EntityNotFoundException("Product not found: " + id));
    }

    @Transactional
    public Product getByIdAndIncrementViews(UUID id) {
        Product product = getById(id);
        product.setViewCount(product.getViewCount() + 1);
        return productRepository.save(product);
    }

    @Transactional
    public Product update(UUID productId, User currentUser, UpdateProductRequest request) {
        Product product = getById(productId);
        verifyOwnership(product, currentUser);

        if (request.getTitle() != null) product.setTitle(request.getTitle());
        if (request.getDescription() != null) product.setDescription(request.getDescription());
        if (request.getPrice() != null) product.setPrice(request.getPrice());
        if (request.getCondition() != null) product.setCondition(ProductCondition.fromString(request.getCondition()));
        if (request.getStatus() != null) product.setStatus(ProductStatus.fromString(request.getStatus()));
        if (request.getLocation() != null) product.setLocation(request.getLocation());
        if (request.getImages() != null) product.setImages(request.getImages());
        if (request.getCategoryId() != null) {
            product.setCategory(categoryService.getById(request.getCategoryId()));
        }

        return productRepository.save(product);
    }

    @Transactional
    public void softDelete(UUID productId, User currentUser) {
        Product product = getById(productId);
        verifyOwnership(product, currentUser);
        product.softDelete();
        productRepository.save(product);
        log.info("Product soft deleted: id={}", productId);
    }

    @Transactional(readOnly = true)
    public Page<Product> getBySeller(UUID sellerId, Pageable pageable) {
        return productRepository.findBySellerId(sellerId, pageable);
    }

    @Transactional(readOnly = true)
    public Page<Product> list(UUID categoryId, Pageable pageable) {
        if (categoryId != null) {
            return productRepository.findByTenantIdAndCategoryId(DEFAULT_TENANT_ID, categoryId, pageable);
        }
        return productRepository.findByTenantIdAndStatus(DEFAULT_TENANT_ID, ProductStatus.ACTIVE, pageable);
    }

    private void verifyOwnership(Product product, User user) {
        if (!product.getSeller().getId().equals(user.getId())) {
            throw new AccessDeniedException("You don't own this product");
        }
    }
}
