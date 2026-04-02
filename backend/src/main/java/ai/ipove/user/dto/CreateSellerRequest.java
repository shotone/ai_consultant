package ai.ipove.user.dto;

import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class CreateSellerRequest {

    @Size(max = 255, message = "Business name must be at most 255 characters")
    private String businessName;

    @Size(max = 2000, message = "Description must be at most 2000 characters")
    private String description;
}
