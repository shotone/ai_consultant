"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";

interface CategoryOption {
  id: string;
  name: string;
  children?: CategoryOption[];
}

export default function NewProductPage() {
  return (
    <ProtectedRoute>
      <NewProductContent />
    </ProtectedRoute>
  );
}

function NewProductContent() {
  const { token } = useAuth();
  const { t } = useLocale();
  const router = useRouter();

  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");
  const [condition, setCondition] = useState("good");
  const [categoryId, setCategoryId] = useState("");
  const [location, setLocation] = useState("");
  const [categories, setCategories] = useState<CategoryOption[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    apiClient<{ data: CategoryOption[] }>("/categories", { token: token || undefined })
      .then((res) => setCategories(res.data))
      .catch(() => {});
  }, [token]);

  const flatCategories = (cats: CategoryOption[], prefix = ""): { id: string; label: string }[] => {
    const result: { id: string; label: string }[] = [];
    for (const c of cats) {
      result.push({ id: c.id, label: prefix + c.name });
      if (c.children) {
        result.push(...flatCategories(c.children, prefix + "  "));
      }
    }
    return result;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!token) return;
    setLoading(true);
    setError(null);

    try {
      await apiClient("/products", {
        method: "POST",
        token,
        body: JSON.stringify({
          title,
          description,
          price: parseFloat(price),
          condition,
          categoryId: categoryId || null,
          location: location || null,
        }),
      });
      router.push("/products");
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : "Error");
    } finally {
      setLoading(false);
    }
  };

  const inputClass = "w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 outline-none focus:border-[var(--accent)]";

  return (
    <div className="max-w-lg mx-auto mt-12 p-6">
      <h1 className="text-2xl font-bold mb-6 text-[var(--foreground)]">{t("products.add")}</h1>

      <form onSubmit={handleSubmit} className="space-y-4 bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6">
        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.title")}</label>
          <input type="text" value={title} onChange={(e) => setTitle(e.target.value)} required className={inputClass} />
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.description")}</label>
          <textarea value={description} onChange={(e) => setDescription(e.target.value)} required rows={4} className={inputClass} />
        </div>

        <div className="grid grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.price")} (GEL)</label>
            <input type="number" step="0.01" min="0.01" value={price} onChange={(e) => setPrice(e.target.value)} required className={inputClass} />
          </div>
          <div>
            <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.condition")}</label>
            <select value={condition} onChange={(e) => setCondition(e.target.value)} className={inputClass}>
              <option value="new">{t("condition.new")}</option>
              <option value="like_new">{t("condition.like_new")}</option>
              <option value="good">{t("condition.good")}</option>
              <option value="fair">{t("condition.fair")}</option>
            </select>
          </div>
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.category")}</label>
          <select value={categoryId} onChange={(e) => setCategoryId(e.target.value)} className={inputClass}>
            <option value="">—</option>
            {flatCategories(categories).map((c) => (
              <option key={c.id} value={c.id}>{c.label}</option>
            ))}
          </select>
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.location")}</label>
          <input type="text" value={location} onChange={(e) => setLocation(e.target.value)} className={inputClass} />
        </div>

        {error && <p className="text-red-500 text-sm">{error}</p>}

        <button
          type="submit"
          disabled={loading}
          className="w-full py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-50"
        >
          {loading ? t("products.saving") : t("products.save")}
        </button>
      </form>
    </div>
  );
}
