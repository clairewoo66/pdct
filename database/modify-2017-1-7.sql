ALTER TABLE project2.t_diagnosis_laboratory_examination ADD diagnosisExaminationNStatus int(11) NULL COMMENT '是否有尿M蛋白检查';
ALTER TABLE project2.t_hospitaled_laboratory_examination ADD hospitalExaminationNStatus int(11) NULL COMMENT '是否有尿M蛋白检查';
ALTER TABLE project2.t_hospitalized_info ADD hospitalCureCycle varchar(32) NULL COMMENT '住院周期';
ALTER TABLE project2.t_hospitaled_cost ADD otherCostValue varchar(64) NULL;
ALTER TABLE project2.t_hospitaled_cost ADD otherCostName varchar(64) NULL;
ALTER TABLE project2.t_followup_chemotherapy_item ADD consumptionSize varchar(128) NULL COMMENT '剂量单位';
ALTER TABLE project2.t_hospitaled_chemotherapy_item ADD consumptionSize varchar(128) NULL COMMENT '剂量单位';
CREATE TABLE project2.t_hospitaled_cost_other (
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(64) NULL,
	value varchar(64) NULL,
	`order` int(11) NULL,
	costId int(11) NOT NULL,
	CONSTRAINT t_hospitaled_cost_other_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='住院费用其他部分';

ALTER TABLE project2.t_followup_info ADD otherCostName varchar(64) NULL;

CREATE TABLE project2.t_followup_cost_other (
	id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(64) NULL,
	value varchar(64) NULL,
	rate varchar(64) NULL,
	`index` int(11) NULL,
	followupid int(11) NOT NULL,
	CONSTRAINT t_followup_cost_other_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
ALTER TABLE `t_diagnosis_info` ADD `diagnosisSTXTime` VARCHAR(64) NULL FIRST;