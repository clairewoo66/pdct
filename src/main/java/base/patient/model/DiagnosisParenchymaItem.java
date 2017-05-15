package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class DiagnosisParenchymaItem extends BaseBean {
    private String item;
    private String position;
    private String length;
    private String width;
    private int diagnosisId;
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

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getWidth() {
        return width;
    }

    public void setWidth(String width) {
        this.width = width;
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
