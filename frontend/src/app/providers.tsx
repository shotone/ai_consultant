"use client";

import { KeycloakProvider } from "@/components/KeycloakProvider";
import { ThemeProvider } from "@/components/ThemeProvider";
import { LocaleProvider } from "@/components/LocaleProvider";
import type { ReactNode } from "react";

export function Providers({ children }: { children: ReactNode }) {
  return (
    <ThemeProvider>
      <LocaleProvider>
        <KeycloakProvider>{children}</KeycloakProvider>
      </LocaleProvider>
    </ThemeProvider>
  );
}
