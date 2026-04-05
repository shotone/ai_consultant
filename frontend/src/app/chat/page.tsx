"use client";

import { ChatAssistantBody } from "@/components/ChatAssistantBody";
import { ProtectedRoute } from "@/components/ProtectedRoute";
import { useAuth } from "@/hooks/useAuth";
import { useLocale } from "@/hooks/useLocale";
import { apiClient } from "@/lib/api-client";
import { stripLlmMarkdown } from "@/lib/chat-text";
import { decodeSseData, parseSseBlocks } from "@/lib/sse";
import Link from "next/link";
import { useCallback, useEffect, useMemo, useRef, useState } from "react";

const API_BASE = process.env.NEXT_PUBLIC_API_URL || "http://localhost:8080/api";
const CHAT_STORAGE_KEY = "ipove.chat.session";
/** Max textarea height (px); inner scroll beyond this */
const CHAT_INPUT_MAX_HEIGHT_PX = 200;

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

interface ApiSession {
  id: string;
  mode: string;
  title: string | null;
  status: string;
  createdAt: string;
  updatedAt: string | null;
  closedAt: string | null;
  rating: number | null;
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
  const { t, locale } = useLocale();
  const [mode, setMode] = useState<"BUYER" | "SELLER" | null>(null);
  const [sessionId, setSessionId] = useState<string | null>(null);
  const [sessions, setSessions] = useState<ApiSession[]>([]);
  const [messages, setMessages] = useState<UiMessage[]>([]);
  const [input, setInput] = useState("");
  const [streaming, setStreaming] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [closeModalOpen, setCloseModalOpen] = useState(false);
  const [closeRating, setCloseRating] = useState<number | null>(null);
  const [closeError, setCloseError] = useState<string | null>(null);
  const bottomRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  const adjustTextareaHeight = useCallback(() => {
    const el = inputRef.current;
    if (!el) return;
    el.style.height = "0px";
    const next = Math.min(el.scrollHeight, CHAT_INPUT_MAX_HEIGHT_PX);
    el.style.height = `${next}px`;
    el.style.overflowY = el.scrollHeight > CHAT_INPUT_MAX_HEIGHT_PX ? "auto" : "hidden";
  }, []);

  useEffect(() => {
    adjustTextareaHeight();
  }, [input, adjustTextareaHeight]);

  const sessionClosed = useMemo(() => {
    if (!sessionId) return false;
    return sessions.find((s) => s.id === sessionId)?.status === "closed";
  }, [sessionId, sessions]);

  const loadSessions = useCallback(async () => {
    if (!token) return;
    try {
      const res = await apiClient<{ data: ApiSession[] }>("/chat/sessions", { token });
      setSessions(res.data);
    } catch {
      /* ignore sidebar errors */
    }
  }, [token]);

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

  useEffect(() => {
    if (token) loadSessions();
  }, [token, loadSessions]);

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
          const content = m.role === "assistant" ? stripLlmMarkdown(m.content) : m.content;
          return {
            id: m.id,
            role: m.role === "user" ? "user" : "assistant",
            content,
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

  const selectSession = (s: ApiSession) => {
    setSessionId(s.id);
    setMode(s.mode === "SELLER" ? "SELLER" : "BUYER");
    setError(null);
    sessionStorage.setItem(CHAT_STORAGE_KEY, JSON.stringify({ sessionId: s.id, mode: s.mode }));
  };

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
      await loadSessions();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Error");
    }
  };

  const goNewChat = () => {
    if (typeof window !== "undefined") sessionStorage.removeItem(CHAT_STORAGE_KEY);
    setSessionId(null);
    setMode(null);
    setMessages([]);
    setInput("");
    setError(null);
  };

  const submitClose = async () => {
    if (!token || !sessionId) return;
    if (closeRating === null) {
      setCloseError(t("chat.rate_required"));
      return;
    }
    setCloseError(null);
    try {
      await apiClient<{ data: ApiSession }>(`/chat/sessions/${sessionId}/close`, {
        method: "POST",
        token,
        body: JSON.stringify({ rating: closeRating }),
      });
      setCloseModalOpen(false);
      setCloseRating(null);
      await loadSessions();
    } catch (e) {
      setCloseError(e instanceof Error ? e.message : "Error");
    }
  };

  const sendStream = async () => {
    if (!token || !sessionId || !input.trim() || streaming || sessionClosed) return;
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
            accText = stripLlmMarkdown(accText + decodeSseData(data));
            setMessages((prev) =>
              prev.map((m) => (m.id === assistantId ? { ...m, content: accText, products } : m))
            );
          } else if (event === "error") {
            throw new Error(decodeSseData(data));
          }
        }
        if (done) break;
      }

      const finalText = stripLlmMarkdown(accText);
      setMessages((prev) =>
        prev.map((m) => (m.id === assistantId ? { ...m, content: finalText, products } : m))
      );
      await loadSessions();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Stream error");
      setMessages((prev) => prev.filter((m) => m.id !== assistantId));
    } finally {
      setStreaming(false);
    }
  };

  const sessionLabel = (s: ApiSession) => {
    const ts = s.updatedAt || s.createdAt;
    const loc = locale === "ka" ? "ka-GE" : locale === "ru" ? "ru-RU" : "en-US";
    const when = ts ? new Date(ts).toLocaleString(loc, { dateStyle: "short", timeStyle: "short" }) : "";
    const m = s.mode === "SELLER" ? t("chat.mode_seller") : t("chat.mode_buyer");
    return `${m} · ${when}`;
  };

  /** საერთო სიმაღლე: ჰედერის ქვემოთ დარჩენილი viewport, ზედა ზღვარი ~840px — შიდა სქროლი მესიჯებში/სიაში */
  const chatShellClass =
    "flex flex-col md:flex-row max-w-5xl mx-auto h-[min(calc(100dvh-5rem),840px)] min-h-[280px] overflow-hidden px-2 sm:px-4";

  const sidebar = (
    <aside className="w-full md:w-64 shrink-0 border-b md:border-b-0 md:border-r border-[var(--card-border)] p-3 flex flex-col max-h-[32vh] md:max-h-none md:h-full md:min-h-0 overflow-hidden">
      <p className="text-xs font-semibold text-[var(--muted)] uppercase tracking-wide mb-2">{t("chat.history")}</p>
      <button
        type="button"
        onClick={goNewChat}
        className="mb-3 text-sm py-2 px-3 rounded-lg bg-[var(--accent)] text-[var(--accent-text)] hover:bg-[var(--accent-hover)]"
      >
        {t("chat.new_chat")}
      </button>
      <div className="flex-1 min-h-0 overflow-y-auto space-y-1">
        {sessions.length === 0 && <p className="text-xs text-[var(--muted)]">{t("chat.no_chats")}</p>}
        {sessions.map((s) => (
          <button
            key={s.id}
            type="button"
            onClick={() => selectSession(s)}
            className={`w-full text-left text-sm p-2 rounded-lg border transition ${
              s.id === sessionId
                ? "border-[var(--accent)] bg-[var(--muted-bg)]"
                : "border-transparent hover:bg-[var(--muted-bg)]"
            }`}
          >
            <div className="text-[var(--foreground)] line-clamp-2">{sessionLabel(s)}</div>
            {s.status === "closed" && (
              <span className="text-[10px] text-[var(--muted)]">{t("chat.closed_badge")}</span>
            )}
          </button>
        ))}
      </div>
    </aside>
  );

  if (!sessionId) {
    return (
      <div className={chatShellClass}>
        {sidebar}
        <div className="flex-1 min-h-0 min-w-0 overflow-y-auto p-6 pt-8">
          <h1 className="text-2xl font-bold text-[var(--foreground)] mb-1">{t("chat.title")}</h1>
          <p className="text-[var(--muted)] text-sm mb-6">{t("chat.pick_or_new")}</p>
          <p className="text-[var(--foreground)] font-medium mb-4">{t("chat.pick_direction")}</p>
          <div className="space-y-3 max-w-lg">
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
            className="mt-6 max-w-lg w-full py-3 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] transition disabled:opacity-40"
          >
            {t("chat.start")}
          </button>
          <Link href="/" className="block text-center text-sm text-[var(--muted)] mt-6 hover:text-[var(--foreground)]">
            ← {t("app.name")}
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className={chatShellClass}>
      {sidebar}

      <div className="flex flex-col flex-1 min-w-0 min-h-0 h-full overflow-hidden p-3 sm:p-4">
        <div className="shrink-0 flex items-center justify-between mb-3 gap-2 flex-wrap">
          <div>
            <h1 className="text-lg font-bold text-[var(--foreground)]">{t("chat.title")}</h1>
            <p className="text-xs text-[var(--muted)]">
              {mode === "BUYER" ? t("chat.mode_buyer") : t("chat.mode_seller")}
              {sessionClosed ? ` · ${t("chat.readonly")}` : ""}
            </p>
          </div>
          <div className="flex gap-2">
            {!sessionClosed && (
              <button
                type="button"
                onClick={() => {
                  setCloseModalOpen(true);
                  setCloseRating(null);
                  setCloseError(null);
                }}
                className="text-sm px-3 py-1 border border-[var(--card-border)] rounded-lg text-[var(--foreground)] hover:bg-[var(--muted-bg)]"
              >
                {t("chat.close")}
              </button>
            )}
            <button
              type="button"
              onClick={goNewChat}
              className="text-sm px-3 py-1 border border-[var(--card-border)] rounded-lg text-[var(--foreground)] hover:bg-[var(--muted-bg)]"
            >
              {t("chat.new_chat")}
            </button>
          </div>
        </div>

        {sessionClosed && (
          <div className="shrink-0 mb-3 text-sm px-3 py-2 rounded-lg bg-[var(--muted-bg)] border border-[var(--card-border)] text-[var(--foreground)]">
            {t("chat.closed_banner")}
          </div>
        )}

        {closeModalOpen && (
          <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4">
            <div className="bg-[var(--card-bg)] border border-[var(--card-border)] rounded-xl p-6 max-w-md w-full shadow-lg">
              <h2 className="text-lg font-semibold text-[var(--foreground)] mb-2">{t("chat.close_modal_title")}</h2>
              <p className="text-sm text-[var(--muted)] mb-4">{t("chat.rate_experience")}</p>
              <div className="flex gap-2 justify-center mb-4">
                {[1, 2, 3, 4, 5].map((n) => (
                  <button
                    key={n}
                    type="button"
                    aria-label={`${n}`}
                    onClick={() => setCloseRating(n)}
                    className={`text-2xl leading-none ${closeRating !== null && n <= closeRating ? "opacity-100" : "opacity-30"}`}
                  >
                    ★
                  </button>
                ))}
              </div>
              {closeError && <p className="text-red-500 text-sm mb-2">{closeError}</p>}
              <div className="flex gap-2 justify-end">
                <button
                  type="button"
                  onClick={() => {
                    setCloseModalOpen(false);
                    setCloseError(null);
                  }}
                  className="px-3 py-1.5 text-sm border border-[var(--card-border)] rounded-lg"
                >
                  {t("profile.cancel")}
                </button>
                <button
                  type="button"
                  onClick={submitClose}
                  className="px-3 py-1.5 text-sm bg-[var(--accent)] text-[var(--accent-text)] rounded-lg"
                >
                  {t("chat.confirm_close")}
                </button>
              </div>
            </div>
          </div>
        )}

        <div className="flex-1 min-h-0 overflow-y-auto overscroll-contain space-y-4 mb-3 border border-[var(--card-border)] rounded-xl p-4 bg-[var(--card-bg)]">
          {messages.map((m) => (
            <div key={m.id} className={m.role === "user" ? "text-right" : "text-left"}>
              <div className="text-xs text-[var(--muted)] mb-1">
                {m.role === "user" ? t("chat.you") : t("chat.assistant")}
              </div>
              <div
                className={`inline-block max-w-[90%] rounded-2xl px-4 py-2 text-left ${
                  m.role === "user" ? "whitespace-pre-wrap" : ""
                } ${
                  m.role === "user"
                    ? "bg-[var(--accent)] text-[var(--accent-text)]"
                    : "bg-[var(--muted-bg)] text-[var(--foreground)] border border-[var(--card-border)]"
                }`}
              >
                {m.role === "assistant" ? (
                  m.content ? (
                    <ChatAssistantBody text={m.content} />
                  ) : streaming ? (
                    t("chat.thinking")
                  ) : null
                ) : (
                  m.content
                )}
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

        {error && <p className="shrink-0 text-red-500 text-sm mb-2">{error}</p>}

        <div className="shrink-0 flex gap-2 items-end">
          <textarea
            ref={inputRef}
            value={input}
            rows={1}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === "Enter" && !e.shiftKey) {
                e.preventDefault();
                void sendStream();
              }
            }}
            placeholder={sessionClosed ? t("chat.readonly") : t("chat.placeholder")}
            disabled={streaming || sessionClosed}
            aria-label={t("chat.placeholder")}
            className="flex-1 min-h-[2.75rem] max-h-[200px] resize-none border border-[var(--input-border)] bg-[var(--input-bg)] text-[var(--foreground)] rounded-lg px-3 py-2.5 outline-none focus:border-[var(--accent)] disabled:opacity-50 leading-snug"
          />
          <button
            type="button"
            disabled={streaming || !input.trim() || sessionClosed}
            onClick={() => void sendStream()}
            className="shrink-0 px-4 py-2 bg-[var(--accent)] text-[var(--accent-text)] rounded-lg hover:bg-[var(--accent-hover)] disabled:opacity-40"
          >
            {t("chat.send")}
          </button>
        </div>
      </div>
    </div>
  );
}
