"use client";

import { useContext } from "react";
import { AuthContext } from "@/components/KeycloakProvider";

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within a KeycloakProvider");
  }
  return context;
}
