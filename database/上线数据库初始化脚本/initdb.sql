/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2017-02-17 13:48:58
*/


-- ----------------------------
-- Records of t_hospital
-- ----------------------------
INSERT INTO `t_hospital` VALUES ('1', '北京朝阳医院', 'CY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('2', '北大人民医院', 'RM', '0', null, null);
INSERT INTO `t_hospital` VALUES ('3', '天津血研所', 'XY', '0', null, null);
INSERT INTO `t_hospital` VALUES ('4', '北京协和医院', 'XH', '0', null, null);
INSERT INTO `t_hospital` VALUES ('5', '上海长征医院', 'CZ', '0', null, null);
INSERT INTO `t_hospital` VALUES ('6', '上海瑞金医院', 'RJ', '0', null, null);
INSERT INTO `t_hospital` VALUES ('7', '苏州大学附属第一医院', 'SZ', '0', null, null);
INSERT INTO `t_hospital` VALUES ('8', '浙大医院', 'ZJ', '0', null, null);
INSERT INTO `t_hospital` VALUES ('9', '中山大学附属第一医院', 'ZS', '0', null, null);
INSERT INTO `t_hospital` VALUES ('10', '华西医院', 'HX', '0', null, null);

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('100', '#', 'menu-icon fa fa-desktop', '系统管理', '0', '1', '系统管理', 'system', null, null, null);
INSERT INTO `t_menu` VALUES ('101', 'page/user', 'menu-icon fa fa-user', '用户管理', '100', '1', null, 'user', null, null, null);
INSERT INTO `t_menu` VALUES ('102', 'page/role', 'menu-icon fa fa-users', '角色管理', '100', '2', null, 'role', null, null, null);
INSERT INTO `t_menu` VALUES ('103', 'page/menu', 'menu-icon fa fa-list', '菜单授权', '100', '3', null, 'menu', null, null, null);
INSERT INTO `t_menu` VALUES ('104', 'page/hospital', 'menu-icon fa fa-headphones', '医院管理', '100', '4', null, 'hospital', null, null, null);
INSERT INTO `t_menu` VALUES ('105', 'page/monitor', 'menu-icon fa fa-shield', '监控管理', '100', '5', '监控管理', 'durid', null, null, null);
INSERT INTO `t_menu` VALUES ('201', 'page/patientSearch', 'menu-icon fa fa-search', '数据采集', '0', '1', '病例查询页面', 'patientSearch', null, null, null);


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
INSERT INTO `t_permission` VALUES ('15', 'patient:acquisition', '回顾性数据采集', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('16', 'patient:inform', '知情同意书状态更新', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('17', 'patient:contact', '联系患者', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('18', 'patient:followup', '随访数据采集', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('19', 'patient:acquisitionview', '数据采集查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('20', 'patient:informview', '知情同意状态查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('21', 'patient:contactview', '联系患者查看', '201', null, null, null, null);
INSERT INTO `t_permission` VALUES ('22', 'patient:followupview', '查看随访', '201', null, null, null, null);

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'ADMIN', '管理员', '0', null, null, null);
INSERT INTO `t_role` VALUES ('2', '采集员', 'COLLECTOR', '信息采集员', '0', null, null, null);
INSERT INTO `t_role` VALUES ('3', '护士', 'NURSE', '护士角色', '0', null, null, null);
INSERT INTO `t_role` VALUES ('4', '医生', 'DOCTOR', '医生', '0', null, null, null);
INSERT INTO `t_role` VALUES ('5', '数据管理员', 'datacollege', '数据管理员', '0', null, null, null);

-- ----------------------------
-- Records of t_role2menu
-- ----------------------------

INSERT INTO `t_role2menu` VALUES ('1', '1', '100', null, null, null);
INSERT INTO `t_role2menu` VALUES ('2', '1', '101', null, null, null);
INSERT INTO `t_role2menu` VALUES ('3', '1', '102', null, null, null);
INSERT INTO `t_role2menu` VALUES ('4', '1', '103', null, null, null);
INSERT INTO `t_role2menu` VALUES ('5', '1', '104', null, null, null);
INSERT INTO `t_role2menu` VALUES ('6', '1', '105', null, null, null);
INSERT INTO `t_role2menu` VALUES ('7', '1', '201', null, null, null);
INSERT INTO `t_role2menu` VALUES ('8', '2', '201', null, null, null);
INSERT INTO `t_role2menu` VALUES ('9', '3', '201', null, null, null);
INSERT INTO `t_role2menu` VALUES ('10', '4', '201', null, null, null);
INSERT INTO `t_role2menu` VALUES ('11', '5', '100', null, null, null);
INSERT INTO `t_role2menu` VALUES ('12', '5', '101', null, null, null);
INSERT INTO `t_role2menu` VALUES ('13', '5', '102', null, null, null);
INSERT INTO `t_role2menu` VALUES ('14', '5', '103', null, null, null);
INSERT INTO `t_role2menu` VALUES ('15', '5', '104', null, null, null);
INSERT INTO `t_role2menu` VALUES ('16', '5', '105', null, null, null);
INSERT INTO `t_role2menu` VALUES ('17', '5', '201', null, null, null);


-- ----------------------------
-- Records of t_role2permission
-- ----------------------------
INSERT INTO `t_role2permission` VALUES ('23', '1', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('24', '1', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('25', '1', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('26', '1', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('27', '5', '1', null, null, null);
INSERT INTO `t_role2permission` VALUES ('28', '5', '2', null, null, null);
INSERT INTO `t_role2permission` VALUES ('29', '5', '3', null, null, null);
INSERT INTO `t_role2permission` VALUES ('30', '5', '4', null, null, null);
INSERT INTO `t_role2permission` VALUES ('31', '1', '5', null, null, null);
INSERT INTO `t_role2permission` VALUES ('32', '1', '6', null, null, null);
INSERT INTO `t_role2permission` VALUES ('33', '1', '7', null, null, null);
INSERT INTO `t_role2permission` VALUES ('34', '1', '8', null, null, null);
INSERT INTO `t_role2permission` VALUES ('35', '1', '10', null, null, null);
INSERT INTO `t_role2permission` VALUES ('36', '5', '5', null, null, null);
INSERT INTO `t_role2permission` VALUES ('37', '5', '6', null, null, null);
INSERT INTO `t_role2permission` VALUES ('38', '5', '7', null, null, null);
INSERT INTO `t_role2permission` VALUES ('39', '5', '8', null, null, null);
INSERT INTO `t_role2permission` VALUES ('40', '5', '10', null, null, null);
INSERT INTO `t_role2permission` VALUES ('41', '1', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('42', '5', '9', null, null, null);
INSERT INTO `t_role2permission` VALUES ('43', '1', '11', null, null, null);
INSERT INTO `t_role2permission` VALUES ('44', '1', '12', null, null, null);
INSERT INTO `t_role2permission` VALUES ('45', '1', '13', null, null, null);
INSERT INTO `t_role2permission` VALUES ('46', '1', '14', null, null, null);
INSERT INTO `t_role2permission` VALUES ('47', '5', '11', null, null, null);
INSERT INTO `t_role2permission` VALUES ('48', '5', '12', null, null, null);
INSERT INTO `t_role2permission` VALUES ('49', '5', '13', null, null, null);
INSERT INTO `t_role2permission` VALUES ('50', '5', '14', null, null, null);
INSERT INTO `t_role2permission` VALUES ('51', '1', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('52', '1', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('53', '1', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('54', '1', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('55', '1', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('56', '1', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('57', '1', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('58', '1', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('59', '2', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('60', '2', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('61', '2', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('62', '2', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('63', '2', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('64', '3', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('65', '3', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('66', '3', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('67', '3', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('68', '3', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('69', '3', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('70', '4', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('71', '4', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('72', '4', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('73', '4', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('74', '4', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('75', '4', '22', null, null, null);
INSERT INTO `t_role2permission` VALUES ('76', '5', '15', null, null, null);
INSERT INTO `t_role2permission` VALUES ('77', '5', '16', null, null, null);
INSERT INTO `t_role2permission` VALUES ('78', '5', '17', null, null, null);
INSERT INTO `t_role2permission` VALUES ('79', '5', '18', null, null, null);
INSERT INTO `t_role2permission` VALUES ('80', '5', '19', null, null, null);
INSERT INTO `t_role2permission` VALUES ('81', '5', '20', null, null, null);
INSERT INTO `t_role2permission` VALUES ('82', '5', '21', null, null, null);
INSERT INTO `t_role2permission` VALUES ('83', '5', '22', null, null, null);


-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', 'username', '13000000000', '12345678@qq.com', null, '2016-09-05 22:13:07', '2017-02-14 09:45:27', '1', '0', '1', null, null, null);

-- ----------------------------
-- Records of t_user2hospital
-- ----------------------------
INSERT INTO `t_user2hospital` VALUES ('1', '1', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '2', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '3', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '4', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '5', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '6', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '7', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '8', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '9', null, null, null);
INSERT INTO `t_user2hospital` VALUES ('1', '10', null, null, null);