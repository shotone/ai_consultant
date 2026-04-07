package ai.ipove.chat.service;

import ai.ipove.category.service.CategoryService;
import ai.ipove.chat.dto.LlmReply;
import ai.ipove.chat.entity.ChatMessage;
import ai.ipove.chat.entity.ChatMessageRole;
import ai.ipove.chat.entity.ChatSession;
import ai.ipove.product.dto.CreateProductRequest;
import ai.ipove.product.service.ProductService;
import ai.ipove.user.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

/**
 * Stub seller client — used when no LLM API key is configured.
 * Simple state machine: greet → ask details → create draft listing.
 */
@Service
@RequiredArgsConstructor
public class StubSellerLlmClient implements SellerLlmClient {

    private final ProductService productService;
    private final CategoryService categoryService;

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public LlmReply completeSellerTurn(User seller, ChatSession session, List<ChatMessage> history) {
        long userMsgCount = history.stream()
                .filter(m -> m.getRole() == ChatMessageRole.USER)
                .count();

        if (userMsgCount == 1) {
            return LlmReply.textOnly(
                    "გამარჯობა! მე ვდამხმარებ შენი პროდუქტის განთავსებაში.\n\n" +
                    "გთხოვ, მომეცი ოდნავ მეტი ინფორმაცია:\n" +
                    "• რა ფასი გაქვს გამიზნული? (ლარში)\n" +
                    "• რა მდგომარეობაშია (ახალი / თითქმის ახალი / კარგი / დამაკმაყოფილებელი)?\n" +
                    "• სად ხარ მდებარე? (ქ. თბილისი, ბათუმი...)");
        }

        if (userMsgCount == 2) {
            return LlmReply.textOnly(
                    "შესანიშნავია! ახლა დავწერ პროდუქტის მოკლე აღწერას.\n\n" +
                    "კიდევ ერთი კითხვა: რა კატეგორიას მიეკუთვნება? " +
                    "(მაგ: ელექტრონიკა, ტანსაცმელი, სახლი და ბაღი, სპორტი, სხვა)");
        }

        if (userMsgCount >= 3) {
            // Create stub listing from conversation
            String firstUserMsg = history.stream()
                    .filter(m -> m.getRole() == ChatMessageRole.USER)
                    .findFirst()
                    .map(ChatMessage::getContent)
                    .orElse("პროდუქტი");

            String title = firstUserMsg.length() > 100 ? firstUserMsg.substring(0, 100) : firstUserMsg;

            CreateProductRequest req = new CreateProductRequest();
            req.setTitle(title);
            req.setDescription("პროდუქტის გასაყიდი განცხადება — AI-ს მიერ დამუშავებული. " + firstUserMsg);
            req.setPrice(BigDecimal.valueOf(100));
            req.setCurrency("GEL");
            req.setCondition("good");

            // Try to assign a default category if available
            try {
                var cats = categoryService.getCategoryTree();
                if (!cats.isEmpty()) {
                    req.setCategoryId(cats.get(0).getId());
                }
            } catch (Exception ignored) {
                // proceed without category
            }

            var product = productService.create(seller, req);
            return LlmReply.listingCreated(
                    "🎉 შენი განცხადება გამოქვეყნდა!\n\n" +
                    "**" + product.getTitle() + "**\n" +
                    "ფასი: " + product.getPrice() + " " + product.getCurrency() + "\n\n" +
                    "შეგიძლია ახლა ფოტოები დაამატო ქვემოთ, ან გადადი განცხადებაზე.",
                    product.getId());
        }

        return LlmReply.textOnly("გამარჯობა! გეხმარები განცხადების გამოქვეყნებაში. რა გაქვს გასაყიდი?");
    }
}
