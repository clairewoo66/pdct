ALTER TABLE project2.t_patient_info ADD acqDescription varchar(2048) NULL COMMENT '采集备注';
ALTER TABLE project2.t_patient_info ADD fupDescription varchar(2048) NULL COMMENT '随访备注';
ALTER TABLE project2.t_followup_laboratory_examination ADD followupExaminationNMStatus int(11) NULL;
