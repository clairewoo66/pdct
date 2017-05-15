package base.patient.model;

import java.lang.System;
import java.util.Date;

/**
 * Created by zyn on 11/19/16.
 */
public class PatientContactInfo extends BaseBean {
    private String patientId;
    private String birthday;
    private int livingState;
    private int agreeVisit;
    private int hospitalId;
    private String visitDate;
    private Date createDate;
    private String deathReason;
    private String deathDate;
    private String contactNurse;
    private int operatorId;

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(int operatorId) {
        this.operatorId = operatorId;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getDeathDate() {
        return deathDate;
    }

    public void setDeathDate(String deathDate) {
        this.deathDate = deathDate;
    }

    public int getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(int hospitalId) {
        this.hospitalId = hospitalId;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public int getLivingState() {
        return livingState;
    }

    public void setLivingState(int livingState) {
        this.livingState = livingState;
    }

    public int getAgreeVisit() {
        return agreeVisit;
    }

    public void setAgreeVisit(int agreeVisit) {
        this.agreeVisit = agreeVisit;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public void setVisitDate(String visitDate) {
        this.visitDate = visitDate;
    }

    public String getDeathReason() {
        return deathReason;
    }

    public void setDeathReason(String deathReason) {
        this.deathReason = deathReason;
    }

    public String getContactNurse() {
        return contactNurse;
    }

    public void setContactNurse(String contactNurse) {
        this.contactNurse = contactNurse;
    }
}
