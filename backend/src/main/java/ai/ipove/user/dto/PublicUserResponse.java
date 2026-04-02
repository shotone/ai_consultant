package ai.ipove.user.dto;

import ai.ipove.user.entity.User;
import ai.ipove.user.entity.UserRole;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.util.UUID;

@Data
@Builder
public class PublicUserResponse {
    private UUID id;
    private String fullName;
    private String avatarUrl;
    private UserRole role;
    private BigDecimal sellerRating;
    private Integer sellerTotalSales;

    public static PublicUserResponse from(User user) {
        PublicUserResponseBuilder builder = PublicUserResponse.builder()
                .id(user.getId())
                .fullName(user.getFullName())
                .avatarUrl(user.getAvatarUrl())
                .role(user.getRole());

        if (user.getSellerProfile() != null) {
            builder.sellerRating(user.getSellerProfile().getRating());
            builder.sellerTotalSales(user.getSellerProfile().getTotalSales());
        }

        return builder.build();
    }
}
