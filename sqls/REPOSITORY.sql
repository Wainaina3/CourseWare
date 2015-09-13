-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2015 at 04:15 AM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `REPOSITORY`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_outline`
--
create database if not exists repository;
use repository;

CREATE TABLE IF NOT EXISTS `course_outline` (
  `course_id` varchar(250) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_dept` varchar(200) NOT NULL,
  `course_objectives` text,
  `course_descriptions` text,
  `learning_goals` text,
  `course_evaluations` text,
  `course_readings` text,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_outline`
--

INSERT INTO `course_outline` (`course_id`, `course_name`, `course_dept`, `course_objectives`, `course_descriptions`, `learning_goals`, `course_evaluations`, `course_readings`) VALUES
('6754', 'Physics', 'eng', '<p>Get students to understand the science of physics</p>\r\n', '<p>deep analysis of scientific forces</p>\r\n', '<p>Technology=students use R to analyase data</p>\r\n', '<p>80%=quiezes</p>\r\n', '<p>Laws of Physics</p>\r\n'),
('6757868', 'Negotiation', 'as', '<p>Make students suffer negotitiably.</p>\r\n', '<p>A lot of work and quizes</p>\r\n', '<p>communication skills= write, talk talk talk talk</p>\r\n', '<p>90%=quizes</p>\r\n', '<p>WHo took my pie</p>\r\n'),
('6788', 'Micro _economics', 'ba', '<p>Make students understand economics.</p>\r\n', '<p>study economics at household level.</p>\r\n', '<p>communication: students will have to debate about economics issues.</p>\r\n', '<p>70%=exams</p>\r\n', '<p><strong>Economics for Dummies</strong></p>\r\n\r\n<p><strong>Demand in Economics</strong></p>\r\n'),
('7998', 'jkhkjhkj', 'cs', 'kjhjkhkj', 'hkjhkjhkjh', 'jkhjkhkjh', 'iuyiuy', 'iuyuiy'),
('879987', 'E commerce', 'eng', '<p><strong>Help Students understand web.</strong></p>\r\n\r\n<p><em>Help students use their web knowledge to make commercial applications.</em></p>\r\n', '<p>Intense web development</p>\r\n\r\n<p>Numerous quiezes and assesments.</p>\r\n', '<p>Technology-students get to use their computers&nbsp;<strong>everytime.</strong></p>\r\n', '<p>quizes=20%</p>\r\n\r\n<p>mid sem exam=56%</p>\r\n\r\n<p>final exam=10%</p>\r\n', '<p>Web Development in 21st Century.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE IF NOT EXISTS `DEPARTMENT` (
  `Department_Id` varchar(10) NOT NULL,
  `Department_Name` varchar(45) NOT NULL,
  `Dept_HOD` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Department_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`Department_Id`, `Department_Name`, `Dept_HOD`) VALUES
('102', 'CS', 'Derrick'),
('103', 'BA', 'Derrick'),
('104', 'DF', 'Derricks'),
('111', 'aaaa', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `FACULTY`
--

CREATE TABLE IF NOT EXISTS `FACULTY` (
  `Faculty_Id` varchar(11) NOT NULL,
  `Faculty_Name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FACULTY`
--

INSERT INTO `FACULTY` (`Faculty_Id`, `Faculty_Name`) VALUES
('A1130', 'Beatrice Lee Turkson'),
('A1234', 'Danny Fisher Coleman'),
('A1243', 'Roy Rock Bay'),
('A2550', 'Dorcas Ammang Serwaa'),
('B1025', 'Salton Della'),
('B1090', 'Sam Jerry Mills Staurt'),
('B1330', 'Kizito Asampong'),
('CS1085', 'George Wilson'),
('CS1098', 'Betty Efua Dickson'),
('CS3456', 'Florence Nana Ama Fio');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_course`
--

CREATE TABLE IF NOT EXISTS `faculty_course` (
  `Faculty_Id` varchar(45) NOT NULL,
  `Course_id` varchar(45) NOT NULL,
  PRIMARY KEY (`Faculty_Id`,`Course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_course`
--

INSERT INTO `faculty_course` (`Faculty_Id`, `Course_id`) VALUES
('A1234', '6757868'),
('A2550', '6788');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_department`
--

CREATE TABLE IF NOT EXISTS `faculty_department` (
  `FacDep_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Faculty_Id` varchar(10) NOT NULL,
  `Department_id` int(11) NOT NULL,
  PRIMARY KEY (`FacDep_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule09`
--

CREATE TABLE IF NOT EXISTS `schedule09` (
  `weekid` int(11) NOT NULL AUTO_INCREMENT,
  `weeks` varchar(255) NOT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `readings` varchar(255) DEFAULT NULL,
  `milestones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `schedule09`
--

INSERT INTO `schedule09` (`weekid`, `weeks`, `topics`, `readings`, `milestones`) VALUES
(1, 'hiuyiuh', 'uihgiuiu', 'hghugygf', 'fcfcgfc');

-- --------------------------------------------------------

--
-- Table structure for table `schedule6754`
--

CREATE TABLE IF NOT EXISTS `schedule6754` (
  `weekid` int(11) NOT NULL AUTO_INCREMENT,
  `weeks` varchar(255) NOT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `readings` varchar(255) DEFAULT NULL,
  `milestones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `schedule6754`
--

INSERT INTO `schedule6754` (`weekid`, `weeks`, `topics`, `readings`, `milestones`) VALUES
(1, '3', 'force', 'gravitation force effect on food', 'a3 due');

-- --------------------------------------------------------

--
-- Table structure for table `schedule6788`
--

CREATE TABLE IF NOT EXISTS `schedule6788` (
  `weekid` int(11) NOT NULL AUTO_INCREMENT,
  `weeks` varchar(255) NOT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `readings` varchar(255) DEFAULT NULL,
  `milestones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `schedule6788`
--

INSERT INTO `schedule6788` (`weekid`, `weeks`, `topics`, `readings`, `milestones`) VALUES
(1, '2', 'principles of eecon', 'econ for dummies', 'hmw2'),
(2, '1', 'intro', 'econ for dummies', 'hmw1'),
(3, '3', 'supply', 'chap 12', 'quiz1'),
(4, '4', 'demand', 'chap 13', 'hmw3');

-- --------------------------------------------------------

--
-- Table structure for table `schedule7998`
--

CREATE TABLE IF NOT EXISTS `schedule7998` (
  `weekid` int(11) NOT NULL AUTO_INCREMENT,
  `weeks` varchar(255) NOT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `readings` varchar(255) DEFAULT NULL,
  `milestones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `schedule7998`
--

INSERT INTO `schedule7998` (`weekid`, `weeks`, `topics`, `readings`, `milestones`) VALUES
(1, 'dddddddddd', 'dddddddd', 'dddddddd', 'dddddd'),
(2, 'rrrrrrr', 'rrrrrrr', 'rrrrrrrrr', 'rrrrrrrrrrrrr');

-- --------------------------------------------------------

--
-- Table structure for table `schedule6757868`
--

CREATE TABLE IF NOT EXISTS `schedule6757868` (
  `weekid` int(11) NOT NULL AUTO_INCREMENT,
  `weeks` varchar(255) NOT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `readings` varchar(255) DEFAULT NULL,
  `milestones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `schedule6757868`
--

INSERT INTO `schedule6757868` (`weekid`, `weeks`, `topics`, `readings`, `milestones`) VALUES
(1, '1', 'distributive', 'who took my pie', 'quiz 1 & 2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pword` varchar(40) NOT NULL,
  `user_type` enum('Admin','Regular') NOT NULL,
  `permission` set('ADD','EDIT','VIEW','DELETE') NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `pword`, `user_type`, `permission`) VALUES
(5, 'me', '6c14da109e294d1e8155be8aa4b1ce8e', '', ''),
(6, 'dan', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', 'ADD'),
(7, 'dee', '81dc9bdb52d04dc20036dbd8313ed055', 'Regular', 'ADD,EDIT,VIEW');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
