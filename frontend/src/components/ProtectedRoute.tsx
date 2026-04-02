"use client";

import { useAuth } from "@/hooks/useAuth";
import type { ReactNode } from "react";

export function ProtectedRoute({ children }: { children: ReactNode }) {
  const { isAuthenticated, isLoading, login } = useAuth();

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-lg text-gray-500">იტვირთება...</div>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div className="flex flex-col items-center justify-center min-h-screen gap-4">
        <h2 className="text-xl font-semibold">ავტორიზაცია საჭიროა</h2>
        <p className="text-gray-500">ამ გვერდის სანახავად გთხოვთ შეხვიდეთ სისტემაში</p>
        <button
          onClick={login}
          className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
        >
          შესვლა
        </button>
      </div>
    );
  }

  return <>{children}</>;
}
