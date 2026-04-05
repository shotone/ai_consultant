package ai.ipove.chat.service;

import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatSession;

import java.util.List;

public interface BuyerLlmClient {

    LlmReply completeBuyerTurn(ChatSession session, List<ChatMessage> historyIncludingLatestUser);
}
