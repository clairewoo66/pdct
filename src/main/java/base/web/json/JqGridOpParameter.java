package base.web.json;

public class JqGridOpParameter<T> extends RequestData {
    private T entry;

    public T getEntry() {
        return entry;
    }

    public void setEntry(T entry) {
        this.entry = entry;
    }
}
