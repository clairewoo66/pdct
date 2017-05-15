package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class HospitaledPlasmacyteItem extends BaseBean {
    private String type;
    private String rate;
    private int index;
    private int hospitaledId;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public int getHospitaledId() {
        return hospitaledId;
    }

    public void setHospitaledId(int hospitaledId) {
        this.hospitaledId = hospitaledId;
    }
}
