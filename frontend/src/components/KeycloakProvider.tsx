"use client";

import {
  createContext,
  useCallback,
  useEffect,
  useRef,
  useState,
  type ReactNode,
} from "react";
import Keycloak from "keycloak-js";

interface AuthUser {
  keycloakId: string;
  email: string;
  name: string;
  emailVerified: boolean;
}

interface AuthContextType {
  isAuthenticated: boolean;
  isLoading: boolean;
  user: AuthUser | null;
  token: string | null;
  login: () => void;
  logout: () => void;
  register: () => void;
}

export const AuthContext = createContext<AuthContextType>({
  isAuthenticated: false,
  isLoading: true,
  user: null,
  token: null,
  login: () => {},
  logout: () => {},
  register: () => {},
});

export function KeycloakProvider({ children }: { children: ReactNode }) {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [user, setUser] = useState<AuthUser | null>(null);
  const [token, setToken] = useState<string | null>(null);
  const keycloakRef = useRef<Keycloak | null>(null);
  const initCalled = useRef(false);

  useEffect(() => {
    if (initCalled.current) return;
    initCalled.current = true;

    const kc = new Keycloak({
      url: process.env.NEXT_PUBLIC_KEYCLOAK_URL || "http://localhost:8180",
      realm: process.env.NEXT_PUBLIC_KEYCLOAK_REALM || "ipove-platform",
      clientId: process.env.NEXT_PUBLIC_KEYCLOAK_CLIENT_ID || "ipove-web",
    });

    keycloakRef.current = kc;

    kc.init({ onLoad: "check-sso", silentCheckSsoRedirectUri: undefined })
      .then((authenticated) => {
        setIsAuthenticated(authenticated);
        if (authenticated && kc.tokenParsed) {
          setToken(kc.token || null);
          setUser({
            keycloakId: kc.tokenParsed.sub || "",
            email: kc.tokenParsed.email || "",
            name: kc.tokenParsed.name || kc.tokenParsed.preferred_username || "",
            emailVerified: kc.tokenParsed.email_verified || false,
          });
        }
        setIsLoading(false);
      })
      .catch(() => {
        setIsLoading(false);
      });

    kc.onTokenExpired = () => {
      kc.updateToken(30).then((refreshed) => {
        if (refreshed) {
          setToken(kc.token || null);
        }
      });
    };
  }, []);

  const login = useCallback(() => {
    keycloakRef.current?.login();
  }, []);

  const logout = useCallback(() => {
    keycloakRef.current?.logout({ redirectUri: window.location.origin });
  }, []);

  const register = useCallback(() => {
    keycloakRef.current?.register();
  }, []);

  return (
    <AuthContext.Provider
      value={{ isAuthenticated, isLoading, user, token, login, logout, register }}
    >
      {children}
    </AuthContext.Provider>
  );
}
