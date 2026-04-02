package ai.ipove.product.entity;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ProductConditionConverter implements AttributeConverter<ProductCondition, String> {
    @Override
    public String convertToDatabaseColumn(ProductCondition c) { return c == null ? null : c.getValue(); }
    @Override
    public ProductCondition convertToEntityAttribute(String v) { return v == null ? null : ProductCondition.fromString(v); }
}
