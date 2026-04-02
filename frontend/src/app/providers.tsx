"use client";

import { KeycloakProvider } from "@/components/KeycloakProvider";
import type { ReactNode } from "react";

export function Providers({ children }: { children: ReactNode }) {
  return <KeycloakProvider>{children}</KeycloakProvider>;
}
