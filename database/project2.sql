/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-01-11 17:55:55
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-3.0诊断时疾病相关并发症';

-- ----------------------------
-- Records of t_diagnosis_complication_item
-- ----------------------------
INSERT INTO `t_diagnosis_complication_item` VALUES ('1', '1', '方法', '', '18', null, null, '0');
INSERT INTO `t_diagnosis_complication_item` VALUES ('2', '3', '得到', '', '18', null, null, '0');
INSERT INTO `t_diagnosis_complication_item` VALUES ('14', '1', 'gfd', '11111111', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_item` VALUES ('16', '1', '', '', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_item` VALUES ('17', '1', '', '', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_item` VALUES ('19', '1', '', '', '22', null, null, '0');

-- ----------------------------
-- Table structure for `t_diagnosis_complication_status`
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Records of t_diagnosis_complication_status
-- ----------------------------
INSERT INTO `t_diagnosis_complication_status` VALUES ('112', '骨相关事件', '1', '1', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('113', '高钙血症', '2', '2', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('114', '病理性骨折', '1', '3', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('115', '脊髓压迫', '1', '4', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('116', '需要进行放射治疗的骨痛', '1', '5', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('117', '慢性肾病', '2', '6', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('118', '高粘滞血症', '1', '7', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('119', '贫血', '1', '8', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('120', '凝血/血栓形成', '1', '9', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('121', '出血', '1', '10', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('122', 'gf', '2', '11', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('123', '的', '2', '12', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('124', '骨相关事件', '0', '1', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('125', '高钙血症', '0', '2', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('126', '病理性骨折', '0', '3', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('127', '脊髓压迫', '0', '4', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('128', '需要进行放射治疗的骨痛', '0', '5', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('129', '慢性肾病', '0', '6', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('130', '高粘滞血症', '0', '7', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('131', '贫血', '0', '8', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('132', '凝血/血栓形成', '0', '9', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('133', '出血', '0', '10', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('134', '', '0', '11', '20', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('135', '骨相关事件', '0', '1', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('136', '高钙血症', '0', '2', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('137', '病理性骨折', '0', '3', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('138', '脊髓压迫', '0', '4', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('139', '需要进行放射治疗的骨痛', '0', '5', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('140', '慢性肾病', '0', '6', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('141', '高粘滞血症', '0', '7', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('142', '贫血', '0', '8', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('143', '凝血/血栓形成', '0', '9', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('144', '出血', '0', '10', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('145', '', '0', '11', '21', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('146', '骨相关事件', '0', '1', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('147', '高钙血症', '0', '2', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('148', '病理性骨折', '0', '3', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('149', '脊髓压迫', '0', '4', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('150', '需要进行放射治疗的骨痛', '0', '5', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('151', '慢性肾病', '0', '6', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('152', '高粘滞血症', '0', '7', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('153', '贫血', '0', '8', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('154', '凝血/血栓形成', '0', '9', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('155', '出血', '0', '10', '22', null, null, '0');
INSERT INTO `t_diagnosis_complication_status` VALUES ('156', '', '0', '11', '22', null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-10fish检查';

-- ----------------------------
-- Records of t_diagnosis_fish_item
-- ----------------------------
INSERT INTO `t_diagnosis_fish_item` VALUES ('29', 'IgH重排 (%)', '', '19', '1', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('30', ' 13q缺失 (%)', '', '19', '2', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('31', ' 17p缺失 (%)', '', '19', '3', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('32', '1q21扩增(%)', '', '19', '4', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('33', 't(4:14) (%)', '', '19', '5', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('34', 't(11:14) (%)', '', '19', '6', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('35', 't(14:16) (%)', 'D', '19', '7', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('36', '', 'D', '19', '8', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('37', '', '', '19', '12', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_fish_item` VALUES ('38', '', '', '19', '13', null, '2017-01-11 16:11:05', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-8疾病诊断时全身骨骼影像学检查';

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
INSERT INTO `t_diagnosis_iconography_item` VALUES ('18', 'PET-CT', '333333333333333', '444444444444444', '19', '4', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('19', '同位素骨扫描', '333333333333333', '444444444444444', '19', '5', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('20', '222222222222222222', null, '444444444444444D', '19', '6', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('21', '222222222222222222', null, '444444444444444D', '19', '8', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('22', 'X光', '333333333333333', '444444444444444', '19', '1', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('23', 'CT', '333333333333333', '444444444444444', '19', '2', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('24', 'MRI', '333333333333333', '444444444444444', '19', '3', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('25', 'X光', '', '', '20', '1', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('26', 'CT', '', '', '20', '2', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('27', 'MRI', '', '', '20', '3', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('28', 'PET-CT', '', '', '20', '4', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('29', '同位素骨扫描', '', '', '20', '5', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('30', '', '', '', '20', '6', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('31', 'X光', '', '', '21', '1', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('32', 'CT', '', '', '21', '2', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('33', 'MRI', '', '', '21', '3', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('34', 'PET-CT', '', '', '21', '4', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('35', '同位素骨扫描', '', '', '21', '5', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('36', '', '', '', '21', '6', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('37', 'X光', '', '', '22', '1', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('38', 'CT', '', '', '22', '2', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('39', 'MRI', '', '', '22', '3', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('40', 'PET-CT', '', '', '22', '4', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('41', '同位素骨扫描', '', '', '22', '5', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('42', '', '', '', '22', '6', null, null, '0');
INSERT INTO `t_diagnosis_iconography_item` VALUES ('43', '', null, 'D', '19', '9', null, '2017-01-11 16:11:05', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集表-疾病诊断信息-3疾病诊断信息';

-- ----------------------------
-- Records of t_diagnosis_info
-- ----------------------------
INSERT INTO `t_diagnosis_info` VALUES ('3', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_info` VALUES ('4', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_info` VALUES ('6', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_info` VALUES ('7', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('8', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('9', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('10', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('11', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('12', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('13', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('14', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('15', '1992-06-11', '1', '2', '2', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('16', '1992-06-11', '1', '2', '2', '2', '0', '1', '1', '2', '2', '0', '1', '1', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('17', '1992-06-11', '1', '2', '2', '2', '0', '1', '1', '2', '2', '0', '1', '1', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('18', '1992-06-11', '1', '2', '2', '2', '0', '1', '1', '2', '2', '0', '1', '1', '0', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('19', '1992-11-11', '2', '3', '2', '2', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_info` VALUES ('20', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('21', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', null, null, '0');
INSERT INTO `t_diagnosis_info` VALUES ('22', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_diagnosis_laboratory_examination
-- ----------------------------
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('7', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '1', '13', '12', '15', '123', '123', '1', '1', '1', '1', '3223', '233', '321', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_diagnosis_laboratory_examination` VALUES ('10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', null, null, '0');

-- ----------------------------
-- Table structure for `t_diagnosis_parenchyma_item`
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-9疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_diagnosis_parenchyma_item
-- ----------------------------
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('3', 'CT', 'ddf', '11', '22', '19', '1', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('4', 'MRI', 'r', '11', '22', '19', '2', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('5', 'PET-CT', 'f', '11', '22', '19', '3', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('6', 'd', 'f', '11', '', '19', '4', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('7', 'CT', '', '', '', '20', '1', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('8', 'MRI', '', '', '', '20', '2', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('9', 'PET-CT', '', '', '', '20', '3', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('10', '', '', '', '', '20', '4', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('11', 'CT', '', '', '', '21', '1', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('12', 'MRI', '', '', '', '21', '2', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('13', 'PET-CT', '', '', '', '21', '3', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('14', '', '', '', '', '21', '4', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('15', 'CT', '', '', '', '22', '1', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('16', 'MRI', '', '', '', '22', '2', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('17', 'PET-CT', '', '', '', '22', '3', null, null, '0');
INSERT INTO `t_diagnosis_parenchyma_item` VALUES ('18', '', '', '', '', '22', '4', null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-7疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_diagnosis_plasmacyte_item
-- ----------------------------
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('1', '所有浆细胞 (%)', '1', '1', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('2', '原浆细胞 (%)', '2', '2', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('3', '幼浆细胞 (%)', '3', '3', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('4', '中间浆细胞 (%)', '4', '4', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('5', '成熟浆细胞 (%)', '5', '5', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('6', '56', '66666666666', '6', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('7', '56', '77777777777', '8', '19', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('8', '所有浆细胞 (%)', '', '1', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('9', '原浆细胞 (%)', '', '2', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('10', '幼浆细胞 (%)', '', '3', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('11', '中间浆细胞 (%)', '', '4', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('12', '成熟浆细胞 (%)', '', '5', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('13', '', '', '6', '20', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('14', '所有浆细胞 (%)', '', '1', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('15', '原浆细胞 (%)', '', '2', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('16', '幼浆细胞 (%)', '', '3', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('17', '中间浆细胞 (%)', '', '4', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('18', '成熟浆细胞 (%)', '', '5', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('19', '', '', '6', '21', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('20', '所有浆细胞 (%)', '', '1', '22', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('21', '原浆细胞 (%)', '', '2', '22', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('22', '幼浆细胞 (%)', '', '3', '22', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('23', '中间浆细胞 (%)', '', '4', '22', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('24', '成熟浆细胞 (%)', '', '5', '22', null, null, '0');
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES ('25', '', '', '6', '22', null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-13不良事件';

-- ----------------------------
-- Records of t_followup_badinformation_item
-- ----------------------------
INSERT INTO `t_followup_badinformation_item` VALUES ('1', '1', '1', '11', '1111-11-11', '1', '1', '0', '5', '1', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_badinformation_item` VALUES ('2', '1', '14', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-9化疗药物信息';

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
INSERT INTO `t_followup_chemotherapy_item` VALUES ('16', '', '', '', '0', '2', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('17', '', '', '', '0', '3', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('18', '', '', '', '0', '4', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('19', '', '', '', '0', '5', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('20', '', '', '', '0', '6', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('21', '', '', '', '0', '7', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('22', '', '', '', '0', '8', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('23', '', '', '', '0', '9', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('24', '', '', '', '0', '10', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('25', '', '', '', '0', '11', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('26', '', '', '', '0', '12', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('27', '', '', '', '0', '13', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('64', '1', '1', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('68', '1', '1', '1', '1', '14', '1', null, null, '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('74', '', '', '', '0', '15', '1', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_chemotherapy_item` VALUES ('77', '', '', '', '0', '16', '1', null, '2017-01-11 16:11:05', '0');

-- ----------------------------
-- Table structure for `t_followup_complication_status`
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-4.0诊断时疾病相关并发症发生情况';

-- ----------------------------
-- Records of t_followup_complication_status
-- ----------------------------
INSERT INTO `t_followup_complication_status` VALUES ('12', '骨相关事件', null, '1', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('13', '高钙血症', null, '2', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('14', '病理性骨折', null, '3', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('15', '脊髓压迫', null, '4', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('16', '需要进行放射治疗的骨髓', null, '5', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('17', '慢性肾病', null, '6', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('18', '高粘滞血症', null, '7', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('19', '贫血', null, '8', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('20', '凝血/血栓形成', null, '9', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('21', '出血', null, '10', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('22', '', null, '11', '2', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('23', '骨相关事件', null, '1', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('24', '高钙血症', null, '2', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('25', '病理性骨折', null, '3', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('26', '脊髓压迫', null, '4', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('27', '需要进行放射治疗的骨髓', null, '5', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('28', '慢性肾病', null, '6', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('29', '高粘滞血症', null, '7', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('30', '贫血', null, '8', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('31', '凝血/血栓形成', null, '9', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('32', '出血', null, '10', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('33', '', null, '11', '3', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('34', '骨相关事件', null, '1', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('35', '高钙血症', null, '2', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('36', '病理性骨折', null, '3', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('37', '脊髓压迫', null, '4', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('38', '需要进行放射治疗的骨髓', null, '5', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('39', '慢性肾病', null, '6', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('40', '高粘滞血症', null, '7', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('41', '贫血', null, '8', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('42', '凝血/血栓形成', null, '9', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('43', '出血', null, '10', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('44', '', null, '11', '4', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('45', '骨相关事件', null, '1', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('46', '高钙血症', null, '2', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('47', '病理性骨折', null, '3', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('48', '脊髓压迫', null, '4', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('49', '需要进行放射治疗的骨髓', null, '5', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('50', '慢性肾病', null, '6', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('51', '高粘滞血症', null, '7', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('52', '贫血', null, '8', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('53', '凝血/血栓形成', null, '9', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('54', '出血', null, '10', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('55', '', null, '11', '5', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('56', '骨相关事件', null, '1', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('57', '高钙血症', null, '2', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('58', '病理性骨折', null, '3', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('59', '脊髓压迫', null, '4', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('60', '需要进行放射治疗的骨髓', null, '5', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('61', '慢性肾病', null, '6', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('62', '高粘滞血症', null, '7', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('63', '贫血', null, '8', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('64', '凝血/血栓形成', null, '9', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('65', '出血', null, '10', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('66', '', null, '11', '6', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('67', '骨相关事件', null, '1', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('68', '高钙血症', null, '2', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('69', '病理性骨折', null, '3', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('70', '脊髓压迫', null, '4', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('71', '需要进行放射治疗的骨髓', null, '5', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('72', '慢性肾病', null, '6', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('73', '高粘滞血症', null, '7', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('74', '贫血', null, '8', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('75', '凝血/血栓形成', null, '9', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('76', '出血', null, '10', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('77', '', null, '11', '7', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('78', '骨相关事件', null, '1', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('79', '高钙血症', null, '2', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('80', '病理性骨折', null, '3', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('81', '脊髓压迫', null, '4', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('82', '需要进行放射治疗的骨髓', null, '5', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('83', '慢性肾病', null, '6', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('84', '高粘滞血症', null, '7', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('85', '贫血', null, '8', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('86', '凝血/血栓形成', null, '9', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('87', '出血', null, '10', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('88', '', null, '11', '8', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('89', '骨相关事件', null, '1', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('90', '高钙血症', null, '2', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('91', '病理性骨折', null, '3', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('92', '脊髓压迫', null, '4', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('93', '需要进行放射治疗的骨髓', null, '5', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('94', '慢性肾病', null, '6', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('95', '高粘滞血症', null, '7', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('96', '贫血', null, '8', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('97', '凝血/血栓形成', null, '9', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('98', '出血', null, '10', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('99', '', null, '11', '9', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('100', '骨相关事件', null, '1', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('101', '高钙血症', null, '2', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('102', '病理性骨折', null, '3', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('103', '脊髓压迫', null, '4', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('104', '需要进行放射治疗的骨髓', null, '5', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('105', '慢性肾病', null, '6', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('106', '高粘滞血症', null, '7', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('107', '贫血', null, '8', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('108', '凝血/血栓形成', null, '9', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('109', '出血', null, '10', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('110', '', null, '11', '10', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('111', '骨相关事件', null, '1', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('112', '高钙血症', null, '2', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('113', '病理性骨折', null, '3', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('114', '脊髓压迫', null, '4', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('115', '需要进行放射治疗的骨髓', null, '5', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('116', '慢性肾病', null, '6', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('117', '高粘滞血症', null, '7', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('118', '贫血', null, '8', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('119', '凝血/血栓形成', null, '9', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('120', '出血', null, '10', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('121', '', null, '11', '11', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('122', '骨相关事件', null, '1', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('123', '高钙血症', null, '2', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('124', '病理性骨折', null, '3', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('125', '脊髓压迫', null, '4', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('126', '需要进行放射治疗的骨髓', null, '5', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('127', '慢性肾病', null, '6', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('128', '高粘滞血症', null, '7', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('129', '贫血', null, '8', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('130', '凝血/血栓形成', null, '9', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('131', '出血', null, '10', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('132', '', null, '11', '12', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('133', '骨相关事件', null, '1', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('134', '高钙血症', null, '2', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('135', '病理性骨折', null, '3', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('136', '脊髓压迫', null, '4', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('137', '需要进行放射治疗的骨髓', null, '5', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('138', '慢性肾病', null, '6', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('139', '高粘滞血症', null, '7', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('140', '贫血', null, '8', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('141', '凝血/血栓形成', null, '9', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('142', '出血', null, '10', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('143', '', null, '11', '13', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('144', '骨相关事件', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('145', '高钙血症', '1', '2', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('146', '病理性骨折', '1', '3', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('147', '脊髓压迫', '1', '4', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('148', '需要进行放射治疗的骨髓', '1', '5', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('149', '慢性肾病', '1', '6', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('150', '高粘滞血症', '1', '7', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('151', '贫血', '1', '8', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('152', '凝血/血栓形成', '1', '9', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('153', '出血', '1', '10', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('154', '11', '1', '11', '1', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('155', '骨相关事件', '1', '1', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('156', '高钙血症', '1', '2', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('157', '病理性骨折', '1', '3', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('158', '脊髓压迫', '1', '4', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('159', '需要进行放射治疗的骨髓', '1', '5', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('160', '慢性肾病', '1', '6', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('161', '高粘滞血症', '1', '7', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('162', '贫血', '1', '8', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('163', '凝血/血栓形成', '1', '9', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('164', '出血', '1', '10', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('165', '1', '1', '11', '14', null, null, '0');
INSERT INTO `t_followup_complication_status` VALUES ('166', '骨相关事件', null, '1', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('167', '高钙血症', null, '2', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('168', '病理性骨折', null, '3', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('169', '脊髓压迫', null, '4', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('170', '需要进行放射治疗的骨髓', null, '5', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('171', '慢性肾病', null, '6', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('172', '高粘滞血症', null, '7', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('173', '贫血', null, '8', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('174', '凝血/血栓形成', null, '9', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('175', '出血', null, '10', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('176', '', null, '11', '15', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_complication_status` VALUES ('177', '骨相关事件', null, '1', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('178', '高钙血症', null, '2', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('179', '病理性骨折', null, '3', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('180', '脊髓压迫', null, '4', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('181', '需要进行放射治疗的骨髓', null, '5', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('182', '慢性肾病', null, '6', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('183', '高粘滞血症', null, '7', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('184', '贫血', null, '8', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('185', '凝血/血栓形成', null, '9', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('186', '出血', null, '10', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_complication_status` VALUES ('187', '', null, '11', '16', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-7疾病诊断时全身骨骼影像学检查';

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
INSERT INTO `t_followup_iconography_item` VALUES ('21', 'X光', '', '', '2', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('22', 'CT', '', '', '2', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('23', 'MRI', '', '', '2', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('24', 'PET-CT', '', '', '2', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('25', '同位素骨扫描', '', '', '2', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('26', '', '', '', '2', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('27', 'X光', '', '', '3', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('28', 'CT', '', '', '3', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('29', 'MRI', '', '', '3', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('30', 'PET-CT', '', '', '3', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('31', '同位素骨扫描', '', '', '3', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('32', '', '', '', '3', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('33', 'X光', '', '', '4', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('34', 'CT', '', '', '4', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('35', 'MRI', '', '', '4', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('36', 'PET-CT', '', '', '4', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('37', '同位素骨扫描', '', '', '4', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('38', '', '', '', '4', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('39', 'X光', '', '', '5', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('40', 'CT', '', '', '5', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('41', 'MRI', '', '', '5', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('42', 'PET-CT', '', '', '5', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('43', '同位素骨扫描', '', '', '5', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('44', '', '', '', '5', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('45', 'X光', '', '', '6', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('46', 'CT', '', '', '6', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('47', 'MRI', '', '', '6', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('48', 'PET-CT', '', '', '6', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('49', '同位素骨扫描', '', '', '6', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('50', '', '', '', '6', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('51', 'X光', '', '', '7', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('52', 'CT', '', '', '7', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('53', 'MRI', '', '', '7', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('54', 'PET-CT', '', '', '7', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('55', '同位素骨扫描', '', '', '7', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('56', '', '', '', '7', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('57', 'X光', '', '', '8', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('58', 'CT', '', '', '8', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('59', 'MRI', '', '', '8', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('60', 'PET-CT', '', '', '8', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('61', '同位素骨扫描', '', '', '8', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('62', '', '', '', '8', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('63', 'X光', '', '', '9', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('64', 'CT', '', '', '9', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('65', 'MRI', '', '', '9', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('66', 'PET-CT', '', '', '9', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('67', '同位素骨扫描', '', '', '9', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('68', '', '', '', '9', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('69', 'X光', '', '', '10', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('70', 'CT', '', '', '10', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('71', 'MRI', '', '', '10', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('72', 'PET-CT', '', '', '10', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('73', '同位素骨扫描', '', '', '10', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('74', '', '', '', '10', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('75', 'X光', '', '', '11', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('76', 'CT', '', '', '11', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('77', 'MRI', '', '', '11', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('78', 'PET-CT', '', '', '11', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('79', '同位素骨扫描', '', '', '11', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('80', '', '', '', '11', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('81', 'X光', '', '', '12', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('82', 'CT', '', '', '12', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('83', 'MRI', '', '', '12', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('84', 'PET-CT', '', '', '12', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('85', '同位素骨扫描', '', '', '12', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('86', '', '', '', '12', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('87', 'X光', '', '', '13', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('88', 'CT', '', '', '13', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('89', 'MRI', '', '', '13', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('90', 'PET-CT', '', '', '13', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('91', '同位素骨扫描', '', '', '13', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('92', '', '', '', '13', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('93', 'X光', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('94', 'CT', '1', '1', '1', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('95', 'MRI', '1', '1', '1', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('96', 'PET-CT', '1', '1', '1', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('97', '同位素骨扫描', '1', '1', '1', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('98', '1', '1', '1', '1', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('99', '1', '1', '1', '1', '7', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('100', 'X光', '2', '2', '14', '1', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('101', 'CT', '2', '2', '14', '2', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('102', 'MRI', '22', '1111', '14', '3', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('103', 'PET-CT', '2', '2', '14', '4', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('104', '同位素骨扫描', '22', '2', '14', '5', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('105', '2', '2222222', '22', '14', '6', null, null, '0');
INSERT INTO `t_followup_iconography_item` VALUES ('106', 'X光', '', '', '15', '1', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('107', 'CT', '', '', '15', '2', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('108', 'MRI', '', '', '15', '3', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('109', 'PET-CT', '', '', '15', '4', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('110', '同位素骨扫描', '', '', '15', '5', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('111', '', '', '', '15', '6', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('112', 'X光', '', '', '16', '1', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('113', 'CT', '', '', '16', '2', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('114', 'MRI', '', '', '16', '3', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('115', 'PET-CT', '', '', '16', '4', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('116', '同位素骨扫描', '', '', '16', '5', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_iconography_item` VALUES ('117', '', '', '', '16', '6', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');

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
  `badInformationStatus` int(11) DEFAULT NULL COMMENT '是否存在不良信息(是：1，否：2)',
  `followupsites` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-回访信息表';

-- ----------------------------
-- Records of t_followup_info
-- ----------------------------
INSERT INTO `t_followup_info` VALUES ('14', '14', '2', '1', '1', '1', '1', '1111-11-1', '1111-11-1', '1', '1', '', '6', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '0', '1', '2');
INSERT INTO `t_followup_info` VALUES ('15', '15', '0', '0', '0', '0', '', '', '', '0', '0', '', '0', '', '0', '0', null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', null, '2016-12-28 15:28:02', '0', '0', '0');
INSERT INTO `t_followup_info` VALUES ('16', '16', '0', '0', '0', '0', '', '', '', '0', '0', '', '0', '', '0', '0', null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '', '', null, '2017-01-11 16:11:05', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-5疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_followup_laboratory_examination
-- ----------------------------
INSERT INTO `t_followup_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_followup_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_followup_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_followup_laboratory_examination` VALUES ('7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('14', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_followup_laboratory_examination` VALUES ('22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-01-11 15:02:42', '2017-01-11 15:02:42', '0');

-- ----------------------------
-- Table structure for `t_followup_parenchyma_item`
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-8疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_followup_parenchyma_item
-- ----------------------------
INSERT INTO `t_followup_parenchyma_item` VALUES ('5', 'CT', '', '', '', '2', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('6', 'MRI', '', '', '', '2', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('7', 'PET-CT', '', '', '', '2', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('8', '', '', '', '', '2', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('9', 'CT', '', '', '', '3', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('10', 'MRI', '', '', '', '3', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('11', 'PET-CT', '', '', '', '3', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('12', '', '', '', '', '3', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('13', 'CT', '', '', '', '4', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('14', 'MRI', '', '', '', '4', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('15', 'PET-CT', '', '', '', '4', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('16', '', '', '', '', '4', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('17', 'CT', '', '', '', '5', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('18', 'MRI', '', '', '', '5', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('19', 'PET-CT', '', '', '', '5', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('20', '', '', '', '', '5', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('21', 'CT', '', '', '', '6', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('22', 'MRI', '', '', '', '6', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('23', 'PET-CT', '', '', '', '6', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('24', '', '', '', '', '6', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('25', 'CT', '', '', '', '7', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('26', 'MRI', '', '', '', '7', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('27', 'PET-CT', '', '', '', '7', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('28', '', '', '', '', '7', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('29', 'CT', '', '', '', '8', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('30', 'MRI', '', '', '', '8', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('31', 'PET-CT', '', '', '', '8', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('32', '', '', '', '', '8', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('33', 'CT', '', '', '', '9', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('34', 'MRI', '', '', '', '9', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('35', 'PET-CT', '', '', '', '9', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('36', '', '', '', '', '9', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('37', 'CT', '', '', '', '10', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('38', 'MRI', '', '', '', '10', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('39', 'PET-CT', '', '', '', '10', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('40', '', '', '', '', '10', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('41', 'CT', '', '', '', '11', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('42', 'MRI', '', '', '', '11', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('43', 'PET-CT', '', '', '', '11', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('44', '', '', '', '', '11', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('45', 'CT', '', '', '', '12', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('46', 'MRI', '', '', '', '12', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('47', 'PET-CT', '', '', '', '12', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('48', '', '', '', '', '12', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('49', 'CT', '', '', '', '13', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('50', 'MRI', '', '', '', '13', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('51', 'PET-CT', '', '', '', '13', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('52', '', '', '', '', '13', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('53', 'CT', '1', '1', '1', '1', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('54', 'MRI', '1', '1', '1', '1', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('55', 'PET-CT', '1', '1', '1', '1', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('56', '1', '1', '11', '1', '1', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('57', '1', '11', '1', '1', '1', '7', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('58', 'CT', '1', '22', '', '14', '1', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('59', 'MRI', '2', '2', '2', '14', '2', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('60', 'PET-CT', '22', '2', '2', '14', '3', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('61', '2', '2', '2', '2', '14', '4', null, null, '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('62', 'CT', '', '', '', '15', '1', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('63', 'MRI', '', '', '', '15', '2', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('64', 'PET-CT', '', '', '', '15', '3', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('65', '', '', '', '', '15', '4', null, '2016-12-28 15:28:02', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('66', 'CT', '', 'D', 'D', '16', '1', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('67', 'MRI', 'D', 'D', 'D', '16', '2', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('68', 'PET-CT', 'D', 'D', 'D', '16', '3', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('69', 'D', 'D', 'D', 'D', '16', '4', '2017-01-11 15:02:42', '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('70', '', '', 'D', 'D', '16', '7', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('71', 'D', 'D', 'D', 'D', '16', '8', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('72', 'D', 'D', 'D', 'D', '16', '9', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_parenchyma_item` VALUES ('73', 'D', 'D', 'D', 'D', '16', '10', null, '2017-01-11 16:11:05', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='一次随访信息采集表-6疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_followup_plasmacyte_item
-- ----------------------------
INSERT INTO `t_followup_plasmacyte_item` VALUES ('7', '所有浆细胞 (%)', '', '1', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('8', '原浆细胞 (%)', '', '2', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('9', '幼浆细胞 (%)', '', '3', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('10', '中间浆细胞 (%)', '', '4', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('11', '成熟浆细胞 (%)', '', '5', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('12', '', '', '6', '2', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('13', '所有浆细胞 (%)', '', '1', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('14', '原浆细胞 (%)', '', '2', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('15', '幼浆细胞 (%)', '', '3', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('16', '中间浆细胞 (%)', '', '4', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('17', '成熟浆细胞 (%)', '', '5', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('18', '', '', '6', '3', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('19', '所有浆细胞 (%)', '', '1', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('20', '原浆细胞 (%)', '', '2', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('21', '幼浆细胞 (%)', '', '3', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('22', '中间浆细胞 (%)', '', '4', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('23', '成熟浆细胞 (%)', '', '5', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('24', '', '', '6', '4', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('25', '所有浆细胞 (%)', '', '1', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('26', '原浆细胞 (%)', '', '2', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('27', '幼浆细胞 (%)', '', '3', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('28', '中间浆细胞 (%)', '', '4', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('29', '成熟浆细胞 (%)', '', '5', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('30', '', '', '6', '5', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('31', '所有浆细胞 (%)', '', '1', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('32', '原浆细胞 (%)', '', '2', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('33', '幼浆细胞 (%)', '', '3', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('34', '中间浆细胞 (%)', '', '4', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('35', '成熟浆细胞 (%)', '', '5', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('36', '', '', '6', '6', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('37', '所有浆细胞 (%)', '', '1', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('38', '原浆细胞 (%)', '', '2', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('39', '幼浆细胞 (%)', '', '3', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('40', '中间浆细胞 (%)', '', '4', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('41', '成熟浆细胞 (%)', '', '5', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('42', '', '', '6', '7', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('43', '所有浆细胞 (%)', '', '1', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('44', '原浆细胞 (%)', '', '2', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('45', '幼浆细胞 (%)', '', '3', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('46', '中间浆细胞 (%)', '', '4', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('47', '成熟浆细胞 (%)', '', '5', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('48', '', '', '6', '8', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('49', '所有浆细胞 (%)', '', '1', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('50', '原浆细胞 (%)', '', '2', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('51', '幼浆细胞 (%)', '', '3', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('52', '中间浆细胞 (%)', '', '4', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('53', '成熟浆细胞 (%)', '', '5', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('54', '', '', '6', '9', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('55', '所有浆细胞 (%)', '', '1', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('56', '原浆细胞 (%)', '', '2', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('57', '幼浆细胞 (%)', '', '3', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('58', '中间浆细胞 (%)', '', '4', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('59', '成熟浆细胞 (%)', '', '5', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('60', '', '', '6', '10', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('61', '所有浆细胞 (%)', '', '1', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('62', '原浆细胞 (%)', '', '2', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('63', '幼浆细胞 (%)', '', '3', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('64', '中间浆细胞 (%)', '', '4', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('65', '成熟浆细胞 (%)', '', '5', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('66', '', '', '6', '11', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('67', '所有浆细胞 (%)', '', '1', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('68', '原浆细胞 (%)', '', '2', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('69', '幼浆细胞 (%)', '', '3', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('70', '中间浆细胞 (%)', '', '4', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('71', '成熟浆细胞 (%)', '', '5', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('72', '', '', '6', '12', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('73', '所有浆细胞 (%)', '', '1', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('74', '原浆细胞 (%)', '', '2', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('75', '幼浆细胞 (%)', '', '3', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('76', '中间浆细胞 (%)', '', '4', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('77', '成熟浆细胞 (%)', '', '5', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('78', '', '', '6', '13', null, null, '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('85', '所有浆细胞 (%)', '', '1', '16', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('86', '原浆细胞 (%)', '', '2', '16', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('87', '幼浆细胞 (%)', '', '3', '16', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('88', '中间浆细胞 (%)', '', '4', '16', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('89', '成熟浆细胞 (%)', '', '5', '16', null, '2017-01-11 16:11:05', '0');
INSERT INTO `t_followup_plasmacyte_item` VALUES ('90', '', '', '6', '16', null, '2017-01-11 16:11:05', '0');

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
INSERT INTO `t_hospital` VALUES ('1', '北京朝阳医院', 'BJCYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('7', '北大人民医院', 'BDRMYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('8', '天津血研所', 'TJXYS', '0', null, null);
INSERT INTO `t_hospital` VALUES ('9', '北京协和医院', 'BJXHYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('10', '上海长征医院', 'SHCZYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('11', '上海瑞金医院', 'SHRJYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('12', '苏州大学附属第一医院', 'SZDXFSDYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('14', '浙大医院', 'ZDYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('15', '中山大学附属第一医院', 'ZSDXFSDYYY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('16', '华西医院', 'HXYY1', '0', null, null);

-- ----------------------------
-- Table structure for `t_hospitaled_badinformation_item`
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-13不良事件';

-- ----------------------------
-- Records of t_hospitaled_badinformation_item
-- ----------------------------
INSERT INTO `t_hospitaled_badinformation_item` VALUES ('1', '1', '1', 'ff', 'd', '1', '2', '0', '2', '2', '0', '2', '2', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_badinformation_item` VALUES ('10', '2', '1', 'fd', 'fd', '2', '1', '2', '2', '2', '0', '1', '1', '1', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-9化疗药物信息';

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
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('15', 'fds', 'fds', 'fds', '2', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES ('16', 'fds', 'fds', 'fds', '2', '1', '2', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-6疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_hospitaled_complication_status
-- ----------------------------
INSERT INTO `t_hospitaled_complication_status` VALUES ('1', '骨相关事件', '1', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('2', '高钙血症', '1', '2', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('3', '病理性骨折', '1', '3', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('4', '脊髓压迫', '1', '4', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('5', '需要进行放射治疗的骨痛', '1', '5', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('6', '慢性肾病', '2', '6', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('7', '高粘滞血症', '1', '7', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('8', '贫血', '1', '8', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('9', '凝血/血栓形成', '1', '9', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('10', '出血', '2', '10', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('11', 'test1', '1', '11', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_complication_status` VALUES ('12', 'test2', '1', '12', '1', null, '2017-01-10 09:56:19', '0');

-- ----------------------------
-- Table structure for `t_hospitaled_cost`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-14本次住院信息';

-- ----------------------------
-- Records of t_hospitaled_cost
-- ----------------------------
INSERT INTO `t_hospitaled_cost` VALUES ('7', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('8', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('9', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('10', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('11', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('12', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('13', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('14', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('15', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('16', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('17', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('18', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('19', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('20', 'fds', 'f', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, null, '0');
INSERT INTO `t_hospitaled_cost` VALUES ('21', '1', '1', '1', '32', '32', '32', '32', '23', '32', '32', '32', '32', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-5疾病诊断时全身骨骼影像学检查';

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
INSERT INTO `t_hospitaled_iconography_item` VALUES ('15', 'X光', 'fds', 'fds', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('16', 'CT', 'fsd', 'fsd', '1', '2', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('17', 'MRI', 'fds', 'fds', '1', '3', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('18', 'PET-CT', 'fds', 'fsd', '1', '4', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('19', '同位素骨扫描', 'fds', 'fds', '1', '5', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('20', '1', 'fds', 'fds', '1', '6', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_iconography_item` VALUES ('21', '2', 'fds', 'fds', '1', '7', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-3疾病诊断时疾病相关实验室检查';

-- ----------------------------
-- Records of t_hospitaled_laboratory_examination
-- ----------------------------
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_hospitaled_laboratory_examination` VALUES ('15', '1', '2', '2', '2', '2', '2', '2', '2', '2', '0', '0', 'f', 'f', 'f', 'f', 'f', '1', 'f', 'f', 'f', 'f', 'f', '23', 'fds', 'fd', 'fds', 'fds', 'fd', 'fds', 'ds', 'fsd', 'fds', 'fds', 'fds', 'fds', 'fds', 'fds', 'fsd', 'fs', 'fds', null, '2017-01-10 09:56:19', '0');

-- ----------------------------
-- Table structure for `t_hospitaled_parenchyma_item`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间但次住院基线信息-6疾病诊断时全身软组织浆细胞瘤检查';

-- ----------------------------
-- Records of t_hospitaled_parenchyma_item
-- ----------------------------
INSERT INTO `t_hospitaled_parenchyma_item` VALUES ('1', 'CT', 'fd', '1', '1', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_parenchyma_item` VALUES ('2', 'MRI', 'f', '1', '1', '1', '2', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_parenchyma_item` VALUES ('3', 'PET-CT', 'f', '1', '1', '1', '3', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_parenchyma_item` VALUES ('4', 'fd', 'f', '1', '1', '1', '4', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_parenchyma_item` VALUES ('5', 'fd', 'fds', '1', '2', '1', '5', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-4疾病诊断时骨髓穿刺涂片细胞学检查';

-- ----------------------------
-- Records of t_hospitaled_plasmacyte_item
-- ----------------------------
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('1', '所有浆细胞 (%)', 'fds', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('2', '原浆细胞 (%)', 'fd', '2', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('3', '幼浆细胞 (%)', 'fd', '3', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('4', '中间浆细胞 (%)', 'fd', '4', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('5', '成熟浆细胞 (%)', 'fd', '5', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('6', 'fd', 'fd', '6', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES ('7', 'fds', 'fds', '7', '1', null, '2017-01-10 09:56:19', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-10对症支持治疗信息';

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
INSERT INTO `t_hospitaled_support_item` VALUES ('15', 'fds', 'fds', 'fds', 'fds', '2', '1', '1', null, '2017-01-10 09:56:19', '0');
INSERT INTO `t_hospitaled_support_item` VALUES ('16', 'fds', 'fds', 'fds', 'fds', '2', '1', '2', null, '2017-01-10 09:56:19', '0');

-- ----------------------------
-- Table structure for `t_hospitalized_info`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-11疗效评估信息';

-- ----------------------------
-- Records of t_hospitalized_info
-- ----------------------------
INSERT INTO `t_hospitalized_info` VALUES ('1', '1211-11-11', '1211-11-11', '2', '12', '1', '2', '1', 'fds', '1', 'fds', 'fds', '1', '1', 'fds', '3', null, null, '21', null, '2017-01-10 09:56:19', '0', '15', '12', '213', '321', '2', '2011-11-11', '1', '', '', '1', null, null);

-- ----------------------------
-- Table structure for `t_logs`
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logs
-- ----------------------------
INSERT INTO `t_logs` VALUES ('3', '3', 'jemeszhou', 'base.web.controller.common.UserController::saveAuthorityList:145', '重新绑定用户(id=1)的医院列表', '2016-12-28 15:12:38');
INSERT INTO `t_logs` VALUES ('4', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2016-12-28 15:18:13');
INSERT INTO `t_logs` VALUES ('5', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2016-12-28 15:19:32');
INSERT INTO `t_logs` VALUES ('6', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2016-12-28 15:28:03');
INSERT INTO `t_logs` VALUES ('7', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyPatientInfo:204', '更新病人(patientId=CTI01020160918)的回顾性数据采集信息', '2017-01-10 09:56:19');
INSERT INTO `t_logs` VALUES ('8', '1', 'admin', 'base.web.controller.common.UserController::saveAuthorityList:145', '重新绑定用户(id=1)的医院列表', '2017-01-11 14:03:14');
INSERT INTO `t_logs` VALUES ('9', '1', 'admin', 'base.web.controller.common.UserController::saveAuthorityList:145', '重新绑定用户(id=1)的医院列表', '2017-01-11 14:20:45');
INSERT INTO `t_logs` VALUES ('10', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2017-01-11 15:02:42');
INSERT INTO `t_logs` VALUES ('11', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2017-01-11 15:21:57');
INSERT INTO `t_logs` VALUES ('12', '1', 'admin', 'base.web.controller.system.PatientInfoController::modifyFollowupInfo:234', '更新病人(patientId=CTI01020160918)的随访信息', '2017-01-11 16:11:05');

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
INSERT INTO `t_menu` VALUES ('104', 'page/hospital', 'menu-icon fa fa-list', '医院管理', '100', '4', null, 'hospital', null, null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-11既往MM相关的治疗信息';

-- ----------------------------
-- Records of t_mm_cure_history
-- ----------------------------
INSERT INTO `t_mm_cure_history` VALUES ('1', 'fds', '11', '11', '1', '1', '11', '1', '1', '', null, '0', '1', '12', null, '2017-01-10 09:56:19', '0', '2', '');
INSERT INTO `t_mm_cure_history` VALUES ('3', '', '0', '0', '0', '0', '0', '0', '0', '', null, '0', '1', '13', null, null, '0', '0', '');
INSERT INTO `t_mm_cure_history` VALUES ('4', '', '', '', '', '', '', '0', '0', '', null, '0', '1', '14', null, null, '0', '0', '');
INSERT INTO `t_mm_cure_history` VALUES ('5', '', '', '', '', '', '', '0', '0', '', null, '0', '1', '15', null, null, '0', '0', '');

-- ----------------------------
-- Table structure for `t_patient_contactinfo`
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
  `contactDate` varchar(32) DEFAULT NULL COMMENT '患者联系日期',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  `hospitalId` int(11) DEFAULT NULL COMMENT '所在医院ID',
  `operatorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-1患者联系信息';

-- ----------------------------
-- Records of t_patient_contactinfo
-- ----------------------------
INSERT INTO `t_patient_contactinfo` VALUES ('1', 'CTI01020160918', '1', '1', '2015-11-11', '', '', null, '12/18/2016', null, null, '0', '1', null);
INSERT INTO `t_patient_contactinfo` VALUES ('2', 'CTI01020160922', '1', '1', '', '', '', 'admin', null, null, '2016-12-25 16:24:58', '0', '1', '1');

-- ----------------------------
-- Table structure for `t_patient_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patient_info
-- ----------------------------
INSERT INTO `t_patient_info` VALUES ('12', 'CTI01020160918', '1', '1992-11-11', '1', '1', '3', '2', '3', '11', '11', '2', '', '3', '5', '1', '1', '2', '19', '16', '', '0', '2', '2', '1', '2', '0', '2017-01-11 16:11:05', '1', null, null, null, '11', 'admin', '1');
INSERT INTO `t_patient_info` VALUES ('13', 'test1', '1', '1111', '2', '1', '2', '1', '3', '170', '20', '5', '', '2', '1', '12', '1', '1', '20', '0', '', '0', '0', '0', '0', '2', '0', '2016-12-18 19:11:35', '1', null, null, '2016-12-18 19:11:35', '122', 'admin', '1');
INSERT INTO `t_patient_info` VALUES ('14', '11111', '1', '1921-11-11', '0', '0', '0', '0', '0', '', '', '0', '', '0', '0', '', '0', '0', '21', '0', '', '0', '0', '0', '0', '2', '0', '2016-12-24 16:24:54', '1', null, null, '2016-12-24 16:24:54', '', 'admin', '1');
INSERT INTO `t_patient_info` VALUES ('15', 'CTI01020160922', '1', '1992-11-11', '0', '0', '0', '0', '0', '', '', '0', '', '0', '0', '', '0', '0', '22', '0', '', '0', '2', '2', '0', '2', '0', '2016-12-25 16:23:02', '1', null, null, '2016-12-25 16:23:02', '', 'admin', '1');

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
  `patientId` varchar(128) DEFAULT NULL COMMENT '病人ID',
  `hospitalId` int(11) DEFAULT NULL,
  `operatorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-1，2知情同意书签署ijeg和随访工作信息';

-- ----------------------------
-- Records of t_patient_informed
-- ----------------------------
INSERT INTO `t_patient_informed` VALUES ('1', '2', '1991-11-11', null, null, null, null, null, '0', 'CTI01020160918', '1', null);
INSERT INTO `t_patient_informed` VALUES ('2', '2', '', 'admin', '2016-12-25 16:25:08', null, null, '2016-12-25 16:25:08', '0', 'CTI01020160922', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='权限表';

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
INSERT INTO `t_permission` VALUES ('15', 'patient:acquisition', '数据采集', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('16', 'patient:inform', '知情同意书', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('17', 'patient:contact', '联系患者', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('18', 'patient:followup', '数据采集', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('19', 'patient:acquisitionview ', '数据采集查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('20', 'patient:informview', '知情同意书状态查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('21', 'patient:contactview', '联系患者查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('22', 'patient:followupview', '查看随访', '201', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'ADMIN', '管理员', '0', null, null, null);
INSERT INTO `t_role` VALUES ('2', '采集员', 'COLLECTOR', '信息采集员', '0', null, null, null);
INSERT INTO `t_role` VALUES ('3', '护士', 'NURSE', '护士角色', '0', null, null, null);
INSERT INTO `t_role` VALUES ('4', '医生', 'DOCTOR', '医生', '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='角色关联权限表';

-- ----------------------------
-- Records of t_role2permission
-- ----------------------------
INSERT INTO `t_role2permission` VALUES ('16', '1', '5', null, null, null);
INSERT INTO `t_role2permission` VALUES ('17', '1', '6', null, null, null);
INSERT INTO `t_role2permission` VALUES ('18', '1', '7', null, null, null);
INSERT INTO `t_role2permission` VALUES ('19', '1', '8', null, null, null);
INSERT INTO `t_role2permission` VALUES ('20', '1', '10', null, null, null);
INSERT INTO `t_role2permission` VALUES ('21', '1', '11', null, null, null);
INSERT INTO `t_role2permission` VALUES ('22', '1', '12', null, null, null);
INSERT INTO `t_role2permission` VALUES ('23', '1', '13', null, null, null);
INSERT INTO `t_role2permission` VALUES ('24', '1', '14', null, null, null);
INSERT INTO `t_role2permission` VALUES ('29', '1', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('30', '1', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('31', '1', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('32', '1', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('33', '2', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('34', '2', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('35', '2', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('36', '2', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('37', '3', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('38', '3', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('39', '3', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('40', '3', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('41', '4', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('42', '4', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('43', '4', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('44', '4', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('45', '1', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('46', '2', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('47', '3', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('48', '4', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('81', '1', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('82', '1', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('83', '1', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('84', '1', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('85', '1', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('86', '1', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('87', '1', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('88', '1', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('89', '2', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('90', '2', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('91', '2', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('92', '2', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('93', '2', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('94', '2', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('95', '2', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('96', '2', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('97', '3', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('98', '3', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('99', '3', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('100', '3', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('101', '3', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('102', '3', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('103', '3', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('104', '3', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('105', '4', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('106', '4', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('107', '4', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('108', '4', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('109', '4', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('110', '4', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('111', '4', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('112', '4', '22', null, null, null);

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
INSERT INTO `t_user` VALUES ('1', 'admin', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'username', '13000000000', '12345678@qq.com', null, '2016-09-05 22:13:07', '2017-01-11 17:49:55', '1', '0', '0', null, null, null);
INSERT INTO `t_user` VALUES ('2', 'admin', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'test', '12143213', 'tes', null, '2016-10-07 22:48:31', null, '1', '0', '0', null, null, null);
INSERT INTO `t_user` VALUES ('3', 'jemeszhou', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'jemeszhou', '13062291538', '112@qq.com', null, '2016-11-09 16:31:28', '2017-01-10 09:46:49', '1', '0', '0', null, null, null);

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
INSERT INTO `t_user2hospital` VALUES ('1', '1', null, null, null);
