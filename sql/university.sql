-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 04:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_api`
--

CREATE TABLE `student_api` (
  `StudentID` int(8) DEFAULT NULL,
  `Prefix` varchar(4) DEFAULT NULL,
  `FirstName` varchar(8) DEFAULT NULL,
  `LastName` varchar(8) DEFAULT NULL,
  `GPAX` decimal(3,2) DEFAULT NULL,
  `School` varchar(32) DEFAULT NULL,
  `Program` varchar(20) DEFAULT NULL,
  `Advisor` varchar(17) DEFAULT NULL,
  `Dean` varchar(15) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_api`
--

INSERT INTO `student_api` (`StudentID`, `Prefix`, `FirstName`, `LastName`, `GPAX`, `School`, `Program`, `Advisor`, `Dean`, `Status`) VALUES
(58110611, 'MISS', 'Anderson', 'Jagger', '3.28', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58110791, 'MR.', 'Beckett', 'Miller', '1.14', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Probation2'),
(58110869, 'MR.', 'Campbell', 'Taylor', '2.79', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58110953, 'MISS', 'Cash', 'Davis', '2.94', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Normal'),
(58200447, 'MISS', 'Carson', 'Greyson', '3.44', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Normal'),
(58400075, 'MR.', 'Cohen', 'Cohen', '3.09', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Normal'),
(58400272, 'MISS', 'Carter', 'Harrison', '2.96', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58400278, 'MR.', 'Davis', 'Addison', '1.70', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Probation1'),
(58400417, 'MISS', 'Dawson', 'Taylor', '3.28', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58400623, 'MR.', 'Easton', 'Sullivan', '2.81', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal'),
(58400666, 'MISS', 'Greyson', 'Lennon', '3.43', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58400696, 'MISS', 'Griffin', 'Lennox', '2.94', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Normal'),
(58410180, 'MISS', 'Harrison', 'Quinn', '3.22', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Normal'),
(58410197, 'MISS', 'Hendrix', 'Griffin', '3.09', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Normal'),
(58430538, 'MISS', 'Hudson', 'Harlow', '3.26', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58430847, 'MISS', 'Jackson', 'Dawson', '2.93', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Normal'),
(58430997, 'MISS', 'Kingsley', 'Griffin', '3.16', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58431136, 'MISS', 'Lewis', 'Campbell', '3.50', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal'),
(58700002, 'MR.', 'Miller', 'Davis', '2.43', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58700026, 'MISS', 'Nash', 'Anderson', '2.84', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Normal'),
(58700029, 'MR.', 'Nixon', 'Taylor', '1.76', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Probation1'),
(58700031, 'MISS', 'Parker', 'Parker', '3.04', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Normal'),
(58700190, 'MR.', 'Reed', 'Reagan', '3.17', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58710013, 'MR.', 'Smith', 'West', '2.61', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Normal'),
(58300002, 'MISS', 'Sullivan', 'West', '2.55', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58300003, 'MISS', 'West', 'West', '3.00', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal'),
(58300004, 'MR.', 'Vaugh', 'Hudson', '2.93', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58300005, 'MISS', 'Addison', 'McKenzie', '2.64', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Normal'),
(58300011, 'MR.', 'Cassidy', 'Brady', '2.39', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Normal'),
(58300012, 'MR.', 'Delaney', 'Greyson', '3.30', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Normal'),
(58300013, 'MISS', 'Fallon', 'Addison', '3.87', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58300015, 'MR.', 'Harlow', 'Lennox', '2.60', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Normal'),
(58300016, 'MISS', 'Lane', 'Nixon', '3.52', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58300021, 'MR.', 'Kennedy', 'Addison', '1.88', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal'),
(58300022, 'MR.', 'Monroe', 'Anderson', '2.32', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58010021, 'MR.', 'McKenzie', 'Davis', '2.80', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Normal'),
(58010113, 'MISS', 'Bailey', 'Carter', '3.00', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Normal'),
(58010339, 'MISS', 'Brady', 'Brady', '1.76', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Probation1'),
(58010459, 'MR.', 'Cooper', 'Parker', '3.57', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58010518, 'MISS', 'Ellis', 'Carter', '2.60', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Normal'),
(58010585, 'MR.', 'Finley', 'Fallon', '3.06', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58010766, 'MR.', 'Lincoln', 'Smith', '2.83', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal'),
(58010796, 'MISS', 'Lennon', 'Carter', '2.56', 'School of Information Technology', 'Computer Engineering', 'Nixon  Cassidy', 'Greyson  Taylor', 'Normal'),
(58010820, 'MR.', 'Lennox', 'Anderson', '0.96', 'School of Information Technology', 'Computer Engineering', 'Bailey  Monroe', 'Greyson  Taylor', 'Probation2'),
(58010938, 'MR.', 'Jagger', 'Campbell', '2.79', 'School of Information Technology', 'Computer Engineering', 'Lincoln  Kingsley', 'Greyson  Taylor', 'Normal'),
(58100057, 'MISS', 'Quinn', 'Addison', '2.41', 'School of Information Technology', 'Computer Engineering', 'Lane  Lewis', 'Greyson  Taylor', 'Normal'),
(58100284, 'MR.', 'Reagan', 'Sullivan', '3.38', 'School of Information Technology', 'Computer Engineering', 'Parker  Carson', 'Greyson  Taylor', 'Normal'),
(58100290, 'MR.', 'Taylor', 'Lane', '3.05', 'School of Information Technology', 'Computer Engineering', 'Bailey  McKenzie', 'Greyson  Taylor', 'Normal'),
(58110050, 'MR.', 'Tyler', 'Jackson', '3.09', 'School of Information Technology', 'Computer Engineering', 'McKenzie  Carson', 'Greyson  Taylor', 'Normal'),
(58110063, 'MR.', 'Sawyer', 'Nash', '3.59', 'School of Information Technology', 'Computer Engineering', 'Griffin  Addison', 'Greyson  Taylor', 'Normal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
