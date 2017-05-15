package base.patient.mapper;

import base.patient.model.PatientInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/15/16.
 */
public interface PatientInfoMapper {
    List<PatientInfo> listAll(@Param("hospitalId") String hospitalId);
    List<PatientInfo> queryAll(@Param("hospitalId") String hospitalId,@Param("query") String query,@Param("orderBy") String orderBy);
    PatientInfo findByPatientId(@Param("patientId") String patientId,@Param("hospitalId") int hospitalId);
    PatientInfo findSimpleByPatientId(@Param("patientId") String patientId,@Param("hospitalId") int hospitalId);
    int addEntry(PatientInfo patientInfo);
    int updateEntry(PatientInfo patientInfo);
    int setContactStatus(@Param("patientId") String patientId,@Param("status") int status);
    int setAgreementStatus(@Param("patientId") String patientId,@Param("status") int status);
    int setFollowupStatus(@Param("patientId") String patientId,@Param("status") int status);
    int countByPatientId(String patientId);
}
