package base.patient.mapper;

import base.patient.model.DiagnosisInfo;

/**
 * Created by zyn on 11/15/16.
 */
public interface DiagnosisInfoMapper {
    DiagnosisInfo findById(int id);
    int addEntry(DiagnosisInfo diagnosisInfo);
    int updateEntry(DiagnosisInfo diagnosisInfo);
}
