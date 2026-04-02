"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
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
        <div className="text-gray-500">იტვირთება...</div>
      </div>
    );
  }

  return (
    <div className="max-w-lg mx-auto mt-12 p-6">
      <h1 className="text-2xl font-bold mb-6">ჩემი პროფილი</h1>

      <div className="space-y-4 bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6">
        <div>
          <label className="block text-sm text-[var(--muted)]">Email</label>
          <p className="text-lg">{profile.email}</p>
        </div>

        <div>
          <label className="block text-sm text-gray-500">სახელი</label>
          {editing ? (
            <input
              type="text"
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              className="w-full border rounded-lg px-3 py-2 mt-1"
            />
          ) : (
            <p className="text-lg">{profile.fullName}</p>
          )}
        </div>

        <div>
          <label className="block text-sm text-gray-500">ტელეფონი</label>
          {editing ? (
            <input
              type="text"
              value={phone}
              onChange={(e) => setPhone(e.target.value)}
              placeholder="+995..."
              className="w-full border rounded-lg px-3 py-2 mt-1"
            />
          ) : (
            <p className="text-lg">{profile.phone || "არ არის მითითებული"}</p>
          )}
        </div>

        <div>
          <label className="block text-sm text-gray-500">როლი</label>
          <p className="text-lg capitalize">{profile.role}</p>
        </div>

        {profile.sellerProfile && (
          <div className="border-t pt-4 mt-4">
            <h2 className="text-lg font-semibold mb-2">გამყიდველის პროფილი</h2>
            <p>ბიზნესი: {profile.sellerProfile.businessName || "—"}</p>
            <p>რეიტინგი: {profile.sellerProfile.rating}</p>
            <p>გაყიდვები: {profile.sellerProfile.totalSales}</p>
          </div>
        )}

        <div className="flex gap-3 pt-4">
          {editing ? (
            <>
              <button
                onClick={handleSave}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
              >
                შენახვა
              </button>
              <button
                onClick={() => setEditing(false)}
                className="px-4 py-2 border rounded-lg hover:bg-gray-50 transition"
              >
                გაუქმება
              </button>
            </>
          ) : (
            <button
              onClick={() => setEditing(true)}
              className="px-4 py-2 bg-gray-100 rounded-lg hover:bg-gray-200 transition"
            >
              რედაქტირება
            </button>
          )}

          {profile.role === "buyer" && (
            <Link
              href="/profile/become-seller"
              className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 transition"
            >
              გამყიდველი გახდი
            </Link>
          )}

          <button
            onClick={logout}
            className="px-4 py-2 border border-red-300 text-red-600 rounded-lg hover:bg-red-50 transition ml-auto"
          >
            გასვლა
          </button>
        </div>
      </div>
    </div>
  );
}
