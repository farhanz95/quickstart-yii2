/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 100203
Source Host           : localhost:3306
Source Database       : quickstart_yii2

Target Server Type    : MYSQL
Target Server Version : 100203
File Encoding         : 65001

Date: 2018-02-02 15:56:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_negeri
-- ----------------------------
DROP TABLE IF EXISTS `master_negeri`;
CREATE TABLE `master_negeri` (
  `negeri_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `negeri_nama` varchar(64) NOT NULL,
  `negara_id` int(11) unsigned DEFAULT NULL,
  `negeri_aktif` int(1) DEFAULT 0,
  PRIMARY KEY (`negeri_id`),
  KEY `negara_id` (`negara_id`),
  CONSTRAINT `master_negeri_ibfk_1` FOREIGN KEY (`negara_id`) REFERENCES `master_negara` (`negara_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_negeri
-- ----------------------------
INSERT INTO `master_negeri` VALUES ('1', 'Johor', '133', '1');
INSERT INTO `master_negeri` VALUES ('2', 'Kedah', '133', '1');
INSERT INTO `master_negeri` VALUES ('3', 'Kelantan', '133', '1');
INSERT INTO `master_negeri` VALUES ('4', 'Pahang', '133', '1');
INSERT INTO `master_negeri` VALUES ('5', 'Melaka', '133', '1');
INSERT INTO `master_negeri` VALUES ('6', 'Negeri Sembilan', '133', '1');
INSERT INTO `master_negeri` VALUES ('7', 'Selangor', '133', '1');
INSERT INTO `master_negeri` VALUES ('8', 'Perak', '133', '1');
INSERT INTO `master_negeri` VALUES ('9', 'Perlis', '133', '1');
INSERT INTO `master_negeri` VALUES ('10', 'Pulau Pinang', '133', '1');
INSERT INTO `master_negeri` VALUES ('11', 'Sarawak', '133', '1');
INSERT INTO `master_negeri` VALUES ('12', 'Sabah', '133', '1');
INSERT INTO `master_negeri` VALUES ('13', 'Terengganu', '133', '1');
INSERT INTO `master_negeri` VALUES ('14', 'Wilayah Persekutuan', '133', '1');
