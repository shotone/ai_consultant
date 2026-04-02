"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import Link from "next/link";
import { useEffect, useState } from "react";

interface UserProfile {
  id: string;
  email: string;
  fullName: string;
  phone: string | null;
  avatarUrl: string | null;
  role: string;
  isVerified: boolean;
  sellerProfile: {
    businessName: string;
    rating: number;
    totalSales: number;
  } | null;
}

export default function ProfilePage() {
  return (
    <ProtectedRoute>
      <ProfileContent />
    </ProtectedRoute>
  );
}

function ProfileContent() {
  const { token, logout } = useAuth();
  const { t } = useLocale();
  const [profile, setProfile] = useState<UserProfile | null>(null);
  const [editing, setEditing] = useState(false);
  const [fullName, setFullName] = useState("");
  const [phone, setPhone] = useState("");
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (!token) return;
    apiClient<{ data: UserProfile }>("/users/me", { token })
      .then((res) => {
        setProfile(res.data);
        setFullName(res.data.fullName);
        setPhone(res.data.phone || "");
      })
      .catch((err) => setError(err.message));
  }, [token]);

  const handleSave = async () => {
    if (!token) return;
    try {
      const res = await apiClient<{ data: UserProfile }>("/users/me", {
        method: "PATCH",
        token,
        body: JSON.stringify({ fullName, phone: phone || null }),
      });
      setProfile(res.data);
      setEditing(false);
      setError(null);
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : "Unknown error");
    }
  };

  if (error) {
    return (
      <div className="max-w-md mx-auto mt-20 p-6 text-center">
        <p className="text-red-500">{error}</p>
      </div>
    );
  }

  if (!profile) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-[var(--muted)]">{t("loading")}</div>
      </div>
    );
  }

  return (
    <div className="max-w-lg mx-auto mt-12 p-6">
      <h1 className="text-2xl font-bold mb-6 text-[var(--foreground)]">{t("profile.title")}</h1>

      <div className="space-y-4 bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6">
        <div>
          <label className="block text-sm text-[var(--muted)]">{t("profile.email")}</label>
          <p className="text-lg text-[var(--foreground)]">{profile.email}</p>
        </div>

        <div>
          <label className="block text-sm text-[var(--muted)]">{t("profile.name")}</label>
          {editing ? (
            <input
              type="text"
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              className="w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 mt-1 outline-none focus:border-[var(--accent)]"
            />
          ) : (
            <p className="text-lg text-[var(--foreground)]">{profile.fullName}</p>
          )}
        </div>

        <div>
          <label className="block text-sm text-[var(--muted)]">{t("profile.phone")}</label>
          {editing ? (
            <input
              type="text"
              value={phone}
              onChange={(e) => setPhone(e.target.value)}
              placeholder={t("profile.phone.placeholder")}
              className="w-full border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 mt-1 outline-none focus:border-[var(--accent)]"
            />
          ) : (
            <p className="text-lg text-[var(--foreground)]">{profile.phone || t("profile.phone.empty")}</p>
          )}
        </div>

        <div>
          <label className="block text-sm text-[var(--muted)]">{t("profile.role")}</label>
          <p className="text-lg capitalize text-[var(--foreground)]">{profile.role}</p>
        </div>

        {profile.sellerProfile && (
          <div className="border-t border-[var(--card-border)] pt-4 mt-4">
            <h2 className="text-lg font-semibold mb-2 text-[var(--foreground)]">{t("seller.profile")}</h2>
            <p className="text-[var(--foreground)]">{t("seller.business")}: {profile.sellerProfile.businessName || "—"}</p>
            <p className="text-[var(--foreground)]">{t("seller.rating")}: {profile.sellerProfile.rating}</p>
            <p className="text-[var(--foreground)]">{t("seller.sales")}: {profile.sellerProfile.totalSales}</p>
          </div>
        )}

        <div className="flex gap-3 pt-4 flex-wrap">
          {editing ? (
            <>
              <button
                onClick={handleSave}
                className="px-4 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition"
              >
                {t("profile.save")}
              </button>
              <button
                onClick={() => setEditing(false)}
                className="px-4 py-2 border border-[var(--card-border)] text-[var(--foreground)] rounded-lg hover:bg-[var(--muted-bg)] transition"
              >
                {t("profile.cancel")}
              </button>
            </>
          ) : (
            <button
              onClick={() => setEditing(true)}
              className="px-4 py-2 bg-[var(--muted-bg)] text-[var(--foreground)] rounded-lg hover:bg-[var(--card-border)] transition"
            >
              {t("profile.edit")}
            </button>
          )}

          {profile.role === "buyer" && (
            <Link
              href="/profile/become-seller"
              className="px-4 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition"
            >
              {t("profile.become_seller")}
            </Link>
          )}

          <button
            onClick={logout}
            className="px-4 py-2 border border-red-400 text-red-500 rounded-lg hover:bg-red-50 dark:hover:bg-red-950 transition ml-auto"
          >
            {t("nav.logout")}
          </button>
        </div>
      </div>
    </div>
  );
}
