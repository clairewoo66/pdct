package base.patient.model;

import java.util.List;

/**
 * Created by zyn on 11/14/16.
 */
public class PatientInfo extends BaseBean {
    private String patientId;
    private int fkhospitalid;
    private Hospital hospital;
    private String birthday;
    private int gender;
    private int nation;
    private String nationOther;
    private int place;
    private int maritalStatus;
    private int jobStatus;
    private String height;
    private String weight;
    private String bodysurfacearea;
    private int insuranceType;
    private String otherInsurance;
    private int eduLevel;
    private int ecogMark;
    private String karnofskyMark;
    private int smokingStatus;
    private int drinkStatus;
    private int fkdiagnosisid;
    private int followupid;
    private int familyIncome;
    private int contactStatus;
    private int agreementStatus;
    private int followupStatus;
    private int acquisitionStatus;
    private int livingState;
    private int gathererId;
    private String gathererName;
    private String deathReason;
    private String deathTime;
    private String acqDescription;
    private String fupDescription;

    private DiagnosisInfo diagnosisInfo;
    private List<MmCureHistory> mmCureHistories;
    private List<HospitaledInfo> hospitaledInfos;
    private FollowupInfo followupInfo;

    public String getAcqDescription() {
        return acqDescription;
    }

    public void setAcqDescription(String acqDescription) {
        this.acqDescription = acqDescription;
    }

    public String getFupDescription() {
        return fupDescription;
    }

    public void setFupDescription(String fupDescription) {
        this.fupDescription = fupDescription;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public int getFkhospitalid() {
        return fkhospitalid;
    }

    public void setFkhospitalid(int fkhospitalid) {
        this.fkhospitalid = fkhospitalid;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getNation() {
        return nation;
    }

    public void setNation(int nation) {
        this.nation = nation;
    }

    public String getNationOther() {
        return nationOther;
    }

    public void setNationOther(String nationOther) {
        this.nationOther = nationOther;
    }

    public int getPlace() {
        return place;
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public int getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(int maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public int getJobStatus() {
        return jobStatus;
    }

    public void setJobStatus(int jobStatus) {
        this.jobStatus = jobStatus;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public int getInsuranceType() {
        return insuranceType;
    }

    public void setInsuranceType(int insuranceType) {
        this.insuranceType = insuranceType;
    }

    public String getOtherInsurance() {
        return otherInsurance;
    }

    public void setOtherInsurance(String otherInsurance) {
        this.otherInsurance = otherInsurance;
    }

    public int getEduLevel() {
        return eduLevel;
    }

    public void setEduLevel(int eduLevel) {
        this.eduLevel = eduLevel;
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

    public int getSmokingStatus() {
        return smokingStatus;
    }

    public void setSmokingStatus(int smokingStatus) {
        this.smokingStatus = smokingStatus;
    }

    public int getDrinkStatus() {
        return drinkStatus;
    }

    public void setDrinkStatus(int drinkStatus) {
        this.drinkStatus = drinkStatus;
    }

    public int getFkdiagnosisid() {
        return fkdiagnosisid;
    }

    public void setFkdiagnosisid(int fkdiagnosisid) {
        this.fkdiagnosisid = fkdiagnosisid;
    }

    public int getFollowupid() {
        return followupid;
    }

    public void setFollowupid(int followupid) {
        this.followupid = followupid;
    }

    public int getFamilyIncome() {
        return familyIncome;
    }

    public void setFamilyIncome(int familyIncome) {
        this.familyIncome = familyIncome;
    }

    public int getContactStatus() {
        return contactStatus;
    }

    public void setContactStatus(int contactStatus) {
        this.contactStatus = contactStatus;
    }

    public int getAgreementStatus() {
        return agreementStatus;
    }

    public void setAgreementStatus(int agreementStatus) {
        this.agreementStatus = agreementStatus;
    }

    public int getFollowupStatus() {
        return followupStatus;
    }

    public void setFollowupStatus(int followupStatus) {
        this.followupStatus = followupStatus;
    }

    public int getAcquisitionStatus() {
        return acquisitionStatus;
    }

    public void setAcquisitionStatus(int acquisitionStatus) {
        this.acquisitionStatus = acquisitionStatus;
    }

    public int getLivingState() {
        return livingState;
    }

    public void setLivingState(int livingState) {
        this.livingState = livingState;
    }

    public String getDeathReason() {
        return deathReason;
    }

    public void setDeathReason(String deathReason) {
        this.deathReason = deathReason;
    }

    public String getDeathTime() {
        return deathTime;
    }

    public void setDeathTime(String deathTime) {
        this.deathTime = deathTime;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public DiagnosisInfo getDiagnosisInfo() {
        return diagnosisInfo;
    }

    public void setDiagnosisInfo(DiagnosisInfo diagnosisInfo) {
        this.diagnosisInfo = diagnosisInfo;
    }

    public List<MmCureHistory> getMmCureHistories() {
        return mmCureHistories;
    }

    public void setMmCureHistories(List<MmCureHistory> mmCureHistories) {
        this.mmCureHistories = mmCureHistories;
    }

    public List<HospitaledInfo> getHospitaledInfos() {
        return hospitaledInfos;
    }

    public void setHospitaledInfos(List<HospitaledInfo> hospitaledInfos) {
        this.hospitaledInfos = hospitaledInfos;
    }

    public FollowupInfo getFollowupInfo() {
        return followupInfo;
    }

    public void setFollowupInfo(FollowupInfo followupInfo) {
        this.followupInfo = followupInfo;
    }

    public String getBodysurfacearea() {
        return bodysurfacearea;
    }

    public void setBodysurfacearea(String bodysurfacearea) {
        this.bodysurfacearea = bodysurfacearea;
    }

    public int getGathererId() {
        return gathererId;
    }

    public void setGathererId(int gathererId) {
        this.gathererId = gathererId;
    }

    public String getGathererName() {
        return gathererName;
    }

    public void setGathererName(String gathererName) {
        this.gathererName = gathererName;
    }
}
