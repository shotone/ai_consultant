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
import ai.ipove.user.entity.UserRole;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.access.AccessDeniedException;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

    @Mock private ProductRepository productRepository;
    @Mock private CategoryService categoryService;
    @InjectMocks private ProductService productService;

    private User seller;
    private User otherUser;
    private Product product;
    private Category category;

    @BeforeEach
    void setUp() {
        seller = User.builder().keycloakId("kc-1").email("seller@test.com").fullName("Seller").role(UserRole.SELLER).build();
        seller.setId(UUID.randomUUID());
        seller.setTenantId(UUID.fromString("00000000-0000-0000-0000-000000000001"));

        otherUser = User.builder().keycloakId("kc-2").email("other@test.com").fullName("Other").role(UserRole.BUYER).build();
        otherUser.setId(UUID.randomUUID());

        category = Category.builder().name("Electronics").slug("electronics").build();
        category.setId(UUID.randomUUID());

        product = Product.builder()
                .seller(seller).category(category)
                .title("MacBook Pro").description("Great laptop")
                .price(BigDecimal.valueOf(3000)).currency("GEL")
                .condition(ProductCondition.GOOD).status(ProductStatus.ACTIVE)
                .build();
        product.setId(UUID.randomUUID());
        product.setTenantId(seller.getTenantId());
    }

    @Test
    @DisplayName("create saves product with correct fields")
    void create_success() {
        CreateProductRequest req = new CreateProductRequest();
        req.setTitle("iPhone 15");
        req.setDescription("New phone");
        req.setPrice(BigDecimal.valueOf(2500));
        req.setCategoryId(category.getId());

        when(categoryService.getById(category.getId())).thenReturn(category);
        when(productRepository.save(any(Product.class))).thenAnswer(inv -> {
            Product p = inv.getArgument(0);
            p.setId(UUID.randomUUID());
            return p;
        });

        Product result = productService.create(seller, req);

        assertThat(result.getTitle()).isEqualTo("iPhone 15");
        assertThat(result.getSeller().getId()).isEqualTo(seller.getId());
        verify(productRepository).save(any(Product.class));
    }

    @Test
    @DisplayName("getById returns product")
    void getById_found() {
        when(productRepository.findActiveById(product.getId())).thenReturn(Optional.of(product));
        Product result = productService.getById(product.getId());
        assertThat(result.getTitle()).isEqualTo("MacBook Pro");
    }

    @Test
    @DisplayName("getById throws when not found")
    void getById_notFound() {
        UUID id = UUID.randomUUID();
        when(productRepository.findActiveById(id)).thenReturn(Optional.empty());
        assertThatThrownBy(() -> productService.getById(id)).isInstanceOf(EntityNotFoundException.class);
    }

    @Test
    @DisplayName("update changes fields for owner")
    void update_byOwner() {
        when(productRepository.findActiveById(product.getId())).thenReturn(Optional.of(product));
        when(productRepository.save(any())).thenAnswer(inv -> inv.getArgument(0));

        UpdateProductRequest req = new UpdateProductRequest();
        req.setPrice(BigDecimal.valueOf(2800));

        Product result = productService.update(product.getId(), seller, req);
        assertThat(result.getPrice()).isEqualByComparingTo(BigDecimal.valueOf(2800));
    }

    @Test
    @DisplayName("update throws for non-owner")
    void update_byNonOwner_throws() {
        when(productRepository.findActiveById(product.getId())).thenReturn(Optional.of(product));
        UpdateProductRequest req = new UpdateProductRequest();

        assertThatThrownBy(() -> productService.update(product.getId(), otherUser, req))
                .isInstanceOf(AccessDeniedException.class);
    }

    @Test
    @DisplayName("softDelete marks product as deleted")
    void softDelete_byOwner() {
        when(productRepository.findActiveById(product.getId())).thenReturn(Optional.of(product));
        when(productRepository.save(any())).thenAnswer(inv -> inv.getArgument(0));

        productService.softDelete(product.getId(), seller);
        assertThat(product.isDeleted()).isTrue();
    }

    @Test
    @DisplayName("softDelete throws for non-owner")
    void softDelete_byNonOwner_throws() {
        when(productRepository.findActiveById(product.getId())).thenReturn(Optional.of(product));
        assertThatThrownBy(() -> productService.softDelete(product.getId(), otherUser))
                .isInstanceOf(AccessDeniedException.class);
    }
}
