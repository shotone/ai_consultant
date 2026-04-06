"use client";

import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { ThemeToggle } from "@/components/ThemeToggle";
import { LocaleSwitch } from "@/components/LocaleSwitch";
import { apiClient } from "@/lib/api-client";
import Link from "next/link";
import { Suspense, useEffect, useState } from "react";
import { useSearchParams } from "next/navigation";

interface ProductItem {
  id: string;
  title: string;
  price: number;
  currency: string;
  condition: string;
  images: string[];
  sellerName: string;
  categoryName: string | null;
  viewCount: number;
  createdAt: string;
}

interface PageData {
  content: ProductItem[];
  totalElements: number;
  totalPages: number;
  number: number;
}

export default function ProductsPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center min-h-screen text-[var(--muted)]">...</div>}>
      <ProductsContent />
    </Suspense>
  );
}

const PAGE_SIZE = 24;

function ProductsContent() {
  const { token } = useAuth();
  const { t } = useLocale();
  const searchParams = useSearchParams();
  const categoryId = searchParams.get("categoryId");
  const [items, setItems] = useState<ProductItem[]>([]);
  const [totalElements, setTotalElements] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const [page, setPage] = useState(0);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);

  const fetchPage = (pageNum: number, append: boolean) => {
    const setter = append ? setLoadingMore : setLoading;
    setter(true);
    const base = categoryId
      ? `/products?categoryId=${categoryId}`
      : "/products";
    const url = `${base}${base.includes("?") ? "&" : "?"}page=${pageNum}&size=${PAGE_SIZE}`;
    apiClient<{ data: PageData }>(url, { token: token || undefined })
      .then((res) => {
        const d = res.data;
        setItems((prev) => append ? [...prev, ...d.content] : d.content);
        setTotalElements(d.totalElements);
        setTotalPages(d.totalPages);
        setPage(d.number);
      })
      .catch(() => {})
      .finally(() => setter(false));
  };

  useEffect(() => {
    setItems([]);
    setPage(0);
    fetchPage(0, false);
  }, [token, categoryId]);

  return (
    <div className="max-w-6xl mx-auto p-6">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold text-[var(--foreground)]">{t("products.title")}</h1>
        <div className="flex items-center gap-2">
          <Link
            href="/products/new"
            className="px-4 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition text-sm"
          >
            + {t("products.add")}
          </Link>
          <LocaleSwitch />
          <ThemeToggle />
        </div>
      </div>

      {loading ? (
        <p className="text-[var(--muted)]">{t("loading")}</p>
      ) : items.length === 0 ? (
        <p className="text-[var(--muted)]">{t("products.empty")}</p>
      ) : (
        <>
          <p className="text-sm text-[var(--muted)] mb-4">
            {t("products.showing").replace("{count}", String(items.length)).replace("{total}", String(totalElements))}
          </p>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {items.map((p) => (
              <Link
                key={p.id}
                href={`/products/${p.id}`}
                className="block bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl overflow-hidden hover:shadow-md transition"
              >
                {p.images && p.images.length > 0 ? (
                  <div className="h-48 bg-[var(--muted-bg)] flex items-center justify-center overflow-hidden">
                    <img src={p.images[0]} alt={p.title} className="w-full h-full object-cover" />
                  </div>
                ) : (
                  <div className="h-48 bg-[var(--muted-bg)] flex items-center justify-center">
                    <span className="text-[var(--muted)] text-4xl">📦</span>
                  </div>
                )}
                <div className="p-4">
                  <h3 className="font-semibold text-[var(--foreground)] truncate">{p.title}</h3>
                  <p className="text-lg font-bold text-[var(--foreground)] mt-1">
                    {p.price} {p.currency}
                  </p>
                  <div className="flex justify-between items-center mt-2 text-sm text-[var(--muted)]">
                    <span>{p.sellerName}</span>
                    <span>{p.viewCount} {t("products.views")}</span>
                  </div>
                </div>
              </Link>
            ))}
          </div>
          {page + 1 < totalPages && (
            <div className="flex justify-center mt-8">
              <button
                onClick={() => fetchPage(page + 1, true)}
                disabled={loadingMore}
                className="px-6 py-3 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-50"
              >
                {loadingMore ? t("products.loading_more") : t("products.load_more")}
              </button>
            </div>
          )}
        </>
      )}
    </div>
  );
}
