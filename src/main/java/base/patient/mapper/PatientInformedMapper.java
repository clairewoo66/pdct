package base.patient.mapper;

import base.patient.model.PatientInformed;
import org.apache.ibatis.annotations.Param;

/**
 * Created by zyn on 11/19/16.
 */
public interface PatientInformedMapper {
    int addEntry(PatientInformed informed);
    int updateEntry(PatientInformed informed);
    PatientInformed findByPatientId(@Param("patientId") String patientId,@Param("hospitalId") int hospitalId);
}
