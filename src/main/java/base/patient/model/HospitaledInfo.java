package base.patient.model;

import java.util.List;

/**
 * Created by zyn on 11/14/16.
 */
public class HospitaledInfo extends BaseBean{
    private String startTime;
    private String endTime;
    private String hospitalweight;
    private String hospitalbodysurfacearea;
    private int ecogMark;
    private String karnofskyMark;
    private int invasionDiagnosis;
    private int clinicalStagesDS;
    private int clinicalStagesISS;
    private int hostipalstemcelltransplantation;
    private String hostipalstemcelltransplantationDate;
    private int changeCurePlan;
    private String curePlan;
    private int hospitalCurePlanStep;
    private String hospitalCurePlanStepOther;
    private String hospitalCureCycle;
    private String curePlanAlter;
    private String changePlanReason;
    private int changeCurePlanStep;
    private String changeCurePlanStepOther;
    private int evaluateAfterCure;
    private int evaluateRule;
    private String evaluateRuleOther;
    private int evaluateResult;
    private String evaluateResultOther;
    private String adrAfterCure;
    private int livingState;
    private String deathDate;
    private String deathReason;
    private int badInformationStatus;
    private int fkcostid;
    private int hospitaledLaboratoryExaminationId;
    private int patientId;
    private HospitaledCost hospitaledCost;
    private HospitaledLaboratoryExamination hospitaledLaboratoryExamination;
    private List<HospitaledComplicationStatus> complicationStatusList;
    private List<HospitaledPlasmacyteItem> hospitaledPlasmacyteItems;
    private List<HospitaledIconographyItem> iconographyItems;
    private List<HospitaledParenchymaItem> hospitaledParenchymaItems;
    private List<HospitaledBadinformationItem> badinformationItems;
    private List<HospitaledChemotherapyItem> hospitaledChemotherapyItems;
    private List<HospitaledSupportItem> hospitaledSupportItems;

    public int getChangeCurePlanStep() {
        return changeCurePlanStep;
    }

    public void setChangeCurePlanStep(int changeCurePlanStep) {
        this.changeCurePlanStep = changeCurePlanStep;
    }

    public String getChangeCurePlanStepOther() {
        return changeCurePlanStepOther;
    }

    public void setChangeCurePlanStepOther(String changeCurePlanStepOther) {
        this.changeCurePlanStepOther = changeCurePlanStepOther;
    }

    public int getHospitalCurePlanStep() {
        return hospitalCurePlanStep;
    }

    public void setHospitalCurePlanStep(int hospitalCurePlanStep) {
        this.hospitalCurePlanStep = hospitalCurePlanStep;
    }

    public String getHospitalCurePlanStepOther() {
        return hospitalCurePlanStepOther;
    }

    public void setHospitalCurePlanStepOther(String hospitalCurePlanStepOther) {
        this.hospitalCurePlanStepOther = hospitalCurePlanStepOther;
    }

    public String getHospitalCureCycle() {
        return hospitalCureCycle;
    }

    public void setHospitalCureCycle(String hospitalCureCycle) {
        this.hospitalCureCycle = hospitalCureCycle;
    }

    public int getBadInformationStatus() {
        return badInformationStatus;
    }

    public void setBadInformationStatus(int badInformationStatus) {
        this.badInformationStatus = badInformationStatus;
    }

    public int getLivingState() {
        return livingState;
    }

    public void setLivingState(int livingState) {
        this.livingState = livingState;
    }

    public String getDeathDate() {
        return deathDate;
    }

    public void setDeathDate(String deathDate) {
        this.deathDate = deathDate;
    }

    public String getDeathReason() {
        return deathReason;
    }

    public void setDeathReason(String deathReason) {
        this.deathReason = deathReason;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getHospitalweight() {
        return hospitalweight;
    }

    public void setHospitalweight(String hospitalweight) {
        this.hospitalweight = hospitalweight;
    }

    public String getHospitalbodysurfacearea() {
        return hospitalbodysurfacearea;
    }

    public void setHospitalbodysurfacearea(String hospitalbodysurfacearea) {
        this.hospitalbodysurfacearea = hospitalbodysurfacearea;
    }

    public int getEcogMark() {
        return ecogMark;
    }

    public void setEcogMark(int ecogMark) {
        this.ecogMark = ecogMark;
    }

    public String getKarnofskyMark() {
        return karnofskyMark;
    }

    public void setKarnofskyMark(String karnofskyMark) {
        this.karnofskyMark = karnofskyMark;
    }

    public int getInvasionDiagnosis() {
        return invasionDiagnosis;
    }

    public void setInvasionDiagnosis(int invasionDiagnosis) {
        this.invasionDiagnosis = invasionDiagnosis;
    }

    public int getClinicalStagesDS() {
        return clinicalStagesDS;
    }

    public void setClinicalStagesDS(int clinicalStagesDS) {
        this.clinicalStagesDS = clinicalStagesDS;
    }

    public int getClinicalStagesISS() {
        return clinicalStagesISS;
    }

    public void setClinicalStagesISS(int clinicalStagesISS) {
        this.clinicalStagesISS = clinicalStagesISS;
    }

    public int getHostipalstemcelltransplantation() {
        return hostipalstemcelltransplantation;
    }

    public void setHostipalstemcelltransplantation(int hostipalstemcelltransplantation) {
        this.hostipalstemcelltransplantation = hostipalstemcelltransplantation;
    }

    public String getHostipalstemcelltransplantationDate() {
        return hostipalstemcelltransplantationDate;
    }

    public void setHostipalstemcelltransplantationDate(String hostipalstemcelltransplantationDate) {
        this.hostipalstemcelltransplantationDate = hostipalstemcelltransplantationDate;
    }

    public int getChangeCurePlan() {
        return changeCurePlan;
    }

    public void setChangeCurePlan(int changeCurePlan) {
        this.changeCurePlan = changeCurePlan;
    }

    public String getCurePlan() {
        return curePlan;
    }

    public void setCurePlan(String curePlan) {
        this.curePlan = curePlan;
    }

    public String getCurePlanAlter() {
        return curePlanAlter;
    }

    public void setCurePlanAlter(String curePlanAlter) {
        this.curePlanAlter = curePlanAlter;
    }

    public String getChangePlanReason() {
        return changePlanReason;
    }

    public void setChangePlanReason(String changePlanReason) {
        this.changePlanReason = changePlanReason;
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

    public String getEvaluateResultOther() {
        return evaluateResultOther;
    }

    public void setEvaluateResultOther(String evaluateResultOther) {
        this.evaluateResultOther = evaluateResultOther;
    }

    public String getAdrAfterCure() {
        return adrAfterCure;
    }

    public void setAdrAfterCure(String adrAfterCure) {
        this.adrAfterCure = adrAfterCure;
    }

    public int getFkcostid() {
        return fkcostid;
    }

    public void setFkcostid(int fkcostid) {
        this.fkcostid = fkcostid;
    }

    public int getHospitaledLaboratoryExaminationId() {
        return hospitaledLaboratoryExaminationId;
    }

    public void setHospitaledLaboratoryExaminationId(int hospitaledLaboratoryExaminationId) {
        this.hospitaledLaboratoryExaminationId = hospitaledLaboratoryExaminationId;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public HospitaledCost getHospitaledCost() {
        return hospitaledCost;
    }

    public void setHospitaledCost(HospitaledCost hospitaledCost) {
        this.hospitaledCost = hospitaledCost;
    }

    public HospitaledLaboratoryExamination getHospitaledLaboratoryExamination() {
        return hospitaledLaboratoryExamination;
    }

    public void setHospitaledLaboratoryExamination(HospitaledLaboratoryExamination hospitaledLaboratoryExamination) {
        this.hospitaledLaboratoryExamination = hospitaledLaboratoryExamination;
    }

    public List<HospitaledComplicationStatus> getComplicationStatusList() {
        return complicationStatusList;
    }

    public void setComplicationStatusList(List<HospitaledComplicationStatus> complicationStatusList) {
        this.complicationStatusList = complicationStatusList;
    }

    public List<HospitaledPlasmacyteItem> getHospitaledPlasmacyteItems() {
        return hospitaledPlasmacyteItems;
    }

    public void setHospitaledPlasmacyteItems(List<HospitaledPlasmacyteItem> hospitaledPlasmacyteItems) {
        this.hospitaledPlasmacyteItems = hospitaledPlasmacyteItems;
    }

    public List<HospitaledIconographyItem> getIconographyItems() {
        return iconographyItems;
    }

    public void setIconographyItems(List<HospitaledIconographyItem> iconographyItems) {
        this.iconographyItems = iconographyItems;
    }

    public List<HospitaledParenchymaItem> getHospitaledParenchymaItems() {
        return hospitaledParenchymaItems;
    }

    public void setHospitaledParenchymaItems(List<HospitaledParenchymaItem> hospitaledParenchymaItems) {
        this.hospitaledParenchymaItems = hospitaledParenchymaItems;
    }

    public List<HospitaledBadinformationItem> getBadinformationItems() {
        return badinformationItems;
    }

    public void setBadinformationItems(List<HospitaledBadinformationItem> badinformationItems) {
        this.badinformationItems = badinformationItems;
    }

    public List<HospitaledChemotherapyItem> getHospitaledChemotherapyItems() {
        return hospitaledChemotherapyItems;
    }

    public void setHospitaledChemotherapyItems(List<HospitaledChemotherapyItem> hospitaledChemotherapyItems) {
        this.hospitaledChemotherapyItems = hospitaledChemotherapyItems;
    }

    public List<HospitaledSupportItem> getHospitaledSupportItems() {
        return hospitaledSupportItems;
    }

    public void setHospitaledSupportItems(List<HospitaledSupportItem> hospitaledSupportItems) {
        this.hospitaledSupportItems = hospitaledSupportItems;
    }
}
