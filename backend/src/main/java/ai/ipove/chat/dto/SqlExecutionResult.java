package ai.ipove.chat.dto;

import java.util.List;
import java.util.Map;

public record SqlExecutionResult(String sanitizedSql, List<Map<String, Object>> rows) {}
