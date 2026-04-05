package ai.ipove.product.controller;

import ai.ipove.common.dto.ApiResponse;
import ai.ipove.image.service.ImageService;
import ai.ipove.product.dto.*;
import ai.ipove.product.service.ProductService;
import ai.ipove.user.entity.User;
import ai.ipove.user.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;

@RestController
@RequestMapping("/api/products")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;
    private final UserService userService;
    private final ImageService imageService;

    @PostMapping
    public ResponseEntity<ApiResponse<ProductResponse>> create(
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody CreateProductRequest request) {
        User seller = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(productService.createAndMap(seller, request)));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<ProductResponse>> getById(@PathVariable UUID id) {
        return ResponseEntity.ok(ApiResponse.ok(productService.getByIdAndIncrementViewsAsResponse(id)));
    }

    @PatchMapping("/{id}")
    public ResponseEntity<ApiResponse<ProductResponse>> update(
            @PathVariable UUID id,
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody UpdateProductRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(productService.updateAsResponse(id, user, request)));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ApiResponse<Void>> delete(
            @PathVariable UUID id,
            @AuthenticationPrincipal Jwt jwt) {
        User user = userService.getOrCreateFromJwt(jwt);
        productService.softDelete(id, user);
        return ResponseEntity.ok(ApiResponse.ok(null));
    }

    @GetMapping("/seller/{sellerId}")
    public ResponseEntity<ApiResponse<Page<ProductResponse>>> getBySeller(
            @PathVariable UUID sellerId,
            @PageableDefault(size = 20) Pageable pageable) {
        Page<ProductResponse> page = productService.getBySellerAsResponses(sellerId, pageable);
        return ResponseEntity.ok(ApiResponse.ok(page));
    }

    @GetMapping
    public ResponseEntity<ApiResponse<Page<ProductResponse>>> list(
            @RequestParam(required = false) UUID categoryId,
            @PageableDefault(size = 20) Pageable pageable) {
        Page<ProductResponse> page = productService.listAsResponses(categoryId, pageable);
        return ResponseEntity.ok(ApiResponse.ok(page));
    }

    @PostMapping(value = "/images", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<ApiResponse<String>> uploadImage(
            @AuthenticationPrincipal Jwt jwt,
            @RequestParam("file") MultipartFile file) throws IOException {
        userService.getOrCreateFromJwt(jwt);
        String url = imageService.upload(file);
        return ResponseEntity.ok(ApiResponse.ok(url));
    }
}
