package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class FollowupComplicationStatus extends BaseBean {
    private int index;
    private String item;
    private String result;
    private int followupId;

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public int getFollowupId() {
        return followupId;
    }

    public void setFollowupId(int followupId) {
        this.followupId = followupId;
    }
}
