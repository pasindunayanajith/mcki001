-- Adminer 4.7.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1,	'admin1@gmail.com',	'admin1'),
(2,	'mckpasindu',	'mckpasindu');

DROP TABLE IF EXISTS `athisupplyernote`;
CREATE TABLE `athisupplyernote` (
  `asnoteid` int(11) NOT NULL AUTO_INCREMENT,
  `sdate` date NOT NULL,
  `anumber` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `inumber` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `itemname` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `itemnum` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nic` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `snumber` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `lnumber` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cat1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cat2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `des` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `exdate` date NOT NULL,
  `vote` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `bsheet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `reorder` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `regentime` datetime NOT NULL,
  `editadmin` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Auther` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`asnoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `bsheet`;
CREATE TABLE `bsheet` (
  `bsid` int(11) NOT NULL AUTO_INCREMENT,
  `bsnumber` varchar(150) NOT NULL,
  `bsname` varchar(200) NOT NULL,
  `dep` varchar(200) NOT NULL,
  PRIMARY KEY (`bsid`),
  UNIQUE KEY `bsnumber` (`bsnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `catedetails`;
CREATE TABLE `catedetails` (
  `cdid` int(11) NOT NULL AUTO_INCREMENT,
  `maincat` varchar(150) NOT NULL,
  `maincatcode` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`cdid`),
  UNIQUE KEY `maincatcode` (`maincatcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) NOT NULL,
  `dphone` varchar(200) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(250) NOT NULL,
  `ephone` varchar(250) NOT NULL,
  `enic` varchar(150) NOT NULL,
  `dep` varchar(250) NOT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `enic` (`enic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `issueitem`;
CREATE TABLE `issueitem` (
  `issueitemid` int(11) NOT NULL AUTO_INCREMENT,
  `ndate` date NOT NULL,
  `ynum` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `iname` varchar(200) NOT NULL,
  `inum` varchar(300) NOT NULL,
  `itname` varchar(300) NOT NULL,
  `iquen` varchar(150) NOT NULL,
  `nquen` varchar(150) NOT NULL,
  `nname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `nenum` varchar(150) NOT NULL,
  `lenum` varchar(150) NOT NULL,
  `des` varchar(400) NOT NULL,
  `rgentime` datetime NOT NULL,
  `editadmin` varchar(150) DEFAULT NULL,
  `Auther` varchar(150) NOT NULL,
  PRIMARY KEY (`issueitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(150) NOT NULL,
  `cat1` varchar(150) NOT NULL,
  `cat2` varchar(150) NOT NULL,
  `inum` varchar(150) NOT NULL,
  `iname` varchar(150) NOT NULL,
  `iqun` int(11) NOT NULL,
  `des` text NOT NULL,
  `reorder` varchar(500) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `s1catdetails`;
CREATE TABLE `s1catdetails` (
  `sc1` int(11) NOT NULL AUTO_INCREMENT,
  `maincat` varchar(200) NOT NULL,
  `scat1` varchar(200) NOT NULL,
  `scat1code` varchar(200) NOT NULL,
  PRIMARY KEY (`sc1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `s2catdetails`;
CREATE TABLE `s2catdetails` (
  `s2id` int(11) NOT NULL AUTO_INCREMENT,
  `maincat` varchar(200) NOT NULL,
  `subcat1` varchar(200) NOT NULL,
  `subcat2` varchar(200) NOT NULL,
  `s2catcode` varchar(200) NOT NULL,
  PRIMARY KEY (`s2id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `supplyer`;
CREATE TABLE `supplyer` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `ldate` date NOT NULL,
  `name` varchar(150) NOT NULL,
  `snumber` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `nic` varchar(150) NOT NULL,
  `cat` varchar(150) NOT NULL,
  `Auther` varchar(255) NOT NULL,
  `editadmin` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `nic` (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `supplyernote`;
CREATE TABLE `supplyernote` (
  `snoteid` int(11) NOT NULL AUTO_INCREMENT,
  `sdate` date NOT NULL,
  `anumber` varchar(150) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `itemnum` varchar(150) NOT NULL,
  `snumber` varchar(150) NOT NULL,
  `lnumber` varchar(150) NOT NULL,
  `cat` varchar(150) NOT NULL,
  `cat1` varchar(500) NOT NULL,
  `cat2` varchar(500) NOT NULL,
  `sname` varchar(150) NOT NULL,
  `nic` varchar(150) NOT NULL,
  `des` varchar(150) NOT NULL,
  `exdate` date NOT NULL,
  `vote` varchar(300) NOT NULL,
  `bsheet` varchar(300) NOT NULL,
  `reorder` varchar(500) NOT NULL,
  `rgentime` datetime NOT NULL,
  `Auther` varchar(255) NOT NULL,
  `editadmin` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`snoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vnum` varchar(150) NOT NULL,
  `vname` varchar(200) NOT NULL,
  `vdep` varchar(200) NOT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vnum` (`vnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-09-09 09:30:29
