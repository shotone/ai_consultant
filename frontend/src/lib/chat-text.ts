/** LLM ხშირად წერს **bold** Markdown-ს; UI plain ტექსტზე ორმაგი ვარსკვლავები ჩანს — ვაშორებთ. */
export function stripLlmMarkdown(text: string): string {
  return text.replace(/\*\*/g, "").replace(/__/g, "");
}

export type AssistantBlock =
  | { type: "p"; text: string }
  | { type: "ol"; items: string[] }
  | { type: "ul"; items: string[] };

/** ორმაგი ხაზისშუა ინტერვალით პარაგრაფებად; თითო ბლოკში თუ ყველა ხაზი 1. / • ფორმატია — სიად. */
export function parseAssistantBlocks(raw: string): AssistantBlock[] {
  const trimmed = raw.trim();
  if (!trimmed) return [];
  return raw
    .split(/\n\s*\n/)
    .map((c) => c.trim())
    .filter(Boolean)
    .map(classifyAssistantChunk);
}

function classifyAssistantChunk(chunk: string): AssistantBlock {
  const nonEmpty = chunk
    .split("\n")
    .map((l) => l.trimEnd())
    .map((l) => l.trim())
    .filter((l) => l.length > 0);
  if (nonEmpty.length >= 2) {
    const allOrdered = nonEmpty.every((l) => /^\d+\.\s/.test(l));
    if (allOrdered) {
      return { type: "ol", items: nonEmpty.map((l) => l.replace(/^\d+\.\s*/, "")) };
    }
    const allBullet = nonEmpty.every((l) => /^[•\-*]\s/.test(l));
    if (allBullet) {
      return { type: "ul", items: nonEmpty.map((l) => l.replace(/^[•\-*]\s+/, "")) };
    }
  }
  return { type: "p", text: chunk };
}
