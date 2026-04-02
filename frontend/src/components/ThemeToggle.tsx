"use client";

import { useTheme } from "@/hooks/useTheme";
import { useLocale } from "@/hooks/useLocale";
import type { Theme } from "@/components/ThemeProvider";

const options: { value: Theme; key: string; icon: string }[] = [
  { value: "light", key: "theme.light", icon: "☀️" },
  { value: "dark", key: "theme.dark", icon: "🌙" },
  { value: "system", key: "theme.system", icon: "💻" },
];

export function ThemeToggle() {
  const { theme, setTheme } = useTheme();
  const { t } = useLocale();

  return (
    <div className="flex items-center gap-1 p-1 rounded-lg bg-[var(--muted-bg)]">
      {options.map((opt) => (
        <button
          key={opt.value}
          onClick={() => setTheme(opt.value)}
          className={`px-3 py-1.5 text-sm rounded-md transition-all ${
            theme === opt.value
              ? "bg-[var(--card-bg)] shadow-sm font-medium text-[var(--foreground)]"
              : "text-[var(--muted)] hover:text-[var(--foreground)]"
          }`}
          title={t(opt.key)}
        >
          <span className="mr-1">{opt.icon}</span>
          <span className="hidden sm:inline">{t(opt.key)}</span>
        </button>
      ))}
    </div>
  );
}
