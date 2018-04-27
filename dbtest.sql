-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2018 at 04:55 AM
-- Server version: 5.5.60-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
`Class_id` int(5) NOT NULL,
  `class_Code` varchar(5) NOT NULL,
  `Student_Count` int(3) DEFAULT NULL,
  `Teacher_ID` varchar(50) NOT NULL DEFAULT 'Email@p373kbtc.org'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`Class_id`, `class_Code`, `Student_Count`, `Teacher_ID`) VALUES
(37, '', 0, ''),
(28, 'L04', 23, 'peterxsharp@gmail.com'),
(25, 'V32', 15, 'erte@p373kbtc.org'),
(36, 'V320', 15, 'erte@p373kbtc.org'),
(32, 'W01', 21, 'XXX'),
(31, 'X02', 34, 'xxxxxx'),
(35, 'Y17', 89, 'peterxsharp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `StudentData`
--

CREATE TABLE IF NOT EXISTS `StudentData` (
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `OSIS` int(20) NOT NULL DEFAULT '0',
  `GradYear` year(4) DEFAULT NULL,
  `IntakeDate` date DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `Class_id` varchar(5) NOT NULL,
  `TeacherEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Student_PIP';

--
-- Dumping data for table `StudentData`
--

INSERT INTO `StudentData` (`FirstName`, `LastName`, `DOB`, `OSIS`, `GradYear`, `IntakeDate`, `Sex`, `Class_id`, `TeacherEmail`) VALUES
('', '', '2018-04-04', 0, 0000, '2018-04-07', '', '', ''),
('me', 'Try', '2018-04-04', 5645456, 0000, '2018-04-07', 'male', 'V32', ''),
('PETER', 'IBRAHIM', '2018-04-04', 38389393, 0000, '2018-04-07', 'Female', 'Y17', 'xx'),
('John', 'Wayne', '2018-04-04', 98987654, 1998, '2018-04-07', 'female', 'Y17', 'Peterxsharp@gmail.com'),
('breasts', 'bigones', '2018-04-04', 2147483647, 0000, '2018-04-07', 'male', 'V320', 'peterxsharp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `TeacherData`
--

CREATE TABLE IF NOT EXISTS `TeacherData` (
  `Email_address` varchar(27) NOT NULL DEFAULT '',
  `First_name` varchar(9) DEFAULT NULL,
  `Last_name` varchar(14) DEFAULT NULL,
  `Last_login` varchar(8) DEFAULT NULL,
  `Agreed_to_terms` varchar(10) DEFAULT NULL,
  `Status` varchar(13) DEFAULT NULL,
  `Email_usage` varchar(7) DEFAULT NULL,
  `Drive_usage` varchar(8) DEFAULT NULL,
  `Total_storage` varchar(9) DEFAULT NULL,
  `Organization_name` varchar(8) DEFAULT NULL,
  `Class_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeacherData`
--

INSERT INTO `TeacherData` (`Email_address`, `First_name`, `Last_name`, `Last_login`, `Agreed_to_terms`, `Status`, `Email_usage`, `Drive_usage`, `Total_storage`, `Organization_name`, `Class_id`) VALUES
('abezuyevskaya@p373kbtc.org', 'Anna', 'Bezuyevskaya', '10/13/17', '', 'Active', '0 GB', '2.61 GB', 'Unlimited', 'Teachers', 'Y17'),
('achachere@p373kbtc.org', 'Angela', 'Chachere', '3/11/18', '', 'Active', '0.54 GB', '20.71 GB', 'Unlimited', 'Teachers', 'Y17'),
('achung@p373kbtc.org', 'Andrew', 'Chung', '3/8/18', '', 'Administrator', '0.07 GB', '0.07 GB', 'Unlimited', 'Teachers', 'V32'),
('agrant@p373kbtc.org', 'Anthony', 'Grant', '3/9/18', '', 'Active', '0.06 GB', '0.19 GB', 'Unlimited', 'Teachers', 'X02'),
('ajavid@p373kbtc.org', 'Anum', 'Javid', '3/9/18', '', 'Active', '0.34 GB', '1.27 GB', 'Unlimited', 'Teachers', 'X02'),
('alatek@p373kbtc.org', 'Abigal', 'Latek', '3/5/18', '', 'Active', '0.09 GB', '0.39 GB', 'Unlimited', 'Teachers', 'L04'),
('ashield@p373kbtc.org', 'Amercy', 'Shield', '7/11/17', '', 'Active', '0.04 GB', '8.48 GB', 'Unlimited', 'Teachers', 'V32'),
('atucker@p373kbtc.org', 'Ashley', 'Tucker', '3/10/18', '', 'Active', '0.15 GB', '0.12 GB', 'Unlimited', 'Teachers', 'W01'),
('avanrabenswaay@p373kbtc.org', 'Anne', 'Van Rabenswaay', '3/6/18', '', 'Active', '0.04 GB', '0.07 GB', 'Unlimited', 'Teachers', ''),
('bbe@p373kbtc.org', 'Brenton', 'Be', '3/4/18', '', 'Active', '0.12 GB', '0.16 GB', 'Unlimited', 'Teachers', ''),
('bevans@p373kbtc.org', 'Brenda', 'Evans', '3/2/18', '', 'Active', '0.04 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('bwilson@p373kbtc.org', 'Betty', 'Wilson', '10/24/17', '', 'Active', '0.08 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('bwrights@p373kbtc.org', 'Bilal', 'Wrights', '3/2/18', '', 'Active', '0.06 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('ccochran@p373kbtc.org', 'Caitlin', 'Cochran', '1/25/18', '', 'Active', '0.4 GB', '0.11 GB', 'Unlimited', 'Teachers', ''),
('cortiz@p373kbtc.org', 'Crystal', 'Ortiz', '3/11/18', '', 'Active', '0.43 GB', '2.93 GB', 'Unlimited', 'Teachers', ''),
('cschiller@p373kbtc.org', 'Catilin', 'Schiller', '3/5/18', '', 'Active', '0.23 GB', '0.03 GB', 'Unlimited', 'Teachers', ''),
('dabest@p373kbtc.org', 'Darien', 'Best', '3/9/18', '', 'Active', '0.01 GB', '0.03 GB', 'Unlimited', 'Teachers', ''),
('dsimon@p373kbtc.org', 'Doreen', 'Simon', '', '', 'Newly created', '0 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('dwasserman@p373kbtc.org', 'Douglas', 'Wasserman', '3/9/18', '', 'Active', '0.01 GB', '2.99 GB', 'Unlimited', 'Teachers', ''),
('ekiernan@p373kbtc.org', 'Elizabeth', 'Kiernan', '11/20/17', '', 'Active', '0.07 GB', '0.25 GB', 'Unlimited', 'Teachers', ''),
('esandoval@p373kbtc.org', 'Elizabeth', 'Sandoval', '3/11/18', '', 'Administrator', '1.64 GB', '43.76 GB', 'Unlimited', 'Teachers', ''),
('eschwartz@p373kbtc.org', 'Emily', 'Schwartz', '', '', 'Newly created', '0 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('fvalentin@p373kbtc.org', 'Felix', 'Valentin', '3/2/18', '', 'Active', '0 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('ghull@p373kbtc.org', 'Garfield', 'Hull', '2/9/18', '', 'Active', '0.04 GB', '0.15 GB', 'Unlimited', 'Teachers', ''),
('gmaterazzo@p373kbtc.org', 'Gerald', 'Materazzo', '2/10/17', '', 'Active', '0.04 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('hgilinson@p373kbtc.org', 'Hilarie', 'Gilinson', '3/10/18', '', 'Active', '0.64 GB', '0.02 GB', 'Unlimited', 'Teachers', ''),
('hlifland@p373kbtc.org', 'Heather', 'Lifland', '3/1/18', '', 'Active', '0.38 GB', '8.33 GB', 'Unlimited', 'Teachers', ''),
('hyaden@p373kbtc.org', 'Heather', 'Yaden', '2/26/18', '', 'Active', '1.18 GB', '3.98 GB', 'Unlimited', 'Teachers', ''),
('jcoleman@p373kbtc.org', 'Jacob', 'Coleman', '3/6/18', '', 'Active', '0.02 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('jduncan@p373kbtc.org', 'Janet', 'Duncan', '3/3/18', '', 'Active', '0.03 GB', '1.06 GB', 'Unlimited', 'Teachers', ''),
('jgooden@p373kbtc.org', 'Jerome', 'Gooden', '3/9/18', '', 'Active', '0.03 GB', '0.22 GB', 'Unlimited', 'Teachers', ''),
('jheymann@p373kbtc.org', 'Julia', 'Heymann', '2/28/18', '', 'Active', '0.01 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('jlaird@p373kbtc.org', 'Jodian', 'Laird', '3/8/18', '', 'Active', '0.12 GB', '0.56 GB', 'Unlimited', 'Teachers', ''),
('joshaughnessy@p373kbtc.org', 'Jenna', 'Oshaughnessy', '3/3/18', '', 'Active', '0.03 GB', '0.1 GB', 'Unlimited', 'Teachers', ''),
('kfenton@p373kbtc.org', 'Kate', 'Fenton', '2/26/18', '', 'Active', '0.08 GB', '0.13 GB', 'Unlimited', 'Teachers', ''),
('kmarocik@p373kbtc.org', 'Katalin', 'Marocik', '3/10/18', '', 'Active', '0.75 GB', '41.53 GB', 'Unlimited', 'Teachers', ''),
('koconnor@p373kbtc.org', 'Kara', 'O''Connor', '3/7/18', '', 'Active', '0.05 GB', '3.38 GB', 'Unlimited', 'Teachers', ''),
('latkinson@p373kbtc.org', 'Lily', 'Atkinson', '3/8/18', '', 'Active', '0.04 GB', '1.48 GB', 'Unlimited', 'Teachers', ''),
('lgreco@p373kbtc.org', 'Lillian', 'Greco', '3/2/18', '', 'Active', '0.16 GB', '0.99 GB', 'Unlimited', 'Teachers', ''),
('lkenner@p373kbtc.org', 'Lyudmila', 'Kenner', '3/9/18', '', 'Active', '0.07 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('mamato@p373kbtc.org', 'Michaela', 'Amato', '3/9/18', '', 'Active', '0.63 GB', '9.85 GB', 'Unlimited', 'Teachers', ''),
('mcharles@p373kbtc.org', 'McEdwin', 'Charles', '3/9/18', '', 'Active', '0.25 GB', '6.82 GB', 'Unlimited', 'Teachers', ''),
('mflanagan@p373kbtc.org', 'Maura', 'Flanagan', '3/10/18', '', 'Active', '0.35 GB', '0.29 GB', 'Unlimited', 'Teachers', ''),
('mharaughty@p373kbtc.org', 'Miranda', 'Haraughty', '3/6/18', '', 'Active', '0.18 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('mhorosky@p373kbtc.org', 'Mark', 'Horosky', '3/7/18', '', 'Active', '0.08 GB', '0.12 GB', 'Unlimited', 'Teachers', ''),
('mlarson@p373kbtc.org', 'Mandy', 'Larson', '3/6/18', '', 'Active', '0.05 GB', '1.64 GB', 'Unlimited', 'Teachers', ''),
('mparrella@p373kbtc.org', 'Marc', 'Parrella', '3/9/18', '', 'Active', '0.04 GB', '0.29 GB', 'Unlimited', 'Teachers', ''),
('mruiz@p373kbtc.org', 'Marisol', 'Ruiz', '7/11/16', '', 'Active', '0 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('mtodd@p373kbtc.org', 'Madelyn', 'Todd', '2/27/18', '', 'Active', '0.04 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('ngodulias@p373kbtc.org', 'Nicole', 'Godulias', '3/3/18', '', 'Active', '0.06 GB', '0.02 GB', 'Unlimited', 'Teachers', ''),
('nhamilton@p373kbtc.org', 'Nicole', 'Hamilton', '3/9/18', '', 'Active', '0.46 GB', '9.58 GB', 'Unlimited', 'Teachers', ''),
('nkantor@p373kbtc.org', 'Nicole', 'Kantor', '3/11/18', '', 'Active', '0.11 GB', '5.32 GB', 'Unlimited', 'Teachers', ''),
('nmorgan@p373kbtc.org', 'Nicole', 'Morgan', '3/8/18', '', 'Active', '0.06 GB', '0.07 GB', 'Unlimited', 'Teachers', ''),
('oclaudio@p373kbtc.org', 'Osvaldo', 'Claudio', '3/9/18', '', 'Active', '0.18 GB', '2.75 GB', 'Unlimited', 'Teachers', ''),
('pkwiecinski@p373kbtc.org', 'Patricia', 'Kwiecinski', '2/15/18', '', 'Active', '0.32 GB', '0.96 GB', 'Unlimited', 'Teachers', ''),
('pmcglone@p373kbtc.org', 'Pierce', 'Mcglone', '2/28/18', '', 'Active', '0.08 GB', '0.01 GB', 'Unlimited', 'Teachers', ''),
('pscherpf@p373kbtc.org', 'Patricia', 'Scherpf', '3/10/18', '', 'Active', '0.22 GB', '0.32 GB', 'Unlimited', 'Teachers', ''),
('qhechtkopf@p373kbtc.org', 'Quinn', 'Hechtkopf', '3/9/18', '', 'Active', '0.19 GB', '0.2 GB', 'Unlimited', 'Teachers', ''),
('rmartell@p373kbtc.org', 'Raquel', 'Martell', '3/9/18', '', 'Active', '0.08 GB', '7.69 GB', 'Unlimited', 'Teachers', ''),
('sdaniel@p373kbtc.org', 'Shakira', 'Daniel', '3/7/18', '', 'Active', '0.13 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('sianiere@p373kbtc.org', 'Stephen', 'Ianiere', '3/11/18', '', 'Active', '0.03 GB', '4.99 GB', 'Unlimited', 'Teachers', ''),
('sthelem@p373kbtc.org', 'Sheniese', 'Thelem', '3/9/18', '', 'Active', '1.48 GB', '0.26 GB', 'Unlimited', 'Teachers', ''),
('tiortiz@p373kbtc.org', 'Tiffany', 'Ortiz', '3/2/18', '', 'Active', '0.07 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('tjarvis@p373kbtc.org', 'Tara', 'Jarvis', '3/6/18', '', 'Active', '0.11 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('tmccoy@p373kbtc.org', 'Tenia', 'McCoy', '2/15/18', '', 'Active', '0.11 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('torza@p373kbtc.org', 'Thomas', 'Orza', '3/7/18', '', 'Active', '0.06 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('twilson@p373kbtc.org', 'Todd', 'Wilson', '3/11/18', '', 'Active', '0.01 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('vgorelik@p373kbtc.org', 'Valery', 'Gorelik', '5/2/16', '', 'Active', '0.04 GB', '0 GB', 'Unlimited', 'Teachers', ''),
('vphill@p373kbtc.org', 'Vanessa', 'Phill', '3/11/18', '', 'Active', '0.07 GB', '0.28 GB', 'Unlimited', 'Teachers', ''),
('ztomlinson@p373kbtc.org', 'Zachary', 'Tomlinson', '3/11/18', '', 'Active', '0.04 GB', '0.09 GB', 'Unlimited', 'Teachers', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`class_Code`), ADD KEY `Class_id` (`Class_id`);

--
-- Indexes for table `StudentData`
--
ALTER TABLE `StudentData`
 ADD PRIMARY KEY (`OSIS`);

--
-- Indexes for table `TeacherData`
--
ALTER TABLE `TeacherData`
 ADD PRIMARY KEY (`Email_address`), ADD KEY `Email_address` (`Email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
MODIFY `Class_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
