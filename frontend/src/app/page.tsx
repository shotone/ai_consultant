"use client";

import { useAuth } from "@/hooks/useAuth";
import Link from "next/link";

export default function Home() {
  const { isAuthenticated, isLoading, user, login, register, logout } = useAuth();

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-lg text-gray-500">იტვირთება...</div>
      </div>
    );
  }

  return (
    <main className="flex flex-col items-center justify-center min-h-screen gap-8 p-8">
      <div className="text-center">
        <h1 className="text-4xl font-bold mb-2">ipove.ai</h1>
        <p className="text-xl text-gray-500">ვინც ეძებს — პოულობს</p>
        <p className="text-sm text-gray-400 mt-2">
          AI გამყიდველი კონსულტანტი — შენი პირადი გაყიდვების აგენტი
        </p>
      </div>

      {isAuthenticated && user ? (
        <div className="flex flex-col items-center gap-4">
          <div className="text-center">
            <p className="text-lg">
              გამარჯობა, <span className="font-semibold">{user.name}</span>
            </p>
            <p className="text-sm text-gray-500">{user.email}</p>
          </div>
          <div className="flex gap-3">
            <Link
              href="/profile"
              className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
            >
              ჩემი პროფილი
            </Link>
            <button
              onClick={logout}
              className="px-6 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition"
            >
              გასვლა
            </button>
          </div>
        </div>
      ) : (
        <div className="flex gap-3">
          <button
            onClick={login}
            className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
          >
            შესვლა
          </button>
          <button
            onClick={register}
            className="px-6 py-2 border border-blue-600 text-blue-600 rounded-lg hover:bg-blue-50 transition"
          >
            რეგისტრაცია
          </button>
        </div>
      )}
    </main>
  );
}
