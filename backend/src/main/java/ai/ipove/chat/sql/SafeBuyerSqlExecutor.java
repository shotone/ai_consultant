package ai.ipove.chat.sql;

import ai.ipove.config.AiProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.sf.jsqlparser.JSQLParserException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import ai.ipove.chat.dto.SqlExecutionResult;

import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Component
@RequiredArgsConstructor
public class SafeBuyerSqlExecutor {

    private final JdbcTemplate jdbcTemplate;
    private final AiProperties aiProperties;

    @Transactional(readOnly = true)
    public SqlExecutionResult execute(UUID tenantId, String rawSqlFromLlm) {
        int max = aiProperties.getBuyerNlSqlMaxRows();
        String safe;
        try {
            safe = BuyerSqlSafety.buildExecutableSelect(tenantId, rawSqlFromLlm, max);
        } catch (BuyerSqlSafetyException e) {
            log.debug("NL SQL rejected by safety rules: {}", e.getMessage());
            throw new IllegalArgumentException(e.getMessage(), e);
        } catch (JSQLParserException e) {
            log.debug("NL SQL parse failed: {}", e.getMessage());
            throw new IllegalArgumentException("Invalid SQL", e);
        }
        try {
            List<Map<String, Object>> rows = jdbcTemplate.query(safe, (rs, rowNum) -> {
                LinkedHashMap<String, Object> map = new LinkedHashMap<>();
                var md = rs.getMetaData();
                int cols = md.getColumnCount();
                for (int i = 1; i <= cols; i++) {
                    String label = md.getColumnLabel(i);
                    Object val = rs.getObject(i);
                    if (val instanceof java.sql.Array sqlArray) {
                        try {
                            Object arr = sqlArray.getArray();
                            if (arr instanceof Object[] oa) {
                                map.put(label, List.of(oa));
                            } else if (arr instanceof String[] sa) {
                                map.put(label, List.of(sa));
                            } else {
                                map.put(label, arr);
                            }
                        } catch (SQLException ex) {
                            map.put(label, null);
                        }
                    } else {
                        map.put(label, val);
                    }
                }
                return map;
            });
            return new SqlExecutionResult(safe, rows);
        } catch (Exception e) {
            log.warn("NL SQL execution failed: {}", e.getMessage());
            throw new IllegalStateException("SQL execution failed", e);
        }
    }
}
