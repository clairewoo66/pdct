/*
Navicat MySQL Data Transfer

Source Server         : LocalDB
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : projectnew

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-11-14 20:23:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_diagnosis_complication_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_complication_item`;
CREATE TABLE `t_diagnosis_complication_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL COMMENT '编号',
  `name` varchar(128) DEFAULT NULL COMMENT '疾病名称',
  `diagnosisDate` varchar(32) DEFAULT NULL COMMENT '诊断信息',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '诊断信息ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建日期',
  `updateDate` datetime DEFAULT NULL COMMENT ' 更新日期',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-3.0诊断时疾病相关并发症';

-- ----------------------------
-- Records of t_diagnosis_complication_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_diagnosis_complication_status`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_complication_status`;
CREATE TABLE `t_diagnosis_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `result` int(11) DEFAULT NULL COMMENT '项目结果集（是：1，否：2）',
  `index` int(11) DEFAULT NULL COMMENT '其他可增长项序列',
  `diagnosisid` int(11) DEFAULT NULL COMMENT '疾病诊断信息表ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建日期',
  `updateDate` datetime DEFAULT NULL COMMENT '更新日期',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Records of t_diagnosis_complication_status
-- ----------------------------

-- ----------------------------
-- Table structure for `t_diagnosis_fish_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_fish_item`;
CREATE TABLE `t_diagnosis_fish_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查类型',
  `rate` varchar(128) DEFAULT NULL COMMENT '比例',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '检查ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-10fish检查';

-- ----------------------------
-- Records of t_diagnosis_fish_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_diagnosis_iconography_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_iconography_item`;
CREATE TABLE `t_diagnosis_iconography_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变位置',
  `count` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变数量',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '诊断ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新日期',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-8疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Records of t_diagnosis_iconography_item
-- ----------------------------
INSERT INTO `t_diagnosis_iconography_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_diagnosis_iconography_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_diagnosis_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_info`;
CREATE TABLE `t_diagnosis_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosisDate` varchar(64) DEFAULT NULL COMMENT '初次诊断时间',
  `invasionDiagnosis` int(1) DEFAULT NULL COMMENT '诊断时是否发生髓外侵犯(1：是，2：否）',
  `clinicTypeDS` int(5) DEFAULT NULL COMMENT 'Durie-Salmon分期法（Ia期：1，Ib期：2，IIa期：3，IIb期：4，IIIa期：5，IIIb期：6）',
  `clinicTypeISS` int(5) DEFAULT NULL COMMENT 'ISS国际分期系统（I期：1，II期：2，III期：3）',
  `bloodResultId` int(11) DEFAULT NULL,
  `urineResultId` int(11) DEFAULT NULL,
  `diagnosisImmunoglobulinIgg` int(11) DEFAULT NULL COMMENT 'IgG(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinIga` int(11) DEFAULT NULL COMMENT 'IgA(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinIgm` int(11) DEFAULT NULL COMMENT 'IgM(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinIgd` int(11) DEFAULT NULL COMMENT 'IgD(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinIge` int(11) DEFAULT NULL COMMENT 'IgE(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinLightChain` int(11) DEFAULT NULL COMMENT '轻链型(k轻链：1，λ轻链：2)',
  `diagnosisImmunoglobulinDoubleClone` int(11) DEFAULT NULL COMMENT '双克隆（选中：1）',
  `diagnosisImmunoglobulinSecretion` int(11) DEFAULT NULL COMMENT '非分泌型/寡分泌型（选中：1）',
  `diagnosisImmunoglobulinEvaluate` int(11) DEFAULT NULL COMMENT '未评价/未知（选中：1）',
  `diagnosisLaboratoryExaminationId` int(11) DEFAULT NULL,
  `diagnosisFishStatus` int(5) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集表-疾病诊断信息-3疾病诊断信息';

-- ----------------------------
-- Records of t_diagnosis_info
-- ----------------------------
INSERT INTO `t_diagnosis_info` VALUES ('3', null, null, '0', '0', '5', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_info` VALUES ('4', null, null, '0', '0', '7', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_info` VALUES ('6', null, null, '0', '0', '11', '12', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_diagnosis_laboratory_examination`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_laboratory_examination`;
CREATE TABLE `t_diagnosis_laboratory_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosisExaminationXueStatus` int(1) DEFAULT NULL COMMENT '是否有血清免疫固定电泳检查（是：1，否：2）',
  `diagnosisExaminationXIgg` int(11) DEFAULT NULL COMMENT 'IgG(阳性：1，阴性：2)',
  `diagnosisExaminationXIga` int(11) DEFAULT NULL COMMENT 'IgA(阳性：1，阴性：2)',
  `diagnosisExaminationXIgm` int(11) DEFAULT NULL COMMENT 'IgM(阳性：1，阴性：2)',
  `diagnosisExaminationXIge` int(11) DEFAULT NULL COMMENT 'IgE(阳性：1，阴性：2)',
  `diagnosisExaminationXIgd` int(11) DEFAULT NULL COMMENT 'IgD(阳性：1，阴性：2)',
  `diagnosisExaminationXkLightChain` int(11) DEFAULT NULL COMMENT '血K轻链(阳性：1，阴性：2)',
  `diagnosisExaminationXnLightChain` int(11) DEFAULT NULL COMMENT '血λ轻链(阳性：1，阴性：2)',
  `diagnosisExaminationNnStatus` int(1) DEFAULT NULL COMMENT '是否有尿免疫固定电泳检查（是：1，否：2）',
  `diagnosisExaminationNkLightChain` int(11) DEFAULT NULL COMMENT '尿K轻链(阳性：1，阴性：2)',
  `diagnosisExaminationNnLightChain` int(11) DEFAULT NULL COMMENT '尿λ轻链(阳性：1，阴性：2)',
  `diagnosisExaminationNIgg` varchar(32) DEFAULT NULL COMMENT 'IgG（g/l）',
  `diagnosisExaminationNIga` varchar(32) DEFAULT NULL COMMENT 'IgA（g/l）',
  `diagnosisExaminationNIgm` varchar(32) DEFAULT NULL COMMENT 'IgM（g/l）',
  `diagnosisExaminationNIge` varchar(32) DEFAULT NULL COMMENT 'IgE（IU/ml）',
  `diagnosisExaminationNIgd` varchar(32) DEFAULT NULL COMMENT 'IgD（g/l）',
  `diagnosisExaminationXkLightChainStatus` int(1) DEFAULT NULL COMMENT '是否有血清游离轻链检查（是：1，否：2）',
  `diagnosisExaminationXYkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `diagnosisExaminationXYnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `diagnosisExaminationXYknLightChain` varchar(32) DEFAULT NULL COMMENT '轻链K/λ比值',
  `diagnosisExaminationNMkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `diagnosisExaminationNMnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `diagnosisExaminationH24` varchar(32) DEFAULT NULL COMMENT '24小时尿蛋白定量（g/24h）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_diagnosis_laboratory_examination
-- ----------------------------
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_diagnosis_parenchyma_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_parenchyma_item`;
CREATE TABLE `t_diagnosis_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` int(11) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` int(11) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '诊断ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-9疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_diagnosis_parenchyma_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_diagnosis_plasmacyte_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_plasmacyte_item`;
CREATE TABLE `t_diagnosis_plasmacyte_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) DEFAULT NULL COMMENT '浆细胞类型',
  `rate` varchar(128) DEFAULT NULL COMMENT '浆细胞比例',
  `index` int(11) DEFAULT NULL,
  `diagnosisId` int(11) DEFAULT NULL COMMENT '诊断ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-7疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_diagnosis_plasmacyte_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_followup_badinformation_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_badinformation_item`;
CREATE TABLE `t_followup_badinformation_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL COMMENT '编号',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `badinformationName` varchar(256) DEFAULT NULL COMMENT '不良事件名称',
  `badinformationDate` varchar(64) DEFAULT NULL COMMENT '记录日期',
  `badinformationLevel` int(11) DEFAULT NULL COMMENT '严重程度评估（轻度：1，中度：2，严重：3）',
  `badinformationCctaeStatus` int(11) DEFAULT NULL COMMENT '是否采用CTC-AE3.0评估（是：1，否：2）',
  `badinformationCctaeLevel` int(11) DEFAULT NULL COMMENT 'CTC-AE3.0等级(1：1，2：2，3：3，4：4，5：5）',
  `badinformationMedicineRealation` int(11) DEFAULT NULL COMMENT '与当前治疗药物的关系（无关：1，可能无关：2，可能有关：3，很可能有关：4，有关：5：）',
  `badinformationNonMedicineRealation` int(11) DEFAULT NULL COMMENT '与当前非治疗药物的关系（无关：1，可能无关：2，可能有关：3，很可能有关：4，有关：5：）',
  `badinformationSpecialInformation` int(11) DEFAULT NULL COMMENT '特殊情况',
  `badinformationPregnant` int(11) DEFAULT NULL COMMENT '怀孕（流产:1，胎儿死亡：2，死胎：3，先天性异常：4，异位妊娠：5）',
  `badinformationOutcomeOfSubjects` int(11) DEFAULT NULL COMMENT '受试者转规（恢复：1，尚未恢复：2，死于不良事件：3，未知：4）',
  `badinformationCritical` int(1) DEFAULT NULL COMMENT '是否作为严重不良事件报告（是：1，否：2）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-13不良事件';

-- ----------------------------
-- Records of t_followup_badinformation_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_followup_chemotherapy_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_chemotherapy_item`;
CREATE TABLE `t_followup_chemotherapy_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '药品名',
  `consumption` varchar(2048) DEFAULT NULL COMMENT '药品计量',
  `frequency` varchar(2048) DEFAULT NULL COMMENT '用药频率',
  `buyOuter` int(11) DEFAULT NULL COMMENT '是否外出购药（是：1，否：2）',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-9化疗药物信息';

-- ----------------------------
-- Records of t_followup_chemotherapy_item
-- ----------------------------
INSERT INTO `t_followup_chemotherapy_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_followup_chemotherapy_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_followup_complication_status`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_complication_status`;
CREATE TABLE `t_followup_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `result` int(11) DEFAULT NULL COMMENT '项目结果集（是：1，否：2）',
  `index` int(11) DEFAULT NULL COMMENT '其他可增长项序列',
  `followupid` int(11) DEFAULT NULL COMMENT '随访ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Records of t_followup_complication_status
-- ----------------------------

-- ----------------------------
-- Table structure for `t_followup_iconography_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_iconography_item`;
CREATE TABLE `t_followup_iconography_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变位置',
  `count` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变数量',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-7疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Records of t_followup_iconography_item
-- ----------------------------
INSERT INTO `t_followup_iconography_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_followup_iconography_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_followup_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_info`;
CREATE TABLE `t_followup_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratoryId` int(11) DEFAULT NULL COMMENT '随访诊断ID',
  `invasionDiagnosis` int(11) DEFAULT NULL COMMENT '诊断时是否发生髓外侵犯(1：是，2：否）',
  `clinicalStagesDS` int(5) DEFAULT NULL COMMENT 'Durie-Salmon分期法（Ia期：1，Ib期：2，IIa期：3，IIb期：4，IIIa期：5，IIIb期：6）',
  `clinicalStagesISS` int(5) DEFAULT NULL COMMENT 'ISS国际分期系统（I期：1，II期：2，III期：3）',
  `inHelpProject` int(5) DEFAULT NULL COMMENT '患者是否参加援助计划（1：是，2：否）',
  `helpProjectName` varchar(256) DEFAULT '' COMMENT '患者援助计划的计划名称',
  `helpProjectStartDate` varchar(32) DEFAULT NULL COMMENT '患者援助计划开始时间',
  `helpProjectEndDate` varchar(32) DEFAULT NULL COMMENT '患者援助计划结束时间',
  `evaluateStatus` int(11) DEFAULT NULL COMMENT '本次随访是否进行疗效评估（1：是，2：否）',
  `evaluateRule` int(11) DEFAULT NULL COMMENT '评估标准',
  `evaluateRuleOther` varchar(256) DEFAULT NULL COMMENT '评估的标准（其他）',
  `evaluateResult` int(11) DEFAULT NULL COMMENT '疗效评估结果',
  `evaluateResultOther` varchar(256) DEFAULT NULL COMMENT '疗效评估结果（其他）',
  `times` int(11) DEFAULT NULL COMMENT '过去一年中总的门诊随访次数',
  `timesEmergency` int(11) DEFAULT NULL COMMENT '过去一年中总的急诊次数',
  `lastCostTotal` double DEFAULT NULL COMMENT '最近一次门诊费用（总费用）',
  `lastCostMed` double DEFAULT NULL COMMENT '最近一次门诊费用（药品费用）',
  `lastCostNonMed` double DEFAULT NULL COMMENT '最近一次门诊费用（非药品费用）',
  `lastEmergencyCostToal` double DEFAULT NULL COMMENT '最近一次急诊费用（总费用）',
  `lastEmergencyCostMed` double DEFAULT NULL COMMENT '最近一次急诊费用（药品费用）',
  `lastEmergencyCostNonMed` double DEFAULT NULL COMMENT '最近一次急诊费用（非药品费用）',
  `registrationCost` varchar(32) DEFAULT NULL COMMENT '挂号费',
  `registrationRate` varchar(32) DEFAULT NULL COMMENT '挂号费（公费报销比例）',
  `laboratoryCost` varchar(32) DEFAULT NULL COMMENT '实验室检查费',
  `laboratoryRate` varchar(32) DEFAULT NULL COMMENT '实验室检查费（公费报销 比例）',
  `iconographyCost` varchar(32) DEFAULT NULL COMMENT '影像检查费',
  `iconographyRate` varchar(32) DEFAULT NULL COMMENT '影像检查费（公费报销比例）',
  `drugCost` varchar(32) DEFAULT NULL COMMENT '药品费用',
  `drugRate` varchar(32) DEFAULT NULL COMMENT '药品费用（公费报销比例）',
  `otherCost` varchar(32) DEFAULT NULL COMMENT '其他费用',
  `otherRate` varchar(32) DEFAULT NULL COMMENT '其他费用（公费报销比例）',
  `totalCost` varchar(32) DEFAULT NULL COMMENT '费用合计',
  `totalRate` varchar(32) DEFAULT NULL COMMENT '费用合计（公费报销比例）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-回访信息表';

-- ----------------------------
-- Records of t_followup_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_followup_laboratory_examination`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_laboratory_examination`;
CREATE TABLE `t_followup_laboratory_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followupExaminationXueStatus` int(1) DEFAULT NULL COMMENT '是否有血清免疫固定电泳检查（是：1，否：2）',
  `followupExaminationXIgg` int(11) DEFAULT NULL COMMENT 'IgG(阳性：1，阴性：2)',
  `followupExaminationXIga` int(11) DEFAULT NULL COMMENT 'IgA(阳性：1，阴性：2)',
  `followupExaminationXIgm` int(11) DEFAULT NULL COMMENT 'IgM(阳性：1，阴性：2)',
  `followupExaminationXIge` int(11) DEFAULT NULL COMMENT 'IgE(阳性：1，阴性：2)',
  `followupExaminationXIgd` int(11) DEFAULT NULL COMMENT 'IgD(阳性：1，阴性：2)',
  `followupExaminationXkLightChain` int(11) DEFAULT NULL COMMENT '血K轻链(阳性：1，阴性：2)',
  `followupExaminationXnLightChain` int(11) DEFAULT NULL COMMENT '血λ轻链(阳性：1，阴性：2)',
  `followupExaminationNnStatus` int(1) DEFAULT NULL COMMENT '是否有尿免疫固定电泳检查（是：1，否：2）',
  `followupExaminationNkLightChain` int(11) DEFAULT NULL COMMENT '尿K轻链(阳性：1，阴性：2)',
  `followupExaminationNnLightChain` int(11) DEFAULT NULL COMMENT '尿λ轻链(阳性：1，阴性：2)',
  `followupExaminationNIgg` varchar(32) DEFAULT NULL COMMENT 'IgG（g/l）',
  `followupExaminationNIga` varchar(32) DEFAULT NULL COMMENT 'IgA（g/l）',
  `followupExaminationNIgm` varchar(32) DEFAULT NULL COMMENT 'IgM（g/l）',
  `followupExaminationNIge` varchar(32) DEFAULT NULL COMMENT 'IgE（IU/ml）',
  `followupExaminationNIgd` varchar(32) DEFAULT NULL COMMENT 'IgD（g/l）',
  `followupExaminationXkLightChainStatus` int(1) DEFAULT NULL COMMENT '是否有血清游离轻链检查（是：1，否：2）',
  `followupExaminationXYkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `followupExaminationXYnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `followupExaminationXYknLightChain` varchar(32) DEFAULT NULL COMMENT '轻链K/λ比值',
  `followupExaminationNMkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `followupExaminationNMnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `followupExaminationH24` varchar(32) DEFAULT NULL COMMENT '24小时尿蛋白定量（g/24h）',
  `followupTotalProtein` varchar(32) DEFAULT NULL COMMENT '总蛋白',
  `followupGlobulinProtein` varchar(32) DEFAULT NULL COMMENT '球蛋白',
  `followupWhiteProtein` varchar(32) DEFAULT NULL COMMENT '白蛋白',
  `followupAminotransferase` varchar(32) DEFAULT NULL COMMENT '谷丙转氨酶',
  `followupAst` varchar(32) DEFAULT NULL COMMENT '天门冬氨酸氨基转移酶',
  `followupGgt` varchar(32) DEFAULT NULL COMMENT 'γ谷氨酰基转移酶',
  `followupLdh` varchar(32) DEFAULT NULL COMMENT '乳酸脱氢酶',
  `followupUrea` varchar(32) DEFAULT NULL COMMENT '尿素',
  `followupCr` varchar(32) DEFAULT NULL COMMENT '肌酐',
  `followupCa` varchar(32) DEFAULT NULL COMMENT '钙',
  `followupPhoshatase` varchar(32) DEFAULT NULL COMMENT '碱性磷酸酶',
  `followupBeta2GlobulinProtein` varchar(32) DEFAULT NULL COMMENT 'beta2微球蛋白',
  `followupWhiteBloodCell` varchar(32) DEFAULT NULL,
  `followupNeutrophils` varchar(32) DEFAULT NULL COMMENT '中性粒细胞',
  `followupLymphocyte` varchar(32) DEFAULT NULL COMMENT '淋巴细胞',
  `followupHemoglobin` varchar(32) DEFAULT NULL,
  `followupPlateletCount` varchar(32) DEFAULT NULL COMMENT '血小板计数',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-5疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_followup_laboratory_examination
-- ----------------------------
INSERT INTO `t_followup_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_followup_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_followup_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_followup_parenchyma_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_parenchyma_item`;
CREATE TABLE `t_followup_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` int(11) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` int(11) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-8疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_followup_parenchyma_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_followup_plasmacyte_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_plasmacyte_item`;
CREATE TABLE `t_followup_plasmacyte_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) DEFAULT NULL COMMENT '浆细胞类型',
  `rate` varchar(128) DEFAULT NULL COMMENT '浆细胞比例',
  `index` int(11) DEFAULT NULL,
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一次随访信息采集表-6疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_followup_plasmacyte_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospital`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospital`;
CREATE TABLE `t_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL COMMENT '医院名称',
  `code` varchar(128) DEFAULT NULL COMMENT '医院编号',
  `deleted` int(1) DEFAULT '0' COMMENT '是否删除该条记录（1：是，0否）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='医院信息表';

-- ----------------------------
-- Records of t_hospital
-- ----------------------------
INSERT INTO `t_hospital` VALUES ('6', '北京朝阳医院', 'BJCYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('7', '北大人民医院', 'BDRMYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('8', '天津血研所', 'TJXYS', '0', null, null);
INSERT INTO `t_hospital` VALUES ('9', '北京协和医院', 'BJXHYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('10', '上海长征医院', 'SHCZYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('11', '上海瑞金医院', 'SHRJYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('12', '苏州大学附属第一医院', 'SZDXFSDYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('14', '浙大医院', 'ZDYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('15', '中山大学附属第一医院', 'ZSDXFSDYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('16', '华西医院', 'HXYY', '0', null, null);

-- ----------------------------
-- Table structure for `t_hospitaled_badinformation_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_badinformation_item`;
CREATE TABLE `t_hospitaled_badinformation_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL COMMENT '编号',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `badinformationName` varchar(256) DEFAULT NULL COMMENT '不良事件名称',
  `badinformationDate` varchar(64) DEFAULT NULL COMMENT '记录日期',
  `badinformationLevel` int(11) DEFAULT NULL COMMENT '严重程度评估（轻度：1，中度：2，严重：3）',
  `badinformationCctaeStatus` int(11) DEFAULT NULL COMMENT '是否采用CTC-AE3.0评估（是：1，否：2）',
  `badinformationCctaeLevel` int(11) DEFAULT NULL COMMENT 'CTC-AE3.0等级(1：1，2：2，3：3，4：4，5：5）',
  `badinformationMedicineRealation` int(11) DEFAULT NULL COMMENT '与当前治疗药物的关系（无关：1，可能无关：2，可能有关：3，很可能有关：4，有关：5：）',
  `badinformationNonMedicineRealation` int(11) DEFAULT NULL COMMENT '与当前非治疗药物的关系（无关：1，可能无关：2，可能有关：3，很可能有关：4，有关：5：）',
  `badinformationSpecialInformation` int(11) DEFAULT NULL COMMENT '特殊情况',
  `badinformationPregnant` int(11) DEFAULT NULL COMMENT '怀孕（流产:1，胎儿死亡：2，死胎：3，先天性异常：4，异位妊娠：5）',
  `badinformationOutcomeOfSubjects` int(11) DEFAULT NULL COMMENT '受试者转规（恢复：1，尚未恢复：2，死于不良事件：3，未知：4）',
  `badinformationCritical` int(1) DEFAULT NULL COMMENT '是否作为严重不良事件报告（是：1，否：2）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-13不良事件';

-- ----------------------------
-- Records of t_hospitaled_badinformation_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospitaled_chemotherapy_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_chemotherapy_item`;
CREATE TABLE `t_hospitaled_chemotherapy_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '药品名',
  `consumption` varchar(2048) DEFAULT NULL COMMENT '药品计量',
  `frequency` varchar(2048) DEFAULT NULL COMMENT '用药频率',
  `buyOuter` int(11) DEFAULT NULL COMMENT '是否外出购药（是：1，否：2）',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-9化疗药物信息';

-- ----------------------------
-- Records of t_hospitaled_chemotherapy_item
-- ----------------------------
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null, null);
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_hospitaled_complication_status`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_complication_status`;
CREATE TABLE `t_hospitaled_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `result` int(11) DEFAULT NULL COMMENT '项目结果集（是：1，否：2）',
  `index` int(11) DEFAULT NULL COMMENT '其他可增长项序列',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_hospitaled_complication_status
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospitaled_cost`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_cost`;
CREATE TABLE `t_hospitaled_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `westernMed` double DEFAULT NULL COMMENT '西药费',
  `cure` double DEFAULT NULL COMMENT '治疗费',
  `check` double DEFAULT NULL COMMENT '检查费',
  `inspect` double DEFAULT NULL COMMENT '检验费',
  `material` double DEFAULT NULL COMMENT '材料费',
  `bed` double DEFAULT NULL COMMENT '床位费',
  `food` double DEFAULT NULL COMMENT '膳食费',
  `nursing` double DEFAULT NULL COMMENT '护理费',
  `other` double DEFAULT NULL COMMENT '其他费',
  `total` double DEFAULT NULL COMMENT '总费用',
  `self` double DEFAULT NULL COMMENT '自费项目小计',
  `outer` double DEFAULT NULL COMMENT '院外购药费',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-14本次住院信息';

-- ----------------------------
-- Records of t_hospitaled_cost
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospitaled_iconography_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_iconography_item`;
CREATE TABLE `t_hospitaled_iconography_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变位置',
  `count` varchar(2048) DEFAULT NULL COMMENT '溶骨性病变数量',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-5疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Records of t_hospitaled_iconography_item
-- ----------------------------
INSERT INTO `t_hospitaled_iconography_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null);
INSERT INTO `t_hospitaled_iconography_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_hospitaled_laboratory_examination`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_laboratory_examination`;
CREATE TABLE `t_hospitaled_laboratory_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospitalExaminationXueStatus` int(1) DEFAULT NULL COMMENT '是否有血清免疫固定电泳检查（是：1，否：2）',
  `hospitalExaminationXIgg` int(11) DEFAULT NULL COMMENT 'IgG(阳性：1，阴性：2)',
  `hospitalExaminationXIga` int(11) DEFAULT NULL COMMENT 'IgA(阳性：1，阴性：2)',
  `hospitalExaminationXIgm` int(11) DEFAULT NULL COMMENT 'IgM(阳性：1，阴性：2)',
  `hospitalExaminationXIge` int(11) DEFAULT NULL COMMENT 'IgE(阳性：1，阴性：2)',
  `hospitalExaminationXIgd` int(11) DEFAULT NULL COMMENT 'IgD(阳性：1，阴性：2)',
  `hospitalExaminationXkLightChain` int(11) DEFAULT NULL COMMENT '血K轻链(阳性：1，阴性：2)',
  `hospitalExaminationXnLightChain` int(11) DEFAULT NULL COMMENT '血λ轻链(阳性：1，阴性：2)',
  `hospitalExaminationNnStatus` int(1) DEFAULT NULL COMMENT '是否有尿免疫固定电泳检查（是：1，否：2）',
  `hospitalExaminationNkLightChain` int(11) DEFAULT NULL COMMENT '尿K轻链(阳性：1，阴性：2)',
  `hospitalExaminationNnLightChain` int(11) DEFAULT NULL COMMENT '尿λ轻链(阳性：1，阴性：2)',
  `hospitalExaminationNIgg` varchar(32) DEFAULT NULL COMMENT 'IgG（g/l）',
  `hospitalExaminationNIga` varchar(32) DEFAULT NULL COMMENT 'IgA（g/l）',
  `hospitalExaminationNIgm` varchar(32) DEFAULT NULL COMMENT 'IgM（g/l）',
  `hospitalExaminationNIge` varchar(32) DEFAULT NULL COMMENT 'IgE（IU/ml）',
  `hospitalExaminationNIgd` varchar(32) DEFAULT NULL COMMENT 'IgD（g/l）',
  `hospitalExaminationXkLightChainStatus` int(1) DEFAULT NULL COMMENT '是否有血清游离轻链检查（是：1，否：2）',
  `hospitalExaminationXYkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `hospitalExaminationXYnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `hospitalExaminationXYknLightChain` varchar(32) DEFAULT NULL COMMENT '轻链K/λ比值',
  `hospitalExaminationNMkLightChain` varchar(32) DEFAULT NULL COMMENT 'K轻链（mg/dl）',
  `hospitalExaminationNMnLightChain` varchar(32) DEFAULT NULL COMMENT 'λ轻链（mg/dl）',
  `hospitalExaminationH24` varchar(32) DEFAULT NULL COMMENT '24小时尿蛋白定量（g/24h）',
  `hospitalTotalProtein` varchar(32) DEFAULT NULL COMMENT '总蛋白',
  `hospitalGlobulinProtein` varchar(32) DEFAULT NULL COMMENT '球蛋白',
  `hospitalWhiteProtein` varchar(32) DEFAULT NULL COMMENT '白蛋白',
  `hospitalAminotransferase` varchar(32) DEFAULT NULL COMMENT '谷丙转氨酶',
  `hospitalAst` varchar(32) DEFAULT NULL COMMENT '天门冬氨酸氨基转移酶',
  `hospitalGgt` varchar(32) DEFAULT NULL COMMENT 'γ谷氨酰基转移酶',
  `hospitalLdh` varchar(32) DEFAULT NULL COMMENT '乳酸脱氢酶',
  `hospitalUrea` varchar(32) DEFAULT NULL COMMENT '尿素',
  `hospitalCr` varchar(32) DEFAULT NULL COMMENT '肌酐',
  `hospitalCa` varchar(32) DEFAULT NULL COMMENT '钙',
  `hospitalPhoshatase` varchar(32) DEFAULT NULL COMMENT '碱性磷酸酶',
  `hospitalBeta2GlobulinProtein` varchar(32) DEFAULT NULL COMMENT 'beta2微球蛋白',
  `hospitalWhiteBloodCell` varchar(32) DEFAULT NULL,
  `hospitalNeutrophils` varchar(32) DEFAULT NULL COMMENT '中性粒细胞',
  `hospitalLymphocyte` varchar(32) DEFAULT NULL COMMENT '淋巴细胞',
  `hospitalHemoglobin` varchar(32) DEFAULT NULL,
  `hospitalPlateletCount` varchar(32) DEFAULT NULL COMMENT '血小板计数',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-3疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_hospitaled_laboratory_examination
-- ----------------------------
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_hospitaled_parenchyma_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_parenchyma_item`;
CREATE TABLE `t_hospitaled_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` int(11) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` int(11) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间但次住院基线信息-6疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_hospitaled_parenchyma_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospitaled_plasmacyte_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_plasmacyte_item`;
CREATE TABLE `t_hospitaled_plasmacyte_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) DEFAULT NULL COMMENT '浆细胞类型',
  `rate` varchar(128) DEFAULT NULL COMMENT '浆细胞比例',
  `index` int(11) DEFAULT NULL,
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-4疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_hospitaled_plasmacyte_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_hospitaled_support_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_support_item`;
CREATE TABLE `t_hospitaled_support_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '药物治疗/非药物治疗',
  `consumption` varchar(64) DEFAULT NULL COMMENT '用药计量',
  `frequency` varchar(64) DEFAULT NULL COMMENT '用药频率',
  `fitDrugs` varchar(64) DEFAULT NULL COMMENT '药物适应症',
  `buyOuter` int(11) DEFAULT NULL COMMENT '是否外出购药（是：1，否：2）',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-10对症支持治疗信息';

-- ----------------------------
-- Records of t_hospitaled_support_item
-- ----------------------------
INSERT INTO `t_hospitaled_support_item` VALUES ('3', 'X光', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('4', 'CT', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('6', '其他', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('7', 'X光', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('8', 'CT', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('9', '其他', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('10', '其他', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('13', 'X光', '位置', 'fdsfds', null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_support_item` VALUES ('14', 'CT', '位置', 'fdsfds', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_hospitalized_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitalized_info`;
CREATE TABLE `t_hospitalized_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` varchar(64) DEFAULT NULL COMMENT '入院日期',
  `endTime` varchar(64) DEFAULT NULL COMMENT '出院日期',
  `ecogMark` int(11) DEFAULT NULL COMMENT 'ECOG评分（0分：1，1分：2，2分：3，3分：4，4分：5，5分：6）',
  `karnofskyMark` int(11) DEFAULT NULL COMMENT 'Karnofsky评分',
  `invasionDiagnosis` int(5) DEFAULT NULL COMMENT '诊断时是否发生髓外侵犯(1：是，2：否）',
  `clinicalStagesDS` int(5) DEFAULT NULL,
  `clinicalStagesISS` int(5) DEFAULT NULL,
  `curePlan` varchar(1024) DEFAULT NULL COMMENT '治疗方案',
  `changeCurePlan` int(5) DEFAULT NULL COMMENT '是否变更治疗方案（是：1，否：2）',
  `curePlanAlter` varchar(1024) DEFAULT NULL COMMENT '变更后的方案',
  `changePlanReason` varchar(1024) DEFAULT NULL COMMENT '变更方案原因',
  `evaluateAfterCure` int(5) DEFAULT NULL COMMENT '治疗结束后是否进行疗效评估',
  `evaluateRule` varchar(64) DEFAULT NULL COMMENT '评估标准（IMWG）',
  `evaluateRuleOther` varchar(64) DEFAULT NULL COMMENT '疗效评估标准（其他）',
  `evaluateResult` int(11) DEFAULT NULL COMMENT '疗效评估结果(mCR:1,iCR:2,sCR:3,CR:4,VGPR:5,PR:6,MR:7,SD:8,PD:9）',
  `evaluateResultOther` varchar(64) DEFAULT NULL COMMENT '疗效评估结果(其他）',
  `adrAfterCure` int(5) DEFAULT NULL COMMENT '本次住院是否记录不良事件',
  `fkcostid` int(11) DEFAULT NULL,
  `urineMCheckTime` varchar(64) DEFAULT NULL,
  `urineMCheckResult` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-11疗效评估信息';

-- ----------------------------
-- Records of t_hospitalized_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataUrl` varchar(128) NOT NULL,
  `menuClass` varchar(128) NOT NULL,
  `menuName` varchar(128) NOT NULL,
  `parentId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `menuCode` varchar(64) NOT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='菜单信息表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('100', '#', 'menu-icon fa fa-desktop', '系统管理', '0', '1', '系统管理', 'system', null, null, null);
INSERT INTO `t_menu` VALUES ('101', 'page/user', 'menu-icon fa fa-user', '用户管理', '100', '1', null, 'user', null, null, null);
INSERT INTO `t_menu` VALUES ('102', 'page/role', 'menu-icon fa fa-user', '角色管理', '100', '2', null, 'role', null, null, null);
INSERT INTO `t_menu` VALUES ('103', 'page/menu', 'menu-icon fa fa-list', '菜单授权', '100', '3', null, 'menu', null, null, null);
INSERT INTO `t_menu` VALUES ('104', 'page/hospital', 'menu-icon fa fa-hospital', '医院管理', '100', '4', null, 'hospital', null, null, null);
INSERT INTO `t_menu` VALUES ('105', 'page/monitor', 'menu-icon fa fa-shield', '监控管理', '100', '5', '监控管理', 'durid', null, null, null);
INSERT INTO `t_menu` VALUES ('200', '#', 'menu-icon fa fa-wheelchair', '病人管理', '0', '2', '病人管理', 'patient', null, null, null);
INSERT INTO `t_menu` VALUES ('201', 'page/patientSearch', 'menu-icon fa fa-search', '病例查询', '200', '1', '病例查询页面', 'patientSearch', null, null, null);
INSERT INTO `t_menu` VALUES ('202', 'page/acquisition', 'menu-icon fa fa-plus', '新增采集', '200', '2', '新增采集表', 'acquisition', null, null, null);

-- ----------------------------
-- Table structure for `t_mm_cure_history`
-- ----------------------------
DROP TABLE IF EXISTS `t_mm_cure_history`;
CREATE TABLE `t_mm_cure_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curePlan` varchar(2048) DEFAULT NULL COMMENT '治疗方案',
  `startYear` int(11) DEFAULT NULL COMMENT '治疗启始时间',
  `startMonth` int(11) DEFAULT NULL COMMENT '治疗启始时间',
  `endYear` int(11) DEFAULT NULL COMMENT '治疗结束时间',
  `endMonth` int(11) DEFAULT NULL COMMENT '治疗结束时间',
  `cycleCount` int(11) DEFAULT NULL COMMENT '本次治疗方案周期数',
  `evaluateAfterCure` int(11) DEFAULT NULL COMMENT '治疗结束是否进行治疗评估（是：1，否：2）',
  `evaluateRule` varchar(256) DEFAULT NULL COMMENT '治疗评估（IMWG）',
  `evaluateRuleOther` varchar(256) DEFAULT NULL COMMENT '治疗评估（其他）',
  `evaluateResultOther` varchar(256) DEFAULT NULL COMMENT '治疗评估结果(mCR:1,iCR:2,sCR:3,CR:4,VGPR:5,PR:6,MR:7,SD:8,PD:9）',
  `evaluateResult` int(5) DEFAULT NULL COMMENT '治疗评估结果(其他)',
  `index` int(11) DEFAULT NULL COMMENT '第几次评估',
  `patientId` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-11既往MM相关的治疗信息';

-- ----------------------------
-- Records of t_mm_cure_history
-- ----------------------------

-- ----------------------------
-- Table structure for `t_patient_contactinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_contactinfo`;
CREATE TABLE `t_patient_contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(64) NOT NULL COMMENT '病人ID',
  `livingState` int(1) DEFAULT NULL COMMENT '存活状态',
  `agreeVisit` int(1) DEFAULT NULL COMMENT '生存者是否愿意参加随访',
  `visitDate` varchar(32) DEFAULT NULL COMMENT '随访日期',
  `deathDate` varchar(32) DEFAULT NULL COMMENT '死亡时间',
  `deathReason` varchar(256) DEFAULT NULL COMMENT '死亡原因',
  `contactNurse` varchar(64) DEFAULT NULL COMMENT '患者联系护士',
  `contactDate` varchar(32) DEFAULT NULL COMMENT '患者联系日期',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-1患者联系信息';

-- ----------------------------
-- Records of t_patient_contactinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `t_patient_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_info`;
CREATE TABLE `t_patient_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(64) DEFAULT NULL COMMENT '患者研究编号;(用户手动输入唯一）',
  `fkhostpitalid` int(11) DEFAULT NULL COMMENT '就诊医院id号',
  `birthday` varchar(64) DEFAULT NULL COMMENT '出生日期',
  `gender` int(5) DEFAULT NULL COMMENT '1:男,2:女',
  `nation` varchar(64) DEFAULT NULL COMMENT '民族,"汉族"/其他',
  `place` int(5) DEFAULT NULL COMMENT '1:市区，2：郊区，3:农村',
  `maritalStatus` int(5) DEFAULT NULL COMMENT '婚姻状态: 1:未婚,2:已婚,3:离异,4:丧偶',
  `jobStatus` int(5) DEFAULT NULL COMMENT '工作状态: 1:在校学生,2:全职,3:待业;4:务农;5:退休',
  `height` varchar(32) DEFAULT NULL COMMENT '身高cm',
  `weight` varchar(32) DEFAULT NULL COMMENT '体重kg',
  `insuranceType` int(5) DEFAULT NULL COMMENT '医保类型:1:城镇职工医保,2:城镇居民医保,3:新农合,4:商业医保,5:完全自费,6,其他',
  `otherInsurance` varchar(128) DEFAULT NULL COMMENT '医保其他类型(请注明部分内容）',
  `eduLevel` int(5) DEFAULT NULL COMMENT '教育状态（1：高中以下，2：高中及中转，3：本科及大专，4：本科以上）',
  `ecogMark` int(5) DEFAULT NULL COMMENT 'ECOG评分:0-5',
  `karnofskyMark` varchar(128) DEFAULT NULL COMMENT 'Karnofsky评分',
  `smokingStatus` int(5) DEFAULT NULL COMMENT '1:从未吸烟,2:已经戒烟,3:仍然吸烟',
  `drinkStatus` int(11) DEFAULT NULL COMMENT '1:酗酒，2:偶尔，3：从未',
  `fkdiagnosisid` int(11) NOT NULL COMMENT '诊断信息',
  `followupid` int(5) DEFAULT NULL,
  `nationOther` varchar(32) DEFAULT NULL COMMENT '民族其他',
  `familyIncome` int(5) DEFAULT NULL COMMENT '家庭人均收入（1：低于5,000元，2：5,000-10,000元，3：10,001-15,000元，4：高于15,000）',
  `contactStatus` int(11) DEFAULT NULL COMMENT '联系患者状态;1:未完成,2:已完成,3:已死亡',
  `agreementStatus` int(11) DEFAULT NULL COMMENT '患者知情同意书状态：1:未完成,2:同意,3:拒绝;4:不适用',
  `followupStatus` int(11) DEFAULT NULL COMMENT '1:未完成,2:已完成,3:不适用',
  `acquisitionStatus` int(11) DEFAULT NULL COMMENT '回顾性数据采集表状态（1：未完成，2：已完成）',
  `deleted` int(1) DEFAULT '0' COMMENT '病人信息是否删除（1：是，0：否）',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `livingState` int(5) DEFAULT NULL COMMENT '存活状态（存活：1，死亡：2）',
  `deathReason` varchar(256) DEFAULT NULL COMMENT '死亡原因',
  `deathTime` varchar(32) DEFAULT NULL COMMENT '死亡时间',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patient_info
-- ----------------------------
INSERT INTO `t_patient_info` VALUES ('4', null, '2', '1970-01-01', '2', '0', '1', '2', '2', '170', '20', '2', '', '1', '3', '方法', '2', '1', '0', '0', '', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `t_patient_info` VALUES ('7', 'test3', '0', '1970-01-01', '0', '0', '0', '0', '0', null, null, '0', null, '0', '0', null, '0', '0', '6', '0', null, null, null, null, null, null, '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_patient_informed`
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_informed`;
CREATE TABLE `t_patient_informed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agreeInformedConsentStatus` int(11) DEFAULT NULL COMMENT '知情同意书签署结果（是：1，否;2）',
  `informedConsentDate` varchar(32) DEFAULT NULL COMMENT '签署日期',
  `contactNurse` varchar(64) DEFAULT NULL COMMENT '随访医生',
  `contactDate` varchar(32) DEFAULT NULL COMMENT '随访日期',
  `contactPalace` varchar(64) DEFAULT NULL COMMENT '随访场所',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-1，2知情同意书签署ijeg和随访工作信息';

-- ----------------------------
-- Records of t_patient_informed
-- ----------------------------

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `fkmenuid` int(11) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', 'user:add', '添加', '101', null, null, null, null);
INSERT INTO `t_permission` VALUES ('2', 'user:edit', '修改', '101', null, null, null, null);
INSERT INTO `t_permission` VALUES ('3', 'user:delete', '删除', '101', null, null, null, null);
INSERT INTO `t_permission` VALUES ('4', 'user:view', '查看', '101', null, null, null, null);
INSERT INTO `t_permission` VALUES ('5', 'role:add', '添加', '102', null, null, null, null);
INSERT INTO `t_permission` VALUES ('6', 'role:edit', '修改', '102', null, null, null, null);
INSERT INTO `t_permission` VALUES ('7', 'role:delete', '删除', '102', null, null, null, null);
INSERT INTO `t_permission` VALUES ('8', 'role:view', '查看', '102', null, null, null, null);
INSERT INTO `t_permission` VALUES ('9', 'menu:auth', '授权', '103', null, null, null, null);
INSERT INTO `t_permission` VALUES ('10', 'role:auth', '授权', '102', null, null, null, null);
INSERT INTO `t_permission` VALUES ('11', 'hospital:add', '添加', '104', null, null, null, null);
INSERT INTO `t_permission` VALUES ('12', 'hospital:edit', '修改', '104', null, null, null, null);
INSERT INTO `t_permission` VALUES ('13', 'hospital:delete', '删除', '104', null, null, null, null);
INSERT INTO `t_permission` VALUES ('14', 'hospital:view', '查找', '104', null, null, null, null);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `builtIn` int(11) NOT NULL DEFAULT '0',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'ADMIN', '管理员', '0', null, null, null);

-- ----------------------------
-- Table structure for `t_role2menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_role2menu`;
CREATE TABLE `t_role2menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkroleid` int(11) NOT NULL,
  `fkmenuid` int(11) NOT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='角色关联菜单表';

-- ----------------------------
-- Records of t_role2menu
-- ----------------------------
INSERT INTO `t_role2menu` VALUES ('22', '1', '100', null, null, null);
INSERT INTO `t_role2menu` VALUES ('23', '1', '101', null, null, null);
INSERT INTO `t_role2menu` VALUES ('24', '1', '102', null, null, null);
INSERT INTO `t_role2menu` VALUES ('25', '1', '103', null, null, null);
INSERT INTO `t_role2menu` VALUES ('26', '1', '105', null, null, null);
INSERT INTO `t_role2menu` VALUES ('27', '1', '200', null, null, null);
INSERT INTO `t_role2menu` VALUES ('28', '1', '201', null, null, null);
INSERT INTO `t_role2menu` VALUES ('29', '1', '202', null, null, null);
INSERT INTO `t_role2menu` VALUES ('30', '1', '1', null, null, null);
INSERT INTO `t_role2menu` VALUES ('31', '1', '104', null, null, null);

-- ----------------------------
-- Table structure for `t_role2permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role2permission`;
CREATE TABLE `t_role2permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkroleid` int(11) NOT NULL,
  `fkpermissionid` int(11) NOT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='角色关联权限表';

-- ----------------------------
-- Records of t_role2permission
-- ----------------------------
INSERT INTO `t_role2permission` VALUES ('7', '1', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('8', '1', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('9', '1', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('10', '1', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('15', '1', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('16', '1', '5', null, null, null);
INSERT INTO `t_role2permission` VALUES ('17', '1', '6', null, null, null);
INSERT INTO `t_role2permission` VALUES ('18', '1', '7', null, null, null);
INSERT INTO `t_role2permission` VALUES ('19', '1', '8', null, null, null);
INSERT INTO `t_role2permission` VALUES ('20', '1', '10', null, null, null);
INSERT INTO `t_role2permission` VALUES ('21', '1', '11', null, null, null);
INSERT INTO `t_role2permission` VALUES ('22', '1', '12', null, null, null);
INSERT INTO `t_role2permission` VALUES ('23', '1', '13', null, null, null);
INSERT INTO `t_role2permission` VALUES ('24', '1', '14', null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '用户姓名',
  `password` varchar(128) NOT NULL COMMENT 'MD5 密码',
  `username` varchar(32) NOT NULL COMMENT '用户登录名',
  `phone` varchar(16) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(128) DEFAULT NULL COMMENT '用户邮箱',
  `description` varchar(2048) DEFAULT NULL COMMENT '描述信息',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登陆时间,null表示未登录过',
  `fkroleid` bigint(20) DEFAULT '0' COMMENT '绑定角色id',
  `status` int(8) NOT NULL DEFAULT '1' COMMENT '状态:0:启用,1:禁用',
  `type` int(8) NOT NULL DEFAULT '1' COMMENT '类型:0:系统内建用户,1:普通用户',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'username', '13000000000', '12345678@qq.com', null, '2016-09-05 22:13:07', '2016-11-09 16:31:04', '1', '0', '1', null, null, null);
INSERT INTO `t_user` VALUES ('2', 'admin', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'test', '12143213', 'tes', null, '2016-10-07 22:48:31', null, '1', '0', '0', null, null, null);
INSERT INTO `t_user` VALUES ('3', 'jemeszhou', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'jemeszhou', '12132', '112@qq.com', null, '2016-11-09 16:31:28', '2016-11-12 09:27:21', '1', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `t_user2hospital`
-- ----------------------------
DROP TABLE IF EXISTS `t_user2hospital`;
CREATE TABLE `t_user2hospital` (
  `user_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`user_id`,`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户关联医院表';

-- ----------------------------
-- Records of t_user2hospital
-- ----------------------------
