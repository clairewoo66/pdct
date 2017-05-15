package base.patient.model;

/**
 * Created by zyn on 11/19/16.
 */
public class PatientInformed  extends BaseBean{
    private int agreeInformedConsentStatus;
    private String patientId;
    private int hospitalId;
    private String informedConsentDate;
    private String contactNurse;
    private String birthday;
    private int operatorId;

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

    public int getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(int hospitalId) {
        this.hospitalId = hospitalId;
    }

    public int getAgreeInformedConsentStatus() {
        return agreeInformedConsentStatus;
    }

    public void setAgreeInformedConsentStatus(int agreeInformedConsentStatus) {
        this.agreeInformedConsentStatus = agreeInformedConsentStatus;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getInformedConsentDate() {
        return informedConsentDate;
    }

    public void setInformedConsentDate(String informedConsentDate) {
        this.informedConsentDate = informedConsentDate;
    }

    public String getContactNurse() {
        return contactNurse;
    }

    public void setContactNurse(String contactNurse) {
        this.contactNurse = contactNurse;
    }
}
