package ai.ipove.product.entity;

import com.fasterxml.jackson.annotation.JsonValue;

public enum ProductStatus {
    ACTIVE("active"),
    SOLD("sold"),
    RESERVED("reserved"),
    INACTIVE("inactive");

    private final String value;

    ProductStatus(String value) { this.value = value; }

    @JsonValue
    public String getValue() { return value; }

    public static ProductStatus fromString(String text) {
        for (ProductStatus s : values()) {
            if (s.value.equalsIgnoreCase(text)) return s;
        }
        throw new IllegalArgumentException("Unknown status: " + text);
    }
}
