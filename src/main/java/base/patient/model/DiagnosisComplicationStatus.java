package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class DiagnosisComplicationStatus extends BaseBean {
    private int index;
    private String item;
    private int result;
    private int diagnosisId;

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

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public int getDiagnosisId() {
        return diagnosisId;
    }

    public void setDiagnosisId(int diagnosisId) {
        this.diagnosisId = diagnosisId;
    }
}
