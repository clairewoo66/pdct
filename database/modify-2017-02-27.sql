ALTER TABLE project2.t_diagnosis_laboratory_examination ADD diagnosisTopMP varchar(64) NULL COMMENT 'M蛋白峰值（单位为%）';
ALTER TABLE project2.t_diagnosis_laboratory_examination ADD diagnosisMPResult varchar(64) NULL COMMENT 'M蛋白定量结果（单位g/L）';
ALTER TABLE project2.t_hospitaled_laboratory_examination ADD hospitalExaminationTopMP varchar(64) NULL COMMENT 'M蛋白峰值（单位为%）';
ALTER TABLE project2.t_hospitaled_laboratory_examination ADD hospitalExaminationMPResult varchar(64) NULL COMMENT 'M蛋白定量结果（单位g/L）';
ALTER TABLE project2.t_mm_cure_history ADD curePlanStepOther varchar(64) NULL COMMENT '其他治疗步骤';
ALTER TABLE project2.t_mm_cure_history ADD curePlanStep int(11) NULL COMMENT '治疗方案步骤';
ALTER TABLE project2.t_hospitalized_info ADD hospitalCurePlanStep int(11) NULL;
ALTER TABLE project2.t_hospitalized_info ADD hospitalCurePlanStepOther varchar(64) NULL;
ALTER TABLE project2.t_hospitalized_info ADD changeCurePlanStep int(11) NULL;
ALTER TABLE project2.t_hospitalized_info ADD changeCurePlanStepOther varchar(64) NULL;
ALTER TABLE project2.t_followup_info ADD curePlanStepOther varchar(64) NULL;
ALTER TABLE project2.t_followup_info ADD curePlanStep int(11) NULL;
ALTER TABLE project2.t_followup_info ADD followupProgress int(11) NULL;





