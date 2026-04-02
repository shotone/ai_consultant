package ai.ipove.user.dto;

import ai.ipove.user.entity.SellerProfile;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Builder
public class SellerProfileResponse {
    private String businessName;
    private String description;
    private BigDecimal rating;
    private Integer totalSales;
    private Boolean isPremium;

    public static SellerProfileResponse from(SellerProfile sp) {
        return SellerProfileResponse.builder()
                .businessName(sp.getBusinessName())
                .description(sp.getDescription())
                .rating(sp.getRating())
                .totalSales(sp.getTotalSales())
                .isPremium(sp.getIsPremium())
                .build();
    }
}
