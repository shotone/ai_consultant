package ai.ipove.category.service;

import ai.ipove.category.dto.CategoryResponse;
import ai.ipove.category.entity.Category;
import ai.ipove.category.repository.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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

    @Transactional(readOnly = true)
    public List<CategoryResponse> getCategoryTree() {
        log.debug("Loading category tree from DB");
        List<Category> roots = categoryRepository.findRootCategories(DEFAULT_TENANT_ID);
        return roots.stream().map(c -> CategoryResponse.from(c, true)).toList();
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

}
