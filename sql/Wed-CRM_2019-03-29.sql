# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: Wed-CRM
# Generation Time: 2019-03-29 10:03:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table clue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue`;

CREATE TABLE `clue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `number` int(11) DEFAULT NULL COMMENT '用户手机号码',
  `user_id` int(11) DEFAULT NULL COMMENT '跟踪销售id',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` text COMMENT '状态[1:没有意向,2:意向一般,3:意向强烈,4:完成销售,5:取消销售]',
  `remark` text COMMENT '备注',
  `utm` varchar(11) DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `clue` WRITE;
/*!40000 ALTER TABLE `clue` DISABLE KEYS */;

INSERT INTO `clue` (`id`, `name`, `number`, `user_id`, `created_time`, `status`, `remark`, `utm`)
VALUES
	(10,'随喜',12345678,5,'2019-03-29 09:54:22','5','感觉还行','随意'),
	(11,'124351',12312545,NULL,'2019-03-27 21:20:43',NULL,NULL,'随意');

/*!40000 ALTER TABLE `clue` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clue_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue_log`;

CREATE TABLE `clue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户id',
  `content` text COMMENT '记录',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `clue_log` WRITE;
/*!40000 ALTER TABLE `clue_log` DISABLE KEYS */;

INSERT INTO `clue_log` (`id`, `client_id`, `content`, `created_time`)
VALUES
	(1,10,'第一次添加','2019-03-29 10:07:40'),
	(2,10,'asdasdsada','2019-03-29 10:13:34'),
	(3,10,'sdada','2019-03-29 10:13:35'),
	(4,10,'asdsad','2019-03-29 10:13:37'),
	(5,11,'a','2019-03-29 16:59:05'),
	(6,11,'s','2019-03-29 16:59:07'),
	(7,11,'d','2019-03-29 16:59:08'),
	(8,11,'f','2019-03-29 16:59:10'),
	(9,11,'g','2019-03-29 16:59:11'),
	(10,11,'h','2019-03-29 16:59:12'),
	(11,11,'j','2019-03-29 16:59:12'),
	(12,11,'k','2019-03-29 16:59:13');

/*!40000 ALTER TABLE `clue_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `code` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` int(255) DEFAULT NULL COMMENT '手机号码',
  `role` int(11) DEFAULT NULL COMMENT '1为管理 2为销售',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `code`, `phone`, `role`, `created_time`)
VALUES
	(1,'陈某某','123456',12345678,1,'2019-03-28 17:40:59'),
	(2,'黄某某','23456',12345674,1,'2019-03-27 09:06:32'),
	(3,'吴某某','124235',12415235,2,'2019-03-27 09:06:52'),
	(4,'谢某某','124351',12312545,2,'2019-03-27 09:07:11'),
	(5,'曾某某','123456',12344321,2,'2019-03-28 22:13:01'),
	(6,'房某某','123456',18674,2,'2019-03-28 22:14:32'),
	(7,'曲某某','123',1333223221,2,'2019-03-29 16:55:40');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
