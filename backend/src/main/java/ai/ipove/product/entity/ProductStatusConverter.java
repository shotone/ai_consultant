package ai.ipove.product.entity;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ProductStatusConverter implements AttributeConverter<ProductStatus, String> {
    @Override
    public String convertToDatabaseColumn(ProductStatus s) { return s == null ? null : s.getValue(); }
    @Override
    public ProductStatus convertToEntityAttribute(String v) { return v == null ? null : ProductStatus.fromString(v); }
}
