package base.patient.model;

import java.util.List;

/**
 * Created by zyn on 11/14/16.
 */
public class DiagnosisInfo extends BaseBean {
    private String diagnosisDate;
    private int invasionDiagnosis;
    private int clinicTypeDS;
    private int clinicTypeISS;
    private int bloodResultId;
    private int diagnosisImmunoglobulinIgg;
    private int diagnosisImmunoglobulinIga;
    private int diagnosisImmunoglobulinIgm;
    private int diagnosisImmunoglobulinIgd;
    private int diagnosisImmunoglobulinIge;
    private int diagnosisImmunoglobulinLightChain;
    private int diagnosisImmunoglobulinDoubleClone;
    private int diagnosisImmunoglobulinSecretion;
    private int diagnosisImmunoglobulinEvaluate;
    private int diagnosisLaboratoryExaminationId;
    private DiagnosisLaboratoryExamination diagnosisLaboratoryExamination;
    private int diagnosisFishStatus;
    private List<DiagnosisComplicationItem> diagnosisComplicationItems;
    private List<DiagnosisComplicationStatus> diagnosisComplicationStatuses;
    private List<DiagnosisFishItem> diagnosisFishItems;
    private List<DiagnosisIconographyItem> diagnosisIconographyItems;
    private List<DiagnosisParenchymaItem> diagnosisParenchymaItems;
    private List<DiagnosisPlasmacyteItem> diagnosisPlasmacyteItems;
    private String diagnosisSTXTime;

    public String getDiagnosisSTXTime() {
        return diagnosisSTXTime;
    }

    public void setDiagnosisSTXTime(String diagnosisSTXTime) {
        this.diagnosisSTXTime = diagnosisSTXTime;
    }

    public String getDiagnosisDate() {
        return diagnosisDate;
    }

    public void setDiagnosisDate(String diagnosisDate) {
        this.diagnosisDate = diagnosisDate;
    }

    public int getInvasionDiagnosis() {
        return invasionDiagnosis;
    }

    public void setInvasionDiagnosis(int invasionDiagnosis) {
        this.invasionDiagnosis = invasionDiagnosis;
    }

    public int getClinicTypeDS() {
        return clinicTypeDS;
    }

    public void setClinicTypeDS(int clinicTypeDS) {
        this.clinicTypeDS = clinicTypeDS;
    }

    public int getClinicTypeISS() {
        return clinicTypeISS;
    }

    public void setClinicTypeISS(int clinicTypeISS) {
        this.clinicTypeISS = clinicTypeISS;
    }

    public int getBloodResultId() {
        return bloodResultId;
    }

    public void setBloodResultId(int bloodResultId) {
        this.bloodResultId = bloodResultId;
    }

    public int getDiagnosisImmunoglobulinIgg() {
        return diagnosisImmunoglobulinIgg;
    }

    public void setDiagnosisImmunoglobulinIgg(int diagnosisImmunoglobulinIgg) {
        this.diagnosisImmunoglobulinIgg = diagnosisImmunoglobulinIgg;
    }

    public int getDiagnosisImmunoglobulinIga() {
        return diagnosisImmunoglobulinIga;
    }

    public void setDiagnosisImmunoglobulinIga(int diagnosisImmunoglobulinIga) {
        this.diagnosisImmunoglobulinIga = diagnosisImmunoglobulinIga;
    }

    public int getDiagnosisImmunoglobulinIgm() {
        return diagnosisImmunoglobulinIgm;
    }

    public void setDiagnosisImmunoglobulinIgm(int diagnosisImmunoglobulinIgm) {
        this.diagnosisImmunoglobulinIgm = diagnosisImmunoglobulinIgm;
    }

    public int getDiagnosisImmunoglobulinIgd() {
        return diagnosisImmunoglobulinIgd;
    }

    public void setDiagnosisImmunoglobulinIgd(int diagnosisImmunoglobulinIgd) {
        this.diagnosisImmunoglobulinIgd = diagnosisImmunoglobulinIgd;
    }

    public int getDiagnosisImmunoglobulinIge() {
        return diagnosisImmunoglobulinIge;
    }

    public void setDiagnosisImmunoglobulinIge(int diagnosisImmunoglobulinIge) {
        this.diagnosisImmunoglobulinIge = diagnosisImmunoglobulinIge;
    }

    public int getDiagnosisImmunoglobulinLightChain() {
        return diagnosisImmunoglobulinLightChain;
    }

    public void setDiagnosisImmunoglobulinLightChain(int diagnosisImmunoglobulinLightChain) {
        this.diagnosisImmunoglobulinLightChain = diagnosisImmunoglobulinLightChain;
    }

    public int getDiagnosisImmunoglobulinDoubleClone() {
        return diagnosisImmunoglobulinDoubleClone;
    }

    public void setDiagnosisImmunoglobulinDoubleClone(int diagnosisImmunoglobulinDoubleClone) {
        this.diagnosisImmunoglobulinDoubleClone = diagnosisImmunoglobulinDoubleClone;
    }

    public int getDiagnosisImmunoglobulinSecretion() {
        return diagnosisImmunoglobulinSecretion;
    }

    public void setDiagnosisImmunoglobulinSecretion(int diagnosisImmunoglobulinSecretion) {
        this.diagnosisImmunoglobulinSecretion = diagnosisImmunoglobulinSecretion;
    }

    public int getDiagnosisImmunoglobulinEvaluate() {
        return diagnosisImmunoglobulinEvaluate;
    }

    public void setDiagnosisImmunoglobulinEvaluate(int diagnosisImmunoglobulinEvaluate) {
        this.diagnosisImmunoglobulinEvaluate = diagnosisImmunoglobulinEvaluate;
    }

    public int getDiagnosisLaboratoryExaminationId() {
        return diagnosisLaboratoryExaminationId;
    }

    public void setDiagnosisLaboratoryExaminationId(int diagnosisLaboratoryExaminationId) {
        this.diagnosisLaboratoryExaminationId = diagnosisLaboratoryExaminationId;
    }

    public DiagnosisLaboratoryExamination getDiagnosisLaboratoryExamination() {
        return diagnosisLaboratoryExamination;
    }

    public void setDiagnosisLaboratoryExamination(DiagnosisLaboratoryExamination diagnosisLaboratoryExamination) {
        this.diagnosisLaboratoryExamination = diagnosisLaboratoryExamination;
    }

    public int getDiagnosisFishStatus() {
        return diagnosisFishStatus;
    }

    public void setDiagnosisFishStatus(int diagnosisFishStatus) {
        this.diagnosisFishStatus = diagnosisFishStatus;
    }

    public List<DiagnosisComplicationItem> getDiagnosisComplicationItems() {
        return diagnosisComplicationItems;
    }

    public void setDiagnosisComplicationItems(List<DiagnosisComplicationItem> diagnosisComplicationItems) {
        this.diagnosisComplicationItems = diagnosisComplicationItems;
    }

    public List<DiagnosisComplicationStatus> getDiagnosisComplicationStatuses() {
        return diagnosisComplicationStatuses;
    }

    public void setDiagnosisComplicationStatuses(List<DiagnosisComplicationStatus> diagnosisComplicationStatuses) {
        this.diagnosisComplicationStatuses = diagnosisComplicationStatuses;
    }

    public List<DiagnosisFishItem> getDiagnosisFishItems() {
        return diagnosisFishItems;
    }

    public void setDiagnosisFishItems(List<DiagnosisFishItem> diagnosisFishItems) {
        this.diagnosisFishItems = diagnosisFishItems;
    }

    public List<DiagnosisIconographyItem> getDiagnosisIconographyItems() {
        return diagnosisIconographyItems;
    }

    public void setDiagnosisIconographyItems(List<DiagnosisIconographyItem> diagnosisIconographyItems) {
        this.diagnosisIconographyItems = diagnosisIconographyItems;
    }

    public List<DiagnosisParenchymaItem> getDiagnosisParenchymaItems() {
        return diagnosisParenchymaItems;
    }

    public void setDiagnosisParenchymaItems(List<DiagnosisParenchymaItem> diagnosisParenchymaItems) {
        this.diagnosisParenchymaItems = diagnosisParenchymaItems;
    }

    public List<DiagnosisPlasmacyteItem> getDiagnosisPlasmacyteItems() {
        return diagnosisPlasmacyteItems;
    }

    public void setDiagnosisPlasmacyteItems(List<DiagnosisPlasmacyteItem> diagnosisPlasmacyteItems) {
        this.diagnosisPlasmacyteItems = diagnosisPlasmacyteItems;
    }
}
