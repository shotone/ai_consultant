package ai.ipove.product.repository;

import ai.ipove.common.repository.SoftDeleteRepository;
import ai.ipove.product.entity.Product;
import ai.ipove.product.entity.ProductStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ProductRepository extends SoftDeleteRepository<Product> {

    @Query("SELECT p FROM Product p WHERE p.seller.id = :sellerId AND p.deletedAt IS NULL ORDER BY p.createdAt DESC")
    Page<Product> findBySellerId(@Param("sellerId") UUID sellerId, Pageable pageable);

    @Query("SELECT p FROM Product p WHERE p.tenantId = :tenantId AND p.status = :status AND p.deletedAt IS NULL ORDER BY p.createdAt DESC")
    Page<Product> findByTenantIdAndStatus(@Param("tenantId") UUID tenantId, @Param("status") ProductStatus status, Pageable pageable);

    @Query("SELECT p FROM Product p WHERE p.tenantId = :tenantId AND p.category.id = :categoryId AND p.status = 'ACTIVE' AND p.deletedAt IS NULL ORDER BY p.createdAt DESC")
    Page<Product> findByTenantIdAndCategoryId(@Param("tenantId") UUID tenantId, @Param("categoryId") UUID categoryId, Pageable pageable);

    @Query("SELECT p FROM Product p WHERE p.tenantId = :tenantId AND p.deletedAt IS NULL ORDER BY p.createdAt DESC")
    Page<Product> findAllByTenantId(@Param("tenantId") UUID tenantId, Pageable pageable);
}
