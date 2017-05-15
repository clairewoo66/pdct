package base.patient.model;

import java.util.List;

/**
 * 住院费用信息
 * Created by zyn on 10/22/16.
 */
public class HospitaledCost extends BaseBean {
    private String westernMed;
    private String cure;
    private String check;
    private String inspect;
    private String material;
    private String bed;
    private String food;
    private String nursing;
    private String other;
    private String total;
    private String self;
    private String outer;
    private String otherCostName;
    private String otherCostValue;
    private List<HospitaledCostOtherItem> otherHospitalCost;

    public String getOtherCostName() {
        return otherCostName;
    }

    public void setOtherCostName(String otherCostName) {
        this.otherCostName = otherCostName;
    }

    public String getOtherCostValue() {
        return otherCostValue;
    }

    public void setOtherCostValue(String otherCostValue) {
        this.otherCostValue = otherCostValue;
    }

    public List<HospitaledCostOtherItem> getOtherHospitalCost() {
        return otherHospitalCost;
    }

    public void setOtherHospitalCost(List<HospitaledCostOtherItem> otherHospitalCost) {
        this.otherHospitalCost = otherHospitalCost;
    }

    public String getWesternMed() {
        return westernMed;
    }

    public void setWesternMed(String westernMed) {
        this.westernMed = westernMed;
    }

    public String getCure() {
        return cure;
    }

    public void setCure(String cure) {
        this.cure = cure;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public String getInspect() {
        return inspect;
    }

    public void setInspect(String inspect) {
        this.inspect = inspect;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getBed() {
        return bed;
    }

    public void setBed(String bed) {
        this.bed = bed;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getNursing() {
        return nursing;
    }

    public void setNursing(String nursing) {
        this.nursing = nursing;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getSelf() {
        return self;
    }

    public void setSelf(String self) {
        this.self = self;
    }

    public String getOuter() {
        return outer;
    }

    public void setOuter(String outer) {
        this.outer = outer;
    }
}
