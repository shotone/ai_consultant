package ai.ipove.chat.service;

import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.dto.ProductSnippetDto;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class StubBuyerLlmClient implements BuyerLlmClient {

    private final ProductSearchTool productSearchTool;

    @Override
    public LlmReply completeBuyerTurn(ChatSession session, List<ChatMessage> historyIncludingLatestUser) {
        ChatMessage last =
                historyIncludingLatestUser.getLast();
        String userText = last.getContent();
        var products = productSearchTool.search(session.getTenantId(), userText, 8);
        if (products.isEmpty()) {
            return LlmReply.textOnly(
                    "სამწუხაროდ, პლატფორმაზე ამ მომენტში ვერ ვიპოვე შესაბამისი პროდუქტი შენს მოთხოვნაზე ("
                            + shorten(userText, 80)
                            + ").\n\n"
                            + "სცადე სხვა საკვანძო სიტყვები (მაგ. ბრენდი, მოდელი, ბიუჯეტი) ან მოგვიანებით ხელახლა — გამყიდველები ხშირად ათავსებენ ახალ პროდუქტებს.");
        }
        String lines = products.stream()
                .map(p -> "• " + p.title() + " — " + p.price() + " " + p.currency())
                .collect(Collectors.joining("\n"));
        String text =
                "აქ არის რამდენიმე ვარიანტი, რაც ყველაზე ახლოა შენს მოთხოვნასთან:\n\n"
                        + lines
                        + "\n\n"
                        + "დააჭირე ბარათს ქვემოთ დეტალების სანახავად, ან დამიწერე რა გინდა გავფილტრო (ფასი, მდგომარეობა, ბრენდი).";
        return LlmReply.withProducts(text, products);
    }

    private static String shorten(String s, int max) {
        if (s.length() <= max) {
            return s;
        }
        return s.substring(0, max) + "…";
    }
}
