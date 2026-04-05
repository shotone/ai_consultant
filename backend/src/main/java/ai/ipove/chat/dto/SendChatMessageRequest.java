package ai.ipove.chat.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class SendChatMessageRequest {

    @NotBlank
    @Size(max = 8000)
    private String content;
}
