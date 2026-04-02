package ai.ipove.user.entity;

import com.fasterxml.jackson.annotation.JsonValue;

public enum UserRole {
    BUYER("buyer"),
    SELLER("seller"),
    BOTH("both");

    private final String value;

    UserRole(String value) {
        this.value = value;
    }

    @JsonValue
    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return value;
    }

    public static UserRole fromString(String text) {
        for (UserRole role : UserRole.values()) {
            if (role.value.equalsIgnoreCase(text)) {
                return role;
            }
        }
        throw new IllegalArgumentException("Unknown role: " + text);
    }
}
