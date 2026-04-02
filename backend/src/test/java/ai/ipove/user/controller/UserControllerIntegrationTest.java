package ai.ipove.user.controller;

import ai.ipove.user.dto.CreateSellerRequest;
import ai.ipove.user.dto.UpdateUserRequest;
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

import java.util.UUID;

import static org.hamcrest.Matchers.*;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.jwt;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
@Transactional
class UserControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private UserRepository userRepository;

    private static final UUID TENANT_ID = UUID.fromString("00000000-0000-0000-0000-000000000001");

    private User savedUser;

    @BeforeEach
    void setUp() {
        User user = User.builder()
                .keycloakId("kc-integration-test")
                .email("integration@test.com")
                .fullName("Integration Tester")
                .role(UserRole.BUYER)
                .isVerified(true)
                .build();
        user.setTenantId(TENANT_ID);
        savedUser = userRepository.save(user);
    }

    @Test
    @DisplayName("GET /api/users/me returns current user")
    void getMe_returnsUser() throws Exception {
        mockMvc.perform(get("/api/users/me")
                        .with(jwt().jwt(builder -> builder
                                .subject("kc-integration-test")
                                .claim("email", "integration@test.com")
                                .claim("name", "Integration Tester"))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true))
                .andExpect(jsonPath("$.data.email").value("integration@test.com"))
                .andExpect(jsonPath("$.data.fullName").value("Integration Tester"))
                .andExpect(jsonPath("$.data.role").value("buyer"));
    }

    @Test
    @DisplayName("GET /api/users/me auto-creates user from JWT if not exists")
    void getMe_autoCreates() throws Exception {
        mockMvc.perform(get("/api/users/me")
                        .with(jwt().jwt(builder -> builder
                                .subject("kc-new-user")
                                .claim("email", "newuser@test.com")
                                .claim("name", "New User")
                                .claim("email_verified", true))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.email").value("newuser@test.com"))
                .andExpect(jsonPath("$.data.role").value("buyer"));
    }

    @Test
    @DisplayName("PATCH /api/users/me updates profile")
    void updateMe_updatesProfile() throws Exception {
        UpdateUserRequest request = new UpdateUserRequest();
        request.setPhone("+995555000111");

        mockMvc.perform(patch("/api/users/me")
                        .with(jwt().jwt(builder -> builder
                                .subject("kc-integration-test")
                                .claim("email", "integration@test.com")
                                .claim("name", "Integration Tester")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.phone").value("+995555000111"));
    }

    @Test
    @DisplayName("GET /api/users/{id}/public returns public profile")
    void getPublicProfile_returns() throws Exception {
        mockMvc.perform(get("/api/users/{id}/public", savedUser.getId())
                        .with(jwt().jwt(builder -> builder.subject("any-user"))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.fullName").value("Integration Tester"))
                .andExpect(jsonPath("$.data.id").value(savedUser.getId().toString()));
    }

    @Test
    @DisplayName("POST /api/users/me/become-seller creates seller profile")
    void becomeSeller_success() throws Exception {
        CreateSellerRequest request = new CreateSellerRequest();
        request.setBusinessName("My Shop");
        request.setDescription("Best products in town");

        mockMvc.perform(post("/api/users/me/become-seller")
                        .with(jwt().jwt(builder -> builder
                                .subject("kc-integration-test")
                                .claim("email", "integration@test.com")
                                .claim("name", "Integration Tester")))
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.data.role").value("both"))
                .andExpect(jsonPath("$.data.sellerProfile.businessName").value("My Shop"));
    }

    @Test
    @DisplayName("DELETE /api/users/me soft-deletes account")
    void deleteMe_softDeletes() throws Exception {
        mockMvc.perform(delete("/api/users/me")
                        .with(jwt().jwt(builder -> builder
                                .subject("kc-integration-test")
                                .claim("email", "integration@test.com")
                                .claim("name", "Integration Tester"))))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true));
    }
}
