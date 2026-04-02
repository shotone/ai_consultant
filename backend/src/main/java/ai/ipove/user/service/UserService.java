package ai.ipove.user.service;

import ai.ipove.user.dto.CreateSellerRequest;
import ai.ipove.user.dto.UpdateUserRequest;
import ai.ipove.user.entity.SellerProfile;
import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import ai.ipove.user.repository.SellerProfileRepository;
import ai.ipove.user.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class UserService {

    private static final UUID DEFAULT_TENANT_ID = UUID.fromString("00000000-0000-0000-0000-000000000001");

    private final UserRepository userRepository;
    private final SellerProfileRepository sellerProfileRepository;

    @Transactional
    public User getOrCreateFromJwt(Jwt jwt) {
        String keycloakId = jwt.getSubject();
        return userRepository.findByKeycloakId(keycloakId)
                .orElseGet(() -> createFromJwt(jwt));
    }

    private User createFromJwt(Jwt jwt) {
        log.info("Creating new user from JWT: sub={}", jwt.getSubject());
        User user = User.builder()
                .keycloakId(jwt.getSubject())
                .email(jwt.getClaimAsString("email"))
                .fullName(buildFullName(jwt))
                .role(UserRole.BUYER)
                .isVerified(Boolean.TRUE.equals(jwt.getClaimAsBoolean("email_verified")))
                .build();
        user.setTenantId(DEFAULT_TENANT_ID);
        return userRepository.save(user);
    }

    private String buildFullName(Jwt jwt) {
        String name = jwt.getClaimAsString("name");
        if (name != null && !name.isBlank()) return name;
        String given = jwt.getClaimAsString("given_name");
        String family = jwt.getClaimAsString("family_name");
        if (given != null && family != null) return given + " " + family;
        return jwt.getClaimAsString("preferred_username");
    }

    @Transactional(readOnly = true)
    public User getProfile(UUID userId) {
        return userRepository.findActiveById(userId)
                .orElseThrow(() -> new EntityNotFoundException("User not found: " + userId));
    }

    @Transactional(readOnly = true)
    public User getPublicProfile(UUID userId) {
        return getProfile(userId);
    }

    @Transactional
    public User updateProfile(UUID userId, UpdateUserRequest request) {
        User user = getProfile(userId);
        if (request.getFullName() != null) {
            user.setFullName(request.getFullName());
        }
        if (request.getPhone() != null) {
            user.setPhone(request.getPhone());
        }
        if (request.getAvatarUrl() != null) {
            user.setAvatarUrl(request.getAvatarUrl());
        }
        return userRepository.save(user);
    }

    @Transactional
    public User becomeSeller(UUID userId, CreateSellerRequest request) {
        User user = getProfile(userId);

        if (user.getRole() == UserRole.SELLER || user.getRole() == UserRole.BOTH) {
            throw new IllegalArgumentException("User is already a seller");
        }

        SellerProfile sellerProfile = SellerProfile.builder()
                .user(user)
                .businessName(request.getBusinessName())
                .description(request.getDescription())
                .build();
        sellerProfile.setTenantId(user.getTenantId());

        sellerProfileRepository.save(sellerProfile);

        user.setRole(UserRole.BOTH);
        user.setSellerProfile(sellerProfile);
        return userRepository.save(user);
    }

    @Transactional
    public void softDelete(UUID userId) {
        User user = getProfile(userId);
        user.softDelete();
        userRepository.save(user);
        log.info("Soft deleted user: {}", userId);
    }
}
