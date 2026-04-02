import { describe, it, expect } from "vitest";
import { renderHook } from "@testing-library/react";
import { createElement, type ReactNode } from "react";
import { AuthContext } from "@/components/KeycloakProvider";
import { useAuth } from "./useAuth";

const mockAuthValue = {
  isAuthenticated: true,
  isLoading: false,
  user: {
    keycloakId: "kc-123",
    email: "test@test.com",
    name: "Test User",
    emailVerified: true,
  },
  token: "mock-token",
  login: () => {},
  logout: () => {},
  register: () => {},
};

function wrapper({ children }: { children: ReactNode }) {
  return createElement(AuthContext.Provider, { value: mockAuthValue }, children);
}

describe("useAuth", () => {
  it("returns auth context values", () => {
    const { result } = renderHook(() => useAuth(), { wrapper });

    expect(result.current.isAuthenticated).toBe(true);
    expect(result.current.isLoading).toBe(false);
    expect(result.current.user?.email).toBe("test@test.com");
    expect(result.current.token).toBe("mock-token");
  });

  it("provides login and logout functions", () => {
    const { result } = renderHook(() => useAuth(), { wrapper });

    expect(typeof result.current.login).toBe("function");
    expect(typeof result.current.logout).toBe("function");
    expect(typeof result.current.register).toBe("function");
  });
});
