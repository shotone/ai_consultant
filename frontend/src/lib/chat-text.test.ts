import { describe, expect, it } from "vitest";
import { parseAssistantBlocks, stripLlmMarkdown } from "./chat-text";

describe("stripLlmMarkdown", () => {
  it("removes double asterisks and underscores", () => {
    expect(stripLlmMarkdown("**a** __b__")).toBe("a b");
  });
});

describe("parseAssistantBlocks", () => {
  it("splits paragraphs on blank lines", () => {
    expect(parseAssistantBlocks("ა\n\nბ")).toEqual([
      { type: "p", text: "ა" },
      { type: "p", text: "ბ" },
    ]);
  });

  it("detects numbered lists", () => {
    expect(parseAssistantBlocks("შესავალი\n\n1. ერთი\n2. ორი")).toEqual([
      { type: "p", text: "შესავალი" },
      { type: "ol", items: ["ერთი", "ორი"] },
    ]);
  });

  it("detects bullet lists with • or -", () => {
    expect(parseAssistantBlocks("• a\n• b")).toEqual([{ type: "ul", items: ["a", "b"] }]);
    expect(parseAssistantBlocks("- x\n- y")).toEqual([{ type: "ul", items: ["x", "y"] }]);
  });
});
