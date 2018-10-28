Api URL :: http://localhost:8080/Smoke/smoke/insert.jsp?sid=sensor01&uname=gmamuns&data=233

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2018 at 08:24 AM
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
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `uname`, `pass`, `geolocation`, `apikey`, `regdate`, `status`) VALUES
(1, 'Mamun', 'Sikder', 'gmamuns@gmail.com', 'gmamuns', '123', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd882a59437c7%3A0xf99d92fdc17dd741!2sChittagong+Medical+College+Hospital!5e0!3m2!1sen!2sbd!4v1534492610355', '', '2018-08-17 08:05:23', 1),
(2, 'Borhan', 'Uddin', 'ymamuns@yahoo.com', 'ymamuns', '123', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14761.97443566585!2d91.8159625550171!3d22.334983401224118!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acdf4cd50e5177%3A0x6313463e9e2aa0!2sChittagong+Port+Cargo+Station!5e0!3m2!1sen!2sbd!4v1534492806621', '', '2018-08-17 08:00:45', 0),
(3, 'test', 'yesy', 'test@test.com', 'test1', '123', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363', '57ad928b-014f-46a8-ac73-ac3b706de0c5', '2018-08-17 09:13:36', 1),
(4, 'test2', 'yesy23', 'test@test.com', 'test1', '234', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363', '57ad928b-014f-46a8-ac73-ac3b706de0c6', '2018-08-16 18:16:01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;



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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
