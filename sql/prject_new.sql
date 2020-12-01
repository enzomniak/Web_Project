-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 03:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prject_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `DeanID` int(8) NOT NULL,
  `DeanName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchoolID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`DeanID`, `DeanName`, `SchoolID`) VALUES
(1, 'Greyson Taylor', 1),
(2, 'Jaden Smith', 2),
(3, 'Dwayne Johnson', 3),
(4, 'Donold Trump', 4),
(5, 'Tom Cruise', 5),
(6, 'Benjamin Frankl', 6),
(7, 'Vincent Van Gog', 7),
(8, 'Bruce Wayne', 8),
(9, 'Clark Kent', 9),
(10, 'Angelina Jolie', 10),
(11, 'Quentin Taranti', 11),
(12, 'Joe Biden', 12),
(13, 'Emilia Clarke', 13),
(14, 'Tony Stark', 14),
(15, 'Prayut San', 15);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` int(8) NOT NULL,
  `ProgramName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchoolID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgramID`, `ProgramName`, `SchoolID`) VALUES
(1, 'Computer Engineering', 1),
(2, 'Digital Business and', 1),
(3, 'Multimedia Technolog', 1),
(4, 'Software Engineering', 1),
(5, 'Food Science and Tec', 2),
(6, 'Postharvest Technolo', 2),
(7, 'Logistics and Supply', 2),
(8, 'Beauty Technology', 3),
(9, 'Cosmetic Science', 3),
(10, 'Dental Surgery', 4),
(11, 'Environmental Health', 5),
(12, 'Occupational Health ', 5),
(13, 'Public Health', 5),
(14, 'Sports and Health Sc', 5),
(15, 'Applied Thai Traditi', 6),
(16, 'Physical Therapy', 6),
(17, 'Traditional Chinese ', 6),
(18, 'Laws', 7),
(19, 'English', 8),
(20, 'Thai Language and Cu', 8),
(21, 'Accounting', 9),
(22, 'Aviation Business Ma', 9),
(23, 'Business Administrat', 9),
(24, 'Economics', 9),
(25, 'Hospitality Industry', 9),
(26, 'Logistics and Supply', 9),
(27, 'Tourism Management', 9),
(28, 'Medicine', 10),
(29, 'Nursing Science', 11),
(30, 'Applied Chemistry', 12),
(31, 'Biotechnology', 12),
(32, 'Materials Engineerin', 12),
(33, 'Business Chinese', 13),
(34, 'Chinese Language and', 13),
(35, 'Chinese Studies', 13),
(36, 'Teaching Chinese Lan', 13),
(37, 'International Develo', 14),
(38, 'Anti-Aging and Regen', 15),
(39, 'Anti-Aging and Regen', 15),
(40, 'Dermatology', 15);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SchoolID` int(8) NOT NULL,
  `SchoolName` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`SchoolID`, `SchoolName`) VALUES
(1, 'School of Information Technology'),
(2, 'School of Agro-Industry'),
(3, 'School of Cosmetic Science'),
(4, 'School of Dentistry'),
(5, 'School of Health Science'),
(6, 'School of Integrative Medicine'),
(7, 'School of Law'),
(8, 'School of Liberal Arts'),
(9, 'School of Management'),
(10, 'School of Medicine'),
(11, 'School of Nursing'),
(12, 'School of Science'),
(13, 'School of Sinology'),
(14, 'School of Social Innovation'),
(15, 'School of Anti-Aging and Regener');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `StatusID` int(8) NOT NULL,
  `StatusName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GPAX_Level` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`StatusID`, `StatusName`, `GPAX_Level`) VALUES
(1, 'Normal', NULL),
(2, 'Probation1', NULL),
(3, 'Probation2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(8) NOT NULL,
  `Prefix` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FirstName` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchoolID` int(8) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `DeanID` int(11) DEFAULT NULL,
  `Advisor` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GPAX` decimal(3,2) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Prefix`, `FirstName`, `LastName`, `SchoolID`, `ProgramID`, `DeanID`, `Advisor`, `GPAX`, `StatusID`) VALUES
(58010021, 'MR.', 'McKenzie', 'Davis', 1, 1, 1, 'Bailey  Monroe', '2.80', 2),
(58010113, 'MISS', 'Bailey', 'Carter', 1, 1, 1, 'Lincoln  Kingsley', '3.00', 1),
(58010339, 'MISS', 'Brady', 'Brady', 1, 1, 1, 'Lane  Lewis', '1.76', 2),
(58010459, 'MR.', 'Cooper', 'Parker', 1, 1, 1, 'Parker  Carson', '3.57', 1),
(58010518, 'MISS', 'Ellis', 'Carter', 1, 1, 1, 'Bailey  McKenzie', '2.60', 2),
(58010585, 'MR.', 'Finley', 'Fallon', 1, 1, 1, 'McKenzie  Carson', '3.06', 1),
(58010766, 'MR.', 'Lincoln', 'Smith', 1, 1, 1, 'Griffin  Addison', '2.83', 2),
(58010796, 'MISS', 'Lennon', 'Carter', 1, 1, 1, 'Nixon  Cassidy', '2.56', 2),
(58010820, 'MR.', 'Lennox', 'Anderson', 1, 1, 1, 'Bailey  Monroe', '0.96', 3),
(58010938, 'MR.', 'Jagger', 'Campbell', 1, 1, 1, 'Lincoln  Kingsley', '2.79', 2),
(58100057, 'MISS', 'Quinn', 'Addison', 1, 1, 1, 'Lane  Lewis', '2.41', 2),
(58100284, 'MR.', 'Reagan', 'Sullivan', 1, 1, 1, 'Parker  Carson', '3.38', 1),
(58100290, 'MR.', 'Taylor', 'Lane', 1, 1, 1, 'Bailey  McKenzie', '3.05', 1),
(58110050, 'MR.', 'Tyler', 'Jackson', 1, 1, 1, 'McKenzie  Carson', '3.09', 1),
(58110063, 'MR.', 'Sawyer', 'Nash', 1, 1, 1, 'Griffin  Addison', '3.59', 1),
(58110611, 'MISS', 'Anderson', 'Jagger', 1, 1, 1, 'McKenzie  Carson', '3.28', 1),
(58110791, 'MR.', 'Beckett', 'Miller', 1, 1, 1, 'Griffin  Addison', '1.14', 3),
(58110869, 'MR.', 'Campbell', 'Taylor', 1, 1, 1, 'Nixon  Cassidy', '2.79', 2),
(58110953, 'MISS', 'Cash', 'Davis', 1, 1, 1, 'Bailey  Monroe', '2.94', 2),
(58200447, 'MISS', 'Carson', 'Greyson', 1, 1, 1, 'Lincoln  Kingsley', '3.44', 1),
(58300002, 'MISS', 'Sullivan', 'West', 1, 1, 1, 'McKenzie  Carson', '2.55', 2),
(58300003, 'MISS', 'West', 'West', 1, 1, 1, 'Griffin  Addison', '3.00', 1),
(58300004, 'MR.', 'Vaugh', 'Hudson', 1, 1, 1, 'Nixon  Cassidy', '2.93', 2),
(58300005, 'MISS', 'Addison', 'McKenzie', 1, 1, 1, 'Bailey  Monroe', '2.64', 2),
(58300011, 'MR.', 'Cassidy', 'Brady', 1, 1, 1, 'Lincoln  Kingsley', '2.39', 2),
(58300012, 'MR.', 'Delaney', 'Greyson', 1, 1, 1, 'Lane  Lewis', '3.30', 1),
(58300013, 'MISS', 'Fallon', 'Addison', 1, 1, 1, 'Parker  Carson', '3.87', 1),
(58300015, 'MR.', 'Harlow', 'Lennox', 1, 1, 1, 'Bailey  McKenzie', '2.60', 2),
(58300016, 'MISS', 'Lane', 'Nixon', 1, 1, 1, 'McKenzie  Carson', '3.52', 1),
(58300021, 'MR.', 'Kennedy', 'Addison', 1, 1, 1, 'Griffin  Addison', '1.88', 2),
(58300022, 'MR.', 'Monroe', 'Anderson', 1, 1, 1, 'Nixon  Cassidy', '2.32', 2),
(58400075, 'MR.', 'Cohen', 'Cohen', 1, 1, 1, 'Lane  Lewis', '3.09', 1),
(58400272, 'MISS', 'Carter', 'Harrison', 1, 1, 1, 'Parker  Carson', '2.96', 2),
(58400278, 'MR.', 'Davis', 'Addison', 1, 1, 1, 'Bailey  McKenzie', '1.70', 2),
(58400417, 'MISS', 'Dawson', 'Taylor', 1, 1, 1, 'McKenzie  Carson', '3.28', 1),
(58400623, 'MR.', 'Easton', 'Sullivan', 1, 1, 1, 'Griffin  Addison', '2.81', 2),
(58400666, 'MISS', 'Greyson', 'Lennon', 1, 1, 1, 'Nixon  Cassidy', '3.43', 1),
(58400696, 'MISS', 'Griffin', 'Lennox', 1, 1, 1, 'Bailey  Monroe', '2.94', 2),
(58410180, 'MISS', 'Harrison', 'Quinn', 1, 1, 1, 'Lincoln  Kingsley', '3.22', 1),
(58410197, 'MISS', 'Hendrix', 'Griffin', 1, 1, 1, 'Lane  Lewis', '3.09', 1),
(58430538, 'MISS', 'Hudson', 'Harlow', 1, 1, 1, 'Parker  Carson', '3.26', 1),
(58430847, 'MISS', 'Jackson', 'Dawson', 1, 1, 1, 'Bailey  McKenzie', '2.93', 2),
(58430997, 'MISS', 'Kingsley', 'Griffin', 1, 1, 1, 'McKenzie  Carson', '3.16', 1),
(58431136, 'MISS', 'Lewis', 'Campbell', 1, 1, 1, 'Griffin  Addison', '3.50', 1),
(58700002, 'MR.', 'Miller', 'Davis', 1, 1, 1, 'Nixon  Cassidy', '2.43', 2),
(58700026, 'MISS', 'Nash', 'Anderson', 1, 1, 1, 'Bailey  Monroe', '2.84', 2),
(58700029, 'MR.', 'Nixon', 'Taylor', 1, 1, 1, 'Lincoln  Kingsley', '1.76', 2),
(58700031, 'MISS', 'Parker', 'Parker', 1, 1, 1, 'Lane  Lewis', '3.04', 1),
(58700190, 'MR.', 'Reed', 'Reagan', 1, 1, 1, 'Parker  Carson', '3.17', 1),
(58710013, 'MR.', 'Smith', 'West', 1, 1, 1, 'Bailey  McKenzie', '2.61', 2),
(61656565, 'Mr.', 'James', 'Daniel', 11, 29, 11, 'Dumbledee', '3.56', 1);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dean`
--
ALTER TABLE `dean`
  ADD PRIMARY KEY (`DeanID`),
  ADD KEY `SchoolID` (`SchoolID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgramID`),
  ADD KEY `SchoolID` (`SchoolID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`SchoolID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `ProgramID` (`ProgramID`),
  ADD KEY `DeanID` (`DeanID`),
  ADD KEY `StatusID` (`StatusID`),
  ADD KEY `SchoolID` (`SchoolID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dean`
--
ALTER TABLE `dean`
  MODIFY `DeanID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `ProgramID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `SchoolID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `StatusID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dean`
--
ALTER TABLE `dean`
  ADD CONSTRAINT `dean_ibfk_1` FOREIGN KEY (`SchoolID`) REFERENCES `school` (`SchoolID`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`SchoolID`) REFERENCES `school` (`SchoolID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ProgramID`) REFERENCES `program` (`ProgramID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`DeanID`) REFERENCES `dean` (`DeanID`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`StatusID`) REFERENCES `status` (`StatusID`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`SchoolID`) REFERENCES `school` (`SchoolID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
