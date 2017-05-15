package base.patient.mapper;

import base.patient.model.FollowupLaboratoryExamination;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupLaboratoryExaminationMapper {
    FollowupLaboratoryExamination findById(int id);
    int addEntry(FollowupLaboratoryExamination followupLaboratoryExamination);
    int updateEntry(FollowupLaboratoryExamination followupLaboratoryExamination);
}
