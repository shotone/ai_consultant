package ai.ipove.user.entity;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class UserRoleConverter implements AttributeConverter<UserRole, String> {

    @Override
    public String convertToDatabaseColumn(UserRole role) {
        return role == null ? null : role.getValue();
    }

    @Override
    public UserRole convertToEntityAttribute(String dbValue) {
        return dbValue == null ? null : UserRole.fromString(dbValue);
    }
}
