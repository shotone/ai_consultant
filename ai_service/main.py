"""Minimal AI service placeholder — Sprint 3 uses Spring → Anthropic directly; expand here for LangChain/LangGraph later."""

from fastapi import FastAPI

app = FastAPI(title="ipove.ai AI service", version="0.1.0")


@app.get("/health")
def health():
    return {"status": "UP", "service": "ipove-ai-service"}
