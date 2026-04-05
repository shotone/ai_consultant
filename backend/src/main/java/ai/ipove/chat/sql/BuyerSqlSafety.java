package ai.ipove.chat.sql;

import net.sf.jsqlparser.JSQLParserException;
import net.sf.jsqlparser.expression.Expression;
import net.sf.jsqlparser.expression.ExpressionVisitorAdapter;
import net.sf.jsqlparser.expression.LongValue;
import net.sf.jsqlparser.expression.operators.relational.ExpressionList;
import net.sf.jsqlparser.expression.operators.conditional.AndExpression;
import net.sf.jsqlparser.parser.CCJSqlParserUtil;
import net.sf.jsqlparser.schema.Table;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.select.Select;
import net.sf.jsqlparser.statement.select.FromItem;
import net.sf.jsqlparser.statement.select.Join;
import net.sf.jsqlparser.statement.select.Limit;
import net.sf.jsqlparser.statement.select.PlainSelect;
import net.sf.jsqlparser.statement.select.Select;
import net.sf.jsqlparser.statement.select.GroupByElement;
import net.sf.jsqlparser.statement.select.OrderByElement;
import net.sf.jsqlparser.statement.select.ParenthesedSelect;
import net.sf.jsqlparser.statement.select.SelectItem;
import net.sf.jsqlparser.statement.select.AllColumns;
import net.sf.jsqlparser.statement.select.AllTableColumns;
import net.sf.jsqlparser.util.TablesNamesFinder;

import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * Buyer-ჩათის NL→SQL: მხოლოდ SELECT, დაშვებული ცხრილები, სერვერის tenant/status/deleted ფილტრები.
 */
public final class BuyerSqlSafety {

    private static final Set<String> ALLOWED = Set.of("products", "categories");

    private BuyerSqlSafety() {}

    public static String buildExecutableSelect(UUID tenantId, String rawSql, int maxRows)
            throws BuyerSqlSafetyException, JSQLParserException {
        if (tenantId == null) {
            throw new BuyerSqlSafetyException("tenantId is required");
        }
        String tid = tenantId.toString();
        if (!tid.matches(
                "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}")) {
            throw new BuyerSqlSafetyException("Invalid tenant id");
        }
        if (rawSql == null || rawSql.isBlank()) {
            throw new BuyerSqlSafetyException("Empty SQL");
        }
        String sql = rawSql.trim();
        if (sql.contains(";")) {
            throw new BuyerSqlSafetyException("Semicolons / multiple statements are not allowed");
        }

        Statement stmt = CCJSqlParserUtil.parse(sql);
        if (!(stmt instanceof Select select)) {
            throw new BuyerSqlSafetyException("Only SELECT is allowed");
        }
        if (!(select.getSelectBody() instanceof PlainSelect plainSelect)) {
            throw new BuyerSqlSafetyException("Only a simple SELECT is allowed (no UNION / WITH)");
        }

        forbidSubqueries(plainSelect);

        FromItem from = plainSelect.getFromItem();
        if (from instanceof ParenthesedSelect) {
            throw new BuyerSqlSafetyException("Subqueries in FROM are not allowed");
        }
        if (!(from instanceof Table fromTable)) {
            throw new BuyerSqlSafetyException("FROM must start from table products");
        }
        if (!"products".equalsIgnoreCase(fromTable.getName())) {
            throw new BuyerSqlSafetyException("FROM must be products (alias p)");
        }
        if (fromTable.getAlias() == null || !"p".equalsIgnoreCase(fromTable.getAlias().getName())) {
            throw new BuyerSqlSafetyException("products must use alias p");
        }

        List<Join> joins = plainSelect.getJoins();
        if (joins != null) {
            for (Join j : joins) {
                FromItem right = j.getRightItem();
                if (right instanceof ParenthesedSelect) {
                    throw new BuyerSqlSafetyException("Subqueries in JOIN are not allowed");
                }
            }
        }

        TablesNamesFinder finder = new TablesNamesFinder();
        List<String> tables = finder.getTableList((Statement) select).stream()
                .map(t -> {
                    String x = t.toLowerCase(Locale.ROOT);
                    int dot = x.lastIndexOf('.');
                    return dot >= 0 ? x.substring(dot + 1) : x;
                })
                .toList();
        for (String t : tables) {
            if (!ALLOWED.contains(t)) {
                throw new BuyerSqlSafetyException("Table not allowed: " + t);
            }
        }

        for (SelectItem<?> item : plainSelect.getSelectItems()) {
            Expression ex = item.getExpression();
            if (ex instanceof AllColumns || ex instanceof AllTableColumns) {
                throw new BuyerSqlSafetyException("SELECT * is not allowed");
            }
        }

        Expression enforced = CCJSqlParserUtil.parseCondExpression(
                "p.tenant_id = CAST('" + tid + "' AS uuid) AND p.deleted_at IS NULL AND p.status = 'active'");
        Expression where = plainSelect.getWhere();
        plainSelect.setWhere(where == null ? enforced : new AndExpression(where, enforced));

        if (tables.contains("categories")) {
            String catAlias = resolveCategoriesAlias(plainSelect);
            Expression catTenant = CCJSqlParserUtil.parseCondExpression(
                    catAlias + ".tenant_id = CAST('" + tid + "' AS uuid) AND " + catAlias + ".deleted_at IS NULL");
            plainSelect.setWhere(new AndExpression(plainSelect.getWhere(), catTenant));
        }

        capLimit(plainSelect, maxRows);

        return select.toString();
    }

    private static String resolveCategoriesAlias(PlainSelect plainSelect) throws BuyerSqlSafetyException {
        List<Join> joins = plainSelect.getJoins();
        if (joins == null) {
            throw new BuyerSqlSafetyException("categories appears in query but JOIN is missing");
        }
        for (Join j : joins) {
            if (j.getRightItem() instanceof Table t && "categories".equalsIgnoreCase(t.getName())) {
                if (t.getAlias() != null) {
                    return t.getAlias().getName();
                }
                return "categories";
            }
        }
        throw new BuyerSqlSafetyException("categories table must be joined with an explicit alias c recommended");
    }

    private static void forbidSubqueries(PlainSelect plainSelect) throws BuyerSqlSafetyException {
        boolean[] found = {false};
        ExpressionVisitorAdapter visitor = new ExpressionVisitorAdapter() {
            @Override
            public void visit(ParenthesedSelect subSelect) {
                found[0] = true;
            }
        };
        if (plainSelect.getWhere() != null) {
            plainSelect.getWhere().accept(visitor);
        }
        if (plainSelect.getHaving() != null) {
            plainSelect.getHaving().accept(visitor);
        }
        GroupByElement groupBy = plainSelect.getGroupBy();
        if (groupBy != null) {
            ExpressionList<?> groupExprs = groupBy.getGroupByExpressions();
            if (groupExprs != null) {
                for (Expression e : groupExprs) {
                    if (e != null) {
                        e.accept(visitor);
                    }
                }
            }
        }
        List<OrderByElement> orderBy = plainSelect.getOrderByElements();
        if (orderBy != null) {
            for (OrderByElement ob : orderBy) {
                if (ob.getExpression() != null) {
                    ob.getExpression().accept(visitor);
                }
            }
        }
        for (SelectItem<?> item : plainSelect.getSelectItems()) {
            if (item.getExpression() != null) {
                item.getExpression().accept(visitor);
            }
        }
        List<Join> joins = plainSelect.getJoins();
        if (joins != null) {
            for (Join j : joins) {
                if (j.getOnExpression() != null) {
                    j.getOnExpression().accept(visitor);
                }
            }
        }
        if (found[0]) {
            throw new BuyerSqlSafetyException("Subqueries are not allowed");
        }
    }

    private static void capLimit(PlainSelect plainSelect, int maxRows) {
        Limit limit = plainSelect.getLimit();
        long cap = Math.max(1, Math.min(maxRows, 50));
        if (limit == null || limit.getRowCount() == null) {
            Limit l = new Limit();
            l.setRowCount(new LongValue(cap));
            plainSelect.setLimit(l);
            return;
        }
        if (limit.getRowCount() instanceof LongValue lv) {
            long v = lv.getValue();
            if (v > cap) {
                limit.setRowCount(new LongValue(cap));
            }
        } else {
            limit.setRowCount(new LongValue(cap));
        }
    }
}
