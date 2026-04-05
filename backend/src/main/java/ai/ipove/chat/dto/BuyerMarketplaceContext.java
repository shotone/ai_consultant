package ai.ipove.chat.dto;

import java.util.List;

/**
 * Gemini buyer ტური: საუბარი თუ ბაზიდან/ძებნილი მონაცემები.
 *
 * @param conversationalOnly თუ true — ბაზა არ გამოვიკითხეთ; მოდელმა პირდაპირ უპასუხოს.
 * @param products ბარათებისთვის (ცარიელი საუბრის რეჟიმში).
 * @param dataJson რიგების JSON ფინალური პასუხისთვის.
 */
public record BuyerMarketplaceContext(
        boolean conversationalOnly, List<ProductSnippetDto> products, String dataJson) {}
