package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class DiagnosisFishItem extends BaseBean {
    private String item;
    private String rate;
    private int diagnosisId;
    private int index;

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public int getDiagnosisId() {
        return diagnosisId;
    }

    public void setDiagnosisId(int diagnosisId) {
        this.diagnosisId = diagnosisId;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }
}
