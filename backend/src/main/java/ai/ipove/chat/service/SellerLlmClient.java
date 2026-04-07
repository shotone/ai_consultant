package ai.ipove.chat.service;

import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatSession;
import ai.ipove.user.entity.User;

import java.util.List;

public interface SellerLlmClient {
    LlmReply completeSellerTurn(User seller, ChatSession session, List<ChatMessage> history);
    boolean isEnabled();
}
