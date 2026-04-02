import { describe, it, expect, vi, beforeEach } from "vitest";

describe("apiClient", () => {
  beforeEach(() => {
    vi.restoreAllMocks();
  });

  it("should construct correct URL", async () => {
    const mockResponse = { success: true, data: "test" };
    global.fetch = vi.fn().mockResolvedValue({
      ok: true,
      json: () => Promise.resolve(mockResponse),
    });

    const { apiClient } = await import("./api-client");
    const result = await apiClient("/users/me");

    expect(fetch).toHaveBeenCalledWith(
      "http://localhost:8080/api/users/me",
      expect.objectContaining({
        headers: expect.objectContaining({
          "Content-Type": "application/json",
        }),
      })
    );
    expect(result).toEqual(mockResponse);
  });

  it("should include auth token when provided", async () => {
    global.fetch = vi.fn().mockResolvedValue({
      ok: true,
      json: () => Promise.resolve({}),
    });

    const { apiClient } = await import("./api-client");
    await apiClient("/users/me", { token: "test-jwt-token" });

    expect(fetch).toHaveBeenCalledWith(
      expect.any(String),
      expect.objectContaining({
        headers: expect.objectContaining({
          Authorization: "Bearer test-jwt-token",
        }),
      })
    );
  });

  it("should throw on non-ok response", async () => {
    global.fetch = vi.fn().mockResolvedValue({
      ok: false,
      status: 401,
      json: () =>
        Promise.resolve({ error: { message: "Unauthorized" } }),
    });

    const { apiClient } = await import("./api-client");
    await expect(apiClient("/protected")).rejects.toThrow("Unauthorized");
  });
});
