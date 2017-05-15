package base.web.json;

import java.util.List;

public class JqGridObject<T> {
    private List<T> rows;
    private int total;
    private int maxResults;
    private int currentPage;
    private int records;

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getMaxResults() {
        return maxResults;
    }

    public void setMaxResults(int maxResults) {
        this.maxResults = maxResults;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getRecords() {
        return records;
    }

    public void setRecords(int records) {
        this.records = records;
    }
}
