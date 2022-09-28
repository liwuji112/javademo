/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : day17

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2022-09-28 15:56:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `avatar` varchar(256) NOT NULL DEFAULT '' COMMENT '头像',
  `user_name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(16) NOT NULL DEFAULT '' COMMENT '用户密码',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '邮箱',
  `create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '最后登陆时间',
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除(0-否1-是)',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否禁用状态标识符(0-否1-是)',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`),
  KEY `u_idx_user_name` (`user_name`),
  KEY `u_idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
