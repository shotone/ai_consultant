package ai.ipove.product.controller;

import ai.ipove.product.dto.CreateProductRequest;
import ai.ipove.product.entity.Product;
import ai.ipove.product.entity.ProductCondition;
import ai.ipove.product.entity.ProductStatus;
import ai.ipove.product.repository.ProductRepository;
import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import ai.ipove.user.repository.UserRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.UUID;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.jwt;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
class ProductControllerIntegrationTest {

    @Autowired private MockMvc mockMvc;
    @Autowired private ObjectMapper objectMapper;
    @Autowired private UserRepository userRepository;
    @Autowired private ProductRepository productRepository;

    private static final UUID TENANT = UUID.fromString("00000000-0000-0000-0000-000000000001");
    private User seller;
    private Product savedProduct;

    @BeforeEach
    void setUp() {
        seller = User.builder()
                .keycloakId("kc-seller-product-test")
                .email("seller-prod@test.com")
                .fullName("Product Seller")
                .role(UserRole.SELLER)
                .isVerified(true)
                .build();
        seller.setTenantId(TENANT);
        seller = userRepository.save(seller);

        savedProduct = Product.builder()
                .seller(seller)
                .title("Test MacBook")
                .description("A great laptop for testing")
                .price(BigDecimal.valueOf(2500))
                .currency("GEL")
                .condition(ProductCondition.GOOD)
                .status(ProductStatus.ACTIVE)
                .build();
        savedProduct.setTenantId(TENANT);
        savedProduct = productRepository.save(savedProduct);
    }

    @Test
    @DisplayName("POST /api/products creates a product")
    void createProduct() throws Exception {
        CreateProductRequest req = new CreateProductRequest();
        req.setTitle("iPhone 15 Pro");
        req.setDescription("Brand new phone");
        req.setPrice(BigDecimal.valueOf(3200));

        mockMvc.perform(post("/api/products")
                        .with(jwt().jwt(b -> b.subject("kc-seller-product-test")
                                .claim("email", "seller-prod@test.com")
                                .claim("name", "Product Seller")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(req)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.title").value("iPhone 15 Pro"))
                .andExpect(jsonPath("$.data.price").value(3200));
    }

    @Test
    @DisplayName("GET /api/products/{id} returns product with incremented views")
    void getProduct() throws Exception {
        mockMvc.perform(get("/api/products/{id}", savedProduct.getId())
                        .with(jwt().jwt(b -> b.subject("any"))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.title").value("Test MacBook"))
                .andExpect(jsonPath("$.data.viewCount").value(1));
    }

    @Test
    @DisplayName("DELETE /api/products/{id} soft deletes product")
    void deleteProduct() throws Exception {
        mockMvc.perform(delete("/api/products/{id}", savedProduct.getId())
                        .with(jwt().jwt(b -> b.subject("kc-seller-product-test")
                                .claim("email", "seller-prod@test.com")
                                .claim("name", "Product Seller")))
                )
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true));
    }

    @Test
    @DisplayName("GET /api/products lists active products")
    void listProducts() throws Exception {
        mockMvc.perform(get("/api/products")
                        .with(jwt().jwt(b -> b.subject("any"))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.content").isArray());
    }
}
