package ai.ipove.category.controller;

import ai.ipove.category.dto.CategoryResponse;
import ai.ipove.category.service.CategoryService;
import ai.ipove.common.dto.ApiResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<CategoryResponse>>> getTree() {
        List<CategoryResponse> tree = categoryService.getCategoryTree().stream()
                .map(c -> CategoryResponse.from(c, true))
                .toList();
        return ResponseEntity.ok(ApiResponse.ok(tree));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<CategoryResponse>> getById(@PathVariable UUID id) {
        return ResponseEntity.ok(ApiResponse.ok(
                CategoryResponse.from(categoryService.getById(id), true)));
    }

    @GetMapping("/slug/{slug}")
    public ResponseEntity<ApiResponse<CategoryResponse>> getBySlug(@PathVariable String slug) {
        return ResponseEntity.ok(ApiResponse.ok(
                CategoryResponse.from(categoryService.getBySlug(slug), true)));
    }

    @GetMapping("/{id}/children")
    public ResponseEntity<ApiResponse<List<CategoryResponse>>> getChildren(@PathVariable UUID id) {
        List<CategoryResponse> children = categoryService.getChildren(id).stream()
                .map(c -> CategoryResponse.from(c, false))
                .toList();
        return ResponseEntity.ok(ApiResponse.ok(children));
    }
}
