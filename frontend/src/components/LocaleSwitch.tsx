"use client";

import { useLocale } from "@/hooks/useLocale";
import { locales } from "@/i18n/locales";

export function LocaleSwitch() {
  const { locale, setLocale } = useLocale();

  return (
    <div className="flex items-center gap-1 p-1 rounded-lg bg-[var(--muted-bg)]">
      {locales.map((loc) => (
        <button
          key={loc.code}
          onClick={() => setLocale(loc.code)}
          className={`px-2.5 py-1.5 text-sm rounded-md transition-all ${
            locale === loc.code
              ? "bg-[var(--card-bg)] shadow-sm font-medium text-[var(--foreground)]"
              : "text-[var(--muted)] hover:text-[var(--foreground)]"
          }`}
          title={loc.label}
        >
          <span className="mr-1">{loc.flag}</span>
          <span className="hidden sm:inline">{loc.code.toUpperCase()}</span>
        </button>
      ))}
    </div>
  );
}
