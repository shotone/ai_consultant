package ai.ipove.product.entity;

import com.fasterxml.jackson.annotation.JsonValue;

public enum ProductCondition {
    NEW("new"),
    LIKE_NEW("like_new"),
    GOOD("good"),
    FAIR("fair");

    private final String value;

    ProductCondition(String value) { this.value = value; }

    @JsonValue
    public String getValue() { return value; }

    public static ProductCondition fromString(String text) {
        for (ProductCondition c : values()) {
            if (c.value.equalsIgnoreCase(text)) return c;
        }
        throw new IllegalArgumentException("Unknown condition: " + text);
    }
}
