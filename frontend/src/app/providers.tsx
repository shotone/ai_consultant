"use client";

import { KeycloakProvider } from "@/components/KeycloakProvider";
import { ThemeProvider } from "@/components/ThemeProvider";
import type { ReactNode } from "react";

export function Providers({ children }: { children: ReactNode }) {
  return (
    <ThemeProvider>
      <KeycloakProvider>{children}</KeycloakProvider>
    </ThemeProvider>
  );
}
