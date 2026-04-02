package ai.ipove.user.repository;

import ai.ipove.common.repository.SoftDeleteRepository;
import ai.ipove.user.entity.SellerProfile;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface SellerProfileRepository extends SoftDeleteRepository<SellerProfile> {

    Optional<SellerProfile> findByUserId(UUID userId);
}
