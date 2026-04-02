package ai.ipove.category.dto;

import ai.ipove.category.entity.Category;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.UUID;

@Data
@Builder
public class CategoryResponse {
    private UUID id;
    private String name;
    private String slug;
    private String icon;
    private Integer sortOrder;
    private UUID parentId;
    private List<CategoryResponse> children;

    public static CategoryResponse from(Category c, boolean includeChildren) {
        CategoryResponseBuilder builder = CategoryResponse.builder()
                .id(c.getId())
                .name(c.getName())
                .slug(c.getSlug())
                .icon(c.getIcon())
                .sortOrder(c.getSortOrder())
                .parentId(c.getParent() != null ? c.getParent().getId() : null);

        if (includeChildren && c.getChildren() != null) {
            builder.children(c.getChildren().stream()
                    .filter(child -> child.getDeletedAt() == null)
                    .map(child -> CategoryResponse.from(child, true))
                    .toList());
        }

        return builder.build();
    }
}
