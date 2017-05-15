package base.patient.model;

/**
 * Created by zyn on 2/8/17.
 */
public class FollowupCostOtherItem extends BaseBean {
    private String name;
    private String value;
    private String rate;
    private int index;
    private int followupid;

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

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getFollowupid() {
        return followupid;
    }

    public void setFollowupid(int followupid) {
        this.followupid = followupid;
    }
}
