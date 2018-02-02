/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 100203
Source Host           : localhost:3306
Source Database       : quickstart_yii2

Target Server Type    : MYSQL
Target Server Version : 100203
File Encoding         : 65001

Date: 2018-02-02 19:12:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `item_product_id` varchar(11) NOT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_quantity` int(11) DEFAULT 0,
  `item_price` varchar(10) DEFAULT '0.00',
  `item_brand` varchar(255) DEFAULT NULL,
  `item_model` varchar(255) DEFAULT NULL,
  `item_company_manufacturer` varchar(255) DEFAULT NULL,
  `item_manufactured_country_address` int(11) unsigned DEFAULT NULL,
  `item_manufactured_state_address` int(11) unsigned DEFAULT NULL,
  `item_manufactured_city_address` int(11) unsigned DEFAULT NULL,
  `item_manufactured_postcode_address` int(6) DEFAULT NULL,
  `item_manufactured_street_address` varchar(255) DEFAULT NULL,
  `item_manufactured_no_address` varchar(10) DEFAULT NULL,
  `item_weight` varchar(10) DEFAULT NULL,
  `item_size_height` varchar(10) DEFAULT NULL,
  `item_size_width` varchar(10) DEFAULT NULL,
  `item_size_length` varchar(10) DEFAULT NULL,
  `item_manufactured_date` datetime DEFAULT NULL,
  `item_availability_date_start` datetime DEFAULT NULL,
  `item_availability_date_end` datetime DEFAULT NULL,
  `item_registered_on_system_date` datetime DEFAULT current_timestamp(),
  `item_updated_on_system_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `item_activeness` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`item_id`),
  KEY `item_ibfk_1` (`item_manufactured_country_address`),
  KEY `item_manufactured_state_address` (`item_manufactured_state_address`),
  KEY `item_manufactured_city_address` (`item_manufactured_city_address`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_manufactured_country_address`) REFERENCES `master_negara` (`negara_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`item_manufactured_state_address`) REFERENCES `master_negeri` (`negeri_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `item_ibfk_3` FOREIGN KEY (`item_manufactured_city_address`) REFERENCES `master_daerah` (`daerah_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of item
-- ----------------------------
