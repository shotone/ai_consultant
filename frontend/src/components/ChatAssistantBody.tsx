"use client";

import { parseAssistantBlocks, type AssistantBlock } from "@/lib/chat-text";

function Block({ block }: { block: AssistantBlock }) {
  if (block.type === "p") {
    return <p className="m-0 whitespace-pre-line">{block.text}</p>;
  }
  if (block.type === "ol") {
    return (
      <ol className="m-0 list-decimal space-y-1 pl-5 [list-style-position:outside]">
        {block.items.map((item, j) => (
          <li key={j} className="whitespace-pre-line pl-1">
            {item}
          </li>
        ))}
      </ol>
    );
  }
  return (
    <ul className="m-0 list-disc space-y-1 pl-5 [list-style-position:outside]">
      {block.items.map((item, j) => (
        <li key={j} className="whitespace-pre-line pl-1">
          {item}
        </li>
      ))}
    </ul>
  );
}

export function ChatAssistantBody({ text }: { text: string }) {
  const blocks = parseAssistantBlocks(text);
  if (blocks.length === 0) return null;
  return (
    <div className="space-y-3">
      {blocks.map((b, i) => (
        <Block key={i} block={b} />
      ))}
    </div>
  );
}
