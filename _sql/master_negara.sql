/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 100203
Source Host           : localhost:3306
Source Database       : quickstart_yii2

Target Server Type    : MYSQL
Target Server Version : 100203
File Encoding         : 65001

Date: 2018-02-02 15:56:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_negara
-- ----------------------------
DROP TABLE IF EXISTS `master_negara`;
CREATE TABLE `master_negara` (
  `negara_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `negara_code` varchar(8) DEFAULT NULL,
  `negara_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`negara_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_negara
-- ----------------------------
INSERT INTO `master_negara` VALUES ('1', 'UK', 'UNITED KINGDOM');
INSERT INTO `master_negara` VALUES ('2', 'AF', 'AFGHANISTAN');
INSERT INTO `master_negara` VALUES ('3', 'AL', 'ALBANIA');
INSERT INTO `master_negara` VALUES ('4', 'DZ', 'ALGERIA');
INSERT INTO `master_negara` VALUES ('5', 'US', 'UNITED STATES');
INSERT INTO `master_negara` VALUES ('6', 'AD', 'ANDORRA');
INSERT INTO `master_negara` VALUES ('7', 'AO', 'ANGOLA');
INSERT INTO `master_negara` VALUES ('8', 'AI', 'ANGUILLA');
INSERT INTO `master_negara` VALUES ('9', 'AG', 'ANTIGUA AND BARBUDA');
INSERT INTO `master_negara` VALUES ('10', 'AR', 'ARGENTINA');
INSERT INTO `master_negara` VALUES ('11', 'AM', 'ARMENIA');
INSERT INTO `master_negara` VALUES ('12', 'AW', 'ARUBA');
INSERT INTO `master_negara` VALUES ('13', 'AU', 'AUSTRALIA');
INSERT INTO `master_negara` VALUES ('14', 'AT', 'AUSTRIA');
INSERT INTO `master_negara` VALUES ('15', 'AZ', 'AZERBAIJAN');
INSERT INTO `master_negara` VALUES ('16', 'BS', 'BAHAMAS');
INSERT INTO `master_negara` VALUES ('17', 'BH', 'BAHRAIN');
INSERT INTO `master_negara` VALUES ('18', 'BD', 'BANGLADESH');
INSERT INTO `master_negara` VALUES ('19', 'BB', 'BARBADOS');
INSERT INTO `master_negara` VALUES ('20', 'LS', 'LESOTHO');
INSERT INTO `master_negara` VALUES ('21', 'BW', 'BOTSWANA');
INSERT INTO `master_negara` VALUES ('22', 'BY', 'BELARUS');
INSERT INTO `master_negara` VALUES ('23', 'BE', 'BELGIUM');
INSERT INTO `master_negara` VALUES ('24', 'BZ', 'BELIZE');
INSERT INTO `master_negara` VALUES ('25', 'BJ', 'BENIN');
INSERT INTO `master_negara` VALUES ('26', 'BM', 'BERMUDA');
INSERT INTO `master_negara` VALUES ('27', 'BT', 'BHUTAN');
INSERT INTO `master_negara` VALUES ('28', 'BO', 'BOLIVIA');
INSERT INTO `master_negara` VALUES ('29', 'BA', 'BOSNIA AND HERZEGOVINA');
INSERT INTO `master_negara` VALUES ('30', 'BR', 'BRAZIL');
INSERT INTO `master_negara` VALUES ('31', 'VG', 'BRITISH VIRGIN ISLANDS');
INSERT INTO `master_negara` VALUES ('32', 'BN', 'BRUNEI DARUSSALAM');
INSERT INTO `master_negara` VALUES ('33', 'BG', 'BULGARIA');
INSERT INTO `master_negara` VALUES ('34', 'BF', 'BURKINA FASO');
INSERT INTO `master_negara` VALUES ('35', 'MM', 'MYANMAR');
INSERT INTO `master_negara` VALUES ('36', 'BI', 'BURUNDI');
INSERT INTO `master_negara` VALUES ('37', 'KH', 'CAMBODIA');
INSERT INTO `master_negara` VALUES ('38', 'CM', 'CAMEROON');
INSERT INTO `master_negara` VALUES ('39', 'CA', 'CANADA');
INSERT INTO `master_negara` VALUES ('40', 'CV', 'CAPE VERDE');
INSERT INTO `master_negara` VALUES ('41', 'KY', 'CAYMAN ISLANDS');
INSERT INTO `master_negara` VALUES ('42', 'CF', 'CENTRAL AFRICAN REPUBLIC');
INSERT INTO `master_negara` VALUES ('43', 'TD', 'CHAD');
INSERT INTO `master_negara` VALUES ('44', 'GG', 'GUERNSEY');
INSERT INTO `master_negara` VALUES ('45', 'JE', 'JERSEY');
INSERT INTO `master_negara` VALUES ('46', 'CL', 'CHILE');
INSERT INTO `master_negara` VALUES ('47', 'CN', 'CHINA');
INSERT INTO `master_negara` VALUES ('48', 'HK', 'HONG KONG (SAR)');
INSERT INTO `master_negara` VALUES ('49', 'MO', 'MACAO');
INSERT INTO `master_negara` VALUES ('50', 'CX', 'CHRISTMAS ISLAND');
INSERT INTO `master_negara` VALUES ('51', 'CC', 'COCOS (KEELING) ISLANDS');
INSERT INTO `master_negara` VALUES ('52', 'CO', 'COLOMBIA');
INSERT INTO `master_negara` VALUES ('53', 'KM', 'COMOROS');
INSERT INTO `master_negara` VALUES ('54', 'CD', 'DEMOCRATIC REPUBLIC OF THE CON');
INSERT INTO `master_negara` VALUES ('55', 'CG', 'REPUBLIC OF THE CONGO');
INSERT INTO `master_negara` VALUES ('56', 'CK', 'COOK ISLANDS');
INSERT INTO `master_negara` VALUES ('57', 'CR', 'COSTA RICA');
INSERT INTO `master_negara` VALUES ('58', 'HR', 'CROATIA');
INSERT INTO `master_negara` VALUES ('59', 'CU', 'CUBA');
INSERT INTO `master_negara` VALUES ('60', 'CY', 'CYPRUS');
INSERT INTO `master_negara` VALUES ('61', 'CZ', 'CZECH REPUBLIC');
INSERT INTO `master_negara` VALUES ('62', 'DK', 'DENMARK');
INSERT INTO `master_negara` VALUES ('63', 'DJ', 'DJIBOUTI');
INSERT INTO `master_negara` VALUES ('64', 'DM', 'DOMINICA');
INSERT INTO `master_negara` VALUES ('65', 'DO', 'DOMINICAN REPUBLIC');
INSERT INTO `master_negara` VALUES ('66', 'NL', 'NETHERLANDS');
INSERT INTO `master_negara` VALUES ('67', 'AN', 'NETHERLANDS ANTILLES');
INSERT INTO `master_negara` VALUES ('68', 'EC', 'ECUADOR');
INSERT INTO `master_negara` VALUES ('69', 'EG', 'EGYPT');
INSERT INTO `master_negara` VALUES ('70', 'AE', 'UNITED ARAB EMIRATES');
INSERT INTO `master_negara` VALUES ('71', 'GQ', 'EQUATORIAL GUINEA');
INSERT INTO `master_negara` VALUES ('72', 'ER', 'ERITREA');
INSERT INTO `master_negara` VALUES ('73', 'EE', 'ESTONIA');
INSERT INTO `master_negara` VALUES ('74', 'ET', 'ETHIOPIA');
INSERT INTO `master_negara` VALUES ('75', 'FK', 'FALKLAND ISLANDS (ISLAS MALVIN');
INSERT INTO `master_negara` VALUES ('76', 'FO', 'FAROE ISLANDS');
INSERT INTO `master_negara` VALUES ('77', 'FJ', 'FIJI');
INSERT INTO `master_negara` VALUES ('78', 'PH', 'PHILIPPINES');
INSERT INTO `master_negara` VALUES ('79', 'FI', 'FINLAND');
INSERT INTO `master_negara` VALUES ('80', 'FR', 'FRANCE');
INSERT INTO `master_negara` VALUES ('81', 'FX', 'FRANCE METROPOLITAN');
INSERT INTO `master_negara` VALUES ('82', 'PM', 'SAINT PIERRE AND MIQUELON');
INSERT INTO `master_negara` VALUES ('83', 'GF', 'FRENCH GUIANA');
INSERT INTO `master_negara` VALUES ('84', 'PF', 'FRENCH POLYNESIA');
INSERT INTO `master_negara` VALUES ('85', 'GA', 'GABON');
INSERT INTO `master_negara` VALUES ('86', 'GM', 'GAMBIA');
INSERT INTO `master_negara` VALUES ('87', 'GE', 'GEORGIA');
INSERT INTO `master_negara` VALUES ('88', 'DE', 'GERMANY');
INSERT INTO `master_negara` VALUES ('89', 'GH', 'GHANA');
INSERT INTO `master_negara` VALUES ('90', 'GI', 'GIBRALTAR');
INSERT INTO `master_negara` VALUES ('91', 'GR', 'GREECE');
INSERT INTO `master_negara` VALUES ('92', 'GL', 'GREENLAND');
INSERT INTO `master_negara` VALUES ('93', 'GD', 'GRENADA');
INSERT INTO `master_negara` VALUES ('94', 'GP', 'GUADELOUPE');
INSERT INTO `master_negara` VALUES ('95', 'GU', 'GUAM');
INSERT INTO `master_negara` VALUES ('96', 'GT', 'GUATEMALA');
INSERT INTO `master_negara` VALUES ('97', 'GN', 'GUINEA');
INSERT INTO `master_negara` VALUES ('98', 'GW', 'GUINEA-BISSAU');
INSERT INTO `master_negara` VALUES ('99', 'GY', 'GUYANA');
INSERT INTO `master_negara` VALUES ('100', 'HT', 'HAITI');
INSERT INTO `master_negara` VALUES ('101', 'HN', 'HONDURAS');
INSERT INTO `master_negara` VALUES ('102', 'HU', 'HUNGARY');
INSERT INTO `master_negara` VALUES ('103', 'IS', 'ICELAND');
INSERT INTO `master_negara` VALUES ('104', 'IN', 'INDIA');
INSERT INTO `master_negara` VALUES ('105', 'ID', 'INDONESIA');
INSERT INTO `master_negara` VALUES ('106', 'IR', 'IRAN');
INSERT INTO `master_negara` VALUES ('107', 'IQ', 'IRAQ');
INSERT INTO `master_negara` VALUES ('108', 'IE', 'IRELAND');
INSERT INTO `master_negara` VALUES ('109', 'IL', 'ISRAEL');
INSERT INTO `master_negara` VALUES ('110', 'IT', 'ITALY');
INSERT INTO `master_negara` VALUES ('111', 'CI', 'COTE D IVOIRE');
INSERT INTO `master_negara` VALUES ('112', 'JM', 'JAMAICA');
INSERT INTO `master_negara` VALUES ('113', 'JP', 'JAPAN');
INSERT INTO `master_negara` VALUES ('114', 'JO', 'JORDAN');
INSERT INTO `master_negara` VALUES ('115', 'KZ', 'KAZAKHSTAN');
INSERT INTO `master_negara` VALUES ('116', 'KE', 'KENYA');
INSERT INTO `master_negara` VALUES ('117', 'KI', 'KIRIBATI');
INSERT INTO `master_negara` VALUES ('118', 'KN', 'SAINT KITTS AND NEVIS');
INSERT INTO `master_negara` VALUES ('119', 'KW', 'KUWAIT');
INSERT INTO `master_negara` VALUES ('120', 'KG', 'KYRGYZSTAN');
INSERT INTO `master_negara` VALUES ('121', 'LA', 'LAOS');
INSERT INTO `master_negara` VALUES ('122', 'LV', 'LATVIA');
INSERT INTO `master_negara` VALUES ('123', 'LB', 'LEBANON');
INSERT INTO `master_negara` VALUES ('124', 'LR', 'LIBERIA');
INSERT INTO `master_negara` VALUES ('125', 'LY', 'LIBYA');
INSERT INTO `master_negara` VALUES ('126', 'LI', 'LIECHTENSTEIN');
INSERT INTO `master_negara` VALUES ('127', 'LT', 'LITHUANIA');
INSERT INTO `master_negara` VALUES ('128', 'LU', 'LUXEMBOURG');
INSERT INTO `master_negara` VALUES ('129', 'MK', 'FORMER YUGOSLAV REPUBLIC OF MACEDONIA');
INSERT INTO `master_negara` VALUES ('130', 'YT', 'MAYOTTE');
INSERT INTO `master_negara` VALUES ('131', 'MG', 'MADAGASCAR');
INSERT INTO `master_negara` VALUES ('132', 'MW', 'MALAWI');
INSERT INTO `master_negara` VALUES ('133', 'MY', 'MALAYSIA');
INSERT INTO `master_negara` VALUES ('134', 'MV', 'MALDIVES');
INSERT INTO `master_negara` VALUES ('135', 'ML', 'MALI');
INSERT INTO `master_negara` VALUES ('136', 'MT', 'MALTA');
INSERT INTO `master_negara` VALUES ('137', 'IM', 'ISLE OF MAN');
INSERT INTO `master_negara` VALUES ('138', 'MH', 'MARSHALL ISLANDS');
INSERT INTO `master_negara` VALUES ('139', 'MQ', 'MARTINIQUE');
INSERT INTO `master_negara` VALUES ('140', 'MR', 'MAURITANIA');
INSERT INTO `master_negara` VALUES ('141', 'MU', 'MAURITIUS');
INSERT INTO `master_negara` VALUES ('142', 'MX', 'MEXICO');
INSERT INTO `master_negara` VALUES ('143', 'FM', 'FEDERATED STATES OF MICRONESIA');
INSERT INTO `master_negara` VALUES ('144', 'MD', 'MOLDOVA');
INSERT INTO `master_negara` VALUES ('145', 'MC', 'MONACO');
INSERT INTO `master_negara` VALUES ('146', 'MN', 'MONGOLIA');
INSERT INTO `master_negara` VALUES ('147', 'MS', 'MONTSERRAT');
INSERT INTO `master_negara` VALUES ('148', 'MA', 'MOROCCO');
INSERT INTO `master_negara` VALUES ('149', 'MZ', 'MOZAMBIQUE');
INSERT INTO `master_negara` VALUES ('150', 'NA', 'NAMIBIA');
INSERT INTO `master_negara` VALUES ('151', 'NR', 'NAURU');
INSERT INTO `master_negara` VALUES ('152', 'NP', 'NEPAL');
INSERT INTO `master_negara` VALUES ('153', 'NC', 'NEW CALEDONIA');
INSERT INTO `master_negara` VALUES ('154', 'NZ', 'NEW ZEALAND');
INSERT INTO `master_negara` VALUES ('155', 'NI', 'NICARAGUA');
INSERT INTO `master_negara` VALUES ('156', 'NG', 'NIGERIA');
INSERT INTO `master_negara` VALUES ('157', 'NE', 'NIGER');
INSERT INTO `master_negara` VALUES ('158', 'NU', 'NIUE');
INSERT INTO `master_negara` VALUES ('159', 'VU', 'VANUATU');
INSERT INTO `master_negara` VALUES ('160', 'AQ', 'ANTARCTICA');
INSERT INTO `master_negara` VALUES ('161', 'BV', 'BOUVET ISLAND');
INSERT INTO `master_negara` VALUES ('162', 'IO', 'BRITISH INDIAN OCEAN TERRITORY');
INSERT INTO `master_negara` VALUES ('163', 'TF', 'FRENCH SOUTHERN & ANTARCTIC');
INSERT INTO `master_negara` VALUES ('164', 'HM', 'HEARD ISLAND AND MCDONALD ISLA');
INSERT INTO `master_negara` VALUES ('165', 'VA', 'HOLY SEE (VATICAN CITY)');
INSERT INTO `master_negara` VALUES ('166', 'MP', 'NORTHERN MARIANA ISLANDS');
INSERT INTO `master_negara` VALUES ('167', 'GS', 'SOUTH GEORGIA & THE SOUTH SANDWICH ISLANDS');
INSERT INTO `master_negara` VALUES ('168', 'SJ', 'SVALBARD');
INSERT INTO `master_negara` VALUES ('169', 'TC', 'TURKS AND CAICOS ISLANDS');
INSERT INTO `master_negara` VALUES ('170', 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS');
INSERT INTO `master_negara` VALUES ('171', 'NF', 'NORFOLK ISLAND');
INSERT INTO `master_negara` VALUES ('172', 'KP', 'NORTH KOREA');
INSERT INTO `master_negara` VALUES ('173', 'NO', 'NORWAY');
INSERT INTO `master_negara` VALUES ('174', 'OM', 'OMAN');
INSERT INTO `master_negara` VALUES ('175', 'PK', 'PAKISTAN');
INSERT INTO `master_negara` VALUES ('176', 'PW', 'PALAU');
INSERT INTO `master_negara` VALUES ('177', 'PS', 'OCCUPIED PALESTINIAN TERRITORY');
INSERT INTO `master_negara` VALUES ('178', 'PA', 'PANAMA');
INSERT INTO `master_negara` VALUES ('179', 'PG', 'PAPUA NEW GUINEA');
INSERT INTO `master_negara` VALUES ('180', 'PY', 'PARAGUAY');
INSERT INTO `master_negara` VALUES ('181', 'PE', 'PERU');
INSERT INTO `master_negara` VALUES ('182', 'PN', 'PITCAIRN ISLANDS');
INSERT INTO `master_negara` VALUES ('183', 'PL', 'POLAND');
INSERT INTO `master_negara` VALUES ('184', 'PT', 'PORTUGAL');
INSERT INTO `master_negara` VALUES ('185', 'PR', 'PUERTO RICO');
INSERT INTO `master_negara` VALUES ('186', 'QA', 'QATAR');
INSERT INTO `master_negara` VALUES ('187', 'RE', 'RéUNION');
INSERT INTO `master_negara` VALUES ('188', 'RO', 'ROMANIA');
INSERT INTO `master_negara` VALUES ('189', 'RU', 'RUSSIAN FEDERATION');
INSERT INTO `master_negara` VALUES ('190', 'RW', 'RWANDA');
INSERT INTO `master_negara` VALUES ('191', 'EH', 'WESTERN SAHARA');
INSERT INTO `master_negara` VALUES ('192', 'SH', 'SAINT HELENA');
INSERT INTO `master_negara` VALUES ('193', 'LC', 'SAINT LUCIA');
INSERT INTO `master_negara` VALUES ('194', 'SV', 'EL SALVADOR');
INSERT INTO `master_negara` VALUES ('195', 'SM', 'SAN MARINO');
INSERT INTO `master_negara` VALUES ('196', 'WS', 'SAMOA');
INSERT INTO `master_negara` VALUES ('197', 'ST', 'SãO TOMé AND PRíNCIPE');
INSERT INTO `master_negara` VALUES ('198', 'SA', 'SAUDI ARABIA');
INSERT INTO `master_negara` VALUES ('199', 'SN', 'SENEGAL');
INSERT INTO `master_negara` VALUES ('200', 'CS', 'SERBIA AND MONTENEGRO');
INSERT INTO `master_negara` VALUES ('201', 'SC', 'SEYCHELLES');
INSERT INTO `master_negara` VALUES ('202', 'SL', 'SIERRA LEONE');
INSERT INTO `master_negara` VALUES ('203', 'SK', 'SLOVAKIA');
INSERT INTO `master_negara` VALUES ('204', 'SI', 'SLOVENIA');
INSERT INTO `master_negara` VALUES ('205', 'SB', 'SOLOMON ISLANDS');
INSERT INTO `master_negara` VALUES ('206', 'SO', 'SOMALIA');
INSERT INTO `master_negara` VALUES ('207', 'ZA', 'SOUTH AFRICA');
INSERT INTO `master_negara` VALUES ('208', 'KR', 'SOUTH KOREA');
INSERT INTO `master_negara` VALUES ('209', 'ES', 'SPAIN');
INSERT INTO `master_negara` VALUES ('210', 'LK', 'SRI LANKA');
INSERT INTO `master_negara` VALUES ('211', 'SD', 'SUDAN');
INSERT INTO `master_negara` VALUES ('212', 'SR', 'SURINAME');
INSERT INTO `master_negara` VALUES ('213', 'SZ', 'SWAZILAND');
INSERT INTO `master_negara` VALUES ('214', 'SE', 'SWEDEN');
INSERT INTO `master_negara` VALUES ('215', 'CH', 'SWITZERLAND');
INSERT INTO `master_negara` VALUES ('216', 'SY', 'SYRIA');
INSERT INTO `master_negara` VALUES ('217', 'TW', 'TAIWAN');
INSERT INTO `master_negara` VALUES ('218', 'TJ', 'TAJIKISTAN');
INSERT INTO `master_negara` VALUES ('219', 'TZ', 'TANZANIA');
INSERT INTO `master_negara` VALUES ('220', 'TH', 'THAILAND');
INSERT INTO `master_negara` VALUES ('221', 'TP', 'EAST TIMOR');
INSERT INTO `master_negara` VALUES ('222', 'TG', 'TOGO');
INSERT INTO `master_negara` VALUES ('223', 'TK', 'TOKELAU');
INSERT INTO `master_negara` VALUES ('224', 'TO', 'TONGA');
INSERT INTO `master_negara` VALUES ('225', 'TT', 'TRINIDAD AND TOBAGO');
INSERT INTO `master_negara` VALUES ('226', 'TN', 'TUNISIA');
INSERT INTO `master_negara` VALUES ('227', 'TR', 'TURKEY');
INSERT INTO `master_negara` VALUES ('228', 'TM', 'TURKMENISTAN');
INSERT INTO `master_negara` VALUES ('229', 'TV', 'TUVALU');
INSERT INTO `master_negara` VALUES ('230', 'UG', 'UGANDA');
INSERT INTO `master_negara` VALUES ('231', 'UA', 'UKRAINE');
INSERT INTO `master_negara` VALUES ('232', 'UY', 'URUGUAY');
INSERT INTO `master_negara` VALUES ('233', 'UZ', 'UZBEKISTAN');
INSERT INTO `master_negara` VALUES ('234', 'VE', 'VENEZUELA');
INSERT INTO `master_negara` VALUES ('235', 'VN', 'VIETNAM');
INSERT INTO `master_negara` VALUES ('236', 'VC', 'SAINT VINCENT AND THE GRENADIN');
INSERT INTO `master_negara` VALUES ('237', 'VI', 'VIRGIN ISLANDS');
INSERT INTO `master_negara` VALUES ('238', 'WF', 'WALLIS AND FUTUNA');
INSERT INTO `master_negara` VALUES ('239', 'YE', 'YEMEN');
INSERT INTO `master_negara` VALUES ('240', 'YU', 'YUGOSLAVIA');
INSERT INTO `master_negara` VALUES ('241', 'ZM', 'ZAMBIA');
INSERT INTO `master_negara` VALUES ('242', 'ZW', 'ZIMBABWE');
INSERT INTO `master_negara` VALUES ('243', 'SG', 'SINGAPORE');
