-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2018 at 04:56 AM
-- Server version: 5.5.60-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ieptracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `Class_id` int(5) NOT NULL DEFAULT '0',
  `class_Code` varchar(5) NOT NULL,
  `Student_Count` int(3) DEFAULT NULL,
  `Teacher_ID` varchar(50) NOT NULL DEFAULT 'Email@p373kbtc.org'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iepGoal`
--

CREATE TABLE IF NOT EXISTS `iepGoal` (
`goalID` bigint(20) unsigned NOT NULL,
  `OSIS` int(11) NOT NULL,
  `goal` text NOT NULL,
  `goalYear` varchar(32) NOT NULL,
  `criteriaTrialsSuccessful` int(11) NOT NULL,
  `criteriaTrialsTotal` int(11) NOT NULL,
  `criteriaAccuracy` int(11) NOT NULL,
  `scheduleFrequency` int(11) NOT NULL,
  `schedulePeriod` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='IEPGoalPerStudentRecord';

-- --------------------------------------------------------

--
-- Table structure for table `iepGoalIDGoalTypeLink`
--

CREATE TABLE IF NOT EXISTS `iepGoalIDGoalTypeLink` (
`iepGoalIDGoalTypeLinkID` bigint(20) unsigned NOT NULL,
  `iepGoalID` int(32) NOT NULL,
  `iepGoalTypeID` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iepGoalObjective`
--

CREATE TABLE IF NOT EXISTS `iepGoalObjective` (
  `iepGoalID` int(11) NOT NULL,
  `iepGoalObjective` text NOT NULL,
  `iepGoalObjectiveRank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iepGoalType`
--

CREATE TABLE IF NOT EXISTS `iepGoalType` (
`iepGoalTypeID` bigint(20) unsigned NOT NULL,
  `iepGoalType` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testpass', 'http://fake/', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prompt`
--

CREATE TABLE IF NOT EXISTS `prompt` (
  `iepGoalID` int(32) NOT NULL,
  `promptType` varchar(32) NOT NULL,
  `promptLimit` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `OSIS` int(10) NOT NULL,
  `studentFirstName` varchar(32) NOT NULL,
  `studentLastName` varchar(32) NOT NULL,
  `TeacherEmail` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `studentTeacherLink`
--

CREATE TABLE IF NOT EXISTS `studentTeacherLink` (
`studentTeacherLinkID` bigint(20) unsigned NOT NULL,
  `OSIS` int(10) NOT NULL,
  `teacherID` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
`teacherID` bigint(20) unsigned NOT NULL,
  `teacherFirstName` varchar(32) NOT NULL,
  `teacherLastName` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TeacherData`
--

CREATE TABLE IF NOT EXISTS `TeacherData` (
  `Email_address` varchar(27) NOT NULL DEFAULT '',
  `First_name` varchar(9) DEFAULT NULL,
  `Last_name` varchar(14) DEFAULT NULL,
  `Last login` varchar(8) DEFAULT NULL,
  `Agreed to terms` varchar(10) DEFAULT NULL,
  `Status` varchar(13) DEFAULT NULL,
  `Email usage` varchar(7) DEFAULT NULL,
  `Drive usage` varchar(8) DEFAULT NULL,
  `Total storage` varchar(9) DEFAULT NULL,
  `Organization name` varchar(8) DEFAULT NULL,
  `LastLogIn:LastLogin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeacherData`
--

INSERT INTO `TeacherData` (`Email_address`, `First_name`, `Last_name`, `Last login`, `Agreed to terms`, `Status`, `Email usage`, `Drive usage`, `Total storage`, `Organization name`, `LastLogIn:LastLogin`) VALUES
('abezuyevskaya@p373kbtc.org', 'Anna', 'Bezuyevskaya', '10/13/17', '', 'Active', '0 GB', '2.61 GB', 'Unlimited', 'Teachers', ''),
('achachere@p373kbtc.org', 'Angela', 'Chachere', '3/11/18', '', 'Active', '0.54 GB', '20.71 GB', 'Unlimited', 'Teachers', ''),
('achung@p373kbtc.org', 'Andrew', 'Chung', '3/8/18', '', 'Administrator', '0.07 GB', '0.07 GB', 'Unlimited', 'Teachers', ''),
('agrant@p373kbtc.org', 'Anthony', 'Grant', '3/9/18', '', 'Active', '0.06 GB', '0.19 GB', 'Unlimited', 'Teachers', ''),
('ajavid@p373kbtc.org', 'Anum', 'Javid', '3/9/18', '', 'Active', '0.34 GB', '1.27 GB', 'Unlimited', 'Teachers', ''),
('alatek@p373kbtc.org', 'Abigal', 'Latek', '3/5/18', '', 'Active', '0.09 GB', '0.39 GB', 'Unlimited', 'Teachers', ''),
('ashield@p373kbtc.org', 'Amercy', 'Shield', '7/11/17', '', 'Active', '0.04 GB', '8.48 GB', 'Unlimited', 'Teachers', ''),
('atucker@p373kbtc.org', 'Ashley', 'Tucker', '3/10/18', '', 'Active', '0.15 GB', '0.12 GB', 'Unlimited', 'Teachers', ''),
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

-- --------------------------------------------------------

--
-- Table structure for table `worksample`
--

CREATE TABLE IF NOT EXISTS `worksample` (
`worksampleID` bigint(20) unsigned NOT NULL,
  `OSIS` int(10) NOT NULL,
  `day` int(32) NOT NULL,
  `month` varchar(32) NOT NULL,
  `year` int(32) NOT NULL,
  `accuracy` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`class_Code`), ADD KEY `Class_id` (`Class_id`);

--
-- Indexes for table `iepGoal`
--
ALTER TABLE `iepGoal`
 ADD PRIMARY KEY (`OSIS`), ADD UNIQUE KEY `goalID` (`goalID`);

--
-- Indexes for table `iepGoalIDGoalTypeLink`
--
ALTER TABLE `iepGoalIDGoalTypeLink`
 ADD UNIQUE KEY `iepGoalIDGoalTypeLinkID` (`iepGoalIDGoalTypeLinkID`);

--
-- Indexes for table `iepGoalType`
--
ALTER TABLE `iepGoalType`
 ADD UNIQUE KEY `iepGoalTypeID` (`iepGoalTypeID`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
 ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
 ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
 ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
 ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
 ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`OSIS`), ADD KEY `OSIS` (`OSIS`);

--
-- Indexes for table `StudentData`
--
ALTER TABLE `StudentData`
 ADD PRIMARY KEY (`OSIS`);

--
-- Indexes for table `studentTeacherLink`
--
ALTER TABLE `studentTeacherLink`
 ADD UNIQUE KEY `studentTeacherLinkID` (`studentTeacherLinkID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
 ADD UNIQUE KEY `teacherID` (`teacherID`);

--
-- Indexes for table `TeacherData`
--
ALTER TABLE `TeacherData`
 ADD PRIMARY KEY (`Email_address`), ADD KEY `Email_address` (`Email_address`);

--
-- Indexes for table `worksample`
--
ALTER TABLE `worksample`
 ADD UNIQUE KEY `worksampleID` (`worksampleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iepGoal`
--
ALTER TABLE `iepGoal`
MODIFY `goalID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iepGoalIDGoalTypeLink`
--
ALTER TABLE `iepGoalIDGoalTypeLink`
MODIFY `iepGoalIDGoalTypeLinkID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iepGoalType`
--
ALTER TABLE `iepGoalType`
MODIFY `iepGoalTypeID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentTeacherLink`
--
ALTER TABLE `studentTeacherLink`
MODIFY `studentTeacherLinkID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
MODIFY `teacherID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `worksample`
--
ALTER TABLE `worksample`
MODIFY `worksampleID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `iepGoal`
--
ALTER TABLE `iepGoal`
ADD CONSTRAINT `iepGoal_ibfk_1` FOREIGN KEY (`OSIS`) REFERENCES `StudentData` (`OSIS`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
