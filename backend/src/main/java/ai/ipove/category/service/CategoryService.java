package ai.ipove.category.service;

import ai.ipove.category.entity.Category;
import ai.ipove.category.repository.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class CategoryService {

    private static final UUID DEFAULT_TENANT_ID = UUID.fromString("00000000-0000-0000-0000-000000000001");

    private final CategoryRepository categoryRepository;

    @Cacheable(value = "categories", key = "'tree'")
    @Transactional(readOnly = true)
    public List<Category> getCategoryTree() {
        log.debug("Loading category tree from DB (cache miss)");
        return categoryRepository.findRootCategories(DEFAULT_TENANT_ID);
    }

    @Transactional(readOnly = true)
    public Category getById(UUID id) {
        return categoryRepository.findActiveById(id)
                .orElseThrow(() -> new EntityNotFoundException("Category not found: " + id));
    }

    @Transactional(readOnly = true)
    public Category getBySlug(String slug) {
        return categoryRepository.findBySlugAndTenantId(slug, DEFAULT_TENANT_ID)
                .orElseThrow(() -> new EntityNotFoundException("Category not found: " + slug));
    }

    @Transactional(readOnly = true)
    public List<Category> getChildren(UUID parentId) {
        return categoryRepository.findByParentId(parentId);
    }

    @CacheEvict(value = "categories", allEntries = true)
    public void evictCache() {
        log.info("Category cache evicted");
    }
}
