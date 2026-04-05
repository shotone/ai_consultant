"use client";

import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import { decodeSseData, parseSseBlocks } from "@/lib/sse";
import Link from "next/link";
import { useCallback, useEffect, useRef, useState } from "react";

const API_BASE = process.env.NEXT_PUBLIC_API_URL || "http://localhost:8080/api";
const CHAT_STORAGE_KEY = "ipove.chat.session";

interface ChatProductPreview {
  id: string;
  title: string;
  price: number;
  currency: string;
  imageUrl?: string;
}

interface UiMessage {
  id: string;
  role: "user" | "assistant";
  content: string;
  products?: ChatProductPreview[];
}

export default function ChatPage() {
  return (
    <ProtectedRoute>
      <ChatContent />
    </ProtectedRoute>
  );
}

function ChatContent() {
  const { token } = useAuth();
  const { t } = useLocale();
  const [mode, setMode] = useState<"BUYER" | "SELLER" | null>(null);
  const [sessionId, setSessionId] = useState<string | null>(null);
  const [messages, setMessages] = useState<UiMessage[]>([]);
  const [input, setInput] = useState("");
  const [streaming, setStreaming] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const bottomRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!token || typeof window === "undefined") return;
    try {
      const raw = sessionStorage.getItem(CHAT_STORAGE_KEY);
      if (!raw) return;
      const parsed = JSON.parse(raw) as { sessionId?: string; mode?: string };
      if (parsed.sessionId && (parsed.mode === "BUYER" || parsed.mode === "SELLER")) {
        setSessionId(parsed.sessionId);
        setMode(parsed.mode as "BUYER" | "SELLER");
      }
    } catch {
      sessionStorage.removeItem(CHAT_STORAGE_KEY);
    }
  }, [token]);

  const loadHistory = useCallback(
    async (sid: string) => {
      if (!token) return;
      try {
        const res = await apiClient<{ data: { id: string; role: string; content: string; metadata: Record<string, unknown> }[] }>(
          `/chat/sessions/${sid}/messages`,
          { token }
        );
        const rows = res.data.map((m) => {
          const products = (m.metadata?.products as ChatProductPreview[] | undefined) ?? undefined;
          return {
            id: m.id,
            role: m.role === "user" ? "user" : "assistant",
            content: m.content,
            products,
          } as UiMessage;
        });
        setMessages(rows);
      } catch (e) {
        if (e instanceof Error && e.message.includes("404")) {
          sessionStorage.removeItem(CHAT_STORAGE_KEY);
          setSessionId(null);
          setMode(null);
          setMessages([]);
          setError(null);
          return;
        }
        setError(t("chat.load_error"));
      }
    },
    [token, t]
  );

  useEffect(() => {
    if (sessionId && token) loadHistory(sessionId);
  }, [sessionId, token, loadHistory]);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, streaming]);

  const startSession = async () => {
    if (!token || !mode) return;
    setError(null);
    try {
      const res = await apiClient<{ data: { id: string } }>("/chat/sessions", {
        method: "POST",
        token,
        body: JSON.stringify({ mode }),
      });
      setSessionId(res.data.id);
      setMessages([]);
      sessionStorage.setItem(CHAT_STORAGE_KEY, JSON.stringify({ sessionId: res.data.id, mode }));
    } catch (e) {
      setError(e instanceof Error ? e.message : "Error");
    }
  };

  const resetChat = () => {
    if (typeof window !== "undefined") sessionStorage.removeItem(CHAT_STORAGE_KEY);
    setSessionId(null);
    setMode(null);
    setMessages([]);
    setInput("");
    setError(null);
  };

  const sendStream = async () => {
    if (!token || !sessionId || !input.trim() || streaming) return;
    const text = input.trim();
    setInput("");
    setError(null);
    setStreaming(true);

    const userMsg: UiMessage = { id: `u-${Date.now()}`, role: "user", content: text };
    setMessages((prev) => [...prev, userMsg]);

    const assistantId = `a-${Date.now()}`;
    setMessages((prev) => [...prev, { id: assistantId, role: "assistant", content: "", products: [] }]);

    try {
      const res = await fetch(`${API_BASE}/chat/sessions/${sessionId}/messages/stream`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "text/event-stream",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ content: text }),
      });

      if (!res.ok) {
        const j = await res.json().catch(() => ({}));
        throw new Error(j?.error?.message || `HTTP ${res.status}`);
      }

      const reader = res.body?.getReader();
      if (!reader) throw new Error("No response body");

      const decoder = new TextDecoder();
      let buf = "";
      let products: ChatProductPreview[] = [];
      let accText = "";

      while (true) {
        const { done, value } = await reader.read();
        buf += decoder.decode(value || new Uint8Array(), { stream: !done });
        const { events, rest } = parseSseBlocks(buf);
        buf = rest;

        for (const { event, data } of events) {
          if (event === "products") {
            try {
              const parsed = JSON.parse(data) as ChatProductPreview[];
              if (Array.isArray(parsed)) products = parsed;
            } catch {
              /* ignore */
            }
          } else if (event === "token") {
            accText += decodeSseData(data);
            setMessages((prev) =>
              prev.map((m) => (m.id === assistantId ? { ...m, content: accText, products } : m))
            );
          } else if (event === "error") {
            throw new Error(decodeSseData(data));
          }
        }
        if (done) break;
      }

      setMessages((prev) =>
        prev.map((m) => (m.id === assistantId ? { ...m, content: accText, products } : m))
      );
    } catch (e) {
      setError(e instanceof Error ? e.message : "Stream error");
      setMessages((prev) => prev.filter((m) => m.id !== assistantId));
    } finally {
      setStreaming(false);
    }
  };

  if (!sessionId) {
    return (
      <div className="max-w-lg mx-auto p-6 mt-12">
        <h1 className="text-2xl font-bold text-[var(--foreground)] mb-1">{t("chat.title")}</h1>
        <p className="text-[var(--muted)] text-sm mb-8">{t("chat.subtitle")}</p>
        <p className="text-[var(--foreground)] font-medium mb-4">{t("chat.pick_direction")}</p>
        <div className="space-y-3">
          <button
            type="button"
            onClick={() => setMode("BUYER")}
            className={`w-full text-left p-4 rounded-xl border transition ${
              mode === "BUYER"
                ? "border-[var(--accent)] bg-[var(--muted-bg)]"
                : "border-[var(--card-border)] hover:bg-[var(--muted-bg)]"
            }`}
          >
            <div className="font-semibold text-[var(--foreground)]">{t("chat.mode_buyer")}</div>
            <div className="text-sm text-[var(--muted)]">{t("chat.mode_buyer_hint")}</div>
          </button>
          <button
            type="button"
            onClick={() => setMode("SELLER")}
            className={`w-full text-left p-4 rounded-xl border transition ${
              mode === "SELLER"
                ? "border-[var(--accent)] bg-[var(--muted-bg)]"
                : "border-[var(--card-border)] hover:bg-[var(--muted-bg)]"
            }`}
          >
            <div className="font-semibold text-[var(--foreground)]">{t("chat.mode_seller")}</div>
            <div className="text-sm text-[var(--muted)]">{t("chat.mode_seller_hint")}</div>
          </button>
        </div>
        {error && <p className="text-red-500 text-sm mt-4">{error}</p>}
        <button
          type="button"
          disabled={!mode}
          onClick={startSession}
          className="mt-6 w-full py-3 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-40"
        >
          {t("chat.start")}
        </button>
        <Link href="/" className="block text-center text-sm text-[var(--muted)] mt-6 hover:text-[var(--foreground)]">
          ← {t("app.name")}
        </Link>
      </div>
    );
  }

  return (
    <div className="flex flex-col max-w-3xl mx-auto h-[min(100dvh,800px)] p-4">
      <div className="flex items-center justify-between mb-4">
        <div>
          <h1 className="text-lg font-bold text-[var(--foreground)]">{t("chat.title")}</h1>
          <p className="text-xs text-[var(--muted)]">
            {mode === "BUYER" ? t("chat.mode_buyer") : t("chat.mode_seller")}
          </p>
        </div>
        <button
          type="button"
          onClick={resetChat}
          className="text-sm px-3 py-1 border border-[var(--card-border)] rounded-lg text-[var(--foreground)] hover:bg-[var(--muted-bg)]"
        >
          {t("chat.new_chat")}
        </button>
      </div>

      <div className="flex-1 overflow-y-auto space-y-4 mb-4 border border-[var(--card-border)] rounded-xl p-4 bg-[var(--card-bg)]">
        {messages.map((m) => (
          <div key={m.id} className={m.role === "user" ? "text-right" : "text-left"}>
            <div className="text-xs text-[var(--muted)] mb-1">
              {m.role === "user" ? t("chat.you") : t("chat.assistant")}
            </div>
            <div
              className={`inline-block max-w-[90%] rounded-2xl px-4 py-2 text-left whitespace-pre-wrap ${
                m.role === "user"
                  ? "bg-[var(--accent)] text-[var(--accent-text)]"
                  : "bg-[var(--muted-bg)] text-[var(--foreground)] border border-[var(--card-border)]"
              }`}
            >
              {m.content || (streaming && m.role === "assistant" ? t("chat.thinking") : "")}
            </div>
            {m.role === "assistant" && m.products && m.products.length > 0 && (
              <div className="mt-3 space-y-2">
                <p className="text-xs font-medium text-[var(--muted)]">{t("chat.suggested")}</p>
                <div className="flex flex-wrap gap-2">
                  {m.products.map((p) => (
                    <Link
                      key={p.id}
                      href={`/products/${p.id}`}
                      className="flex w-40 flex-col rounded-lg border border-[var(--card-border)] overflow-hidden bg-[var(--background)] hover:border-[var(--accent)] transition"
                    >
                      <div className="aspect-square bg-[var(--muted-bg)] relative">
                        {p.imageUrl ? (
                          <img src={p.imageUrl} alt="" className="w-full h-full object-cover" />
                        ) : (
                          <span className="absolute inset-0 flex items-center justify-center text-2xl">📦</span>
                        )}
                      </div>
                      <div className="p-2">
                        <p className="text-xs font-medium text-[var(--foreground)] line-clamp-2">{p.title}</p>
                        <p className="text-xs text-[var(--muted)] mt-1">
                          {p.price} {p.currency}
                        </p>
                      </div>
                    </Link>
                  ))}
                </div>
              </div>
            )}
          </div>
        ))}
        <div ref={bottomRef} />
      </div>

      {error && <p className="text-red-500 text-sm mb-2">{error}</p>}

      <div className="flex gap-2">
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={(e) => e.key === "Enter" && !e.shiftKey && (e.preventDefault(), sendStream())}
          placeholder={t("chat.placeholder")}
          disabled={streaming}
          className="flex-1 border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2 outline-none focus:border-[var(--accent)]"
        />
        <button
          type="button"
          disabled={streaming || !input.trim()}
          onClick={sendStream}
          className="px-4 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] disabled:opacity-40"
        >
          {t("chat.send")}
        </button>
      </div>
    </div>
  );
}
