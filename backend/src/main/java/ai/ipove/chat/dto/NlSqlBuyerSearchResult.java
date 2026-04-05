package ai.ipove.chat.dto;

import java.util.List;
import java.util.Map;

public record NlSqlBuyerSearchResult(
        List<Map<String, Object>> rows, String sanitizedSql, List<ProductSnippetDto> productSnippets) {}
