-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14.05.2018 klo 17:11
-- Palvelimen versio: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_bin;
USE `hotel`;

-- --------------------------------------------------------

--
-- Rakenne taululle `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `contact`:
--

--
-- Vedos taulusta `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(1, 'Tim Fabritius', 2147483647, 'tim.fabritius@myy.haaga-helia.fi', '2018-04-23', 'Not Allowed');

-- --------------------------------------------------------

--
-- Rakenne taululle `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `login`:
--

--
-- Vedos taulusta `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(2, 'Prasath', '12345');

-- --------------------------------------------------------

--
-- Rakenne taululle `newsletterlog`
--

DROP TABLE IF EXISTS `newsletterlog`;
CREATE TABLE IF NOT EXISTS `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `newsletterlog`:
--

-- --------------------------------------------------------

--
-- Rakenne taululle `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `payment`:
--

--
-- Vedos taulusta `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Mr.', 'Tim', 'Fabritius', 'Superior Room', 'Single', 1, '2018-04-19', '2018-04-20', 320.00, 323.20, 0.00, 'Room only', 3.20, 1),
(3, 'Dr.', 'Matti', 'MeikÃ¤lÃ¤inen', 'Deluxe Room', 'Triple', 1, '2018-04-24', '2018-04-26', 440.00, 492.80, 39.60, 'Half Board', 13.20, 2);

-- --------------------------------------------------------

--
-- Rakenne taululle `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `room`:
--

--
-- Vedos taulusta `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Superior Room', 'Single', 'Free', 0),
(2, 'Superior Room', 'Double', 'Free', NULL),
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'Free', NULL),
(7, 'Deluxe Room', 'Double', 'Free', NULL),
(8, 'Deluxe Room', 'Triple', 'Free', 0),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'Free', NULL),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'Free', NULL),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL);

-- --------------------------------------------------------

--
-- Rakenne taululle `roombook`
--

DROP TABLE IF EXISTS `roombook`;
CREATE TABLE IF NOT EXISTS `roombook` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `roombook`:
--

--
-- Vedos taulusta `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(4, 'Miss.', 'gewgewega', 'gessegsegsg', 'asdfghjklg@gagsea.com', 'Sri Lankan', 'Barbados', '123456789', 'Superior Room', 'Single', '1', 'Room only', '2018-05-08', '2018-05-10', 'Not Conform', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
