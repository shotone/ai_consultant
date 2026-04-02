package ai.ipove.product.dto;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Data
public class UpdateProductRequest {

    @Size(max = 500)
    private String title;

    private String description;

    @DecimalMin(value = "0.01", message = "Price must be positive")
    private BigDecimal price;

    private UUID categoryId;

    private String condition;

    private String status;

    private String location;

    private List<String> images;
}
