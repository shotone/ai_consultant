"use client";

import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import type { ReactNode } from "react";

export function ProtectedRoute({ children }: { children: ReactNode }) {
  const { isAuthenticated, isLoading, login } = useAuth();
  const { t } = useLocale();

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-lg text-[var(--muted)]">{t("loading")}</div>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div className="flex flex-col items-center justify-center min-h-screen gap-4">
        <h2 className="text-xl font-semibold text-[var(--foreground)]">{t("auth.required")}</h2>
        <p className="text-[var(--muted)]">{t("auth.required.description")}</p>
        <button
          onClick={login}
          className="px-6 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition"
        >
          {t("nav.login")}
        </button>
      </div>
    );
  }

  return <>{children}</>;
}
