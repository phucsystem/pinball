-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2017 at 04:47 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pinball_user01`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_balls`
--

CREATE TABLE IF NOT EXISTS `user_balls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_masters_id` int(11) NOT NULL,
  `masters_id` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_masters_id` (`user_masters_id`),
  UNIQUE KEY `masters_id` (`masters_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_stage_progresses`
--

CREATE TABLE IF NOT EXISTS `user_stage_progresses` (
  `id` int(11) NOT NULL,
  `user_masters_id` int(11) NOT NULL COMMENT 'ID của user',
  `stage_masters_id` int(11) NOT NULL COMMENT 'ID của stage',
  `stage_information_ssv` int(11) DEFAULT NULL COMMENT 'điểm, thời gian chơi, thời gian kết thúc;',
  `clear_flag` int(11) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_statuses`
--

CREATE TABLE IF NOT EXISTS `user_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_masters_id` int(11) NOT NULL COMMENT 'ユーザマスタID',
  `name` varchar(128) NOT NULL COMMENT '名前',
  `exp` int(11) NOT NULL COMMENT '取得経験値',
  `money` int(11) NOT NULL COMMENT 'ゲーム内マネー',
  `introduction_comment` varchar(256) NOT NULL COMMENT '自己紹介文',
  `last_action_datetime` datetime NOT NULL COMMENT '最後に動きのあった日時 ',
  `modified` datetime NOT NULL COMMENT '更新日時',
  `created` datetime NOT NULL COMMENT '作成日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
