"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
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
      <h1 className="text-2xl font-bold mb-6">გამყიდველი გახდი</h1>
      <p className="text-gray-500 mb-6">
        შეავსე ინფორმაცია შენი ბიზნესის შესახებ და დაიწყე გაყიდვა ipove.ai-ზე
      </p>

      <form onSubmit={handleSubmit} className="space-y-4">
        <div>
          <label className="block text-sm font-medium mb-1">ბიზნესის სახელი</label>
          <input
            type="text"
            value={businessName}
            onChange={(e) => setBusinessName(e.target.value)}
            placeholder="მაგ: ტექნო მარკეტი"
            className="w-full border rounded-lg px-3 py-2"
          />
        </div>

        <div>
          <label className="block text-sm font-medium mb-1">აღწერა</label>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            placeholder="მოკლედ აღწერე რას ყიდი..."
            rows={4}
            className="w-full border rounded-lg px-3 py-2"
          />
        </div>

        {error && <p className="text-red-500 text-sm">{error}</p>}

        <button
          type="submit"
          disabled={loading}
          className="w-full py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 transition disabled:opacity-50"
        >
          {loading ? "მიმდინარეობს..." : "გამყიდველი გახდი"}
        </button>
      </form>
    </div>
  );
}
