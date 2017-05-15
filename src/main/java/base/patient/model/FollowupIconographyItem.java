package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class FollowupIconographyItem extends BaseBean {
    private String item;
    private String position;
    private String count;
    private int followupId;
    private int index;

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public int getFollowupId() {
        return followupId;
    }

    public void setFollowupId(int followupId) {
        this.followupId = followupId;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }
}
