package base.web.json;

public class JqGridQueryParameter {
    private boolean _search;
    private long nd;
    private String sidx;
    private String sord;
    private int page;
    private int rows;

    private String searchField;
    private String searchOper;
    private String searchString;
    private String filters;
    private JqGridFilters filtersObj;


    public String getFilters() {
        return filters;
    }

    public void setFilters(String filters) {
        this.filters = filters;
    }

    public JqGridFilters getFiltersObj() {
        return filtersObj;
    }

    public void setFiltersObj(JqGridFilters filtersObj) {
        this.filtersObj = filtersObj;
    }

    public String getSearchField() {
        return searchField;
    }

    public void setSearchField(String searchField) {
        this.searchField = searchField;
    }

    public String getSearchOper() {
        return searchOper;
    }

    public void setSearchOper(String searchOper) {
        this.searchOper = searchOper;
    }

    public String getSearchString() {
        return searchString;
    }

    public void setSearchString(String searchString) {
        this.searchString = searchString;
    }

    public String getSord() {
        return sord;
    }

    public void setSord(String sord) {
        this.sord = sord;
    }

    public boolean is_search() {
        return _search;
    }

    public void set_search(boolean _search) {
        this._search = _search;
    }

    public long getNd() {
        return nd;
    }

    public void setNd(long nd) {
        this.nd = nd;
    }

    public String getSidx() {
        return sidx;
    }

    public void setSidx(String sidx) {
        this.sidx = sidx;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
}
