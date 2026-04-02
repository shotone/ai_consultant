import Keycloak from "keycloak-js";

const keycloakConfig = {
  url: process.env.NEXT_PUBLIC_KEYCLOAK_URL || "http://localhost:8180",
  realm: process.env.NEXT_PUBLIC_KEYCLOAK_REALM || "ipove-platform",
  clientId: process.env.NEXT_PUBLIC_KEYCLOAK_CLIENT_ID || "ipove-web",
};

let keycloakInstance: Keycloak | null = null;

export function getKeycloak(): Keycloak {
  if (typeof window === "undefined") {
    throw new Error("Keycloak can only be used in the browser");
  }
  if (!keycloakInstance) {
    keycloakInstance = new Keycloak(keycloakConfig);
  }
  return keycloakInstance;
}
