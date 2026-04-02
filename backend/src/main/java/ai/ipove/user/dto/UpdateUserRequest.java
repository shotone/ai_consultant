package ai.ipove.user.dto;

import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UpdateUserRequest {

    @Size(min = 2, max = 255, message = "Full name must be between 2 and 255 characters")
    private String fullName;

    @Size(max = 50, message = "Phone must be at most 50 characters")
    private String phone;

    private String avatarUrl;
}
