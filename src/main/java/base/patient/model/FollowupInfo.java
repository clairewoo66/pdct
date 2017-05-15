package base.patient.model;

import java.awt.geom.Arc2D;
import java.util.List;

/**
 * Created by zyn on 11/14/16.
 */
public class FollowupInfo extends BaseBean {
    private int laboratoryId;
    private int invasionDiagnosis;
    private int clinicalStagesDS;
    private int clinicalStagesISS;
    private int followupProgress;
    private int inHelpProject;
    private String helpProjectName;
    private String helpProjectStartDate;
    private String helpProjectEndDate;
    private int evaluateStatus;
    private int evaluateRule;
    private String evaluateRuleOther;
    private int evaluateResult;
    private String evaluateResultOther;
    private int times;
    private int timesEmergency;
    private Double lastCostTotal;
    private Double lastCostMed;
    private Double lastCostNonMed;
    private Double lastEmergencyCostToal;
    private Double lastEmergencyCostMed;
    private Double lastEmergencyCostNonMed;
    private String registrationCost;
    private String registrationRate;
    private String laboratoryCost;
    private String laboratoryRate;
    private String iconographyCost;
    private String iconographyRate;
    private String drugCost;
    private String drugRate;
    private String otherCostName;
    private String otherCost;
    private String otherRate;
    private String totalCost;
    private String totalRate;
    private int badInformationStatus;
    private int followupsites;
    private int curePlanStep;
    private String curePlanStepOther;
    private FollowupLaboratoryExamination followupLaboratoryExamination;
    private List<FollowupBadinformationItem> followupBadinformationItems;
    private List<FollowupChemotherapyItem> followupChemotherapyItems;
    private List<FollowupComplicationStatus> followupComplicationStatuses;
    private List<FollowupParenchymaItem> followupParenchymaItems;
    private List<FollowupPlasmacyteItem> followupPlasmacyteItems;
    private List<FollowupIconographyItem> followupIconographyItems;
    private List<FollowupCostOtherItem> otherCostItems;

    public int getFollowupProgress() {
        return followupProgress;
    }

    public void setFollowupProgress(int followupProgress) {
        this.followupProgress = followupProgress;
    }

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

    public String getOtherCostName() {
        return otherCostName;
    }

    public void setOtherCostName(String otherCostName) {
        this.otherCostName = otherCostName;
    }

    public List<FollowupCostOtherItem> getOtherCostItems() {
        return otherCostItems;
    }

    public void setOtherCostItems(List<FollowupCostOtherItem> otherCostItems) {
        this.otherCostItems = otherCostItems;
    }

    public int getLaboratoryId() {
        return laboratoryId;
    }

    public void setLaboratoryId(int laboratoryId) {
        this.laboratoryId = laboratoryId;
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

    public int getInHelpProject() {
        return inHelpProject;
    }

    public void setInHelpProject(int inHelpProject) {
        this.inHelpProject = inHelpProject;
    }

    public String getHelpProjectName() {
        return helpProjectName;
    }

    public void setHelpProjectName(String helpProjectName) {
        this.helpProjectName = helpProjectName;
    }

    public String getHelpProjectStartDate() {
        return helpProjectStartDate;
    }

    public void setHelpProjectStartDate(String helpProjectStartDate) {
        this.helpProjectStartDate = helpProjectStartDate;
    }

    public String getHelpProjectEndDate() {
        return helpProjectEndDate;
    }

    public void setHelpProjectEndDate(String helpProjectEndDate) {
        this.helpProjectEndDate = helpProjectEndDate;
    }

    public int getEvaluateStatus() {
        return evaluateStatus;
    }

    public void setEvaluateStatus(int evaluateStatus) {
        this.evaluateStatus = evaluateStatus;
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

    public int getTimes() {
        return times;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public int getTimesEmergency() {
        return timesEmergency;
    }

    public void setTimesEmergency(int timesEmergency) {
        this.timesEmergency = timesEmergency;
    }

    public Double getLastCostTotal() {
        return lastCostTotal;
    }

    public void setLastCostTotal(Double lastCostTotal) {
        this.lastCostTotal = lastCostTotal;
    }

    public Double getLastCostMed() {
        return lastCostMed;
    }

    public void setLastCostMed(Double lastCostMed) {
        this.lastCostMed = lastCostMed;
    }

    public Double getLastCostNonMed() {
        return lastCostNonMed;
    }

    public void setLastCostNonMed(Double lastCostNonMed) {
        this.lastCostNonMed = lastCostNonMed;
    }

    public Double getLastEmergencyCostToal() {
        return lastEmergencyCostToal;
    }

    public void setLastEmergencyCostToal(Double lastEmergencyCostToal) {
        this.lastEmergencyCostToal = lastEmergencyCostToal;
    }

    public Double getLastEmergencyCostMed() {
        return lastEmergencyCostMed;
    }

    public void setLastEmergencyCostMed(Double lastEmergencyCostMed) {
        this.lastEmergencyCostMed = lastEmergencyCostMed;
    }

    public Double getLastEmergencyCostNonMed() {
        return lastEmergencyCostNonMed;
    }

    public void setLastEmergencyCostNonMed(Double lastEmergencyCostNonMed) {
        this.lastEmergencyCostNonMed = lastEmergencyCostNonMed;
    }

    public String getRegistrationCost() {
        return registrationCost;
    }

    public void setRegistrationCost(String registrationCost) {
        this.registrationCost = registrationCost;
    }

    public String getRegistrationRate() {
        return registrationRate;
    }

    public void setRegistrationRate(String registrationRate) {
        this.registrationRate = registrationRate;
    }

    public String getLaboratoryCost() {
        return laboratoryCost;
    }

    public void setLaboratoryCost(String laboratoryCost) {
        this.laboratoryCost = laboratoryCost;
    }

    public String getLaboratoryRate() {
        return laboratoryRate;
    }

    public void setLaboratoryRate(String laboratoryRate) {
        this.laboratoryRate = laboratoryRate;
    }

    public String getIconographyCost() {
        return iconographyCost;
    }

    public void setIconographyCost(String iconographyCost) {
        this.iconographyCost = iconographyCost;
    }

    public String getIconographyRate() {
        return iconographyRate;
    }

    public void setIconographyRate(String iconographyRate) {
        this.iconographyRate = iconographyRate;
    }

    public String getDrugCost() {
        return drugCost;
    }

    public void setDrugCost(String drugCost) {
        this.drugCost = drugCost;
    }

    public String getDrugRate() {
        return drugRate;
    }

    public void setDrugRate(String drugRate) {
        this.drugRate = drugRate;
    }

    public String getOtherCost() {
        return otherCost;
    }

    public void setOtherCost(String otherCost) {
        this.otherCost = otherCost;
    }

    public String getOtherRate() {
        return otherRate;
    }

    public void setOtherRate(String otherRate) {
        this.otherRate = otherRate;
    }

    public String getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(String totalCost) {
        this.totalCost = totalCost;
    }

    public String getTotalRate() {
        return totalRate;
    }

    public void setTotalRate(String totalRate) {
        this.totalRate = totalRate;
    }

    public int getBadInformationStatus() {
        return badInformationStatus;
    }

    public void setBadInformationStatus(int badInformationStatus) {
        this.badInformationStatus = badInformationStatus;
    }

    public int getfollowupsites() {
        return followupsites;
    }

    public void setfollowupsites(int followupsites) {
        this.followupsites = followupsites;
    }

    public FollowupLaboratoryExamination getFollowupLaboratoryExamination() {
        return followupLaboratoryExamination;
    }

    public void setFollowupLaboratoryExamination(FollowupLaboratoryExamination followupLaboratoryExamination) {
        this.followupLaboratoryExamination = followupLaboratoryExamination;
    }

    public List<FollowupBadinformationItem> getFollowupBadinformationItems() {
        return followupBadinformationItems;
    }

    public void setFollowupBadinformationItems(List<FollowupBadinformationItem> followupBadinformationItems) {
        this.followupBadinformationItems = followupBadinformationItems;
    }

    public List<FollowupChemotherapyItem> getFollowupChemotherapyItems() {
        return followupChemotherapyItems;
    }

    public void setFollowupChemotherapyItems(List<FollowupChemotherapyItem> followupChemotherapyItems) {
        this.followupChemotherapyItems = followupChemotherapyItems;
    }

    public List<FollowupComplicationStatus> getFollowupComplicationStatuses() {
        return followupComplicationStatuses;
    }

    public void setFollowupComplicationStatuses(List<FollowupComplicationStatus> followupComplicationStatuses) {
        this.followupComplicationStatuses = followupComplicationStatuses;
    }

    public List<FollowupParenchymaItem> getFollowupParenchymaItems() {
        return followupParenchymaItems;
    }

    public void setFollowupParenchymaItems(List<FollowupParenchymaItem> followupParenchymaItems) {
        this.followupParenchymaItems = followupParenchymaItems;
    }

    public List<FollowupPlasmacyteItem> getFollowupPlasmacyteItems() {
        return followupPlasmacyteItems;
    }

    public void setFollowupPlasmacyteItems(List<FollowupPlasmacyteItem> followupPlasmacyteItems) {
        this.followupPlasmacyteItems = followupPlasmacyteItems;
    }

    public List<FollowupIconographyItem> getFollowupIconographyItems() {
        return followupIconographyItems;
    }

    public void setFollowupIconographyItems(List<FollowupIconographyItem> followupIconographyItems) {
        this.followupIconographyItems = followupIconographyItems;
    }
}
