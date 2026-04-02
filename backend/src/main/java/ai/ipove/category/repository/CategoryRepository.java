package ai.ipove.category.repository;

import ai.ipove.category.entity.Category;
import ai.ipove.common.repository.SoftDeleteRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface CategoryRepository extends SoftDeleteRepository<Category> {

    @Query("SELECT DISTINCT c FROM Category c LEFT JOIN FETCH c.children WHERE c.tenantId = :tenantId AND c.parent IS NULL AND c.deletedAt IS NULL ORDER BY c.sortOrder")
    List<Category> findRootCategories(@Param("tenantId") UUID tenantId);

    @Query("SELECT c FROM Category c WHERE c.parent.id = :parentId AND c.deletedAt IS NULL ORDER BY c.sortOrder")
    List<Category> findByParentId(@Param("parentId") UUID parentId);

    Optional<Category> findBySlugAndTenantId(String slug, UUID tenantId);
}
