-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 02:04 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `u_first_name` varchar(100) NOT NULL,
  `u_last_name` varchar(100) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_phone` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'timestamp',
  `deleted` tinyint(1) DEFAULT '1' COMMENT '1 - Active , 2 - Inactive, 3 - Deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `u_first_name`, `u_last_name`, `u_email`, `u_phone`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Dhara', 'Patel', 'dhara@gmail.com', '7865676787', '2016-11-23 08:54:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_order_detail`
--

CREATE TABLE IF NOT EXISTS `user_order_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `urd_user_id` bigint(20) NOT NULL,
  `urd_totalno_of_order` int(20) NOT NULL,
  `urd_order_date` timestamp NOT NULL,
  `urd_status` tinyint(4) NOT NULL COMMENT '1=Ordered, 2=Cancelled',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'timestamp',
  `deleted` tinyint(1) DEFAULT '1' COMMENT '1 - Active , 2 - Inactive, 3 - Deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_order_detail`
--

INSERT INTO `user_order_detail` (`id`, `urd_user_id`, `urd_totalno_of_order`, `urd_order_date`, `urd_status`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 1, 10, '2016-11-23 08:56:23', 1, '2016-11-23 08:56:23', NULL, 1),
(2, 2, 5, '2016-11-23 09:49:57', 1, '2016-11-23 09:49:57', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
