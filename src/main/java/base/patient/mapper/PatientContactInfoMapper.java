package base.patient.mapper;

import base.patient.model.PatientContactInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/19/16.
 */
public interface PatientContactInfoMapper {
    PatientContactInfo findByPatientId(@Param("patientId") String patientId,@Param("hospitalId") int hospitalId);
    int addEntry(PatientContactInfo patientContactInfo);
    int updateEntry(PatientContactInfo patientContactInfo);
    int deleteByIds(@Param("ids") List<Integer> ids);
}
