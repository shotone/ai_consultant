package ai.ipove.category.service;

import ai.ipove.category.entity.Category;
import ai.ipove.category.repository.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class CategoryServiceTest {

    @Mock private CategoryRepository categoryRepository;
    @InjectMocks private CategoryService categoryService;

    private Category electronics;
    private Category laptops;

    @BeforeEach
    void setUp() {
        electronics = Category.builder().name("Electronics").slug("electronics").build();
        electronics.setId(UUID.randomUUID());
        electronics.setTenantId(UUID.fromString("00000000-0000-0000-0000-000000000001"));

        laptops = Category.builder().name("Laptops").slug("laptops").parent(electronics).build();
        laptops.setId(UUID.randomUUID());
    }

    @Test
    @DisplayName("getCategoryTree returns root categories")
    void getCategoryTree() {
        when(categoryRepository.findRootCategories(any())).thenReturn(List.of(electronics));
        List<Category> tree = categoryService.getCategoryTree();
        assertThat(tree).hasSize(1);
        assertThat(tree.get(0).getName()).isEqualTo("Electronics");
    }

    @Test
    @DisplayName("getById returns category")
    void getById_found() {
        when(categoryRepository.findActiveById(electronics.getId())).thenReturn(Optional.of(electronics));
        Category result = categoryService.getById(electronics.getId());
        assertThat(result.getSlug()).isEqualTo("electronics");
    }

    @Test
    @DisplayName("getById throws when not found")
    void getById_notFound() {
        UUID id = UUID.randomUUID();
        when(categoryRepository.findActiveById(id)).thenReturn(Optional.empty());
        assertThatThrownBy(() -> categoryService.getById(id)).isInstanceOf(EntityNotFoundException.class);
    }

    @Test
    @DisplayName("getChildren returns child categories")
    void getChildren() {
        when(categoryRepository.findByParentId(electronics.getId())).thenReturn(List.of(laptops));
        List<Category> children = categoryService.getChildren(electronics.getId());
        assertThat(children).hasSize(1);
        assertThat(children.get(0).getName()).isEqualTo("Laptops");
    }
}
