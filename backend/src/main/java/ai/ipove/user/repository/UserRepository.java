package ai.ipove.user.repository;

import ai.ipove.common.repository.SoftDeleteRepository;
import ai.ipove.user.entity.User;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends SoftDeleteRepository<User> {

    Optional<User> findByKeycloakId(String keycloakId);

    Optional<User> findByEmailAndTenantId(String email, UUID tenantId);
}
