package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class FollowupChemotherapyItem extends BaseBean{
    private String name;
    private String consumption;
    private String consumptionSize;
    private String frequency;
    private int buyOuter;
    private int followupId;
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

    public String getConsumptionSize() {
        return consumptionSize;
    }

    public void setConsumptionSize(String consumptionSize) {
        this.consumptionSize = consumptionSize;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public int getBuyOuter() {
        return buyOuter;
    }

    public void setBuyOuter(int buyOuter) {
        this.buyOuter = buyOuter;
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
