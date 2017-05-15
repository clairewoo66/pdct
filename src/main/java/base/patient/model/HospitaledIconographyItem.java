package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class HospitaledIconographyItem extends BaseBean {
    private String item;
    private String position;
    private String count;
    private int hospitaledId;
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

    public int getHospitaledId() {
        return hospitaledId;
    }

    public void setHospitaledId(int hospitaledId) {
        this.hospitaledId = hospitaledId;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }
}
