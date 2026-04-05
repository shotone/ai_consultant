package ai.ipove.chat.repository;

import ai.ipove.chat.entity.ChatSession;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface ChatSessionRepository extends JpaRepository<ChatSession, UUID> {

    Optional<ChatSession> findByIdAndUser_IdAndDeletedAtIsNull(UUID id, UUID userId);

    List<ChatSession> findByUser_IdAndDeletedAtIsNullOrderByUpdatedAtDescCreatedAtDesc(
            UUID userId, Pageable pageable);
}
