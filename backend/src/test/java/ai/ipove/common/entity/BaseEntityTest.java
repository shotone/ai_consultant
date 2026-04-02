package ai.ipove.common.entity;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.time.Instant;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;

class BaseEntityTest {

    static class TestEntity extends BaseEntity {
    }

    @Test
    @DisplayName("New entity should not be deleted")
    void newEntityShouldNotBeDeleted() {
        TestEntity entity = new TestEntity();
        assertThat(entity.isDeleted()).isFalse();
        assertThat(entity.getDeletedAt()).isNull();
    }

    @Test
    @DisplayName("softDelete should set deletedAt to current time")
    void softDeleteShouldSetDeletedAt() {
        TestEntity entity = new TestEntity();
        Instant before = Instant.now();

        entity.softDelete();

        assertThat(entity.isDeleted()).isTrue();
        assertThat(entity.getDeletedAt()).isNotNull();
        assertThat(entity.getDeletedAt()).isAfterOrEqualTo(before);
    }

    @Test
    @DisplayName("restore should clear deletedAt")
    void restoreShouldClearDeletedAt() {
        TestEntity entity = new TestEntity();
        entity.softDelete();
        assertThat(entity.isDeleted()).isTrue();

        entity.restore();

        assertThat(entity.isDeleted()).isFalse();
        assertThat(entity.getDeletedAt()).isNull();
    }

    @Test
    @DisplayName("onPrePersist should set default tenantId when null")
    void onPrePersistShouldSetDefaultTenantId() {
        TestEntity entity = new TestEntity();
        assertThat(entity.getTenantId()).isNull();

        entity.onPrePersist();

        assertThat(entity.getTenantId()).isNotNull();
        assertThat(entity.getTenantId())
                .isEqualTo(UUID.fromString("00000000-0000-0000-0000-000000000001"));
    }

    @Test
    @DisplayName("onPrePersist should not override existing tenantId")
    void onPrePersistShouldNotOverrideExistingTenantId() {
        TestEntity entity = new TestEntity();
        UUID customTenantId = UUID.randomUUID();
        entity.setTenantId(customTenantId);

        entity.onPrePersist();

        assertThat(entity.getTenantId()).isEqualTo(customTenantId);
    }
}
