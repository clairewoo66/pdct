-- MySQL dump 10.13  Distrib 5.6.34, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.6.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_adr_item`
--

DROP TABLE IF EXISTS `t_adr_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_adr_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `degree` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不良反应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_adr_item`
--

LOCK TABLES `t_adr_item` WRITE;
/*!40000 ALTER TABLE `t_adr_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adr_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_blood_regular_result`
--

DROP TABLE IF EXISTS `t_blood_regular_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blood_regular_result` (
  `id` int(11) NOT NULL DEFAULT '0',
  `white` double DEFAULT NULL,
  `middle` double DEFAULT NULL,
  `lymphocyte` double DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `platelet` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血常规检查结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blood_regular_result`
--

LOCK TABLES `t_blood_regular_result` WRITE;
/*!40000 ALTER TABLE `t_blood_regular_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_blood_regular_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cgsh_result`
--

DROP TABLE IF EXISTS `t_cgsh_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cgsh_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL COMMENT '总蛋白',
  `white` double DEFAULT NULL COMMENT '白蛋白',
  `ball` double DEFAULT NULL COMMENT '球蛋白',
  `alt` double DEFAULT NULL COMMENT '丙氨酸氨基转移酶',
  `ast` double DEFAULT NULL COMMENT '天门冬氨酸氨基转移酶',
  `ggt` double DEFAULT NULL COMMENT 'γ谷氨酰基转移酶',
  `ldh` double DEFAULT NULL COMMENT '乳酸脱氢酶',
  `urea` double DEFAULT NULL COMMENT '尿素',
  `cr` double DEFAULT NULL COMMENT '肌酐',
  `ca` double DEFAULT NULL COMMENT '钙',
  `beta2mb` double DEFAULT NULL COMMENT '微球蛋白',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='常规生化结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cgsh_result`
--

LOCK TABLES `t_cgsh_result` WRITE;
/*!40000 ALTER TABLE `t_cgsh_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cgsh_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comp_status2diagnosis`
--

DROP TABLE IF EXISTS `t_comp_status2diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comp_status2diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkcomp_statusid` int(11) DEFAULT NULL,
  `fkdiagnosisid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='并发症史状况与诊断信息关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comp_status2diagnosis`
--

LOCK TABLES `t_comp_status2diagnosis` WRITE;
/*!40000 ALTER TABLE `t_comp_status2diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comp_status2diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comp_status2hostpitalized_info`
--

DROP TABLE IF EXISTS `t_comp_status2hostpitalized_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comp_status2hostpitalized_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkcompid` int(11) DEFAULT NULL,
  `fkhostid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comp_status2hostpitalized_info`
--

LOCK TABLES `t_comp_status2hostpitalized_info` WRITE;
/*!40000 ALTER TABLE `t_comp_status2hostpitalized_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comp_status2hostpitalized_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_complication2diagnosis`
--

DROP TABLE IF EXISTS `t_complication2diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_complication2diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkcomplicationid` int(11) DEFAULT NULL COMMENT '合并症史id',
  `fkdiagnosisid` int(11) DEFAULT NULL COMMENT '诊断信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合并症史与诊断信息的关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_complication2diagnosis`
--

LOCK TABLES `t_complication2diagnosis` WRITE;
/*!40000 ALTER TABLE `t_complication2diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_complication2diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_complication_item`
--

DROP TABLE IF EXISTS `t_complication_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_complication_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL COMMENT '编号',
  `name` varchar(128) DEFAULT NULL COMMENT '疾病名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='既往合并症史项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_complication_item`
--

LOCK TABLES `t_complication_item` WRITE;
/*!40000 ALTER TABLE `t_complication_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_complication_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_complication_status`
--

DROP TABLE IF EXISTS `t_complication_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_complication_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL COMMENT '名称',
  `status` int(5) DEFAULT NULL COMMENT '是否出现',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='并发症史情况项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_complication_status`
--

LOCK TABLES `t_complication_status` WRITE;
/*!40000 ALTER TABLE `t_complication_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_complication_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cost_list_item`
--

DROP TABLE IF EXISTS `t_cost_list_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cost_list_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `payWay` int(5) DEFAULT NULL COMMENT '1:公费,2:自费',
  `cost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='随访费用清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cost_list_item`
--

LOCK TABLES `t_cost_list_item` WRITE;
/*!40000 ALTER TABLE `t_cost_list_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cost_list_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cure_history`
--

DROP TABLE IF EXISTS `t_cure_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cure_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curePlan` varchar(2048) DEFAULT NULL COMMENT '治疗方案',
  `startYear` int(11) DEFAULT NULL,
  `startMonth` int(11) DEFAULT NULL,
  `endYear` int(11) DEFAULT NULL,
  `endMonth` int(11) DEFAULT NULL,
  `evaluateRule` varchar(256) DEFAULT NULL COMMENT '评估标准',
  `evaluateResult` int(5) DEFAULT NULL COMMENT '评估结果:0-6',
  `index` int(11) DEFAULT NULL COMMENT '第几次评估',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='治疗信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cure_history`
--

LOCK TABLES `t_cure_history` WRITE;
/*!40000 ALTER TABLE `t_cure_history` DISABLE KEYS */;
INSERT INTO `t_cure_history` VALUES (1,'plan',1992,10,0,0,NULL,0,1);
/*!40000 ALTER TABLE `t_cure_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cure_history2patient`
--

DROP TABLE IF EXISTS `t_cure_history2patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cure_history2patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkpatientid` int(11) DEFAULT NULL,
  `fkcurehistoryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cure_history2patient`
--

LOCK TABLES `t_cure_history2patient` WRITE;
/*!40000 ALTER TABLE `t_cure_history2patient` DISABLE KEYS */;
INSERT INTO `t_cure_history2patient` VALUES (1,7,1);
/*!40000 ALTER TABLE `t_cure_history2patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis2fish`
--

DROP TABLE IF EXISTS `t_diagnosis2fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_diagnosis2fish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkdiagnosisid` int(11) DEFAULT NULL,
  `fkfishid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诊断信息与病人关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis2fish`
--

LOCK TABLES `t_diagnosis2fish` WRITE;
/*!40000 ALTER TABLE `t_diagnosis2fish` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_diagnosis2fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis2iconography`
--

DROP TABLE IF EXISTS `t_diagnosis2iconography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_diagnosis2iconography` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkiconographyid` int(11) DEFAULT NULL COMMENT '影像学检查项目id',
  `fkdiagnosisid` varchar(100) DEFAULT NULL COMMENT '诊断信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='影像学检查与诊断结果的关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis2iconography`
--

LOCK TABLES `t_diagnosis2iconography` WRITE;
/*!40000 ALTER TABLE `t_diagnosis2iconography` DISABLE KEYS */;
INSERT INTO `t_diagnosis2iconography` VALUES (3,3,'3'),(4,4,'3'),(6,6,'3'),(7,7,'4'),(8,8,'4'),(9,9,'4'),(10,10,'4'),(13,13,'6'),(14,14,'6');
/*!40000 ALTER TABLE `t_diagnosis2iconography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis2plasmacyte`
--

DROP TABLE IF EXISTS `t_diagnosis2plasmacyte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_diagnosis2plasmacyte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkdiagnosisid` int(11) DEFAULT NULL COMMENT '诊断信息id',
  `fkplasmacyteid` varchar(100) DEFAULT NULL COMMENT '浆细胞项目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诊断信息于浆细胞分布的关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis2plasmacyte`
--

LOCK TABLES `t_diagnosis2plasmacyte` WRITE;
/*!40000 ALTER TABLE `t_diagnosis2plasmacyte` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_diagnosis2plasmacyte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_info`
--

DROP TABLE IF EXISTS `t_diagnosis_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_diagnosis_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosisTime` varchar(64) DEFAULT NULL COMMENT '诊断时间',
  `clinicType` varchar(128) DEFAULT NULL COMMENT '多发性骨髓瘤诊断时临床分型',
  `clinicTypeDS` int(5) DEFAULT NULL COMMENT '患者具体临床分期(DS法);1~4:1~4期',
  `clinicTypeISS` int(5) DEFAULT NULL COMMENT '患者具体临床分期(ISS法);1-3:1-3期',
  `bloodResultId` int(11) DEFAULT NULL,
  `urineResultId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='诊断信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_info`
--

LOCK TABLES `t_diagnosis_info` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_info` DISABLE KEYS */;
INSERT INTO `t_diagnosis_info` VALUES (3,NULL,NULL,0,0,5,6),(4,NULL,NULL,0,0,7,8),(6,NULL,NULL,0,0,11,12);
/*!40000 ALTER TABLE `t_diagnosis_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_fish_item`
--

DROP TABLE IF EXISTS `t_fish_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_fish_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL COMMENT '项目',
  `result` varchar(1024) DEFAULT NULL COMMENT '结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FISH检查项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fish_item`
--

LOCK TABLES `t_fish_item` WRITE;
/*!40000 ALTER TABLE `t_fish_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_fish_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info`
--

DROP TABLE IF EXISTS `t_followup_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cgshResult` int(11) DEFAULT NULL,
  `serumMCheckResult` int(11) DEFAULT NULL,
  `urineMCheckResult` int(11) DEFAULT NULL,
  `bloodCheckResult` int(11) DEFAULT NULL,
  `clinicalStagesDS` int(5) DEFAULT NULL,
  `clinicalStagesISS` int(5) DEFAULT NULL,
  `inHelpProject` int(5) DEFAULT NULL,
  `helpProjectName` varchar(256) DEFAULT NULL,
  `evaluateRule` varchar(256) DEFAULT NULL,
  `evaluateResult` varchar(256) DEFAULT NULL,
  `timesOuter` int(11) DEFAULT NULL,
  `timesEmergency` int(11) DEFAULT NULL,
  `costTotal` double DEFAULT NULL,
  `costMed` double DEFAULT NULL,
  `costNonMed` double DEFAULT NULL,
  `lastCostTotal` double DEFAULT NULL,
  `lastCostMed` double DEFAULT NULL,
  `lastCostNonMed` double DEFAULT NULL,
  `lastECostToal` double DEFAULT NULL,
  `lastECostMed` double DEFAULT NULL,
  `lastECostNonMed` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='随访信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info`
--

LOCK TABLES `t_followup_info` WRITE;
/*!40000 ALTER TABLE `t_followup_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info2comp_status`
--

DROP TABLE IF EXISTS `t_followup_info2comp_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info2comp_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followup_id` int(11) DEFAULT NULL,
  `comp_status_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='随访并发症情况关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info2comp_status`
--

LOCK TABLES `t_followup_info2comp_status` WRITE;
/*!40000 ALTER TABLE `t_followup_info2comp_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info2comp_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info2cost`
--

DROP TABLE IF EXISTS `t_followup_info2cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info2cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followup_id` int(11) DEFAULT NULL,
  `cost_list_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='随访花费清单列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info2cost`
--

LOCK TABLES `t_followup_info2cost` WRITE;
/*!40000 ALTER TABLE `t_followup_info2cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info2cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info2iconography`
--

DROP TABLE IF EXISTS `t_followup_info2iconography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info2iconography` (
  `id` int(11) NOT NULL DEFAULT '0',
  `followup_info_id` int(11) DEFAULT NULL,
  `iconography_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info2iconography`
--

LOCK TABLES `t_followup_info2iconography` WRITE;
/*!40000 ALTER TABLE `t_followup_info2iconography` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info2iconography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info2medicine`
--

DROP TABLE IF EXISTS `t_followup_info2medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info2medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followup_info_id` int(11) DEFAULT NULL,
  `medicine_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院外用药信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info2medicine`
--

LOCK TABLES `t_followup_info2medicine` WRITE;
/*!40000 ALTER TABLE `t_followup_info2medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info2medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info2plasmacyte`
--

DROP TABLE IF EXISTS `t_followup_info2plasmacyte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_info2plasmacyte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followup_info_id` int(11) DEFAULT NULL,
  `plasmacyte_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info2plasmacyte`
--

LOCK TABLES `t_followup_info2plasmacyte` WRITE;
/*!40000 ALTER TABLE `t_followup_info2plasmacyte` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_followup_info2plasmacyte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospital`
--

DROP TABLE IF EXISTS `t_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL COMMENT '医院名称',
  `code` varchar(128) DEFAULT NULL COMMENT '医院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospital`
--

LOCK TABLES `t_hospital` WRITE;
/*!40000 ALTER TABLE `t_hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_cost`
--

DROP TABLE IF EXISTS `t_hospitaled_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitaled_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `westernMed` double DEFAULT NULL,
  `cure` double DEFAULT NULL,
  `check` double DEFAULT NULL,
  `inspect` double DEFAULT NULL,
  `material` double DEFAULT NULL,
  `bed` double DEFAULT NULL,
  `food` double DEFAULT NULL,
  `nursing` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `self` double DEFAULT NULL,
  `outer` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院费用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_cost`
--

LOCK TABLES `t_hospitaled_cost` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospitaled_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_info2adr`
--

DROP TABLE IF EXISTS `t_hospitaled_info2adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitaled_info2adr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adr_id` int(11) DEFAULT NULL,
  `hospitaled_info_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院间不良反应';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_info2adr`
--

LOCK TABLES `t_hospitaled_info2adr` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_info2adr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospitaled_info2adr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_info2chemotherapy`
--

DROP TABLE IF EXISTS `t_hospitaled_info2chemotherapy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitaled_info2chemotherapy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_info_id` int(11) DEFAULT NULL,
  `medicine_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院信息中化疗药物关联列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_info2chemotherapy`
--

LOCK TABLES `t_hospitaled_info2chemotherapy` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_info2chemotherapy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospitaled_info2chemotherapy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_info2support`
--

DROP TABLE IF EXISTS `t_hospitaled_info2support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitaled_info2support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospitaled_info_id` int(11) DEFAULT NULL,
  `medicine_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支持药物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_info2support`
--

LOCK TABLES `t_hospitaled_info2support` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_info2support` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospitaled_info2support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitalized_info`
--

DROP TABLE IF EXISTS `t_hospitalized_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitalized_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` varchar(64) DEFAULT NULL COMMENT '入院日期',
  `endTime` varchar(64) DEFAULT NULL COMMENT '出院日期',
  `ecogMark` int(11) DEFAULT NULL COMMENT 'ECOG评分',
  `KarnofskyMark` int(11) DEFAULT NULL COMMENT 'Karnofsky评分',
  `cgshCheckTime` varchar(64) DEFAULT NULL COMMENT '常规生化-检查时间',
  `cgshCheckResult` int(11) DEFAULT NULL COMMENT '生化检查结果',
  `serumMCheckTime` varchar(64) DEFAULT NULL COMMENT '血清M蛋白检查时间',
  `serumMCheckResult` int(11) DEFAULT NULL COMMENT '血清M蛋白检查结果',
  `bloodCheckTime` varchar(64) DEFAULT NULL COMMENT '血常规检查时间',
  `bloodCheckResult` int(11) DEFAULT NULL COMMENT '血常规检查结果',
  `clinicalStagesDS` int(5) DEFAULT NULL,
  `clinicalStagesISS` int(5) DEFAULT NULL,
  `clinicalType` varchar(128) DEFAULT NULL,
  `curePlan1` varchar(1024) DEFAULT NULL,
  `curePlan2` varchar(1024) DEFAULT NULL,
  `changePlanReason` varchar(1024) DEFAULT NULL,
  `inHelpProject` int(5) DEFAULT NULL,
  `helpProjectName` varchar(128) DEFAULT NULL,
  `livingState` int(5) DEFAULT NULL,
  `deathTime` varchar(64) DEFAULT NULL,
  `deathReason` varchar(256) DEFAULT NULL,
  `evaluateAfterCure` int(5) DEFAULT NULL,
  `evaluateRule` varchar(64) DEFAULT NULL,
  `evaluateResult` int(11) DEFAULT NULL,
  `adrAfterCure` int(5) DEFAULT NULL,
  `fkcostid` int(11) DEFAULT NULL,
  `urineMCheckTime` varchar(64) DEFAULT NULL,
  `urineMCheckResult` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitalized_info`
--

LOCK TABLES `t_hospitalized_info` WRITE;
/*!40000 ALTER TABLE `t_hospitalized_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hospitalized_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hosptialed_info2iconography`
--

DROP TABLE IF EXISTS `t_hosptialed_info2iconography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hosptialed_info2iconography` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostpitaled_info_id` int(11) DEFAULT NULL,
  `iconography_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院信息影像学检查关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hosptialed_info2iconography`
--

LOCK TABLES `t_hosptialed_info2iconography` WRITE;
/*!40000 ALTER TABLE `t_hosptialed_info2iconography` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hosptialed_info2iconography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hosptialed_info2plasmacyte`
--

DROP TABLE IF EXISTS `t_hosptialed_info2plasmacyte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hosptialed_info2plasmacyte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostptialed_info_id` int(11) DEFAULT NULL,
  `plasmacyte_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院信息与骨穿刺浆细胞分布检查结果关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hosptialed_info2plasmacyte`
--

LOCK TABLES `t_hosptialed_info2plasmacyte` WRITE;
/*!40000 ALTER TABLE `t_hosptialed_info2plasmacyte` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hosptialed_info2plasmacyte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_iconography_item`
--

DROP TABLE IF EXISTS `t_iconography_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_iconography_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) DEFAULT NULL COMMENT '项目名称',
  `checkTime` varchar(64) DEFAULT NULL COMMENT '检查时间',
  `position` varchar(2048) DEFAULT NULL COMMENT '占位病变位置',
  `count` varchar(2048) DEFAULT NULL COMMENT '占位病变数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='影像学检查项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_iconography_item`
--

LOCK TABLES `t_iconography_item` WRITE;
/*!40000 ALTER TABLE `t_iconography_item` DISABLE KEYS */;
INSERT INTO `t_iconography_item` VALUES (3,'X光','10-20','位置','fdsfds'),(4,'CT','10-20','位置','fdsfds'),(6,'其他','10-20','位置','fdsfds'),(7,'X光','10-20','位置','fdsfds'),(8,'CT','10-20','位置','fdsfds'),(9,'其他','10-20','位置','fdsfds'),(10,'其他','10-20','位置','fdsfds'),(13,'X光','10-20','位置','fdsfds'),(14,'CT','10-20','位置','fdsfds');
/*!40000 ALTER TABLE `t_iconography_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_immunoglobulin_check_result`
--

DROP TABLE IF EXISTS `t_immunoglobulin_check_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_immunoglobulin_check_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `igG` int(11) DEFAULT NULL,
  `igA` int(11) DEFAULT NULL,
  `igM` int(11) DEFAULT NULL,
  `kappaChain` int(11) DEFAULT NULL,
  `lambadaChain` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='免疫球蛋白免疫固定电泳检查结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_immunoglobulin_check_result`
--

LOCK TABLES `t_immunoglobulin_check_result` WRITE;
/*!40000 ALTER TABLE `t_immunoglobulin_check_result` DISABLE KEYS */;
INSERT INTO `t_immunoglobulin_check_result` VALUES (5,10,10,10,0,0),(6,10,10,10,0,0),(7,10,10,10,0,0),(8,10,10,10,0,0),(11,10,10,10,0,0),(12,10,10,10,0,0);
/*!40000 ALTER TABLE `t_immunoglobulin_check_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_medicine_item`
--

DROP TABLE IF EXISTS `t_medicine_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_medicine_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `quantity` varchar(64) DEFAULT NULL,
  `times` varchar(64) DEFAULT NULL,
  `outer` int(5) DEFAULT NULL COMMENT '0:否,1:是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药物信息项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_medicine_item`
--

LOCK TABLES `t_medicine_item` WRITE;
/*!40000 ALTER TABLE `t_medicine_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_medicine_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataUrl` varchar(128) NOT NULL,
  `menuClass` varchar(128) NOT NULL,
  `menuName` varchar(128) NOT NULL,
  `parentId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `menuCode` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (100,'#','menu-icon fa fa-desktop','系统管理',0,1,'系统管理','system'),(101,'page/user','menu-icon fa fa-user','用户管理',100,1,NULL,'user'),(102,'page/role','menu-icon fa fa-user','角色管理',100,2,NULL,'role'),(103,'page/menu','menu-icon fa fa-list','菜单授权',100,3,NULL,'menu'),(105,'page/monitor','menu-icon fa fa-shield','监控管理',100,5,'监控管理','durid'),(200,'#','menu-icon fa fa-wheelchair','病人管理',0,2,'病人管理','patient'),(201,'page/patientSearch','menu-icon fa fa-search','病例查询',200,1,'病例查询页面','patientSearch'),(202,'page/acquisition','menu-icon fa fa-plus','新增采集',200,2,'新增采集表','acquisition');
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_info`
--

DROP TABLE IF EXISTS `t_patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(64) DEFAULT NULL COMMENT '病人Id号;(医院名+住院号)',
  `homeTelephoneNumber` varchar(64) DEFAULT NULL COMMENT '家庭座机',
  `mobilePhoneNumber` varchar(64) DEFAULT NULL COMMENT '患者手机号码',
  `emergencyRelationship` varchar(64) DEFAULT NULL COMMENT '紧急联系人关系',
  `emergencyPhoneNumber` varchar(64) DEFAULT NULL COMMENT '紧急联系人手机号码',
  `fkhostpitalid` int(11) DEFAULT NULL COMMENT '就诊医院id号',
  `birthday` varchar(64) DEFAULT NULL COMMENT '出生日期',
  `gender` int(5) DEFAULT NULL COMMENT '1:男,2:女',
  `nation` varchar(64) DEFAULT NULL COMMENT '民族,"汉族"/其他',
  `place` int(5) DEFAULT NULL COMMENT '1:上海地区,2:省会及其他直辖市,3地级市,4:县城,5:农村',
  `maritalStatus` int(5) DEFAULT NULL COMMENT '婚姻状态: 1:未婚,2:已婚,3:离异,4:丧偶,5:其他',
  `jobStatus` int(5) DEFAULT NULL COMMENT '工作状态: 1:在校学生,2:全职,3:待业;4:务农;5:退休',
  `height` varchar(32) DEFAULT NULL COMMENT '身高cm',
  `weight` varchar(32) DEFAULT NULL COMMENT '体重kg',
  `insuranceType` int(5) DEFAULT NULL COMMENT '医保类型:1:城镇职工,2:城镇居民,3:新农合,4:商业医保,5:完全自费,6,其他',
  `otherInsurance` varchar(128) DEFAULT NULL,
  `ecogMark` int(5) DEFAULT NULL COMMENT 'ECOG评分:1-5',
  `karnofskyMark` varchar(128) DEFAULT NULL COMMENT 'Karnofsky评分',
  `smokingStatus` int(5) DEFAULT NULL COMMENT '1:从未吸烟,2:已经戒烟,3:仍然吸烟',
  `drinkStatus` int(11) DEFAULT NULL COMMENT '1:否,2:是',
  `fkdiagnosisid` int(11) NOT NULL COMMENT '诊断信息',
  `eduLevel` int(5) DEFAULT NULL COMMENT '教育水平',
  `followupid` int(5) DEFAULT NULL,
  `nationOther` varchar(32) DEFAULT NULL,
  `maritalStatusOther` varchar(128) DEFAULT NULL,
  `contactStatus` int(11) DEFAULT NULL COMMENT '/联系患者状态;1:未完成,2:已完成,3:已死亡',
  `agreementStatus` int(11) DEFAULT NULL COMMENT '患者知情同意书状态：0:未完成,1:同意,2:拒绝;3:不适用',
  `followupStatus` int(11) DEFAULT NULL COMMENT '0:未完成,1:已完成,2:不适用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_info`
--

LOCK TABLES `t_patient_info` WRITE;
/*!40000 ALTER TABLE `t_patient_info` DISABLE KEYS */;
INSERT INTO `t_patient_info` VALUES (4,NULL,'1300000000','1300000000','父子','1300000000',2,'1970-01-01',2,'0',1,2,2,'170','20',2,'',3,'方法',2,1,0,1,0,'',NULL,NULL,NULL,NULL),(7,'test3',NULL,NULL,NULL,NULL,0,'1970-01-01',0,'0',0,0,0,NULL,NULL,0,NULL,0,NULL,0,0,6,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_patient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_info2hostpitalized_info`
--

DROP TABLE IF EXISTS `t_patient_info2hostpitalized_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient_info2hostpitalized_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkhostinfoid` int(11) DEFAULT NULL,
  `fkpatientid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='住院信息和病人关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_info2hostpitalized_info`
--

LOCK TABLES `t_patient_info2hostpitalized_info` WRITE;
/*!40000 ALTER TABLE `t_patient_info2hostpitalized_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_patient_info2hostpitalized_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_permission`
--

DROP TABLE IF EXISTS `t_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `fkmenuid` int(11) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_permission`
--

LOCK TABLES `t_permission` WRITE;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` VALUES (1,'user:add','添加',101,NULL),(2,'user:edit','修改',101,NULL),(3,'user:delete','删除',101,NULL),(4,'user:view','查看',101,NULL),(5,'role:add','添加',102,NULL),(6,'role:edit','修改',102,NULL),(7,'role:delete','删除',102,NULL),(8,'role:view','查看',102,NULL),(9,'menu:auth','授权',103,NULL),(10,'role:auth','授权',102,NULL);
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_plasmacyte_item`
--

DROP TABLE IF EXISTS `t_plasmacyte_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_plasmacyte_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(64) DEFAULT NULL,
  `result` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浆细胞分布检查结果项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_plasmacyte_item`
--

LOCK TABLES `t_plasmacyte_item` WRITE;
/*!40000 ALTER TABLE `t_plasmacyte_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_plasmacyte_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `builtIn` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'管理员','ADMIN','管理员',0);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role2menu`
--

DROP TABLE IF EXISTS `t_role2menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role2menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkroleid` int(11) NOT NULL,
  `fkmenuid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role2menu`
--

LOCK TABLES `t_role2menu` WRITE;
/*!40000 ALTER TABLE `t_role2menu` DISABLE KEYS */;
INSERT INTO `t_role2menu` VALUES (22,1,100),(23,1,101),(24,1,102),(25,1,103),(26,1,105),(27,1,200),(28,1,201),(29,1,202),(30,1,1);
/*!40000 ALTER TABLE `t_role2menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role2permission`
--

DROP TABLE IF EXISTS `t_role2permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role2permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkroleid` int(11) NOT NULL,
  `fkpermissionid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role2permission`
--

LOCK TABLES `t_role2permission` WRITE;
/*!40000 ALTER TABLE `t_role2permission` DISABLE KEYS */;
INSERT INTO `t_role2permission` VALUES (7,1,1),(8,1,2),(9,1,3),(10,1,4),(15,1,9),(16,1,5),(17,1,6),(18,1,7),(19,1,8),(20,1,10);
/*!40000 ALTER TABLE `t_role2permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_serum_m_result`
--

DROP TABLE IF EXISTS `t_serum_m_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_serum_m_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `igG` double DEFAULT NULL,
  `igA` double DEFAULT NULL,
  `igM` double DEFAULT NULL,
  `kappaChain` double DEFAULT NULL,
  `lambdaChain` double DEFAULT NULL,
  `klRate` double DEFAULT NULL,
  `igE` double DEFAULT NULL,
  `mProtein` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血清M蛋白检查结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_serum_m_result`
--

LOCK TABLES `t_serum_m_result` WRITE;
/*!40000 ALTER TABLE `t_serum_m_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_serum_m_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_urine_m_result`
--

DROP TABLE IF EXISTS `t_urine_m_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_urine_m_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kappaChain` double DEFAULT NULL,
  `lambdaChain` double DEFAULT NULL,
  `klRate` double DEFAULT NULL,
  `lambada24` double DEFAULT NULL,
  `kappa24` double DEFAULT NULL,
  `m24` double DEFAULT NULL,
  `total24` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尿M蛋白检查结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_urine_m_result`
--

LOCK TABLES `t_urine_m_result` WRITE;
/*!40000 ALTER TABLE `t_urine_m_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_urine_m_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','username','13000000000','12345678@qq.com',NULL,'2016-09-05 22:13:07','2016-11-06 19:27:09',1,0,1),(2,'admin','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','test','12143213','tes',NULL,'2016-10-07 22:48:31',NULL,1,0,0);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user2hospital`
--

DROP TABLE IF EXISTS `t_user2hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user2hospital` (
  `user_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user2hospital`
--

LOCK TABLES `t_user2hospital` WRITE;
/*!40000 ALTER TABLE `t_user2hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user2hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 19:29:40
