package ai.ipove.chat.sql;

/**
 * PostgreSQL სქემის აღწერა NL→SQL პრომპტისთვის (buyer ჩათი).
 */
public final class BuyerMarketplaceSqlSchema {

    public static final String LLM_INSTRUCTIONS =
            """
            You output ONLY one JSON object, no markdown: {"sql":"..."}.
            The value must be a single PostgreSQL SELECT that answers the user's shopping question.

            Rules:
            - Tables allowed: products (required, alias MUST be p), categories (optional, alias c).
            - FROM products p. If category name/slug matters: LEFT JOIN categories c ON p.category_id = c.id AND c.deleted_at IS NULL.
            - Do NOT filter by tenant_id, deleted_at, or listing status — the server injects those for products (and categories when joined).
            - Do NOT use SELECT * — list only columns needed (e.g. p.id, p.title, p.price, p.currency, p.condition, p.location, c.name AS category_name).
            - Avoid p.metadata unless the user explicitly needs custom JSON fields.
            - Use ILIKE with % for flexible text search when appropriate.
            - Add LIMIT (integer) yourself; keep it modest (e.g. 10–25).
            - No semicolons, no multiple statements, no WITH/CTE, no UNION, no subqueries in FROM, no functions that access other tables.
            """;

    public static final String TABLES_REFERENCE =
            """
            Table products (alias p):
              id uuid, tenant_id uuid, seller_id uuid, category_id uuid,
              title varchar(500), description text, price decimal(12,2), currency varchar(3),
              condition varchar — one of: new, like_new, good, fair
              status varchar — one of: active, sold, reserved, inactive
              location varchar(255), images text[], view_count int, created_at timestamptz,
              updated_at timestamptz, deleted_at timestamptz, metadata jsonb

            Table categories (alias c):
              id uuid, tenant_id uuid, name varchar(255), slug varchar(255), parent_id uuid,
              icon varchar(50), sort_order int, created_at, updated_at, deleted_at
            """;

    /**
     * ერთი პასუხი: საჭიროა თუ არა კატალოგი + ოფციონალური SELECT.
     */
    public static final String ROUTING_AND_SQL_JSON =
            """
            Output ONLY one JSON object, no markdown:
            {"query_marketplace": true|false, "sql": null|string}

            query_marketplace = true ONLY if the user needs live marketplace data: find/list/filter/compare products, prices, availability, categories, or similar catalog lookup.
            query_marketplace = false for greetings, thanks, small talk, meta questions about you, generic shopping advice without needing current listings, or when no DB lookup is needed.

            If query_marketplace is false, "sql" MUST be null.
            If query_marketplace is true, "sql" MUST be one PostgreSQL SELECT (or null if unsure — server may fall back to keyword search).

            When "sql" is a string, follow these SELECT rules:
            """
                    + LLM_INSTRUCTIONS.replace(
                            "You output ONLY one JSON object, no markdown: {\"sql\":\"...\"}.",
                            "The sql string must be a single SELECT.")
                    + "\nSchema:\n"
                    + TABLES_REFERENCE;

    private BuyerMarketplaceSqlSchema() {}
}
