"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import { useRouter } from "next/navigation";
import { useState } from "react";

export default function BecomeSellerPage() {
  return (
    <ProtectedRoute>
      <BecomeSellerContent />
    </ProtectedRoute>
  );
}

function BecomeSellerContent() {
  const { token } = useAuth();
  const { t } = useLocale();
  const router = useRouter();
  const [businessName, setBusinessName] = useState("");
  const [description, setDescription] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!token) return;

    setLoading(true);
    setError(null);

    try {
      await apiClient("/users/me/become-seller", {
        method: "POST",
        token,
        body: JSON.stringify({ businessName, description }),
      });
      router.push("/profile");
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : "Unknown error");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="max-w-lg mx-auto mt-12 p-6">
      <h1 className="text-2xl font-bold mb-6 text-[var(--foreground)]">{t("seller.title")}</h1>
      <p className="text-[var(--muted)] mb-6">{t("seller.description")}</p>

      <form onSubmit={handleSubmit} className="space-y-4 bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6">
        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("seller.business_name")}</label>
          <input
            type="text"
            value={businessName}
            onChange={(e) => setBusinessName(e.target.value)}
            placeholder={t("seller.business_name.placeholder")}
            className="w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 outline-none focus:border-[var(--accent)]"
          />
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("seller.bio")}</label>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            placeholder={t("seller.bio.placeholder")}
            rows={4}
            className="w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 outline-none focus:border-[var(--accent)]"
          />
        </div>

        {error && <p className="text-red-500 text-sm">{error}</p>}

        <button
          type="submit"
          disabled={loading}
          className="w-full py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-50"
        >
          {loading ? t("seller.submitting") : t("seller.submit")}
        </button>
      </form>
    </div>
  );
}
