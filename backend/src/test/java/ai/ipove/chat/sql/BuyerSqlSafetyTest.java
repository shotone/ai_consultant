package ai.ipove.chat.sql;

import net.sf.jsqlparser.JSQLParserException;
import org.junit.jupiter.api.Test;

import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

class BuyerSqlSafetyTest {

    private static final UUID TENANT = UUID.fromString("00000000-0000-0000-0000-000000000001");

    @Test
    void injectsTenantAndActiveFilter() throws Exception {
        String in = "SELECT p.id, p.title FROM products p WHERE p.price < 100 LIMIT 5";
        String out = BuyerSqlSafety.buildExecutableSelect(TENANT, in, 30);
        assertThat(out.toLowerCase()).contains("tenant_id");
        assertThat(out.toLowerCase()).contains("deleted_at");
        assertThat(out.toLowerCase()).contains("active");
    }

    @Test
    void rejectsNonSelect() {
        assertThatThrownBy(() -> BuyerSqlSafety.buildExecutableSelect(TENANT, "DELETE FROM products p", 30))
                .isInstanceOf(BuyerSqlSafetyException.class);
    }

    @Test
    void rejectsSelectStar() {
        assertThatThrownBy(() -> BuyerSqlSafety.buildExecutableSelect(TENANT, "SELECT * FROM products p LIMIT 1", 30))
                .isInstanceOf(BuyerSqlSafetyException.class);
    }

    @Test
    void rejectsSubqueryInWhere() {
        String sql =
                "SELECT p.id FROM products p WHERE p.category_id IN (SELECT id FROM categories c WHERE c.slug = 'x') LIMIT 1";
        assertThatThrownBy(() -> BuyerSqlSafety.buildExecutableSelect(TENANT, sql, 30))
                .isInstanceOf(BuyerSqlSafetyException.class);
    }

    @Test
    void rejectsWrongFromAlias() {
        assertThatThrownBy(() -> BuyerSqlSafety.buildExecutableSelect(
                        TENANT, "SELECT pr.id FROM products pr WHERE pr.price > 1 LIMIT 1", 30))
                .isInstanceOf(BuyerSqlSafetyException.class);
    }

    @Test
    void capsHighLimit() throws JSQLParserException, BuyerSqlSafetyException {
        String in = "SELECT p.id FROM products p LIMIT 999";
        String out = BuyerSqlSafety.buildExecutableSelect(TENANT, in, 10);
        assertThat(out).containsIgnoringCase("LIMIT 10");
    }
}
