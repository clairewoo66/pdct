package base.patient.mapper;

import base.patient.model.DiagnosisLaboratoryExamination;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisLaboratoryExaminationMapper {
    DiagnosisLaboratoryExamination findById(int id);
    int addEntry(DiagnosisLaboratoryExamination diagnosisLaboratoryExamination);
    int updateEntry(DiagnosisLaboratoryExamination diagnosisLaboratoryExamination);
}
