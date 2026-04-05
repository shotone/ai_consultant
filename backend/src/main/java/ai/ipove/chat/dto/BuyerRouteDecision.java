package ai.ipove.chat.dto;

/**
 * NL რაუტერი: საჭიროა თუ არა კატალოგის მოძიება და ოფციონალური SELECT.
 */
public record BuyerRouteDecision(boolean queryMarketplace, String sql) {}
