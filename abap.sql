-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 31, 2019 at 08:29 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `mobileNo` varchar(12) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `name`, `email`, `password`, `mobileNo`, `gender`, `address`, `securityquestion`, `answer`) VALUES
(10, 'Arpit ', 'admin@gmail.com', '123@123', '8630956099', 'male', 'Meerut', 'What is your first phone\'s brand name?', 'nokia');

-- --------------------------------------------------------

--
-- Table structure for table `comercial`
--

DROP TABLE IF EXISTS `comercial`;
CREATE TABLE IF NOT EXISTS `comercial` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(30) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customercare`
--

DROP TABLE IF EXISTS `customercare`;
CREATE TABLE IF NOT EXISTS `customercare` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `securityquestion` varchar(50) DEFAULT NULL,
  `answere` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerrecord`
--

DROP TABLE IF EXISTS `customerrecord`;
CREATE TABLE IF NOT EXISTS `customerrecord` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `securityquestion` varchar(50) DEFAULT NULL,
  `answere` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerrecord`
--

INSERT INTO `customerrecord` (`customerID`, `name`, `email`, `password`, `mobileNo`, `gender`, `address`, `dob`, `securityquestion`, `answere`) VALUES
(1, 'akash', 'akash123@gmail.com', '123', '9988776655', 'male', 'meerut', '1997-12-28', 'What is your pat name?', 'moti'),
(2, 'Adarsh', 'adarsh@gmail.com', '123', '9877668878', 'male', 'meerut', '1997-06-26', 'What is your first phone\'s brand name?', 'mi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `customerID` int(11) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourwheeler`
--

DROP TABLE IF EXISTS `fourwheeler`;
CREATE TABLE IF NOT EXISTS `fourwheeler` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(30) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=234113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fourwheeler`
--

INSERT INTO `fourwheeler` (`policyNO`, `policyName`, `period`, `premium`, `amount`, `catagoryID`) VALUES
(234112, 'Humsafar', 10, 8776, 1500000, 40),
(123341, 'Humrahi', 15, 10000, 2500000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `houseinsurance`
--

DROP TABLE IF EXISTS `houseinsurance`;
CREATE TABLE IF NOT EXISTS `houseinsurance` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(20) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=32114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houseinsurance`
--

INSERT INTO `houseinsurance` (`policyNO`, `policyName`, `period`, `premium`, `amount`, `catagoryID`) VALUES
(32113, 'Makan Humsafar', 5, 7899, 3000000, 20),
(23111, 'Makan Bima', 20, 6599, 4000000, 20),
(12211, 'Makan Suraksha', 15, 4322, 2000000, 20),
(23241, 'Apna ghar Apna Chaat', 32, 8999, 5400000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `lifeinsurance`
--

DROP TABLE IF EXISTS `lifeinsurance`;
CREATE TABLE IF NOT EXISTS `lifeinsurance` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(30) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  UNIQUE KEY `policyNO` (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=12345 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lifeinsurance`
--

INSERT INTO `lifeinsurance` (`policyNO`, `policyName`, `period`, `premium`, `amount`, `catagoryID`) VALUES
(12232, 'Jeevan Sathi', 25, 5489, 3500000, 10),
(12231, 'Jeevan Nigam', 18, 4599, 2500000, 10),
(12331, 'Humsafar', 40, 3490, 4000000, 10),
(12322, 'Jeevan bima', 20, 4590, 3000000, 10),
(12344, 'Humrahi', 10, 6509, 4000000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `policycatagory`
--

DROP TABLE IF EXISTS `policycatagory`;
CREATE TABLE IF NOT EXISTS `policycatagory` (
  `catagoryID` int(11) NOT NULL AUTO_INCREMENT,
  `catagory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policycatagory`
--

INSERT INTO `policycatagory` (`catagoryID`, `catagory`) VALUES
(10, 'lifeinsurance'),
(20, 'houseinsurance'),
(30, 'twowheeler'),
(40, 'fourwheeler'),
(50, 'comercial'),
(60, 'travelinsurance');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE IF NOT EXISTS `query` (
  `queryID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `query` varchar(200) DEFAULT NULL,
  `answere` varchar(200) DEFAULT NULL,
  UNIQUE KEY `queryID` (`queryID`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `travelinsurance`
--

DROP TABLE IF EXISTS `travelinsurance`;
CREATE TABLE IF NOT EXISTS `travelinsurance` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(20) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twowheeler`
--

DROP TABLE IF EXISTS `twowheeler`;
CREATE TABLE IF NOT EXISTS `twowheeler` (
  `policyNO` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(30) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `catagoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`policyNO`),
  KEY `catagoryID` (`catagoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=231312 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twowheeler`
--

INSERT INTO `twowheeler` (`policyNO`, `policyName`, `period`, `premium`, `amount`, `catagoryID`) VALUES
(31221, 'Vahan  Suraksha', 5, 4399, 40000, 30),
(32123, 'Humrahi', 2, 6599, 30000, 30),
(231311, 'Vahaan Bima', 10, 5490, 45000, 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
