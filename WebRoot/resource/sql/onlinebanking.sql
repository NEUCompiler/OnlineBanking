/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : onlinebanking

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-07-23 22:13:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `AccountId` int(20) NOT NULL,
  `DealPassord` varchar(10) NOT NULL,
  `Amount` int(20) NOT NULL,
  `Term` int(2) NOT NULL,
  PRIMARY KEY (`AccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for `accountdeal`
-- ----------------------------
DROP TABLE IF EXISTS `accountdeal`;
CREATE TABLE `accountdeal` (
  `DealId` int(20) NOT NULL,
  `DealTime` date NOT NULL,
  `DealType` int(1) NOT NULL,
  `DealDesti` int(20) NOT NULL,
  `DealState` int(1) NOT NULL,
  `AccountId` int(20) NOT NULL,
  PRIMARY KEY (`AccountId`,`DealId`),
  CONSTRAINT `accountdeal_ibfk_1` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountdeal
-- ----------------------------

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `ClientId` int(20) NOT NULL AUTO_INCREMENT,
  `IdentityId` varchar(18) NOT NULL,
  `TrueName` varchar(10) NOT NULL,
  `Sex` char(3) NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Mail` varchar(20) NOT NULL,
  `AccountType` varchar(6) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `UserPassword` varchar(10) NOT NULL,
  PRIMARY KEY (`ClientId`),
  UNIQUE KEY `IdentityId` (`IdentityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', '0', 'xiaohejun', 'man', '22222222', '1015206533@qq.com', '1', '20131925', '20131925');

-- ----------------------------
-- Table structure for `clientaccount`
-- ----------------------------
DROP TABLE IF EXISTS `clientaccount`;
CREATE TABLE `clientaccount` (
  `ClientId` int(20) NOT NULL,
  `AccountId` int(20) NOT NULL,
  PRIMARY KEY (`ClientId`,`AccountId`),
  KEY `AccountId` (`AccountId`),
  CONSTRAINT `clientaccount_ibfk_1` FOREIGN KEY (`ClientId`) REFERENCES `client` (`ClientId`),
  CONSTRAINT `clientaccount_ibfk_2` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `clientsubmitinfo`
-- ----------------------------
DROP TABLE IF EXISTS `clientsubmitinfo`;
CREATE TABLE `clientsubmitinfo` (
  `infoId` int(11) NOT NULL AUTO_INCREMENT,
  `infoType` int(11) NOT NULL,
  `infoContent` varchar(256) DEFAULT NULL,
  `clientId` int(11) NOT NULL,
  PRIMARY KEY (`infoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientsubmitinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `creditcard`
-- ----------------------------
DROP TABLE IF EXISTS `creditcard`;
CREATE TABLE `creditcard` (
  `cid` int(20) NOT NULL DEFAULT '0',
  `spassword` varchar(16) DEFAULT NULL,
  `cpassword` int(6) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL,
  `integrate` int(10) DEFAULT NULL,
  `isloss` tinyint(1) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creditcard
-- ----------------------------
INSERT INTO `creditcard` VALUES ('123', '456', null, null, null, null, null);
INSERT INTO `creditcard` VALUES ('234', '456', null, null, null, null, null);
INSERT INTO `creditcard` VALUES ('123456', '123456', '789789', '5000', '500', '0', '1');

-- ----------------------------
-- Table structure for `websiteinfo`
-- ----------------------------
DROP TABLE IF EXISTS `websiteinfo`;
CREATE TABLE `websiteinfo` (
  `websiteId` int(11) NOT NULL AUTO_INCREMENT,
  `buildTime` date NOT NULL,
  `websiteAddr` varchar(64) NOT NULL,
  `websiteName` varchar(64) NOT NULL,
  PRIMARY KEY (`websiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of websiteinfo
-- ----------------------------
