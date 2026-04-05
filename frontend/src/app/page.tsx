"use client";

import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { ThemeToggle } from "@/components/ThemeToggle";
import { LocaleSwitch } from "@/components/LocaleSwitch";
import Link from "next/link";

export default function Home() {
  const { isAuthenticated, isLoading, user, login, register, logout } = useAuth();
  const { t } = useLocale();

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-lg text-[var(--muted)]">{t("loading")}</div>
      </div>
    );
  }

  return (
    <main className="flex flex-col items-center justify-center min-h-screen gap-8 p-8">
      <div className="absolute top-4 right-4 flex items-center gap-2">
        <LocaleSwitch />
        <ThemeToggle />
      </div>

      <div className="text-center">
        <h1 className="text-4xl font-bold mb-2 text-[var(--foreground)]">
          {t("app.name")}
        </h1>
        <p className="text-xl text-[var(--muted)]">{t("app.slogan")}</p>
        <p className="text-sm text-[var(--muted)] mt-2 opacity-70">
          {t("app.description")}
        </p>
      </div>

      {isAuthenticated && user ? (
        <div className="flex flex-col items-center gap-4">
          <div className="text-center">
            <p className="text-lg text-[var(--foreground)]">
              {t("greeting")}, <span className="font-semibold">{user.name}</span>
            </p>
            <p className="text-sm text-[var(--muted)]">{user.email}</p>
          </div>
          <div className="flex gap-3 flex-wrap justify-center">
            <Link
              href="/chat"
              className="px-6 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition"
            >
              {t("chat.title")}
            </Link>
            <Link
              href="/products"
              className="px-6 py-2 border border-[var(--accent)] text-[var(--accent)] rounded-lg hover:bg-[var(--muted-bg)] transition"
            >
              {t("products.title")}
            </Link>
            <Link
              href="/profile"
              className="px-6 py-2 border border-[var(--card-border)] text-[var(--foreground)] rounded-lg hover:bg-[var(--muted-bg)] transition"
            >
              {t("nav.profile")}
            </Link>
            <button
              onClick={logout}
              className="px-6 py-2 border border-[var(--card-border)] text-[var(--foreground)] rounded-lg hover:bg-[var(--muted-bg)] transition"
            >
              {t("nav.logout")}
            </button>
          </div>
        </div>
      ) : (
        <div className="flex gap-3">
          <button
            onClick={login}
            className="px-6 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition"
          >
            {t("nav.login")}
          </button>
          <button
            onClick={register}
            className="px-6 py-2 border border-[var(--accent)] text-[var(--accent)] rounded-lg hover:bg-[var(--muted-bg)] transition"
          >
            {t("nav.register")}
          </button>
        </div>
      )}
    </main>
  );
}
