/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2017-02-17 13:37:38
*/


DROP DATABASE IF EXISTS `project2`;
CREATE DATABASE `project2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project2`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_diagnosis_complication_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-5.0诊断时疾病相关并发症';

-- ----------------------------
-- Table structure for t_diagnosis_complication_status
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_complication_status`;
CREATE TABLE `t_diagnosis_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `result` int(11) DEFAULT NULL COMMENT '项目结果集（是：1，否：2）',
  `index` int(11) DEFAULT NULL COMMENT '其他可增长项序列',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '疾病诊断信息表ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建日期',
  `updateDate` datetime DEFAULT NULL COMMENT '更新日期',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Table structure for t_diagnosis_fish_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-10fish检查';

-- ----------------------------
-- Table structure for t_diagnosis_iconography_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-8疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Table structure for t_diagnosis_info
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_info`;
CREATE TABLE `t_diagnosis_info` (
  `diagnosisSTXTime` varchar(64) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosisDate` varchar(64) DEFAULT NULL COMMENT '初次诊断时间',
  `invasionDiagnosis` int(1) DEFAULT NULL COMMENT '诊断时是否发生髓外侵犯(1：是，2：否）',
  `clinicTypeDS` int(5) DEFAULT NULL COMMENT 'Durie-Salmon分期法（Ia期：1，Ib期：2，IIa期：3，IIb期：4，IIIa期：5，IIIb期：6）',
  `clinicTypeISS` int(5) DEFAULT NULL COMMENT 'ISS国际分期系统（I期：1，II期：2，III期：3）',
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集表-疾病诊断信息-3疾病诊断信息';

-- ----------------------------
-- Table structure for t_diagnosis_laboratory_examination
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
  `diagnosisExaminationNStatus` int(11) DEFAULT NULL COMMENT '是否有尿M蛋白检查',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Table structure for t_diagnosis_parenchyma_item
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis_parenchyma_item`;
CREATE TABLE `t_diagnosis_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` varchar(32) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` varchar(32) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `diagnosisId` int(11) DEFAULT NULL COMMENT '诊断ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-9疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Table structure for t_diagnosis_plasmacyte_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-7疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Table structure for t_followup_badinformation_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-13不良事件';

-- ----------------------------
-- Table structure for t_followup_chemotherapy_item
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
  `consumptionSize` varchar(128) DEFAULT NULL COMMENT '剂量单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-9化疗药物信息';

-- ----------------------------
-- Table structure for t_followup_complication_status
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_complication_status`;
CREATE TABLE `t_followup_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目名称',
  `result` int(11) DEFAULT NULL COMMENT '项目结果集（是：1，否：2）',
  `index` int(11) DEFAULT NULL COMMENT '其他可增长项序列',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Table structure for t_followup_cost_other
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_cost_other`;
CREATE TABLE `t_followup_cost_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `rate` varchar(64) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `followupid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_followup_iconography_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-7疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Table structure for t_followup_info
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
  `badInformationStatus` int(11) DEFAULT NULL COMMENT '是否存在不良信息(是：1，否：2)',
  `followupsites` int(11) DEFAULT NULL,
  `otherCostName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-回访信息表';

-- ----------------------------
-- Table structure for t_followup_laboratory_examination
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-5疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Table structure for t_followup_parenchyma_item
-- ----------------------------
DROP TABLE IF EXISTS `t_followup_parenchyma_item`;
CREATE TABLE `t_followup_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` varchar(32) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` varchar(32) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `followupId` int(11) DEFAULT NULL COMMENT '随访ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-8疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Table structure for t_followup_plasmacyte_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访信息采集表-6疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Table structure for t_hospital
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='医院信息表';

-- ----------------------------
-- Table structure for t_hospitaled_badinformation_item
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_badinformation_item`;
CREATE TABLE `t_hospitaled_badinformation_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL COMMENT '编号',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '住院的ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-13不良事件';

-- ----------------------------
-- Table structure for t_hospitaled_chemotherapy_item
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
  `consumptionSize` varchar(128) DEFAULT NULL COMMENT '剂量单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-9化疗药物信息';

-- ----------------------------
-- Table structure for t_hospitaled_complication_status
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Table structure for t_hospitaled_cost
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_cost`;
CREATE TABLE `t_hospitaled_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `westernMed` varchar(32) DEFAULT NULL COMMENT '西药费',
  `cure` varchar(32) DEFAULT NULL COMMENT '治疗费',
  `check` varchar(32) DEFAULT NULL COMMENT '检查费',
  `inspect` varchar(32) DEFAULT NULL COMMENT '检验费',
  `material` varchar(32) DEFAULT NULL COMMENT '材料费',
  `bed` varchar(32) DEFAULT NULL COMMENT '床位费',
  `food` varchar(32) DEFAULT NULL COMMENT '膳食费',
  `nursing` varchar(32) DEFAULT NULL COMMENT '护理费',
  `other` varchar(32) DEFAULT NULL COMMENT '其他费',
  `total` varchar(32) DEFAULT NULL COMMENT '总费用',
  `self` varchar(32) DEFAULT NULL COMMENT '自费项目小计',
  `outer` varchar(32) DEFAULT NULL COMMENT '院外购药费',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  `otherCostValue` varchar(64) DEFAULT NULL,
  `otherCostName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-14本次住院信息';

-- ----------------------------
-- Table structure for t_hospitaled_cost_other
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_cost_other`;
CREATE TABLE `t_hospitaled_cost_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `costId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='住院费用其他部分';

-- ----------------------------
-- Table structure for t_hospitaled_iconography_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-5疾病诊断时全身骨骼影像学检查';

-- ----------------------------
-- Table structure for t_hospitaled_laboratory_examination
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
  `hospitalExaminationNStatus` int(11) DEFAULT NULL COMMENT '是否有尿M蛋白检查',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-3疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Table structure for t_hospitaled_parenchyma_item
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitaled_parenchyma_item`;
CREATE TABLE `t_hospitaled_parenchyma_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '检查项目',
  `position` varchar(2048) DEFAULT NULL COMMENT '病变位置（系统可多选）',
  `length` varchar(32) DEFAULT NULL COMMENT '占位大小（长度cm）',
  `width` varchar(32) DEFAULT NULL COMMENT '占位大小（宽度cm）',
  `hospitaledId` int(11) DEFAULT NULL COMMENT '医院ID',
  `index` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间但次住院基线信息-6疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Table structure for t_hospitaled_plasmacyte_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-4疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Table structure for t_hospitaled_support_item
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-10对症支持治疗信息';

-- ----------------------------
-- Table structure for t_hospitalized_info
-- ----------------------------
DROP TABLE IF EXISTS `t_hospitalized_info`;
CREATE TABLE `t_hospitalized_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` varchar(64) DEFAULT NULL COMMENT '入院日期',
  `endTime` varchar(64) DEFAULT NULL COMMENT '出院日期',
  `ecogMark` int(11) DEFAULT NULL COMMENT 'ECOG评分（0分：1，1分：2，2分：3，3分：4，4分：5，5分：6）',
  `karnofskyMark` varchar(128) DEFAULT NULL COMMENT 'Karnofsky评分',
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  `hospitaledLaboratoryExaminationId` int(11) DEFAULT NULL COMMENT '住院实验室检查信息ID',
  `patientId` int(11) NOT NULL COMMENT '所属的病人的id',
  `hospitalweight` varchar(64) DEFAULT NULL COMMENT '体重',
  `hospitalbodysurfacearea` varchar(64) DEFAULT NULL COMMENT '体表面积',
  `hostipalstemcelltransplantation` int(11) DEFAULT NULL,
  `hostipalstemcelltransplantationDate` varchar(64) DEFAULT NULL,
  `livingState` int(11) DEFAULT NULL,
  `deathDate` varchar(64) DEFAULT NULL,
  `deathReason` varchar(512) DEFAULT NULL,
  `badInformationStatus` varchar(100) DEFAULT NULL,
  `gathererName` varchar(32) DEFAULT NULL COMMENT '采集人名称',
  `gathererId` varchar(11) DEFAULT NULL COMMENT '采集人用户ID',
  `hospitalCureCycle` varchar(32) DEFAULT NULL COMMENT '住院周期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-11疗效评估信息';

-- ----------------------------
-- Table structure for t_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_logs`;
CREATE TABLE `t_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatorId` int(11) NOT NULL,
  `operatorName` varchar(64) NOT NULL,
  `method` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_menu
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='菜单信息表';

-- ----------------------------
-- Table structure for t_mm_cure_history
-- ----------------------------
DROP TABLE IF EXISTS `t_mm_cure_history`;
CREATE TABLE `t_mm_cure_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curePlan` varchar(2048) DEFAULT NULL COMMENT '治疗方案',
  `startYear` varchar(32) DEFAULT NULL COMMENT '治疗启始时间',
  `startMonth` varchar(32) DEFAULT NULL COMMENT '治疗启始时间',
  `endYear` varchar(32) DEFAULT NULL COMMENT '治疗结束时间',
  `endMonth` varchar(32) DEFAULT NULL COMMENT '治疗结束时间',
  `cycleCount` varchar(32) DEFAULT NULL COMMENT '本次治疗方案周期数',
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
  `stemcelltransplantation` int(11) DEFAULT NULL COMMENT '是否自体干细胞移植',
  `stemcelltransplantationDate` varchar(64) DEFAULT NULL COMMENT '自体干细胞移植时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-11既往MM相关的治疗信息';

-- ----------------------------
-- Table structure for t_patient_contactinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_contactinfo`;
CREATE TABLE `t_patient_contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(64) NOT NULL COMMENT '病人ID',
  `livingState` int(11) DEFAULT NULL COMMENT '存活状态',
  `agreeVisit` int(11) DEFAULT NULL COMMENT '生存者是否愿意参加随访',
  `visitDate` varchar(32) DEFAULT NULL COMMENT '随访日期',
  `deathDate` varchar(32) DEFAULT NULL COMMENT '死亡时间',
  `deathReason` varchar(256) DEFAULT NULL COMMENT '死亡原因',
  `contactNurse` varchar(64) DEFAULT NULL COMMENT '患者联系护士',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  `hospitalId` int(11) DEFAULT NULL COMMENT '所在医院ID',
  `operatorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-1患者联系信息';

-- ----------------------------
-- Table structure for t_patient_info
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_info`;
CREATE TABLE `t_patient_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(64) DEFAULT NULL COMMENT '患者研究编号;(用户手动输入唯一）',
  `fkhospitalid` int(11) DEFAULT NULL COMMENT '就诊医院id号',
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
  `bodysurfacearea` varchar(16) DEFAULT NULL COMMENT '体表面积',
  `gathererName` varchar(64) DEFAULT NULL,
  `gathererId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_patient_informed
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_informed`;
CREATE TABLE `t_patient_informed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agreeInformedConsentStatus` int(11) DEFAULT NULL COMMENT '知情同意书签署结果（是：1，否;2）',
  `informedConsentDate` varchar(32) DEFAULT NULL COMMENT '签署日期',
  `contactNurse` varchar(64) DEFAULT NULL COMMENT '随访医生',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  `patientId` varchar(128) DEFAULT NULL COMMENT '病人ID',
  `hospitalId` int(11) DEFAULT NULL,
  `operatorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-1，2知情同意书签署ijeg和随访工作信息';

-- ----------------------------
-- Table structure for t_permission
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Table structure for t_role
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Table structure for t_role2menu
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色关联菜单表';

-- ----------------------------
-- Table structure for t_role2permission
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色关联权限表';

-- ----------------------------
-- Table structure for t_user
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Table structure for t_user2hospital
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


ALTER TABLE project2.t_patient_info ADD acqDescription varchar(2048) NULL COMMENT '采集备注';
ALTER TABLE project2.t_patient_info ADD fupDescription varchar(2048) NULL COMMENT '随访备注';
ALTER TABLE project2.t_followup_laboratory_examination ADD followupExaminationNMStatus int(11) NULL;
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