package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class HospitaledSupportItem extends BaseBean{
    private String name;
    private String consumption;
    private String frequency;
    private String fitDrugs;
    private int buyOuter;
    private int hospitaledId;
    private int index;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getConsumption() {
        return consumption;
    }

    public void setConsumption(String consumption) {
        this.consumption = consumption;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public String getFitDrugs() {
        return fitDrugs;
    }

    public void setFitDrugs(String fitDrugs) {
        this.fitDrugs = fitDrugs;
    }

    public int getBuyOuter() {
        return buyOuter;
    }

    public void setBuyOuter(int buyOuter) {
        this.buyOuter = buyOuter;
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
