/**
 * Helpers for parsing Spring MVC SseEmitter streams (event:/data: lines).
 * String payloads are often JSON-encoded (quoted), so decodeSseData unwraps them.
 */
export function decodeSseData(raw: string): string {
  try {
    const v = JSON.parse(raw);
    return typeof v === "string" ? v : raw;
  } catch {
    return raw;
  }
}

export function parseSseBlocks(buffer: string): {
  events: { event: string; data: string }[];
  rest: string;
} {
  const parts = buffer.split("\n\n");
  const rest = parts.pop() ?? "";
  const events: { event: string; data: string }[] = [];
  for (const block of parts) {
    let ev = "message";
    let data = "";
    for (const line of block.split("\n")) {
      if (line.startsWith("event:")) ev = line.slice(6).trim();
      else if (line.startsWith("data:")) data += line.slice(5).trim();
    }
    if (data.length) events.push({ event: ev, data });
  }
  return { events, rest };
}
