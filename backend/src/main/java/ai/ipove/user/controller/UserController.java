package ai.ipove.user.controller;

import ai.ipove.common.dto.ApiResponse;
import ai.ipove.user.dto.*;
import ai.ipove.user.entity.User;
import ai.ipove.user.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<UserResponse>> getCurrentUser(@AuthenticationPrincipal Jwt jwt) {
        User user = userService.getOrCreateFromJwt(jwt);
        return ResponseEntity.ok(ApiResponse.ok(UserResponse.from(user)));
    }

    @PatchMapping("/me")
    public ResponseEntity<ApiResponse<UserResponse>> updateProfile(
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody UpdateUserRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        User updated = userService.updateProfile(user.getId(), request);
        return ResponseEntity.ok(ApiResponse.ok(UserResponse.from(updated)));
    }

    @GetMapping("/{id}/public")
    public ResponseEntity<ApiResponse<PublicUserResponse>> getPublicProfile(@PathVariable UUID id) {
        User user = userService.getPublicProfile(id);
        return ResponseEntity.ok(ApiResponse.ok(PublicUserResponse.from(user)));
    }

    @PostMapping("/me/become-seller")
    public ResponseEntity<ApiResponse<UserResponse>> becomeSeller(
            @AuthenticationPrincipal Jwt jwt,
            @Valid @RequestBody CreateSellerRequest request) {
        User user = userService.getOrCreateFromJwt(jwt);
        User updated = userService.becomeSeller(user.getId(), request);
        return ResponseEntity.ok(ApiResponse.ok(UserResponse.from(updated)));
    }

    @DeleteMapping("/me")
    public ResponseEntity<ApiResponse<Void>> deleteAccount(@AuthenticationPrincipal Jwt jwt) {
        User user = userService.getOrCreateFromJwt(jwt);
        userService.softDelete(user.getId());
        return ResponseEntity.ok(ApiResponse.ok(null));
    }
}
