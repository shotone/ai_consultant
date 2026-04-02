package ai.ipove.user.service;

import ai.ipove.user.dto.CreateSellerRequest;
import ai.ipove.user.dto.UpdateUserRequest;
import ai.ipove.user.entity.SellerProfile;
import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import ai.ipove.user.repository.SellerProfileRepository;
import ai.ipove.user.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.oauth2.jwt.Jwt;

import java.time.Instant;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private SellerProfileRepository sellerProfileRepository;

    @InjectMocks
    private UserService userService;

    private User testUser;
    private Jwt testJwt;

    @BeforeEach
    void setUp() {
        testUser = User.builder()
                .keycloakId("kc-123")
                .email("test@test.com")
                .fullName("Test User")
                .role(UserRole.BUYER)
                .isVerified(true)
                .build();
        testUser.setId(UUID.randomUUID());
        testUser.setTenantId(UUID.fromString("00000000-0000-0000-0000-000000000001"));

        testJwt = Jwt.withTokenValue("token")
                .header("alg", "RS256")
                .subject("kc-123")
                .claim("email", "test@test.com")
                .claim("name", "Test User")
                .claim("email_verified", true)
                .issuedAt(Instant.now())
                .expiresAt(Instant.now().plusSeconds(3600))
                .build();
    }

    @Test
    @DisplayName("getOrCreateFromJwt returns existing user")
    void getOrCreateFromJwt_existingUser() {
        when(userRepository.findByKeycloakId("kc-123")).thenReturn(Optional.of(testUser));

        User result = userService.getOrCreateFromJwt(testJwt);

        assertThat(result.getEmail()).isEqualTo("test@test.com");
        verify(userRepository, never()).save(any());
    }

    @Test
    @DisplayName("getOrCreateFromJwt creates new user when not found")
    void getOrCreateFromJwt_createsNew() {
        when(userRepository.findByKeycloakId("kc-123")).thenReturn(Optional.empty());
        when(userRepository.save(any(User.class))).thenAnswer(inv -> {
            User u = inv.getArgument(0);
            u.setId(UUID.randomUUID());
            return u;
        });

        User result = userService.getOrCreateFromJwt(testJwt);

        assertThat(result.getKeycloakId()).isEqualTo("kc-123");
        assertThat(result.getEmail()).isEqualTo("test@test.com");
        assertThat(result.getRole()).isEqualTo(UserRole.BUYER);
        verify(userRepository).save(any(User.class));
    }

    @Test
    @DisplayName("getProfile returns user by ID")
    void getProfile_found() {
        when(userRepository.findActiveById(testUser.getId())).thenReturn(Optional.of(testUser));

        User result = userService.getProfile(testUser.getId());

        assertThat(result.getEmail()).isEqualTo("test@test.com");
    }

    @Test
    @DisplayName("getProfile throws when not found")
    void getProfile_notFound() {
        UUID id = UUID.randomUUID();
        when(userRepository.findActiveById(id)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> userService.getProfile(id))
                .isInstanceOf(EntityNotFoundException.class);
    }

    @Test
    @DisplayName("updateProfile updates only non-null fields")
    void updateProfile_partialUpdate() {
        when(userRepository.findActiveById(testUser.getId())).thenReturn(Optional.of(testUser));
        when(userRepository.save(any(User.class))).thenAnswer(inv -> inv.getArgument(0));

        UpdateUserRequest request = new UpdateUserRequest();
        request.setPhone("+995555123456");

        User result = userService.updateProfile(testUser.getId(), request);

        assertThat(result.getPhone()).isEqualTo("+995555123456");
        assertThat(result.getFullName()).isEqualTo("Test User");
    }

    @Test
    @DisplayName("becomeSeller creates seller profile and updates role")
    void becomeSeller_success() {
        when(userRepository.findActiveById(testUser.getId())).thenReturn(Optional.of(testUser));
        when(sellerProfileRepository.save(any(SellerProfile.class))).thenAnswer(inv -> {
            SellerProfile sp = inv.getArgument(0);
            sp.setId(UUID.randomUUID());
            return sp;
        });
        when(userRepository.save(any(User.class))).thenAnswer(inv -> inv.getArgument(0));

        CreateSellerRequest request = new CreateSellerRequest();
        request.setBusinessName("My Shop");
        request.setDescription("Best products");

        User result = userService.becomeSeller(testUser.getId(), request);

        assertThat(result.getRole()).isEqualTo(UserRole.BOTH);
        verify(sellerProfileRepository).save(any(SellerProfile.class));
    }

    @Test
    @DisplayName("becomeSeller throws if already seller")
    void becomeSeller_alreadySeller() {
        testUser.setRole(UserRole.BOTH);
        when(userRepository.findActiveById(testUser.getId())).thenReturn(Optional.of(testUser));

        CreateSellerRequest request = new CreateSellerRequest();

        assertThatThrownBy(() -> userService.becomeSeller(testUser.getId(), request))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("already a seller");
    }

    @Test
    @DisplayName("softDelete marks user as deleted")
    void softDelete_success() {
        when(userRepository.findActiveById(testUser.getId())).thenReturn(Optional.of(testUser));
        when(userRepository.save(any(User.class))).thenAnswer(inv -> inv.getArgument(0));

        userService.softDelete(testUser.getId());

        assertThat(testUser.isDeleted()).isTrue();
        verify(userRepository).save(testUser);
    }
}
