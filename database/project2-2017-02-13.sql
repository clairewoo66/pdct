-- MySQL dump 10.13  Distrib 5.6.34, for Linux (x86_64)
--
-- Host: localhost    Database: project2
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
-- Table structure for table `t_diagnosis_complication_item`
--

DROP TABLE IF EXISTS `t_diagnosis_complication_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-3.0诊断时疾病相关并发症';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_complication_item`
--

LOCK TABLES `t_diagnosis_complication_item` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_complication_item` DISABLE KEYS */;
INSERT INTO `t_diagnosis_complication_item` VALUES (14,1,'gfd','11111111',19,NULL,'2017-01-11 22:06:18',0),(16,1,'','',20,NULL,NULL,0),(17,1,'','',21,NULL,NULL,0),(19,1,'12',NULL,22,NULL,'2017-02-13 19:46:44',0),(20,1,'','',23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(22,1,'','',25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(26,0,'f23',NULL,22,NULL,'2017-02-13 19:46:44',0),(27,0,'fdg',NULL,22,NULL,'2017-02-13 19:46:44',0),(31,1,'122',NULL,24,NULL,'2017-02-13 19:44:17',0),(32,2,'fds',NULL,24,NULL,'2017-02-13 19:44:17',0),(33,3,'fdsa',NULL,24,NULL,'2017-02-13 19:44:17',0),(34,4,'fdsa',NULL,24,NULL,'2017-02-13 19:44:17',0),(38,1,'1',NULL,26,NULL,'2017-02-13 20:30:45',0),(39,2,'2',NULL,26,NULL,'2017-02-13 20:30:45',0),(40,3,'3',NULL,26,NULL,'2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_complication_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_complication_status`
--

DROP TABLE IF EXISTS `t_diagnosis_complication_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集-疾病诊断信息-4.0诊断时疾病相关并发症发生情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_complication_status`
--

LOCK TABLES `t_diagnosis_complication_status` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_complication_status` DISABLE KEYS */;
INSERT INTO `t_diagnosis_complication_status` VALUES (112,'骨相关事件',1,1,19,NULL,'2017-01-11 22:06:18',0),(113,'高钙血症',2,2,19,NULL,'2017-01-11 22:06:18',0),(114,'病理性骨折',1,3,19,NULL,'2017-01-11 22:06:18',0),(115,'脊髓压迫',1,4,19,NULL,'2017-01-11 22:06:18',0),(116,'需要进行放射治疗的骨痛',1,5,19,NULL,'2017-01-11 22:06:18',0),(117,'慢性肾病',2,6,19,NULL,'2017-01-11 22:06:18',0),(118,'高粘滞血症',1,7,19,NULL,'2017-01-11 22:06:18',0),(119,'贫血',1,8,19,NULL,'2017-01-11 22:06:18',0),(120,'凝血/血栓形成',1,9,19,NULL,'2017-01-11 22:06:18',0),(121,'出血',1,10,19,NULL,'2017-01-11 22:06:18',0),(122,'gf',2,11,19,NULL,'2017-01-11 22:06:18',0),(123,'的',2,12,19,NULL,'2017-01-11 22:06:18',0),(124,'骨相关事件',0,1,20,NULL,NULL,0),(125,'高钙血症',0,2,20,NULL,NULL,0),(126,'病理性骨折',0,3,20,NULL,NULL,0),(127,'脊髓压迫',0,4,20,NULL,NULL,0),(128,'需要进行放射治疗的骨痛',0,5,20,NULL,NULL,0),(129,'慢性肾病',0,6,20,NULL,NULL,0),(130,'高粘滞血症',0,7,20,NULL,NULL,0),(131,'贫血',0,8,20,NULL,NULL,0),(132,'凝血/血栓形成',0,9,20,NULL,NULL,0),(133,'出血',0,10,20,NULL,NULL,0),(134,'',0,11,20,NULL,NULL,0),(135,'骨相关事件',0,1,21,NULL,NULL,0),(136,'高钙血症',0,2,21,NULL,NULL,0),(137,'病理性骨折',0,3,21,NULL,NULL,0),(138,'脊髓压迫',0,4,21,NULL,NULL,0),(139,'需要进行放射治疗的骨痛',0,5,21,NULL,NULL,0),(140,'慢性肾病',0,6,21,NULL,NULL,0),(141,'高粘滞血症',0,7,21,NULL,NULL,0),(142,'贫血',0,8,21,NULL,NULL,0),(143,'凝血/血栓形成',0,9,21,NULL,NULL,0),(144,'出血',0,10,21,NULL,NULL,0),(145,'',0,11,21,NULL,NULL,0),(146,'高钙血症',1,1,22,NULL,'2017-02-13 19:46:44',0),(147,'病理性骨折',1,2,22,NULL,'2017-02-13 19:46:44',0),(148,'脊髓压迫',1,3,22,NULL,'2017-02-13 19:46:44',0),(149,'需要进行放射治疗的骨痛',1,4,22,NULL,'2017-02-13 19:46:44',0),(150,'慢性肾病',1,5,22,NULL,'2017-02-13 19:46:44',0),(151,'高粘滞血症',1,6,22,NULL,'2017-02-13 19:46:44',0),(152,'贫血',1,7,22,NULL,'2017-02-13 19:46:44',0),(153,'凝血/血栓形成',1,8,22,NULL,'2017-02-13 19:46:44',0),(154,'出血',1,9,22,NULL,'2017-02-13 19:46:44',0),(155,'出血',1,10,22,NULL,'2017-02-13 19:46:44',0),(157,'骨相关事件',0,1,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(158,'高钙血症',0,2,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(159,'病理性骨折',0,3,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(160,'脊髓压迫',0,4,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(161,'需要进行放射治疗的骨痛',0,5,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(162,'慢性肾病',0,6,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(163,'高粘滞血症',0,7,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(164,'贫血',0,8,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(165,'凝血/血栓形成',0,9,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(166,'出血',0,10,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(167,'',0,11,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(168,'高钙血症',0,1,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(169,'病理性骨折',0,2,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(170,'脊髓压迫',0,3,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(171,'需要进行放射治疗的骨痛',0,4,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(172,'慢性肾病',0,5,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(173,'高粘滞血症',0,6,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(174,'贫血',0,7,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(175,'凝血/血栓形成',0,8,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(176,'出血',0,9,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(177,'出血',0,10,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(178,'测试',1,11,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(179,'骨相关事件',0,1,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(180,'高钙血症',0,2,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(181,'病理性骨折',0,3,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(182,'脊髓压迫',0,4,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(183,'需要进行放射治疗的骨痛',0,5,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(184,'慢性肾病',0,6,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(185,'高粘滞血症',0,7,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(186,'贫血',0,8,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(187,'凝血/血栓形成',0,9,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(188,'出血',0,10,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(189,'',0,11,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(190,'高钙血症',0,1,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(191,'病理性骨折',0,2,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(192,'脊髓压迫',0,3,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(193,'需要进行放射治疗的骨痛',0,4,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(194,'慢性肾病',0,5,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(195,'高粘滞血症',0,6,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(196,'贫血',0,7,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(197,'凝血/血栓形成',0,8,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(198,'出血',0,9,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(199,'出血',0,11,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(200,'12',2,12,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(201,'测试2',1,12,24,NULL,'2017-02-13 19:44:17',0),(202,'测试3',2,13,24,NULL,'2017-02-13 19:44:17',0),(203,'呵呵',1,11,22,NULL,'2017-02-13 19:46:44',0),(204,'呵呵大',2,12,22,NULL,'2017-02-13 19:46:44',0),(205,'1',1,13,22,NULL,'2017-02-13 19:46:44',0),(206,'1',2,14,22,NULL,'2017-02-13 19:46:44',0),(207,'23',1,13,26,NULL,'2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_complication_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_fish_item`
--

DROP TABLE IF EXISTS `t_diagnosis_fish_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-10fish检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_fish_item`
--

LOCK TABLES `t_diagnosis_fish_item` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_fish_item` DISABLE KEYS */;
INSERT INTO `t_diagnosis_fish_item` VALUES (29,'IgH重排 (%)','',19,1,NULL,'2017-01-11 22:06:19',0),(30,' 13q缺失 (%)','',19,2,NULL,'2017-01-11 22:06:19',0),(31,' 17p缺失 (%)','',19,3,NULL,'2017-01-11 22:06:19',0),(32,'1q21扩增(%)','',19,4,NULL,'2017-01-11 22:06:19',0),(33,'t(4:14) (%)','',19,5,NULL,'2017-01-11 22:06:19',0),(34,'t(11:14) (%)','',19,6,NULL,'2017-01-11 22:06:19',0),(35,'t(14:16) (%)','D',19,7,NULL,'2017-01-11 22:06:19',0),(36,'','D',19,8,NULL,'2017-01-11 22:06:19',0),(37,'','',19,12,NULL,'2017-01-11 22:06:19',0),(38,'','',19,13,NULL,'2017-01-11 22:06:19',0),(39,'IgH重排 (%)','1',26,1,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(40,' 13q缺失 (%)','1',26,2,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(41,' 17p缺失 (%)','',26,3,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(42,'1q21扩增(%)','',26,4,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(43,'t(4;14) (%)','',26,5,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(44,'t(11;14) (%)','',26,6,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(45,'t(14;16) (%)','',26,7,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(46,'dfsd','',26,8,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(47,'dsf','',26,9,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(48,'IgH重排 (%)','',24,1,NULL,'2017-02-13 19:44:17',0),(49,' 13q缺失 (%)','',24,2,NULL,'2017-02-13 19:44:17',0),(50,' 17p缺失 (%)','',24,3,NULL,'2017-02-13 19:44:17',0),(51,'1q21扩增(%)','',24,4,NULL,'2017-02-13 19:44:17',0),(52,'t(4;14) (%)','',24,5,NULL,'2017-02-13 19:44:17',0),(53,'t(11;14) (%)','',24,6,NULL,'2017-02-13 19:44:17',0),(54,'t(14;16) (%)','',24,7,NULL,'2017-02-13 19:44:17',0),(55,'fds','1',24,8,NULL,'2017-02-13 19:44:17',0),(56,'23','2',24,9,NULL,'2017-02-13 19:44:17',0);
/*!40000 ALTER TABLE `t_diagnosis_fish_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_iconography_item`
--

DROP TABLE IF EXISTS `t_diagnosis_iconography_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-8疾病诊断时全身骨骼影像学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_iconography_item`
--

LOCK TABLES `t_diagnosis_iconography_item` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_iconography_item` DISABLE KEYS */;
INSERT INTO `t_diagnosis_iconography_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(18,'PET-CT','333333333333333','444444444444444',19,4,NULL,'2017-01-11 22:06:18',0),(19,'同位素骨扫描','333333333333333','444444444444444',19,5,NULL,'2017-01-11 22:06:18',0),(20,'222222222222222222',NULL,'444444444444444D',19,6,NULL,'2017-01-11 22:06:18',0),(21,'222222222222222222',NULL,'444444444444444D',19,8,NULL,'2017-01-11 22:06:18',0),(22,'X光','333333333333333','444444444444444',19,1,NULL,'2017-01-11 22:06:18',0),(23,'CT','333333333333333','444444444444444',19,2,NULL,'2017-01-11 22:06:18',0),(24,'MRI','333333333333333','444444444444444',19,3,NULL,'2017-01-11 22:06:18',0),(25,'X光','','',20,1,NULL,NULL,0),(26,'CT','','',20,2,NULL,NULL,0),(27,'MRI','','',20,3,NULL,NULL,0),(28,'PET-CT','','',20,4,NULL,NULL,0),(29,'同位素骨扫描','','',20,5,NULL,NULL,0),(30,'','','',20,6,NULL,NULL,0),(31,'X光','','',21,1,NULL,NULL,0),(32,'CT','','',21,2,NULL,NULL,0),(33,'MRI','','',21,3,NULL,NULL,0),(34,'PET-CT','','',21,4,NULL,NULL,0),(35,'同位素骨扫描','','',21,5,NULL,NULL,0),(36,'','','',21,6,NULL,NULL,0),(37,'X光','','',22,1,NULL,'2017-02-13 19:46:44',0),(38,'CT','','',22,2,NULL,'2017-02-13 19:46:44',0),(39,'MRI','','',22,3,NULL,'2017-02-13 19:46:44',0),(40,'PET-CT','','',22,4,NULL,'2017-02-13 19:46:44',0),(41,'同位素骨扫描','','',22,5,NULL,'2017-02-13 19:46:44',0),(42,'',NULL,'',22,6,NULL,'2017-02-13 19:46:44',0),(43,'',NULL,'D',19,9,NULL,'2017-01-11 22:06:18',0),(44,'X光','','',23,1,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(45,'CT','','',23,2,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(46,'MRI','','',23,3,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(47,'PET-CT','','',23,4,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(48,'同位素骨扫描','','',23,5,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(49,'','','',23,6,NULL,'2017-01-11 21:15:03',0),(50,'X光','','',24,1,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(51,'CT','','',24,2,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(52,'MRI','','',24,3,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(53,'PET-CT','','',24,4,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(54,'同位素骨扫描','','',24,5,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(55,'','','',24,6,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(56,'X光','','',25,1,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(57,'CT','','',25,2,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(58,'MRI','','',25,3,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(59,'PET-CT','','',25,4,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(60,'同位素骨扫描','','',25,5,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(61,'','','',25,6,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(62,'X光','','',26,1,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(63,'CT','','',26,2,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(64,'MRI','','',26,3,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(65,'PET-CT','','',26,4,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(66,'同位素骨扫描','','',26,5,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(67,'','','',26,6,'2017-01-18 20:06:45','2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_iconography_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_info`
--

DROP TABLE IF EXISTS `t_diagnosis_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='回顾性数据采集表-疾病诊断信息-3疾病诊断信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_info`
--

LOCK TABLES `t_diagnosis_info` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_info` DISABLE KEYS */;
INSERT INTO `t_diagnosis_info` VALUES (3,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(8,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(9,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(10,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(11,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(12,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(13,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(14,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(15,'1992-06-11',1,2,2,0,0,1,0,0,0,0,1,0,0,0,NULL,NULL,0),(16,'1992-06-11',1,2,2,2,0,1,1,2,2,0,1,1,0,0,NULL,NULL,0),(17,'1992-06-11',1,2,2,2,0,1,1,2,2,0,1,1,0,0,NULL,NULL,0),(18,'1992-06-11',1,2,2,2,0,1,1,2,2,0,1,1,0,0,NULL,NULL,0),(19,'1992-11-11',2,3,2,2,0,0,0,0,0,0,1,0,7,1,NULL,'2017-01-11 22:06:18',0),(20,'',0,0,0,0,0,0,0,0,0,0,0,0,8,0,NULL,NULL,0),(21,'',0,0,0,0,0,0,0,0,0,0,0,0,9,0,NULL,NULL,0),(22,'',0,0,0,0,0,0,0,0,0,0,0,0,10,0,NULL,'2017-02-13 19:46:44',0),(23,'',0,0,0,0,0,0,0,0,0,0,0,0,11,0,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(24,'',0,0,0,0,0,0,0,0,0,0,0,0,12,1,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(25,'',0,0,0,0,0,0,0,0,0,0,0,0,13,0,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(26,'',0,0,0,0,0,0,0,0,0,0,0,0,14,1,'2017-01-18 20:06:45','2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_laboratory_examination`
--

DROP TABLE IF EXISTS `t_diagnosis_laboratory_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-6疾病诊断时疾病相关实验室检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_laboratory_examination`
--

LOCK TABLES `t_diagnosis_laboratory_examination` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_laboratory_examination` DISABLE KEYS */;
INSERT INTO `t_diagnosis_laboratory_examination` VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,1,0,0,0,0,0,0,1,1,1,'13','12','15','123','123',1,'1','1','1','3223','233','321',NULL,'2017-01-11 22:06:18',0,NULL),(8,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','',NULL,NULL,0,NULL),(9,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','',NULL,NULL,0,NULL),(10,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','12','23','',NULL,'2017-02-13 19:46:44',0,1),(11,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','',NULL,'2017-01-11 21:15:03',0,NULL),(12,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','231','321321','',NULL,'2017-02-13 19:44:17',0,1),(13,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','',NULL,'2017-01-17 20:53:17',0,NULL),(14,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','',NULL,'2017-02-13 20:30:45',0,0);
/*!40000 ALTER TABLE `t_diagnosis_laboratory_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_parenchyma_item`
--

DROP TABLE IF EXISTS `t_diagnosis_parenchyma_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-9疾病诊断时全身软组织浆细胞瘤检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_parenchyma_item`
--

LOCK TABLES `t_diagnosis_parenchyma_item` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_parenchyma_item` DISABLE KEYS */;
INSERT INTO `t_diagnosis_parenchyma_item` VALUES (3,'CT','ddf','11','22',19,1,NULL,'2017-01-11 22:06:19',0),(4,'MRI','r','11','22',19,2,NULL,'2017-01-11 22:06:19',0),(5,'PET-CT','f','11','22',19,3,NULL,'2017-01-11 22:06:19',0),(6,'d','f','11','',19,4,NULL,'2017-01-11 22:06:19',0),(7,'CT','','','',20,1,NULL,NULL,0),(8,'MRI','','','',20,2,NULL,NULL,0),(9,'PET-CT','','','',20,3,NULL,NULL,0),(10,'','','','',20,4,NULL,NULL,0),(11,'CT','','','',21,1,NULL,NULL,0),(12,'MRI','','','',21,2,NULL,NULL,0),(13,'PET-CT','','','',21,3,NULL,NULL,0),(14,'','','','',21,4,NULL,NULL,0),(15,'CT','','','',22,1,NULL,'2017-02-13 19:46:44',0),(16,'MRI','','','',22,2,NULL,'2017-02-13 19:46:44',0),(17,'PET-CT','','','',22,3,NULL,'2017-02-13 19:46:44',0),(18,'','','','',22,4,NULL,'2017-02-13 19:46:44',0),(19,'CT','','','',23,1,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(20,'MRI','','','',23,2,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(21,'PET-CT','','','',23,3,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(22,'','','','',23,4,NULL,'2017-01-11 21:15:03',0),(23,'CT','','','',24,1,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(24,'MRI','','','',24,2,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(25,'PET-CT','','','',24,3,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(26,'','','','',24,4,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(27,'CT','','','',25,1,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(28,'MRI','','','',25,2,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(29,'PET-CT','','','',25,3,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(30,'','','','',25,4,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(31,'CT','','','',26,1,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(32,'MRI','','','',26,2,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(33,'PET-CT','','','',26,3,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(34,'','','','',26,4,'2017-01-18 20:06:45','2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_parenchyma_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_diagnosis_plasmacyte_item`
--

DROP TABLE IF EXISTS `t_diagnosis_plasmacyte_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-7疾病诊断时骨髓穿刺涂片细胞学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_diagnosis_plasmacyte_item`
--

LOCK TABLES `t_diagnosis_plasmacyte_item` WRITE;
/*!40000 ALTER TABLE `t_diagnosis_plasmacyte_item` DISABLE KEYS */;
INSERT INTO `t_diagnosis_plasmacyte_item` VALUES (1,'所有浆细胞 (%)','1',1,19,NULL,'2017-01-11 22:06:19',0),(2,'原浆细胞 (%)','2',2,19,NULL,'2017-01-11 22:06:19',0),(3,'幼浆细胞 (%)','3',3,19,NULL,'2017-01-11 22:06:19',0),(4,'中间浆细胞 (%)','4',4,19,NULL,'2017-01-11 22:06:19',0),(5,'成熟浆细胞 (%)','5',5,19,NULL,'2017-01-11 22:06:19',0),(6,'56','66666666666',6,19,NULL,'2017-01-11 22:06:19',0),(7,'56','77777777777',8,19,NULL,'2017-01-11 22:06:19',0),(8,'所有浆细胞 (%)','',1,20,NULL,NULL,0),(9,'原浆细胞 (%)','',2,20,NULL,NULL,0),(10,'幼浆细胞 (%)','',3,20,NULL,NULL,0),(11,'中间浆细胞 (%)','',4,20,NULL,NULL,0),(12,'成熟浆细胞 (%)','',5,20,NULL,NULL,0),(13,'','',6,20,NULL,NULL,0),(14,'所有浆细胞 (%)','',1,21,NULL,NULL,0),(15,'原浆细胞 (%)','',2,21,NULL,NULL,0),(16,'幼浆细胞 (%)','',3,21,NULL,NULL,0),(17,'中间浆细胞 (%)','',4,21,NULL,NULL,0),(18,'成熟浆细胞 (%)','',5,21,NULL,NULL,0),(19,'','',6,21,NULL,NULL,0),(20,'所有浆细胞 (%)','',1,22,NULL,'2017-02-13 19:46:44',0),(21,'原浆细胞 (%)','',2,22,NULL,'2017-02-13 19:46:44',0),(22,'幼浆细胞 (%)','',3,22,NULL,'2017-02-13 19:46:44',0),(23,'中间浆细胞 (%)','',4,22,NULL,'2017-02-13 19:46:44',0),(24,'成熟浆细胞 (%)','',5,22,NULL,'2017-02-13 19:46:44',0),(25,'','',6,22,NULL,'2017-02-13 19:46:44',0),(26,'所有浆细胞 (%)','',1,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(27,'原浆细胞 (%)','',2,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(28,'幼浆细胞 (%)','',3,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(29,'中间浆细胞 (%)','',4,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(30,'成熟浆细胞 (%)','',5,23,'2017-01-11 20:55:38','2017-01-11 21:15:03',0),(31,'','',6,23,NULL,'2017-01-11 21:15:03',0),(32,'所有浆细胞 (%)','',1,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(33,'原浆细胞 (%)','',2,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(34,'幼浆细胞 (%)','',3,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(35,'中间浆细胞 (%)','',4,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(36,'成熟浆细胞 (%)','',5,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(37,'','',6,24,'2017-01-17 20:35:25','2017-02-13 19:44:17',0),(38,'所有浆细胞 (%)','',1,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(39,'原浆细胞 (%)','',2,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(40,'幼浆细胞 (%)','',3,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(41,'中间浆细胞 (%)','',4,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(42,'成熟浆细胞 (%)','',5,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(43,'','',6,25,'2017-01-17 20:53:01','2017-01-17 20:53:17',0),(44,'所有浆细胞 (%)','',1,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(45,'原浆细胞 (%)','',2,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(46,'幼浆细胞 (%)','',3,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(47,'中间浆细胞 (%)','',4,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(48,'成熟浆细胞 (%)','',5,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0),(49,'','',6,26,'2017-01-18 20:06:45','2017-02-13 20:30:45',0);
/*!40000 ALTER TABLE `t_diagnosis_plasmacyte_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_badinformation_item`
--

DROP TABLE IF EXISTS `t_followup_badinformation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_badinformation_item`
--

LOCK TABLES `t_followup_badinformation_item` WRITE;
/*!40000 ALTER TABLE `t_followup_badinformation_item` DISABLE KEYS */;
INSERT INTO `t_followup_badinformation_item` VALUES (1,1,1,'11','1111-11-11',1,1,0,5,1,1,1,1,1,NULL,NULL,0),(2,1,14,'','',0,0,0,0,0,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `t_followup_badinformation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_chemotherapy_item`
--

DROP TABLE IF EXISTS `t_followup_chemotherapy_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-9化疗药物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_chemotherapy_item`
--

LOCK TABLES `t_followup_chemotherapy_item` WRITE;
/*!40000 ALTER TABLE `t_followup_chemotherapy_item` DISABLE KEYS */;
INSERT INTO `t_followup_chemotherapy_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'','','',0,2,1,NULL,NULL,0,NULL),(17,'','','',0,3,1,NULL,NULL,0,NULL),(18,'','','',0,4,1,NULL,NULL,0,NULL),(19,'','','',0,5,1,NULL,NULL,0,NULL),(20,'','','',0,6,1,NULL,NULL,0,NULL),(21,'','','',0,7,1,NULL,NULL,0,NULL),(22,'','','',0,8,1,NULL,NULL,0,NULL),(23,'','','',0,9,1,NULL,NULL,0,NULL),(24,'','','',0,10,1,NULL,NULL,0,NULL),(25,'','','',0,11,1,NULL,NULL,0,NULL),(26,'','','',0,12,1,NULL,NULL,0,NULL),(27,'','','',0,13,1,NULL,NULL,0,NULL),(64,'1','1','1',1,1,1,NULL,NULL,0,NULL),(68,'1','1','1',1,14,1,NULL,NULL,0,NULL),(74,'','','',0,15,1,NULL,'2016-12-28 15:28:02',0,NULL),(78,'','','',0,16,1,NULL,'2017-01-11 22:06:19',0,NULL),(88,'','','',0,17,1,NULL,'2017-02-13 19:46:44',0,'');
/*!40000 ALTER TABLE `t_followup_chemotherapy_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_complication_status`
--

DROP TABLE IF EXISTS `t_followup_complication_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-4.0诊断时疾病相关并发症发生情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_complication_status`
--

LOCK TABLES `t_followup_complication_status` WRITE;
/*!40000 ALTER TABLE `t_followup_complication_status` DISABLE KEYS */;
INSERT INTO `t_followup_complication_status` VALUES (12,'骨相关事件',NULL,1,2,NULL,NULL,0),(13,'高钙血症',NULL,2,2,NULL,NULL,0),(14,'病理性骨折',NULL,3,2,NULL,NULL,0),(15,'脊髓压迫',NULL,4,2,NULL,NULL,0),(16,'需要进行放射治疗的骨髓',NULL,5,2,NULL,NULL,0),(17,'慢性肾病',NULL,6,2,NULL,NULL,0),(18,'高粘滞血症',NULL,7,2,NULL,NULL,0),(19,'贫血',NULL,8,2,NULL,NULL,0),(20,'凝血/血栓形成',NULL,9,2,NULL,NULL,0),(21,'出血',NULL,10,2,NULL,NULL,0),(22,'',NULL,11,2,NULL,NULL,0),(23,'骨相关事件',NULL,1,3,NULL,NULL,0),(24,'高钙血症',NULL,2,3,NULL,NULL,0),(25,'病理性骨折',NULL,3,3,NULL,NULL,0),(26,'脊髓压迫',NULL,4,3,NULL,NULL,0),(27,'需要进行放射治疗的骨髓',NULL,5,3,NULL,NULL,0),(28,'慢性肾病',NULL,6,3,NULL,NULL,0),(29,'高粘滞血症',NULL,7,3,NULL,NULL,0),(30,'贫血',NULL,8,3,NULL,NULL,0),(31,'凝血/血栓形成',NULL,9,3,NULL,NULL,0),(32,'出血',NULL,10,3,NULL,NULL,0),(33,'',NULL,11,3,NULL,NULL,0),(34,'骨相关事件',NULL,1,4,NULL,NULL,0),(35,'高钙血症',NULL,2,4,NULL,NULL,0),(36,'病理性骨折',NULL,3,4,NULL,NULL,0),(37,'脊髓压迫',NULL,4,4,NULL,NULL,0),(38,'需要进行放射治疗的骨髓',NULL,5,4,NULL,NULL,0),(39,'慢性肾病',NULL,6,4,NULL,NULL,0),(40,'高粘滞血症',NULL,7,4,NULL,NULL,0),(41,'贫血',NULL,8,4,NULL,NULL,0),(42,'凝血/血栓形成',NULL,9,4,NULL,NULL,0),(43,'出血',NULL,10,4,NULL,NULL,0),(44,'',NULL,11,4,NULL,NULL,0),(45,'骨相关事件',NULL,1,5,NULL,NULL,0),(46,'高钙血症',NULL,2,5,NULL,NULL,0),(47,'病理性骨折',NULL,3,5,NULL,NULL,0),(48,'脊髓压迫',NULL,4,5,NULL,NULL,0),(49,'需要进行放射治疗的骨髓',NULL,5,5,NULL,NULL,0),(50,'慢性肾病',NULL,6,5,NULL,NULL,0),(51,'高粘滞血症',NULL,7,5,NULL,NULL,0),(52,'贫血',NULL,8,5,NULL,NULL,0),(53,'凝血/血栓形成',NULL,9,5,NULL,NULL,0),(54,'出血',NULL,10,5,NULL,NULL,0),(55,'',NULL,11,5,NULL,NULL,0),(56,'骨相关事件',NULL,1,6,NULL,NULL,0),(57,'高钙血症',NULL,2,6,NULL,NULL,0),(58,'病理性骨折',NULL,3,6,NULL,NULL,0),(59,'脊髓压迫',NULL,4,6,NULL,NULL,0),(60,'需要进行放射治疗的骨髓',NULL,5,6,NULL,NULL,0),(61,'慢性肾病',NULL,6,6,NULL,NULL,0),(62,'高粘滞血症',NULL,7,6,NULL,NULL,0),(63,'贫血',NULL,8,6,NULL,NULL,0),(64,'凝血/血栓形成',NULL,9,6,NULL,NULL,0),(65,'出血',NULL,10,6,NULL,NULL,0),(66,'',NULL,11,6,NULL,NULL,0),(67,'骨相关事件',NULL,1,7,NULL,NULL,0),(68,'高钙血症',NULL,2,7,NULL,NULL,0),(69,'病理性骨折',NULL,3,7,NULL,NULL,0),(70,'脊髓压迫',NULL,4,7,NULL,NULL,0),(71,'需要进行放射治疗的骨髓',NULL,5,7,NULL,NULL,0),(72,'慢性肾病',NULL,6,7,NULL,NULL,0),(73,'高粘滞血症',NULL,7,7,NULL,NULL,0),(74,'贫血',NULL,8,7,NULL,NULL,0),(75,'凝血/血栓形成',NULL,9,7,NULL,NULL,0),(76,'出血',NULL,10,7,NULL,NULL,0),(77,'',NULL,11,7,NULL,NULL,0),(78,'骨相关事件',NULL,1,8,NULL,NULL,0),(79,'高钙血症',NULL,2,8,NULL,NULL,0),(80,'病理性骨折',NULL,3,8,NULL,NULL,0),(81,'脊髓压迫',NULL,4,8,NULL,NULL,0),(82,'需要进行放射治疗的骨髓',NULL,5,8,NULL,NULL,0),(83,'慢性肾病',NULL,6,8,NULL,NULL,0),(84,'高粘滞血症',NULL,7,8,NULL,NULL,0),(85,'贫血',NULL,8,8,NULL,NULL,0),(86,'凝血/血栓形成',NULL,9,8,NULL,NULL,0),(87,'出血',NULL,10,8,NULL,NULL,0),(88,'',NULL,11,8,NULL,NULL,0),(89,'骨相关事件',NULL,1,9,NULL,NULL,0),(90,'高钙血症',NULL,2,9,NULL,NULL,0),(91,'病理性骨折',NULL,3,9,NULL,NULL,0),(92,'脊髓压迫',NULL,4,9,NULL,NULL,0),(93,'需要进行放射治疗的骨髓',NULL,5,9,NULL,NULL,0),(94,'慢性肾病',NULL,6,9,NULL,NULL,0),(95,'高粘滞血症',NULL,7,9,NULL,NULL,0),(96,'贫血',NULL,8,9,NULL,NULL,0),(97,'凝血/血栓形成',NULL,9,9,NULL,NULL,0),(98,'出血',NULL,10,9,NULL,NULL,0),(99,'',NULL,11,9,NULL,NULL,0),(100,'骨相关事件',NULL,1,10,NULL,NULL,0),(101,'高钙血症',NULL,2,10,NULL,NULL,0),(102,'病理性骨折',NULL,3,10,NULL,NULL,0),(103,'脊髓压迫',NULL,4,10,NULL,NULL,0),(104,'需要进行放射治疗的骨髓',NULL,5,10,NULL,NULL,0),(105,'慢性肾病',NULL,6,10,NULL,NULL,0),(106,'高粘滞血症',NULL,7,10,NULL,NULL,0),(107,'贫血',NULL,8,10,NULL,NULL,0),(108,'凝血/血栓形成',NULL,9,10,NULL,NULL,0),(109,'出血',NULL,10,10,NULL,NULL,0),(110,'',NULL,11,10,NULL,NULL,0),(111,'骨相关事件',NULL,1,11,NULL,NULL,0),(112,'高钙血症',NULL,2,11,NULL,NULL,0),(113,'病理性骨折',NULL,3,11,NULL,NULL,0),(114,'脊髓压迫',NULL,4,11,NULL,NULL,0),(115,'需要进行放射治疗的骨髓',NULL,5,11,NULL,NULL,0),(116,'慢性肾病',NULL,6,11,NULL,NULL,0),(117,'高粘滞血症',NULL,7,11,NULL,NULL,0),(118,'贫血',NULL,8,11,NULL,NULL,0),(119,'凝血/血栓形成',NULL,9,11,NULL,NULL,0),(120,'出血',NULL,10,11,NULL,NULL,0),(121,'',NULL,11,11,NULL,NULL,0),(122,'骨相关事件',NULL,1,12,NULL,NULL,0),(123,'高钙血症',NULL,2,12,NULL,NULL,0),(124,'病理性骨折',NULL,3,12,NULL,NULL,0),(125,'脊髓压迫',NULL,4,12,NULL,NULL,0),(126,'需要进行放射治疗的骨髓',NULL,5,12,NULL,NULL,0),(127,'慢性肾病',NULL,6,12,NULL,NULL,0),(128,'高粘滞血症',NULL,7,12,NULL,NULL,0),(129,'贫血',NULL,8,12,NULL,NULL,0),(130,'凝血/血栓形成',NULL,9,12,NULL,NULL,0),(131,'出血',NULL,10,12,NULL,NULL,0),(132,'',NULL,11,12,NULL,NULL,0),(133,'骨相关事件',NULL,1,13,NULL,NULL,0),(134,'高钙血症',NULL,2,13,NULL,NULL,0),(135,'病理性骨折',NULL,3,13,NULL,NULL,0),(136,'脊髓压迫',NULL,4,13,NULL,NULL,0),(137,'需要进行放射治疗的骨髓',NULL,5,13,NULL,NULL,0),(138,'慢性肾病',NULL,6,13,NULL,NULL,0),(139,'高粘滞血症',NULL,7,13,NULL,NULL,0),(140,'贫血',NULL,8,13,NULL,NULL,0),(141,'凝血/血栓形成',NULL,9,13,NULL,NULL,0),(142,'出血',NULL,10,13,NULL,NULL,0),(143,'',NULL,11,13,NULL,NULL,0),(144,'骨相关事件',1,1,1,NULL,NULL,0),(145,'高钙血症',1,2,1,NULL,NULL,0),(146,'病理性骨折',1,3,1,NULL,NULL,0),(147,'脊髓压迫',1,4,1,NULL,NULL,0),(148,'需要进行放射治疗的骨髓',1,5,1,NULL,NULL,0),(149,'慢性肾病',1,6,1,NULL,NULL,0),(150,'高粘滞血症',1,7,1,NULL,NULL,0),(151,'贫血',1,8,1,NULL,NULL,0),(152,'凝血/血栓形成',1,9,1,NULL,NULL,0),(153,'出血',1,10,1,NULL,NULL,0),(154,'11',1,11,1,NULL,NULL,0),(155,'骨相关事件',1,1,14,NULL,NULL,0),(156,'高钙血症',1,2,14,NULL,NULL,0),(157,'病理性骨折',1,3,14,NULL,NULL,0),(158,'脊髓压迫',1,4,14,NULL,NULL,0),(159,'需要进行放射治疗的骨髓',1,5,14,NULL,NULL,0),(160,'慢性肾病',1,6,14,NULL,NULL,0),(161,'高粘滞血症',1,7,14,NULL,NULL,0),(162,'贫血',1,8,14,NULL,NULL,0),(163,'凝血/血栓形成',1,9,14,NULL,NULL,0),(164,'出血',1,10,14,NULL,NULL,0),(165,'1',1,11,14,NULL,NULL,0),(166,'骨相关事件',NULL,1,15,NULL,'2016-12-28 15:28:02',0),(167,'高钙血症',NULL,2,15,NULL,'2016-12-28 15:28:02',0),(168,'病理性骨折',NULL,3,15,NULL,'2016-12-28 15:28:02',0),(169,'脊髓压迫',NULL,4,15,NULL,'2016-12-28 15:28:02',0),(170,'需要进行放射治疗的骨髓',NULL,5,15,NULL,'2016-12-28 15:28:02',0),(171,'慢性肾病',NULL,6,15,NULL,'2016-12-28 15:28:02',0),(172,'高粘滞血症',NULL,7,15,NULL,'2016-12-28 15:28:02',0),(173,'贫血',NULL,8,15,NULL,'2016-12-28 15:28:02',0),(174,'凝血/血栓形成',NULL,9,15,NULL,'2016-12-28 15:28:02',0),(175,'出血',NULL,10,15,NULL,'2016-12-28 15:28:02',0),(176,'',NULL,11,15,NULL,'2016-12-28 15:28:02',0),(177,'骨相关事件',NULL,1,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(178,'高钙血症',NULL,2,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(179,'病理性骨折',NULL,3,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(180,'脊髓压迫',NULL,4,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(181,'需要进行放射治疗的骨髓',NULL,5,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(182,'慢性肾病',NULL,6,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(183,'高粘滞血症',NULL,7,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(184,'贫血',NULL,8,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(185,'凝血/血栓形成',NULL,9,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(186,'出血',NULL,10,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(187,'',NULL,11,16,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(188,'高钙血症',NULL,1,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(189,'病理性骨折',NULL,2,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(190,'脊髓压迫',NULL,3,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(191,'需要进行放射治疗的骨痛',NULL,4,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(192,'慢性肾病',NULL,5,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(193,'高粘滞血症',NULL,6,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(194,'贫血',NULL,7,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(195,'凝血/血栓形成',NULL,8,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(196,'出血',NULL,9,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(197,'出血',NULL,10,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(198,'',NULL,11,17,'2017-02-07 19:57:49','2017-02-13 19:46:44',0);
/*!40000 ALTER TABLE `t_followup_complication_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_cost_other`
--

DROP TABLE IF EXISTS `t_followup_cost_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_followup_cost_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `rate` varchar(64) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `followupid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_cost_other`
--

LOCK TABLES `t_followup_cost_other` WRITE;
/*!40000 ALTER TABLE `t_followup_cost_other` DISABLE KEYS */;
INSERT INTO `t_followup_cost_other` VALUES (1,'2','2','2',11,0),(2,'3','3','3',12,0),(3,'2','2','2',11,0),(4,'3','3','3',12,0),(9,'2','2','2',11,17),(10,'3','3','3',12,17);
/*!40000 ALTER TABLE `t_followup_cost_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_iconography_item`
--

DROP TABLE IF EXISTS `t_followup_iconography_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-7疾病诊断时全身骨骼影像学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_iconography_item`
--

LOCK TABLES `t_followup_iconography_item` WRITE;
/*!40000 ALTER TABLE `t_followup_iconography_item` DISABLE KEYS */;
INSERT INTO `t_followup_iconography_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(21,'X光','','',2,1,NULL,NULL,0),(22,'CT','','',2,2,NULL,NULL,0),(23,'MRI','','',2,3,NULL,NULL,0),(24,'PET-CT','','',2,4,NULL,NULL,0),(25,'同位素骨扫描','','',2,5,NULL,NULL,0),(26,'','','',2,6,NULL,NULL,0),(27,'X光','','',3,1,NULL,NULL,0),(28,'CT','','',3,2,NULL,NULL,0),(29,'MRI','','',3,3,NULL,NULL,0),(30,'PET-CT','','',3,4,NULL,NULL,0),(31,'同位素骨扫描','','',3,5,NULL,NULL,0),(32,'','','',3,6,NULL,NULL,0),(33,'X光','','',4,1,NULL,NULL,0),(34,'CT','','',4,2,NULL,NULL,0),(35,'MRI','','',4,3,NULL,NULL,0),(36,'PET-CT','','',4,4,NULL,NULL,0),(37,'同位素骨扫描','','',4,5,NULL,NULL,0),(38,'','','',4,6,NULL,NULL,0),(39,'X光','','',5,1,NULL,NULL,0),(40,'CT','','',5,2,NULL,NULL,0),(41,'MRI','','',5,3,NULL,NULL,0),(42,'PET-CT','','',5,4,NULL,NULL,0),(43,'同位素骨扫描','','',5,5,NULL,NULL,0),(44,'','','',5,6,NULL,NULL,0),(45,'X光','','',6,1,NULL,NULL,0),(46,'CT','','',6,2,NULL,NULL,0),(47,'MRI','','',6,3,NULL,NULL,0),(48,'PET-CT','','',6,4,NULL,NULL,0),(49,'同位素骨扫描','','',6,5,NULL,NULL,0),(50,'','','',6,6,NULL,NULL,0),(51,'X光','','',7,1,NULL,NULL,0),(52,'CT','','',7,2,NULL,NULL,0),(53,'MRI','','',7,3,NULL,NULL,0),(54,'PET-CT','','',7,4,NULL,NULL,0),(55,'同位素骨扫描','','',7,5,NULL,NULL,0),(56,'','','',7,6,NULL,NULL,0),(57,'X光','','',8,1,NULL,NULL,0),(58,'CT','','',8,2,NULL,NULL,0),(59,'MRI','','',8,3,NULL,NULL,0),(60,'PET-CT','','',8,4,NULL,NULL,0),(61,'同位素骨扫描','','',8,5,NULL,NULL,0),(62,'','','',8,6,NULL,NULL,0),(63,'X光','','',9,1,NULL,NULL,0),(64,'CT','','',9,2,NULL,NULL,0),(65,'MRI','','',9,3,NULL,NULL,0),(66,'PET-CT','','',9,4,NULL,NULL,0),(67,'同位素骨扫描','','',9,5,NULL,NULL,0),(68,'','','',9,6,NULL,NULL,0),(69,'X光','','',10,1,NULL,NULL,0),(70,'CT','','',10,2,NULL,NULL,0),(71,'MRI','','',10,3,NULL,NULL,0),(72,'PET-CT','','',10,4,NULL,NULL,0),(73,'同位素骨扫描','','',10,5,NULL,NULL,0),(74,'','','',10,6,NULL,NULL,0),(75,'X光','','',11,1,NULL,NULL,0),(76,'CT','','',11,2,NULL,NULL,0),(77,'MRI','','',11,3,NULL,NULL,0),(78,'PET-CT','','',11,4,NULL,NULL,0),(79,'同位素骨扫描','','',11,5,NULL,NULL,0),(80,'','','',11,6,NULL,NULL,0),(81,'X光','','',12,1,NULL,NULL,0),(82,'CT','','',12,2,NULL,NULL,0),(83,'MRI','','',12,3,NULL,NULL,0),(84,'PET-CT','','',12,4,NULL,NULL,0),(85,'同位素骨扫描','','',12,5,NULL,NULL,0),(86,'','','',12,6,NULL,NULL,0),(87,'X光','','',13,1,NULL,NULL,0),(88,'CT','','',13,2,NULL,NULL,0),(89,'MRI','','',13,3,NULL,NULL,0),(90,'PET-CT','','',13,4,NULL,NULL,0),(91,'同位素骨扫描','','',13,5,NULL,NULL,0),(92,'','','',13,6,NULL,NULL,0),(93,'X光','1','1',1,1,NULL,NULL,0),(94,'CT','1','1',1,2,NULL,NULL,0),(95,'MRI','1','1',1,3,NULL,NULL,0),(96,'PET-CT','1','1',1,4,NULL,NULL,0),(97,'同位素骨扫描','1','1',1,5,NULL,NULL,0),(98,'1','1','1',1,6,NULL,NULL,0),(99,'1','1','1',1,7,NULL,NULL,0),(100,'X光','2','2',14,1,NULL,NULL,0),(101,'CT','2','2',14,2,NULL,NULL,0),(102,'MRI','22','1111',14,3,NULL,NULL,0),(103,'PET-CT','2','2',14,4,NULL,NULL,0),(104,'同位素骨扫描','22','2',14,5,NULL,NULL,0),(105,'2','2222222','22',14,6,NULL,NULL,0),(106,'X光','','',15,1,NULL,'2016-12-28 15:28:02',0),(107,'CT','','',15,2,NULL,'2016-12-28 15:28:02',0),(108,'MRI','','',15,3,NULL,'2016-12-28 15:28:02',0),(109,'PET-CT','','',15,4,NULL,'2016-12-28 15:28:02',0),(110,'同位素骨扫描','','',15,5,NULL,'2016-12-28 15:28:02',0),(111,'','','',15,6,NULL,'2016-12-28 15:28:02',0),(112,'X光','','',16,1,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(113,'CT','','',16,2,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(114,'MRI','','',16,3,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(115,'PET-CT','','',16,4,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(116,'同位素骨扫描','','',16,5,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(117,'','','',16,6,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(118,'X光','','',17,1,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(119,'CT','','',17,2,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(120,'MRI','','',17,3,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(121,'PET-CT','','',17,4,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(122,'同位素骨扫描','','',17,5,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(123,'','','',17,6,'2017-02-07 19:57:49','2017-02-13 19:46:44',0);
/*!40000 ALTER TABLE `t_followup_iconography_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_info`
--

DROP TABLE IF EXISTS `t_followup_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-回访信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_info`
--

LOCK TABLES `t_followup_info` WRITE;
/*!40000 ALTER TABLE `t_followup_info` DISABLE KEYS */;
INSERT INTO `t_followup_info` VALUES (14,14,2,1,1,1,'1','1111-11-1','1111-11-1',1,1,'',6,'',1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1','1','1',NULL,NULL,0,1,2,NULL),(15,15,0,0,0,0,'','','',0,0,'',0,'',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','','','','',NULL,'2016-12-28 15:28:02',0,0,0,NULL),(16,16,0,0,0,0,'','','',0,0,'',0,'',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','','','','',NULL,'2017-01-11 22:06:19',0,0,0,NULL),(17,17,0,0,0,0,'','','',0,0,'',0,'',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','1','1',NULL,NULL,NULL,'2017-02-13 19:46:44',0,0,0,'1');
/*!40000 ALTER TABLE `t_followup_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_laboratory_examination`
--

DROP TABLE IF EXISTS `t_followup_laboratory_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-5疾病诊断时疾病相关实验室检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_laboratory_examination`
--

LOCK TABLES `t_followup_laboratory_examination` WRITE;
/*!40000 ALTER TABLE `t_followup_laboratory_examination` DISABLE KEYS */;
INSERT INTO `t_followup_laboratory_examination` VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(8,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(9,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(10,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(11,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(12,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(13,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(14,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,NULL,0),(15,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2016-12-28 15:28:02',0),(16,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2017-01-11 22:06:19',0),(17,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2017-02-13 19:46:44',0),(18,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(19,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(20,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,NULL,0),(21,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,0),(22,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','','2017-01-11 15:02:42','2017-01-11 15:02:42',0),(23,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','','2017-02-07 19:57:49','2017-02-07 19:57:49',0);
/*!40000 ALTER TABLE `t_followup_laboratory_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_parenchyma_item`
--

DROP TABLE IF EXISTS `t_followup_parenchyma_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='一次随访数据采集表-8疾病诊断时全身软组织浆细胞瘤检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_parenchyma_item`
--

LOCK TABLES `t_followup_parenchyma_item` WRITE;
/*!40000 ALTER TABLE `t_followup_parenchyma_item` DISABLE KEYS */;
INSERT INTO `t_followup_parenchyma_item` VALUES (5,'CT','','','',2,1,NULL,NULL,0),(6,'MRI','','','',2,2,NULL,NULL,0),(7,'PET-CT','','','',2,3,NULL,NULL,0),(8,'','','','',2,4,NULL,NULL,0),(9,'CT','','','',3,1,NULL,NULL,0),(10,'MRI','','','',3,2,NULL,NULL,0),(11,'PET-CT','','','',3,3,NULL,NULL,0),(12,'','','','',3,4,NULL,NULL,0),(13,'CT','','','',4,1,NULL,NULL,0),(14,'MRI','','','',4,2,NULL,NULL,0),(15,'PET-CT','','','',4,3,NULL,NULL,0),(16,'','','','',4,4,NULL,NULL,0),(17,'CT','','','',5,1,NULL,NULL,0),(18,'MRI','','','',5,2,NULL,NULL,0),(19,'PET-CT','','','',5,3,NULL,NULL,0),(20,'','','','',5,4,NULL,NULL,0),(21,'CT','','','',6,1,NULL,NULL,0),(22,'MRI','','','',6,2,NULL,NULL,0),(23,'PET-CT','','','',6,3,NULL,NULL,0),(24,'','','','',6,4,NULL,NULL,0),(25,'CT','','','',7,1,NULL,NULL,0),(26,'MRI','','','',7,2,NULL,NULL,0),(27,'PET-CT','','','',7,3,NULL,NULL,0),(28,'','','','',7,4,NULL,NULL,0),(29,'CT','','','',8,1,NULL,NULL,0),(30,'MRI','','','',8,2,NULL,NULL,0),(31,'PET-CT','','','',8,3,NULL,NULL,0),(32,'','','','',8,4,NULL,NULL,0),(33,'CT','','','',9,1,NULL,NULL,0),(34,'MRI','','','',9,2,NULL,NULL,0),(35,'PET-CT','','','',9,3,NULL,NULL,0),(36,'','','','',9,4,NULL,NULL,0),(37,'CT','','','',10,1,NULL,NULL,0),(38,'MRI','','','',10,2,NULL,NULL,0),(39,'PET-CT','','','',10,3,NULL,NULL,0),(40,'','','','',10,4,NULL,NULL,0),(41,'CT','','','',11,1,NULL,NULL,0),(42,'MRI','','','',11,2,NULL,NULL,0),(43,'PET-CT','','','',11,3,NULL,NULL,0),(44,'','','','',11,4,NULL,NULL,0),(45,'CT','','','',12,1,NULL,NULL,0),(46,'MRI','','','',12,2,NULL,NULL,0),(47,'PET-CT','','','',12,3,NULL,NULL,0),(48,'','','','',12,4,NULL,NULL,0),(49,'CT','','','',13,1,NULL,NULL,0),(50,'MRI','','','',13,2,NULL,NULL,0),(51,'PET-CT','','','',13,3,NULL,NULL,0),(52,'','','','',13,4,NULL,NULL,0),(53,'CT','1','1','1',1,1,NULL,NULL,0),(54,'MRI','1','1','1',1,2,NULL,NULL,0),(55,'PET-CT','1','1','1',1,3,NULL,NULL,0),(56,'1','1','11','1',1,4,NULL,NULL,0),(57,'1','11','1','1',1,7,NULL,NULL,0),(58,'CT','1','22','',14,1,NULL,NULL,0),(59,'MRI','2','2','2',14,2,NULL,NULL,0),(60,'PET-CT','22','2','2',14,3,NULL,NULL,0),(61,'2','2','2','2',14,4,NULL,NULL,0),(62,'CT','','','',15,1,NULL,'2016-12-28 15:28:02',0),(63,'MRI','','','',15,2,NULL,'2016-12-28 15:28:02',0),(64,'PET-CT','','','',15,3,NULL,'2016-12-28 15:28:02',0),(65,'','','','',15,4,NULL,'2016-12-28 15:28:02',0),(66,'CT','','D','D',16,1,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(67,'MRI','D','D','D',16,2,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(68,'PET-CT','D','D','D',16,3,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(69,'D','D','D','D',16,4,'2017-01-11 15:02:42','2017-01-11 22:06:19',0),(70,'','','D','D',16,7,NULL,'2017-01-11 22:06:19',0),(71,'D','D','D','D',16,8,NULL,'2017-01-11 22:06:19',0),(72,'D','D','D','D',16,9,NULL,'2017-01-11 22:06:19',0),(73,'D','D','D','D',16,10,NULL,'2017-01-11 22:06:19',0),(74,'CT','','','',17,1,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(75,'MRI','','','',17,2,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(76,'PET-CT','','','',17,3,'2017-02-07 19:57:49','2017-02-13 19:46:44',0),(77,'','','','',17,4,'2017-02-07 19:57:49','2017-02-13 19:46:44',0);
/*!40000 ALTER TABLE `t_followup_parenchyma_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_followup_plasmacyte_item`
--

DROP TABLE IF EXISTS `t_followup_plasmacyte_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='一次随访信息采集表-6疾病诊断时骨髓穿刺涂片细胞学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_followup_plasmacyte_item`
--

LOCK TABLES `t_followup_plasmacyte_item` WRITE;
/*!40000 ALTER TABLE `t_followup_plasmacyte_item` DISABLE KEYS */;
INSERT INTO `t_followup_plasmacyte_item` VALUES (7,'所有浆细胞 (%)','',1,2,NULL,NULL,0),(8,'原浆细胞 (%)','',2,2,NULL,NULL,0),(9,'幼浆细胞 (%)','',3,2,NULL,NULL,0),(10,'中间浆细胞 (%)','',4,2,NULL,NULL,0),(11,'成熟浆细胞 (%)','',5,2,NULL,NULL,0),(12,'','',6,2,NULL,NULL,0),(13,'所有浆细胞 (%)','',1,3,NULL,NULL,0),(14,'原浆细胞 (%)','',2,3,NULL,NULL,0),(15,'幼浆细胞 (%)','',3,3,NULL,NULL,0),(16,'中间浆细胞 (%)','',4,3,NULL,NULL,0),(17,'成熟浆细胞 (%)','',5,3,NULL,NULL,0),(18,'','',6,3,NULL,NULL,0),(19,'所有浆细胞 (%)','',1,4,NULL,NULL,0),(20,'原浆细胞 (%)','',2,4,NULL,NULL,0),(21,'幼浆细胞 (%)','',3,4,NULL,NULL,0),(22,'中间浆细胞 (%)','',4,4,NULL,NULL,0),(23,'成熟浆细胞 (%)','',5,4,NULL,NULL,0),(24,'','',6,4,NULL,NULL,0),(25,'所有浆细胞 (%)','',1,5,NULL,NULL,0),(26,'原浆细胞 (%)','',2,5,NULL,NULL,0),(27,'幼浆细胞 (%)','',3,5,NULL,NULL,0),(28,'中间浆细胞 (%)','',4,5,NULL,NULL,0),(29,'成熟浆细胞 (%)','',5,5,NULL,NULL,0),(30,'','',6,5,NULL,NULL,0),(31,'所有浆细胞 (%)','',1,6,NULL,NULL,0),(32,'原浆细胞 (%)','',2,6,NULL,NULL,0),(33,'幼浆细胞 (%)','',3,6,NULL,NULL,0),(34,'中间浆细胞 (%)','',4,6,NULL,NULL,0),(35,'成熟浆细胞 (%)','',5,6,NULL,NULL,0),(36,'','',6,6,NULL,NULL,0),(37,'所有浆细胞 (%)','',1,7,NULL,NULL,0),(38,'原浆细胞 (%)','',2,7,NULL,NULL,0),(39,'幼浆细胞 (%)','',3,7,NULL,NULL,0),(40,'中间浆细胞 (%)','',4,7,NULL,NULL,0),(41,'成熟浆细胞 (%)','',5,7,NULL,NULL,0),(42,'','',6,7,NULL,NULL,0),(43,'所有浆细胞 (%)','',1,8,NULL,NULL,0),(44,'原浆细胞 (%)','',2,8,NULL,NULL,0),(45,'幼浆细胞 (%)','',3,8,NULL,NULL,0),(46,'中间浆细胞 (%)','',4,8,NULL,NULL,0),(47,'成熟浆细胞 (%)','',5,8,NULL,NULL,0),(48,'','',6,8,NULL,NULL,0),(49,'所有浆细胞 (%)','',1,9,NULL,NULL,0),(50,'原浆细胞 (%)','',2,9,NULL,NULL,0),(51,'幼浆细胞 (%)','',3,9,NULL,NULL,0),(52,'中间浆细胞 (%)','',4,9,NULL,NULL,0),(53,'成熟浆细胞 (%)','',5,9,NULL,NULL,0),(54,'','',6,9,NULL,NULL,0),(55,'所有浆细胞 (%)','',1,10,NULL,NULL,0),(56,'原浆细胞 (%)','',2,10,NULL,NULL,0),(57,'幼浆细胞 (%)','',3,10,NULL,NULL,0),(58,'中间浆细胞 (%)','',4,10,NULL,NULL,0),(59,'成熟浆细胞 (%)','',5,10,NULL,NULL,0),(60,'','',6,10,NULL,NULL,0),(61,'所有浆细胞 (%)','',1,11,NULL,NULL,0),(62,'原浆细胞 (%)','',2,11,NULL,NULL,0),(63,'幼浆细胞 (%)','',3,11,NULL,NULL,0),(64,'中间浆细胞 (%)','',4,11,NULL,NULL,0),(65,'成熟浆细胞 (%)','',5,11,NULL,NULL,0),(66,'','',6,11,NULL,NULL,0),(67,'所有浆细胞 (%)','',1,12,NULL,NULL,0),(68,'原浆细胞 (%)','',2,12,NULL,NULL,0),(69,'幼浆细胞 (%)','',3,12,NULL,NULL,0),(70,'中间浆细胞 (%)','',4,12,NULL,NULL,0),(71,'成熟浆细胞 (%)','',5,12,NULL,NULL,0),(72,'','',6,12,NULL,NULL,0),(73,'所有浆细胞 (%)','',1,13,NULL,NULL,0),(74,'原浆细胞 (%)','',2,13,NULL,NULL,0),(75,'幼浆细胞 (%)','',3,13,NULL,NULL,0),(76,'中间浆细胞 (%)','',4,13,NULL,NULL,0),(77,'成熟浆细胞 (%)','',5,13,NULL,NULL,0),(78,'','',6,13,NULL,NULL,0),(85,'','',6,17,NULL,'2017-02-13 19:46:44',0);
/*!40000 ALTER TABLE `t_followup_plasmacyte_item` ENABLE KEYS */;
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
  `deleted` int(1) DEFAULT '0' COMMENT '是否删除该条记录（1：是，0否）',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='医院信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospital`
--

LOCK TABLES `t_hospital` WRITE;
/*!40000 ALTER TABLE `t_hospital` DISABLE KEYS */;
INSERT INTO `t_hospital` VALUES (1,'北京朝阳医院','BJCYYY',0,NULL,NULL),(7,'北大人民医院','BDRMYY',0,NULL,NULL),(8,'天津血研所','TJXYS',0,NULL,NULL),(9,'北京协和医院','BJXHYY',0,NULL,NULL),(10,'上海长征医院','SHCZYY',0,NULL,NULL),(11,'上海瑞金医院','SHRJYY',0,NULL,NULL),(12,'苏州大学附属第一医院','SZDXFSDYYY',0,NULL,NULL),(14,'浙大医院','ZDYY',0,NULL,NULL),(15,'中山大学附属第一医院','ZSDXFSDYYY',0,NULL,NULL),(16,'华西医院','HXYY1',0,NULL,NULL);
/*!40000 ALTER TABLE `t_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_badinformation_item`
--

DROP TABLE IF EXISTS `t_hospitaled_badinformation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_badinformation_item`
--

LOCK TABLES `t_hospitaled_badinformation_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_badinformation_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_badinformation_item` VALUES (1,1,1,'ff','d',1,2,0,2,2,0,2,2,1,NULL,'2017-01-10 09:56:19',0),(10,2,1,'fd','fd',2,1,2,2,2,0,1,1,1,NULL,'2017-01-10 09:56:19',0);
/*!40000 ALTER TABLE `t_hospitaled_badinformation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_chemotherapy_item`
--

DROP TABLE IF EXISTS `t_hospitaled_chemotherapy_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-9化疗药物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_chemotherapy_item`
--

LOCK TABLES `t_hospitaled_chemotherapy_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_chemotherapy_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_chemotherapy_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'fds','fds','fds',2,1,1,NULL,'2017-01-10 09:56:19',0,NULL),(16,'fds','fds','fds',2,1,2,NULL,'2017-01-10 09:56:19',0,NULL),(17,'','','',0,2,0,'2017-02-07 21:09:32','2017-02-08 20:18:16',0,NULL),(18,'','','',0,3,1,'2017-02-07 21:36:50','2017-02-08 20:15:42',0,NULL),(19,'','','',0,4,0,'2017-02-08 20:24:23','2017-02-13 19:44:18',0,NULL);
/*!40000 ALTER TABLE `t_hospitaled_chemotherapy_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_complication_status`
--

DROP TABLE IF EXISTS `t_hospitaled_complication_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-6疾病诊断时疾病相关实验室检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_complication_status`
--

LOCK TABLES `t_hospitaled_complication_status` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_complication_status` DISABLE KEYS */;
INSERT INTO `t_hospitaled_complication_status` VALUES (1,'骨相关事件',1,1,1,NULL,'2017-01-10 09:56:19',0),(2,'高钙血症',1,2,1,NULL,'2017-01-10 09:56:19',0),(3,'病理性骨折',1,3,1,NULL,'2017-01-10 09:56:19',0),(4,'脊髓压迫',1,4,1,NULL,'2017-01-10 09:56:19',0),(5,'需要进行放射治疗的骨痛',1,5,1,NULL,'2017-01-10 09:56:19',0),(6,'慢性肾病',2,6,1,NULL,'2017-01-10 09:56:19',0),(7,'高粘滞血症',1,7,1,NULL,'2017-01-10 09:56:19',0),(8,'贫血',1,8,1,NULL,'2017-01-10 09:56:19',0),(9,'凝血/血栓形成',1,9,1,NULL,'2017-01-10 09:56:19',0),(10,'出血',2,10,1,NULL,'2017-01-10 09:56:19',0),(11,'test1',1,11,1,NULL,'2017-01-10 09:56:19',0),(12,'test2',1,12,1,NULL,'2017-01-10 09:56:19',0),(13,'骨相关事件',NULL,1,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(14,'高钙血症',NULL,2,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(15,'病理性骨折',NULL,3,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(16,'脊髓压迫',NULL,4,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(17,'需要进行放射治疗的骨痛',NULL,5,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(18,'慢性肾病',NULL,6,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(19,'高粘滞血症',NULL,7,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(20,'贫血',NULL,8,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(21,'凝血/血栓形成',NULL,9,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(22,'出血',NULL,10,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(23,'其他:<input type=\"text\" style=\"width: 300px; \">\n                  ',NULL,0,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(24,'骨相关事件',NULL,1,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(25,'高钙血症',NULL,2,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(26,'病理性骨折',NULL,3,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(27,'脊髓压迫',NULL,4,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(28,'需要进行放射治疗的骨痛',NULL,5,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(29,'慢性肾病',NULL,6,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(30,'高粘滞血症',NULL,7,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(31,'贫血',NULL,8,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(32,'凝血/血栓形成',NULL,9,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(33,'出血',NULL,10,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(34,'',NULL,11,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(35,'骨相关事件',NULL,1,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(36,'高钙血症',NULL,2,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(37,'病理性骨折',NULL,3,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(38,'脊髓压迫',NULL,4,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(39,'需要进行放射治疗的骨痛',NULL,5,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(40,'慢性肾病',NULL,6,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(41,'高粘滞血症',NULL,7,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(42,'贫血',NULL,8,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(43,'凝血/血栓形成',NULL,9,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(44,'出血',NULL,10,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(45,'其他:<input type=\"text\" style=\"width: 300px; \">\n                  ',NULL,0,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0);
/*!40000 ALTER TABLE `t_hospitaled_complication_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_cost`
--

DROP TABLE IF EXISTS `t_hospitaled_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-14本次住院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_cost`
--

LOCK TABLES `t_hospitaled_cost` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_cost` DISABLE KEYS */;
INSERT INTO `t_hospitaled_cost` VALUES (7,'','','','','','','','','','','','',NULL,NULL,0,NULL,NULL),(8,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(9,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(10,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(11,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(12,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(13,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(14,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(15,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(16,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(17,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(18,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(19,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(20,'fds','f','1','32','32','32','32','23','32','32','32','32',NULL,NULL,0,NULL,NULL),(21,'1','1','1','32','32','32','32','23','32','32','32','32',NULL,'2017-01-10 09:56:19',0,NULL,NULL),(22,'','','','','','','','','','','','','2017-02-07 21:09:32','2017-02-07 21:36:03',0,NULL,NULL),(23,'','','','','','','','','','','','',NULL,'2017-02-08 20:18:16',0,NULL,NULL),(24,'','','','','','','','','','','','','2017-02-07 21:36:49','2017-02-08 20:15:42',0,NULL,NULL),(26,'','','','','','','','','',NULL,'',NULL,'2017-02-08 20:24:23','2017-02-08 20:24:23',0,'1','1'),(27,'','','','','','','','','',NULL,'',NULL,NULL,'2017-02-13 19:44:18',0,'1','1');
/*!40000 ALTER TABLE `t_hospitaled_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_cost_other`
--

DROP TABLE IF EXISTS `t_hospitaled_cost_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospitaled_cost_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `costId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='住院费用其他部分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_cost_other`
--

LOCK TABLES `t_hospitaled_cost_other` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_cost_other` DISABLE KEYS */;
INSERT INTO `t_hospitaled_cost_other` VALUES (1,'2','2',12,26),(2,'3','3',13,26),(6,'2','2',12,27),(7,'3','3',13,27),(8,'4','4',14,27);
/*!40000 ALTER TABLE `t_hospitaled_cost_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_iconography_item`
--

DROP TABLE IF EXISTS `t_hospitaled_iconography_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-5疾病诊断时全身骨骼影像学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_iconography_item`
--

LOCK TABLES `t_hospitaled_iconography_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_iconography_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_iconography_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL),(15,'X光','fds','fds',1,1,NULL,'2017-01-10 09:56:19',0),(16,'CT','fsd','fsd',1,2,NULL,'2017-01-10 09:56:19',0),(17,'MRI','fds','fds',1,3,NULL,'2017-01-10 09:56:19',0),(18,'PET-CT','fds','fsd',1,4,NULL,'2017-01-10 09:56:19',0),(19,'同位素骨扫描','fds','fds',1,5,NULL,'2017-01-10 09:56:19',0),(20,'1','fds','fds',1,6,NULL,'2017-01-10 09:56:19',0),(21,'2','fds','fds',1,7,NULL,'2017-01-10 09:56:19',0),(22,'X光','','',2,1,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(23,'CT','','',2,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(24,'MRI','','',2,3,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(25,'PET-CT','','',2,4,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(26,'同位素骨扫描','','',2,5,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(27,'其他: <input name=\"name\" type=\"text\" style=\"width: 100px;\">','','',2,0,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(28,'X光','','',3,1,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(29,'CT','','',3,2,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(30,'MRI','','',3,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(31,'PET-CT','','',3,4,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(32,'同位素骨扫描','','',3,5,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(33,'','','',3,6,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(34,'X光','','',4,1,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(35,'CT','','',4,2,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(36,'MRI','','',4,3,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(37,'PET-CT','','',4,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(38,'同位素骨扫描','','',4,5,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(39,'其他: <input name=\"name\" type=\"text\" style=\"width: 100px;\">','','',4,0,'2017-02-08 20:24:23','2017-02-13 19:44:18',0);
/*!40000 ALTER TABLE `t_hospitaled_iconography_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_laboratory_examination`
--

DROP TABLE IF EXISTS `t_hospitaled_laboratory_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-3疾病诊断时疾病相关实验室检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_laboratory_examination`
--

LOCK TABLES `t_hospitaled_laboratory_examination` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_laboratory_examination` DISABLE KEYS */;
INSERT INTO `t_hospitaled_laboratory_examination` VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,1,2,2,2,2,2,2,2,2,0,0,'f','f','f','f','f',1,'f','f','f','f','f','23','fds','fd','fds','fds','fd','fds','ds','fsd','fds','fds','fds','fds','fds','fds','fsd','fs','fds',NULL,'2017-01-10 09:56:19',0,NULL),(16,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2017-02-08 20:18:16',0,0),(17,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2017-02-08 20:15:42',0,0),(19,0,0,0,0,0,0,0,0,0,0,0,'','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','',NULL,'2017-02-13 19:44:18',0,0);
/*!40000 ALTER TABLE `t_hospitaled_laboratory_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_parenchyma_item`
--

DROP TABLE IF EXISTS `t_hospitaled_parenchyma_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间但次住院基线信息-6疾病诊断时全身软组织浆细胞瘤检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_parenchyma_item`
--

LOCK TABLES `t_hospitaled_parenchyma_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_parenchyma_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_parenchyma_item` VALUES (1,'CT','fd','1','1',1,1,NULL,'2017-01-10 09:56:19',0),(2,'MRI','f','1','1',1,2,NULL,'2017-01-10 09:56:19',0),(3,'PET-CT','f','1','1',1,3,NULL,'2017-01-10 09:56:19',0),(4,'fd','f','1','1',1,4,NULL,'2017-01-10 09:56:19',0),(5,'fd','fds','1','2',1,5,NULL,'2017-01-10 09:56:19',0),(6,'CT','','','',2,1,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(7,'MRI','','','',2,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(8,'PET-CT','','','',2,3,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(9,'其他: <input name=\"name\" type=\"text\" style=\"width: 100px;\">','','','',2,0,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(10,'CT','','','',3,1,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(11,'MRI','','','',3,2,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(12,'PET-CT','','','',3,3,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(13,'','','','',3,4,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(14,'CT','','','',4,1,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(15,'MRI','','','',4,2,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(16,'PET-CT','','','',4,3,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(17,'其他: <input name=\"name\" type=\"text\" style=\"width: 100px;\">','','','',4,0,'2017-02-08 20:24:23','2017-02-13 19:44:18',0);
/*!40000 ALTER TABLE `t_hospitaled_parenchyma_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_plasmacyte_item`
--

DROP TABLE IF EXISTS `t_hospitaled_plasmacyte_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-4疾病诊断时骨髓穿刺涂片细胞学检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_plasmacyte_item`
--

LOCK TABLES `t_hospitaled_plasmacyte_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_plasmacyte_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_plasmacyte_item` VALUES (1,'所有浆细胞 (%)','fds',1,1,NULL,'2017-01-10 09:56:19',0),(2,'原浆细胞 (%)','fd',2,1,NULL,'2017-01-10 09:56:19',0),(3,'幼浆细胞 (%)','fd',3,1,NULL,'2017-01-10 09:56:19',0),(4,'中间浆细胞 (%)','fd',4,1,NULL,'2017-01-10 09:56:19',0),(5,'成熟浆细胞 (%)','fd',5,1,NULL,'2017-01-10 09:56:19',0),(6,'fd','fd',6,1,NULL,'2017-01-10 09:56:19',0),(7,'fds','fds',7,1,NULL,'2017-01-10 09:56:19',0),(8,'所有浆细胞 (%)','',1,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(9,'原浆细胞 (%)','',2,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(10,'幼浆细胞 (%)','',3,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(11,'中间浆细胞 (%)','',4,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(12,'成熟浆细胞 (%)','',5,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(13,'其他: <input name=\"name\" type=\"text\" style=\"width: 200px;\">','',0,2,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(14,'所有浆细胞 (%)','',1,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(15,'原浆细胞 (%)','',2,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(16,'幼浆细胞 (%)','',3,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(17,'中间浆细胞 (%)','',4,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(18,'成熟浆细胞 (%)','',5,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(19,'','',6,3,'2017-02-07 21:36:49','2017-02-08 20:15:42',0),(20,'所有浆细胞 (%)','',1,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(21,'原浆细胞 (%)','',2,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(22,'幼浆细胞 (%)','',3,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(23,'中间浆细胞 (%)','',4,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(24,'成熟浆细胞 (%)','',5,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0),(25,'其他: <input name=\"name\" type=\"text\" style=\"width: 200px;\">','',0,4,'2017-02-08 20:24:23','2017-02-13 19:44:18',0);
/*!40000 ALTER TABLE `t_hospitaled_plasmacyte_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospitaled_support_item`
--

DROP TABLE IF EXISTS `t_hospitaled_support_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-10对症支持治疗信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitaled_support_item`
--

LOCK TABLES `t_hospitaled_support_item` WRITE;
/*!40000 ALTER TABLE `t_hospitaled_support_item` DISABLE KEYS */;
INSERT INTO `t_hospitaled_support_item` VALUES (3,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'其他','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'X光','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'CT','位置','fdsfds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'fds','fds','fds','fds',2,1,1,NULL,'2017-01-10 09:56:19',0),(16,'fds','fds','fds','fds',2,1,2,NULL,'2017-01-10 09:56:19',0),(17,'','','','',0,2,0,'2017-02-07 21:09:32','2017-02-08 20:18:16',0),(18,'','','','',0,3,1,'2017-02-07 21:36:50','2017-02-08 20:15:42',0),(19,'','','','',0,4,0,'2017-02-08 20:24:23','2017-02-13 19:44:18',0);
/*!40000 ALTER TABLE `t_hospitaled_support_item` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间单次住院基线信息-11疗效评估信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospitalized_info`
--

LOCK TABLES `t_hospitalized_info` WRITE;
/*!40000 ALTER TABLE `t_hospitalized_info` DISABLE KEYS */;
INSERT INTO `t_hospitalized_info` VALUES (1,'1211-11-11','1211-11-11',2,'12',1,2,1,'fds',1,'fds','fds',1,'1','fds',3,NULL,NULL,21,NULL,'2017-01-10 09:56:19',0,15,12,'213','321',2,'2011-11-11',1,'','','1',NULL,NULL,NULL),(4,'2011-01-01','2011-02-02',0,'',0,0,0,'',0,'','',0,'0','',0,NULL,NULL,27,NULL,'2017-02-13 19:44:18',0,19,17,'','',0,'',0,'','','0',NULL,NULL,'');
/*!40000 ALTER TABLE `t_hospitalized_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_logs`
--

DROP TABLE IF EXISTS `t_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatorId` int(11) NOT NULL,
  `operatorName` varchar(64) NOT NULL,
  `method` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_logs`
--

LOCK TABLES `t_logs` WRITE;
/*!40000 ALTER TABLE `t_logs` DISABLE KEYS */;
INSERT INTO `t_logs` VALUES (3,3,'jemeszhou','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=1)的医院列表','2016-12-28 15:12:38'),(4,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2016-12-28 15:18:13'),(5,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2016-12-28 15:19:32'),(6,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2016-12-28 15:28:03'),(7,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=CTI01020160918)的回顾性数据采集信息','2017-01-10 09:56:19'),(8,1,'admin','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=1)的医院列表','2017-01-11 14:03:14'),(9,1,'admin','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=1)的医院列表','2017-01-11 14:20:45'),(10,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2017-01-11 15:02:42'),(11,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2017-01-11 15:21:57'),(12,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2017-01-11 16:11:05'),(13,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:215','新增病人(patientId=tttt)的回顾性数据采集信息','2017-01-11 20:55:38'),(14,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=tttt)的回顾性数据采集信息','2017-01-11 20:56:05'),(15,1,'admin','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=2)的医院列表','2017-01-11 21:04:04'),(16,1,'admin','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=3)的医院列表','2017-01-11 21:04:11'),(17,1,'admin','base.web.controller.common.UserController::saveAuthorityList:145','重新绑定用户(id=4)的医院列表','2017-01-11 21:04:16'),(18,2,'采集员','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=tttt)的回顾性数据采集信息','2017-01-11 21:15:04'),(19,3,'护士','base.web.controller.system.PatientInfoController::modifyContactInfo:72','更新病人(patientId=tttt)的联系信息','2017-01-11 21:16:16'),(20,3,'护士','base.web.controller.system.PatientInfoController::modifyContactInfo:72','更新病人(patientId=11111)的联系信息','2017-01-11 21:52:12'),(21,3,'护士','base.web.controller.system.PatientInfoController::modifyContactInfo:72','更新病人(patientId=11111)的联系信息','2017-01-11 21:52:16'),(22,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160918)的随访信息','2017-01-11 22:06:19'),(23,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:215','新增病人(patientId=1111111)的回顾性数据采集信息','2017-01-17 20:35:25'),(24,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-01-17 20:35:51'),(25,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-01-17 20:36:11'),(26,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-01-17 20:48:25'),(27,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:215','新增病人(patientId=112321321)的回顾性数据采集信息','2017-01-17 20:53:01'),(28,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=112321321)的回顾性数据采集信息','2017-01-17 20:53:18'),(29,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:215','新增病人(patientId=dsfds)的回顾性数据采集信息','2017-01-18 20:06:45'),(30,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-01-18 20:08:25'),(31,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 19:47:46'),(32,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-07 19:57:49'),(33,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-07 19:58:54'),(34,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-07 20:02:08'),(35,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:07:56'),(36,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:08:34'),(37,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-07 20:10:42'),(38,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:16:11'),(39,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:37:10'),(40,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:39:05'),(41,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:39:30'),(42,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 20:43:10'),(43,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-07 20:50:41'),(44,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 21:09:32'),(45,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 21:29:23'),(46,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 21:31:04'),(47,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 21:36:03'),(48,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-07 21:36:50'),(49,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-08 20:15:42'),(50,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-08 20:18:16'),(51,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-08 20:24:23'),(52,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-08 20:27:57'),(53,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-08 21:20:55'),(54,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-08 21:22:22'),(55,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-08 21:24:25'),(56,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=1111111)的回顾性数据采集信息','2017-02-13 19:44:18'),(57,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-13 19:46:23'),(58,1,'admin','base.web.controller.system.PatientInfoController::modifyFollowupInfo:234','更新病人(patientId=CTI01020160922)的随访信息','2017-02-13 19:46:44'),(59,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=dsfds)的回顾性数据采集信息','2017-02-13 20:26:21'),(60,1,'admin','base.web.controller.system.PatientInfoController::modifyPatientInfo:204','更新病人(patientId=dsfds)的回顾性数据采集信息','2017-02-13 20:30:45');
/*!40000 ALTER TABLE `t_logs` ENABLE KEYS */;
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='菜单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (100,'#','menu-icon fa fa-desktop','系统管理',0,1,'系统管理','system',NULL,NULL,NULL),(101,'page/user','menu-icon fa fa-user','用户管理',100,1,NULL,'user',NULL,NULL,NULL),(102,'page/role','menu-icon fa fa-user','角色管理',100,2,NULL,'role',NULL,NULL,NULL),(103,'page/menu','menu-icon fa fa-list','菜单授权',100,3,NULL,'menu',NULL,NULL,NULL),(104,'page/hospital','menu-icon fa fa-list','医院管理',100,4,NULL,'hospital',NULL,NULL,NULL),(105,'page/monitor','menu-icon fa fa-shield','监控管理',100,5,'监控管理','durid',NULL,NULL,NULL),(200,'#','menu-icon fa fa-wheelchair','病人管理',0,2,'病人管理','patient',NULL,NULL,NULL),(201,'page/patientSearch','menu-icon fa fa-search','病例查询',200,1,'病例查询页面','patientSearch',NULL,NULL,NULL),(202,'page/acquisition','menu-icon fa fa-plus','新增采集',200,2,'新增采集表','acquisition',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mm_cure_history`
--

DROP TABLE IF EXISTS `t_mm_cure_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='MM患者观察期间首次住院基线信息-11既往MM相关的治疗信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mm_cure_history`
--

LOCK TABLES `t_mm_cure_history` WRITE;
/*!40000 ALTER TABLE `t_mm_cure_history` DISABLE KEYS */;
INSERT INTO `t_mm_cure_history` VALUES (1,'fds','11','11','1','1','11',1,'1','',NULL,0,1,12,NULL,'2017-01-10 09:56:19',0,2,''),(3,'','0','0','0','0','0',0,'0','',NULL,0,1,13,NULL,NULL,0,0,''),(4,'','','','','','',0,'0','',NULL,0,1,14,NULL,NULL,0,0,''),(5,'','','','','','',0,'0','',NULL,0,1,15,NULL,NULL,0,0,''),(6,'','','','','','',0,'0','',NULL,0,1,16,NULL,'2017-01-11 21:15:04',0,0,''),(7,'','','','','','',1,'1','',NULL,3,1,17,NULL,'2017-02-13 19:44:18',0,0,''),(8,'','','','','','',1,'1','','fds',10,2,17,'2017-01-17 20:35:51','2017-02-13 19:44:18',0,0,''),(9,'','','','','','',1,'2','',NULL,10,1,18,NULL,'2017-01-17 20:53:17',0,0,''),(10,'','','','','','',0,'0','',NULL,0,1,19,NULL,'2017-02-13 20:30:45',0,0,'');
/*!40000 ALTER TABLE `t_mm_cure_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_contactinfo`
--

DROP TABLE IF EXISTS `t_patient_contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='MM患者联系信息-1患者联系信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_contactinfo`
--

LOCK TABLES `t_patient_contactinfo` WRITE;
/*!40000 ALTER TABLE `t_patient_contactinfo` DISABLE KEYS */;
INSERT INTO `t_patient_contactinfo` VALUES (1,'CTI01020160918',1,1,'2015-11-11','','',NULL,'12/18/2016',NULL,NULL,0,1,NULL),(2,'CTI01020160922',1,1,'','','','admin',NULL,NULL,'2016-12-25 16:24:58',0,1,1),(3,'tttt',1,1,'','','','护士',NULL,'2017-01-11 21:16:16','2017-01-11 21:16:16',0,1,3),(4,'11111',1,1,'2017-10-10','','','护士',NULL,'2017-01-11 21:52:12','2017-01-11 21:52:16',0,1,3);
/*!40000 ALTER TABLE `t_patient_contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_info`
--

DROP TABLE IF EXISTS `t_patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_info`
--

LOCK TABLES `t_patient_info` WRITE;
/*!40000 ALTER TABLE `t_patient_info` DISABLE KEYS */;
INSERT INTO `t_patient_info` VALUES (12,'CTI01020160918',1,'1992-11-11',1,'1',3,2,3,'11','11',2,'',3,5,'1',1,2,19,16,'',0,2,2,2,2,0,'2017-01-11 22:06:19',1,NULL,NULL,NULL,'11','admin',1),(13,'test1',1,'1111',2,'1',2,1,3,'170','20',5,'',2,1,'12',1,1,20,0,'',0,0,0,0,2,0,'2016-12-18 19:11:35',1,NULL,NULL,'2016-12-18 19:11:35','122','admin',1),(14,'11111',1,'1921-11-11',0,'0',0,0,0,'','',0,'',0,0,'',0,0,21,0,'',0,2,0,0,2,0,'2016-12-24 16:24:54',1,NULL,NULL,'2016-12-24 16:24:54','','admin',1),(15,'CTI01020160922',1,'1992-11-11',0,'0',0,0,0,'','',0,'',0,0,'',0,0,22,17,'',0,2,2,1,2,0,'2017-02-13 19:46:44',1,NULL,NULL,'2016-12-25 16:23:02','','admin',1),(16,'tttt',1,'2011-12-10',1,'1',0,0,0,'','',0,'',0,0,'',0,0,23,0,'',0,1,0,0,2,0,'2017-01-11 21:15:03',1,NULL,NULL,'2017-01-11 20:55:38','','采集员',2),(17,'1111111',1,'',0,'0',0,0,0,'','',0,'',0,0,'',0,0,24,0,'',0,0,0,0,1,0,'2017-02-13 19:44:18',1,NULL,NULL,'2017-01-17 20:35:25','','admin',1),(18,'112321321',1,'',0,'0',0,0,0,'','',0,'',0,0,'',0,0,25,0,'',0,0,0,0,1,0,'2017-01-17 20:53:17',1,NULL,NULL,'2017-01-17 20:53:01','','admin',1),(19,'dsfds',1,'',0,'0',0,0,0,'','',0,'',0,0,'',0,0,26,0,'',0,0,0,0,1,0,'2017-02-13 20:30:45',1,NULL,NULL,'2017-01-18 20:06:45','','admin',1);
/*!40000 ALTER TABLE `t_patient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_informed`
--

DROP TABLE IF EXISTS `t_patient_informed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_informed`
--

LOCK TABLES `t_patient_informed` WRITE;
/*!40000 ALTER TABLE `t_patient_informed` DISABLE KEYS */;
INSERT INTO `t_patient_informed` VALUES (1,2,'1991-11-11',NULL,NULL,NULL,NULL,NULL,0,'CTI01020160918',1,NULL),(2,2,'','admin','2016-12-25 16:25:08',NULL,NULL,'2016-12-25 16:25:08',0,'CTI01020160922',1,1);
/*!40000 ALTER TABLE `t_patient_informed` ENABLE KEYS */;
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_permission`
--

LOCK TABLES `t_permission` WRITE;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` VALUES (1,'user:add','添加',101,NULL,NULL,NULL,NULL),(2,'user:edit','修改',101,NULL,NULL,NULL,NULL),(3,'user:delete','删除',101,NULL,NULL,NULL,NULL),(4,'user:view','查看',101,NULL,NULL,NULL,NULL),(5,'role:add','添加',102,NULL,NULL,NULL,NULL),(6,'role:edit','修改',102,NULL,NULL,NULL,NULL),(7,'role:delete','删除',102,NULL,NULL,NULL,NULL),(8,'role:view','查看',102,NULL,NULL,NULL,NULL),(9,'menu:auth','授权',103,NULL,NULL,NULL,NULL),(10,'role:auth','授权',102,NULL,NULL,NULL,NULL),(11,'hospital:add','添加',104,NULL,NULL,NULL,NULL),(12,'hospital:edit','修改',104,NULL,NULL,NULL,NULL),(13,'hospital:delete','删除',104,NULL,NULL,NULL,NULL),(14,'hospital:view','查找',104,NULL,NULL,NULL,NULL),(15,'patient:acquisition','数据采集',201,NULL,NULL,NULL,NULL),(16,'patient:inform','知情同意书',201,NULL,NULL,NULL,NULL),(17,'patient:contact','联系患者',201,NULL,NULL,NULL,NULL),(18,'patient:followup','随访采集',201,NULL,NULL,NULL,NULL),(19,'patient:acquisitionview ','数据采集查看',201,NULL,NULL,NULL,NULL),(20,'patient:informview','知情同意书状态查看',201,NULL,NULL,NULL,NULL),(21,'patient:contactview','联系患者查看',201,NULL,NULL,NULL,NULL),(22,'patient:followupview','随访查看',201,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'管理员','ADMIN','管理员',0,NULL,NULL,NULL),(2,'采集员','COLLECTOR','信息采集员',0,NULL,NULL,NULL),(3,'护士','NURSE','护士角色',0,NULL,NULL,NULL),(4,'医生','DOCTOR','医生',0,NULL,NULL,NULL);
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='角色关联菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role2menu`
--

LOCK TABLES `t_role2menu` WRITE;
/*!40000 ALTER TABLE `t_role2menu` DISABLE KEYS */;
INSERT INTO `t_role2menu` VALUES (22,1,100,NULL,NULL,NULL),(23,1,101,NULL,NULL,NULL),(24,1,102,NULL,NULL,NULL),(25,1,103,NULL,NULL,NULL),(26,1,105,NULL,NULL,NULL),(27,1,200,NULL,NULL,NULL),(28,1,201,NULL,NULL,NULL),(29,1,202,NULL,NULL,NULL),(30,1,1,NULL,NULL,NULL),(31,1,104,NULL,NULL,NULL),(32,3,200,NULL,NULL,NULL),(33,3,201,NULL,NULL,NULL),(34,4,200,NULL,NULL,NULL),(35,4,201,NULL,NULL,NULL),(36,2,200,NULL,NULL,NULL),(37,2,201,NULL,NULL,NULL);
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='角色关联权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role2permission`
--

LOCK TABLES `t_role2permission` WRITE;
/*!40000 ALTER TABLE `t_role2permission` DISABLE KEYS */;
INSERT INTO `t_role2permission` VALUES (16,1,5,NULL,NULL,NULL),(17,1,6,NULL,NULL,NULL),(18,1,7,NULL,NULL,NULL),(19,1,8,NULL,NULL,NULL),(20,1,10,NULL,NULL,NULL),(21,1,11,NULL,NULL,NULL),(22,1,12,NULL,NULL,NULL),(23,1,13,NULL,NULL,NULL),(24,1,14,NULL,NULL,NULL),(29,1,1,NULL,NULL,NULL),(30,1,2,NULL,NULL,NULL),(31,1,3,NULL,NULL,NULL),(32,1,4,NULL,NULL,NULL),(33,2,1,NULL,NULL,NULL),(34,2,2,NULL,NULL,NULL),(35,2,3,NULL,NULL,NULL),(36,2,4,NULL,NULL,NULL),(37,3,1,NULL,NULL,NULL),(38,3,2,NULL,NULL,NULL),(39,3,3,NULL,NULL,NULL),(40,3,4,NULL,NULL,NULL),(41,4,1,NULL,NULL,NULL),(42,4,2,NULL,NULL,NULL),(43,4,3,NULL,NULL,NULL),(44,4,4,NULL,NULL,NULL),(45,1,9,NULL,NULL,NULL),(46,2,9,NULL,NULL,NULL),(47,3,9,NULL,NULL,NULL),(48,4,9,NULL,NULL,NULL),(175,1,15,NULL,NULL,NULL),(176,1,16,NULL,NULL,NULL),(177,1,17,NULL,NULL,NULL),(178,1,18,NULL,NULL,NULL),(179,2,15,NULL,NULL,NULL),(180,3,17,NULL,NULL,NULL),(181,3,18,NULL,NULL,NULL),(182,3,19,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_role2permission` ENABLE KEYS */;
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','username','13000000000','12345678@qq.com',NULL,'2016-09-05 22:13:07','2017-02-13 19:33:54',1,0,0,NULL,NULL,NULL),(2,'采集员','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','cjy','13000000000','tes@qq.com',NULL,'2016-10-07 22:48:31','2017-01-11 21:14:30',2,0,0,NULL,NULL,NULL),(3,'护士','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','hs','13062291538','112@qq.com',NULL,'2016-11-09 16:31:28','2017-01-11 21:51:53',3,0,0,NULL,NULL,NULL),(4,'医生','fEqNCco3Yq9h5ZUglD3CZJT4lBs=','ys','13000000000','yisheng@qq.com',NULL,'2017-01-11 21:03:32','2017-01-11 21:15:21',4,0,0,NULL,NULL,NULL);
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
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(11) DEFAULT NULL COMMENT '是否已删除(是：1，否：0)',
  PRIMARY KEY (`user_id`,`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户关联医院表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user2hospital`
--

LOCK TABLES `t_user2hospital` WRITE;
/*!40000 ALTER TABLE `t_user2hospital` DISABLE KEYS */;
INSERT INTO `t_user2hospital` VALUES (1,1,NULL,NULL,NULL),(2,1,NULL,NULL,NULL),(2,7,NULL,NULL,NULL),(2,8,NULL,NULL,NULL),(2,9,NULL,NULL,NULL),(2,10,NULL,NULL,NULL),(2,11,NULL,NULL,NULL),(2,12,NULL,NULL,NULL),(2,14,NULL,NULL,NULL),(2,15,NULL,NULL,NULL),(2,16,NULL,NULL,NULL),(3,1,NULL,NULL,NULL),(3,7,NULL,NULL,NULL),(3,8,NULL,NULL,NULL),(3,9,NULL,NULL,NULL),(3,10,NULL,NULL,NULL),(3,11,NULL,NULL,NULL),(3,12,NULL,NULL,NULL),(3,14,NULL,NULL,NULL),(3,15,NULL,NULL,NULL),(3,16,NULL,NULL,NULL),(4,1,NULL,NULL,NULL),(4,7,NULL,NULL,NULL),(4,8,NULL,NULL,NULL),(4,9,NULL,NULL,NULL);
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

-- Dump completed on 2017-02-13 21:11:56
