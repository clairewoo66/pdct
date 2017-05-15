package base.patient.model;

/**
 * Created by zyn on 2/8/17.
 */
public class HospitaledCostOtherItem extends BaseBean {
    private String name;
    private String value;
    private String order;
    private int costId;

    public int getCostId() {
        return costId;
    }

    public void setCostId(int costId) {
        this.costId = costId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }
}
