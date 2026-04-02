"use client";

import { useAuth } from "@/hooks/useAuth";
import { ThemeToggle } from "@/components/ThemeToggle";
import Link from "next/link";

export default function Home() {
  const { isAuthenticated, isLoading, user, login, register, logout } = useAuth();

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-lg text-[var(--muted)]">იტვირთება...</div>
      </div>
    );
  }

  return (
    <main className="flex flex-col items-center justify-center min-h-screen gap-8 p-8">
      <div className="absolute top-4 right-4">
        <ThemeToggle />
      </div>

      <div className="text-center">
        <h1 className="text-4xl font-bold mb-2 bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
          ipove.ai
        </h1>
        <p className="text-xl text-[var(--muted)]">ვინც ეძებს — პოულობს</p>
        <p className="text-sm text-[var(--muted)] mt-2 opacity-70">
          AI გამყიდველი კონსულტანტი — შენი პირადი გაყიდვების აგენტი
        </p>
      </div>

      {isAuthenticated && user ? (
        <div className="flex flex-col items-center gap-4">
          <div className="text-center">
            <p className="text-lg">
              გამარჯობა, <span className="font-semibold">{user.name}</span>
            </p>
            <p className="text-sm text-[var(--muted)]">{user.email}</p>
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
              className="px-6 py-2 border border-[var(--card-border)] rounded-lg hover:bg-[var(--muted-bg)] transition"
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
            className="px-6 py-2 border border-blue-600 text-blue-600 dark:text-blue-400 dark:border-blue-400 rounded-lg hover:bg-blue-50 dark:hover:bg-blue-950 transition"
          >
            რეგისტრაცია
          </button>
        </div>
      )}
    </main>
  );
}
