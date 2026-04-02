package ai.ipove.user.dto;

import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import lombok.Builder;
import lombok.Data;

import java.time.Instant;
import java.util.UUID;

@Data
@Builder
public class UserResponse {
    private UUID id;
    private String email;
    private String fullName;
    private String phone;
    private String avatarUrl;
    private UserRole role;
    private Boolean isVerified;
    private SellerProfileResponse sellerProfile;
    private Instant createdAt;

    public static UserResponse from(User user) {
        UserResponseBuilder builder = UserResponse.builder()
                .id(user.getId())
                .email(user.getEmail())
                .fullName(user.getFullName())
                .phone(user.getPhone())
                .avatarUrl(user.getAvatarUrl())
                .role(user.getRole())
                .isVerified(user.getIsVerified())
                .createdAt(user.getCreatedAt());

        if (user.getSellerProfile() != null) {
            builder.sellerProfile(SellerProfileResponse.from(user.getSellerProfile()));
        }

        return builder.build();
    }
}
