-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2018 at 09:00 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvasu`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `id` int(10) UNSIGNED NOT NULL,
  `vid` varchar(45) NOT NULL,
  `header` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datapoints`
--

CREATE TABLE `datapoints` (
  `x` int(11) NOT NULL,
  `y` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapoints`
--

INSERT INTO `datapoints` (`x`, `y`) VALUES
(10, 71),
(20, 55),
(30, 65),
(40, 95),
(50, 68),
(60, 28),
(70, 34),
(80, 14),
(90, 33),
(100, 62),
(110, 70),
(120, 85),
(130, 42),
(140, 58),
(150, 50);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `age`) VALUES
(1, 'Mamun Sikder', 28),
(2, 'Iqbal Hossain', 22),
(3, 'Golam Martuza', 23),
(4, 'Selina Akhter', 29),
(5, 'Sanjida Sikder', 27);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Love.Fish', '580 Darling Street, Rozelle, NSW', -33.861034, 151.171936, 'restaurant'),
(2, 'Young Henrys', '76 Wilford Street, Newtown, NSW', -33.898113, 151.174469, 'bar'),
(3, 'Hunter Gatherer', 'Greenwood Plaza, 36 Blue St, North Sydney NSW', -33.840282, 151.207474, 'bar'),
(4, 'The Potting Shed', '7A, 2 Huntley Street, Alexandria, NSW', -33.910751, 151.194168, 'bar'),
(5, 'Nomad', '16 Foster Street, Surry Hills, NSW', -33.879917, 151.210449, 'bar'),
(6, 'Three Blue Ducks', '43 Macpherson Street, Bronte, NSW', -33.906357, 151.263763, 'restaurant'),
(7, 'Single Origin Roasters', '60-64 Reservoir Street, Surry Hills, NSW', -33.881123, 151.209656, 'restaurant'),
(8, 'Red Lantern', '60 Riley Street, Darlinghurst, NSW', -33.874737, 151.215530, 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `MyPictures`
--

CREATE TABLE `MyPictures` (
  `id` int(11) NOT NULL,
  `name` varchar(0) DEFAULT NULL,
  `photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Name` varchar(11) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(11) NOT NULL,
  `Address` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Name`, `Phone`, `Email`, `Address`) VALUES
('Mamun Sikde', '01738203209', 'ymamuns@yah', 'bsdwhedwe');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smoke`
--

CREATE TABLE `smoke` (
  `sensorID` varchar(12) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `data` varchar(12) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smoke`
--

INSERT INTO `smoke` (`sensorID`, `uname`, `data`, `regdate`) VALUES
('sensor01', 'gmamuns', '233', '2018-08-26 07:22:14'),
('sensor01', 'gmamuns', '400', '2018-09-05 06:36:21'),
('sensor01', 'gmamuns', '400', '2018-09-05 12:30:28'),
('sensor01', 'gmamuns', '444', '2018-09-05 12:48:45'),
('sensor01', 'gmamuns', '444', '2018-09-05 12:49:16'),
('sensor01', 'gmamuns', '400', '2018-09-05 12:50:19'),
('sensor02', 'gmamuns', '441', '2018-09-06 04:20:53'),
('sensor02', 'gmamuns', '412', '2018-09-06 04:21:06'),
('sensor02', 'gmamuns', '401', '2018-09-06 04:21:20'),
('sensor02', 'gmamuns', '441', '2018-09-06 04:21:34'),
('sensor02', 'gmamuns', '456', '2018-09-06 04:21:48'),
('sensor02', 'gmamuns', '465', '2018-09-06 04:22:02'),
('sensor02', 'gmamuns', '423', '2018-09-06 04:22:15'),
('sensor02', 'gmamuns', '523', '2018-09-06 04:26:03'),
('sensor02', 'gmamuns', '485', '2018-09-06 04:26:17'),
('sensor02', 'gmamuns', '406', '2018-09-06 04:26:31'),
('sensor02', 'gmamuns', '496', '2018-09-06 04:26:44'),
('sensor02', 'gmamuns', '432', '2018-09-06 04:26:58'),
('sensor02', 'gmamuns', '453', '2018-09-06 04:27:12'),
('sensor02', 'gmamuns', '573', '2018-09-06 04:27:26'),
('sensor02', 'gmamuns', '569', '2018-09-06 04:27:40'),
('sensor02', 'gmamuns', '445', '2018-09-06 04:27:54'),
('sensor02', 'gmamuns', '543', '2018-09-06 04:28:07'),
('sensor02', 'gmamuns', '497', '2018-09-06 04:28:21'),
('sensor02', 'gmamuns', '569', '2018-09-06 04:28:35'),
('sensor02', 'gmamuns', '411', '2018-09-06 04:28:49'),
('sensor02', 'gmamuns', '543', '2018-09-06 04:29:03'),
('sensor02', 'gmamuns', '534', '2018-09-06 04:29:16'),
('sensor02', 'gmamuns', '264', '2018-09-06 04:30:34'),
('sensor02', 'gmamuns', '380', '2018-09-06 04:30:48'),
('sensor02', 'gmamuns', '371', '2018-09-06 04:31:02'),
('sensor02', 'gmamuns', '368', '2018-09-06 04:31:16'),
('sensor02', 'gmamuns', '372', '2018-09-06 04:31:29'),
('sensor02', 'gmamuns', '394', '2018-09-06 04:31:43'),
('sensor02', 'gmamuns', '601', '2018-09-06 04:31:57'),
('sensor02', 'gmamuns', '552', '2018-09-06 04:32:11'),
('sensor02', 'gmamuns', '594', '2018-09-06 04:32:25'),
('sensor02', 'gmamuns', '597', '2018-09-06 04:32:38'),
('sensor02', 'gmamuns', '445', '2018-09-06 04:32:52'),
('sensor02', 'gmamuns', '581', '2018-09-06 04:33:06'),
('sensor02', 'gmamuns', '592', '2018-09-06 04:33:20'),
('sensor02', 'gmamuns', '424', '2018-09-06 04:33:34'),
('sensor02', 'gmamuns', '416', '2018-09-06 04:33:48'),
('sensor02', 'gmamuns', '439', '2018-09-06 04:34:01'),
('sensor02', 'gmamuns', '569', '2018-09-06 04:34:15'),
('sensor02', 'gmamuns', '542', '2018-09-06 04:34:29'),
('sensor02', 'gmamuns', '538', '2018-09-06 04:34:43'),
('sensor02', 'gmamuns', '519', '2018-09-06 04:34:57'),
('sensor02', 'gmamuns', '527', '2018-09-06 04:35:10'),
('sensor02', 'gmamuns', '475', '2018-09-06 04:35:24'),
('sensor02', 'gmamuns', '497', '2018-09-06 04:35:38'),
('sensor02', 'gmamuns', '457', '2018-09-06 04:35:52'),
('sensor02', 'gmamuns', '570', '2018-09-06 04:36:06'),
('sensor02', 'gmamuns', '444', '2018-09-06 04:36:19'),
('sensor02', 'gmamuns', '449', '2018-09-06 04:36:33'),
('sensor02', 'gmamuns', '418', '2018-09-06 04:36:47'),
('sensor02', 'gmamuns', '444', '2018-09-06 04:37:01'),
('sensor02', 'gmamuns', '367', '2018-09-06 04:37:15'),
('sensor02', 'gmamuns', '552', '2018-09-06 04:37:29'),
('sensor02', 'gmamuns', '398', '2018-09-06 04:37:42'),
('sensor02', 'gmamuns', '426', '2018-09-06 04:37:56'),
('sensor02', 'gmamuns', '484', '2018-09-06 04:38:10'),
('sensor02', 'gmamuns', '571', '2018-09-06 04:38:24'),
('sensor02', 'gmamuns', '546', '2018-09-06 04:38:38'),
('sensor02', 'gmamuns', '551', '2018-09-06 04:38:51'),
('sensor02', 'gmamuns', '399', '2018-09-06 04:39:05'),
('sensor02', 'gmamuns', '479', '2018-09-06 04:39:19'),
('sensor02', 'gmamuns', '402', '2018-09-06 04:39:33'),
('sensor02', 'gmamuns', '580', '2018-09-06 04:39:47'),
('sensor02', 'gmamuns', '412', '2018-09-06 04:40:00'),
('sensor02', 'gmamuns', '533', '2018-09-06 04:40:14'),
('sensor02', 'gmamuns', '544', '2018-09-06 04:40:28'),
('sensor02', 'gmamuns', '395', '2018-09-06 04:40:42'),
('sensor02', 'gmamuns', '530', '2018-09-06 04:40:56'),
('sensor02', 'gmamuns', '384', '2018-09-06 04:41:10'),
('sensor02', 'gmamuns', '434', '2018-09-06 04:41:23'),
('sensor02', 'gmamuns', '518', '2018-09-06 04:41:37'),
('sensor02', 'gmamuns', '557', '2018-09-06 04:41:51'),
('sensor02', 'gmamuns', '457', '2018-09-06 04:42:05'),
('sensor02', 'gmamuns', '469', '2018-09-06 04:42:19'),
('sensor02', 'gmamuns', '528', '2018-09-06 04:42:32'),
('sensor02', 'gmamuns', '417', '2018-09-06 04:42:46'),
('sensor02', 'gmamuns', '382', '2018-09-06 04:43:00'),
('sensor02', 'gmamuns', '376', '2018-09-06 04:43:14'),
('sensor02', 'gmamuns', '479', '2018-09-06 04:43:28'),
('sensor02', 'gmamuns', '366', '2018-09-06 04:43:41'),
('sensor02', 'gmamuns', '427', '2018-09-06 04:43:55'),
('sensor02', 'gmamuns', '458', '2018-09-06 04:44:09'),
('sensor02', 'gmamuns', '405', '2018-09-06 04:44:23'),
('sensor02', 'gmamuns', '417', '2018-09-06 04:44:37'),
('sensor02', 'gmamuns', '572', '2018-09-06 04:44:51'),
('sensor02', 'gmamuns', '433', '2018-09-06 04:45:04'),
('sensor02', 'gmamuns', '433', '2018-09-06 04:45:18'),
('sensor02', 'gmamuns', '493', '2018-09-06 04:45:32'),
('sensor02', 'gmamuns', '431', '2018-09-06 04:45:46'),
('sensor02', 'gmamuns', '491', '2018-09-06 04:46:00'),
('sensor02', 'gmamuns', '445', '2018-09-06 04:46:13'),
('sensor02', 'gmamuns', '569', '2018-09-06 04:46:27'),
('sensor02', 'gmamuns', '391', '2018-09-06 04:46:41'),
('sensor02', 'gmamuns', '531', '2018-09-06 04:46:55'),
('sensor02', 'gmamuns', '438', '2018-09-06 04:47:09'),
('sensor02', 'gmamuns', '552', '2018-09-06 04:47:22'),
('sensor02', 'gmamuns', '491', '2018-09-06 04:47:36'),
('sensor02', 'gmamuns', '427', '2018-09-06 04:47:50'),
('sensor02', 'gmamuns', '451', '2018-09-06 04:48:04'),
('sensor02', 'gmamuns', '338', '2018-09-06 04:48:18'),
('sensor02', 'gmamuns', '444', '2018-09-06 04:48:31'),
('sensor02', 'gmamuns', '533', '2018-09-06 04:48:45'),
('sensor02', 'gmamuns', '543', '2018-09-06 04:48:59'),
('sensor02', 'gmamuns', '403', '2018-09-06 04:49:13'),
('sensor02', 'gmamuns', '378', '2018-09-06 04:49:27'),
('sensor02', 'gmamuns', '405', '2018-09-06 04:49:41'),
('sensor02', 'gmamuns', '553', '2018-09-06 04:49:54'),
('sensor02', 'gmamuns', '544', '2018-09-06 04:50:08'),
('sensor02', 'gmamuns', '540', '2018-09-06 04:50:22'),
('sensor02', 'gmamuns', '477', '2018-09-06 04:50:36'),
('sensor02', 'gmamuns', '341', '2018-09-06 04:50:50'),
('sensor02', 'gmamuns', '338', '2018-09-06 04:51:03'),
('sensor02', 'gmamuns', '453', '2018-09-06 04:51:17'),
('sensor02', 'gmamuns', '518', '2018-09-06 04:51:31'),
('sensor02', 'gmamuns', '501', '2018-09-06 04:51:45'),
('sensor02', 'gmamuns', '389', '2018-09-06 04:51:59'),
('sensor02', 'gmamuns', '346', '2018-09-06 04:52:12'),
('sensor02', 'gmamuns', '382', '2018-09-06 04:52:26'),
('sensor02', 'gmamuns', '375', '2018-09-06 04:52:40'),
('sensor02', 'gmamuns', '424', '2018-09-06 04:52:54'),
('sensor02', 'gmamuns', '453', '2018-09-06 04:53:08'),
('sensor02', 'gmamuns', '530', '2018-09-06 04:53:22'),
('sensor02', 'gmamuns', '505', '2018-09-06 04:53:35'),
('sensor02', 'gmamuns', '412', '2018-09-06 04:53:49'),
('sensor02', 'gmamuns', '426', '2018-09-06 04:54:03'),
('sensor02', 'gmamuns', '516', '2018-09-06 04:54:17'),
('sensor02', 'gmamuns', '417', '2018-09-06 04:54:31'),
('sensor02', 'gmamuns', '404', '2018-09-06 04:54:44'),
('sensor02', 'gmamuns', '535', '2018-09-06 04:54:58'),
('sensor02', 'gmamuns', '407', '2018-09-06 04:55:12'),
('sensor02', 'gmamuns', '530', '2018-09-06 04:55:26'),
('sensor02', 'gmamuns', '492', '2018-09-06 04:55:40'),
('sensor02', 'gmamuns', '560', '2018-09-06 04:55:53'),
('sensor02', 'gmamuns', '486', '2018-09-06 04:56:07'),
('sensor02', 'gmamuns', '547', '2018-09-06 04:56:21'),
('sensor02', 'gmamuns', '361', '2018-09-06 04:56:35'),
('sensor02', 'gmamuns', '496', '2018-09-06 04:56:49'),
('sensor02', 'gmamuns', '377', '2018-09-06 04:57:03'),
('sensor02', 'gmamuns', '449', '2018-09-06 04:57:16'),
('sensor02', 'gmamuns', '428', '2018-09-06 04:57:30'),
('sensor02', 'gmamuns', '488', '2018-09-06 04:57:44'),
('sensor02', 'gmamuns', '401', '2018-09-06 04:57:58'),
('sensor02', 'gmamuns', '492', '2018-09-06 04:58:12'),
('sensor02', 'gmamuns', '430', '2018-09-06 04:58:25'),
('sensor02', 'gmamuns', '488', '2018-09-06 04:58:39'),
('sensor02', 'gmamuns', '446', '2018-09-06 04:58:53'),
('sensor02', 'gmamuns', '478', '2018-09-06 04:59:07'),
('sensor02', 'gmamuns', '360', '2018-09-06 04:59:21'),
('sensor02', 'gmamuns', '439', '2018-09-06 04:59:34'),
('sensor02', 'gmamuns', '373', '2018-09-06 04:59:48'),
('sensor02', 'gmamuns', '427', '2018-09-06 05:00:02'),
('sensor02', 'gmamuns', '384', '2018-09-06 05:00:16'),
('sensor02', 'gmamuns', '456', '2018-09-06 05:00:30'),
('sensor02', 'gmamuns', '493', '2018-09-06 05:00:44'),
('sensor02', 'gmamuns', '556', '2018-09-06 05:00:57'),
('sensor02', 'gmamuns', '400', '2018-09-06 05:01:11'),
('sensor02', 'gmamuns', '456', '2018-09-06 05:01:25'),
('sensor02', 'gmamuns', '422', '2018-09-06 05:01:39'),
('sensor02', 'gmamuns', '562', '2018-09-06 05:01:53'),
('sensor02', 'gmamuns', '571', '2018-09-06 05:02:06'),
('sensor02', 'gmamuns', '525', '2018-09-06 05:02:20'),
('sensor02', 'gmamuns', '455', '2018-09-06 05:02:34'),
('sensor02', 'gmamuns', '430', '2018-09-06 05:02:48'),
('sensor02', 'gmamuns', '564', '2018-09-06 05:03:02'),
('sensor02', 'gmamuns', '537', '2018-09-06 05:03:15'),
('sensor02', 'gmamuns', '460', '2018-09-06 05:03:29'),
('sensor02', 'gmamuns', '408', '2018-09-06 05:03:43'),
('sensor02', 'gmamuns', '447', '2018-09-06 05:03:57'),
('sensor02', 'gmamuns', '533', '2018-09-06 05:04:11'),
('sensor02', 'gmamuns', '512', '2018-09-06 05:04:25'),
('sensor02', 'gmamuns', '423', '2018-09-06 05:04:38'),
('sensor02', 'gmamuns', '401', '2018-09-06 05:04:52'),
('sensor02', 'gmamuns', '435', '2018-09-06 05:05:06'),
('sensor02', 'gmamuns', '549', '2018-09-06 05:05:20'),
('sensor02', 'gmamuns', '571', '2018-09-06 05:05:34'),
('sensor02', 'gmamuns', '484', '2018-09-06 05:05:47'),
('sensor02', 'gmamuns', '420', '2018-09-06 05:06:01'),
('sensor02', 'gmamuns', '434', '2018-09-06 05:06:15'),
('sensor02', 'gmamuns', '421', '2018-09-06 05:06:29'),
('sensor02', 'gmamuns', '424', '2018-09-06 05:06:43'),
('sensor02', 'gmamuns', '488', '2018-09-06 05:06:56'),
('sensor02', 'gmamuns', '586', '2018-09-06 05:07:10'),
('sensor02', 'gmamuns', '429', '2018-09-06 05:07:24'),
('sensor02', 'gmamuns', '451', '2018-09-06 05:07:38'),
('sensor02', 'gmamuns', '556', '2018-09-06 05:07:52'),
('sensor02', 'gmamuns', '610', '2018-09-06 05:08:06'),
('sensor02', 'gmamuns', '590', '2018-09-06 05:08:19'),
('sensor02', 'gmamuns', '511', '2018-09-06 05:08:33'),
('sensor02', 'gmamuns', '427', '2018-09-06 05:08:47'),
('sensor02', 'gmamuns', '470', '2018-09-06 05:09:01'),
('sensor02', 'gmamuns', '555', '2018-09-06 05:09:15'),
('sensor02', 'gmamuns', '453', '2018-09-06 05:09:28'),
('sensor02', 'gmamuns', '428', '2018-09-06 05:09:42'),
('sensor02', 'gmamuns', '406', '2018-09-06 05:09:56'),
('sensor02', 'gmamuns', '495', '2018-09-06 05:10:10'),
('sensor02', 'gmamuns', '580', '2018-09-06 05:10:24'),
('sensor04', 'gmamuns', '333', '2018-09-06 07:11:27'),
('sensor01', 'gmamuns', '444', '2018-09-07 06:30:18'),
('sensor01', 'gmamuns', '444', '2018-09-07 06:32:11'),
('sensor01', 'gmamuns', '444', '2018-09-07 06:34:36'),
('sensor01', 'gmamuns', '444', '2018-09-07 06:37:42'),
('sensor04', 'ymamuns', '333', '2018-09-08 08:27:28'),
('sensor04', 'ymamuns', '222', '2018-09-08 08:27:35'),
('sensor04', 'ymamuns', '444', '2018-09-08 08:27:40'),
('sensor01', 'ymamuns', '707', '2018-09-09 06:51:03'),
('sensor01', 'ymamuns', '355', '2018-09-09 06:51:17'),
('sensor01', 'ymamuns', '342', '2018-09-09 06:51:30'),
('sensor01', 'ymamuns', '343', '2018-09-09 06:51:44'),
('sensor01', 'ymamuns', '487', '2018-09-09 06:51:58'),
('sensor01', 'ymamuns', '624', '2018-09-09 06:52:12'),
('sensor01', 'ymamuns', '338', '2018-09-09 06:52:26'),
('sensor01', 'ymamuns', '468', '2018-09-09 06:58:32'),
('sensor01', 'ymamuns', '467', '2018-09-09 06:58:55'),
('sensor01', 'ymamuns', '472', '2018-09-09 06:59:22'),
('sensor01', 'ymamuns', '510', '2018-09-09 06:59:36'),
('sensor01', 'ymamuns', '470', '2018-09-09 06:59:49'),
('sensor01', 'ymamuns', '629', '2018-09-09 07:00:03'),
('sensor01', 'gmamuns', '666', '2018-09-23 14:39:00'),
('sensor01', 'gmamuns', '675', '2018-09-23 14:43:58'),
('sensor01', 'gmamuns', '675', '2018-09-23 14:50:35'),
('sensor01', 'gmamuns', '856', '2018-09-23 15:22:25'),
('sensor01', 'gmamuns', '777', '2018-09-23 15:35:12'),
('sensor01', 'gmamuns', '777', '2018-09-23 15:35:38'),
('sensor01', 'gmamuns', '555', '2018-09-23 17:54:31'),
('sensor01', 'gmamuns', '555', '2018-09-23 17:55:11'),
('sensor01', 'gmamuns', '766', '2018-09-23 18:09:50'),
('sensor01', 'gmamuns', '445', '2018-09-23 18:25:02'),
('sensor01', 'gmamuns', '567', '2018-09-24 04:49:31'),
('sensor01', 'gmamuns', '777', '2018-09-24 04:54:59'),
('Sim808', 'ymamuns', '444', '2018-09-24 04:58:09'),
('sensor01', 'gmamuns', '555', '2018-09-26 13:29:40'),
('sensor01', 'gmamuns', '233', '2018-10-16 05:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `course` varchar(25) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `firstName`, `lastName`, `course`, `year`) VALUES
(1, 'mamun', 'sikder', 'CSE 103', 2018),
(2, 'abul', 'hossain', 'cse 104', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `student_email` varchar(50) DEFAULT NULL,
  `student_password` varchar(20) DEFAULT NULL,
  `student_gender` varchar(1) DEFAULT NULL,
  `student_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`student_id`, `student_name`, `student_email`, `student_password`, `student_gender`, `student_address`) VALUES
(1, 'John', 'john@jcg.com', 'access@123', 'M', 'America'),
(2, 'Monica', 'monica@jcg.com', 'access@123', 'F', 'Iceland'),
(3, 'Raymond', 'raymond@jcg.com', 'access@123', 'M', 'Greece'),
(4, 'Jane', 'jane@jcg.com', 'access@123', 'F', 'Norway'),
(5, 'Rachel', 'rachel@jcg.com', 'access@123', 'F', 'France'),
(6, 'mamun', 'mamun@mamun.com', '1234', 'M', 'Chitttagong'),
(7, 'ana', 'john@jcg.com', 'access@123', 'M', 'America'),
(8, 'mona', 'monica@jcg.com', 'access@123', 'F', 'Iceland'),
(9, 'sona', 'raymond@jcg.com', 'access@123', 'M', 'Greece'),
(10, 'oboni', 'jane@jcg.com', 'access@123', 'F', 'Norway'),
(11, 'jamil', 'rachel@jcg.com', 'access@123', 'F', 'France'),
(12, 'ana', 'john@jcg.com', 'access@123', 'M', 'America'),
(13, 'mona', 'monica@jcg.com', 'access@123', 'F', 'Iceland'),
(14, 'sona', 'raymond@jcg.com', 'access@123', 'M', 'Greece'),
(15, 'oboni', 'jane@jcg.com', 'access@123', 'F', 'Norway'),
(16, 'jamil', 'rachel@jcg.com', 'access@123', 'F', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `geolocation` longtext NOT NULL,
  `apikey` varchar(50) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `treshholdValue` int(11) NOT NULL DEFAULT '400'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `uname`, `pass`, `geolocation`, `apikey`, `regdate`, `status`, `treshholdValue`) VALUES
(1, 'Mamun', 'sikder', 'gmamuns@gmail.com', 'gmamuns', '123', 'gurywgery', '', '2018-10-16 06:49:26', 0, 700),
(2, 'Borhan', 'Uddin sikder', 'ymamuns@yahoo.com', 'ymamuns', '123', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14761.97443566585!2d91.8159625550171!3d22.334983401224118!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acdf4cd50e5177%3A0x6313463e9e2aa0!2sChittagong+Port+Cargo+Station!5e0!3m2!1sen!2sbd!4v1534492806621', '', '2018-09-09 06:58:32', 1, 400),
(3, 'test', 'yesy', 'test@test.com', 'test1', '123', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363', '57ad928b-014f-46a8-ac73-ac3b706de0c5', '2018-08-17 09:13:36', 1, 400),
(4, 'test2', 'yesy23', 'test@test.com', 'test1', '234', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363', '57ad928b-014f-46a8-ac73-ac3b706de0c6', '2018-08-16 18:16:01', 0, 400),
(5, 'egrgirutg', 'wdjf', 'iwej4ur4@ijhfru.com', 'jfrut5', '123', 'jerhi5ut6', 'ad1015be-7f1b-4773-bcac-8d1bb7b4314b', '2018-09-19 08:20:33', 0, 400);

-- --------------------------------------------------------

--
-- Table structure for table `users_new`
--

CREATE TABLE `users_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `geolocation` longtext NOT NULL,
  `apikey` varchar(50) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtrack`
--

CREATE TABLE `vtrack` (
  `id` int(10) UNSIGNED NOT NULL,
  `vid` varchar(12) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `lcode` varchar(12) NOT NULL,
  `lat` varchar(12) NOT NULL,
  `lon` varchar(12) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtrack`
--

INSERT INTO `vtrack` (`id`, `vid`, `uname`, `lcode`, `lat`, `lon`, `regdate`) VALUES
(1, 'Ctg-4215', 'zia', '1234', '75.75', '66.66', '2018-09-19 02:24:26'),
(2, 'Ctg-4215', 'zia', '1234', '22.3586772', '91.8055872', '2018-09-24 05:42:26'),
(3, 'Dha-1234', 'zia', '3456', '34.456', '43.456', '2018-09-21 19:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `SID` varchar(12) NOT NULL,
  `DATA` varchar(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`SID`, `DATA`, `date`) VALUES
('sensor01', '123', '2018-08-12 15:36:24'),
('sensor 2', '456', '2018-08-12 15:36:24'),
('sensor 3', '789', '2018-08-12 15:36:24'),
('sensor 04', '988', '2018-08-12 15:36:24'),
('sensor 5', '567', '2018-08-12 15:36:24'),
('sensor 06', '345', '2018-08-12 15:36:24'),
('sensor 07', '789', '2018-08-12 15:36:24'),
('gmamuns', '1234', '2018-08-30 07:11:13'),
('nasim', '5432', '2018-08-30 09:11:18'),
('123', '1234', '2018-08-30 09:24:43'),
('123', '1234', '2018-08-30 09:25:23'),
('test', '000', '2018-08-30 10:42:42'),
('test', '000', '2018-08-30 10:44:48'),
('test', '000', '2018-08-30 10:46:54'),
('test', '000', '2018-08-30 11:33:12'),
('androidtest', '123', '2018-08-31 09:22:40'),
('gprs', '123', '2018-09-01 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `weatherNew`
--

CREATE TABLE `weatherNew` (
  `sensorID` varchar(12) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `humidity` varchar(12) NOT NULL,
  `tempCelsius` varchar(12) NOT NULL,
  `tempFahrenheit` varchar(12) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weatherNew`
--

INSERT INTO `weatherNew` (`sensorID`, `uname`, `humidity`, `tempCelsius`, `tempFahrenheit`, `regdate`) VALUES
('Dha-1212', 'ymamuns', '735', '623', '23', '2018-09-10 06:46:50'),
('Ctg-4215', 'ymamuns', '735', '623', '23', '2018-09-11 06:46:50'),
('Ctg-4215', 'gmamuns', '79.00', '30.00', '86.00', '2018-09-11 06:46:50'),
('Ctg-4215', 'gmamuns', '80.00', '29.00', '84.20', '2018-09-11 06:46:50'),
('Dha-1313', 'gmamuns', '95.00', '28.00', '82.40', '2018-09-11 12:20:28'),
('Dha-1313', 'gmamuns', '95.00', '28.00', '82.40', '2018-09-11 12:22:34'),
('Dha-1313', 'gmamuns', '95.00', '28.00', '82.40', '2018-09-11 12:24:40'),
('Dha-1313', 'gmamuns', '95.00', '28.00', '82.40', '2018-09-11 12:26:47'),
('Dha-1313', 'gmamuns', '95.00', '28.00', '82.40', '2018-09-11 12:28:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MyPictures`
--
ALTER TABLE `MyPictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtrack`
--
ALTER TABLE `vtrack`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vtrack`
--
ALTER TABLE `vtrack`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
