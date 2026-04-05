import { describe, expect, it } from "vitest";
import { decodeSseData, parseSseBlocks } from "./sse";

describe("decodeSseData", () => {
  it("unwraps JSON string payload", () => {
    expect(decodeSseData('"გამარჯობა"')).toBe("გამარჯობა");
    expect(decodeSseData('"hello"')).toBe("hello");
  });

  it("returns raw when not a JSON string", () => {
    expect(decodeSseData("plain")).toBe("plain");
    expect(decodeSseData('{"a":1}')).toBe('{"a":1}');
  });
});

describe("parseSseBlocks", () => {
  it("parses single event with data", () => {
    const { events, rest } = parseSseBlocks("event:token\ndata:\"hi\"\n\n");
    expect(events).toEqual([{ event: "token", data: '"hi"' }]);
    expect(rest).toBe("");
  });

  it("keeps incomplete block in rest", () => {
    const { events, rest } = parseSseBlocks("event:token\ndata:\"x");
    expect(events).toEqual([]);
    expect(rest).toBe("event:token\ndata:\"x");
  });

  it("parses multiple blocks", () => {
    const chunk = "event:products\ndata:[]\n\nevent:done\ndata:{}\n\n";
    const { events } = parseSseBlocks(chunk);
    expect(events).toEqual([
      { event: "products", data: "[]" },
      { event: "done", data: "{}" },
    ]);
  });
});
