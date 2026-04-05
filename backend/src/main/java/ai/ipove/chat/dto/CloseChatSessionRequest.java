package ai.ipove.chat.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.Data;

@Data
public class CloseChatSessionRequest {

    /** 1–5 ვარსკვლავი; null თუ მომხმარებელმა გამოტოვა. */
    @Min(1)
    @Max(5)
    private Integer rating;
}
