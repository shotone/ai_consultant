"use client";

import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import Link from "next/link";
import { useParams, useRouter } from "next/navigation";
import { useEffect, useState } from "react";

interface ProductDetail {
  id: string;
  sellerId: string;
  sellerName: string;
  categoryId: string | null;
  categoryName: string | null;
  title: string;
  description: string;
  price: number;
  currency: string;
  condition: string;
  status: string;
  location: string | null;
  images: string[];
  viewCount: number;
  createdAt: string;
}

export default function ProductDetailPage() {
  const { id } = useParams<{ id: string }>();
  const router = useRouter();
  const { token } = useAuth();
  const { t } = useLocale();
  const [product, setProduct] = useState<ProductDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [currentUserId, setCurrentUserId] = useState<string | null>(null);
  const [deleting, setDeleting] = useState(false);

  useEffect(() => {
    if (!id) return;
    apiClient<{ data: ProductDetail }>(`/products/${id}`, { token: token || undefined })
      .then((res) => setProduct(res.data))
      .catch(() => {})
      .finally(() => setLoading(false));
  }, [id, token]);

  useEffect(() => {
    if (!token) {
      setCurrentUserId(null);
      return;
    }
    apiClient<{ data: { id: string } }>("/users/me", { token })
      .then((res) => setCurrentUserId(res.data.id))
      .catch(() => setCurrentUserId(null));
  }, [token]);

  const isOwner = Boolean(product && currentUserId && currentUserId === product.sellerId);

  const handleDelete = async () => {
    if (!token || !id || !window.confirm(t("products.delete_confirm"))) return;
    setDeleting(true);
    try {
      await apiClient(`/products/${id}`, { method: "DELETE", token });
      router.push("/products");
    } catch {
      setDeleting(false);
    }
  };

  if (loading) {
    return <div className="flex items-center justify-center min-h-screen text-[var(--muted)]">{t("loading")}</div>;
  }

  if (!product) {
    return <div className="flex items-center justify-center min-h-screen text-[var(--muted)]">Product not found</div>;
  }

  return (
    <div className="max-w-4xl mx-auto p-6">
      <Link href="/products" className="text-[var(--muted)] hover:text-[var(--foreground)] text-sm mb-4 inline-block">
        &larr; {t("products.title")}
      </Link>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          {product.images && product.images.length > 0 ? (
            <div className="space-y-2">
              <div className="rounded-xl overflow-hidden bg-[var(--muted-bg)]">
                <img src={product.images[0]} alt={product.title} className="w-full aspect-square object-cover" />
              </div>
              {product.images.length > 1 && (
                <div className="flex gap-2 overflow-x-auto">
                  {product.images.slice(1).map((img, i) => (
                    <img key={i} src={img} alt="" className="w-20 h-20 rounded-lg object-cover border border-[var(--card-border)]" />
                  ))}
                </div>
              )}
            </div>
          ) : (
            <div className="aspect-square bg-[var(--muted-bg)] rounded-xl flex items-center justify-center">
              <span className="text-6xl">📦</span>
            </div>
          )}
        </div>

        <div className="space-y-4">
          <h1 className="text-2xl font-bold text-[var(--foreground)]">{product.title}</h1>

          <p className="text-3xl font-bold text-[var(--foreground)]">
            {product.price} {product.currency}
          </p>

          <div className="space-y-2 text-sm">
            <div className="flex justify-between py-2 border-b border-[var(--card-border)]">
              <span className="text-[var(--muted)]">{t("products.condition")}</span>
              <span className="text-[var(--foreground)]">{t(`condition.${product.condition}`)}</span>
            </div>
            {product.categoryName && (
              <div className="flex justify-between py-2 border-b border-[var(--card-border)]">
                <span className="text-[var(--muted)]">{t("products.category")}</span>
                <span className="text-[var(--foreground)]">{product.categoryName}</span>
              </div>
            )}
            {product.location && (
              <div className="flex justify-between py-2 border-b border-[var(--card-border)]">
                <span className="text-[var(--muted)]">{t("products.location")}</span>
                <span className="text-[var(--foreground)]">{product.location}</span>
              </div>
            )}
            <div className="flex justify-between py-2 border-b border-[var(--card-border)]">
              <span className="text-[var(--muted)]">{t("products.views")}</span>
              <span className="text-[var(--foreground)]">{product.viewCount}</span>
            </div>
          </div>

          <div>
            <h2 className="font-semibold text-[var(--foreground)] mb-1">{t("products.description")}</h2>
            <p className="text-[var(--foreground)] whitespace-pre-wrap">{product.description}</p>
          </div>

          <div className="pt-4 space-y-2">
            <p className="text-sm text-[var(--muted)]">
              {product.sellerName}
            </p>
            {isOwner ? (
              <div className="flex flex-col sm:flex-row gap-2">
                <Link
                  href={`/products/${product.id}/edit`}
                  className="flex-1 text-center py-2 border border-[var(--card-border)] text-[var(--foreground)] rounded-lg hover:bg-[var(--muted-bg)] transition"
                >
                  {t("products.edit")}
                </Link>
                <button
                  type="button"
                  disabled={deleting}
                  onClick={handleDelete}
                  className="flex-1 py-2 border border-red-500/50 text-red-600 dark:text-red-400 rounded-lg hover:bg-red-500/10 transition disabled:opacity-50"
                >
                  {deleting ? t("products.deleting") : t("products.delete")}
                </button>
              </div>
            ) : (
              <button className="w-full py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition">
                {t("products.contact_seller")}
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
