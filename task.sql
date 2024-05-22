-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2024 at 03:19 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
CREATE TABLE IF NOT EXISTS `incident` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `identify` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `incident_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reporter_name` varchar(200) NOT NULL,
  `incident_details` text NOT NULL,
  `incident_date` date NOT NULL,
  `incident_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `incident_priority` varchar(10) NOT NULL,
  `incident_status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`id`, `user_id`, `identify`, `title`, `incident_id`, `reporter_name`, `incident_details`, `incident_date`, `incident_time`, `incident_priority`, `incident_status`, `created_at`) VALUES
(1, 1, 'Government', 'test ince', 'RMG152522024', 'manish', 'sdsadsdas', '2021-03-24', '12:32:02 PM', 'Low', 'Open', '2024-05-20 07:12:11'),
(2, 1, 'Government', 'test ince', 'RMG592212024', 'manish', 'sdsadsdas', '2021-03-24', '12:32:02 PM', 'High', 'progress', '2024-05-20 07:33:30'),
(3, 1, 'Government', 'test ince', 'RMG160882024', 'manish', 'sdsadsdas', '2021-03-24', '12:32:02 PM', 'High', 'progress', '2024-05-20 08:10:51'),
(4, 1, 'Government', 'test ince', 'RMG887722024', 'manish', 'sdsadsdas', '2021-03-24', '12:32:02 PM', 'High', 'progress', '2024-05-22 03:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
CREATE TABLE IF NOT EXISTS `keys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'task', 0, 0, 0, NULL, '2018-10-11 13:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  `address` text NOT NULL,
  `pincode` int NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(80) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `password_reset_token`, `token_created_at`, `email`, `phone`, `address`, `pincode`, `city`, `country`, `token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'manish', '59c95189ac895fcc1c6e1c38d067e244', 'f84a844f933d8a52d5468b9fb905b286', '2024-05-18 16:53:49', 'manishkasimpur@gmail.com', 2147483647, 'Rambagh Colony Ramghat Road Aligarh', 202001, 'Aligarh', 'India', '0bff8a8faf865d8c64dd0db2d307d551', '2024-05-18 07:07:34', '2024-05-22 08:46:50'),
(2, '', '', 'manish4378', '59c95189ac895fcc1c6e1c38d067e244', NULL, NULL, 'manishkasimpur4@gmail.com', 2147483647, 'Rambagh Colony Ramghat Road Aligarh', 202001, 'Aligarh', 'India', '', '2024-05-20 05:29:59', '2024-05-20 05:29:59'),
(3, 'Manish', 'Sharma', 'manish437', '640348fd3235e2a7b786830b5405e3c3', NULL, NULL, 'manishkasimpur24@gmail.com', 2147483647, 'Rambagh Colony Ramghat Road Aligarh', 202001, 'Aligarh', 'India', '', '2024-05-20 12:37:56', '2024-05-20 12:37:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
