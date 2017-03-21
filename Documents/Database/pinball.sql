-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2017 at 04:26 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pinball`
--

-- --------------------------------------------------------

--
-- Table structure for table `ball_masters`
--

CREATE TABLE IF NOT EXISTS `ball_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` int(11) NOT NULL,
  `attack` int(11) NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gimmit_masters`
--

CREATE TABLE IF NOT EXISTS `gimmit_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gimmit_type_masters_id` int(11) NOT NULL,
  `size` int(11) NOT NULL DEFAULT '1',
  `scope` int(11) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gimmit_type_masters`
--

CREATE TABLE IF NOT EXISTS `gimmit_type_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` int(11) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stage_gimmit_group_masters`
--

CREATE TABLE IF NOT EXISTS `stage_gimmit_group_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `gimmit_masters_id` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stage_masters`
--

CREATE TABLE IF NOT EXISTS `stage_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `stage_gimmit_group_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text,
  `level` int(11) NOT NULL,
  `scope` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gimmit_group_masters_id` (`stage_gimmit_group_id`),
  UNIQUE KEY `stage_gimmit_group_id` (`stage_gimmit_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_masters`
--

CREATE TABLE IF NOT EXISTS `user_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uuid` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'UUID',
  `platform_type` tinyint(1) NOT NULL COMMENT 'Thiết bị | プラットフォームタイプ（1:iPhone 2:android）',
  `platform_identifier` varchar(128) DEFAULT NULL COMMENT 'Định dạng thiết bị | プラットフォーム識別番号',
  `group_type` tinyint(3) NOT NULL,
  `lock_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Xóa | 1:ロック中',
  `tracking_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Theo dõi người dùng | ユーザをトラッキングして専用ログを残すか ',
  `ban_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Khóa tài khoản 1:アカウント制限中',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT 'del_flag',
  `reset_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'リセットフラグ（リセマラフラグ）',
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
