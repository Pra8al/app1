-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 02:06 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trydb1`
--
CREATE DATABASE IF NOT EXISTS `trydb1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trydb1`;

-- --------------------------------------------------------

--
-- Table structure for table `comment_detail`
--

CREATE TABLE IF NOT EXISTS `comment_detail` (
  `id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_detail`
--

INSERT INTO `comment_detail` (`id`, `name`) VALUES
(1, 'gud yr'),
(1, ':)'),
(1, 'me too..:)'),
(2, 'Same to u'),
(4, 'hehe'),
(3, 'why???'),
(3, 'what happened??');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `emailid`) VALUES
(1, 'Prabal', 'prabal', NULL),
(2, 'Kapil', 'sharma', 'kapil.sharma@gmail.com'),
(3, 'Prab', 'prithvi', 'prab@gmail.com'),
(4, 'Prakhar', 'sahab', 'prakhar@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `statusid` bigint(20) DEFAULT NULL,
  `profileid` bigint(20) DEFAULT NULL,
  KEY `statusid` (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`statusid`, `profileid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_detail`
--

CREATE TABLE IF NOT EXISTS `status_detail` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `count_like` bigint(20) DEFAULT NULL,
  `statusdate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `commentid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_detail`
--

INSERT INTO `status_detail` (`id`, `count_like`, `statusdate`, `status`, `commentid`) VALUES
(1, 4, '2014-05-14', 'Life is awesome', 1),
(2, 54, '2015-01-01', 'Happy New Year', 2),
(3, 4, '2015-12-13', 'Amazing Bro', 3),
(4, 3, '2015-12-13', 'Hey Gr*', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`statusid`) REFERENCES `status_detail` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
