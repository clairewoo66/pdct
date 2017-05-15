package base.patient.mapper;

import base.patient.model.HospitaledLaboratoryExamination;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledLaboratoryExaminationMapper {
    HospitaledLaboratoryExamination findById(int id);
    int addEntry(HospitaledLaboratoryExamination hospitaledLaboratoryExamination);
    int updateEntry(HospitaledLaboratoryExamination hospitaledLaboratoryExamination);
}
