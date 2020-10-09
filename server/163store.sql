/*
Navicat MySQL Data Transfer

Source Server         : zkh
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : 163store

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-10-09 19:20:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bigimage` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('1', '【券后59元】i9S蓝牙5.0真无线 双耳高清通话 苹果安卓通用', '89.00', 'p1.jpg', 'big1.png', '【赠送硅胶保护套+登山扣】蓝牙5.0 佩戴舒适 自带充电仓便携 双耳高清通话', '白色');
INSERT INTO `details` VALUES ('2', '音乐记忆回音系列黑白江湖圆领卫衣', '109.00', 'p2.jpg', 'big2.png', '', '白色');
INSERT INTO `details` VALUES ('3', '音乐音乐江湖温显保温杯350ml', '49.00', 'p3.jpg', 'big3.png', '智能温度显示黑科技 双层真空结构 长效保温保冷 优选304不锈钢', '红色');
INSERT INTO `details` VALUES ('4', '【直降140元】H16 Pro 入耳检测开盖弹窗无线充电 蓝牙5.0真无线耳机 苹果安卓通用', '299.00', 'p4.jpg', 'big4.png', '入耳检测；无线充电；智能触控；开盖弹窗配对；3-4小时续航；双耳高清通话', '白色');
INSERT INTO `details` VALUES ('5', '【券后59元】i9S蓝牙5.0真无线 双耳高清通话 苹果安卓通用', '89.00', 'p1.jpg', 'big1.png', '【赠送硅胶保护套+登山扣】蓝牙5.0 佩戴舒适 自带充电仓便携 双耳高清通话', '白色');
INSERT INTO `details` VALUES ('6', '音乐记忆回音系列黑白江湖圆领卫衣', '109.00', 'p2.jpg', 'big2.png', '', '白色');
INSERT INTO `details` VALUES ('7', '音乐音乐江湖温显保温杯350ml', '49.00', 'p3.jpg', 'big3.png', '智能温度显示黑科技 双层真空结构 长效保温保冷 优选304不锈钢', '红色');
INSERT INTO `details` VALUES ('8', '【直降140元】H16 Pro 入耳检测开盖弹窗无线充电 蓝牙5.0真无线耳机 苹果安卓通用', '299.00', 'p4.jpg', 'big4.png', '入耳检测；无线充电；智能触控；开盖弹窗配对；3-4小时续航；双耳高清通话', '白色');
