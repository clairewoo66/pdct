package base.web.json;

import java.util.List;

/**
 * Class RequestData 基本的请求操作的json封装对象;
 * 使用: oper标识操作的字段
 * primaryKey:标识要操作的主键，
 * primaryKeys:标识要操作的主键(批量版本)
 * value:用于对主键对象赋值操作.
 * oldValue:用于更新
 * addValue和removeValue用于批量授权和解除授权
 */
public class RequestData {
    protected String oper;
    protected String value;
    protected String oldValue;
    protected String primaryKey;
    protected List<String> primaryKeys;

    public List<String> getAddValue() {
        return addValue;
    }

    public void setAddValue(List<String> addValue) {
        this.addValue = addValue;
    }

    public List<String> getRemoveValue() {
        return removeValue;
    }

    public void setRemoveValue(List<String> removeValue) {
        this.removeValue = removeValue;
    }

    protected  List<String> addValue;
    protected  List<String> removeValue;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getOldValue() {
        return oldValue;
    }

    public void setOldValue(String oldValue) {
        this.oldValue = oldValue;
    }

    public String getPrimaryKey() {
        return primaryKey;
    }

    public void setPrimaryKey(String primaryKey) {
        this.primaryKey = primaryKey;
    }

    public String getOper() {
        return oper;
    }

    public void setOper(String oper) {
        this.oper = oper;
    }

    public List<String> getPrimaryKeys() {
        return primaryKeys;
    }

    public void setPrimaryKeys(List<String> primaryKeys) {
        this.primaryKeys = primaryKeys;
    }
}
