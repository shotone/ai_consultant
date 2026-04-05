"use client";

import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";

const API_BASE_URL =
  process.env.NEXT_PUBLIC_API_URL || "http://localhost:8080/api";

interface CategoryOption {
  id: string;
  name: string;
  children?: CategoryOption[];
}

interface ProductPayload {
  id: string;
  title: string;
  description: string;
  price: number;
  condition: string;
  categoryId: string | null;
  location: string | null;
  images: string[];
}

export function ProductForm({ productId }: { productId?: string }) {
  const isEdit = Boolean(productId);
  const { token } = useAuth();
  const { t } = useLocale();
  const router = useRouter();

  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");
  const [condition, setCondition] = useState("good");
  const [categoryId, setCategoryId] = useState("");
  const [location, setLocation] = useState("");
  const [images, setImages] = useState<string[]>([]);
  const [uploading, setUploading] = useState(false);
  const [categories, setCategories] = useState<CategoryOption[]>([]);
  const [loading, setLoading] = useState(false);
  const [loadProduct, setLoadProduct] = useState(isEdit);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    apiClient<{ data: CategoryOption[] }>("/categories", { token: token || undefined })
      .then((res) => setCategories(res.data))
      .catch(() => {});
  }, [token]);

  useEffect(() => {
    if (!isEdit || !productId) return;
    apiClient<{ data: ProductPayload }>(`/products/${productId}`, { token: token || undefined })
      .then((res) => {
        const p = res.data;
        setTitle(p.title);
        setDescription(p.description);
        setPrice(String(p.price));
        setCondition(p.condition);
        setCategoryId(p.categoryId ?? "");
        setLocation(p.location ?? "");
        setImages(p.images ?? []);
      })
      .catch(() => setError("LOAD_FAILED"))
      .finally(() => setLoadProduct(false));
  }, [isEdit, productId, token]);

  const handleImageUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (!e.target.files || !token) return;
    setUploading(true);
    const newImages: string[] = [];
    for (const file of Array.from(e.target.files)) {
      try {
        const formData = new FormData();
        formData.append("file", file);
        const res = await fetch(`${API_BASE_URL}/products/images`, {
          method: "POST",
          headers: { Authorization: `Bearer ${token}` },
          body: formData,
        });
        const json = await res.json();
        if (json.success && json.data) {
          newImages.push(json.data);
        }
      } catch {
        // skip failed uploads
      }
    }
    setImages((prev) => [...prev, ...newImages]);
    setUploading(false);
  };

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

    const body = {
      title,
      description,
      price: parseFloat(price),
      condition,
      categoryId: categoryId || null,
      location: location || null,
      images,
    };

    try {
      if (isEdit && productId) {
        await apiClient(`/products/${productId}`, {
          method: "PATCH",
          token,
          body: JSON.stringify(body),
        });
        router.push(`/products/${productId}`);
      } else {
        await apiClient("/products", {
          method: "POST",
          token,
          body: JSON.stringify(body),
        });
        router.push("/products");
      }
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : "Error");
    } finally {
      setLoading(false);
    }
  };

  const inputClass =
    "w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 outline-none focus:border-[var(--accent)]";

  if (loadProduct) {
    return (
      <div className="flex items-center justify-center min-h-[40vh] text-[var(--muted)]">{t("loading")}</div>
    );
  }

  return (
    <div className="max-w-lg mx-auto mt-12 p-6">
      <h1 className="text-2xl font-bold mb-6 text-[var(--foreground)]">
        {isEdit ? t("products.edit_title") : t("products.add")}
      </h1>

      <form
        onSubmit={handleSubmit}
        className="space-y-4 bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6"
      >
        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.title")}</label>
          <input type="text" value={title} onChange={(e) => setTitle(e.target.value)} required className={inputClass} />
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.description")}</label>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            required
            rows={4}
            className={inputClass}
          />
        </div>

        <div className="grid grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.price")} (GEL)</label>
            <input
              type="number"
              step="0.01"
              min="0.01"
              value={price}
              onChange={(e) => setPrice(e.target.value)}
              required
              className={inputClass}
            />
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
              <option key={c.id} value={c.id}>
                {c.label}
              </option>
            ))}
          </select>
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.location")}</label>
          <input type="text" value={location} onChange={(e) => setLocation(e.target.value)} className={inputClass} />
        </div>

        <div>
          <label className="block text-sm font-medium mb-1 text-[var(--foreground)]">{t("products.images")}</label>
          <div className="border-2 border-dashed border-[var(--input-border)] rounded-lg p-4 text-center">
            <input
              type="file"
              accept="image/*"
              multiple
              onChange={handleImageUpload}
              className="hidden"
              id="product-image-upload"
            />
            <label
              htmlFor="product-image-upload"
              className="cursor-pointer text-[var(--muted)] hover:text-[var(--foreground)] transition"
            >
              {uploading ? "..." : t("products.upload_hint")}
            </label>
          </div>
          {images.length > 0 && (
            <div className="flex gap-2 mt-2 flex-wrap">
              {images.map((img, i) => (
                <div key={i} className="relative">
                  <img src={img} alt="" className="w-20 h-20 rounded-lg object-cover border border-[var(--card-border)]" />
                  <button
                    type="button"
                    onClick={() => setImages(images.filter((_, idx) => idx !== i))}
                    className="absolute -top-1 -right-1 w-5 h-5 bg-red-500 text-white rounded-full text-xs flex items-center justify-center"
                  >
                    ×
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>

        {error && (
          <p className="text-red-500 text-sm">
            {error === "LOAD_FAILED" ? t("products.load_error") : error}
          </p>
        )}

        <button
          type="submit"
          disabled={loading}
          className="w-full py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-50"
        >
          {loading ? (isEdit ? t("products.updating") : t("products.saving")) : isEdit ? t("products.save_changes") : t("products.save")}
        </button>
      </form>
    </div>
  );
}
