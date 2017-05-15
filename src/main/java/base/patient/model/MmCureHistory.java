package base.patient.model;

/**
 * Created by zyn on 11/14/16.
 */
public class MmCureHistory extends BaseBean {
    private int stemcelltransplantation;
    private String stemcelltransplantationDate;
    private String curePlan;
    private String startYear;
    private String startMonth;
    private String endYear;
    private String endMonth;
    private String cycleCount;
    private int evaluateAfterCure;
    private int evaluateRule;
    private String evaluateRuleOther;
    private int evaluateResult;
    private String evaluateResultOther;
    private int curePlanStep;
    private String curePlanStepOther;
    private int index;
    private int patientId;

    public int getCurePlanStep() {
        return curePlanStep;
    }

    public void setCurePlanStep(int curePlanStep) {
        this.curePlanStep = curePlanStep;
    }

    public String getCurePlanStepOther() {
        return curePlanStepOther;
    }

    public void setCurePlanStepOther(String curePlanStepOther) {
        this.curePlanStepOther = curePlanStepOther;
    }

    public int getStemcelltransplantation() {
        return stemcelltransplantation;
    }

    public void setStemcelltransplantation(int stemcelltransplantation) {
        this.stemcelltransplantation = stemcelltransplantation;
    }

    public String getStemcelltransplantationDate() {
        return stemcelltransplantationDate;
    }

    public void setStemcelltransplantationDate(String stemcelltransplantationDate) {
        this.stemcelltransplantationDate = stemcelltransplantationDate;
    }

    public String getCurePlan() {
        return curePlan;
    }

    public void setCurePlan(String curePlan) {
        this.curePlan = curePlan;
    }

    public String getStartYear() {
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getStartMonth() {
        return startMonth;
    }

    public void setStartMonth(String startMonth) {
        this.startMonth = startMonth;
    }

    public String getEndYear() {
        return endYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }

    public String getEndMonth() {
        return endMonth;
    }

    public void setEndMonth(String endMonth) {
        this.endMonth = endMonth;
    }

    public String getCycleCount() {
        return cycleCount;
    }

    public void setCycleCount(String cycleCount) {
        this.cycleCount = cycleCount;
    }

    public int getEvaluateAfterCure() {
        return evaluateAfterCure;
    }

    public void setEvaluateAfterCure(int evaluateAfterCure) {
        this.evaluateAfterCure = evaluateAfterCure;
    }

    public int getEvaluateRule() {
        return evaluateRule;
    }

    public void setEvaluateRule(int evaluateRule) {
        this.evaluateRule = evaluateRule;
    }

    public String getEvaluateRuleOther() {
        return evaluateRuleOther;
    }

    public void setEvaluateRuleOther(String evaluateRuleOther) {
        this.evaluateRuleOther = evaluateRuleOther;
    }

    public int getEvaluateResult() {
        return evaluateResult;
    }

    public void setEvaluateResult(int evaluateResult) {
        this.evaluateResult = evaluateResult;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getEvaluateResultOther() {
        return evaluateResultOther;
    }

    public void setEvaluateResultOther(String evaluateResultOther) {
        this.evaluateResultOther = evaluateResultOther;
    }
}
