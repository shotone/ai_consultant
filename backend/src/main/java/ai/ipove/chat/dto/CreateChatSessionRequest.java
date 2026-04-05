package ai.ipove.chat.dto;

import ai.ipove.chat.entity.ChatSessionMode;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class CreateChatSessionRequest {

    @NotNull
    private ChatSessionMode mode;
}
