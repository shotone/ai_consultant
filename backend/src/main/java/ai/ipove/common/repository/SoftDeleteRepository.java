package ai.ipove.common.repository;

import ai.ipove.common.entity.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.Param;

import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@NoRepositoryBean
public interface SoftDeleteRepository<T extends BaseEntity> extends JpaRepository<T, UUID> {

    @Query("SELECT e FROM #{#entityName} e WHERE e.deletedAt IS NULL")
    List<T> findAllActive();

    @Query("SELECT e FROM #{#entityName} e WHERE e.id = :id AND e.deletedAt IS NULL")
    Optional<T> findActiveById(@Param("id") UUID id);

    @Query("SELECT e FROM #{#entityName} e WHERE e.tenantId = :tenantId AND e.deletedAt IS NULL")
    List<T> findAllActiveByTenantId(@Param("tenantId") UUID tenantId);

    @Modifying
    @Query("UPDATE #{#entityName} e SET e.deletedAt = :now WHERE e.id = :id AND e.deletedAt IS NULL")
    int softDeleteById(@Param("id") UUID id, @Param("now") Instant now);

    default int softDeleteById(UUID id) {
        return softDeleteById(id, Instant.now());
    }

    @Modifying
    @Query("UPDATE #{#entityName} e SET e.deletedAt = NULL WHERE e.id = :id")
    int restoreById(@Param("id") UUID id);
}
