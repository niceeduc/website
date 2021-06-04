-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2021 at 07:04 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicemhcq_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability`
--

CREATE TABLE `ability` (
  `abilityID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `brain_left` float NOT NULL,
  `brain_right` float NOT NULL,
  `blobes_prefrontal` float NOT NULL,
  `blobes_frontal` float NOT NULL,
  `blobes_parietal` float NOT NULL,
  `blobes_temporal` float NOT NULL,
  `blobes_occipital` float NOT NULL,
  `talent_logical` float NOT NULL,
  `talent_linguistic` float NOT NULL,
  `talent_intrap` float NOT NULL,
  `talent_interp` float NOT NULL,
  `talent_kinesthetic` float NOT NULL,
  `talent_visualspatial` float NOT NULL,
  `talent_musical` float NOT NULL,
  `talent_natural` float NOT NULL,
  `talent_existential` float NOT NULL,
  `learn_visual` float NOT NULL,
  `learn_readwrite` float NOT NULL,
  `learn_aural` float NOT NULL,
  `learn_kinesthetic` float NOT NULL,
  `pic_left_thumb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_left_index` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_left_middle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_left_ring` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_left_little` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_right_thumb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_right_index` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_right_middle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_right_ring` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_right_little` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_combined` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_3dspace`
--

CREATE TABLE `abilityq_3dspace` (
  `mcqID` tinyint(4) NOT NULL,
  `question_file` varchar(50) CHARACTER SET latin1 NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_arithmetic`
--

CREATE TABLE `abilityq_arithmetic` (
  `mcqID` tinyint(4) NOT NULL,
  `question` varchar(200) CHARACTER SET latin1 NOT NULL,
  `option1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `option2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `option3` varchar(100) CHARACTER SET latin1 NOT NULL,
  `option4` varchar(100) CHARACTER SET latin1 NOT NULL,
  `option5` varchar(100) CHARACTER SET latin1 NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_computation`
--

CREATE TABLE `abilityq_computation` (
  `mcqID` tinyint(4) NOT NULL,
  `question` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option3` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option4` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option5` varchar(50) CHARACTER SET latin1 NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_name`
--

CREATE TABLE `abilityq_name` (
  `mcqID` tinyint(4) NOT NULL,
  `name1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `name2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `answer` enum('S','D') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_object`
--

CREATE TABLE `abilityq_object` (
  `mcqID` tinyint(4) NOT NULL,
  `question_file` varchar(50) CHARACTER SET latin1 NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityq_vocabulary`
--

CREATE TABLE `abilityq_vocabulary` (
  `mcqID` tinyint(4) NOT NULL,
  `option1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option3` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option4` varchar(50) CHARACTER SET latin1 NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_3dspace`
--

CREATE TABLE `abilityt_3dspace` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_arithmetic`
--

CREATE TABLE `abilityt_arithmetic` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_computation`
--

CREATE TABLE `abilityt_computation` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_name`
--

CREATE TABLE `abilityt_name` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_object`
--

CREATE TABLE `abilityt_object` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abilityt_vocabulary`
--

CREATE TABLE `abilityt_vocabulary` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcqID` tinyint(4) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL,
  `time_sec` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ability_result`
--

CREATE TABLE `ability_result` (
  `resultID` int(11) NOT NULL,
  `abilityID` tinyint(4) NOT NULL,
  `ques_attempted` tinyint(4) DEFAULT NULL,
  `correct_ans` tinyint(4) DEFAULT NULL,
  `time_sec` smallint(6) DEFAULT NULL,
  `marks` float DEFAULT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aptitude`
--

CREATE TABLE `aptitude` (
  `jobaptitudeID` int(11) NOT NULL,
  `jobcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `zoneID` tinyint(11) NOT NULL,
  `aptitude1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `aptitude2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `aptitude3` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_jobs`
--

CREATE TABLE `aptitude_jobs` (
  `aptvalueID` int(11) NOT NULL,
  `jobzoneID` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `onetsoc_code` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `realistic` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `investigative` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `artistic` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `social` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `enterprising` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `conventional` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `mean` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `sd` varchar(7) CHARACTER SET latin1 DEFAULT NULL,
  `jobname` varchar(99) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_ques`
--

CREATE TABLE `aptitude_ques` (
  `quesID` smallint(6) NOT NULL,
  `ques` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_result`
--

CREATE TABLE `aptitude_result` (
  `resultID` int(11) NOT NULL,
  `realistic` char(2) CHARACTER SET latin1 NOT NULL,
  `investigative` char(2) CHARACTER SET latin1 NOT NULL,
  `artistic` char(2) CHARACTER SET latin1 NOT NULL,
  `social` char(2) CHARACTER SET latin1 NOT NULL,
  `enterprising` char(2) CHARACTER SET latin1 NOT NULL,
  `conventional` char(2) CHARACTER SET latin1 NOT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_test`
--

CREATE TABLE `aptitude_test` (
  `asmtID` int(11) NOT NULL,
  `quesID` smallint(11) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude`
--

CREATE TABLE `attitude` (
  `jobattitudeID` int(11) NOT NULL,
  `jobcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `zoneID` tinyint(11) NOT NULL,
  `attitude1` varchar(20) CHARACTER SET latin1 NOT NULL,
  `attitude2` varchar(20) CHARACTER SET latin1 NOT NULL,
  `attitude3` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_jobs`
--

CREATE TABLE `attitude_jobs` (
  `attitutedID` int(11) NOT NULL,
  `jobzoneID` int(11) NOT NULL,
  `onetsoc_code` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field1` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field2` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field3` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field4` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field5` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field6` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field7` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field8` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field9` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field10` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field11` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field12` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field13` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field14` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field15` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field16` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field17` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field18` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field19` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field20` varchar(4) CHARACTER SET latin1 NOT NULL,
  `field21` varchar(4) CHARACTER SET latin1 NOT NULL,
  `jobname` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_order`
--

CREATE TABLE `attitude_order` (
  `questionID` int(11) NOT NULL,
  `option1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_ques`
--

CREATE TABLE `attitude_ques` (
  `questionID` tinyint(11) NOT NULL,
  `question` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_ranking`
--

CREATE TABLE `attitude_ranking` (
  `asmtID` int(11) NOT NULL,
  `questionID` tinyint(11) NOT NULL,
  `pref1` char(2) CHARACTER SET latin1 NOT NULL,
  `pref2` char(2) CHARACTER SET latin1 NOT NULL,
  `pref3` char(2) CHARACTER SET latin1 NOT NULL,
  `pref4` char(2) CHARACTER SET latin1 NOT NULL,
  `pref5` char(2) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_rating`
--

CREATE TABLE `attitude_rating` (
  `asmtID` int(11) NOT NULL,
  `questionID` tinyint(11) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_resorder`
--

CREATE TABLE `attitude_resorder` (
  `asmtordID` int(11) NOT NULL,
  `asmtID` int(11) NOT NULL,
  `attitudeID` int(11) NOT NULL,
  `score` float NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attitude_result`
--

CREATE TABLE `attitude_result` (
  `resultID` int(11) NOT NULL,
  `que1` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que2` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que3` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que4` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que5` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que6` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que7` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que8` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que9` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que10` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que11` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que12` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que13` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que14` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que15` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que16` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que17` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que18` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que19` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que20` varchar(6) CHARACTER SET latin1 NOT NULL,
  `que21` varchar(6) CHARACTER SET latin1 NOT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `jobID` int(11) NOT NULL,
  `jobcode` char(10) CHARACTER SET latin1 NOT NULL,
  `jobname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `zone` smallint(6) DEFAULT NULL,
  `field` smallint(6) DEFAULT NULL,
  `cluster` smallint(6) DEFAULT NULL,
  `industry` smallint(6) DEFAULT NULL,
  `stem` smallint(6) DEFAULT NULL,
  `many_jobs` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `rapid_growth` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `similarjobs` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `jobinfo` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(1, '11-1011.00', 'Chief Executives', 5, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Determine and formulate policies and provide overall direction of companies or private and public sector organizations within guidelines set up by a board of directors or similar governing body. Plan, direct, or coordinate operational activities at the highest level of management with the help of subordinate executives and staff managers.', NULL, NULL, NULL, 0, '0000-00-00'),
(2, '11-1011.03', 'Chief Sustainability Officers', 5, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Communicate and coordinate with management, shareholders, customers, and employees to address sustainability issues. Enact or oversee a corporate sustainability strategy.', NULL, NULL, NULL, 0, '0000-00-00'),
(3, '11-1021.00', 'General and Operations Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the operations of public or private sector organizations, overseeing multiple departments or locations. Duties and responsibilities include formulating policies, managing daily operations, and planning the use of materials and human resources, but are too diverse and general in nature to be classified in any one functional area of management or administration, such as personnel, purchasing, or administrative services. Usually manage through subordinate supervisors. Excludes First-Line Supervisors.', NULL, NULL, NULL, 0, '0000-00-00'),
(4, '11-1031.00', 'Legislators', 4, 66, 168, NULL, NULL, NULL, NULL, NULL, 'Develop, introduce, or enact laws and statutes at the local, tribal, state, or federal level. Includes only workers in elected positions.', NULL, NULL, NULL, 0, '0000-00-00'),
(5, '11-2011.00', 'Advertising and Promotions Managers', 4, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate advertising policies and programs or produce collateral materials, such as posters, contests, coupons, or giveaways, to create extra interest in the purchase of a product or service for a department, an entire organization, or on an account basis.', NULL, NULL, NULL, 0, '0000-00-00'),
(6, '11-2021.00', 'Marketing Managers', 4, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate marketing policies and programs, such as determining the demand for products and services offered by a firm and its competitors, and identify potential customers. Develop pricing strategies with the goal of maximizing the firm\'s profits or share of the market while ensuring the firm\'s customers are satisfied. Oversee product development or monitor trends that indicate the need for new products and services.', NULL, NULL, NULL, 0, '0000-00-00'),
(7, '11-2022.00', 'Sales Managers', 4, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the actual distribution or movement of a product or service to the customer. Coordinate sales distribution by establishing sales territories, quotas, and goals and establish training programs for sales representatives. Analyze sales statistics gathered by staff to determine sales potential and inventory requirements and monitor the preferences of customers.', NULL, NULL, NULL, 0, '0000-00-00'),
(8, '11-2032.00', 'Public Relations Managers', NULL, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities designed to create or maintain a favorable public image or raise issue awareness for their organization or client.', NULL, NULL, NULL, 0, '0000-00-00'),
(9, '11-2033.00', 'Fundraising Managers', NULL, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities to solicit and maintain funds for special projects or nonprofit organizations.', NULL, NULL, NULL, 0, '0000-00-00'),
(10, '11-3012.00', 'Administrative Services Managers', 3, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate one or more administrative services of an organization, such as records and information management, mail distribution, and other office support services.', NULL, NULL, NULL, 0, '0000-00-00'),
(11, '11-3013.00', 'Facilities Managers', NULL, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate operations and functionalities of facilities and buildings. May include surrounding grounds or multiple facilities of an organization\'s campus.', NULL, NULL, NULL, 0, '0000-00-00'),
(12, '11-3013.01', 'Security Managers', NULL, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Direct an organization\'s security functions, including physical security and safety of employees and facilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(13, '11-3021.00', 'Computer and Information Systems Managers', 4, 66, 153, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities in such fields as electronic data processing, information systems, systems analysis, and computer programming.', NULL, NULL, NULL, 0, '0000-00-00'),
(14, '11-3031.00', 'Financial Managers', 4, 66, 152, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate accounting, investing, banking, insurance, securities, and other financial activities of a branch, office, or department of an establishment.', NULL, NULL, NULL, 0, '0000-00-00'),
(15, '11-3031.01', 'Treasurers and Controllers', 4, 66, 152, NULL, NULL, NULL, NULL, NULL, 'Direct financial activities, such as planning, procurement, and investments for all or part of an organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(16, '11-3031.03', 'Investment Fund Managers', 5, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate investment strategy or operations for a large pool of liquid assets supplied by institutional investors or individual investors.', NULL, NULL, NULL, 0, '0000-00-00'),
(17, '11-3051.00', 'Industrial Production Managers', 4, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the work activities and resources necessary for manufacturing products in accordance with cost, quality, and quantity specifications.', NULL, NULL, NULL, 0, '0000-00-00'),
(18, '11-3051.01', 'Quality Control Systems Managers', 4, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate quality assurance programs. Formulate quality control policies and control quality of laboratory and production efforts.', NULL, NULL, NULL, 0, '0000-00-00'),
(19, '11-3051.02', 'Geothermal Production Managers', 3, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Manage operations at geothermal power generation facilities. Maintain and monitor geothermal plant equipment for efficient and safe plant operations.', NULL, NULL, NULL, 0, '0000-00-00'),
(20, '11-3051.03', 'Biofuels Production Managers', 4, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Manage biofuels production and plant operations. Collect and process information on plant production and performance, diagnose problems, and design corrective procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(21, '11-3051.04', 'Biomass Power Plant Managers', 4, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Manage operations at biomass power generation facilities. Direct work activities at plant, including supervision of operations and maintenance staff.', NULL, NULL, NULL, 0, '0000-00-00'),
(22, '11-3051.06', 'Hydroelectric Production Managers', 3, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Manage operations at hydroelectric power generation facilities. Maintain and monitor hydroelectric plant equipment for efficient and safe plant operations.', NULL, NULL, NULL, 0, '0000-00-00'),
(23, '11-3061.00', 'Purchasing Managers', 4, 66, 188, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the activities of buyers, purchasing officers, and related workers involved in purchasing materials, products, and services. Includes wholesale or retail trade merchandising managers and procurement managers.', NULL, NULL, NULL, 0, '0000-00-00'),
(24, '11-3071.00', 'Transportation, Storage, and Distribution Managers', 4, 66, 177, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate transportation, storage, or distribution activities in accordance with organizational policies and applicable government laws or regulations. Includes logistics managers.', NULL, NULL, NULL, 0, '0000-00-00'),
(25, '11-3071.04', 'Supply Chain Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Direct or coordinate production, purchasing, warehousing, distribution, or financial forecasting services or activities to limit costs and improve accuracy, customer service, or safety. Examine existing procedures or opportunities for streamlining activities to meet product distribution needs. Direct the movement, storage, or processing of inventory.', NULL, NULL, NULL, 0, '0000-00-00'),
(26, '11-3111.00', 'Compensation and Benefits Managers', 4, 66, 170, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate compensation and benefits activities of an organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(27, '11-3121.00', 'Human Resources Managers', 4, 66, 170, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate human resources activities and staff of an organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(28, '11-3131.00', 'Training and Development Managers', 4, 66, 170, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the training and development activities and staff of an organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(29, '11-9013.00', 'Farmers, Ranchers, and Other Agricultural Managers', 4, 66, 149, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the management or operation of farms, ranches, greenhouses, aquacultural operations, nurseries, timber tracts, or other agricultural establishments. May hire, train, and supervise farm workers or contract for services to carry out the day-to-day activities of the managed operation. May engage in or supervise planting, cultivating, harvesting, and financial and marketing activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(30, '11-9021.00', 'Construction Managers', 4, 66, 154, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate, usually through subordinate supervisory personnel, activities concerned with the construction and maintenance of structures, facilities, and systems. Participate in the conceptual development of a construction project and oversee its organization, scheduling, budgeting, and implementation. Includes managers in specialized construction fields, such as carpentry or plumbing.', NULL, NULL, NULL, 0, '0000-00-00'),
(31, '11-9031.00', 'Education and Childcare Administrators, Preschool and Daycare', 4, 66, 147, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate academic or nonacademic activities of preschools or childcare centers and programs, including before- and after-school care.', NULL, NULL, NULL, 0, '0000-00-00'),
(32, '11-9032.00', 'Education Administrators, Kindergarten through Secondary', 5, 66, 147, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the academic, administrative, or auxiliary activities of kindergarten, elementary, or secondary schools.', NULL, NULL, NULL, 0, '0000-00-00'),
(33, '11-9033.00', 'Education Administrators, Postsecondary', 5, 66, 147, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate student instruction, administration, and services, as well as other research and educational activities, at postsecondary institutions, including universities, colleges, and junior and community colleges.', NULL, NULL, NULL, 0, '0000-00-00'),
(34, '11-9039.00', 'Education Administrators, All Other', NULL, 66, 147, NULL, NULL, NULL, NULL, NULL, 'All education administrators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(35, '11-9041.00', 'Architectural and Engineering Managers', 5, 66, 162, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities in such fields as architecture and engineering or research and development in these fields.', NULL, NULL, NULL, 0, '0000-00-00'),
(36, '11-9041.01', 'Biofuels/Biodiesel Technology and Product Development Managers', 4, 66, 162, NULL, NULL, NULL, NULL, NULL, 'Define, plan, or execute biofuels/biodiesel research programs that evaluate alternative feedstock and process technologies with near-term commercial potential.', NULL, NULL, NULL, 0, '0000-00-00'),
(37, '11-9051.00', 'Food Service Managers', 2, 66, 203, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities of an organization or department that serves food and beverages.', NULL, NULL, NULL, 0, '0000-00-00'),
(38, '11-9071.00', 'Gambling Managers', 3, 66, 201, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate gambling operations in a casino. May formulate house rules.', NULL, NULL, NULL, 0, '0000-00-00'),
(39, '11-9072.00', 'Entertainment and Recreation Managers, Except Gambling', NULL, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate entertainment and recreational activities and operations of a recreational facility, including cruise ships and parks.', NULL, NULL, NULL, 0, '0000-00-00'),
(40, '11-9081.00', 'Lodging Managers', 4, 66, 176, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities of an organization or department that provides lodging and other accommodations.', NULL, NULL, NULL, 0, '0000-00-00'),
(41, '11-9111.00', 'Medical and Health Services Managers', 5, 66, 209, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate medical and health services in hospitals, clinics, managed care organizations, public health agencies, or similar organizations.', NULL, NULL, NULL, 0, '0000-00-00'),
(42, '11-9121.00', 'Natural Sciences Managers', 5, 66, 186, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities in such fields as life sciences, physical sciences, mathematics, statistics, and research and development in these fields.', NULL, NULL, NULL, 0, '0000-00-00'),
(43, '11-9121.01', 'Clinical Research Coordinators', 4, 66, 186, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate clinical research projects. Direct the activities of workers engaged in clinical research projects to ensure compliance with protocols and overall clinical objectives. May evaluate and analyze clinical data.', NULL, NULL, NULL, 0, '0000-00-00'),
(44, '11-9121.02', 'Water Resource Specialists', 4, 66, 186, NULL, NULL, NULL, NULL, NULL, 'Design or implement programs and strategies related to water resource issues such as supply, quality, and regulatory compliance issues.', NULL, NULL, NULL, 0, '0000-00-00'),
(45, '11-9131.00', 'Postmasters and Mail Superintendents', 2, 66, 199, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate operational, administrative, management, and support services of a U.S. post office; or coordinate activities of workers engaged in postal and related work in assigned post office.', NULL, NULL, NULL, 0, '0000-00-00'),
(46, '11-9141.00', 'Property, Real Estate, and Community Association Managers', 4, 66, 182, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the selling, buying, leasing, or governance activities of commercial, industrial, or residential real estate properties. Includes managers of homeowner and condominium associations, rented or leased housing units, buildings, or land (including rights-of-way).', NULL, NULL, NULL, 0, '0000-00-00'),
(47, '11-9151.00', 'Social and Community Service Managers', 4, 66, 165, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the activities of a social service program or community outreach organization. Oversee the program or organization\'s budget and policies regarding participant involvement, program requirements, and benefits. Work may involve directing social workers, counselors, or probation officers.', NULL, NULL, NULL, 0, '0000-00-00'),
(48, '11-9161.00', 'Emergency Management Directors', 4, 66, 199, NULL, NULL, NULL, NULL, NULL, 'Plan and direct disaster response or crisis management activities, provide disaster preparedness training, and prepare emergency plans and procedures for natural (e.g., hurricanes, floods, earthquakes), wartime, or technological (e.g., nuclear power plant emergencies or hazardous materials spills) disasters or hostage situations.', NULL, NULL, NULL, 0, '0000-00-00'),
(49, '11-9171.00', 'Funeral Home Managers', 3, 66, 190, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate the services or resources of funeral homes. Includes activities such as determining prices for services or merchandise and managing the facilities of funeral homes.', NULL, NULL, NULL, 0, '0000-00-00'),
(50, '11-9179.00', 'Personal Service Managers, All Other', NULL, 66, 167, NULL, NULL, NULL, NULL, NULL, 'All personal service managers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(51, '11-9179.01', 'Fitness and Wellness Coordinators', 4, 66, 147, NULL, NULL, NULL, NULL, NULL, 'Manage or coordinate fitness and wellness programs and services. Manage and train staff of wellness specialists, health educators, or fitness instructors.', NULL, NULL, NULL, 0, '0000-00-00'),
(52, '11-9179.02', 'Spa Managers', 3, 66, 190, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities of a spa facility. Coordinate programs, schedule and direct staff, and oversee financial activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(53, '11-9199.00', 'Managers, All Other', NULL, 66, 167, NULL, NULL, NULL, NULL, NULL, 'All managers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(54, '11-9199.01', 'Regulatory Affairs Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate production activities of an organization to ensure compliance with regulations and standard operating procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(55, '11-9199.02', 'Compliance Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate activities of an organization to ensure compliance with ethical or regulatory standards.', NULL, NULL, NULL, 0, '0000-00-00'),
(56, '11-9199.08', 'Loss Prevention Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan and direct policies, procedures, or systems to prevent the loss of assets. Determine risk exposure or potential liability, and develop risk control measures.', NULL, NULL, NULL, 0, '0000-00-00'),
(57, '11-9199.09', 'Wind Energy Operations Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Manage wind field operations, including personnel, maintenance activities, financial activities, and planning.', NULL, NULL, NULL, 0, '0000-00-00'),
(58, '11-9199.10', 'Wind Energy Development Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Lead or manage the development and evaluation of potential wind energy business opportunities, including environmental studies, permitting, and proposals. May also manage construction of projects.', NULL, NULL, NULL, 0, '0000-00-00'),
(59, '11-9199.11', 'Brownfield Redevelopment Specialists and Site Managers', 4, 66, 167, NULL, NULL, NULL, NULL, NULL, 'Plan and direct cleanup and redevelopment of contaminated properties for reuse. Does not include properties sufficiently contaminated to qualify as Superfund sites.', NULL, NULL, NULL, 0, '0000-00-00'),
(60, '13-1011.00', 'Agents and Business Managers of Artists, Performers, and Athletes', 4, 54, 189, NULL, NULL, NULL, NULL, NULL, 'Represent and promote artists, performers, and athletes in dealings with current or prospective employers. May handle contract negotiation and other business matters for clients.', NULL, NULL, NULL, 0, '0000-00-00'),
(61, '13-1021.00', 'Buyers and Purchasing Agents, Farm Products', 4, 54, 149, NULL, NULL, NULL, NULL, NULL, 'Purchase farm products either for further processing or resale. Includes tree farm contractors, grain brokers and market operators, grain buyers, and tobacco buyers. May negotiate contracts.', NULL, NULL, NULL, 0, '0000-00-00'),
(62, '13-1022.00', 'Wholesale and Retail Buyers, Except Farm Products', 3, 54, 184, NULL, NULL, NULL, NULL, NULL, 'Buy merchandise or commodities, other than farm products, for resale to consumers at the wholesale or retail level, including both durable and nondurable goods. Analyze past buying trends, sales records, price, and quality of merchandise to determine value and yield. Select, order, and authorize payment for merchandise according to contractual agreements. May conduct meetings with sales personnel and introduce new products. May negotiate contracts. Includes assistant wholesale and retail buyers of nonfarm products.', NULL, NULL, NULL, 0, '0000-00-00'),
(63, '13-1023.00', 'Purchasing Agents, Except Wholesale, Retail, and Farm Products', 4, 54, 180, NULL, NULL, NULL, NULL, NULL, 'Purchase machinery, equipment, tools, parts, supplies, or services necessary for the operation of an establishment. Purchase raw or semifinished materials for manufacturing. May negotiate contracts.', NULL, NULL, NULL, 0, '0000-00-00'),
(64, '13-1031.00', 'Claims Adjusters, Examiners, and Investigators', 4, 54, 172, NULL, NULL, NULL, NULL, NULL, 'Review settled claims to determine that payments and settlements are made in accordance with company practices and procedures. Confer with legal counsel on claims requiring litigation. May also settle insurance claims.', NULL, NULL, NULL, 0, '0000-00-00'),
(65, '13-1032.00', 'Insurance Appraisers, Auto Damage', 3, 54, 172, NULL, NULL, NULL, NULL, NULL, 'Appraise automobile or other vehicle damage to determine repair costs for insurance claim settlement. Prepare insurance forms to indicate repair cost or cost estimates and recommendations. May seek agreement with automotive repair shop on repair costs.', NULL, NULL, NULL, 0, '0000-00-00'),
(66, '13-1041.00', 'Compliance Officers', 3, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Examine, evaluate, and investigate eligibility for or conformity with laws and regulations governing contract compliance of licenses and permits, and perform other compliance and enforcement inspection and analysis activities not classified elsewhere.', NULL, NULL, NULL, 0, '0000-00-00'),
(67, '13-1041.01', 'Environmental Compliance Inspectors', 4, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Inspect and investigate sources of pollution to protect the public and environment and ensure conformance with Federal, State, and local regulations and ordinances.', NULL, NULL, NULL, 0, '0000-00-00'),
(68, '13-1041.03', 'Equal Opportunity Representatives and Officers', 4, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Monitor and evaluate compliance with equal opportunity laws, guidelines, and policies to ensure that employment practices and contracting arrangements give equal opportunity without regard to race, religion, color, national origin, sex, age, or disability.', NULL, NULL, NULL, 0, '0000-00-00'),
(69, '13-1041.04', 'Government Property Inspectors and Investigators', 3, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Investigate or inspect government property to ensure compliance with contract agreements and government regulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(70, '13-1041.06', 'Coroners', 3, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Direct activities such as autopsies, pathological and toxicological analyses, and inquests relating to the investigation of deaths occurring within a legal jurisdiction to determine cause of death or to fix responsibility for accidental, violent, or unexplained deaths.', NULL, NULL, NULL, 0, '0000-00-00'),
(71, '13-1041.07', 'Regulatory Affairs Specialists', 4, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Coordinate and document internal regulatory processes, such as internal audits, inspections, license renewals, or registrations. May compile and prepare materials for submission to regulatory agencies.', NULL, NULL, NULL, 0, '0000-00-00'),
(72, '13-1041.08', 'Customs Brokers', 3, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Prepare customs documentation and ensure that shipments meet all applicable laws to facilitate the import and export of goods. Determine and track duties and taxes payable and process payments on behalf of client. Sign documents under a power of attorney. Represent clients in meetings with customs officials and apply for duty refunds and tariff reclassifications. Coordinate transportation and storage of imported goods.', NULL, NULL, NULL, 0, '0000-00-00'),
(73, '13-1051.00', 'Cost Estimators', 4, 54, 158, NULL, NULL, NULL, NULL, NULL, 'Prepare cost estimates for product manufacturing, construction projects, or services to aid management in bidding on or determining price of product or service. May specialize according to particular service performed or type of product manufactured.', NULL, NULL, NULL, 0, '0000-00-00'),
(74, '13-1071.00', 'Human Resources Specialists', 4, 54, 170, NULL, NULL, NULL, NULL, NULL, 'Recruit, screen, interview, or place individuals within an organization. May perform other activities in multiple human resources areas.', NULL, NULL, NULL, 0, '0000-00-00'),
(75, '13-1074.00', 'Farm Labor Contractors', 2, 54, 149, NULL, NULL, NULL, NULL, NULL, 'Recruit and hire seasonal or temporary agricultural laborers. May transport, house, and provide meals for workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(76, '13-1075.00', 'Labor Relations Specialists', 4, 54, 170, NULL, NULL, NULL, NULL, NULL, 'Resolve disputes between workers and managers, negotiate collective bargaining agreements, or coordinate grievance procedures to handle employee complaints.', NULL, NULL, NULL, 0, '0000-00-00'),
(77, '13-1081.00', 'Logisticians', 4, 54, 177, NULL, NULL, NULL, NULL, NULL, 'Analyze and coordinate the ongoing logistical functions of a firm or organization. Responsible for the entire life cycle of a product, including acquisition, distribution, internal allocation, delivery, and final disposal of resources.', NULL, NULL, NULL, 0, '0000-00-00'),
(78, '13-1081.01', 'Logistics Engineers', 4, 54, 177, NULL, NULL, NULL, NULL, NULL, 'Design or analyze operational solutions for projects such as transportation optimization, network modeling, process and methods analysis, cost containment, capacity enhancement, routing and shipment optimization, or information management.', NULL, NULL, NULL, 0, '0000-00-00'),
(79, '13-1081.02', 'Logistics Analysts', 4, 54, 177, NULL, NULL, NULL, NULL, NULL, 'Analyze product delivery or supply chain processes to identify or recommend changes. May manage route activity including invoicing, electronic bills, and shipment tracing.', NULL, NULL, NULL, 0, '0000-00-00'),
(80, '13-1082.00', 'Project Management Specialists', NULL, 54, 171, NULL, NULL, NULL, NULL, NULL, 'Analyze and coordinate the schedule, timeline, procurement, staffing, and budget of a product or service on a per project basis. Lead and guide the work of technical staff. May serve as a point of contact for the client or customer.', NULL, NULL, NULL, 0, '0000-00-00'),
(81, '13-1111.00', 'Management Analysts', 5, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Conduct organizational studies and evaluations, design systems and procedures, conduct work simplification and measurement studies, and prepare operations and procedures manuals to assist management in operating more efficiently and effectively. Includes program analysts and management consultants.', NULL, NULL, NULL, 0, '0000-00-00'),
(82, '13-1121.00', 'Meeting, Convention, and Event Planners', 4, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Coordinate activities of staff, convention personnel, or clients to make arrangements for group meetings, events, or conventions.', NULL, NULL, NULL, 0, '0000-00-00'),
(83, '13-1131.00', 'Fundraisers', 4, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Organize activities to raise funds or otherwise solicit and gather monetary donations or other gifts for an organization. May design and produce promotional materials. May also raise awareness of the organization\'s work, goals, and financial needs.', NULL, NULL, NULL, 0, '0000-00-00'),
(84, '13-1141.00', 'Compensation, Benefits, and Job Analysis Specialists', 4, 54, 170, NULL, NULL, NULL, NULL, NULL, 'Conduct programs of compensation and benefits and job analysis for employer. May specialize in specific areas, such as position classification and pension programs.', NULL, NULL, NULL, 0, '0000-00-00'),
(85, '13-1151.00', 'Training and Development Specialists', 4, 54, 170, NULL, NULL, NULL, NULL, NULL, 'Design or conduct work-related training and development programs to improve individual skills or organizational performance. May analyze organizational training needs or evaluate training effectiveness.', NULL, NULL, NULL, 0, '0000-00-00'),
(86, '13-1161.00', 'Market Research Analysts and Marketing Specialists', 4, 54, 183, NULL, NULL, NULL, NULL, NULL, 'Research conditions in local, regional, national, or online markets. Gather information to determine potential sales of a product or service, or plan a marketing or advertising campaign. May gather information on competitors, prices, sales, and methods of marketing and distribution. May employ search marketing tactics, analyze web metrics, and develop recommendations to increase search engine ranking and visibility to target markets.', NULL, NULL, NULL, 0, '0000-00-00'),
(87, '13-1161.01', 'Search Marketing Strategists', 4, 54, 171, NULL, NULL, NULL, NULL, NULL, 'Employ search marketing tactics to increase visibility and engagement with content, products, or services in Internet-enabled devices or interfaces. Examine search query behaviors on general or specialty search engines or other Internet-based content. Analyze research, data, or technology to understand user intent and measure outcomes for ongoing optimization.', NULL, NULL, NULL, 0, '0000-00-00'),
(88, '13-1199.00', 'Business Operations Specialists, All Other', NULL, 54, 188, NULL, NULL, NULL, NULL, NULL, 'All business operations specialists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(89, '13-1199.04', 'Business Continuity Planners', 4, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Develop, maintain, or implement business continuity and disaster recovery strategies and solutions, including risk assessments, business impact analyses, strategy selection, and documentation of business continuity and disaster recovery procedures. Plan, conduct, and debrief regular mock-disaster exercises to test the adequacy of existing plans and strategies, updating procedures and plans regularly. Act as a coordinator for continuity efforts after a disruption event.', NULL, NULL, NULL, 0, '0000-00-00'),
(90, '13-1199.05', 'Sustainability Specialists', 4, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Address organizational sustainability issues, such as waste stream management, green building practices, and green procurement plans.', NULL, NULL, NULL, 0, '0000-00-00'),
(91, '13-1199.06', 'Online Merchants', 4, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Conduct retail activities of businesses operating exclusively online. May perform duties such as preparing business strategies, buying merchandise, managing inventory, implementing marketing activities, fulfilling and shipping online orders, and balancing financial records.', NULL, NULL, NULL, 0, '0000-00-00'),
(92, '13-1199.07', 'Security Management Specialists', NULL, 54, 188, NULL, NULL, NULL, NULL, NULL, 'Conduct security assessments for organizations, and design security systems and processes. May specialize in areas such as physical security or the safety of employees and facilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(93, '13-2011.00', 'Accountants and Auditors', 4, 54, 146, NULL, NULL, NULL, NULL, NULL, 'Examine, analyze, and interpret accounting records to prepare financial statements, give advice, or audit and evaluate statements prepared by others. Install or advise on systems of recording costs or other financial and budgetary data.', NULL, NULL, NULL, 0, '0000-00-00'),
(94, '13-2022.00', 'Appraisers of Personal and Business Property', NULL, 54, 204, NULL, NULL, NULL, NULL, NULL, 'Appraise and estimate the fair value of tangible personal or business property, such as jewelry, art, antiques, collectibles, and equipment. May also appraise land.', NULL, NULL, NULL, 0, '0000-00-00'),
(95, '13-2023.00', 'Appraisers and Assessors of Real Estate', 4, 54, 204, NULL, NULL, NULL, NULL, NULL, 'Appraise real estate, exclusively, and estimate its fair value. May assess taxes in accordance with prescribed schedules.', NULL, NULL, NULL, 0, '0000-00-00'),
(96, '13-2031.00', 'Budget Analysts', 4, 54, 152, NULL, NULL, NULL, NULL, NULL, 'Examine budget estimates for completeness, accuracy, and conformance with procedures and regulations. Analyze budgeting and accounting reports.', NULL, NULL, NULL, 0, '0000-00-00'),
(97, '13-2041.00', 'Credit Analysts', 4, 54, 150, NULL, NULL, NULL, NULL, NULL, 'Analyze credit data and financial statements of individuals or firms to determine the degree of risk involved in extending credit or lending money. Prepare reports with credit information for use in decisionmaking.', NULL, NULL, NULL, 0, '0000-00-00'),
(98, '13-2051.00', 'Financial and Investment Analysts', NULL, 54, 207, NULL, NULL, NULL, NULL, NULL, 'Conduct quantitative analyses of information involving investment programs or financial data of public or private institutions, including valuation of businesses.', NULL, NULL, NULL, 0, '0000-00-00'),
(99, '13-2052.00', 'Personal Financial Advisors', 4, 54, 207, NULL, NULL, NULL, NULL, NULL, 'Advise clients on financial plans using knowledge of tax and investment strategies, securities, insurance, pension plans, and real estate. Duties include assessing clients\' assets, liabilities, cash flow, insurance coverage, tax status, and financial objectives. May also buy and sell financial assets for clients.', NULL, NULL, NULL, 0, '0000-00-00'),
(100, '13-2053.00', 'Insurance Underwriters', 4, 54, 172, NULL, NULL, NULL, NULL, NULL, 'Review individual applications for insurance to evaluate degree of risk involved and determine acceptance of applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(101, '13-2054.00', 'Financial Risk Specialists', NULL, 54, 207, NULL, NULL, NULL, NULL, NULL, 'Analyze and measure exposure to credit and market risk threatening the assets, earning capacity, or economic state of an organization. May make recommendations to limit risk.', NULL, NULL, NULL, 0, '0000-00-00'),
(102, '13-2061.00', 'Financial Examiners', 4, 54, 168, NULL, NULL, NULL, NULL, NULL, 'Enforce or ensure compliance with laws and regulations governing financial and securities institutions and financial and real estate transactions. May examine, verify, or authenticate records.', NULL, NULL, NULL, 0, '0000-00-00'),
(103, '13-2071.00', 'Credit Counselors', 4, 54, 155, NULL, NULL, NULL, NULL, NULL, 'Advise and educate individuals or organizations on acquiring and managing debt. May provide guidance in determining the best type of loan and explain loan requirements or restrictions. May help develop debt management plans or student financial aid packages. May advise on credit issues, or provide budget, mortgage, bankruptcy, or student financial aid counseling.', NULL, NULL, NULL, 0, '0000-00-00'),
(104, '13-2072.00', 'Loan Officers', 4, 54, 155, NULL, NULL, NULL, NULL, NULL, 'Evaluate, authorize, or recommend approval of commercial, real estate, or credit loans. Advise borrowers on financial status and payment methods. Includes mortgage loan officers and agents, collection analysts, loan servicing officers, loan underwriters, and payday loan officers.', NULL, NULL, NULL, 0, '0000-00-00'),
(105, '13-2081.00', 'Tax Examiners and Collectors, and Revenue Agents', 3, 54, 204, NULL, NULL, NULL, NULL, NULL, 'Determine tax liability or collect taxes from individuals or business firms according to prescribed laws and regulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(106, '13-2082.00', 'Tax Preparers', 3, 54, 152, NULL, NULL, NULL, NULL, NULL, 'Prepare tax returns for individuals or small businesses.', NULL, NULL, NULL, 0, '0000-00-00'),
(107, '13-2099.00', 'Financial Specialists, All Other', NULL, 54, 207, NULL, NULL, NULL, NULL, NULL, 'All financial specialists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(108, '13-2099.01', 'Financial Quantitative Analysts', 5, 54, 207, NULL, NULL, NULL, NULL, NULL, 'Develop quantitative techniques to inform securities investing, equities investing, pricing, or valuation of financial instruments. Develop mathematical or statistical models for risk management, asset optimization, pricing, or relative value analysis.', NULL, NULL, NULL, 0, '0000-00-00'),
(109, '13-2099.04', 'Fraud Examiners, Investigators and Analysts', 4, 54, 207, NULL, NULL, NULL, NULL, NULL, 'Obtain evidence, take statements, produce reports, and testify to findings regarding resolution of fraud allegations. May coordinate fraud detection and prevention activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(110, '15-1211.00', 'Computer Systems Analysts', 4, 56, 198, NULL, NULL, NULL, NULL, NULL, 'Analyze science, engineering, business, and other data processing problems to develop and implement solutions to complex applications problems, system administration issues, or network concerns. Perform systems management and integration functions, improve existing computer systems, and review computer system capabilities, workflow, and schedule limitations. May analyze or recommend commercially available software.', NULL, NULL, NULL, 0, '0000-00-00'),
(111, '15-1211.01', 'Health Informatics Specialists', 4, 56, 198, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of nursing and informatics to assist in the design, development, and ongoing modification of computerized health care systems. May educate staff and assist in problem solving to promote the implementation of the health care system.', NULL, NULL, NULL, 0, '0000-00-00'),
(112, '15-1212.00', 'Information Security Analysts', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Plan, implement, upgrade, or monitor security measures for the protection of computer networks and information. Assess system vulnerabilities for security risks and propose and implement risk mitigation strategies. May ensure appropriate security controls are in place that will safeguard digital files and vital electronic infrastructure. May respond to computer security breaches and viruses.', NULL, NULL, NULL, 0, '0000-00-00'),
(113, '15-1221.00', 'Computer and Information Research Scientists', 5, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research into fundamental computer and information science as theorists, designers, or inventors. Develop solutions to problems in the field of computer hardware and software.', NULL, NULL, NULL, 0, '0000-00-00'),
(114, '15-1231.00', 'Computer Network Support Specialists', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Analyze, test, troubleshoot, and evaluate existing network systems, such as local area networks (LAN), wide area networks (WAN), cloud networks, servers, and other data communications networks. Perform network maintenance to ensure networks operate correctly with minimal interruption.', NULL, NULL, NULL, 0, '0000-00-00'),
(115, '15-1232.00', 'Computer User Support Specialists', 3, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Provide technical assistance to computer users. Answer questions or resolve computer problems for clients in person, via telephone, or electronically. May provide assistance concerning the use of computer hardware and software, including printing, installation, word processing, electronic mail, and operating systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(116, '15-1241.00', 'Computer Network Architects', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Design and implement computer and information networks, such as local area networks (LAN), wide area networks (WAN), intranets, extranets, and other data communications networks. Perform network modeling, analysis, and planning, including analysis of capacity needs for network infrastructures. May also design network and computer security measures. May research and recommend network and data communications hardware and software.', NULL, NULL, NULL, 0, '0000-00-00'),
(117, '15-1241.01', 'Telecommunications Engineering Specialists', 3, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Design or configure wired, wireless, and satellite communications systems for voice, video, and data services. Supervise installation, service, and maintenance.', NULL, NULL, NULL, 0, '0000-00-00'),
(118, '15-1242.00', 'Database Administrators', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Administer, test, and implement computer databases, applying knowledge of database management systems. Coordinate changes to computer databases. Identify, investigate, and resolve database performance issues, database capacity, and database scalability. May plan, coordinate, and implement security measures to safeguard computer databases.', NULL, NULL, NULL, 0, '0000-00-00'),
(119, '15-1243.00', 'Database Architects', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Design strategies for enterprise databases, data warehouse systems, and multidimensional networks. Set standards for database operations, programming, query processes, and security. Model, design, and construct large relational databases or data warehouses. Create and optimize data models for warehouse infrastructure and workflow. Integrate new systems with existing warehouse structure and refine system performance and functionality.', NULL, NULL, NULL, 0, '0000-00-00'),
(120, '15-1243.01', 'Data Warehousing Specialists', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Design, model, or implement corporate data warehousing activities. Program and configure warehouses of database information and provide support to warehouse users.', NULL, NULL, NULL, 0, '0000-00-00'),
(121, '15-1244.00', 'Network and Computer Systems Administrators', 4, 56, 187, NULL, NULL, NULL, NULL, NULL, 'Install, configure, and maintain an organization\'s local area network (LAN), wide area network (WAN), data communications network, operating systems, and physical and virtual servers. Perform system monitoring and verify the integrity and availability of hardware, network, and server resources and systems. Review system and application logs and verify completion of scheduled jobs, including system backups. Analyze network and server resource consumption and control user access. Install and upgrade software and maintain software licenses. May assist in network modeling, analysis, planning, and coordination between network and data communications hardware and software.', NULL, NULL, NULL, 0, '0000-00-00'),
(122, '15-1251.00', 'Computer Programmers', 4, 56, 198, NULL, NULL, NULL, NULL, NULL, 'Create, modify, and test the code and scripts that allow computer applications to run. Work from specifications drawn up by software and web developers or other individuals. May develop and write computer programs to store, locate, and retrieve specific documents, data, and information.', NULL, NULL, NULL, 0, '0000-00-00'),
(123, '15-1252.00', 'Software Developers', NULL, 56, 198, NULL, NULL, NULL, NULL, NULL, 'Research, design, and develop computer and network software or specialized utility programs. Analyze user needs and develop software solutions, applying principles and techniques of computer science, engineering, and mathematical analysis. Update software or enhance existing software capabilities. May work with computer hardware engineers to integrate hardware and software systems, and develop specifications and performance requirements. May maintain databases within an application area, working individually or coordinating database development as part of a team.', NULL, NULL, NULL, 0, '0000-00-00'),
(124, '15-1253.00', 'Software Quality Assurance Analysts and Testers', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Develop and execute software tests to identify software problems and their causes. Test system modifications to prepare for implementation. Document software and application defects using a bug tracking system and report defects to software or web developers. Create and maintain databases of known defects. May participate in software design reviews to provide input on functional requirements, operational characteristics, product designs, and schedules.', NULL, NULL, NULL, 0, '0000-00-00'),
(125, '15-1254.00', 'Web Developers', 3, 56, 217, NULL, NULL, NULL, NULL, NULL, 'Develop and implement websites, web applications, application databases, and interactive web interfaces. Evaluate code to ensure that it is properly structured, meets industry standards, and is compatible with browsers and devices. Optimize website performance, scalability, and server-side code and processes. May develop website infrastructure and integrate websites with other computer applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(126, '15-1255.00', 'Web and Digital Interface Designers', NULL, 56, 217, NULL, NULL, NULL, NULL, NULL, 'Design digital user interfaces or websites. Develop and test layouts, interfaces, functionality, and navigation menus to ensure compatibility and usability across browsers or devices. May use web framework applications as well as client-side code and processes. May evaluate web design following web and accessibility standards, and may analyze web use metrics and optimize websites for marketability and search engine ranking. May design and test interfaces that facilitate the human-computer interaction and maximize the usability of digital devices, websites, and software with a focus on aesthetics and design. May create graphics used in websites and manage website content and links.', NULL, NULL, NULL, 0, '0000-00-00'),
(127, '15-1255.01', 'Video Game Designers', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Design core features of video games. Specify innovative game and role-play mechanics, story lines, and character biographies. Create and maintain design documentation. Guide and collaborate with production staff to produce games as designed.', NULL, NULL, NULL, 0, '0000-00-00'),
(128, '15-1299.00', 'Computer Occupations, All Other', NULL, 56, 171, NULL, NULL, NULL, NULL, NULL, 'All computer occupations not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(129, '15-1299.01', 'Web Administrators', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Manage web environment design, deployment, development and maintenance activities. Perform testing and quality assurance of web sites and web applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(130, '15-1299.02', 'Geographic Information Systems Technologists and Technicians', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Assist scientists or related professionals in building, maintaining, modifying, or using geographic information systems (GIS) databases. May also perform some custom application development or provide user support.', NULL, NULL, NULL, 0, '0000-00-00'),
(131, '15-1299.03', 'Document Management Specialists', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Implement and administer enterprise-wide document management systems and related procedures that allow organizations to capture, store, retrieve, share, and destroy electronic records and documents.', NULL, NULL, NULL, 0, '0000-00-00'),
(132, '15-1299.04', 'Penetration Testers', NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Evaluate network system security by conducting simulated internal and external cyberattacks using adversary tools and techniques. Attempt to breach and exploit critical systems and gain access to sensitive information to assess system security.', NULL, NULL, NULL, 0, '0000-00-00'),
(133, '15-1299.05', 'Information Security Engineers', NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Develop and oversee the implementation of information security procedures and policies. Build, maintain and upgrade security technology, such as firewalls, for the safe use of computer networks and the transmission and retrieval of information. Design and implement appropriate security controls to identify vulnerabilities and protect digital files and electronic infrastructures. Monitor and respond to computer security breaches, viruses, and intrusions, and perform forensic investigation. May oversee the assessment of information security systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(134, '15-1299.06', 'Digital Forensics Analysts', NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Conduct investigations on computer-based crimes establishing documentary or physical evidence, such as digital media and logs associated with cyber intrusion incidents. Analyze digital evidence and investigate computer security incidents to derive information in support of system and network vulnerability mitigation. Preserve and present computer-related evidence in support of criminal, fraud, counterintelligence, or law enforcement investigations.', NULL, NULL, NULL, 0, '0000-00-00'),
(135, '15-1299.07', 'Blockchain Engineers', NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 'Maintain and support distributed and decentralized blockchain-based networks or block-chain applications such as cryptocurrency exchange, payment processing, document sharing, and digital voting. Design and deploy secure block-chain design patterns and solutions over geographically distributed networks using advanced technologies. May assist with infrastructure setup and testing for application transparency and security.', NULL, NULL, NULL, 0, '0000-00-00'),
(136, '15-1299.08', 'Computer Systems Engineers/Architects', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Design and develop solutions to complex applications problems, system administration issues, or network concerns. Perform systems management and integration functions.', NULL, NULL, NULL, 0, '0000-00-00'),
(137, '15-1299.09', 'Information Technology Project Managers', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Plan, initiate, and manage information technology (IT) projects. Lead and guide the work of technical staff. Serve as liaison between business and technical aspects of projects. Plan project stages and assess business implications for each stage. Monitor progress to assure deadlines, standards, and cost targets are met.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(138, '15-2011.00', 'Actuaries', 4, 56, 172, NULL, NULL, NULL, NULL, NULL, 'Analyze statistical data, such as mortality, accident, sickness, disability, and retirement rates and construct probability tables to forecast risk and liability for payment of future benefits. May ascertain insurance rates required and cash reserves necessary to ensure payment of future benefits.', NULL, NULL, NULL, 0, '0000-00-00'),
(139, '15-2021.00', 'Mathematicians', 5, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research in fundamental mathematics or in application of mathematical techniques to science, management, and other fields. Solve problems in various fields using mathematical methods.', NULL, NULL, NULL, 0, '0000-00-00'),
(140, '15-2031.00', 'Operations Research Analysts', 5, 56, 188, NULL, NULL, NULL, NULL, NULL, 'Formulate and apply mathematical modeling and other optimizing methods to develop and interpret information that assists management with decisionmaking, policy formulation, or other managerial functions. May collect and analyze data and develop decision support software, services, or products. May develop and supply optimal time, cost, or logistics networks for program evaluation, review, or implementation.', NULL, NULL, NULL, 0, '0000-00-00'),
(141, '15-2041.00', 'Statisticians', 5, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Develop or apply mathematical or statistical theory and methods to collect, organize, interpret, and summarize numerical data to provide usable information. May specialize in fields such as biostatistics, agricultural statistics, business statistics, or economic statistics. Includes mathematical and survey statisticians.', NULL, NULL, NULL, 0, '0000-00-00'),
(142, '15-2041.01', 'Biostatisticians', 5, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Develop and apply biostatistical theory and methods to the study of life sciences.', NULL, NULL, NULL, 0, '0000-00-00'),
(143, '15-2051.00', 'Data Scientists', NULL, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Develop and implement a set of techniques or analytics applications to transform raw data into meaningful information using data-oriented programming languages and visualization software. Apply data mining, data modeling, natural language processing, and machine learning to extract and analyze information from large structured and unstructured datasets. Visualize, interpret, and report data findings. May create dynamic data reports.', NULL, NULL, NULL, 0, '0000-00-00'),
(144, '15-2051.01', 'Business Intelligence Analysts', 4, 56, 171, NULL, NULL, NULL, NULL, NULL, 'Produce financial and market intelligence by querying data repositories and generating periodic reports. Devise methods for identifying data patterns and trends in available information sources.', NULL, NULL, NULL, 0, '0000-00-00'),
(145, '15-2051.02', 'Clinical Data Managers', 4, 56, 206, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of health care and database management to analyze clinical data, and to identify and report trends.', NULL, NULL, NULL, 0, '0000-00-00'),
(146, '15-2099.00', 'Mathematical Science Occupations, All Other', NULL, 56, 206, NULL, NULL, NULL, NULL, NULL, 'All mathematical scientists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(147, '15-2099.01', 'Bioinformatics Technicians', 4, 56, 191, NULL, NULL, NULL, NULL, NULL, 'Apply principles and methods of bioinformatics to assist scientists in areas such as pharmaceuticals, medical technology, biotechnology, computational biology, proteomics, computer information science, biology and medical informatics. Apply bioinformatics tools to visualize, analyze, manipulate or interpret molecular data. May build and maintain databases for processing and analyzing genomic or other biological information.', NULL, NULL, NULL, 0, '0000-00-00'),
(148, '17-1011.00', 'Architects, Except Landscape and Naval', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Plan and design structures, such as private residences, office buildings, theaters, factories, and other structural property.', NULL, NULL, NULL, 0, '0000-00-00'),
(149, '17-1012.00', 'Landscape Architects', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Plan and design land areas for projects such as parks and other recreational facilities, airports, highways, hospitals, schools, land subdivisions, and commercial, industrial, and residential sites.', NULL, NULL, NULL, 0, '0000-00-00'),
(150, '17-1021.00', 'Cartographers and Photogrammetrists', 4, 51, 206, NULL, NULL, NULL, NULL, NULL, 'Research, study, and prepare maps and other spatial data in digital or graphic form for one or more purposes, such as legal, social, political, educational, and design purposes. May work with Geographic Information Systems (GIS). May design and evaluate algorithms, data structures, and user interfaces for GIS and mapping systems. May collect, analyze, and interpret geographic information provided by geodetic surveys, aerial photographs, and satellite data.', NULL, NULL, NULL, 0, '0000-00-00'),
(151, '17-1022.00', 'Surveyors', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Make exact measurements and determine property boundaries. Provide data relevant to the shape, contour, gravitation, location, elevation, or dimension of land or land features on or near the earth\'s surface for engineering, mapmaking, mining, land evaluation, construction, and other purposes.', NULL, NULL, NULL, 0, '0000-00-00'),
(152, '17-1022.01', 'Geodetic Surveyors', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Measure large areas of the Earth\'s surface using satellite observations, global navigation satellite systems (GNSS), light detection and ranging (LIDAR), or related sources.', NULL, NULL, NULL, 0, '0000-00-00'),
(153, '17-2011.00', 'Aerospace Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Perform engineering duties in designing, constructing, and testing aircraft, missiles, and spacecraft. May conduct basic and applied research to evaluate adaptability of materials and equipment to aircraft design and manufacture. May recommend improvements in testing equipment and techniques.', NULL, NULL, NULL, 0, '0000-00-00'),
(154, '17-2021.00', 'Agricultural Engineers', 4, 51, 193, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of engineering technology and biological science to agricultural problems concerned with power and machinery, electrification, structures, soil and water conservation, and processing of agricultural products.', NULL, NULL, NULL, 0, '0000-00-00'),
(155, '17-2031.00', 'Bioengineers and Biomedical Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of engineering, biology, chemistry, computer science, and biomechanical principles to the design, development, and evaluation of biological, agricultural, and health systems and products, such as artificial organs, prostheses, instrumentation, medical information systems, and health management and care delivery systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(156, '17-2041.00', 'Chemical Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design chemical plant equipment and devise processes for manufacturing chemicals and products, such as gasoline, synthetic rubber, plastics, detergents, cement, paper, and pulp, by applying principles and technology of chemistry, physics, and engineering.', NULL, NULL, NULL, 0, '0000-00-00'),
(157, '17-2051.00', 'Civil Engineers', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Perform engineering duties in planning, designing, and overseeing construction and maintenance of building structures and facilities, such as roads, railroads, airports, bridges, harbors, channels, dams, irrigation projects, pipelines, power plants, and water and sewage systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(158, '17-2051.01', 'Transportation Engineers', 4, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Develop plans for surface transportation projects, according to established engineering standards and state or federal construction policy. Prepare designs, specifications, or estimates for transportation facilities. Plan modifications of existing streets, highways, or freeways to improve traffic flow.', NULL, NULL, NULL, 0, '0000-00-00'),
(159, '17-2051.02', 'Water/Wastewater Engineers', 4, 51, 163, NULL, NULL, NULL, NULL, NULL, 'Design or oversee projects involving provision of potable water, disposal of wastewater and sewage, or prevention of flood-related damage. Prepare environmental documentation for water resources, regulatory program compliance, data management and analysis, and field work. Perform hydraulic modeling and pipeline design.', NULL, NULL, NULL, 0, '0000-00-00'),
(160, '17-2061.00', 'Computer Hardware Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, or test computer or computer-related equipment for commercial, industrial, military, or scientific use. May supervise the manufacturing and installation of computer or computer-related equipment and components.', NULL, NULL, NULL, 0, '0000-00-00'),
(161, '17-2071.00', 'Electrical Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, test, or supervise the manufacturing and installation of electrical equipment, components, or systems for commercial, industrial, military, or scientific use.', NULL, NULL, NULL, 0, '0000-00-00'),
(162, '17-2072.00', 'Electronics Engineers, Except Computer', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, or test electronic components and systems for commercial, industrial, military, or scientific use employing knowledge of electronic theory and materials properties. Design electronic circuits and components for use in fields such as telecommunications, aerospace guidance and propulsion control, acoustics, or instruments and controls.', NULL, NULL, NULL, 0, '0000-00-00'),
(163, '17-2072.01', 'Radio Frequency Identification Device Specialists', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design and implement radio frequency identification device (RFID) systems used to track shipments or goods.', NULL, NULL, NULL, 0, '0000-00-00'),
(164, '17-2081.00', 'Environmental Engineers', 4, 51, 163, NULL, NULL, NULL, NULL, NULL, 'Research, design, plan, or perform engineering duties in the prevention, control, and remediation of environmental hazards using various engineering disciplines. Work may include waste treatment, site remediation, or pollution control technology.', NULL, NULL, NULL, 0, '0000-00-00'),
(165, '17-2111.00', 'Health and Safety Engineers, Except Mining Safety Engineers and Inspectors', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Promote worksite or product safety by applying knowledge of industrial processes, mechanics, chemistry, psychology, and industrial health and safety laws. Includes industrial product safety engineers.', NULL, NULL, NULL, 0, '0000-00-00'),
(166, '17-2111.02', 'Fire-Prevention and Protection Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research causes of fires, determine fire protection methods, and design or recommend materials or equipment such as structural components or fire-detection equipment to assist organizations in safeguarding life and property against fire, explosion, and related hazards.', NULL, NULL, NULL, 0, '0000-00-00'),
(167, '17-2112.00', 'Industrial Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, develop, test, and evaluate integrated systems for managing industrial production processes, including human work factors, quality control, inventory control, logistics and material flow, cost analysis, and production coordination.', NULL, NULL, NULL, 0, '0000-00-00'),
(168, '17-2112.01', 'Human Factors Engineers and Ergonomists', 5, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design objects, facilities, and environments to optimize human well-being and overall system performance, applying theory, principles, and data regarding the relationship between humans and respective technology. Investigate and analyze characteristics of human behavior and performance as it relates to the use of technology.', NULL, NULL, NULL, 0, '0000-00-00'),
(169, '17-2112.02', 'Validation Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design or plan protocols for equipment or processes to produce products meeting internal and external purity, safety, and quality requirements.', NULL, NULL, NULL, 0, '0000-00-00'),
(170, '17-2112.03', 'Manufacturing Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, integrate, or improve manufacturing systems or related processes. May work with commercial or industrial designers to refine product designs to increase producibility and decrease costs.', NULL, NULL, NULL, 0, '0000-00-00'),
(171, '17-2121.00', 'Marine Engineers and Naval Architects', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, develop, and evaluate the operation of marine vessels, ship machinery, and related equipment, such as power supply and propulsion systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(172, '17-2131.00', 'Materials Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Evaluate materials and develop machinery and processes to manufacture materials for use in products that must meet specialized design and performance specifications. Develop new uses for known materials. Includes those engineers working with composite materials or specializing in one type of material, such as graphite, metal and metal alloys, ceramics and glass, plastics and polymers, and naturally occurring materials. Includes metallurgists and metallurgical engineers, ceramic engineers, and welding engineers.', NULL, NULL, NULL, 0, '0000-00-00'),
(173, '17-2141.00', 'Mechanical Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Perform engineering duties in planning and designing tools, engines, machines, and other mechanically functioning equipment. Oversee installation, operation, maintenance, and repair of equipment such as centralized heat, gas, water, and steam systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(174, '17-2141.01', 'Fuel Cell Engineers', 5, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, evaluate, modify, or construct fuel cell components or systems for transportation, stationary, or portable applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(175, '17-2141.02', 'Automotive Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Develop new or improved designs for vehicle structural members, engines, transmissions, or other vehicle systems, using computer-assisted design technology. Direct building, modification, or testing of vehicle or components.', NULL, NULL, NULL, 0, '0000-00-00'),
(176, '17-2151.00', 'Mining and Geological Engineers, Including Mining Safety Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Conduct subsurface surveys to identify the characteristics of potential land or mining development sites. May specify the ground support systems, processes, and equipment for safe, economical, and environmentally sound extraction or underground construction activities. May inspect areas for unsafe geological conditions, equipment, and working conditions. May design, implement, and coordinate mine safety programs.', NULL, NULL, NULL, 0, '0000-00-00'),
(177, '17-2161.00', 'Nuclear Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Conduct research on nuclear engineering projects or apply principles and theory of nuclear science to problems concerned with release, control, and use of nuclear energy and nuclear waste disposal.', NULL, NULL, NULL, 0, '0000-00-00'),
(178, '17-2171.00', 'Petroleum Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Devise methods to improve oil and gas extraction and production and determine the need for new or modified tool designs. Oversee drilling and offer technical advice.', NULL, NULL, NULL, 0, '0000-00-00'),
(179, '17-2199.00', 'Engineers, All Other', NULL, 51, 162, NULL, NULL, NULL, NULL, NULL, 'All engineers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(180, '17-2199.03', 'Energy Engineers, Except Wind and Solar', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, develop, or evaluate energy-related projects or programs to reduce energy costs or improve energy efficiency during the designing, building, or remodeling stages of construction. May specialize in electrical systems; heating, ventilation, and air-conditioning (HVAC) systems; green buildings; lighting; air quality; or energy procurement.', NULL, NULL, NULL, 0, '0000-00-00'),
(181, '17-2199.05', 'Mechatronics Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, or test automation, intelligent systems, smart devices, or industrial systems control.', NULL, NULL, NULL, 0, '0000-00-00'),
(182, '17-2199.06', 'Microsystems Engineers', 5, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, or test microelectromechanical systems (MEMS) devices.', NULL, NULL, NULL, 0, '0000-00-00'),
(183, '17-2199.07', 'Photonics Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design technologies specializing in light information or light energy, such as laser or fiber optics technology.', NULL, NULL, NULL, 0, '0000-00-00'),
(184, '17-2199.08', 'Robotics Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Research, design, develop, or test robotic applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(185, '17-2199.09', 'Nanosystems Engineers', 5, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design, develop, or supervise the production of materials, devices, or systems of unique molecular or macromolecular composition, applying principles of nanoscale physics and electrical, chemical, or biological engineering.', NULL, NULL, NULL, 0, '0000-00-00'),
(186, '17-2199.10', 'Wind Energy Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Design underground or overhead wind farm collector systems and prepare and develop site specifications.', NULL, NULL, NULL, 0, '0000-00-00'),
(187, '17-2199.11', 'Solar Energy Systems Engineers', 4, 51, 162, NULL, NULL, NULL, NULL, NULL, 'Perform site-specific engineering analysis or evaluation of energy efficiency and solar projects involving residential, commercial, or industrial customers. Design solar domestic hot water and space heating systems for new and existing structures, applying knowledge of structural energy requirements, local climates, solar technology, and thermodynamics.', NULL, NULL, NULL, 0, '0000-00-00'),
(188, '17-3011.00', 'Architectural and Civil Drafters', 3, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Prepare detailed drawings of architectural and structural features of buildings or drawings and topographical relief maps used in civil engineering projects, such as highways, bridges, and public works. Use knowledge of building materials, engineering practices, and mathematics to complete drawings.', NULL, NULL, NULL, 0, '0000-00-00'),
(189, '17-3012.00', 'Electrical and Electronics Drafters', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Prepare wiring diagrams, circuit board assembly diagrams, and layout drawings used for the manufacture, installation, or repair of electrical equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(190, '17-3013.00', 'Mechanical Drafters', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Prepare detailed working diagrams of machinery and mechanical devices, including dimensions, fastening methods, and other engineering information.', NULL, NULL, NULL, 0, '0000-00-00'),
(191, '17-3019.00', 'Drafters, All Other', NULL, 51, 180, NULL, NULL, NULL, NULL, NULL, 'All drafters not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(192, '17-3021.00', 'Aerospace Engineering and Operations Technologists and Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Operate, install, adjust, and maintain integrated computer/communications systems, consoles, simulators, and other data acquisition, test, and measurement instruments and equipment, which are used to launch, track, position, and evaluate air and space vehicles. May record and interpret test data.', NULL, NULL, NULL, 0, '0000-00-00'),
(193, '17-3022.00', 'Civil Engineering Technologists and Technicians', 3, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Apply theory and principles of civil engineering in planning, designing, and overseeing construction and maintenance of structures and facilities under the direction of engineering staff or physical scientists.', NULL, NULL, NULL, 0, '0000-00-00'),
(194, '17-3023.00', 'Electrical and Electronic Engineering Technologists and Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Apply electrical and electronic theory and related knowledge, usually under the direction of engineering staff, to design, build, repair, adjust, and modify electrical components, circuitry, controls, and machinery for subsequent evaluation and use by engineering staff in making engineering design decisions.', NULL, NULL, NULL, 0, '0000-00-00'),
(195, '17-3024.00', 'Electro-Mechanical and Mechatronics Technologists and Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Operate, test, maintain, or adjust unmanned, automated, servomechanical, or electromechanical equipment. May operate unmanned submarines, aircraft, or other equipment to observe or record visual information at sites such as oil rigs, crop fields, buildings, or for similar infrastructure, deep ocean exploration, or hazardous waste removal. May assist engineers in testing and designing robotics equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(196, '17-3024.01', 'Robotics Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Build, install, test, or maintain robotic equipment or related automated production systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(197, '17-3025.00', 'Environmental Engineering Technologists and Technicians', 4, 51, 163, NULL, NULL, NULL, NULL, NULL, 'Apply theory and principles of environmental engineering to modify, test, and operate equipment and devices used in the prevention, control, and remediation of environmental problems, including waste treatment and site remediation, under the direction of engineering staff or scientists. May assist in the development of environmental remediation devices.', NULL, NULL, NULL, 0, '0000-00-00'),
(198, '17-3026.00', 'Industrial Engineering Technologists and Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Apply engineering theory and principles to problems of industrial layout or manufacturing production, usually under the direction of engineering staff. May perform time and motion studies on worker operations in a variety of industries for purposes such as establishing standard production rates or improving efficiency.', NULL, NULL, NULL, 0, '0000-00-00'),
(199, '17-3026.01', 'Nanotechnology Engineering Technologists and Technicians', 4, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Implement production processes and operate commercial-scale production equipment to produce, test, or modify materials, devices, or systems of unique molecular or macromolecular composition. Operate advanced microscopy equipment to manipulate nanoscale objects. Work under the supervision of nanoengineering staff.', NULL, NULL, NULL, 0, '0000-00-00'),
(200, '17-3027.00', 'Mechanical Engineering Technologists and Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Apply theory and principles of mechanical engineering to modify, develop, test, or adjust machinery and equipment under direction of engineering staff or physical scientists.', NULL, NULL, NULL, 0, '0000-00-00'),
(201, '17-3027.01', 'Automotive Engineering Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Assist engineers in determining the practicality of proposed product design changes and plan and carry out tests on experimental test devices or equipment for performance, durability, or efficiency.', NULL, NULL, NULL, 0, '0000-00-00'),
(202, '17-3028.00', 'Calibration Technologists and Technicians', NULL, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Execute or adapt procedures and techniques for calibrating measurement devices, by applying knowledge of measurement science, mathematics, physics, chemistry, and electronics, sometimes under the direction of engineering staff. Determine measurement standard suitability for calibrating measurement devices. May perform preventive maintenance on equipment. May perform corrective actions to address identified calibration problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(203, '17-3029.00', 'Engineering Technologists and Technicians, Except Drafters, All Other', NULL, 51, 185, NULL, NULL, NULL, NULL, NULL, 'All engineering technologists and technicians, except drafters, not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(204, '17-3029.01', 'Non-Destructive Testing Specialists', 2, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Test the safety of structures, vehicles, or vessels using x-ray, ultrasound, fiber optic or related equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(205, '17-3029.08', 'Photonics Technicians', 3, 51, 180, NULL, NULL, NULL, NULL, NULL, 'Build, install, test, or maintain optical or fiber optic equipment, such as lasers, lenses, or mirrors, using spectrometers, interferometers, or related equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(206, '17-3031.00', 'Surveying and Mapping Technicians', 3, 51, 158, NULL, NULL, NULL, NULL, NULL, 'Perform surveying and mapping duties, usually under the direction of an engineer, surveyor, cartographer, or photogrammetrist, to obtain data used for construction, mapmaking, boundary location, mining, or other purposes. May calculate mapmaking information and create maps from source data, such as surveying notes, aerial photography, satellite data, or other maps to show topographical features, political boundaries, and other features. May verify accuracy and completeness of maps.', NULL, NULL, NULL, 0, '0000-00-00'),
(207, '19-1011.00', 'Animal Scientists', 5, 65, 218, NULL, NULL, NULL, NULL, NULL, 'Conduct research in the genetics, nutrition, reproduction, growth, and development of domestic farm animals.', NULL, NULL, NULL, 0, '0000-00-00'),
(208, '19-1012.00', 'Food Scientists and Technologists', 4, 65, 166, NULL, NULL, NULL, NULL, NULL, 'Use chemistry, microbiology, engineering, and other sciences to study the principles underlying the processing and deterioration of foods; analyze food content to determine levels of vitamins, fat, sugar, and protein; discover new food sources; research ways to make processed foods safe, palatable, and healthful; and apply food science knowledge to determine best ways to process, package, preserve, store, and distribute food.', NULL, NULL, NULL, 0, '0000-00-00'),
(209, '19-1013.00', 'Soil and Plant Scientists', 5, 65, 192, NULL, NULL, NULL, NULL, NULL, 'Conduct research in breeding, physiology, production, yield, and management of crops and agricultural plants or trees, shrubs, and nursery stock, their growth in soils, and control of pests; or study the chemical, physical, biological, and mineralogical composition of soils as they relate to plant or crop growth. May classify and map soils and investigate effects of alternative practices on soil and crop productivity.', NULL, NULL, NULL, 0, '0000-00-00'),
(210, '19-1021.00', 'Biochemists and Biophysicists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study the chemical composition or physical principles of living cells and organisms, their electrical and mechanical energy, and related phenomena. May conduct research to further understanding of the complex chemical combinations and reactions involved in metabolism, reproduction, growth, and heredity. May determine the effects of foods, drugs, serums, hormones, and other substances on tissues and vital processes of living organisms.', NULL, NULL, NULL, 0, '0000-00-00'),
(211, '19-1022.00', 'Microbiologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Investigate the growth, structure, development, and other characteristics of microscopic organisms, such as bacteria, algae, or fungi. Includes medical microbiologists who study the relationship between organisms and disease or the effects of antibiotics on microorganisms.', NULL, NULL, NULL, 0, '0000-00-00'),
(212, '19-1023.00', 'Zoologists and Wildlife Biologists', 5, 65, 186, NULL, NULL, NULL, NULL, NULL, 'Study the origins, behavior, diseases, genetics, and life processes of animals and wildlife. May specialize in wildlife research and management. May collect and analyze biological data to determine the environmental effects of present and potential use of land and water habitats.', NULL, NULL, NULL, 0, '0000-00-00'),
(213, '19-1029.00', 'Biological Scientists, All Other', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'All biological scientists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(214, '19-1029.01', 'Bioinformatics Scientists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research using bioinformatics theory and methods in areas such as pharmaceuticals, medical technology, biotechnology, computational biology, proteomics, computer information science, biology and medical informatics. May design databases and develop algorithms for processing and analyzing genomic information, or other biological information.', NULL, NULL, NULL, 0, '0000-00-00'),
(215, '19-1029.02', 'Molecular and Cellular Biologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research and study cellular molecules and organelles to understand cell function and organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(216, '19-1029.03', 'Geneticists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research and study the inheritance of traits at the molecular, organism or population level. May evaluate or treat patients with genetic disorders.', NULL, NULL, NULL, 0, '0000-00-00'),
(217, '19-1029.04', 'Biologists', 5, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'Research or study basic principles of plant and animal life, such as origin, relationship, development, anatomy, and functions.', NULL, NULL, NULL, 0, '0000-00-00'),
(218, '19-1031.00', 'Conservation Scientists', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Manage, improve, and protect natural resources to maximize their use without damaging the environment. May conduct soil surveys and develop plans to eliminate soil erosion or to protect rangelands. May instruct farmers, agricultural production managers, or ranchers in best ways to use crop rotation, contour plowing, or terracing to conserve soil and water; in the number and kind of livestock and forage plants best suited to particular ranges; and in range and farm improvements, such as fencing and reservoirs for stock watering.', NULL, NULL, NULL, 0, '0000-00-00'),
(219, '19-1031.02', 'Range Managers', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research or study range land management practices to provide sustained production of forage, livestock, and wildlife.', NULL, NULL, NULL, 0, '0000-00-00'),
(220, '19-1031.03', 'Park Naturalists', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Plan, develop, and conduct programs to inform public of historical, natural, and scientific features of national, state, or local park.', NULL, NULL, NULL, 0, '0000-00-00'),
(221, '19-1032.00', 'Foresters', 4, 65, 186, NULL, NULL, NULL, NULL, NULL, 'Manage public and private forested lands for economic, recreational, and conservation purposes. May inventory the type, amount, and location of standing timber, appraise the timber\'s worth, negotiate the purchase, and draw up contracts for procurement. May determine how to conserve wildlife habitats, creek beds, water quality, and soil stability, and how best to comply with environmental regulations. May devise plans for planting and growing new trees, monitor trees for healthy growth, and determine optimal harvesting schedules.', NULL, NULL, NULL, 0, '0000-00-00'),
(222, '19-1041.00', 'Epidemiologists', 5, 65, 159, NULL, NULL, NULL, NULL, NULL, 'Investigate and describe the determinants and distribution of disease, disability, or health outcomes. May develop the means for prevention and control.', NULL, NULL, NULL, 0, '0000-00-00'),
(223, '19-1042.00', 'Medical Scientists, Except Epidemiologists', 5, 65, 151, NULL, NULL, NULL, NULL, NULL, 'Conduct research dealing with the understanding of human diseases and the improvement of human health. Engage in clinical investigation, research and development, or other related activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(224, '19-1099.00', 'Life Scientists, All Other', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'All life scientists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(225, '19-2011.00', 'Astronomers', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Observe, research, and interpret astronomical phenomena to increase basic knowledge or apply such information to practical problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(226, '19-2012.00', 'Physicists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research into physical phenomena, develop theories on the basis of observation and experiments, and devise methods to apply physical laws and theories.', NULL, NULL, NULL, 0, '0000-00-00'),
(227, '19-2021.00', 'Atmospheric and Space Scientists', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Investigate atmospheric phenomena and interpret meteorological data, gathered by surface and air stations, satellites, and radar to prepare reports and forecasts for public and other uses. Includes weather analysts and forecasters whose functions require the detailed knowledge of meteorology.', NULL, NULL, NULL, 0, '0000-00-00'),
(228, '19-2031.00', 'Chemists', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct qualitative and quantitative chemical analyses or experiments in laboratories for quality or process control or to develop new products or knowledge.', NULL, NULL, NULL, 0, '0000-00-00'),
(229, '19-2032.00', 'Materials Scientists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research and study the structures and chemical properties of various natural and synthetic or composite materials, including metals, alloys, rubber, ceramics, semiconductors, polymers, and glass. Determine ways to strengthen or combine materials or develop new materials with new or specific properties for use in a variety of products and applications. Includes glass scientists, ceramic scientists, metallurgical scientists, and polymer scientists.', NULL, NULL, NULL, 0, '0000-00-00'),
(230, '19-2041.00', 'Environmental Scientists and Specialists, Including Health', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research or perform investigation for the purpose of identifying, abating, or eliminating sources of pollutants or hazards that affect either the environment or public health. Using knowledge of various scientific disciplines, may collect, synthesize, study, report, and recommend action based on data derived from measurements or observations of air, food, soil, water, and other sources.', NULL, NULL, NULL, 0, '0000-00-00'),
(231, '19-2041.01', 'Climate Change Policy Analysts', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research and analyze policy developments related to climate change. Make climate-related recommendations for actions such as legislation, awareness campaigns, or fundraising approaches.', NULL, NULL, NULL, 0, '0000-00-00'),
(232, '19-2041.02', 'Environmental Restoration Planners', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Collaborate with field and biology staff to oversee the implementation of restoration projects and to develop new products. Process and synthesize complex scientific data into practical strategies for restoration, monitoring or management.', NULL, NULL, NULL, 0, '0000-00-00'),
(233, '19-2041.03', 'Industrial Ecologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Apply principles and processes of natural ecosystems to develop models for efficient industrial systems. Use knowledge from the physical and social sciences to maximize effective use of natural resources in the production and use of goods and services. Examine societal issues and their relationship with both technical systems and the environment.', NULL, NULL, NULL, 0, '0000-00-00'),
(234, '19-2042.00', 'Geoscientists, Except Hydrologists and Geographers', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study the composition, structure, and other physical aspects of the Earth. May use geological, physics, and mathematics knowledge in exploration for oil, gas, minerals, or underground water; or in waste disposal, land reclamation, or other environmental problems. May study the Earth\'s internal composition, atmospheres, and oceans, and its magnetic, electrical, and gravitational forces. Includes mineralogists, paleontologists, stratigraphers, geodesists, and seismologists.', NULL, NULL, NULL, 0, '0000-00-00'),
(235, '19-2043.00', 'Hydrologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research the distribution, circulation, and physical properties of underground and surface waters; and study the form and intensity of precipitation and its rate of infiltration into the soil, movement through the earth, and return to the ocean and atmosphere.', NULL, NULL, NULL, 0, '0000-00-00'),
(236, '19-2099.00', 'Physical Scientists, All Other', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'All physical scientists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(237, '19-2099.01', 'Remote Sensing Scientists and Technologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Apply remote sensing principles and methods to analyze data and solve problems in areas such as natural resource management, urban planning, or homeland security. May develop new sensor systems, analytical techniques, or new applications for existing systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(238, '19-3011.00', 'Economists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct research, prepare reports, or formulate plans to address economic problems related to the production and distribution of goods and services or monetary and fiscal policy. May collect and process economic and statistical data using sampling techniques and econometric methods.', NULL, NULL, NULL, 0, '0000-00-00'),
(239, '19-3011.01', 'Environmental Economists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct economic analysis related to environmental protection and use of the natural environment, such as water, air, land, and renewable energy resources. Evaluate and quantify benefits, costs, incentives, and impacts of alternative options using economic principles and statistical techniques.', NULL, NULL, NULL, 0, '0000-00-00'),
(240, '19-3022.00', 'Survey Researchers', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Plan, develop, or conduct surveys. May analyze and interpret the meaning of survey data, determine survey objectives, or suggest or test question wording. Includes social scientists who primarily design questionnaires or supervise survey teams.', NULL, NULL, NULL, 0, '0000-00-00'),
(241, '19-3032.00', 'Industrial-Organizational Psychologists', 5, 65, 157, NULL, NULL, NULL, NULL, NULL, 'Apply principles of psychology to human resources, administration, management, sales, and marketing problems. Activities may include policy planning; employee testing and selection, training, and development; and organizational development and analysis. May work with management to organize the work setting to improve worker productivity.', NULL, NULL, NULL, 0, '0000-00-00'),
(242, '19-3033.00', 'Clinical and Counseling Psychologists', 5, 65, 157, NULL, NULL, NULL, NULL, NULL, 'Assess, diagnose, and treat mental and emotional disorders of individuals through observation, interview, and psychological tests. Help individuals with distress or maladjustment understand their problems through their knowledge of case history, interviews with patients, and theory. Provide individual or group counseling services to assist individuals in achieving more effective personal, social, educational, and vocational development and adjustment. May design behavior modification programs and consult with medical personnel regarding the best treatment for patients.', NULL, NULL, NULL, 0, '0000-00-00'),
(243, '19-3034.00', 'School Psychologists', 5, 65, 157, NULL, NULL, NULL, NULL, NULL, 'Diagnose and implement individual or schoolwide interventions or strategies to address educational, behavioral, or developmental issues that adversely impact educational functioning in a school. May address student learning and behavioral problems and counsel students or families. May design and implement performance plans, and evaluate performance. May consult with other school-based personnel.', NULL, NULL, NULL, 0, '0000-00-00'),
(244, '19-3039.00', 'Psychologists, All Other', NULL, 65, 157, NULL, NULL, NULL, NULL, NULL, 'All psychologists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(245, '19-3039.02', 'Neuropsychologists', NULL, 65, 157, NULL, NULL, NULL, NULL, NULL, 'Apply theories and principles of neuropsychology to evaluate and diagnose disorders of higher cerebral functioning, often in research and medical settings. Study the human brain and the effect of physiological states on human cognition and behavior. May formulate and administer programs of treatment.', NULL, NULL, NULL, 0, '0000-00-00'),
(246, '19-3039.03', 'Clinical Neuropsychologists', NULL, 65, 157, NULL, NULL, NULL, NULL, NULL, 'Assess and diagnose patients with neurobehavioral problems related to acquired or developmental disorders of the nervous system, such as neurodegenerative disorders, traumatic brain injury, seizure disorders, and learning disabilities. Recommend treatment after diagnosis, such as therapy, medication, or surgery. Assist with evaluation before and after neurosurgical procedures, such as deep brain stimulation.', NULL, NULL, NULL, 0, '0000-00-00'),
(247, '19-3041.00', 'Sociologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study human society and social behavior by examining the groups and social institutions that people form, as well as various social, religious, political, and business organizations. May study the behavior and interaction of groups, trace their origin and growth, and analyze the influence of group activities on individual members.', NULL, NULL, NULL, 0, '0000-00-00'),
(248, '19-3051.00', 'Urban and Regional Planners', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Develop comprehensive plans and programs for use of land and physical facilities of jurisdictions, such as towns, cities, counties, and metropolitan areas.', NULL, NULL, NULL, 0, '0000-00-00'),
(249, '19-3091.00', 'Anthropologists and Archeologists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study the origin, development, and behavior of human beings. May study the way of life, language, or physical characteristics of people in various parts of the world. May engage in systematic recovery and examination of material evidence, such as tools or pottery remaining from past human cultures, in order to determine the history, customs, and living habits of earlier civilizations.', NULL, NULL, NULL, 0, '0000-00-00'),
(250, '19-3092.00', 'Geographers', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study the nature and use of areas of the Earth\'s surface, relating and interpreting interactions of physical and cultural phenomena. Conduct research on physical aspects of a region, including land forms, climates, soils, plants, and animals, and conduct research on the spatial implications of human activities within a given area, including social characteristics, economic activities, and political organization, as well as researching interdependence between regions at scales ranging from local to global.', NULL, NULL, NULL, 0, '0000-00-00'),
(251, '19-3093.00', 'Historians', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Research, analyze, record, and interpret the past as recorded in sources, such as government and institutional records, newspapers and other periodicals, photographs, interviews, films, electronic media, and unpublished manuscripts, such as personal diaries and letters.', NULL, NULL, NULL, 0, '0000-00-00'),
(252, '19-3094.00', 'Political Scientists', 5, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Study the origin, development, and operation of political systems. May study topics, such as public opinion, political decisionmaking, and ideology. May analyze the structure and operation of governments, as well as various political entities. May conduct public opinion surveys, analyze election results, or analyze public documents.', NULL, NULL, NULL, 0, '0000-00-00'),
(253, '19-3099.00', 'Social Scientists and Related Workers, All Other', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'All social scientists and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(254, '19-3099.01', 'Transportation Planners', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Prepare studies for proposed transportation projects. Gather, compile, and analyze data. Study the use and operation of transportation systems. Develop transportation models or simulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(255, '19-4012.00', 'Agricultural Technicians', 3, 65, 166, NULL, NULL, NULL, NULL, NULL, 'Work with agricultural scientists in plant, fiber, and animal research, or assist with animal breeding and nutrition. Set up or maintain laboratory equipment and collect samples from crops or animals. Prepare specimens or record data to assist scientists in biology or related life science experiments. Conduct tests and experiments to improve yield and quality of crops or to increase the resistance of plants and animals to disease or insects.', NULL, NULL, NULL, 0, '0000-00-00'),
(256, '19-4012.01', 'Precision Agriculture Technicians', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Apply geospatial technologies, including geographic information systems (GIS) and Global Positioning System (GPS), to agricultural production or management activities, such as pest scouting, site-specific pesticide application, yield mapping, or variable-rate irrigation. May use computers to develop or analyze maps or remote sensing images to compare physical topography with data on soils, fertilizer, pests, or weather.', NULL, NULL, NULL, 0, '0000-00-00'),
(257, '19-4013.00', 'Food Science Technicians', 3, 65, 166, NULL, NULL, NULL, NULL, NULL, 'Work with food scientists or technologists to perform standardized qualitative and quantitative tests to determine physical or chemical properties of food or beverage products. Includes technicians who assist in research and development of production technology, quality control, packaging, processing, and use of foods.', NULL, NULL, NULL, 0, '0000-00-00'),
(258, '19-4021.00', 'Biological Technicians', 4, 65, 192, NULL, NULL, NULL, NULL, NULL, 'Assist biological and medical scientists. Set up, operate, and maintain laboratory instruments and equipment, monitor experiments, collect data and samples, make observations, and calculate and record results. May analyze organic substances, such as blood, food, and drugs.', NULL, NULL, NULL, 0, '0000-00-00'),
(259, '19-4031.00', 'Chemical Technicians', 3, 65, 180, NULL, NULL, NULL, NULL, NULL, 'Conduct chemical and physical laboratory tests to assist scientists in making qualitative and quantitative analyses of solids, liquids, and gaseous materials for research and development of new products or processes, quality control, maintenance of environmental standards, and other work involving experimental, theoretical, or practical application of chemistry and related sciences.', NULL, NULL, NULL, 0, '0000-00-00'),
(260, '19-4042.00', 'Environmental Science and Protection Technicians, Including Health', 4, 65, 163, NULL, NULL, NULL, NULL, NULL, 'Perform laboratory and field tests to monitor the environment and investigate sources of pollution, including those that affect health, under the direction of an environmental scientist, engineer, or other specialist. May collect samples of gases, soil, water, and other materials for testing.', NULL, NULL, NULL, 0, '0000-00-00'),
(261, '19-4043.00', 'Geological Technicians, Except Hydrologic Technicians', 4, 65, 186, NULL, NULL, NULL, NULL, NULL, 'Assist scientists or engineers in the use of electronic, sonic, or nuclear measuring instruments in laboratory, exploration, and production activities to obtain data indicating resources such as metallic ore, minerals, gas, coal, or petroleum. Analyze mud and drill cuttings. Chart pressure, temperature, and other characteristics of wells or bore holes.', NULL, NULL, NULL, 0, '0000-00-00'),
(262, '19-4044.00', 'Hydrologic Technicians', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Collect and organize data concerning the distribution and circulation of ground and surface water, and data on its physical, chemical, and biological properties. Measure and report on flow rates and ground water levels, maintain field equipment, collect water samples, install and collect sampling equipment, and process samples for shipment to testing laboratories. May collect data on behalf of hydrologists, engineers, developers, government agencies, or agriculture.', NULL, NULL, NULL, 0, '0000-00-00'),
(263, '19-4051.00', 'Nuclear Technicians', 3, 65, 180, NULL, NULL, NULL, NULL, NULL, 'Assist nuclear physicists, nuclear engineers, or other scientists in laboratory, power generation, or electricity production activities. May operate, maintain, or provide quality control for nuclear testing and research equipment. May monitor radiation.', NULL, NULL, NULL, 0, '0000-00-00'),
(264, '19-4051.02', 'Nuclear Monitoring Technicians', 3, 65, 180, NULL, NULL, NULL, NULL, NULL, 'Collect and test samples to monitor results of nuclear experiments and contamination of humans, facilities, and environment.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(265, '19-4061.00', 'Social Science Research Assistants', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Assist social scientists in laboratory, survey, and other social science research. May help prepare findings for publication and assist in laboratory analysis, quality control, or data management.', NULL, NULL, NULL, 0, '0000-00-00'),
(266, '19-4071.00', 'Forest and Conservation Technicians', 3, 65, 186, NULL, NULL, NULL, NULL, NULL, 'Provide technical assistance regarding the conservation of soil, water, forests, or related natural resources. May compile data pertaining to size, content, condition, and other characteristics of forest tracts under the direction of foresters, or train and lead forest workers in forest propagation and fire prevention and suppression. May assist conservation scientists in managing, improving, and protecting rangelands and wildlife habitats.', NULL, NULL, NULL, 0, '0000-00-00'),
(267, '19-4092.00', 'Forensic Science Technicians', 4, 65, 174, NULL, NULL, NULL, NULL, NULL, 'Collect, identify, classify, and analyze physical evidence related to criminal investigations. Perform tests on weapons or substances, such as fiber, hair, and tissue to determine significance to investigation. May testify as expert witnesses on evidence or crime laboratory techniques. May serve as specialists in area of expertise, such as ballistics, fingerprinting, handwriting, or biochemistry.', NULL, NULL, NULL, 0, '0000-00-00'),
(268, '19-4099.00', 'Life, Physical, and Social Science Technicians, All Other', NULL, 65, 206, NULL, NULL, NULL, NULL, NULL, 'All life, physical, and social science technicians not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(269, '19-4099.01', 'Quality Control Analysts', 3, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Conduct tests to determine quality of raw materials, bulk intermediate and finished products. May conduct stability sample tests.', NULL, NULL, NULL, 0, '0000-00-00'),
(270, '19-4099.03', 'Remote Sensing Technicians', 4, 65, 206, NULL, NULL, NULL, NULL, NULL, 'Apply remote sensing technologies to assist scientists in areas such as natural resources, urban planning, or homeland security. May prepare flight plans or sensor configurations for flight trips.', NULL, NULL, NULL, 0, '0000-00-00'),
(271, '19-5011.00', 'Occupational Health and Safety Specialists', 4, 65, 202, NULL, NULL, NULL, NULL, NULL, 'Review, evaluate, and analyze work environments and design programs and procedures to control, eliminate, and prevent disease or injury caused by chemical, physical, and biological agents or ergonomic factors. May conduct inspections and enforce adherence to laws and regulations governing the health and safety of individuals. May be employed in the public or private sector.', NULL, NULL, NULL, 0, '0000-00-00'),
(272, '19-5012.00', 'Occupational Health and Safety Technicians', 3, 65, 202, NULL, NULL, NULL, NULL, NULL, 'Collect data on work environments for analysis by occupational health and safety specialists. Implement and conduct evaluation of programs designed to limit chemical, physical, biological, and ergonomic risks to workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(273, '21-1011.00', 'Substance Abuse and Behavioral Disorder Counselors', 5, 55, 157, NULL, NULL, NULL, NULL, NULL, 'Counsel and advise individuals with alcohol, tobacco, drug, or other problems, such as gambling and eating disorders. May counsel individuals, families, or groups or engage in prevention programs.', NULL, NULL, NULL, 0, '0000-00-00'),
(274, '21-1012.00', 'Educational, Guidance, and Career Counselors and Advisors', 5, 55, 197, NULL, NULL, NULL, NULL, NULL, 'Advise and assist students and provide educational and vocational guidance services.', NULL, NULL, NULL, 0, '0000-00-00'),
(275, '21-1013.00', 'Marriage and Family Therapists', 5, 55, 157, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat mental and emotional disorders, whether cognitive, affective, or behavioral, within the context of marriage and family systems. Apply psychotherapeutic and family systems theories and techniques in the delivery of services to individuals, couples, and families for the purpose of treating such diagnosed nervous and mental disorders.', NULL, NULL, NULL, 0, '0000-00-00'),
(276, '21-1014.00', 'Mental Health Counselors', 5, 55, 157, NULL, NULL, NULL, NULL, NULL, 'Counsel and advise individuals and groups to promote optimum mental and emotional health, with an emphasis on prevention. May help individuals deal with a broad range of mental health issues, such as those associated with addictions and substance abuse; family, parenting, and marital problems; stress management; self-esteem; or aging.', NULL, NULL, NULL, 0, '0000-00-00'),
(277, '21-1015.00', 'Rehabilitation Counselors', 4, 55, 157, NULL, NULL, NULL, NULL, NULL, 'Counsel individuals to maximize the independence and employability of persons coping with personal, social, and vocational difficulties that result from birth defects, illness, disease, accidents, aging, or the stress of daily life. Coordinate activities for residents of care and treatment facilities. Assess client needs and design and implement rehabilitation programs that may include personal and vocational counseling, training, and job placement.', NULL, NULL, NULL, 0, '0000-00-00'),
(278, '21-1019.00', 'Counselors, All Other', NULL, 55, 157, NULL, NULL, NULL, NULL, NULL, 'All counselors not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(279, '21-1021.00', 'Child, Family, and School Social Workers', 4, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Provide social services and assistance to improve the social and psychological functioning of children and their families and to maximize the family well-being and the academic functioning of children. May assist parents, arrange adoptions, and find foster homes for abandoned or abused children. In schools, they address such problems as teenage pregnancy, misbehavior, and truancy. May also advise teachers.', NULL, NULL, NULL, 0, '0000-00-00'),
(280, '21-1022.00', 'Healthcare Social Workers', 5, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Provide individuals, families, and groups with the psychosocial support needed to cope with chronic, acute, or terminal illnesses. Services include advising family caregivers. Provide patients with information and counseling, and make referrals for other services. May also provide case and care management or interventions designed to promote health, prevent disease, and address barriers to access to healthcare.', NULL, NULL, NULL, 0, '0000-00-00'),
(281, '21-1023.00', 'Mental Health and Substance Abuse Social Workers', 5, 55, 157, NULL, NULL, NULL, NULL, NULL, 'Assess and treat individuals with mental, emotional, or substance abuse problems, including abuse of alcohol, tobacco, and/or other drugs. Activities may include individual and group therapy, crisis intervention, case management, client advocacy, prevention, and education.', NULL, NULL, NULL, 0, '0000-00-00'),
(282, '21-1029.00', 'Social Workers, All Other', NULL, 55, 165, NULL, NULL, NULL, NULL, NULL, 'All social workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(283, '21-1091.00', 'Health Education Specialists', 4, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Provide and manage health education programs that help individuals, families, and their communities maximize and maintain healthy lifestyles. Use data to identify community needs prior to planning, implementing, monitoring, and evaluating programs designed to encourage healthy lifestyles, policies, and environments. May link health systems, health providers, insurers, and patients to address individual and population health needs. May serve as resource to assist individuals, other health professionals, or the community, and may administer fiscal resources for health education programs.', NULL, NULL, NULL, 0, '0000-00-00'),
(284, '21-1092.00', 'Probation Officers and Correctional Treatment Specialists', 4, 55, 156, NULL, NULL, NULL, NULL, NULL, 'Provide social services to assist in rehabilitation of law offenders in custody or on probation or parole. Make recommendations for actions involving formulation of rehabilitation plan and treatment of offender, including conditional release and education and employment stipulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(285, '21-1093.00', 'Social and Human Service Assistants', 4, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Assist other social and human service providers in providing client services in a wide variety of fields, such as psychology, rehabilitation, or social work, including support for families. May assist clients in identifying and obtaining available benefits and social and community services. May assist social workers with developing, organizing, and conducting programs to prevent and resolve problems relevant to substance abuse, human relationships, rehabilitation, or dependent care.', NULL, NULL, NULL, 0, '0000-00-00'),
(286, '21-1094.00', 'Community Health Workers', 4, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Promote health within a community by assisting individuals to adopt healthy behaviors. Serve as an advocate for the health needs of individuals by assisting community residents in effectively communicating with healthcare providers or social service agencies. Act as liaison or advocate and implement programs that promote, maintain, and improve individual and overall community health. May deliver health-related preventive services such as blood pressure, glaucoma, and hearing screenings. May collect data to help identify community health needs.', NULL, NULL, NULL, 0, '0000-00-00'),
(287, '21-1099.00', 'Community and Social Service Specialists, All Other', NULL, 55, 165, NULL, NULL, NULL, NULL, NULL, 'All community and social service specialists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(288, '21-2011.00', 'Clergy', 5, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Conduct religious worship and perform other spiritual functions associated with beliefs and practices of religious faith or denomination. Provide spiritual and moral guidance and assistance to members.', NULL, NULL, NULL, 0, '0000-00-00'),
(289, '21-2021.00', 'Directors, Religious Activities and Education', 4, 55, 165, NULL, NULL, NULL, NULL, NULL, 'Coordinate or design programs and conduct outreach to promote the religious education or activities of a denominational group. May provide counseling, guidance, and leadership relative to marital, health, financial, and religious problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(290, '21-2099.00', 'Religious Workers, All Other', NULL, 55, 165, NULL, NULL, NULL, NULL, NULL, 'All religious workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(291, '23-1011.00', 'Lawyers', 5, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Represent clients in criminal and civil litigation and other legal proceedings, draw up legal documents, or manage or advise clients on legal transactions. May specialize in a single area or may practice broadly in many areas of law.', NULL, NULL, NULL, 0, '0000-00-00'),
(292, '23-1012.00', 'Judicial Law Clerks', 5, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Assist judges in court or by conducting research or preparing legal documents.', NULL, NULL, NULL, 0, '0000-00-00'),
(293, '23-1021.00', 'Administrative Law Judges, Adjudicators, and Hearing Officers', 5, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Conduct hearings to recommend or make decisions on claims concerning government programs or other government-related matters. Determine liability, sanctions, or penalties, or recommend the acceptance or rejection of claims or settlements.', NULL, NULL, NULL, 0, '0000-00-00'),
(294, '23-1022.00', 'Arbitrators, Mediators, and Conciliators', 5, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Facilitate negotiation and conflict resolution through dialogue. Resolve conflicts outside of the court system by mutual consent of parties involved.', NULL, NULL, NULL, 0, '0000-00-00'),
(295, '23-1023.00', 'Judges, Magistrate Judges, and Magistrates', 5, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Arbitrate, advise, adjudicate, or administer justice in a court of law. May sentence defendant in criminal cases according to government statutes or sentencing guidelines. May determine liability of defendant in civil cases. May perform wedding ceremonies.', NULL, NULL, NULL, 0, '0000-00-00'),
(296, '23-2011.00', 'Paralegals and Legal Assistants', 3, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Assist lawyers by investigating facts, preparing legal documents, or researching legal precedent. Conduct research to support a legal proceeding, to formulate a defense, or to initiate legal action.', NULL, NULL, NULL, 0, '0000-00-00'),
(297, '23-2093.00', 'Title Examiners, Abstractors, and Searchers', 2, 64, 175, NULL, NULL, NULL, NULL, NULL, 'Search real estate records, examine titles, or summarize pertinent legal or insurance documents or details for a variety of purposes. May compile lists of mortgages, contracts, and other instruments pertaining to titles by searching public and private records for law firms, real estate agencies, or title insurance companies.', NULL, NULL, NULL, 0, '0000-00-00'),
(298, '23-2099.00', 'Legal Support Workers, All Other', NULL, 64, 175, NULL, NULL, NULL, NULL, NULL, 'All legal support workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(299, '25-1011.00', 'Business Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in business administration and management, such as accounting, finance, human resources, labor and industrial relations, marketing, and operations research. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(300, '25-1021.00', 'Computer Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in computer science. May specialize in a field of computer science, such as the design and function of computers or operations and research analysis. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(301, '25-1022.00', 'Mathematical Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to mathematical concepts, statistics, and actuarial science and to the application of original and standardized mathematical techniques in solving specific problems and situations. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(302, '25-1031.00', 'Architecture Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in architecture and architectural design, such as architectural environmental design, interior architecture/design, and landscape architecture. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(303, '25-1032.00', 'Engineering Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to the application of physical laws and principles of engineering for the development of machines, materials, instruments, processes, and services. Includes teachers of subjects such as chemical, civil, electrical, industrial, mechanical, mineral, and petroleum engineering. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(304, '25-1041.00', 'Agricultural Sciences Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in the agricultural sciences. Includes teachers of agronomy, dairy sciences, fisheries management, horticultural sciences, poultry sciences, range management, and agricultural soil conservation. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(305, '25-1042.00', 'Biological Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in biological sciences. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(306, '25-1043.00', 'Forestry and Conservation Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in forestry and conservation science. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(307, '25-1051.00', 'Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in the physical sciences, except chemistry and physics. Includes both teachers primarily engaged in teaching, and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(308, '25-1052.00', 'Chemistry Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to the chemical and physical properties and compositional changes of substances. Work may include providing instruction in the methods of qualitative and quantitative chemical analysis. Includes both teachers primarily engaged in teaching, and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(309, '25-1053.00', 'Environmental Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in environmental science. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(310, '25-1054.00', 'Physics Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to the laws of matter and energy. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(311, '25-1061.00', 'Anthropology and Archeology Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in anthropology or archeology. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(312, '25-1062.00', 'Area, Ethnic, and Cultural Studies Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to the culture and development of an area, an ethnic group, or any other group, such as Latin American studies, women\'s studies, or urban affairs. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(313, '25-1063.00', 'Economics Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in economics. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(314, '25-1064.00', 'Geography Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in geography. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(315, '25-1065.00', 'Political Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in political science, international affairs, and international relations. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(316, '25-1066.00', 'Psychology Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in psychology, such as child, clinical, and developmental psychology, and psychological counseling. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(317, '25-1067.00', 'Sociology Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in sociology. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(318, '25-1069.00', 'Social Sciences Teachers, Postsecondary, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All postsecondary social sciences teachers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(319, '25-1071.00', 'Health Specialties Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in health specialties, in fields such as dentistry, laboratory technology, medicine, pharmacy, public health, therapy, and veterinary medicine.', NULL, NULL, NULL, 0, '0000-00-00'),
(320, '25-1072.00', 'Nursing Instructors and Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Demonstrate and teach patient care in classroom and clinical units to nursing students. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(321, '25-1081.00', 'Education Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to education, such as counseling, curriculum, guidance, instruction, teacher education, and teaching English as a second language. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(322, '25-1082.00', 'Library Science Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in library science. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(323, '25-1111.00', 'Criminal Justice and Law Enforcement Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in criminal justice, corrections, and law enforcement administration. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(324, '25-1112.00', 'Law Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in law. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(325, '25-1113.00', 'Social Work Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in social work. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(326, '25-1121.00', 'Art, Drama, and Music Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in drama, music, and the arts including fine and applied art, such as painting and sculpture, or design and crafts. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(327, '25-1122.00', 'Communications Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in communications, such as organizational communications, public relations, radio/television broadcasting, and journalism. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(328, '25-1123.00', 'English Language and Literature Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in English language and literature, including linguistics and comparative literature. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(329, '25-1124.00', 'Foreign Language and Literature Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach languages and literature courses in languages other than English. Includes teachers of American Sign Language (ASL). Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(330, '25-1125.00', 'History Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in human history and historiography. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(331, '25-1126.00', 'Philosophy and Religion Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in philosophy, religion, and theology. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(332, '25-1192.00', 'Family and Consumer Sciences Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses in childcare, family relations, finance, nutrition, and related subjects pertaining to home management. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(333, '25-1193.00', 'Recreation and Fitness Studies Teachers, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach courses pertaining to recreation, leisure, and fitness studies, including exercise physiology and facilities management. Includes both teachers primarily engaged in teaching and those who do a combination of teaching and research.', NULL, NULL, NULL, 0, '0000-00-00'),
(334, '25-1194.00', 'Career/Technical Education Teachers, Postsecondary', 3, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach vocational courses intended to provide occupational training below the baccalaureate level in subjects such as construction, mechanics/repair, manufacturing, transportation, or cosmetology, primarily to students who have graduated from or left high school. Teaching takes place in public or private schools whose primary business is academic or vocational education.', NULL, NULL, NULL, 0, '0000-00-00'),
(335, '25-1199.00', 'Postsecondary Teachers, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All postsecondary teachers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(336, '25-2011.00', 'Preschool Teachers, Except Special Education', 3, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Instruct preschool-aged students, following curricula or lesson plans, in activities designed to promote social, physical, and intellectual growth.', NULL, NULL, NULL, 0, '0000-00-00'),
(337, '25-2012.00', 'Kindergarten Teachers, Except Special Education', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic and social skills to kindergarten students.', NULL, NULL, NULL, 0, '0000-00-00'),
(338, '25-2021.00', 'Elementary School Teachers, Except Special Education', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic and social skills to students at the elementary school level.', NULL, NULL, NULL, 0, '0000-00-00'),
(339, '25-2022.00', 'Middle School Teachers, Except Special and Career/Technical Education', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach one or more subjects to students at the middle, intermediate, or junior high school level.', NULL, NULL, NULL, 0, '0000-00-00'),
(340, '25-2023.00', 'Career/Technical Education Teachers, Middle School', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach occupational, vocational, career, or technical subjects to students at the middle, intermediate, or junior high school level.', NULL, NULL, NULL, 0, '0000-00-00'),
(341, '25-2031.00', 'Secondary School Teachers, Except Special and Career/Technical Education', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach one or more subjects to students at the secondary school level.', NULL, NULL, NULL, 0, '0000-00-00'),
(342, '25-2032.00', 'Career/Technical Education Teachers, Secondary School', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach occupational, vocational, career, or technical subjects to students at the secondary school level.', NULL, NULL, NULL, 0, '0000-00-00'),
(343, '25-2051.00', 'Special Education Teachers, Preschool', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic, social, and life skills to preschool-aged students with learning, emotional, or physical disabilities. Includes teachers who specialize and work with students who are blind or have visual impairments; students who are deaf or have hearing impairments; and students with intellectual disabilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(344, '25-2055.00', 'Special Education Teachers, Kindergarten', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic, social, and life skills to kindergarten students with learning, emotional, or physical disabilities. Includes teachers who specialize and work with students who are blind or have visual impairments; students who are deaf or have hearing impairments; and students with intellectual disabilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(345, '25-2056.00', 'Special Education Teachers, Elementary School', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic, social, and life skills to elementary school students with learning, emotional, or physical disabilities. Includes teachers who specialize and work with students who are blind or have visual impairments; students who are deaf or have hearing impairments; and students with intellectual disabilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(346, '25-2057.00', 'Special Education Teachers, Middle School', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic, social, and life skills to middle school students with learning, emotional, or physical disabilities. Includes teachers who specialize and work with students who are blind or have visual impairments; students who are deaf or have hearing impairments; and students with intellectual disabilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(347, '25-2058.00', 'Special Education Teachers, Secondary School', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach academic, social, and life skills to secondary school students with learning, emotional, or physical disabilities. Includes teachers who specialize and work with students who are blind or have visual impairments; students who are deaf or have hearing impairments; and students with intellectual disabilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(348, '25-2059.00', 'Special Education Teachers, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All special education teachers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(349, '25-2059.01', 'Adapted Physical Education Specialists', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Provide individualized physical education instruction or services to children, youth, or adults with exceptional physical needs due to gross motor developmental delays or other impairments.', NULL, NULL, NULL, 0, '0000-00-00'),
(350, '25-3011.00', 'Adult Basic Education, Adult Secondary Education, and English as a Second Language Instructors', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach or instruct out-of-school youths and adults in basic education, literacy, or English as a Second Language classes, or in classes for earning a high school equivalency credential.', NULL, NULL, NULL, 0, '0000-00-00'),
(351, '25-3021.00', 'Self-Enrichment Teachers', 3, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach or instruct individuals or groups for the primary purpose of self-enrichment or recreation, rather than for an occupational objective, educational attainment, competition, or fitness.', NULL, NULL, NULL, 0, '0000-00-00'),
(352, '25-3031.00', 'Substitute Teachers, Short-Term', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Teach students on a short-term basis as a temporary replacement for a regular classroom teacher, typically using the regular teacher\'s lesson plan.', NULL, NULL, NULL, 0, '0000-00-00'),
(353, '25-3041.00', 'Tutors', 4, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Instruct individual students or small groups of students in academic subjects to support formal class instruction or to prepare students for standardized or admissions tests.', NULL, NULL, NULL, 0, '0000-00-00'),
(354, '25-3099.00', 'Teachers and Instructors, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All teachers and instructors not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(355, '25-4011.00', 'Archivists', 5, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Appraise, edit, and direct safekeeping of permanent records and historically valuable documents. Participate in research activities based on archival materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(356, '25-4012.00', 'Curators', 5, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Administer collections, such as artwork, collectibles, historic items, or scientific specimens of museums or other institutions. May conduct instructional, research, or public service activities of institution.', NULL, NULL, NULL, 0, '0000-00-00'),
(357, '25-4013.00', 'Museum Technicians and Conservators', 4, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Restore, maintain, or prepare objects in museum collections for storage, research, or exhibit. May work with specimens such as fossils, skeletal parts, or botanicals; or artifacts, textiles, or art. May identify and record objects or install and arrange them in exhibits. Includes book or document conservators.', NULL, NULL, NULL, 0, '0000-00-00'),
(358, '25-4022.00', 'Librarians and Media Collections Specialists', 5, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Administer and maintain libraries or collections of information, for public or private access through reference or borrowing. Work in a variety of settings, such as educational institutions, museums, and corporations, and with various types of informational materials, such as books, periodicals, recordings, films, and databases. Tasks may include acquiring, cataloging, and circulating library materials, and user services such as locating and organizing information, providing instruction on how to access information, and setting up and operating a library\'s media equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(359, '25-4031.00', 'Library Technicians', 3, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Assist librarians by helping readers in the use of library catalogs, databases, and indexes to locate books and other materials; and by answering questions that require only brief consultation of standard reference. Compile records; sort and shelve books or other media; remove or repair damaged books or other media; register patrons; and check materials in and out of the circulation process. Replace materials in shelving area (stacks) or files. Includes bookmobile drivers who assist with providing services in mobile libraries.', NULL, NULL, NULL, 0, '0000-00-00'),
(360, '25-9021.00', 'Farm and Home Management Educators', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Instruct and advise individuals and families engaged in agriculture, agricultural-related processes, or home management activities. Demonstrate procedures and apply research findings to advance agricultural and home management activities. May develop educational outreach programs. May instruct on either agricultural issues such as agricultural processes and techniques, pest management, and food safety, or on home management issues such as budgeting, nutrition, and child development.', NULL, NULL, NULL, 0, '0000-00-00'),
(361, '25-9031.00', 'Instructional Coordinators', 5, 58, 197, NULL, NULL, NULL, NULL, NULL, 'Develop instructional material, coordinate educational content, and incorporate current technology into instruction in order to provide guidelines to educators and instructors for developing curricula and conducting courses. May train and coach teachers. Includes educational consultants and specialists, and instructional material directors.', NULL, NULL, NULL, 0, '0000-00-00'),
(362, '25-9042.00', 'Teaching Assistants, Preschool, Elementary, Middle, and Secondary School, Except Special Education', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Assist a preschool, elementary, middle, or secondary school teacher with instructional duties. Serve in a position for which a teacher has primary responsibility for the design and implementation of educational programs and services.', NULL, NULL, NULL, 0, '0000-00-00'),
(363, '25-9043.00', 'Teaching Assistants, Special Education', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Assist a preschool, elementary, middle, or secondary school teacher to provide academic, social, or life skills to students who have learning, emotional, or physical disabilities. Serve in a position for which a teacher has primary responsibility for the design and implementation of educational programs and services.', NULL, NULL, NULL, 0, '0000-00-00'),
(364, '25-9044.00', 'Teaching Assistants, Postsecondary', 5, 58, 210, NULL, NULL, NULL, NULL, NULL, 'Assist faculty or other instructional staff in postsecondary institutions by performing instructional support activities, such as developing teaching materials, leading discussion groups, preparing and giving examinations, and grading examinations or papers.', NULL, NULL, NULL, 0, '0000-00-00'),
(365, '25-9049.00', 'Teaching Assistants, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All teaching assistants not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(366, '25-9099.00', 'Educational Instruction and Library Workers, All Other', NULL, 58, 210, NULL, NULL, NULL, NULL, NULL, 'All educational instruction and library workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(367, '27-1011.00', 'Art Directors', 4, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Formulate design concepts and presentation approaches for visual productions and media, such as print, broadcasting, video, and film. Direct workers engaged in artwork or layout design.', NULL, NULL, NULL, 0, '0000-00-00'),
(368, '27-1012.00', 'Craft Artists', 3, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Create or reproduce handmade objects for sale and exhibition using a variety of techniques, such as welding, weaving, pottery, and needlecraft.', NULL, NULL, NULL, 0, '0000-00-00'),
(369, '27-1013.00', 'Fine Artists, Including Painters, Sculptors, and Illustrators', 3, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Create original artwork using any of a wide variety of media and techniques.', NULL, NULL, NULL, 0, '0000-00-00'),
(370, '27-1014.00', 'Special Effects Artists and Animators', 4, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Create special effects or animations using film, video, computers, or other electronic tools and media for use in products, such as computer games, movies, music videos, and commercials.', NULL, NULL, NULL, 0, '0000-00-00'),
(371, '27-1019.00', 'Artists and Related Workers, All Other', NULL, 52, 216, NULL, NULL, NULL, NULL, NULL, 'All artists and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(372, '27-1021.00', 'Commercial and Industrial Designers', 4, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Design and develop manufactured products, such as cars, home appliances, and children\'s toys. Combine artistic talent with research on product use, marketing, and materials to create the most functional and appealing product design.', NULL, NULL, NULL, 0, '0000-00-00'),
(373, '27-1022.00', 'Fashion Designers', 3, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Design clothing and accessories. Create original designs or adapt fashion trends.', NULL, NULL, NULL, 0, '0000-00-00'),
(374, '27-1023.00', 'Floral Designers', 2, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Design, cut, and arrange live, dried, or artificial flowers and foliage.', NULL, NULL, NULL, 0, '0000-00-00'),
(375, '27-1024.00', 'Graphic Designers', 4, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Design or create graphics to meet specific commercial or promotional needs, such as packaging, displays, or logos. May use a variety of mediums to achieve artistic or decorative effects.', NULL, NULL, NULL, 0, '0000-00-00'),
(376, '27-1025.00', 'Interior Designers', 4, 52, 158, NULL, NULL, NULL, NULL, NULL, 'Plan, design, and furnish the internal space of rooms or buildings. Design interior environments or create physical layouts that are practical, aesthetic, and conducive to the intended purposes. May specialize in a particular field, style, or phase of interior design.', NULL, NULL, NULL, 0, '0000-00-00'),
(377, '27-1026.00', 'Merchandise Displayers and Window Trimmers', 3, 52, 184, NULL, NULL, NULL, NULL, NULL, 'Plan and erect commercial displays, such as those in windows and interiors of retail stores and at trade exhibitions.', NULL, NULL, NULL, 0, '0000-00-00'),
(378, '27-1027.00', 'Set and Exhibit Designers', 5, 52, 216, NULL, NULL, NULL, NULL, NULL, 'Design special exhibits and sets for film, video, television, and theater productions. May study scripts, confer with directors, and conduct research to determine appropriate architectural styles.', NULL, NULL, NULL, 0, '0000-00-00'),
(379, '27-1029.00', 'Designers, All Other', NULL, 52, 216, NULL, NULL, NULL, NULL, NULL, 'All designers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(380, '27-2011.00', 'Actors', 2, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Play parts in stage, television, radio, video, or film productions, or other settings for entertainment, information, or instruction. Interpret serious or comic role by speech, gesture, and body movement to entertain or inform audience. May dance and sing.', NULL, NULL, NULL, 0, '0000-00-00'),
(381, '27-2012.00', 'Producers and Directors', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Produce or direct stage, television, radio, video, or film productions for entertainment, information, or instruction. Responsible for creative decisions, such as interpretation of script, choice of actors or guests, set design, sound, special effects, and choreography.', NULL, NULL, NULL, 0, '0000-00-00'),
(382, '27-2012.03', 'Media Programming Directors', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Direct and coordinate activities of personnel engaged in preparation of radio or television station program schedules and programs, such as sports or news.', NULL, NULL, NULL, 0, '0000-00-00'),
(383, '27-2012.04', 'Talent Directors', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Audition and interview performers to select most appropriate talent for parts in stage, television, radio, or motion picture productions.', NULL, NULL, NULL, 0, '0000-00-00'),
(384, '27-2012.05', 'Media Technical Directors/Managers', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Coordinate activities of technical departments, such as taping, editing, engineering, and maintenance, to produce radio or television programs.', NULL, NULL, NULL, 0, '0000-00-00'),
(385, '27-2021.00', 'Athletes and Sports Competitors', 2, 52, 201, NULL, NULL, NULL, NULL, NULL, 'Compete in athletic events.', NULL, NULL, NULL, 0, '0000-00-00'),
(386, '27-2022.00', 'Coaches and Scouts', 4, 52, 210, NULL, NULL, NULL, NULL, NULL, 'Instruct or coach groups or individuals in the fundamentals of sports for the primary purpose of competition. Demonstrate techniques and methods of participation. May evaluate athletes\' strengths and weaknesses as possible recruits or to improve the athletes\' technique to prepare them for competition. Those required to hold teaching certifications should be reported in the appropriate teaching category.', NULL, NULL, NULL, 0, '0000-00-00'),
(387, '27-2023.00', 'Umpires, Referees, and Other Sports Officials', 3, 52, 201, NULL, NULL, NULL, NULL, NULL, 'Officiate at competitive athletic or sporting events. Detect infractions of rules and decide penalties according to established regulations. Includes all sporting officials, referees, and competition judges.', NULL, NULL, NULL, 0, '0000-00-00'),
(388, '27-2031.00', 'Dancers', 3, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Perform dances. May perform on stage, for broadcasting, or for video recording.', NULL, NULL, NULL, 0, '0000-00-00'),
(389, '27-2032.00', 'Choreographers', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Create new dance routines. Rehearse performance of routines. May direct and stage presentations.', NULL, NULL, NULL, 0, '0000-00-00'),
(390, '27-2041.00', 'Music Directors and Composers', 4, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Conduct, direct, plan, and lead instrumental or vocal performances by musical artists or groups, such as orchestras, bands, choirs, and glee clubs; or create original works of music.', NULL, NULL, NULL, 0, '0000-00-00'),
(391, '27-2042.00', 'Musicians and Singers', 3, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Play one or more musical instruments or sing. May perform on stage, for broadcasting, or for sound or video recording.', NULL, NULL, NULL, 0, '0000-00-00'),
(392, '27-2091.00', 'Disc Jockeys, Except Radio', NULL, 52, 189, NULL, NULL, NULL, NULL, NULL, 'Play prerecorded music for live audiences at venues or events such as clubs, parties, or wedding receptions. May use techniques such as mixing, cutting, or sampling to manipulate recordings. May also perform as emcee (master of ceremonies).', NULL, NULL, NULL, 0, '0000-00-00'),
(393, '27-2099.00', 'Entertainers and Performers, Sports and Related Workers, All Other', NULL, 52, 189, NULL, NULL, NULL, NULL, NULL, 'All entertainers and performers, sports and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(394, '27-3011.00', 'Broadcast Announcers and Radio Disc Jockeys', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Speak or read from scripted materials, such as news reports or commercial messages, on radio, television, or other communications media. May play and queue music, announce artist or title of performance, identify station, or interview guests.', NULL, NULL, NULL, 0, '0000-00-00'),
(395, '27-3023.00', 'News Analysts, Reporters, and Journalists', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Narrate or write news stories, reviews, or commentary for print, broadcast, or other communications media such as newspapers, magazines, radio, or television. May collect and analyze information through interview, investigation, or observation.', NULL, NULL, NULL, 0, '0000-00-00'),
(396, '27-3031.00', 'Public Relations Specialists', 4, 52, 181, NULL, NULL, NULL, NULL, NULL, 'Promote or create an intended public image for individuals, groups, or organizations. May write or select material for release to various communications media. May specialize in using social media.', NULL, NULL, NULL, 0, '0000-00-00'),
(397, '27-3041.00', 'Editors', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Plan, coordinate, revise, or edit written material. May review proposals and drafts for possible publication.', NULL, NULL, NULL, 0, '0000-00-00'),
(398, '27-3042.00', 'Technical Writers', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Write technical materials, such as equipment manuals, appendices, or operating and maintenance instructions. May assist in layout work.', NULL, NULL, NULL, 0, '0000-00-00'),
(399, '27-3043.00', 'Writers and Authors', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Originate and prepare written material, such as scripts, stories, advertisements, and other material.', NULL, NULL, NULL, 0, '0000-00-00'),
(400, '27-3043.05', 'Poets, Lyricists and Creative Writers', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Create original written works, such as scripts, essays, prose, poetry or song lyrics, for publication or performance.', NULL, NULL, NULL, 0, '0000-00-00'),
(401, '27-3091.00', 'Interpreters and Translators', 4, 52, 197, NULL, NULL, NULL, NULL, NULL, 'Interpret oral or sign language, or translate written text from one language into another.', NULL, NULL, NULL, 0, '0000-00-00'),
(402, '27-3092.00', 'Court Reporters and Simultaneous Captioners', 3, 52, 175, NULL, NULL, NULL, NULL, NULL, 'Use verbatim methods and equipment to capture, store, retrieve, and transcribe pretrial and trial proceedings or other information. Includes stenocaptioners who operate computerized stenographic captioning equipment to provide captions of live or prerecorded broadcasts for hearing-impaired viewers.', NULL, NULL, NULL, 0, '0000-00-00'),
(403, '27-3099.00', 'Media and Communication Workers, All Other', NULL, 52, 189, NULL, NULL, NULL, NULL, NULL, 'All media and communication workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(404, '27-4011.00', 'Audio and Video Technicians', 3, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Set up, maintain, and dismantle audio and video equipment, such as microphones, sound speakers, connecting wires and cables, sound and mixing boards, video cameras, video monitors and servers, and related electronic equipment for live or recorded events, such as concerts, meetings, conventions, presentations, podcasts, news conferences, and sporting events.', NULL, NULL, NULL, 0, '0000-00-00'),
(405, '27-4012.00', 'Broadcast Technicians', 3, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, and maintain the electronic equipment used to acquire, edit, and transmit audio and video for radio or television programs. Control and adjust incoming and outgoing broadcast signals to regulate sound volume, signal strength, and signal clarity. Operate satellite, microwave, or other transmitter equipment to broadcast radio or television programs.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(406, '27-4014.00', 'Sound Engineering Technicians', 3, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Assemble and operate equipment to record, synchronize, mix, edit, or reproduce sound, including music, voices, or sound effects, for theater, video, film, television, podcasts, sporting events, and other productions.', NULL, NULL, NULL, 0, '0000-00-00'),
(407, '27-4015.00', 'Lighting Technicians', NULL, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Set up, maintain, and dismantle light fixtures, lighting control devices, and the associated lighting electrical and rigging equipment used for photography, television, film, video, and live productions. May focus or operate light fixtures, or attach color filters or other lighting accessories.', NULL, NULL, NULL, 0, '0000-00-00'),
(408, '27-4021.00', 'Photographers', 3, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Photograph people, landscapes, merchandise, or other subjects. May use lighting equipment to enhance a subject\'s appearance. May use editing software to produce finished images and prints. Includes commercial and industrial photographers, scientific photographers, and photojournalists.', NULL, NULL, NULL, 0, '0000-00-00'),
(409, '27-4031.00', 'Camera Operators, Television, Video, and Film', 3, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Operate television, video, or film camera to record images or scenes for television, video, or film productions.', NULL, NULL, NULL, 0, '0000-00-00'),
(410, '27-4032.00', 'Film and Video Editors', 4, 52, 173, NULL, NULL, NULL, NULL, NULL, 'Edit moving images on film, video, or other media. May work with a producer or director to organize images for final production. May edit or synchronize soundtracks with images.', NULL, NULL, NULL, 0, '0000-00-00'),
(411, '27-4099.00', 'Media and Communication Equipment Workers, All Other', NULL, 52, 173, NULL, NULL, NULL, NULL, NULL, 'All media and communication equipment workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(412, '29-1011.00', 'Chiropractors', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, treat, and care for patients by manipulation of spine and musculoskeletal system. May provide spinal adjustment or address sacral or pelvic misalignment.', NULL, NULL, NULL, 0, '0000-00-00'),
(413, '29-1021.00', 'Dentists, General', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Examine, diagnose, and treat diseases, injuries, and malformations of teeth and gums. May treat diseases of nerve, pulp, and other dental tissues affecting oral hygiene and retention of teeth. May fit dental appliances or provide preventive care.', NULL, NULL, NULL, 0, '0000-00-00'),
(414, '29-1022.00', 'Oral and Maxillofacial Surgeons', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Perform surgery and related procedures on the hard and soft tissues of the oral and maxillofacial regions to treat diseases, injuries, or defects. May diagnose problems of the oral and maxillofacial regions. May perform surgery to improve function or appearance.', NULL, NULL, NULL, 0, '0000-00-00'),
(415, '29-1023.00', 'Orthodontists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Examine, diagnose, and treat dental malocclusions and oral cavity anomalies. Design and fabricate appliances to realign teeth and jaws to produce and maintain normal function and to improve appearance.', NULL, NULL, NULL, 0, '0000-00-00'),
(416, '29-1024.00', 'Prosthodontists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, rehabilitate, design, and fit prostheses that maintain oral function, health, and appearance for patients with clinical conditions associated with teeth, oral and maxillofacial tissues, or the jaw.', NULL, NULL, NULL, 0, '0000-00-00'),
(417, '29-1029.00', 'Dentists, All Other Specialists', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All dentists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(418, '29-1031.00', 'Dietitians and Nutritionists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Plan and conduct food service or nutritional programs to assist in the promotion of health and control of disease. May supervise activities of a department providing quantity food services, counsel individuals, or conduct nutritional research.', NULL, NULL, NULL, 0, '0000-00-00'),
(419, '29-1041.00', 'Optometrists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, manage, and treat conditions and diseases of the human eye and visual system. Examine eyes and visual system, diagnose problems or impairments, prescribe corrective lenses, and provide treatment. May prescribe therapeutic drugs to treat specific eye conditions.', NULL, NULL, NULL, 0, '0000-00-00'),
(420, '29-1051.00', 'Pharmacists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Dispense drugs prescribed by physicians and other health practitioners and provide information to patients about medications and their use. May advise physicians and other health practitioners on the selection, dosage, interactions, and side effects of medications.', NULL, NULL, NULL, 0, '0000-00-00'),
(421, '29-1071.00', 'Physician Assistants', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide healthcare services typically performed by a physician, under the supervision of a physician. Conduct complete physicals, provide treatment, and counsel patients. May, in some cases, prescribe medication. Must graduate from an accredited educational program for physician assistants.', NULL, NULL, NULL, 0, '0000-00-00'),
(422, '29-1071.01', 'Anesthesiologist Assistants', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assist anesthesiologists in the administration of anesthesia for surgical and non-surgical procedures. Monitor patient status and provide patient care during surgical treatment.', NULL, NULL, NULL, 0, '0000-00-00'),
(423, '29-1081.00', 'Podiatrists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat diseases and deformities of the human foot.', NULL, NULL, NULL, 0, '0000-00-00'),
(424, '29-1122.00', 'Occupational Therapists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, plan, and organize rehabilitative programs that help build or restore vocational, homemaking, and daily living skills, as well as general independence, to persons with disabilities or developmental delays. Use therapeutic techniques, adapt the individual\'s environment, teach skills, and modify specific tasks that present barriers to the individual.', NULL, NULL, NULL, 0, '0000-00-00'),
(425, '29-1122.01', 'Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide therapy to patients with visual impairments to improve their functioning in daily life activities. May train patients in activities such as computer use, communication skills, or home management skills.', NULL, NULL, NULL, 0, '0000-00-00'),
(426, '29-1123.00', 'Physical Therapists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, plan, organize, and participate in rehabilitative programs that improve mobility, relieve pain, increase strength, and improve or correct disabling conditions resulting from disease or injury.', NULL, NULL, NULL, 0, '0000-00-00'),
(427, '29-1124.00', 'Radiation Therapists', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide radiation therapy to patients as prescribed by a radiation oncologist according to established practices and standards. Duties may include reviewing prescription and diagnosis; acting as liaison with physician and supportive care personnel; preparing equipment, such as immobilization, treatment, and protection devices; and maintaining records, reports, and files. May assist in dosimetry procedures and tumor localization.', NULL, NULL, NULL, 0, '0000-00-00'),
(428, '29-1125.00', 'Recreational Therapists', 4, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Plan, direct, or coordinate medically-approved recreation programs for patients in hospitals, nursing homes, or other institutions. Activities include sports, trips, dramatics, social activities, and crafts. May assess a patient condition and recommend appropriate recreational activity.', NULL, NULL, NULL, 0, '0000-00-00'),
(429, '29-1126.00', 'Respiratory Therapists', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, treat, and care for patients with breathing disorders. Assume primary responsibility for all respiratory care modalities, including the supervision of respiratory therapy technicians. Initiate and conduct therapeutic procedures; maintain patient records; and select, assemble, check, and operate equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(430, '29-1127.00', 'Speech-Language Pathologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess and treat persons with speech, language, voice, and fluency disorders. May select alternative communication systems and teach their use. May perform research related to speech and language problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(431, '29-1128.00', 'Exercise Physiologists', 4, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, plan, or implement fitness programs that include exercise or physical activities such as those designed to improve cardiorespiratory function, body composition, muscular strength, muscular endurance, or flexibility.', NULL, NULL, NULL, 0, '0000-00-00'),
(432, '29-1129.00', 'Therapists, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All therapists not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(433, '29-1129.01', 'Art Therapists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Plan or conduct art therapy sessions or programs to improve clients\' physical, cognitive, or emotional well-being.', NULL, NULL, NULL, 0, '0000-00-00'),
(434, '29-1129.02', 'Music Therapists', 4, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Plan, organize, direct, or assess clinical and evidenced-based music therapy interventions to positively influence individuals\' physical, psychological, cognitive, or behavioral status.', NULL, NULL, NULL, 0, '0000-00-00'),
(435, '29-1131.00', 'Veterinarians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, or research diseases and injuries of animals. Includes veterinarians who conduct research and development, inspect livestock, or care for pets and companion animals.', NULL, NULL, NULL, 0, '0000-00-00'),
(436, '29-1141.00', 'Registered Nurses', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess patient health problems and needs, develop and implement nursing care plans, and maintain medical records. Administer nursing care to ill, injured, convalescent, or disabled patients. May advise patients on health maintenance and disease prevention or provide case management. Licensing or registration required.', NULL, NULL, NULL, 0, '0000-00-00'),
(437, '29-1141.01', 'Acute Care Nurses', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide advanced nursing care for patients with acute conditions such as heart attacks, respiratory distress syndrome, or shock. May care for pre- and post-operative patients or perform advanced, invasive diagnostic or therapeutic procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(438, '29-1141.02', 'Advanced Practice Psychiatric Nurses', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess, diagnose, and treat individuals and families with mental health or substance use disorders or the potential for such disorders. Apply therapeutic activities, including the prescription of medication, per state regulations, and the administration of psychotherapy.', NULL, NULL, NULL, 0, '0000-00-00'),
(439, '29-1141.03', 'Critical Care Nurses', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide specialized nursing care for patients in critical or coronary care units.', NULL, NULL, NULL, 0, '0000-00-00'),
(440, '29-1141.04', 'Clinical Nurse Specialists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Direct nursing staff in the provision of patient care in a clinical practice setting, such as a hospital, hospice, clinic, or home. Ensure adherence to established clinical policies, protocols, regulations, and standards.', NULL, NULL, NULL, 0, '0000-00-00'),
(441, '29-1151.00', 'Nurse Anesthetists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Administer anesthesia, monitor patient\'s vital signs, and oversee patient recovery from anesthesia. May assist anesthesiologists, surgeons, other physicians, or dentists. Must be registered nurses who have specialized graduate education.', NULL, NULL, NULL, 0, '0000-00-00'),
(442, '29-1161.00', 'Nurse Midwives', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and coordinate all aspects of the birthing process, either independently or as part of a healthcare team. May provide well-woman gynecological care. Must have specialized, graduate nursing education.', NULL, NULL, NULL, 0, '0000-00-00'),
(443, '29-1171.00', 'Nurse Practitioners', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat acute, episodic, or chronic illness, independently or as part of a healthcare team. May focus on health promotion and disease prevention. May order, perform, or interpret diagnostic tests such as lab work and x rays. May prescribe medication. Must be registered nurses who have specialized graduate education.', NULL, NULL, NULL, 0, '0000-00-00'),
(444, '29-1181.00', 'Audiologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess and treat persons with hearing and related disorders. May fit hearing aids and provide auditory training. May perform research related to hearing problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(445, '29-1211.00', 'Anesthesiologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Administer anesthetics and analgesics for pain management prior to, during, or after surgery.', NULL, NULL, NULL, 0, '0000-00-00'),
(446, '29-1212.00', 'Cardiologists', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, manage, and prevent diseases or conditions of the cardiovascular system. May further subspecialize in interventional procedures (e.g., balloon angioplasty and stent placement), echocardiography, or electrophysiology.', NULL, NULL, NULL, 0, '0000-00-00'),
(447, '29-1213.00', 'Dermatologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat diseases relating to the skin, hair, and nails. May perform both medical and dermatological surgery functions.', NULL, NULL, NULL, 0, '0000-00-00'),
(448, '29-1214.00', 'Emergency Medicine Physicians', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Make immediate medical decisions and act to prevent death or further disability. Provide immediate recognition, evaluation, care, stabilization, and disposition of patients. May direct emergency medical staff in an emergency department.', NULL, NULL, NULL, 0, '0000-00-00'),
(449, '29-1215.00', 'Family Medicine Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and provide preventive care to individuals and families across the lifespan. May refer patients to specialists when needed for further diagnosis or treatment.', NULL, NULL, NULL, 0, '0000-00-00'),
(450, '29-1216.00', 'General Internal Medicine Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and provide nonsurgical treatment for a wide range of diseases and injuries of internal organ systems. Provide care mainly for adults and adolescents, and are based primarily in an outpatient care setting.', NULL, NULL, NULL, 0, '0000-00-00'),
(451, '29-1217.00', 'Neurologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, manage, and treat disorders and diseases of the brain, spinal cord, and peripheral nerves, with a primarily nonsurgical focus.', NULL, NULL, NULL, 0, '0000-00-00'),
(452, '29-1218.00', 'Obstetricians and Gynecologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide medical care related to pregnancy or childbirth. Diagnose, treat, and help prevent diseases of women, particularly those affecting the reproductive system. May also provide general care to women. May perform both medical and gynecological surgery functions.', NULL, NULL, NULL, 0, '0000-00-00'),
(453, '29-1221.00', 'Pediatricians, General', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent diseases and injuries in children. May refer patients to specialists for further diagnosis or treatment, as needed.', NULL, NULL, NULL, 0, '0000-00-00'),
(454, '29-1222.00', 'Physicians, Pathologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose diseases and conduct lab tests using organs, body tissues, and fluids. Includes medical examiners.', NULL, NULL, NULL, 0, '0000-00-00'),
(455, '29-1223.00', 'Psychiatrists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent mental disorders.', NULL, NULL, NULL, 0, '0000-00-00'),
(456, '29-1224.00', 'Radiologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat diseases and injuries using medical imaging techniques, such as x rays, magnetic resonance imaging (MRI), nuclear medicine, and ultrasounds. May perform minimally invasive medical procedures and tests.', NULL, NULL, NULL, 0, '0000-00-00'),
(457, '29-1229.00', 'Physicians, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All physicians not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(458, '29-1229.01', 'Allergists and Immunologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent allergic diseases and disease processes affecting the immune system.', NULL, NULL, NULL, 0, '0000-00-00'),
(459, '29-1229.02', 'Hospitalists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide inpatient care predominantly in settings such as medical wards, acute care units, intensive care units, rehabilitation centers, or emergency rooms. Manage and coordinate patient care throughout treatment.', NULL, NULL, NULL, 0, '0000-00-00'),
(460, '29-1229.03', 'Urologists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent benign and malignant medical and surgical disorders of the genitourinary system and the renal glands.', NULL, NULL, NULL, 0, '0000-00-00'),
(461, '29-1229.04', 'Physical Medicine and Rehabilitation Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat disorders requiring physiotherapy to provide physical, mental, and occupational rehabilitation.', NULL, NULL, NULL, 0, '0000-00-00'),
(462, '29-1229.05', 'Preventive Medicine Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of general preventive medicine and public health issues to promote health care to groups or individuals, and aid in the prevention or reduction of risk of disease, injury, disability, or death. May practice population-based medicine or diagnose and treat patients in the context of clinical health promotion and disease prevention.', NULL, NULL, NULL, 0, '0000-00-00'),
(463, '29-1229.06', 'Sports Medicine Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent injuries that occur during sporting events, athletic training, and physical activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(464, '29-1241.00', 'Ophthalmologists, Except Pediatric', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and perform surgery to treat and help prevent disorders and diseases of the eye. May also provide vision services for treatment including glasses and contacts.', NULL, NULL, NULL, 0, '0000-00-00'),
(465, '29-1242.00', 'Orthopedic Surgeons, Except Pediatric', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and perform surgery to treat and prevent rheumatic and other diseases in the musculoskeletal system.', NULL, NULL, NULL, 0, '0000-00-00'),
(466, '29-1243.00', 'Pediatric Surgeons', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and perform surgery to treat fetal abnormalities and birth defects, diseases, and injuries in fetuses, premature and newborn infants, children, and adolescents. Includes all pediatric surgical specialties and subspecialties.', NULL, NULL, NULL, 0, '0000-00-00'),
(467, '29-1249.00', 'Surgeons, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All surgeons not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(468, '29-1291.00', 'Acupuncturists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and prevent disorders by stimulating specific acupuncture points within the body using acupuncture needles. May also use cups, nutritional supplements, therapeutic massage, acupressure, and other alternative health therapies.', NULL, NULL, NULL, 0, '0000-00-00'),
(469, '29-1292.00', 'Dental Hygienists', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Administer oral hygiene care to patients. Assess patient oral hygiene problems or needs and maintain health records. Advise patients on oral health maintenance and disease prevention. May provide advanced care such as providing fluoride treatment or administering topical anesthesia.', NULL, NULL, NULL, 0, '0000-00-00'),
(470, '29-1299.00', 'Healthcare Diagnosing or Treating Practitioners, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All healthcare diagnosing or treating practitioners not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(471, '29-1299.01', 'Naturopathic Physicians', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose, treat, and help prevent diseases using a system of practice that is based on the natural healing capacity of individuals. May use physiological, psychological or mechanical methods. May also use natural medicines, prescription or legend drugs, foods, herbs, or other natural remedies.', NULL, NULL, NULL, 0, '0000-00-00'),
(472, '29-1299.02', 'Orthoptists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Diagnose and treat visual system disorders such as binocular vision and eye movement impairments.', NULL, NULL, NULL, 0, '0000-00-00'),
(473, '29-2011.00', 'Medical and Clinical Laboratory Technologists', 4, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Perform complex medical laboratory tests for diagnosis, treatment, and prevention of disease. May train or supervise staff.', NULL, NULL, NULL, 0, '0000-00-00'),
(474, '29-2011.01', 'Cytogenetic Technologists', 4, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Analyze chromosomes or chromosome segments found in biological specimens, such as amniotic fluids, bone marrow, solid tumors, and blood to aid in the study, diagnosis, classification, or treatment of inherited or acquired genetic diseases. Conduct analyses through classical cytogenetic, fluorescent in situ hybridization (FISH) or array comparative genome hybridization (aCGH) techniques.', NULL, NULL, NULL, 0, '0000-00-00'),
(475, '29-2011.02', 'Cytotechnologists', 5, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Stain, mount, and study cells to detect evidence of cancer, hormonal abnormalities, and other pathological conditions following established standards and practices.', NULL, NULL, NULL, 0, '0000-00-00'),
(476, '29-2011.04', 'Histotechnologists', NULL, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of health and disease causes to evaluate new laboratory techniques and procedures to examine tissue samples. Process and prepare histological slides from tissue sections for microscopic examination and diagnosis by pathologists. May solve technical or instrument problems or assist with research studies.', NULL, NULL, NULL, 0, '0000-00-00'),
(477, '29-2012.00', 'Medical and Clinical Laboratory Technicians', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Perform routine medical laboratory tests for the diagnosis, treatment, and prevention of disease. May work under the supervision of a medical technologist.', NULL, NULL, NULL, 0, '0000-00-00'),
(478, '29-2012.01', 'Histology Technicians', NULL, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Prepare histological slides from tissue sections for microscopic examination and diagnosis by pathologists. May assist with research studies.', NULL, NULL, NULL, 0, '0000-00-00'),
(479, '29-2031.00', 'Cardiovascular Technologists and Technicians', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Conduct tests on pulmonary or cardiovascular systems of patients for diagnostic, therapeutic, or research purposes. May conduct or assist in electrocardiograms, cardiac catheterizations, pulmonary functions, lung capacity, and similar tests.', NULL, NULL, NULL, 0, '0000-00-00'),
(480, '29-2032.00', 'Diagnostic Medical Sonographers', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Produce ultrasonic recordings of internal organs for use by physicians. Includes vascular technologists.', NULL, NULL, NULL, 0, '0000-00-00'),
(481, '29-2033.00', 'Nuclear Medicine Technologists', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Prepare, administer, and measure radioactive isotopes in therapeutic, diagnostic, and tracer studies using a variety of radioisotope equipment. Prepare stock solutions of radioactive materials and calculate doses to be administered by radiologists. Subject patients to radiation. Execute blood volume, red cell survival, and fat absorption studies following standard laboratory techniques.', NULL, NULL, NULL, 0, '0000-00-00'),
(482, '29-2034.00', 'Radiologic Technologists and Technicians', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Take x-rays and CAT scans or administer nonradioactive materials into patient\'s bloodstream for diagnostic or research purposes. Includes radiologic technologists and technicians who specialize in other scanning modalities.', NULL, NULL, NULL, 0, '0000-00-00'),
(483, '29-2035.00', 'Magnetic Resonance Imaging Technologists', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Operate Magnetic Resonance Imaging (MRI) scanners. Monitor patient safety and comfort, and view images of area being scanned to ensure quality of pictures. May administer gadolinium contrast dosage intravenously. May interview patient, explain MRI procedures, and position patient on examining table. May enter into the computer data such as patient history, anatomical area to be scanned, orientation specified, and position of entry.', NULL, NULL, NULL, 0, '0000-00-00'),
(484, '29-2036.00', 'Medical Dosimetrists', NULL, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Generate radiation treatment plans, develop radiation dose calculations, communicate and supervise the treatment plan implementation, and consult with members of radiation oncology team.', NULL, NULL, NULL, 0, '0000-00-00'),
(485, '29-2042.00', 'Emergency Medical Technicians', NULL, 61, 161, NULL, NULL, NULL, NULL, NULL, 'Assess injuries and illnesses and administer basic emergency medical care. May transport injured or sick persons to medical facilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(486, '29-2043.00', 'Paramedics', NULL, 61, 161, NULL, NULL, NULL, NULL, NULL, 'Administer basic or advanced emergency medical care and assess injuries and illnesses. May administer medication intravenously, use equipment such as EKGs, or administer advanced life support to sick or injured individuals.', NULL, NULL, NULL, 0, '0000-00-00'),
(487, '29-2051.00', 'Dietetic Technicians', 2, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assist in the provision of food service and nutritional programs, under the supervision of a dietitian. May plan and produce meals based on established guidelines, teach principles of food and nutrition, or counsel individuals.', NULL, NULL, NULL, 0, '0000-00-00'),
(488, '29-2052.00', 'Pharmacy Technicians', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Prepare medications under the direction of a pharmacist. May measure, mix, count out, label, and record amounts and dosages of medications according to prescription orders.', NULL, NULL, NULL, 0, '0000-00-00'),
(489, '29-2053.00', 'Psychiatric Technicians', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Care for individuals with mental or emotional conditions or disabilities, following the instructions of physicians or other health practitioners. Monitor patients\' physical and emotional well-being and report to medical staff. May participate in rehabilitation and treatment programs, help with personal hygiene, and administer oral or injectable medications.', NULL, NULL, NULL, 0, '0000-00-00'),
(490, '29-2055.00', 'Surgical Technologists', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assist in operations, under the supervision of surgeons, registered nurses, or other surgical personnel. May help set up operating room, prepare and transport patients for surgery, adjust lights and equipment, pass instruments and other supplies to surgeons and surgeons\' assistants, hold retractors, cut sutures, and help count sponges, needles, supplies, and instruments.', NULL, NULL, NULL, 0, '0000-00-00'),
(491, '29-2056.00', 'Veterinary Technologists and Technicians', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Perform medical tests in a laboratory environment for use in the treatment and diagnosis of diseases in animals. Prepare vaccines and serums for prevention of diseases. Prepare tissue samples, take blood samples, and execute laboratory tests, such as urinalysis and blood counts. Clean and sterilize instruments and materials and maintain equipment and machines. May assist a veterinarian during surgery.', NULL, NULL, NULL, 0, '0000-00-00'),
(492, '29-2057.00', 'Ophthalmic Medical Technicians', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assist ophthalmologists by performing ophthalmic clinical functions. May administer eye exams, administer eye medications, and instruct the patient in care and use of corrective lenses.', NULL, NULL, NULL, 0, '0000-00-00'),
(493, '29-2061.00', 'Licensed Practical and Licensed Vocational Nurses', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Care for ill, injured, or convalescing patients or persons with disabilities in hospitals, nursing homes, clinics, private homes, group homes, and similar institutions. May work under the supervision of a registered nurse. Licensing required.', NULL, NULL, NULL, 0, '0000-00-00'),
(494, '29-2072.00', 'Medical Records Specialists', NULL, 61, 169, NULL, NULL, NULL, NULL, NULL, 'Compile, process, and maintain medical records of hospital and clinic patients in a manner consistent with medical, administrative, ethical, legal, and regulatory requirements of the healthcare system. Classify medical and healthcare concepts, including diagnosis, procedures, medical services, and equipment, into the healthcare industry\'s numerical coding system. Includes medical coders.', NULL, NULL, NULL, 0, '0000-00-00'),
(495, '29-2081.00', 'Opticians, Dispensing', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Design, measure, fit, and adapt lenses and frames for client according to written optical prescription or specification. Assist client with inserting, removing, and caring for contact lenses. Assist client with selecting frames. Measure customer for size of eyeglasses and coordinate frames with facial and eye measurements and optical prescription. Prepare work order for optical laboratory containing instructions for grinding and mounting lenses in frames. Verify exactness of finished lens spectacles. Adjust frame and lens position to fit client. May shape or reshape frames. Includes contact lens opticians.', NULL, NULL, NULL, 0, '0000-00-00'),
(496, '29-2091.00', 'Orthotists and Prosthetists', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Design, measure, fit, and adapt orthopedic braces, appliances or prostheses, such as limbs or facial parts for patients with disabling conditions.', NULL, NULL, NULL, 0, '0000-00-00'),
(497, '29-2092.00', 'Hearing Aid Specialists', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Select and fit hearing aids for customers. Administer and interpret tests of hearing. Assess hearing instrument efficacy. Take ear impressions and prepare, design, and modify ear molds.', NULL, NULL, NULL, 0, '0000-00-00'),
(498, '29-2099.00', 'Health Technologists and Technicians, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All health technologists and technicians not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(499, '29-2099.01', 'Neurodiagnostic Technologists', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Conduct electroneurodiagnostic (END) tests such as electroencephalograms, evoked potentials, polysomnograms, or electronystagmograms. May perform nerve conduction studies.', NULL, NULL, NULL, 0, '0000-00-00'),
(500, '29-2099.05', 'Ophthalmic Medical Technologists', 3, 61, 159, NULL, NULL, NULL, NULL, NULL, 'Assist ophthalmologists by performing ophthalmic clinical functions and ophthalmic photography. Provide instruction and supervision to other ophthalmic personnel. Assist with minor surgical procedures, applying aseptic techniques and preparing instruments. May perform eye exams, administer eye medications, and instruct patients in care and use of corrective lenses.', NULL, NULL, NULL, 0, '0000-00-00'),
(501, '29-2099.08', 'Patient Representatives', 3, 61, 148, NULL, NULL, NULL, NULL, NULL, 'Assist patients in obtaining services, understanding policies and making health care decisions.', NULL, NULL, NULL, 0, '0000-00-00'),
(502, '29-9021.00', 'Health Information Technologists and Medical Registrars', NULL, 61, 169, NULL, NULL, NULL, NULL, NULL, 'Apply knowledge of healthcare and information systems to assist in the design, development, and continued modification and analysis of computerized healthcare systems. Abstract, collect, and analyze treatment and followup information of patients. May educate staff and assist in problem solving to promote the implementation of the healthcare information system. May design, develop, test, and implement databases with complete history, diagnosis, treatment, and health status to help monitor diseases.', NULL, NULL, NULL, 0, '0000-00-00'),
(503, '29-9091.00', 'Athletic Trainers', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Evaluate and treat musculoskeletal injuries or illnesses. Provide preventive, therapeutic, emergency, and rehabilitative care.', NULL, NULL, NULL, 0, '0000-00-00'),
(504, '29-9092.00', 'Genetic Counselors', 5, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assess individual or family risk for a variety of inherited conditions, such as genetic disorders and birth defects. Provide information to other healthcare providers or to individuals and families concerned with the risk of inherited conditions. Advise individuals and families to support informed decisionmaking and coping methods for those at risk. May help conduct research related to genetic conditions or genetic counseling.', NULL, NULL, NULL, 0, '0000-00-00'),
(505, '29-9093.00', 'Surgical Assistants', 3, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Assist in operations, under the supervision of surgeons. May, in accordance with state laws, help surgeons to make incisions and close surgical sites, manipulate or remove tissues, implant surgical devices or drains, suction the surgical site, place catheters, clamp or cauterize vessels or tissue, and apply dressings to surgical site.', NULL, NULL, NULL, 0, '0000-00-00'),
(506, '29-9099.00', 'Healthcare Practitioners and Technical Workers, All Other', NULL, 61, 212, NULL, NULL, NULL, NULL, NULL, 'All healthcare practitioners and technical workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(507, '29-9099.01', 'Midwives', 4, 61, 212, NULL, NULL, NULL, NULL, NULL, 'Provide prenatal care and childbirth assistance.', NULL, NULL, NULL, 0, '0000-00-00'),
(508, '31-1121.00', 'Home Health Aides', 2, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Monitor the health status of an individual with disabilities or illness, and address their health-related needs, such as changing bandages, dressing wounds, or administering medication. Work is performed under the direction of offsite or intermittent onsite licensed nursing staff. Provide assistance with routine healthcare tasks or activities of daily living, such as feeding, bathing, toileting, or ambulation. May also help with tasks such as preparing meals, doing light housekeeping, and doing laundry depending on the patient\'s abilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(509, '31-1122.00', 'Personal Care Aides', 2, 62, 190, NULL, NULL, NULL, NULL, NULL, 'Provide personalized assistance to individuals with disabilities or illness who require help with personal care and activities of daily living support (e.g., feeding, bathing, dressing, grooming, toileting, and ambulation). May also provide help with tasks such as preparing meals, doing light housekeeping, and doing laundry. Work is performed in various settings depending on the needs of the care recipient and may include locations such as their home, place of work, out in the community, or at a daytime nonresidential facility.', NULL, NULL, NULL, 0, '0000-00-00'),
(510, '31-1131.00', 'Nursing Assistants', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Provide or assist with basic care or support under the direction of onsite licensed nursing staff. Perform duties such as monitoring of health status, feeding, bathing, dressing, grooming, toileting, or ambulation of patients in a health or nursing facility. May include medication administration and other health-related tasks. Includes nursing care attendants, nursing aides, and nursing attendants.', NULL, NULL, NULL, 0, '0000-00-00'),
(511, '31-1132.00', 'Orderlies', 2, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Transport patients to areas such as operating rooms or x-ray rooms using wheelchairs, stretchers, or moveable beds. May maintain stocks of supplies or clean and transport equipment. Psychiatric orderlies are included in Psychiatric Aides.', NULL, NULL, NULL, 0, '0000-00-00'),
(512, '31-1133.00', 'Psychiatric Aides', 2, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Assist mentally impaired or emotionally disturbed patients, working under direction of nursing and medical staff. May assist with daily living activities, lead patients in educational and recreational activities, or accompany patients to and from examinations and treatments. May restrain violent patients. Includes psychiatric orderlies.', NULL, NULL, NULL, 0, '0000-00-00'),
(513, '31-2011.00', 'Occupational Therapy Assistants', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Assist occupational therapists in providing occupational therapy treatments and procedures. May, in accordance with state laws, assist in development of treatment plans, carry out routine functions, direct activity programs, and document the progress of treatments. Generally requires formal training.', NULL, NULL, NULL, 0, '0000-00-00'),
(514, '31-2012.00', 'Occupational Therapy Aides', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Under close supervision of an occupational therapist or occupational therapy assistant, perform only delegated, selected, or routine tasks in specific situations. These duties include preparing patient and treatment room.', NULL, NULL, NULL, 0, '0000-00-00'),
(515, '31-2021.00', 'Physical Therapist Assistants', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Assist physical therapists in providing physical therapy treatments and procedures. May, in accordance with state laws, assist in the development of treatment plans, carry out routine functions, document the progress of treatment, and modify specific treatments in accordance with patient status and within the scope of treatment plans established by a physical therapist. Generally requires formal training.', NULL, NULL, NULL, 0, '0000-00-00'),
(516, '31-2022.00', 'Physical Therapist Aides', 2, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Under close supervision of a physical therapist or physical therapy assistant, perform only delegated, selected, or routine tasks in specific situations. These duties include preparing the patient and the treatment area.', NULL, NULL, NULL, 0, '0000-00-00'),
(517, '31-9011.00', 'Massage Therapists', 3, 62, 190, NULL, NULL, NULL, NULL, NULL, 'Perform therapeutic massages of soft tissues and joints. May assist in the assessment of range of motion and muscle strength, or propose client therapy plans.', NULL, NULL, NULL, 0, '0000-00-00'),
(518, '31-9091.00', 'Dental Assistants', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Perform limited clinical duties under the direction of a dentist. Clinical duties may include equipment preparation and sterilization, preparing patients for treatment, assisting the dentist during treatment, and providing patients with instructions for oral healthcare procedures. May perform administrative duties such as scheduling appointments, maintaining medical records, billing, and coding information for insurance purposes.', NULL, NULL, NULL, 0, '0000-00-00'),
(519, '31-9092.00', 'Medical Assistants', 3, 62, 212, NULL, NULL, NULL, NULL, NULL, 'Perform administrative and certain clinical duties under the direction of a physician. Administrative duties may include scheduling appointments, maintaining medical records, billing, and coding information for insurance purposes. Clinical duties may include taking and recording vital signs and medical histories, preparing patients for examination, drawing blood, and administering medications as directed by physician.', NULL, NULL, NULL, 0, '0000-00-00'),
(520, '31-9093.00', 'Medical Equipment Preparers', 2, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Prepare, sterilize, install, or clean laboratory or healthcare equipment. May perform routine laboratory tasks and operate or inspect equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(521, '31-9094.00', 'Medical Transcriptionists', 3, 62, 169, NULL, NULL, NULL, NULL, NULL, 'Transcribe medical reports recorded by physicians and other healthcare practitioners using various electronic devices, covering office visits, emergency room visits, diagnostic imaging studies, operations, chart reviews, and final summaries. Transcribe dictated reports and translate abbreviations into fully understandable form. Edit as necessary and return reports in either printed or electronic form for review and signature, or correction.', NULL, NULL, NULL, 0, '0000-00-00'),
(522, '31-9095.00', 'Pharmacy Aides', 2, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Record drugs delivered to the pharmacy, store incoming merchandise, and inform the supervisor of stock needs. May operate cash register and accept prescriptions for filling.', NULL, NULL, NULL, 0, '0000-00-00'),
(523, '31-9096.00', 'Veterinary Assistants and Laboratory Animal Caretakers', 2, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Feed, water, and examine pets and other nonfarm animals for signs of illness, disease, or injury in laboratories and animal hospitals and clinics. Clean and disinfect cages and work areas, and sterilize laboratory and surgical equipment. May provide routine postoperative care, administer medication orally or topically, or prepare samples for laboratory examination under the supervision of veterinary or laboratory animal technologists or technicians, veterinarians, or scientists.', NULL, NULL, NULL, 0, '0000-00-00'),
(524, '31-9097.00', 'Phlebotomists', 3, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Draw blood for tests, transfusions, donations, or research. May explain the procedure to patients and assist in the recovery of patients with adverse reactions.', NULL, NULL, NULL, 0, '0000-00-00'),
(525, '31-9099.00', 'Healthcare Support Workers, All Other', NULL, 62, 209, NULL, NULL, NULL, NULL, NULL, 'All healthcare support workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(526, '31-9099.01', 'Speech-Language Pathology Assistants', 3, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Assist speech-language pathologists in the assessment and treatment of speech, language, voice, and fluency disorders. Implement speech and language programs or activities as planned and directed by speech-language pathologists. Monitor the use of alternative communication devices and systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(527, '31-9099.02', 'Endoscopy Technicians', 3, 62, 209, NULL, NULL, NULL, NULL, NULL, 'Maintain a sterile field to provide support for physicians and nurses during endoscopy procedures. Prepare and maintain instruments and equipment. May obtain specimens.', NULL, NULL, NULL, 0, '0000-00-00'),
(528, '33-1011.00', 'First-Line Supervisors of Correctional Officers', 3, 71, 156, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of correctional officers and jailers.', NULL, NULL, NULL, 0, '0000-00-00'),
(529, '33-1012.00', 'First-Line Supervisors of Police and Detectives', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of members of police force.', NULL, NULL, NULL, 0, '0000-00-00'),
(530, '33-1021.00', 'First-Line Supervisors of Firefighting and Prevention Workers', 3, 71, 161, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of workers engaged in firefighting and fire prevention and control.', NULL, NULL, NULL, 0, '0000-00-00'),
(531, '33-1091.00', 'First-Line Supervisors of Security Workers', NULL, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of security workers and security guards.', NULL, NULL, NULL, 0, '0000-00-00'),
(532, '33-1099.00', 'First-Line Supervisors of Protective Service Workers, All Other', NULL, 71, 208, NULL, NULL, NULL, NULL, NULL, 'All protective service supervisors not listed separately above.', NULL, NULL, NULL, 0, '0000-00-00'),
(533, '33-2011.00', 'Firefighters', 3, 71, 161, NULL, NULL, NULL, NULL, NULL, 'Control and extinguish fires or respond to emergency situations where life, property, or the environment is at risk. Duties may include fire prevention, emergency medical service, hazardous material response, search and rescue, and disaster assistance.', NULL, NULL, NULL, 0, '0000-00-00'),
(534, '33-2021.00', 'Fire Inspectors and Investigators', 3, 71, 161, NULL, NULL, NULL, NULL, NULL, 'Inspect buildings to detect fire hazards and enforce local ordinances and state laws, or investigate and gather facts to determine cause of fires and explosions.', NULL, NULL, NULL, 0, '0000-00-00'),
(535, '33-2022.00', 'Forest Fire Inspectors and Prevention Specialists', 3, 71, 161, NULL, NULL, NULL, NULL, NULL, 'Enforce fire regulations, inspect forest for fire hazards, and recommend forest fire prevention or control measures. May report forest fires and weather conditions.', NULL, NULL, NULL, 0, '0000-00-00'),
(536, '33-3011.00', 'Bailiffs', 3, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Maintain order in courts of law.', NULL, NULL, NULL, 0, '0000-00-00'),
(537, '33-3012.00', 'Correctional Officers and Jailers', 2, 71, 156, NULL, NULL, NULL, NULL, NULL, 'Guard inmates in penal or rehabilitative institutions in accordance with established regulations and procedures. May guard prisoners in transit between jail, courtroom, prison, or other point. Includes deputy sheriffs and police who spend the majority of their time guarding prisoners in correctional institutions.', NULL, NULL, NULL, 0, '0000-00-00'),
(538, '33-3021.00', 'Detectives and Criminal Investigators', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Conduct investigations related to suspected violations of federal, state, or local laws to prevent or solve crimes.', NULL, NULL, NULL, 0, '0000-00-00'),
(539, '33-3021.02', 'Police Identification and Records Officers', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Collect evidence at crime scene, classify and identify fingerprints, and photograph evidence for use in criminal and civil cases.', NULL, NULL, NULL, 0, '0000-00-00'),
(540, '33-3021.06', 'Intelligence Analysts', 4, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Gather, analyze, or evaluate information from a variety of sources, such as law enforcement databases, surveillance, intelligence networks or geographic information systems. Use intelligence data to anticipate and prevent organized crime activities, such as terrorism.', NULL, NULL, NULL, 0, '0000-00-00'),
(541, '33-3031.00', 'Fish and Game Wardens', 4, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Patrol assigned area to prevent fish and game law violations. Investigate reports of damage to crops or property by wildlife. Compile biological data.', NULL, NULL, NULL, 0, '0000-00-00'),
(542, '33-3041.00', 'Parking Enforcement Workers', 2, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Patrol assigned area, such as public parking lot or city streets to issue tickets to overtime parking violators and illegally parked vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(543, '33-3051.00', 'Police and Sheriff\'s Patrol Officers', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Maintain order and protect life and property by enforcing local, tribal, state, or federal laws and ordinances. Perform a combination of the following duties: patrol a specific area; direct traffic; issue traffic summonses; investigate accidents; apprehend and arrest suspects, or serve legal processes of courts. Includes police officers working at educational institutions.', NULL, NULL, NULL, 0, '0000-00-00'),
(544, '33-3051.04', 'Customs and Border Protection Officers', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Investigate and inspect persons, common carriers, goods, and merchandise, arriving in or departing from the United States or between states to detect violations of immigration and customs laws and regulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(545, '33-3052.00', 'Transit and Railroad Police', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Protect and police railroad and transit property, employees, or passengers.', NULL, NULL, NULL, 0, '0000-00-00'),
(546, '33-9011.00', 'Animal Control Workers', 2, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Handle animals for the purpose of investigations of mistreatment, or control of abandoned, dangerous, or unattended animals.', NULL, NULL, NULL, 0, '0000-00-00'),
(547, '33-9021.00', 'Private Detectives and Investigators', 3, 71, 174, NULL, NULL, NULL, NULL, NULL, 'Gather, analyze, compile, and report information regarding individuals or organizations to clients, or detect occurrences of unlawful acts or infractions of rules in private establishment.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(548, '33-9031.00', 'Gambling Surveillance Officers and Gambling Investigators', 2, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Observe gambling operation for irregular activities such as cheating or theft by either employees or patrons. Investigate potential threats to gambling assets such as money, chips, and gambling equipment. Act as oversight and security agent for management and customers.', NULL, NULL, NULL, 0, '0000-00-00'),
(549, '33-9032.00', 'Security Guards', 2, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Guard, patrol, or monitor premises to prevent theft, violence, or infractions of rules. May operate x-ray and metal detector equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(550, '33-9091.00', 'Crossing Guards and Flaggers', 2, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Guide or control vehicular or pedestrian traffic at such places as streets, schools, railroad crossings, or construction sites.', NULL, NULL, NULL, 0, '0000-00-00'),
(551, '33-9092.00', 'Lifeguards, Ski Patrol, and Other Recreational Protective Service Workers', 2, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Monitor recreational areas, such as pools, beaches, or ski slopes, to provide assistance and protection to participants.', NULL, NULL, NULL, 0, '0000-00-00'),
(552, '33-9093.00', 'Transportation Security Screeners', 2, 71, 185, NULL, NULL, NULL, NULL, NULL, 'Conduct screening of passengers, baggage, or cargo to ensure compliance with Transportation Security Administration (TSA) regulations. May operate basic security equipment such as x-ray machines and hand wands at screening checkpoints.', NULL, NULL, NULL, 0, '0000-00-00'),
(553, '33-9094.00', 'School Bus Monitors', NULL, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Maintain order among students on a school bus. Duties include helping students safely board and exit and communicating behavioral problems. May perform pretrip and posttrip inspections and prepare for and assist in emergency evacuations.', NULL, NULL, NULL, 0, '0000-00-00'),
(554, '33-9099.00', 'Protective Service Workers, All Other', NULL, 71, 208, NULL, NULL, NULL, NULL, NULL, 'All protective service workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(555, '33-9099.02', 'Retail Loss Prevention Specialists', 2, 71, 208, NULL, NULL, NULL, NULL, NULL, 'Implement procedures and systems to prevent merchandise loss. Conduct audits and investigations of employee activity. May assist in developing policies, procedures, and systems for safeguarding assets.', NULL, NULL, NULL, 0, '0000-00-00'),
(556, '35-1011.00', 'Chefs and Head Cooks', 3, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Direct and may participate in the preparation, seasoning, and cooking of salads, soups, fish, meats, vegetables, desserts, or other foods. May plan and price menu items, order supplies, and keep records and accounts.', NULL, NULL, NULL, 0, '0000-00-00'),
(557, '35-1012.00', 'First-Line Supervisors of Food Preparation and Serving Workers', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of workers engaged in preparing and serving food.', NULL, NULL, NULL, 0, '0000-00-00'),
(558, '35-2011.00', 'Cooks, Fast Food', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare and cook food in a fast food restaurant with a limited menu. Duties of these cooks are limited to preparation of a few basic items and normally involve operating large-volume single-purpose cooking equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(559, '35-2012.00', 'Cooks, Institution and Cafeteria', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare and cook large quantities of food for institutions, such as schools, hospitals, or cafeterias.', NULL, NULL, NULL, 0, '0000-00-00'),
(560, '35-2013.00', 'Cooks, Private Household', 3, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare meals in private homes. Includes personal chefs.', NULL, NULL, NULL, 0, '0000-00-00'),
(561, '35-2014.00', 'Cooks, Restaurant', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare, season, and cook dishes such as soups, meats, vegetables, or desserts in restaurants. May order supplies, keep records and accounts, price items on menu, or plan menu.', NULL, NULL, NULL, 0, '0000-00-00'),
(562, '35-2015.00', 'Cooks, Short Order', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare and cook to order a variety of foods that require only a short preparation time. May take orders from customers and serve patrons at counters or tables.', NULL, NULL, NULL, 0, '0000-00-00'),
(563, '35-2019.00', 'Cooks, All Other', NULL, 60, 203, NULL, NULL, NULL, NULL, NULL, 'All cooks not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(564, '35-2021.00', 'Food Preparation Workers', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Perform a variety of food preparation duties other than cooking, such as preparing cold foods and shellfish, slicing meat, and brewing coffee or tea.', NULL, NULL, NULL, 0, '0000-00-00'),
(565, '35-3011.00', 'Bartenders', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Mix and serve drinks to patrons, directly or through waitstaff.', NULL, NULL, NULL, 0, '0000-00-00'),
(566, '35-3023.00', 'Fast Food and Counter Workers', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Perform duties such as taking orders and serving food and beverages. Serve customers at counter or from a steam table. May take payment. May prepare food and beverages.', NULL, NULL, NULL, 0, '0000-00-00'),
(567, '35-3023.01', 'Baristas', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Prepare or serve specialty coffee or other beverages. Serve food such as baked goods or sandwiches to patrons.', NULL, NULL, NULL, 0, '0000-00-00'),
(568, '35-3031.00', 'Waiters and Waitresses', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Take orders and serve food and beverages to patrons at tables in dining establishment.', NULL, NULL, NULL, 0, '0000-00-00'),
(569, '35-3041.00', 'Food Servers, Nonrestaurant', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Serve food to individuals outside of a restaurant environment, such as in hotel rooms, hospital rooms, residential care facilities, or cars.', NULL, NULL, NULL, 0, '0000-00-00'),
(570, '35-9011.00', 'Dining Room and Cafeteria Attendants and Bartender Helpers', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Facilitate food service. Clean tables; remove dirty dishes; replace soiled table linens; set tables; replenish supply of clean linens, silverware, glassware, and dishes; supply service bar with food; and serve items such as water, condiments, and coffee to patrons.', NULL, NULL, NULL, 0, '0000-00-00'),
(571, '35-9021.00', 'Dishwashers', 1, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Clean dishes, kitchen, food preparation equipment, or utensils.', NULL, NULL, NULL, 0, '0000-00-00'),
(572, '35-9031.00', 'Hosts and Hostesses, Restaurant, Lounge, and Coffee Shop', 2, 60, 203, NULL, NULL, NULL, NULL, NULL, 'Welcome patrons, seat them at tables or in lounge, and help ensure quality of facilities and service.', NULL, NULL, NULL, 0, '0000-00-00'),
(573, '35-9099.00', 'Food Preparation and Serving Related Workers, All Other', NULL, 60, 203, NULL, NULL, NULL, NULL, NULL, 'All food preparation and serving related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(574, '37-1011.00', 'First-Line Supervisors of Housekeeping and Janitorial Workers', 2, 53, 176, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate work activities of cleaning personnel in hotels, hospitals, offices, and other establishments.', NULL, NULL, NULL, 0, '0000-00-00'),
(575, '37-1012.00', 'First-Line Supervisors of Landscaping, Lawn Service, and Groundskeeping Workers', 3, 53, 179, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of workers engaged in landscaping or groundskeeping activities. Work may involve reviewing contracts to ascertain service, machine, and workforce requirements; answering inquiries from potential customers regarding methods, material, and price ranges; and preparing estimates according to labor, material, and machine costs.', NULL, NULL, NULL, 0, '0000-00-00'),
(576, '37-2011.00', 'Janitors and Cleaners, Except Maids and Housekeeping Cleaners', 2, 53, 176, NULL, NULL, NULL, NULL, NULL, 'Keep buildings in clean and orderly condition. Perform heavy cleaning duties, such as cleaning floors, shampooing rugs, washing walls and glass, and removing rubbish. Duties may include tending furnace and boiler, performing routine maintenance activities, notifying management of need for repairs, and cleaning snow or debris from sidewalk.', NULL, NULL, NULL, 0, '0000-00-00'),
(577, '37-2012.00', 'Maids and Housekeeping Cleaners', 1, 53, 176, NULL, NULL, NULL, NULL, NULL, 'Perform any combination of light cleaning duties to maintain private households or commercial establishments, such as hotels and hospitals, in a clean and orderly manner. Duties may include making beds, replenishing linens, cleaning rooms and halls, and vacuuming.', NULL, NULL, NULL, 0, '0000-00-00'),
(578, '37-2019.00', 'Building Cleaning Workers, All Other', NULL, 53, 176, NULL, NULL, NULL, NULL, NULL, 'All building cleaning workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(579, '37-2021.00', 'Pest Control Workers', 2, 53, 163, NULL, NULL, NULL, NULL, NULL, 'Apply or release chemical solutions or toxic gases and set traps to kill or remove pests and vermin that infest buildings and surrounding areas.', NULL, NULL, NULL, 0, '0000-00-00'),
(580, '37-3011.00', 'Landscaping and Groundskeeping Workers', 1, 53, 179, NULL, NULL, NULL, NULL, NULL, 'Landscape or maintain grounds of property using hand or power tools or equipment. Workers typically perform a variety of tasks, which may include any combination of the following: sod laying, mowing, trimming, planting, watering, fertilizing, digging, raking, sprinkler installation, and installation of mortarless segmental concrete masonry wall units.', NULL, NULL, NULL, 0, '0000-00-00'),
(581, '37-3012.00', 'Pesticide Handlers, Sprayers, and Applicators, Vegetation', 2, 53, 192, NULL, NULL, NULL, NULL, NULL, 'Mix or apply pesticides, herbicides, fungicides, or insecticides through sprays, dusts, vapors, soil incorporation, or chemical application on trees, shrubs, lawns, or crops. Usually requires specific training and state or federal certification.', NULL, NULL, NULL, 0, '0000-00-00'),
(582, '37-3013.00', 'Tree Trimmers and Pruners', 2, 53, 192, NULL, NULL, NULL, NULL, NULL, 'Using sophisticated climbing and rigging techniques, cut away dead or excess branches from trees or shrubs to maintain right-of-way for roads, sidewalks, or utilities, or to improve appearance, health, and value of tree. Prune or treat trees or shrubs using handsaws, hand pruners, clippers, and power pruners. Works off the ground in the tree canopy and may use truck-mounted lifts.', NULL, NULL, NULL, 0, '0000-00-00'),
(583, '37-3019.00', 'Grounds Maintenance Workers, All Other', NULL, 53, 179, NULL, NULL, NULL, NULL, NULL, 'All grounds maintenance workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(584, '39-1013.00', 'First-Line Supervisors of Gambling Services Workers', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of workers in assigned gambling areas. May circulate among tables, observe operations, and ensure that stations and games are covered for each shift. May verify and pay off jackpots. May reset slot machines after payoffs and make repairs or adjustments to slot machines or recommend removal of slot machines for repair. May plan and organize activities and services for guests in hotels/casinos.', NULL, NULL, NULL, 0, '0000-00-00'),
(585, '39-1014.00', 'First-Line Supervisors of Entertainment and Recreation Workers, Except Gambling Services', NULL, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of entertainment and recreation related workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(586, '39-1022.00', 'First-Line Supervisors of Personal Service Workers', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate activities of personal service workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(587, '39-2011.00', 'Animal Trainers', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Train animals for riding, harness, security, performance, or obedience, or for assisting persons with disabilities. Accustom animals to human voice and contact, and condition animals to respond to commands. Train animals according to prescribed standards for show or competition. May train animals to carry pack loads or work as part of pack team.', NULL, NULL, NULL, 0, '0000-00-00'),
(588, '39-2021.00', 'Animal Caretakers', 2, 69, 218, NULL, NULL, NULL, NULL, NULL, 'Feed, water, groom, bathe, exercise, or otherwise provide care to promote and maintain the well-being of pets and other animals that are not raised for consumption, such as dogs, cats, race horses, ornamental fish or birds, zoo animals, and mice. Work in settings such as kennels, animal shelters, zoos, circuses, and aquariums. May keep records of feedings, treatments, and animals received or discharged. May clean, disinfect, and repair cages, pens, or fish tanks.', NULL, NULL, NULL, 0, '0000-00-00'),
(589, '39-3011.00', 'Gambling Dealers', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Operate table games. Stand or sit behind table and operate games of chance by dispensing the appropriate number of cards or blocks to players, or operating other gambling equipment. Distribute winnings or collect players\' money or chips. May compare the house\'s hand against players\' hands.', NULL, NULL, NULL, 0, '0000-00-00'),
(590, '39-3012.00', 'Gambling and Sports Book Writers and Runners', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Post information enabling patrons to wager on various races and sporting events. Assist in the operation of games such as keno and bingo. May operate random number-generating equipment and announce the numbers for patrons. Receive, verify, and record patrons\' wagers. Scan and process winning tickets presented by patrons and pay out winnings for those wagers.', NULL, NULL, NULL, 0, '0000-00-00'),
(591, '39-3019.00', 'Gambling Service Workers, All Other', NULL, 69, 201, NULL, NULL, NULL, NULL, NULL, 'All gambling service workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(592, '39-3021.00', 'Motion Picture Projectionists', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Set up and operate motion picture projection and related sound reproduction equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(593, '39-3031.00', 'Ushers, Lobby Attendants, and Ticket Takers', 2, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Assist patrons at entertainment events by performing duties, such as collecting admission tickets and passes from patrons, assisting in finding seats, searching for lost articles, and helping patrons locate such facilities as restrooms and telephones.', NULL, NULL, NULL, 0, '0000-00-00'),
(594, '39-3091.00', 'Amusement and Recreation Attendants', 1, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Perform a variety of attending duties at amusement or recreation facility. May schedule use of recreation facilities, maintain and provide equipment to participants of sporting events or recreational pursuits, or operate amusement concessions and rides.', NULL, NULL, NULL, 0, '0000-00-00'),
(595, '39-3092.00', 'Costume Attendants', 2, 69, 189, NULL, NULL, NULL, NULL, NULL, 'Select, fit, and take care of costumes for cast members, and aid entertainers. May assist with multiple costume changes during performances.', NULL, NULL, NULL, 0, '0000-00-00'),
(596, '39-3093.00', 'Locker Room, Coatroom, and Dressing Room Attendants', 2, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Provide personal items to patrons or customers in locker rooms, dressing rooms, or coatrooms.', NULL, NULL, NULL, 0, '0000-00-00'),
(597, '39-3099.00', 'Entertainment Attendants and Related Workers, All Other', NULL, 69, 201, NULL, NULL, NULL, NULL, NULL, 'All entertainment attendants and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(598, '39-4011.00', 'Embalmers', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Prepare bodies for interment in conformity with legal requirements.', NULL, NULL, NULL, 0, '0000-00-00'),
(599, '39-4012.00', 'Crematory Operators', NULL, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Operate crematory equipment to reduce human or animal remains to bone fragments in accordance with state and local regulations. Duties may include preparing the body for cremation and performing general maintenance on crematory equipment. May use traditional flame-based cremation, calcination, or alkaline hydrolysis.', NULL, NULL, NULL, 0, '0000-00-00'),
(600, '39-4021.00', 'Funeral Attendants', 2, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Perform a variety of tasks during funeral, such as placing casket in parlor or chapel prior to service, arranging floral offerings or lights around casket, directing or escorting mourners, closing casket, and issuing and storing funeral equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(601, '39-4031.00', 'Morticians, Undertakers, and Funeral Arrangers', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Perform various tasks to arrange and direct individual funeral services, such as coordinating transportation of body to mortuary, interviewing family or other authorized person to arrange details, selecting pallbearers, aiding with the selection of officials for religious rites, and providing transportation for mourners.', NULL, NULL, NULL, 0, '0000-00-00'),
(602, '39-5011.00', 'Barbers', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Provide barbering services, such as cutting, trimming, shampooing, and styling hair; trimming beards; or giving shaves.', NULL, NULL, NULL, 0, '0000-00-00'),
(603, '39-5012.00', 'Hairdressers, Hairstylists, and Cosmetologists', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Provide beauty services, such as cutting, coloring, and styling hair, and massaging and treating scalp. May shampoo hair, apply makeup, dress wigs, remove hair, and provide nail and skincare services.', NULL, NULL, NULL, 0, '0000-00-00'),
(604, '39-5091.00', 'Makeup Artists, Theatrical and Performance', 3, 69, 189, NULL, NULL, NULL, NULL, NULL, 'Apply makeup to performers to reflect period, setting, and situation of their role.', NULL, NULL, NULL, 0, '0000-00-00'),
(605, '39-5092.00', 'Manicurists and Pedicurists', 2, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Clean and shape customers\' fingernails and toenails. May polish or decorate nails.', NULL, NULL, NULL, 0, '0000-00-00'),
(606, '39-5093.00', 'Shampooers', 2, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Shampoo and rinse customers\' hair.', NULL, NULL, NULL, 0, '0000-00-00'),
(607, '39-5094.00', 'Skincare Specialists', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Provide skincare treatments to face and body to enhance an individual\'s appearance. Includes electrologists and laser hair removal specialists.', NULL, NULL, NULL, 0, '0000-00-00'),
(608, '39-6011.00', 'Baggage Porters and Bellhops', 2, 69, 176, NULL, NULL, NULL, NULL, NULL, 'Handle baggage for travelers at transportation terminals or for guests at hotels or similar establishments.', NULL, NULL, NULL, 0, '0000-00-00'),
(609, '39-6012.00', 'Concierges', 3, 69, 176, NULL, NULL, NULL, NULL, NULL, 'Assist patrons at hotel, apartment, or office building with personal services. May take messages; arrange or give advice on transportation, business services, or entertainment; or monitor guest requests for housekeeping and maintenance.', NULL, NULL, NULL, 0, '0000-00-00'),
(610, '39-7011.00', 'Tour Guides and Escorts', 3, 69, 215, NULL, NULL, NULL, NULL, NULL, 'Escort individuals or groups on sightseeing tours or through places of interest, such as industrial establishments, public buildings, and art galleries.', NULL, NULL, NULL, 0, '0000-00-00'),
(611, '39-7012.00', 'Travel Guides', 3, 69, 215, NULL, NULL, NULL, NULL, NULL, 'Plan, organize, and conduct long-distance travel, tours, and expeditions for individuals and groups.', NULL, NULL, NULL, 0, '0000-00-00'),
(612, '39-9011.00', 'Childcare Workers', 2, 69, 160, NULL, NULL, NULL, NULL, NULL, 'Attend to children at schools, businesses, private households, and childcare institutions. Perform a variety of tasks, such as dressing, feeding, bathing, and overseeing play.', NULL, NULL, NULL, 0, '0000-00-00'),
(613, '39-9011.01', 'Nannies', 2, 69, 160, NULL, NULL, NULL, NULL, NULL, 'Care for children in private households and provide support and expertise to parents in satisfying children\'s physical, emotional, intellectual, and social needs. Duties may include meal planning and preparation, laundry and clothing care, organization of play activities and outings, discipline, intellectual stimulation, language activities, and transportation.', NULL, NULL, NULL, 0, '0000-00-00'),
(614, '39-9031.00', 'Exercise Trainers and Group Fitness Instructors', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Instruct or coach groups or individuals in exercise activities for the primary purpose of personal fitness. Demonstrate techniques and form, observe participants, and explain to them corrective measures necessary to improve their skills. Develop and implement individualized approaches to exercise.', NULL, NULL, NULL, 0, '0000-00-00'),
(615, '39-9032.00', 'Recreation Workers', 4, 69, 201, NULL, NULL, NULL, NULL, NULL, 'Conduct recreation activities with groups in public, private, or volunteer agencies or recreation facilities. Organize and promote activities, such as arts and crafts, sports, games, music, dramatics, social recreation, camping, and hobbies, taking into account the needs and interests of individual members.', NULL, NULL, NULL, 0, '0000-00-00'),
(616, '39-9041.00', 'Residential Advisors', 3, 69, 190, NULL, NULL, NULL, NULL, NULL, 'Coordinate activities in resident facilities in secondary school and college dormitories, group homes, or similar establishments. Order supplies and determine need for maintenance, repairs, and furnishings. May maintain household records and assign rooms. May assist residents with problem solving or refer them to counseling resources.', NULL, NULL, NULL, 0, '0000-00-00'),
(617, '39-9099.00', 'Personal Care and Service Workers, All Other', NULL, 69, 190, NULL, NULL, NULL, NULL, NULL, 'All personal care and service workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(618, '41-1011.00', 'First-Line Supervisors of Retail Sales Workers', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of retail sales workers in an establishment or department. Duties may include management functions, such as purchasing, budgeting, accounting, and personnel work, in addition to supervisory duties.', NULL, NULL, NULL, 0, '0000-00-00'),
(619, '41-1012.00', 'First-Line Supervisors of Non-Retail Sales Workers', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of sales workers other than retail sales workers. May perform duties such as budgeting, accounting, and personnel work, in addition to supervisory duties.', NULL, NULL, NULL, 0, '0000-00-00'),
(620, '41-2011.00', 'Cashiers', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Receive and disburse money in establishments other than financial institutions. May use electronic scanners, cash registers, or related equipment. May process credit or debit card transactions and validate checks.', NULL, NULL, NULL, 0, '0000-00-00'),
(621, '41-2012.00', 'Gambling Change Persons and Booth Cashiers', 2, 72, 201, NULL, NULL, NULL, NULL, NULL, 'Exchange coins, tokens, and chips for patrons\' money. May issue payoffs and obtain customer\'s signature on receipt. May operate a booth in the slot machine area and furnish change persons with money bank at the start of the shift, or count and audit money in drawers.', NULL, NULL, NULL, 0, '0000-00-00'),
(622, '41-2021.00', 'Counter and Rental Clerks', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Receive orders, generally in person, for repairs, rentals, and services. May describe available options, compute cost, and accept payment.', NULL, NULL, NULL, 0, '0000-00-00'),
(623, '41-2022.00', 'Parts Salespersons', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell spare and replacement parts and equipment in repair shop or parts store.', NULL, NULL, NULL, 0, '0000-00-00'),
(624, '41-2031.00', 'Retail Salespersons', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell merchandise, such as furniture, motor vehicles, appliances, or apparel to consumers.', NULL, NULL, NULL, 0, '0000-00-00'),
(625, '41-3011.00', 'Advertising Sales Agents', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell or solicit advertising space, time, or media in publications, signage, TV, radio, or Internet establishments or public spaces.', NULL, NULL, NULL, 0, '0000-00-00'),
(626, '41-3021.00', 'Insurance Sales Agents', 4, 72, 172, NULL, NULL, NULL, NULL, NULL, 'Sell life, property, casualty, health, automotive, or other types of insurance. May refer clients to independent brokers, work as an independent broker, or be employed by an insurance company.', NULL, NULL, NULL, 0, '0000-00-00'),
(627, '41-3031.00', 'Securities, Commodities, and Financial Services Sales Agents', 4, 72, 207, NULL, NULL, NULL, NULL, NULL, 'Buy and sell securities or commodities in investment and trading firms, or provide financial services to businesses and individuals. May advise customers about stocks, bonds, mutual funds, commodities, and market conditions.', NULL, NULL, NULL, 0, '0000-00-00'),
(628, '41-3041.00', 'Travel Agents', 3, 72, 215, NULL, NULL, NULL, NULL, NULL, 'Plan and sell transportation and accommodations for customers. Determine destination, modes of transportation, travel dates, costs, and accommodations required. May also describe, plan, and arrange itineraries and sell tour packages. May assist in resolving clients\' travel problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(629, '41-3091.00', 'Sales Representatives of Services, Except Advertising, Insurance, Financial Services, and Travel', NULL, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell services to individuals or businesses. May describe options or resolve client problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(630, '41-4011.00', 'Sales Representatives, Wholesale and Manufacturing, Technical and Scientific Products', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell goods for wholesalers or manufacturers where technical or scientific knowledge is required in such areas as biology, engineering, chemistry, and electronics, normally obtained from at least 2 years of postsecondary education.', NULL, NULL, NULL, 0, '0000-00-00'),
(631, '41-4011.07', 'Solar Sales Representatives and Assessors', 3, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Contact new or existing customers to determine their solar equipment needs, suggest systems or equipment, or estimate costs.', NULL, NULL, NULL, 0, '0000-00-00'),
(632, '41-4012.00', 'Sales Representatives, Wholesale and Manufacturing, Except Technical and Scientific Products', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell goods for wholesalers or manufacturers to businesses or groups of individuals. Work requires substantial knowledge of items sold.', NULL, NULL, NULL, 0, '0000-00-00'),
(633, '41-9011.00', 'Demonstrators and Product Promoters', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Demonstrate merchandise and answer questions for the purpose of creating public interest in buying the product. May sell demonstrated merchandise.', NULL, NULL, NULL, 0, '0000-00-00'),
(634, '41-9012.00', 'Models', 1, 72, 184, NULL, NULL, NULL, NULL, NULL, 'Model garments or other apparel and accessories for prospective buyers at fashion shows, private showings, or retail establishments. May pose for photos to be used in magazines or advertisements. May pose as subject for paintings, sculptures, and other types of artistic expression.', NULL, NULL, NULL, 0, '0000-00-00'),
(635, '41-9021.00', 'Real Estate Brokers', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Operate real estate office, or work for commercial real estate firm, overseeing real estate transactions. Other duties usually include selling real estate or renting properties and arranging loans.', NULL, NULL, NULL, 0, '0000-00-00'),
(636, '41-9022.00', 'Real Estate Sales Agents', 3, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Rent, buy, or sell property for clients. Perform duties such as study property listings, interview prospective clients, accompany clients to property site, discuss conditions of sale, and draw up real estate contracts. Includes agents who represent buyer.', NULL, NULL, NULL, 0, '0000-00-00'),
(637, '41-9031.00', 'Sales Engineers', 4, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell business goods or services, the selling of which requires a technical background equivalent to a baccalaureate degree in engineering.', NULL, NULL, NULL, 0, '0000-00-00'),
(638, '41-9041.00', 'Telemarketers', 2, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Solicit donations or orders for goods or services over the telephone.', NULL, NULL, NULL, 0, '0000-00-00'),
(639, '41-9091.00', 'Door-to-Door Sales Workers, News and Street Vendors, and Related Workers', 1, 72, 196, NULL, NULL, NULL, NULL, NULL, 'Sell goods or services door-to-door or on the street.', NULL, NULL, NULL, 0, '0000-00-00'),
(640, '41-9099.00', 'Sales and Related Workers, All Other', NULL, 72, 196, NULL, NULL, NULL, NULL, NULL, 'All sales and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(641, '43-1011.00', 'First-Line Supervisors of Office and Administrative Support Workers', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate the activities of clerical and administrative support workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(642, '43-2011.00', 'Switchboard Operators, Including Answering Service', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Operate telephone business systems equipment or switchboards to relay incoming, outgoing, and interoffice calls. May supply information to callers and record messages.', NULL, NULL, NULL, 0, '0000-00-00'),
(643, '43-2021.00', 'Telephone Operators', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Provide information by accessing alphabetical, geographical, or other directories. Assist customers with special billing requests, such as charges to a third party and credits or refunds for incorrectly dialed numbers or bad connections. May handle emergency calls and assist children or people with physical disabilities to make telephone calls.', NULL, NULL, NULL, 0, '0000-00-00'),
(644, '43-2099.00', 'Communications Equipment Operators, All Other', NULL, 68, 173, NULL, NULL, NULL, NULL, NULL, 'All communications equipment operators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(645, '43-3011.00', 'Bill and Account Collectors', 2, 68, 150, NULL, NULL, NULL, NULL, NULL, 'Locate and notify customers of delinquent accounts by mail, telephone, or personal visit to solicit payment. Duties include receiving payment and posting amount to customer\'s account, preparing statements to credit department if customer fails to respond, initiating repossession proceedings or service disconnection, and keeping records of collection and status of accounts.', NULL, NULL, NULL, 0, '0000-00-00'),
(646, '43-3021.00', 'Billing and Posting Clerks', 2, 68, 205, NULL, NULL, NULL, NULL, NULL, 'Compile, compute, and record billing, accounting, statistical, and other numerical data for billing purposes. Prepare billing invoices for services rendered or for delivery or shipment of goods.', NULL, NULL, NULL, 0, '0000-00-00'),
(647, '43-3031.00', 'Bookkeeping, Accounting, and Auditing Clerks', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compute, classify, and record numerical data to keep financial records complete. Perform any combination of routine calculating, posting, and verifying duties to obtain primary financial data for use in maintaining accounting records. May also check the accuracy of figures, calculations, and postings pertaining to business transactions recorded by other workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(648, '43-3041.00', 'Gambling Cage Workers', 2, 68, 201, NULL, NULL, NULL, NULL, NULL, 'In a gambling establishment, conduct financial transactions for patrons. Accept patron\'s credit application and verify credit references to provide check-cashing authorization or to establish house credit accounts. May reconcile daily summaries of transactions to balance books. May sell gambling chips, tokens, or tickets to patrons, or to other workers for resale to patrons. May convert gambling chips, tokens, or tickets to currency upon patron\'s request. May use a cash register or computer to record transaction.', NULL, NULL, NULL, 0, '0000-00-00'),
(649, '43-3051.00', 'Payroll and Timekeeping Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compile and record employee time and payroll data. May compute employees\' time worked, production, and commission. May compute and post wages and deductions, or prepare paychecks.', NULL, NULL, NULL, 0, '0000-00-00'),
(650, '43-3061.00', 'Procurement Clerks', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compile information and records to draw up purchase orders for procurement of materials and services.', NULL, NULL, NULL, 0, '0000-00-00'),
(651, '43-3071.00', 'Tellers', 2, 68, 150, NULL, NULL, NULL, NULL, NULL, 'Receive and pay out money. Keep records of money and negotiable instruments involved in a financial institution\'s various transactions.', NULL, NULL, NULL, 0, '0000-00-00'),
(652, '43-3099.00', 'Financial Clerks, All Other', NULL, 68, 150, NULL, NULL, NULL, NULL, NULL, 'All financial clerks not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(653, '43-4011.00', 'Brokerage Clerks', 3, 68, 207, NULL, NULL, NULL, NULL, NULL, 'Perform duties related to the purchase, sale, or holding of securities. Duties include writing orders for stock purchases or sales, computing transfer taxes, verifying stock transactions, accepting and delivering securities, tracking stock price fluctuations, computing equity, distributing dividends, and keeping records of daily transactions and holdings.', NULL, NULL, NULL, 0, '0000-00-00'),
(654, '43-4021.00', 'Correspondence Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compose letters or electronic correspondence in reply to requests for merchandise, damage claims, credit and other information, delinquent accounts, incorrect billings, or unsatisfactory services. Duties may include gathering data to formulate reply and preparing correspondence.', NULL, NULL, NULL, 0, '0000-00-00'),
(655, '43-4031.00', 'Court, Municipal, and License Clerks', 2, 68, 199, NULL, NULL, NULL, NULL, NULL, 'Perform clerical duties for courts of law, municipalities, or governmental licensing agencies and bureaus. May prepare docket of cases to be called; secure information for judges and court; prepare draft agendas or bylaws for town or city council; answer official correspondence; keep fiscal records and accounts; issue licenses or permits; and record data, administer tests, or collect fees.', NULL, NULL, NULL, 0, '0000-00-00'),
(656, '43-4041.00', 'Credit Authorizers, Checkers, and Clerks', 2, 68, 150, NULL, NULL, NULL, NULL, NULL, 'Authorize credit charges against customers\' accounts. Investigate history and credit standing of individuals or business establishments applying for credit. May interview applicants to obtain personal and financial data, determine credit worthiness, process applications, and notify customers of acceptance or rejection of credit.', NULL, NULL, NULL, 0, '0000-00-00'),
(657, '43-4051.00', 'Customer Service Representatives', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Interact with customers to provide basic or scripted information in response to routine inquiries about products and services. May handle and resolve general complaints. Excludes individuals whose duties are primarily installation, sales, repair, and technical support.', NULL, NULL, NULL, 0, '0000-00-00'),
(658, '43-4061.00', 'Eligibility Interviewers, Government Programs', 3, 68, 199, NULL, NULL, NULL, NULL, NULL, 'Determine eligibility of persons applying to receive assistance from government programs and agency resources, such as welfare, unemployment benefits, social security, and public housing.', NULL, NULL, NULL, 0, '0000-00-00'),
(659, '43-4071.00', 'File Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'File correspondence, cards, invoices, receipts, and other records in alphabetical or numerical order or according to the filing system used. Locate and remove material from file when requested.', NULL, NULL, NULL, 0, '0000-00-00'),
(660, '43-4081.00', 'Hotel, Motel, and Resort Desk Clerks', 2, 68, 176, NULL, NULL, NULL, NULL, NULL, 'Accommodate hotel, motel, and resort patrons by registering and assigning rooms to guests, issuing room keys or cards, transmitting and receiving messages, keeping records of occupied rooms and guests\' accounts, making and confirming reservations, and presenting statements to and collecting payments from departing guests.', NULL, NULL, NULL, 0, '0000-00-00'),
(661, '43-4111.00', 'Interviewers, Except Eligibility and Loan', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Interview persons by telephone, mail, in person, or by other means for the purpose of completing forms, applications, or questionnaires. Ask specific questions, record answers, and assist persons with completing form. May sort, classify, and file forms.', NULL, NULL, NULL, 0, '0000-00-00'),
(662, '43-4121.00', 'Library Assistants, Clerical', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compile records, and sort, shelve, issue, and receive library materials such as books, electronic media, pictures, cards, slides and microfilm. Locate library materials for loan and replace material in shelving area, stacks, or files according to identification number and title. Register patrons to permit them to borrow books, periodicals, and other library materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(663, '43-4131.00', 'Loan Interviewers and Clerks', 3, 68, 150, NULL, NULL, NULL, NULL, NULL, 'Interview loan applicants to elicit information; investigate applicants\' backgrounds and verify references; prepare loan request papers; and forward findings, reports, and documents to appraisal department. Review loan papers to ensure completeness, and complete transactions between loan establishment, borrowers, and sellers upon approval of loan.', NULL, NULL, NULL, 0, '0000-00-00'),
(664, '43-4141.00', 'New Accounts Clerks', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Interview persons desiring to open accounts in financial institutions. Explain account services available to prospective customers and assist them in preparing applications.', NULL, NULL, NULL, 0, '0000-00-00'),
(665, '43-4151.00', 'Order Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Receive and process incoming orders for materials, merchandise, classified ads, or services such as repairs, installations, or rental of facilities. Generally receives orders via mail, phone, fax, or other electronic means. Duties include informing customers of receipt, prices, shipping dates, and delays; preparing contracts; and handling complaints.', NULL, NULL, NULL, 0, '0000-00-00'),
(666, '43-4161.00', 'Human Resources Assistants, Except Payroll and Timekeeping', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Compile and keep personnel records. Record data for each employee, such as address, weekly earnings, absences, amount of sales or production, supervisory reports, and date of and reason for termination. May prepare reports for employment records, file employment records, or search employee files and furnish information to authorized persons.', NULL, NULL, NULL, 0, '0000-00-00'),
(667, '43-4171.00', 'Receptionists and Information Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Answer inquiries and provide information to the general public, customers, visitors, and other interested parties regarding activities conducted at establishment and location of departments, offices, and employees within the organization.', NULL, NULL, NULL, 0, '0000-00-00'),
(668, '43-4181.00', 'Reservation and Transportation Ticket Agents and Travel Clerks', 2, 68, 215, NULL, NULL, NULL, NULL, NULL, 'Make and confirm reservations for transportation or lodging, or sell transportation tickets. May check baggage and direct passengers to designated concourse, pier, or track; deliver tickets and contact individuals and groups to inform them of package tours; or provide tourists with travel or transportation information.', NULL, NULL, NULL, 0, '0000-00-00'),
(669, '43-4199.00', 'Information and Record Clerks, All Other', NULL, 68, 148, NULL, NULL, NULL, NULL, NULL, 'All information and record clerks not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(670, '43-5011.00', 'Cargo and Freight Agents', 2, 68, 205, NULL, NULL, NULL, NULL, NULL, 'Expedite and route movement of incoming and outgoing cargo and freight shipments in airline, train, and trucking terminals and shipping docks. Take orders from customers and arrange pickup of freight and cargo for delivery to loading platform. Prepare and examine bills of lading to determine shipping charges and tariffs.', NULL, NULL, NULL, 0, '0000-00-00'),
(671, '43-5011.01', 'Freight Forwarders', 2, 68, 205, NULL, NULL, NULL, NULL, NULL, 'Research rates, routings, or modes of transport for shipment of products. Maintain awareness of regulations affecting the international movement of cargo. Make arrangements for additional services, such as storage or inland transportation.', NULL, NULL, NULL, 0, '0000-00-00'),
(672, '43-5021.00', 'Couriers and Messengers', 2, 68, 213, NULL, NULL, NULL, NULL, NULL, 'Pick up and deliver messages, documents, packages, and other items between offices or departments within an establishment or directly to other business concerns, traveling by foot, bicycle, motorcycle, automobile, or public conveyance.', NULL, NULL, NULL, 0, '0000-00-00'),
(673, '43-5031.00', 'Public Safety Telecommunicators', 2, 68, 161, NULL, NULL, NULL, NULL, NULL, 'Operate telephone, radio, or other communication systems to receive and communicate requests for emergency assistance at 9-1-1 public safety answering points and emergency operations centers. Take information from the public and other sources regarding crimes, threats, disturbances, acts of terrorism, fires, medical emergencies, and other public safety matters. May coordinate and provide information to law enforcement and emergency response personnel. May access sensitive databases and other information sources as needed. May provide additional instructions to callers based on knowledge of and certification in law enforcement, fire, or emergency medical procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(674, '43-5032.00', 'Dispatchers, Except Police, Fire, and Ambulance', 2, 68, 177, NULL, NULL, NULL, NULL, NULL, 'Schedule and dispatch workers, work crews, equipment, or service vehicles for conveyance of materials, freight, or passengers, or for normal installation, service, or emergency repairs rendered outside the place of business. Duties may include using radio, telephone, or computer to transmit assignments and compiling statistics and reports on work progress.', NULL, NULL, NULL, 0, '0000-00-00'),
(675, '43-5041.00', 'Meter Readers, Utilities', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Read meter and record consumption of electricity, gas, water, or steam.', NULL, NULL, NULL, 0, '0000-00-00'),
(676, '43-5051.00', 'Postal Service Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Perform any combination of tasks in a United States Postal Service (USPS) post office, such as receive letters and parcels; sell postage and revenue stamps, postal cards, and stamped envelopes; fill out and sell money orders; place mail in pigeon holes of mail rack or in bags; and examine mail for correct postage. Includes postal service clerks employed by USPS contractors.', NULL, NULL, NULL, 0, '0000-00-00'),
(677, '43-5052.00', 'Postal Service Mail Carriers', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Sort and deliver mail for the United States Postal Service (USPS). Deliver mail on established route by vehicle or on foot. Includes postal service mail carriers employed by USPS contractors.', NULL, NULL, NULL, 0, '0000-00-00'),
(678, '43-5053.00', 'Postal Service Mail Sorters, Processors, and Processing Machine Operators', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Prepare incoming and outgoing mail for distribution for the United States Postal Service (USPS). Examine, sort, and route mail. Load, operate, and occasionally adjust and repair mail processing, sorting, and canceling machinery. Keep records of shipments, pouches, and sacks, and perform other duties related to mail handling within the postal service. Includes postal service mail sorters and processors employed by USPS contractors.', NULL, NULL, NULL, 0, '0000-00-00'),
(679, '43-5061.00', 'Production, Planning, and Expediting Clerks', 3, 68, 200, NULL, NULL, NULL, NULL, NULL, 'Coordinate and expedite the flow of work and materials within or between departments of an establishment according to production schedule. Duties include reviewing and distributing production, work, and shipment schedules; conferring with department supervisors to determine progress of work and completion dates; and compiling reports on progress of work, inventory levels, costs, and production problems.', NULL, NULL, NULL, 0, '0000-00-00'),
(680, '43-5071.00', 'Shipping, Receiving, and Inventory Clerks', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Verify and maintain records on incoming and outgoing shipments involving inventory. Duties include verifying and recording incoming merchandise or material and arranging for the transportation of products. May prepare items for shipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(681, '43-5111.00', 'Weighers, Measurers, Checkers, and Samplers, Recordkeeping', 2, 68, 200, NULL, NULL, NULL, NULL, NULL, 'Weigh, measure, and check materials, supplies, and equipment for the purpose of keeping relevant records. Duties are primarily clerical by nature. Includes workers who collect and keep record of samples of products or materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(682, '43-6011.00', 'Executive Secretaries and Executive Administrative Assistants', 3, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Provide high-level administrative support by conducting research, preparing statistical reports, and handling information requests, as well as performing routine administrative functions such as preparing correspondence, receiving visitors, arranging conference calls, and scheduling meetings. May also train and supervise lower-level clerical staff.', NULL, NULL, NULL, 0, '0000-00-00'),
(683, '43-6012.00', 'Legal Secretaries and Administrative Assistants', 3, 68, 175, NULL, NULL, NULL, NULL, NULL, 'Perform secretarial duties using legal terminology, procedures, and documents. Prepare legal papers and correspondence, such as summonses, complaints, motions, and subpoenas. May also assist with legal research.', NULL, NULL, NULL, 0, '0000-00-00'),
(684, '43-6013.00', 'Medical Secretaries and Administrative Assistants', 3, 68, 169, NULL, NULL, NULL, NULL, NULL, 'Perform secretarial duties using specific knowledge of medical terminology and hospital, clinic, or laboratory procedures. Duties may include scheduling appointments, billing patients, and compiling and recording medical charts, reports, and correspondence.', NULL, NULL, NULL, 0, '0000-00-00'),
(685, '43-6014.00', 'Secretaries and Administrative Assistants, Except Legal, Medical, and Executive', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Perform routine administrative functions such as drafting correspondence, scheduling appointments, organizing and maintaining paper and electronic files, or providing information to callers.', NULL, NULL, NULL, 0, '0000-00-00'),
(686, '43-9021.00', 'Data Entry Keyers', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Operate data entry device, such as keyboard or photo composing perforator. Duties may include verifying data and preparing materials for printing.', NULL, NULL, NULL, 0, '0000-00-00'),
(687, '43-9022.00', 'Word Processors and Typists', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Use word processor, computer, or typewriter to type letters, reports, forms, or other material from rough draft, corrected copy, or voice recording. May perform other clerical duties as assigned.', NULL, NULL, NULL, 0, '0000-00-00'),
(688, '43-9031.00', 'Desktop Publishers', 3, 68, 194, NULL, NULL, NULL, NULL, NULL, 'Format typescript and graphic elements using computer software to produce publication-ready material.', NULL, NULL, NULL, 0, '0000-00-00'),
(689, '43-9041.00', 'Insurance Claims and Policy Processing Clerks', 2, 68, 172, NULL, NULL, NULL, NULL, NULL, 'Process new insurance policies, modifications to existing policies, and claims forms. Obtain information from policyholders to verify the accuracy and completeness of information on claims forms, applications and related documents, and company records. Update existing policies and company records to reflect changes requested by policyholders and insurance company representatives.', NULL, NULL, NULL, 0, '0000-00-00'),
(690, '43-9051.00', 'Mail Clerks and Mail Machine Operators, Except Postal Service', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Prepare incoming and outgoing mail for distribution. Time-stamp, open, read, sort, and route incoming mail; and address, seal, stamp, fold, stuff, and affix postage to outgoing mail or packages. Duties may also include keeping necessary records and completed forms.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(691, '43-9061.00', 'Office Clerks, General', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Perform duties too varied and diverse to be classified in any specific office clerical occupation, requiring knowledge of office systems and procedures. Clerical duties may be assigned in accordance with the office procedures of individual establishments and may include a combination of answering telephones, bookkeeping, typing or word processing, office machine operation, and filing.', NULL, NULL, NULL, 0, '0000-00-00'),
(692, '43-9071.00', 'Office Machine Operators, Except Computer', 2, 68, 148, NULL, NULL, NULL, NULL, NULL, 'Operate one or more of a variety of office machines, such as photocopying, photographic, and duplicating machines, or other office machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(693, '43-9081.00', 'Proofreaders and Copy Markers', 4, 68, 194, NULL, NULL, NULL, NULL, NULL, 'Read transcript or proof type setup to detect and mark for correction any grammatical, typographical, or compositional errors. Excludes workers whose primary duty is editing copy. Includes proofreaders of braille.', NULL, NULL, NULL, 0, '0000-00-00'),
(694, '43-9111.00', 'Statistical Assistants', 4, 68, 191, NULL, NULL, NULL, NULL, NULL, 'Compile and compute data according to statistical formulas for use in statistical studies. May perform actuarial computations and compile charts and graphs for use by actuaries. Includes actuarial clerks.', NULL, NULL, NULL, 0, '0000-00-00'),
(695, '43-9199.00', 'Office and Administrative Support Workers, All Other', NULL, 68, 148, NULL, NULL, NULL, NULL, NULL, 'All office and administrative support workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(696, '45-1011.00', 'First-Line Supervisors of Farming, Fishing, and Forestry Workers', 3, 59, 166, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate the activities of agricultural, forestry, aquacultural, and related workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(697, '45-2011.00', 'Agricultural Inspectors', 2, 59, 202, NULL, NULL, NULL, NULL, NULL, 'Inspect agricultural commodities, processing equipment, and facilities, and fish and logging operations, to ensure compliance with regulations and laws governing health, quality, and safety.', NULL, NULL, NULL, 0, '0000-00-00'),
(698, '45-2021.00', 'Animal Breeders', 2, 59, 218, NULL, NULL, NULL, NULL, NULL, 'Select and breed animals according to their genealogy, characteristics, and offspring. May require knowledge of artificial insemination techniques and equipment use. May involve keeping records on heats, birth intervals, or pedigree.', NULL, NULL, NULL, 0, '0000-00-00'),
(699, '45-2041.00', 'Graders and Sorters, Agricultural Products', 1, 59, 166, NULL, NULL, NULL, NULL, NULL, 'Grade, sort, or classify unprocessed food and other agricultural products by size, weight, color, or condition.', NULL, NULL, NULL, 0, '0000-00-00'),
(700, '45-2091.00', 'Agricultural Equipment Operators', 1, 59, 193, NULL, NULL, NULL, NULL, NULL, 'Drive and control equipment to support agricultural activities such as tilling soil; planting, cultivating, and harvesting crops; feeding and herding livestock; or removing animal waste. May perform tasks such as crop baling or hay bucking. May operate stationary equipment to perform post-harvest tasks such as husking, shelling, threshing, and ginning.', NULL, NULL, NULL, 0, '0000-00-00'),
(701, '45-2092.00', 'Farmworkers and Laborers, Crop, Nursery, and Greenhouse', 1, 59, 192, NULL, NULL, NULL, NULL, NULL, 'Manually plant, cultivate, and harvest vegetables, fruits, nuts, horticultural specialties, and field crops. Use hand tools, such as shovels, trowels, hoes, tampers, pruning hooks, shears, and knives. Duties may include tilling soil and applying fertilizers; transplanting, weeding, thinning, or pruning crops; applying pesticides; or cleaning, grading, sorting, packing, and loading harvested products. May construct trellises, repair fences and farm buildings, or participate in irrigation activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(702, '45-2093.00', 'Farmworkers, Farm, Ranch, and Aquacultural Animals', 2, 59, 218, NULL, NULL, NULL, NULL, NULL, 'Attend to live farm, ranch, open range or aquacultural animals that may include cattle, sheep, swine, goats, horses and other equines, poultry, rabbits, finfish, shellfish, and bees. Attend to animals produced for animal products, such as meat, fur, skins, feathers, eggs, milk, and honey. Duties may include feeding, watering, herding, grazing, milking, castrating, branding, de-beaking, weighing, catching, and loading animals. May maintain records on animals; examine animals to detect diseases and injuries; assist in birth deliveries; and administer medications, vaccinations, or insecticides as appropriate. May clean and maintain animal housing areas. Includes workers who shear wool from sheep and collect eggs in hatcheries.', NULL, NULL, NULL, 0, '0000-00-00'),
(703, '45-2099.00', 'Agricultural Workers, All Other', NULL, 59, 192, NULL, NULL, NULL, NULL, NULL, 'All agricultural workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(704, '45-3031.00', 'Fishing and Hunting Workers', 1, 59, 186, NULL, NULL, NULL, NULL, NULL, 'Hunt, trap, catch, or gather wild animals or aquatic animals and plants. May use nets, traps, or other equipment. May haul catch onto ship or other vessel.', NULL, NULL, NULL, 0, '0000-00-00'),
(705, '45-4011.00', 'Forest and Conservation Workers', 3, 59, 186, NULL, NULL, NULL, NULL, NULL, 'Under supervision, perform manual labor necessary to develop, maintain, or protect areas such as forests, forested areas, woodlands, wetlands, and rangelands through such activities as raising and transporting seedlings; combating insects, pests, and diseases harmful to plant life; and building structures to control water, erosion, and leaching of soil. Includes forester aides, seedling pullers, tree planters, and gatherers of nontimber forestry products such as pine straw.', NULL, NULL, NULL, 0, '0000-00-00'),
(706, '45-4021.00', 'Fallers', 1, 59, 186, NULL, NULL, NULL, NULL, NULL, 'Use axes or chainsaws to fell trees using knowledge of tree characteristics and cutting techniques to control direction of fall and minimize tree damage.', NULL, NULL, NULL, 0, '0000-00-00'),
(707, '45-4022.00', 'Logging Equipment Operators', 1, 59, 186, NULL, NULL, NULL, NULL, NULL, 'Drive logging tractor or wheeled vehicle equipped with one or more accessories, such as bulldozer blade, frontal shear, grapple, logging arch, cable winches, hoisting rack, or crane boom, to fell tree; to skid, load, unload, or stack logs; or to pull stumps or clear brush. Includes operating stand-alone logging machines, such as log chippers.', NULL, NULL, NULL, 0, '0000-00-00'),
(708, '45-4023.00', 'Log Graders and Scalers', 2, 59, 186, NULL, NULL, NULL, NULL, NULL, 'Grade logs or estimate the marketable content or value of logs or pulpwood in sorting yards, millpond, log deck, or similar locations. Inspect logs for defects or measure logs to determine volume.', NULL, NULL, NULL, 0, '0000-00-00'),
(709, '45-4029.00', 'Logging Workers, All Other', NULL, 59, 186, NULL, NULL, NULL, NULL, NULL, 'All logging workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(710, '47-1011.00', 'First-Line Supervisors of Construction Trades and Extraction Workers', 3, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of construction or extraction workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(711, '47-1011.03', 'Solar Energy Installation Managers', 3, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Direct work crews installing residential or commercial solar photovoltaic or thermal systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(712, '47-2011.00', 'Boilermakers', 3, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Construct, assemble, maintain, and repair stationary steam boilers and boiler house auxiliaries. Align structures or plate sections to assemble boiler frame tanks or vats, following blueprints. Work involves use of hand and power tools, plumb bobs, levels, wedges, dogs, or turnbuckles. Assist in testing assembled vessels. Direct cleaning of boilers and boiler furnaces. Inspect and repair boiler fittings, such as safety valves, regulators, automatic-control mechanisms, water columns, and auxiliary machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(713, '47-2021.00', 'Brickmasons and Blockmasons', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Lay and bind building materials, such as brick, structural tile, concrete block, cinder block, glass block, and terra-cotta block, with mortar and other substances, to construct or repair walls, partitions, arches, sewers, and other structures.', NULL, NULL, NULL, 0, '0000-00-00'),
(714, '47-2022.00', 'Stonemasons', 3, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Build stone structures, such as piers, walls, and abutments. Lay walks, curbstones, or special types of masonry for vats, tanks, and floors.', NULL, NULL, NULL, 0, '0000-00-00'),
(715, '47-2031.00', 'Carpenters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Construct, erect, install, or repair structures and fixtures made of wood and comparable materials, such as concrete forms; building frameworks, including partitions, joists, studding, and rafters; and wood stairways, window and door frames, and hardwood floors. May also install cabinets, siding, drywall, and batt or roll insulation. Includes brattice builders who build doors or brattices (ventilation walls or partitions) in underground passageways.', NULL, NULL, NULL, 0, '0000-00-00'),
(716, '47-2041.00', 'Carpet Installers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Lay and install carpet from rolls or blocks on floors. Install padding and trim flooring materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(717, '47-2042.00', 'Floor Layers, Except Carpet, Wood, and Hard Tiles', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply blocks, strips, or sheets of shock-absorbing, sound-deadening, or decorative coverings to floors.', NULL, NULL, NULL, 0, '0000-00-00'),
(718, '47-2043.00', 'Floor Sanders and Finishers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Scrape and sand wooden floors to smooth surfaces using floor scraper and floor sanding machine, and apply coats of finish.', NULL, NULL, NULL, 0, '0000-00-00'),
(719, '47-2044.00', 'Tile and Stone Setters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply hard tile, stone, and comparable materials to walls, floors, ceilings, countertops, and roof decks.', NULL, NULL, NULL, 0, '0000-00-00'),
(720, '47-2051.00', 'Cement Masons and Concrete Finishers', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Smooth and finish surfaces of poured concrete, such as floors, walks, sidewalks, roads, or curbs using a variety of hand and power tools. Align forms for sidewalks, curbs, or gutters; patch voids; and use saws to cut expansion joints.', NULL, NULL, NULL, 0, '0000-00-00'),
(721, '47-2053.00', 'Terrazzo Workers and Finishers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply a mixture of cement, sand, pigment, or marble chips to floors, stairways, and cabinet fixtures to fashion durable and decorative surfaces.', NULL, NULL, NULL, 0, '0000-00-00'),
(722, '47-2061.00', 'Construction Laborers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Perform tasks involving physical labor at construction sites. May operate hand and power tools of all types: air hammers, earth tampers, cement mixers, small mechanical hoists, surveying and measuring equipment, and a variety of other equipment and instruments. May clean and prepare sites, dig trenches, set braces to support the sides of excavations, erect scaffolding, and clean up rubble, debris, and other waste materials. May assist other craft workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(723, '47-2071.00', 'Paving, Surfacing, and Tamping Equipment Operators', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate equipment used for applying concrete, asphalt, or other materials to road beds, parking lots, or airport runways and taxiways or for tamping gravel, dirt, or other materials. Includes concrete and asphalt paving machine operators, form tampers, tamping machine operators, and stone spreader operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(724, '47-2072.00', 'Pile Driver Operators', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate pile drivers mounted on skids, barges, crawler treads, or locomotive cranes to drive pilings for retaining walls, bulkheads, and foundations of structures such as buildings, bridges, and piers.', NULL, NULL, NULL, 0, '0000-00-00'),
(725, '47-2073.00', 'Operating Engineers and Other Construction Equipment Operators', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate one or several types of power construction equipment, such as motor graders, bulldozers, scrapers, compressors, pumps, derricks, shovels, tractors, or front-end loaders to excavate, move, and grade earth, erect structures, or pour concrete or other hard surface pavement. May repair and maintain equipment in addition to other duties.', NULL, NULL, NULL, 0, '0000-00-00'),
(726, '47-2081.00', 'Drywall and Ceiling Tile Installers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply plasterboard or other wallboard to ceilings or interior walls of buildings. Apply or mount acoustical tiles or blocks, strips, or sheets of shock-absorbing materials to ceilings and walls of buildings to reduce or reflect sound. Materials may be of decorative quality. Includes lathers who fasten wooden, metal, or rockboard lath to walls, ceilings, or partitions of buildings to provide support base for plaster, fireproofing, or acoustical material.', NULL, NULL, NULL, 0, '0000-00-00'),
(727, '47-2082.00', 'Tapers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Seal joints between plasterboard or other wallboard to prepare wall surface for painting or papering.', NULL, NULL, NULL, 0, '0000-00-00'),
(728, '47-2111.00', 'Electricians', 3, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Install, maintain, and repair electrical wiring, equipment, and fixtures. Ensure that work is in accordance with relevant codes. May install or service street lights, intercom systems, or electrical control systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(729, '47-2121.00', 'Glaziers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Install glass in windows, skylights, store fronts, and display cases, or on surfaces, such as building fronts, interior walls, ceilings, and tabletops.', NULL, NULL, NULL, 0, '0000-00-00'),
(730, '47-2131.00', 'Insulation Workers, Floor, Ceiling, and Wall', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Line and cover structures with insulating materials. May work with batt, roll, or blown insulation materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(731, '47-2132.00', 'Insulation Workers, Mechanical', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply insulating materials to pipes or ductwork, or other mechanical systems in order to help control and maintain temperature.', NULL, NULL, NULL, 0, '0000-00-00'),
(732, '47-2141.00', 'Painters, Construction and Maintenance', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Paint walls, equipment, buildings, bridges, and other structural surfaces, using brushes, rollers, and spray guns. May remove old paint to prepare surface prior to painting. May mix colors or oils to obtain desired color or consistency.', NULL, NULL, NULL, 0, '0000-00-00'),
(733, '47-2142.00', 'Paperhangers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Cover interior walls or ceilings of rooms with decorative wallpaper or fabric, or attach advertising posters on surfaces such as walls and billboards. May remove old materials or prepare surfaces to be papered.', NULL, NULL, NULL, 0, '0000-00-00'),
(734, '47-2151.00', 'Pipelayers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Lay pipe for storm or sanitation sewers, drains, and water mains. Perform any combination of the following tasks: grade trenches or culverts, position pipe, or seal joints.', NULL, NULL, NULL, 0, '0000-00-00'),
(735, '47-2152.00', 'Plumbers, Pipefitters, and Steamfitters', 3, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Assemble, install, alter, and repair pipelines or pipe systems that carry water, steam, air, or other liquids or gases. May install heating and cooling equipment and mechanical control systems. Includes sprinkler fitters.', NULL, NULL, NULL, 0, '0000-00-00'),
(736, '47-2152.04', 'Solar Thermal Installers and Technicians', 3, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Install or repair solar energy systems designed to collect, store, and circulate solar-heated water for residential, commercial or industrial use.', NULL, NULL, NULL, 0, '0000-00-00'),
(737, '47-2161.00', 'Plasterers and Stucco Masons', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Apply interior or exterior plaster, cement, stucco, or similar materials. May also set ornamental plaster.', NULL, NULL, NULL, 0, '0000-00-00'),
(738, '47-2171.00', 'Reinforcing Iron and Rebar Workers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Position and secure steel bars or mesh in concrete forms in order to reinforce concrete. Use a variety of fasteners, rod-bending machines, blowtorches, and hand tools. Includes rod busters.', NULL, NULL, NULL, 0, '0000-00-00'),
(739, '47-2181.00', 'Roofers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Cover roofs of structures with shingles, slate, asphalt, aluminum, wood, or related materials. May spray roofs, sidings, and walls with material to bind, seal, insulate, or soundproof sections of structures.', NULL, NULL, NULL, 0, '0000-00-00'),
(740, '47-2211.00', 'Sheet Metal Workers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Fabricate, assemble, install, and repair sheet metal products and equipment, such as ducts, control boxes, drainpipes, and furnace casings. Work may involve any of the following: setting up and operating fabricating machines to cut, bend, and straighten sheet metal; shaping metal over anvils, blocks, or forms using hammer; operating soldering and welding equipment to join sheet metal parts; or inspecting, assembling, and smoothing seams and joints of burred surfaces. Includes sheet metal duct installers who install prefabricated sheet metal ducts used for heating, air conditioning, or other purposes.', NULL, NULL, NULL, 0, '0000-00-00'),
(741, '47-2221.00', 'Structural Iron and Steel Workers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Raise, place, and unite iron or steel girders, columns, and other structural members to form completed structures or structural frameworks. May erect metal storage tanks and assemble prefabricated metal buildings.', NULL, NULL, NULL, 0, '0000-00-00'),
(742, '47-2231.00', 'Solar Photovoltaic Installers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Assemble, install, or maintain solar photovoltaic (PV) systems on roofs or other structures in compliance with site assessment and schematics. May include measuring, cutting, assembling, and bolting structural framing and solar modules. May perform minor electrical work such as current checks.', NULL, NULL, NULL, 0, '0000-00-00'),
(743, '47-3011.00', 'Helpers--Brickmasons, Blockmasons, Stonemasons, and Tile and Marble Setters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help brickmasons, blockmasons, stonemasons, or tile and marble setters by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(744, '47-3012.00', 'Helpers--Carpenters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help carpenters by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(745, '47-3013.00', 'Helpers--Electricians', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help electricians by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(746, '47-3014.00', 'Helpers--Painters, Paperhangers, Plasterers, and Stucco Masons', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help painters, paperhangers, plasterers, or stucco masons by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(747, '47-3015.00', 'Helpers--Pipelayers, Plumbers, Pipefitters, and Steamfitters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help plumbers, pipefitters, steamfitters, or pipelayers by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(748, '47-3016.00', 'Helpers--Roofers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help roofers by performing duties requiring less skill. Duties include using, supplying, or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(749, '47-3019.00', 'Helpers, Construction Trades, All Other', NULL, 57, 154, NULL, NULL, NULL, NULL, NULL, 'All construction trades helpers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(750, '47-4011.00', 'Construction and Building Inspectors', 3, 57, 202, NULL, NULL, NULL, NULL, NULL, 'Inspect structures using engineering skills to determine structural soundness and compliance with specifications, building codes, and other regulations. Inspections may be general in nature or may be limited to a specific area, such as electrical systems or plumbing.', NULL, NULL, NULL, 0, '0000-00-00'),
(751, '47-4011.01', 'Energy Auditors', 3, 57, 188, NULL, NULL, NULL, NULL, NULL, 'Conduct energy audits of buildings, building systems, or process systems. May also conduct investment grade audits of buildings or systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(752, '47-4021.00', 'Elevator and Escalator Installers and Repairers', 3, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Assemble, install, repair, or maintain electric or hydraulic freight or passenger elevators, escalators, or dumbwaiters.', NULL, NULL, NULL, 0, '0000-00-00'),
(753, '47-4031.00', 'Fence Erectors', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Erect and repair fences and fence gates, using hand and power tools.', NULL, NULL, NULL, 0, '0000-00-00'),
(754, '47-4041.00', 'Hazardous Materials Removal Workers', 3, 57, 163, NULL, NULL, NULL, NULL, NULL, 'Identify, remove, pack, transport, or dispose of hazardous materials, including asbestos, lead-based paint, waste oil, fuel, transmission fluid, radioactive materials, or contaminated soil. Specialized training and certification in hazardous materials handling or a confined entry permit are generally required. May operate earth-moving equipment or trucks.', NULL, NULL, NULL, 0, '0000-00-00'),
(755, '47-4051.00', 'Highway Maintenance Workers', 2, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Maintain highways, municipal and rural roads, airport runways, and rights-of-way. Duties include patching broken or eroded pavement and repairing guard rails, highway markers, and snow fences. May also mow or clear brush from along road, or plow snow from roadway.', NULL, NULL, NULL, 0, '0000-00-00'),
(756, '47-4061.00', 'Rail-Track Laying and Maintenance Equipment Operators', 2, 57, 164, NULL, NULL, NULL, NULL, NULL, 'Lay, repair, and maintain track for standard or narrow-gauge railroad equipment used in regular railroad service or in plant yards, quarries, sand and gravel pits, and mines. Includes ballast cleaning machine operators and railroad bed tamping machine operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(757, '47-4071.00', 'Septic Tank Servicers and Sewer Pipe Cleaners', 1, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Clean and repair septic tanks, sewer lines, or drains. May patch walls and partitions of tank, replace damaged drain tile, or repair breaks in underground piping.', NULL, NULL, NULL, 0, '0000-00-00'),
(758, '47-4091.00', 'Segmental Pavers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Lay out, cut, and place segmental paving units. Includes installers of bedding and restraining materials for the paving units.', NULL, NULL, NULL, 0, '0000-00-00'),
(759, '47-4099.00', 'Construction and Related Workers, All Other', NULL, 57, 179, NULL, NULL, NULL, NULL, NULL, 'All construction and related workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(760, '47-4099.03', 'Weatherization Installers and Technicians', 2, 57, 179, NULL, NULL, NULL, NULL, NULL, 'Perform a variety of activities to weatherize homes and make them more energy efficient. Duties include repairing windows, insulating ducts, and performing heating, ventilating, and air-conditioning (HVAC) work. May perform energy audits and advise clients on energy conservation measures.', NULL, NULL, NULL, 0, '0000-00-00'),
(761, '47-5011.00', 'Derrick Operators, Oil and Gas', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Rig derrick equipment and operate pumps to circulate mud or fluid through drill hole.', NULL, NULL, NULL, 0, '0000-00-00'),
(762, '47-5012.00', 'Rotary Drill Operators, Oil and Gas', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Set up or operate a variety of drills to remove underground oil and gas, or remove core samples for testing during oil and gas exploration.', NULL, NULL, NULL, 0, '0000-00-00'),
(763, '47-5013.00', 'Service Unit Operators, Oil and Gas', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate equipment to increase oil flow from producing wells or to remove stuck pipe, casing, tools, or other obstructions from drilling wells. Includes fishing-tool technicians.', NULL, NULL, NULL, 0, '0000-00-00'),
(764, '47-5022.00', 'Excavating and Loading Machine and Dragline Operators, Surface Mining', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate or tend machinery at surface mining site, equipped with scoops, shovels, or buckets to excavate and load loose materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(765, '47-5023.00', 'Earth Drillers, Except Oil and Gas', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate a variety of drills such as rotary, churn, and pneumatic to tap subsurface water and salt deposits, to remove core samples during mineral exploration or soil testing, and to facilitate the use of explosives in mining or construction. Includes horizontal and earth boring machine operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(766, '47-5032.00', 'Explosives Workers, Ordnance Handling Experts, and Blasters', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Place and detonate explosives to demolish structures or to loosen, remove, or displace earth, rock, or other materials. May perform specialized handling, storage, and accounting procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(767, '47-5041.00', 'Continuous Mining Machine Operators', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate self-propelled mining machines that rip coal, metal and nonmetal ores, rock, stone, or sand from the mine face and load it onto conveyors, shuttle cars, or trucks in a continuous operation.', NULL, NULL, NULL, 0, '0000-00-00'),
(768, '47-5043.00', 'Roof Bolters, Mining', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Operate machinery to install roof support bolts in underground mine.', NULL, NULL, NULL, 0, '0000-00-00'),
(769, '47-5044.00', 'Loading and Moving Machine Operators, Underground Mining', 2, 57, 213, NULL, NULL, NULL, NULL, NULL, 'Operate underground loading or moving machine to load or move coal, ore, or rock using shuttle or mine car or conveyors. Equipment may include power shovels, hoisting engines equipped with cable-drawn scraper or scoop, or machines equipped with gathering arms and conveyor.', NULL, NULL, NULL, 0, '0000-00-00'),
(770, '47-5049.00', 'Underground Mining Machine Operators, All Other', NULL, 57, 154, NULL, NULL, NULL, NULL, NULL, 'All underground mining machine operators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(771, '47-5051.00', 'Rock Splitters, Quarry', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Separate blocks of rough dimension stone from quarry mass using jackhammers, wedges, or chop saws.', NULL, NULL, NULL, 0, '0000-00-00'),
(772, '47-5071.00', 'Roustabouts, Oil and Gas', 1, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Assemble or repair oil field equipment using hand and power tools. Perform other tasks as needed.', NULL, NULL, NULL, 0, '0000-00-00'),
(773, '47-5081.00', 'Helpers--Extraction Workers', 2, 57, 154, NULL, NULL, NULL, NULL, NULL, 'Help extraction craft workers, such as earth drillers, blasters and explosives workers, derrick operators, and mining machine operators, by performing duties requiring less skill. Duties include supplying equipment or cleaning work area.', NULL, NULL, NULL, 0, '0000-00-00'),
(774, '47-5099.00', 'Extraction Workers, All Other', NULL, 57, 154, NULL, NULL, NULL, NULL, NULL, 'All extraction workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(775, '49-1011.00', 'First-Line Supervisors of Mechanics, Installers, and Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate the activities of mechanics, installers, and repairers. May also advise customers on recommended services. Excludes team or work leaders.', NULL, NULL, NULL, 0, '0000-00-00'),
(776, '49-2011.00', 'Computer, Automated Teller, and Office Machine Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, maintain, or install computers, word processing systems, automated teller machines, and electronic office machines, such as duplicating and fax machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(777, '49-2021.00', 'Radio, Cellular, and Tower Equipment Installers and Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, install, or maintain mobile or stationary radio transmitting, broadcasting, and receiving equipment, and two-way radio communications systems used in cellular telecommunications, mobile broadband, ship-to-shore, aircraft-to-ground communications, and radio equipment in service and emergency vehicles. May test and analyze network coverage.', NULL, NULL, NULL, 0, '0000-00-00'),
(778, '49-2022.00', 'Telecommunications Equipment Installers and Repairers, Except Line Installers', 3, 63, 211, NULL, NULL, NULL, NULL, NULL, 'Install, set up, rearrange, or remove switching, distribution, routing, and dialing equipment used in central offices or headends. Service or repair telephone, cable television, Internet, and other communications equipment on customers\' property. May install communications equipment or communications wiring in buildings.', NULL, NULL, NULL, 0, '0000-00-00'),
(779, '49-2091.00', 'Avionics Technicians', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Install, inspect, test, adjust, or repair avionics equipment, such as radar, radio, navigation, and missile control systems in aircraft or space vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(780, '49-2092.00', 'Electric Motor, Power Tool, and Related Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, maintain, or install electric motors, wiring, or switches.', NULL, NULL, NULL, 0, '0000-00-00'),
(781, '49-2093.00', 'Electrical and Electronics Installers and Repairers, Transportation Equipment', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Install, adjust, or maintain mobile electronics communication equipment, including sound, sonar, security, navigation, and surveillance systems on trains, watercraft, or other mobile equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(782, '49-2094.00', 'Electrical and Electronics Repairers, Commercial and Industrial Equipment', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, test, adjust, or install electronic equipment, such as industrial controls, transmitters, and antennas.', NULL, NULL, NULL, 0, '0000-00-00'),
(783, '49-2095.00', 'Electrical and Electronics Repairers, Powerhouse, Substation, and Relay', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Inspect, test, repair, or maintain electrical equipment in generating stations, substations, and in-service relays.', NULL, NULL, NULL, 0, '0000-00-00'),
(784, '49-2096.00', 'Electronic Equipment Installers and Repairers, Motor Vehicles', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Install, diagnose, or repair communications, sound, security, or navigation equipment in motor vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(785, '49-2097.00', 'Audiovisual Equipment Installers and Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Install, repair, or adjust audio or television receivers, stereo systems, camcorders, video systems, or other electronic entertainment equipment in homes or other venues. May perform routine maintenance.', NULL, NULL, NULL, 0, '0000-00-00'),
(786, '49-2098.00', 'Security and Fire Alarm Systems Installers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Install, program, maintain, and repair security and fire alarm wiring and equipment. Ensure that work is in accordance with relevant codes.', NULL, NULL, NULL, 0, '0000-00-00'),
(787, '49-3011.00', 'Aircraft Mechanics and Service Technicians', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul aircraft engines and assemblies, such as hydraulic and pneumatic systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(788, '49-3021.00', 'Automotive Body and Related Repairers', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Repair and refinish automotive vehicle bodies and straighten vehicle frames.', NULL, NULL, NULL, 0, '0000-00-00'),
(789, '49-3022.00', 'Automotive Glass Installers and Repairers', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Replace or repair broken windshields and window glass in motor vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(790, '49-3023.00', 'Automotive Service Technicians and Mechanics', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul automotive vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(791, '49-3031.00', 'Bus and Truck Mechanics and Diesel Engine Specialists', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul buses and trucks, or maintain and repair any type of diesel engines. Includes mechanics working primarily with automobile or marine diesel engines.', NULL, NULL, NULL, 0, '0000-00-00'),
(792, '49-3041.00', 'Farm Equipment Mechanics and Service Technicians', 3, 63, 193, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul farm machinery and vehicles, such as tractors, harvesters, dairy equipment, and irrigation systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(793, '49-3042.00', 'Mobile Heavy Equipment Mechanics, Except Engines', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul mobile mechanical, hydraulic, and pneumatic equipment, such as cranes, bulldozers, graders, and conveyors, used in construction, logging, and mining.', NULL, NULL, NULL, 0, '0000-00-00'),
(794, '49-3043.00', 'Rail Car Repairers', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul railroad rolling stock, mine cars, or mass transit rail cars.', NULL, NULL, NULL, 0, '0000-00-00'),
(795, '49-3051.00', 'Motorboat Mechanics and Service Technicians', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Repair and adjust electrical and mechanical equipment of inboard or inboard-outboard boat engines.', NULL, NULL, NULL, 0, '0000-00-00'),
(796, '49-3052.00', 'Motorcycle Mechanics', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul motorcycles, scooters, mopeds, dirt bikes, or similar motorized vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(797, '49-3053.00', 'Outdoor Power Equipment and Other Small Engine Mechanics', 2, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Diagnose, adjust, repair, or overhaul small engines used to power lawn mowers, chain saws, recreational sporting equipment, and related equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(798, '49-3091.00', 'Bicycle Repairers', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Repair and service bicycles.', NULL, NULL, NULL, 0, '0000-00-00'),
(799, '49-3092.00', 'Recreational Vehicle Service Technicians', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Diagnose, inspect, adjust, repair, or overhaul recreational vehicles including travel trailers. May specialize in maintaining gas, electrical, hydraulic, plumbing, or chassis/towing systems as well as repairing generators, appliances, and interior components. Includes workers who perform customized van conversions.', NULL, NULL, NULL, 0, '0000-00-00'),
(800, '49-3093.00', 'Tire Repairers and Changers', 2, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Repair and replace tires.', NULL, NULL, NULL, 0, '0000-00-00'),
(801, '49-9011.00', 'Mechanical Door Repairers', 2, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Install, service, or repair automatic door mechanisms and hydraulic doors. Includes garage door mechanics.', NULL, NULL, NULL, 0, '0000-00-00'),
(802, '49-9012.00', 'Control and Valve Installers and Repairers, Except Mechanical Door', 3, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Install, repair, and maintain mechanical regulating and controlling devices, such as electric meters, gas regulators, thermostats, safety and flow valves, and other mechanical governors.', NULL, NULL, NULL, 0, '0000-00-00'),
(803, '49-9021.00', 'Heating, Air Conditioning, and Refrigeration Mechanics and Installers', 3, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Install or repair heating, central air conditioning, HVAC, or refrigeration systems, including oil burners, hot-air furnaces, and heating stoves.', NULL, NULL, NULL, 0, '0000-00-00'),
(804, '49-9031.00', 'Home Appliance Repairers', 2, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, adjust, or install all types of electric or gas household appliances, such as refrigerators, washers, dryers, and ovens.', NULL, NULL, NULL, 0, '0000-00-00'),
(805, '49-9041.00', 'Industrial Machinery Mechanics', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, install, adjust, or maintain industrial production and processing machinery or refinery and pipeline distribution systems. May also install, dismantle, or move machinery and heavy equipment according to plans.', NULL, NULL, NULL, 0, '0000-00-00'),
(806, '49-9043.00', 'Maintenance Workers, Machinery', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Lubricate machinery, change parts, or perform other routine machinery maintenance.', NULL, NULL, NULL, 0, '0000-00-00'),
(807, '49-9044.00', 'Millwrights', 2, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Install, dismantle, or move machinery and heavy equipment according to layout plans, blueprints, or other drawings.', NULL, NULL, NULL, 0, '0000-00-00'),
(808, '49-9045.00', 'Refractory Materials Repairers, Except Brickmasons', 2, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Build or repair equipment such as furnaces, kilns, cupolas, boilers, converters, ladles, soaking pits, and ovens, using refractory materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(809, '49-9051.00', 'Electrical Power-Line Installers and Repairers', 3, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Install or repair cables or wires used in electrical power or distribution systems. May erect poles and light or heavy duty transmission towers.', NULL, NULL, NULL, 0, '0000-00-00'),
(810, '49-9052.00', 'Telecommunications Line Installers and Repairers', 2, 63, 211, NULL, NULL, NULL, NULL, NULL, 'Install and repair telecommunications cable, including fiber optics.', NULL, NULL, NULL, 0, '0000-00-00'),
(811, '49-9061.00', 'Camera and Photographic Equipment Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair and adjust cameras and photographic equipment, including commercial video and motion picture camera equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(812, '49-9062.00', 'Medical Equipment Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Test, adjust, or repair biomedical or electromedical equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(813, '49-9063.00', 'Musical Instrument Repairers and Tuners', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair percussion, stringed, reed, or wind instruments. May specialize in one area, such as piano tuning.', NULL, NULL, NULL, 0, '0000-00-00'),
(814, '49-9064.00', 'Watch and Clock Repairers', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair, clean, and adjust mechanisms of timing instruments, such as watches and clocks. Includes watchmakers, watch technicians, and mechanical timepiece repairers.', NULL, NULL, NULL, 0, '0000-00-00'),
(815, '49-9069.00', 'Precision Instrument and Equipment Repairers, All Other', NULL, 63, 178, NULL, NULL, NULL, NULL, NULL, 'All precision instrument and equipment repairers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(816, '49-9071.00', 'Maintenance and Repair Workers, General', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Perform work involving the skills of two or more maintenance or craft occupations to keep machines, mechanical equipment, or the structure of a building in repair. Duties may involve pipe fitting; HVAC maintenance; insulating; welding; machining; carpentry; repairing electrical or mechanical equipment; installing, aligning, and balancing new equipment; and repairing buildings, floors, or stairs.', NULL, NULL, NULL, 0, '0000-00-00'),
(817, '49-9081.00', 'Wind Turbine Service Technicians', 3, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Inspect, diagnose, adjust, or repair wind turbines. Perform maintenance on wind turbine equipment including resolving electrical, mechanical, and hydraulic malfunctions.', NULL, NULL, NULL, 0, '0000-00-00'),
(818, '49-9091.00', 'Coin, Vending, and Amusement Machine Servicers and Repairers', 2, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Install, service, adjust, or repair coin, vending, or amusement machines including video games, juke boxes, pinball machines, or slot machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(819, '49-9092.00', 'Commercial Divers', 3, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Work below surface of water, using surface-supplied air or scuba equipment to inspect, repair, remove, or install equipment and structures. May use a variety of power and hand tools, such as drills, sledgehammers, torches, and welding equipment. May conduct tests or experiments, rig explosives, or photograph structures or marine life.', NULL, NULL, NULL, 0, '0000-00-00'),
(820, '49-9094.00', 'Locksmiths and Safe Repairers', 2, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Repair and open locks, make keys, change locks and safe combinations, and install and repair safes.', NULL, NULL, NULL, 0, '0000-00-00'),
(821, '49-9095.00', 'Manufactured Building and Mobile Home Installers', 2, 63, 154, NULL, NULL, NULL, NULL, NULL, 'Move or install mobile homes or prefabricated buildings.', NULL, NULL, NULL, 0, '0000-00-00'),
(822, '49-9096.00', 'Riggers', 2, 63, 154, NULL, NULL, NULL, NULL, NULL, 'Set up or repair rigging for construction projects, manufacturing plants, logging yards, ships and shipyards, or for the entertainment industry.', NULL, NULL, NULL, 0, '0000-00-00'),
(823, '49-9097.00', 'Signal and Track Switch Repairers', 3, 63, 164, NULL, NULL, NULL, NULL, NULL, 'Install, inspect, test, maintain, or repair electric gate crossings, signals, signal equipment, track switches, section lines, or intercommunications systems within a railroad system.', NULL, NULL, NULL, 0, '0000-00-00'),
(824, '49-9098.00', 'Helpers--Installation, Maintenance, and Repair Workers', 2, 63, 179, NULL, NULL, NULL, NULL, NULL, 'Help installation, maintenance, and repair workers in maintenance, parts replacement, and repair of vehicles, industrial machinery, and electrical and electronic equipment. Perform duties such as furnishing tools, materials, and supplies to other workers; cleaning work area, machines, and tools; and holding materials or tools for other workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(825, '49-9099.00', 'Installation, Maintenance, and Repair Workers, All Other', NULL, 63, 178, NULL, NULL, NULL, NULL, NULL, 'All installation, maintenance, and repair workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(826, '49-9099.01', 'Geothermal Technicians', 2, 63, 178, NULL, NULL, NULL, NULL, NULL, 'Perform technical activities at power plants or individual installations necessary for the generation of power from geothermal energy sources. Monitor and control operating activities at geothermal power generation facilities and perform maintenance and repairs as necessary. Install, test, and maintain residential and commercial geothermal heat pumps.', NULL, NULL, NULL, 0, '0000-00-00'),
(827, '51-1011.00', 'First-Line Supervisors of Production and Operating Workers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate the activities of production and operating workers, such as inspectors, precision workers, machine setters and operators, assemblers, fabricators, and plant and system operators. Excludes team or work leaders.', NULL, NULL, NULL, 0, '0000-00-00'),
(828, '51-2011.00', 'Aircraft Structure, Surfaces, Rigging, and Systems Assemblers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Assemble, fit, fasten, and install parts of airplanes, space vehicles, or missiles, such as tails, wings, fuselage, bulkheads, stabilizers, landing gear, rigging and control equipment, or heating and ventilating systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(829, '51-2021.00', 'Coil Winders, Tapers, and Finishers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Wind wire coils used in electrical components, such as resistors and transformers, and in electrical equipment and instruments, such as field cores, bobbins, armature cores, electrical motors, generators, and control equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(830, '51-2022.00', 'Electrical and Electronic Equipment Assemblers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Assemble or modify electrical or electronic equipment, such as computers, test equipment telemetering systems, electric motors, and batteries.', NULL, NULL, NULL, 0, '0000-00-00'),
(831, '51-2023.00', 'Electromechanical Equipment Assemblers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Assemble or modify electromechanical equipment or devices, such as servomechanisms, gyros, dynamometers, magnetic drums, tape drives, brakes, control linkage, actuators, and appliances.', NULL, NULL, NULL, 0, '0000-00-00'),
(832, '51-2031.00', 'Engine and Other Machine Assemblers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Construct, assemble, or rebuild machines, such as engines, turbines, and similar equipment used in such industries as construction, extraction, textiles, and paper manufacturing.', NULL, NULL, NULL, 0, '0000-00-00'),
(833, '51-2041.00', 'Structural Metal Fabricators and Fitters', 3, 70, 154, NULL, NULL, NULL, NULL, NULL, 'Fabricate, position, align, and fit parts of structural metal products.', NULL, NULL, NULL, 0, '0000-00-00'),
(834, '51-2051.00', 'Fiberglass Laminators and Fabricators', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Laminate layers of fiberglass on molds to form boat decks and hulls, bodies for golf carts, automobiles, or other products.', NULL, NULL, NULL, 0, '0000-00-00'),
(835, '51-2061.00', 'Timing Device Assemblers and Adjusters', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Perform precision assembling or adjusting, within narrow tolerances, of timing devices such as digital clocks or timing devices with electrical or electronic components.', NULL, NULL, NULL, 0, '0000-00-00'),
(836, '51-2092.00', 'Team Assemblers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Work as part of a team having responsibility for assembling an entire product or component of a product. Team assemblers can perform all tasks conducted by the team in the assembly process and rotate through all or most of them, rather than being assigned to a specific task on a permanent basis. May participate in making management decisions affecting the work. Includes team leaders who work as part of the team.', NULL, NULL, NULL, 0, '0000-00-00'),
(837, '51-2099.00', 'Assemblers and Fabricators, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All assemblers and fabricators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(838, '51-3011.00', 'Bakers', 2, 70, 203, NULL, NULL, NULL, NULL, NULL, 'Mix and bake ingredients to produce breads, rolls, cookies, cakes, pies, pastries, or other baked goods.', NULL, NULL, NULL, 0, '0000-00-00'),
(839, '51-3021.00', 'Butchers and Meat Cutters', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Cut, trim, or prepare consumer-sized portions of meat for use or sale in retail establishments.', NULL, NULL, NULL, 0, '0000-00-00'),
(840, '51-3022.00', 'Meat, Poultry, and Fish Cutters and Trimmers', 1, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Use hands or hand tools to perform routine cutting and trimming of meat, poultry, and seafood.', NULL, NULL, NULL, 0, '0000-00-00'),
(841, '51-3023.00', 'Slaughterers and Meat Packers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Perform nonroutine or precision functions involving the preparation of large portions of meat. Work may include specialized slaughtering tasks, cutting standard or premium cuts of meat for marketing, making sausage, or wrapping meats. Work typically occurs in slaughtering, meat packing, or wholesale establishments.', NULL, NULL, NULL, 0, '0000-00-00'),
(842, '51-3091.00', 'Food and Tobacco Roasting, Baking, and Drying Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend food or tobacco roasting, baking, or drying equipment, including hearth ovens, kiln driers, roasters, char kilns, and vacuum drying equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(843, '51-3092.00', 'Food Batchmakers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up and operate equipment that mixes or blends ingredients used in the manufacturing of food products. Includes candy makers and cheese makers.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(844, '51-3093.00', 'Food Cooking Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend cooking equipment, such as steam cooking vats, deep fry cookers, pressure cookers, kettles, and boilers, to prepare food products.', NULL, NULL, NULL, 0, '0000-00-00'),
(845, '51-3099.00', 'Food Processing Workers, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All food processing workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(846, '51-4021.00', 'Extruding and Drawing Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines to extrude or draw thermoplastic or metal materials into tubes, rods, hoses, wire, bars, or structural shapes.', NULL, NULL, NULL, 0, '0000-00-00'),
(847, '51-4022.00', 'Forging Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend forging machines to taper, shape, or form metal or plastic parts.', NULL, NULL, NULL, 0, '0000-00-00'),
(848, '51-4023.00', 'Rolling Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines to roll steel or plastic forming bends, beads, knurls, rolls, or plate, or to flatten, temper, or reduce gauge of material.', NULL, NULL, NULL, 0, '0000-00-00'),
(849, '51-4031.00', 'Cutting, Punching, and Press Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines to saw, cut, shear, slit, punch, crimp, notch, bend, or straighten metal or plastic material.', NULL, NULL, NULL, 0, '0000-00-00'),
(850, '51-4032.00', 'Drilling and Boring Machine Tool Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend drilling machines to drill, bore, ream, mill, or countersink metal or plastic work pieces.', NULL, NULL, NULL, 0, '0000-00-00'),
(851, '51-4033.00', 'Grinding, Lapping, Polishing, and Buffing Machine Tool Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend grinding and related tools that remove excess material or burrs from surfaces, sharpen edges or corners, or buff, hone, or polish metal or plastic work pieces.', NULL, NULL, NULL, 0, '0000-00-00'),
(852, '51-4034.00', 'Lathe and Turning Machine Tool Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend lathe and turning machines to turn, bore, thread, form, or face metal or plastic materials, such as wire, rod, or bar stock.', NULL, NULL, NULL, 0, '0000-00-00'),
(853, '51-4035.00', 'Milling and Planing Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend milling or planing machines to mill, plane, shape, groove, or profile metal or plastic work pieces.', NULL, NULL, NULL, 0, '0000-00-00'),
(854, '51-4041.00', 'Machinists', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up and operate a variety of machine tools to produce precision parts and instruments out of metal. Includes precision instrument makers who fabricate, modify, or repair mechanical instruments. May also fabricate and modify parts to make or repair machine tools or maintain industrial machines, applying knowledge of mechanics, mathematics, metal properties, layout, and machining procedures.', NULL, NULL, NULL, 0, '0000-00-00'),
(855, '51-4051.00', 'Metal-Refining Furnace Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend furnaces, such as gas, oil, coal, electric-arc or electric induction, open-hearth, or oxygen furnaces, to melt and refine metal before casting or to produce specified types of steel.', NULL, NULL, NULL, 0, '0000-00-00'),
(856, '51-4052.00', 'Pourers and Casters, Metal', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate hand-controlled mechanisms to pour and regulate the flow of molten metal into molds to produce castings or ingots.', NULL, NULL, NULL, 0, '0000-00-00'),
(857, '51-4061.00', 'Model Makers, Metal and Plastic', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up and operate machines, such as lathes, milling and engraving machines, and jig borers to make working models of metal or plastic objects. Includes template makers.', NULL, NULL, NULL, 0, '0000-00-00'),
(858, '51-4062.00', 'Patternmakers, Metal and Plastic', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Lay out, machine, fit, and assemble castings and parts to metal or plastic foundry patterns, core boxes, or match plates.', NULL, NULL, NULL, 0, '0000-00-00'),
(859, '51-4071.00', 'Foundry Mold and Coremakers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Make or form wax or sand cores or molds used in the production of metal castings in foundries.', NULL, NULL, NULL, 0, '0000-00-00'),
(860, '51-4072.00', 'Molding, Coremaking, and Casting Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend metal or plastic molding, casting, or coremaking machines to mold or cast metal or thermoplastic parts or products.', NULL, NULL, NULL, 0, '0000-00-00'),
(861, '51-4081.00', 'Multiple Machine Tool Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend more than one type of cutting or forming machine tool or robot.', NULL, NULL, NULL, 0, '0000-00-00'),
(862, '51-4111.00', 'Tool and Die Makers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Analyze specifications, lay out metal stock, set up and operate machine tools, and fit and assemble parts to make and repair dies, cutting tools, jigs, fixtures, gauges, and machinists\' hand tools.', NULL, NULL, NULL, 0, '0000-00-00'),
(863, '51-4121.00', 'Welders, Cutters, Solderers, and Brazers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Use hand-welding, flame-cutting, hand-soldering, or brazing equipment to weld or join metal components or to fill holes, indentations, or seams of fabricated metal products.', NULL, NULL, NULL, 0, '0000-00-00'),
(864, '51-4122.00', 'Welding, Soldering, and Brazing Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend welding, soldering, or brazing machines or robots that weld, braze, solder, or heat treat metal products, components, or assemblies. Includes workers who operate laser cutters or laser-beam machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(865, '51-4191.00', 'Heat Treating Equipment Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend heating equipment, such as heat-treating furnaces, flame-hardening machines, induction machines, soaking pits, or vacuum equipment to temper, harden, anneal, or heat treat metal or plastic objects.', NULL, NULL, NULL, 0, '0000-00-00'),
(866, '51-4192.00', 'Layout Workers, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Lay out reference points and dimensions on metal or plastic stock or workpieces, such as sheets, plates, tubes, structural shapes, castings, or machine parts, for further processing. Includes shipfitters.', NULL, NULL, NULL, 0, '0000-00-00'),
(867, '51-4193.00', 'Plating Machine Setters, Operators, and Tenders, Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend plating machines to coat metal or plastic products with chromium, zinc, copper, cadmium, nickel, or other metal to protect or decorate surfaces. Typically, the product being coated is immersed in molten metal or an electrolytic solution.', NULL, NULL, NULL, 0, '0000-00-00'),
(868, '51-4194.00', 'Tool Grinders, Filers, and Sharpeners', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Perform precision smoothing, sharpening, polishing, or grinding of metal objects.', NULL, NULL, NULL, 0, '0000-00-00'),
(869, '51-4199.00', 'Metal Workers and Plastic Workers, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All metal workers and plastic workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(870, '51-5111.00', 'Prepress Technicians and Workers', 3, 70, 194, NULL, NULL, NULL, NULL, NULL, 'Format and proof text and images submitted by designers and clients into finished pages that can be printed. Includes digital and photo typesetting. May produce printing plates.', NULL, NULL, NULL, 0, '0000-00-00'),
(871, '51-5112.00', 'Printing Press Operators', 2, 70, 194, NULL, NULL, NULL, NULL, NULL, 'Set up and operate digital, letterpress, lithographic, flexographic, gravure, or other printing machines. Includes short-run offset printing presses.', NULL, NULL, NULL, 0, '0000-00-00'),
(872, '51-5113.00', 'Print Binding and Finishing Workers', 2, 70, 194, NULL, NULL, NULL, NULL, NULL, 'Bind books and other publications or finish printed products by hand or machine. May set up binding and finishing machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(873, '51-6011.00', 'Laundry and Dry-Cleaning Workers', 1, 70, 190, NULL, NULL, NULL, NULL, NULL, 'Operate or tend washing or dry-cleaning machines to wash or dry-clean industrial or household articles, such as cloth garments, suede, leather, furs, blankets, draperies, linens, rugs, and carpets. Includes spotters and dyers of these articles.', NULL, NULL, NULL, 0, '0000-00-00'),
(874, '51-6021.00', 'Pressers, Textile, Garment, and Related Materials', 1, 70, 190, NULL, NULL, NULL, NULL, NULL, 'Press or shape articles by hand or machine.', NULL, NULL, NULL, 0, '0000-00-00'),
(875, '51-6031.00', 'Sewing Machine Operators', 1, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend sewing machines to join, reinforce, decorate, or perform related sewing operations in the manufacture of garment or nongarment products.', NULL, NULL, NULL, 0, '0000-00-00'),
(876, '51-6041.00', 'Shoe and Leather Workers and Repairers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Construct, decorate, or repair leather and leather-like products, such as luggage, shoes, and saddles. May use hand tools.', NULL, NULL, NULL, 0, '0000-00-00'),
(877, '51-6042.00', 'Shoe Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend a variety of machines to join, decorate, reinforce, or finish shoes and shoe parts.', NULL, NULL, NULL, 0, '0000-00-00'),
(878, '51-6051.00', 'Sewers, Hand', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Sew, join, reinforce, or finish, usually with needle and thread, a variety of manufactured items. Includes weavers and stitchers.', NULL, NULL, NULL, 0, '0000-00-00'),
(879, '51-6052.00', 'Tailors, Dressmakers, and Custom Sewers', 2, 70, 190, NULL, NULL, NULL, NULL, NULL, 'Design, make, alter, repair, or fit garments.', NULL, NULL, NULL, 0, '0000-00-00'),
(880, '51-6061.00', 'Textile Bleaching and Dyeing Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend machines to bleach, shrink, wash, dye, or finish textiles or synthetic or glass fibers.', NULL, NULL, NULL, 0, '0000-00-00'),
(881, '51-6062.00', 'Textile Cutting Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines that cut textiles.', NULL, NULL, NULL, 0, '0000-00-00'),
(882, '51-6063.00', 'Textile Knitting and Weaving Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines that knit, loop, weave, or draw in textiles.', NULL, NULL, NULL, 0, '0000-00-00'),
(883, '51-6064.00', 'Textile Winding, Twisting, and Drawing Out Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines that wind or twist textiles; or draw out and combine sliver, such as wool, hemp, or synthetic fibers. Includes slubber machine and drawing frame operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(884, '51-6091.00', 'Extruding and Forming Machine Setters, Operators, and Tenders, Synthetic and Glass Fibers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines that extrude and form continuous filaments from synthetic materials, such as liquid polymer, rayon, and fiberglass.', NULL, NULL, NULL, 0, '0000-00-00'),
(885, '51-6092.00', 'Fabric and Apparel Patternmakers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Draw and construct sets of precision master fabric patterns or layouts. May also mark and cut fabrics and apparel.', NULL, NULL, NULL, 0, '0000-00-00'),
(886, '51-6093.00', 'Upholsterers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Make, repair, or replace upholstery for household furniture or transportation vehicles.', NULL, NULL, NULL, 0, '0000-00-00'),
(887, '51-6099.00', 'Textile, Apparel, and Furnishings Workers, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All textile, apparel, and furnishings workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(888, '51-7011.00', 'Cabinetmakers and Bench Carpenters', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Cut, shape, and assemble wooden articles or set up and operate a variety of woodworking machines, such as power saws, jointers, and mortisers to surface, cut, or shape lumber or to fabricate parts for wood products.', NULL, NULL, NULL, 0, '0000-00-00'),
(889, '51-7021.00', 'Furniture Finishers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Shape, finish, and refinish damaged, worn, or used furniture or new high-grade furniture to specified color or finish.', NULL, NULL, NULL, 0, '0000-00-00'),
(890, '51-7031.00', 'Model Makers, Wood', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Construct full-size and scale wooden precision models of products. Includes wood jig builders and loft workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(891, '51-7032.00', 'Patternmakers, Wood', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Plan, lay out, and construct wooden unit or sectional patterns used in forming sand molds for castings.', NULL, NULL, NULL, 0, '0000-00-00'),
(892, '51-7041.00', 'Sawing Machine Setters, Operators, and Tenders, Wood', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend wood sawing machines. May operate computer numerically controlled (CNC) equipment. Includes lead sawyers.', NULL, NULL, NULL, 0, '0000-00-00'),
(893, '51-7042.00', 'Woodworking Machine Setters, Operators, and Tenders, Except Sawing', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend woodworking machines, such as drill presses, lathes, shapers, routers, sanders, planers, and wood nailing machines. May operate computer numerically controlled (CNC) equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(894, '51-7099.00', 'Woodworkers, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All woodworkers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(895, '51-8011.00', 'Nuclear Power Reactor Operators', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or control nuclear reactors. Move control rods, start and stop equipment, monitor and adjust controls, and record data in logs. Implement emergency procedures when needed. May respond to abnormalities, determine cause, and recommend corrective action.', NULL, NULL, NULL, 0, '0000-00-00'),
(896, '51-8012.00', 'Power Distributors and Dispatchers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Coordinate, regulate, or distribute electricity or steam.', NULL, NULL, NULL, 0, '0000-00-00'),
(897, '51-8013.00', 'Power Plant Operators', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Control, operate, or maintain machinery to generate electric power. Includes auxiliary equipment operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(898, '51-8013.03', 'Biomass Plant Technicians', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Control and monitor biomass plant activities and perform maintenance as needed.', NULL, NULL, NULL, 0, '0000-00-00'),
(899, '51-8013.04', 'Hydroelectric Plant Technicians', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Monitor and control activities associated with hydropower generation. Operate plant equipment, such as turbines, pumps, valves, gates, fans, electric control boards, and battery banks. Monitor equipment operation and performance and make necessary adjustments to ensure optimal performance. Perform equipment maintenance and repair as necessary.', NULL, NULL, NULL, 0, '0000-00-00'),
(900, '51-8021.00', 'Stationary Engineers and Boiler Operators', 3, 70, 179, NULL, NULL, NULL, NULL, NULL, 'Operate or maintain stationary engines, boilers, or other mechanical equipment to provide utilities for buildings or industrial processes. Operate equipment such as steam engines, generators, motors, turbines, and steam boilers.', NULL, NULL, NULL, 0, '0000-00-00'),
(901, '51-8031.00', 'Water and Wastewater Treatment Plant and System Operators', 3, 70, 163, NULL, NULL, NULL, NULL, NULL, 'Operate or control an entire process or system of machines, often through the use of control boards, to transfer or treat water or wastewater.', NULL, NULL, NULL, 0, '0000-00-00'),
(902, '51-8091.00', 'Chemical Plant and System Operators', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Control or operate entire chemical processes or system of machines.', NULL, NULL, NULL, 0, '0000-00-00'),
(903, '51-8092.00', 'Gas Plant Operators', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Distribute or process gas for utility companies and others by controlling compressors to maintain specified pressures on main pipelines.', NULL, NULL, NULL, 0, '0000-00-00'),
(904, '51-8093.00', 'Petroleum Pump System Operators, Refinery Operators, and Gaugers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or control petroleum refining or processing units. May specialize in controlling manifold and pumping systems, gauging or testing oil in storage tanks, or regulating the flow of oil into pipelines.', NULL, NULL, NULL, 0, '0000-00-00'),
(905, '51-8099.00', 'Plant and System Operators, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All plant and system operators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(906, '51-8099.01', 'Biofuels Processing Technicians', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Calculate, measure, load, mix, and process refined feedstock with additives in fermentation or reaction process vessels and monitor production process. Perform, and keep records of, plant maintenance, repairs, and safety inspections.', NULL, NULL, NULL, 0, '0000-00-00'),
(907, '51-9011.00', 'Chemical Equipment Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend equipment to control chemical changes or reactions in the processing of industrial or consumer products. Equipment used includes devulcanizers, steam-jacketed kettles, and reactor vessels.', NULL, NULL, NULL, 0, '0000-00-00'),
(908, '51-9012.00', 'Separating, Filtering, Clarifying, Precipitating, and Still Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend continuous flow or vat-type equipment; filter presses; shaker screens; centrifuges; condenser tubes; precipitating, fermenting, or evaporating tanks; scrubbing towers; or batch stills. These machines extract, sort, or separate liquids, gases, or solids from other materials to recover a refined product. Includes dairy processing equipment operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(909, '51-9021.00', 'Crushing, Grinding, and Polishing Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines to crush, grind, or polish materials, such as coal, glass, grain, stone, food, or rubber.', NULL, NULL, NULL, 0, '0000-00-00'),
(910, '51-9022.00', 'Grinding and Polishing Workers, Hand', 1, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Grind, sand, or polish, using hand tools or hand-held power tools, a variety of metal, wood, stone, clay, plastic, or glass objects. Includes chippers, buffers, and finishers.', NULL, NULL, NULL, 0, '0000-00-00'),
(911, '51-9023.00', 'Mixing and Blending Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines to mix or blend materials, such as chemicals, tobacco, liquids, color pigments, or explosive ingredients.', NULL, NULL, NULL, 0, '0000-00-00'),
(912, '51-9031.00', 'Cutters and Trimmers, Hand', 1, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Use hand tools or hand-held power tools to cut and trim a variety of manufactured items, such as carpet, fabric, stone, glass, or rubber.', NULL, NULL, NULL, 0, '0000-00-00'),
(913, '51-9032.00', 'Cutting and Slicing Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines that cut or slice materials, such as glass, stone, cork, rubber, tobacco, food, paper, or insulating material.', NULL, NULL, NULL, 0, '0000-00-00'),
(914, '51-9041.00', 'Extruding, Forming, Pressing, and Compacting Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend machines, such as glass-forming machines, plodder machines, and tuber machines, to shape and form products such as glassware, food, rubber, soap, brick, tile, clay, wax, tobacco, or cosmetics.', NULL, NULL, NULL, 0, '0000-00-00'),
(915, '51-9051.00', 'Furnace, Kiln, Oven, Drier, and Kettle Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend heating equipment other than basic metal, plastic, or food processing equipment. Includes activities such as annealing glass, drying lumber, curing rubber, removing moisture from materials, or boiling soap.', NULL, NULL, NULL, 0, '0000-00-00'),
(916, '51-9061.00', 'Inspectors, Testers, Sorters, Samplers, and Weighers', 2, 70, 200, NULL, NULL, NULL, NULL, NULL, 'Inspect, test, sort, sample, or weigh nonagricultural raw materials or processed, machined, fabricated, or assembled parts or products for defects, wear, and deviations from specifications. May use precision measuring instruments and complex test equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(917, '51-9071.00', 'Jewelers and Precious Stone and Metal Workers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Design, fabricate, adjust, repair, or appraise jewelry, gold, silver, other precious metals, or gems.', NULL, NULL, NULL, 0, '0000-00-00'),
(918, '51-9071.06', 'Gem and Diamond Workers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Fabricate, finish, or evaluate the quality of gems and diamonds used in jewelry or industrial tools.', NULL, NULL, NULL, 0, '0000-00-00'),
(919, '51-9081.00', 'Dental Laboratory Technicians', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Construct and repair full or partial dentures or dental appliances.', NULL, NULL, NULL, 0, '0000-00-00'),
(920, '51-9082.00', 'Medical Appliance Technicians', 3, 70, 178, NULL, NULL, NULL, NULL, NULL, 'Construct, maintain, or repair medical supportive devices such as braces, orthotics and prosthetic devices, joints, arch supports, and other surgical and medical appliances.', NULL, NULL, NULL, 0, '0000-00-00'),
(921, '51-9083.00', 'Ophthalmic Laboratory Technicians', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Cut, grind, and polish eyeglasses, contact lenses, or other precision optical elements. Assemble and mount lenses into frames or process other optical elements. Includes precision lens polishers or grinders, centerer-edgers, and lens mounters.', NULL, NULL, NULL, 0, '0000-00-00'),
(922, '51-9111.00', 'Packaging and Filling Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend machines to prepare industrial or consumer products for storage or shipment. Includes cannery workers who pack food products.', NULL, NULL, NULL, 0, '0000-00-00'),
(923, '51-9123.00', 'Painting, Coating, and Decorating Workers', 1, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Paint, coat, or decorate articles, such as furniture, glass, plateware, pottery, jewelry, toys, books, or leather.', NULL, NULL, NULL, 0, '0000-00-00'),
(924, '51-9124.00', 'Coating, Painting, and Spraying Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend spraying or rolling machines to coat or paint any of a wide variety of products, including glassware, cloth, ceramics, metal, plastic, paper, or wood, with lacquer, silver, copper, rubber, varnish, glaze, enamel, oil, or rust-proofing materials. Includes painters of transportation vehicles such as painters in auto body repair facilities.', NULL, NULL, NULL, 0, '0000-00-00'),
(925, '51-9141.00', 'Semiconductor Processing Technicians', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Perform any or all of the following functions in the manufacture of electronic semiconductors: load semiconductor material into furnace; saw formed ingots into segments; load individual segment into crystal growing chamber and monitor controls; locate crystal axis in ingot using x-ray equipment and saw ingots into wafers; and clean, polish, and load wafers into series of special purpose furnaces, chemical baths, and equipment used to form circuitry and change conductive properties.', NULL, NULL, NULL, 0, '0000-00-00'),
(926, '51-9151.00', 'Photographic Process Workers and Processing Machine Operators', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Perform work involved in developing and processing photographic images from film or digital media. May perform precision tasks such as editing photographic negatives and prints.', NULL, NULL, NULL, 0, '0000-00-00'),
(927, '51-9161.00', 'Computer Numerically Controlled Tool Operators', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate computer-controlled tools, machines, or robots to machine or process parts, tools, or other work pieces made of metal, plastic, wood, stone, or other materials. May also set up and maintain equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(928, '51-9162.00', 'Computer Numerically Controlled Tool Programmers', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Develop programs to control machining or processing of materials by automatic machine tools, equipment, or systems. May also set up, operate, or maintain equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(929, '51-9191.00', 'Adhesive Bonding Machine Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend bonding machines that use adhesives to join items for further processing or to form a completed product. Processes include joining veneer sheets into plywood; gluing paper; or joining rubber and rubberized fabric parts, plastic, simulated leather, or other materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(930, '51-9192.00', 'Cleaning, Washing, and Metal Pickling Equipment Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend machines to wash or clean products, such as barrels or kegs, glass items, tin plate, food, pulp, coal, plastic, or rubber, to remove impurities.', NULL, NULL, NULL, 0, '0000-00-00'),
(931, '51-9193.00', 'Cooling and Freezing Equipment Operators and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate or tend equipment such as cooling and freezing units, refrigerators, batch freezers, and freezing tunnels, to cool or freeze products, food, blood plasma, and chemicals.', NULL, NULL, NULL, 0, '0000-00-00'),
(932, '51-9194.00', 'Etchers and Engravers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Engrave or etch metal, wood, rubber, or other materials. Includes such workers as etcher-circuit processors, pantograph engravers, and silk screen etchers.', NULL, NULL, NULL, 0, '0000-00-00'),
(933, '51-9195.00', 'Molders, Shapers, and Casters, Except Metal and Plastic', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Mold, shape, form, cast, or carve products such as food products, figurines, tile, pipes, and candles consisting of clay, glass, plaster, concrete, stone, or combinations of materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(934, '51-9195.03', 'Stone Cutters and Carvers, Manufacturing', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Cut or carve stone according to diagrams and patterns.', NULL, NULL, NULL, 0, '0000-00-00'),
(935, '51-9195.04', 'Glass Blowers, Molders, Benders, and Finishers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Shape molten glass according to patterns.', NULL, NULL, NULL, 0, '0000-00-00'),
(936, '51-9195.05', 'Potters, Manufacturing', 3, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate production machines such as pug mill, jigger machine, or potter\'s wheel to process clay in manufacture of ceramic, pottery and stoneware products.', NULL, NULL, NULL, 0, '0000-00-00'),
(937, '51-9196.00', 'Paper Goods Machine Setters, Operators, and Tenders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Set up, operate, or tend paper goods machines that perform a variety of functions, such as converting, sawing, corrugating, banding, wrapping, boxing, stitching, forming, or sealing paper or paperboard sheets into products.', NULL, NULL, NULL, 0, '0000-00-00'),
(938, '51-9197.00', 'Tire Builders', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Operate machines to build tires.', NULL, NULL, NULL, 0, '0000-00-00'),
(939, '51-9198.00', 'Helpers--Production Workers', 2, 70, 195, NULL, NULL, NULL, NULL, NULL, 'Help production workers by performing duties requiring less skill. Duties include supplying or holding materials or tools, and cleaning work area and equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(940, '51-9199.00', 'Production Workers, All Other', NULL, 70, 195, NULL, NULL, NULL, NULL, NULL, 'All production workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(941, '53-1041.00', 'Aircraft Cargo Handling Supervisors', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate the activities of ground crew in the loading, unloading, securing, and staging of aircraft cargo or baggage. May determine the quantity and orientation of cargo and compute aircraft center of gravity. May accompany aircraft as member of flight crew and monitor and handle cargo in flight, and assist and brief passengers on safety and emergency procedures. Includes loadmasters.', NULL, NULL, NULL, 0, '0000-00-00'),
(942, '53-1042.00', 'First-Line Supervisors of Helpers, Laborers, and Material Movers, Hand', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate the activities of helpers, laborers, or material movers, hand.', NULL, NULL, NULL, 0, '0000-00-00'),
(943, '53-1042.01', 'Recycling Coordinators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Supervise curbside and drop-off recycling programs for municipal governments or private firms.', NULL, NULL, NULL, 0, '0000-00-00'),
(944, '53-1043.00', 'First-Line Supervisors of Material-Moving Machine and Vehicle Operators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Directly supervise and coordinate activities of material-moving machine and vehicle operators and helpers.', NULL, NULL, NULL, 0, '0000-00-00'),
(945, '53-1044.00', 'First-Line Supervisors of Passenger Attendants', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate activities of passenger attendants.', NULL, NULL, NULL, 0, '0000-00-00'),
(946, '53-1049.00', 'First-Line Supervisors of Transportation Workers, All Other', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'All first-line supervisors of transportation workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(947, '53-2011.00', 'Airline Pilots, Copilots, and Flight Engineers', 4, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Pilot and navigate the flight of fixed-wing aircraft, usually on scheduled air carrier routes, for the transport of passengers and cargo. Requires Federal Air Transport certificate and rating for specific aircraft type used. Includes regional, national, and international airline pilots and flight instructors of airline pilots.', NULL, NULL, NULL, 0, '0000-00-00'),
(948, '53-2012.00', 'Commercial Pilots', 3, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Pilot and navigate the flight of fixed-wing aircraft on nonscheduled air carrier routes, or helicopters. Requires Commercial Pilot certificate. Includes charter pilots with similar certification, and air ambulance and air tour pilots. Excludes regional, national, and international airline pilots.', NULL, NULL, NULL, 0, '0000-00-00'),
(949, '53-2021.00', 'Air Traffic Controllers', 3, 73, 214, NULL, NULL, NULL, NULL, NULL, 'Control air traffic on and within vicinity of airport, and movement of air traffic between altitude sectors and control centers, according to established procedures and policies. Authorize, regulate, and control commercial airline flights according to government or company regulations to expedite and ensure flight safety.', NULL, NULL, NULL, 0, '0000-00-00'),
(950, '53-2022.00', 'Airfield Operations Specialists', 3, 73, 214, NULL, NULL, NULL, NULL, NULL, 'Ensure the safe takeoff and landing of commercial and military aircraft. Duties include coordination between air-traffic control and maintenance personnel, dispatching, using airfield landing and navigational aids, implementing airfield safety procedures, monitoring and maintaining flight records, and applying knowledge of weather information.', NULL, NULL, NULL, 0, '0000-00-00'),
(951, '53-2031.00', 'Flight Attendants', 3, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Monitor safety of the aircraft cabin. Provide services to airline passengers, explain safety information, serve food and beverages, and respond to emergency incidents.', NULL, NULL, NULL, 0, '0000-00-00'),
(952, '53-3011.00', 'Ambulance Drivers and Attendants, Except Emergency Medical Technicians', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive ambulance or assist ambulance driver in transporting sick, injured, or convalescent persons. Assist in lifting patients.', NULL, NULL, NULL, 0, '0000-00-00'),
(953, '53-3031.00', 'Driver/Sales Workers', 2, 73, 196, NULL, NULL, NULL, NULL, NULL, 'Drive truck or other vehicle over established routes or within an established territory and sell or deliver goods, such as food products, including restaurant take-out items, or pick up or deliver items such as commercial laundry. May also take orders, collect payment, or stock merchandise at point of delivery.', NULL, NULL, NULL, 0, '0000-00-00'),
(954, '53-3032.00', 'Heavy and Tractor-Trailer Truck Drivers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive a tractor-trailer combination or a truck with a capacity of at least 26,001 pounds Gross Vehicle Weight (GVW). May be required to unload truck. Requires commercial drivers\' license. Includes tow truck drivers.', NULL, NULL, NULL, 0, '0000-00-00'),
(955, '53-3033.00', 'Light Truck Drivers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive a light vehicle, such as a truck or van, with a capacity of less than 26,001 pounds Gross Vehicle Weight (GVW), primarily to pick up merchandise or packages from a distribution center and deliver. May load and unload vehicle.', NULL, NULL, NULL, 0, '0000-00-00'),
(956, '53-3051.00', 'Bus Drivers, School', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive a school bus to transport students. Ensure adherence to safety rules. May assist students in boarding or exiting.', NULL, NULL, NULL, 0, '0000-00-00'),
(957, '53-3052.00', 'Bus Drivers, Transit and Intercity', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive bus or motor coach, including regular route operations, charters, and private carriage. May assist passengers with baggage. May collect fares or tickets.', NULL, NULL, NULL, 0, '0000-00-00'),
(958, '53-3053.00', 'Shuttle Drivers and Chauffeurs', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive a motor vehicle to transport passengers on a planned or scheduled basis. May collect a fare. Includes nonemergency medical transporters and hearse drivers.', NULL, NULL, NULL, 0, '0000-00-00'),
(959, '53-3054.00', 'Taxi Drivers', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive a motor vehicle to transport passengers on an unplanned basis and charge a fare, usually based on a meter.', NULL, NULL, NULL, 0, '0000-00-00'),
(960, '53-3099.00', 'Motor Vehicle Operators, All Other', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'All motor vehicle operators not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(961, '53-4011.00', 'Locomotive Engineers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive electric, diesel-electric, steam, or gas-turbine-electric locomotives to transport passengers or freight. Interpret train orders, electronic or manual signals, and railroad rules and regulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(962, '53-4013.00', 'Rail Yard Engineers, Dinkey Operators, and Hostlers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Drive switching or other locomotive or dinkey engines within railroad yard, industrial plant, quarry, construction project, or similar location.', NULL, NULL, NULL, 0, '0000-00-00'),
(963, '53-4022.00', 'Railroad Brake, Signal, and Switch Operators and Locomotive Firers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate or monitor railroad track switches or locomotive instruments. May couple or uncouple rolling stock to make up or break up trains. Watch for and relay traffic signals. May inspect couplings, air hoses, journal boxes, and hand brakes. May watch for dragging equipment or obstacles on rights-of-way.', NULL, NULL, NULL, 0, '0000-00-00'),
(964, '53-4031.00', 'Railroad Conductors and Yardmasters', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Coordinate activities of switch-engine crew within railroad yard, industrial plant, or similar location. Conductors coordinate activities of train crew on passenger or freight trains. Yardmasters review train schedules and switching orders and coordinate activities of workers engaged in railroad traffic operations, such as the makeup or breakup of trains and yard switching.', NULL, NULL, NULL, 0, '0000-00-00'),
(965, '53-4041.00', 'Subway and Streetcar Operators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate subway or elevated suburban trains with no separate locomotive, or electric-powered streetcar, to transport passengers. May handle fares.', NULL, NULL, NULL, 0, '0000-00-00'),
(966, '53-4099.00', 'Rail Transportation Workers, All Other', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'All rail transportation workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(967, '53-5011.00', 'Sailors and Marine Oilers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Stand watch to look for obstructions in path of vessel, measure water depth, turn wheel on bridge, or use emergency equipment as directed by captain, mate, or pilot. Break out, rig, overhaul, and store cargo-handling gear, stationary rigging, and running gear. Perform a variety of maintenance tasks to preserve the painted surface of the ship and to maintain line and ship equipment. Must hold government-issued certification and tankerman certification when working aboard liquid-carrying vessels. Includes able seamen and ordinary seamen.', NULL, NULL, NULL, 0, '0000-00-00'),
(968, '53-5021.00', 'Captains, Mates, and Pilots of Water Vessels', 3, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Command or supervise operations of ships and water vessels, such as tugboats and ferryboats. Required to hold license issued by U.S. Coast Guard.', NULL, NULL, NULL, 0, '0000-00-00'),
(969, '53-5022.00', 'Motorboat Operators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate small motor-driven boats. May assist in navigational activities.', NULL, NULL, NULL, 0, '0000-00-00'),
(970, '53-5031.00', 'Ship Engineers', 3, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate activities of crew engaged in operating and maintaining engines, boilers, deck machinery, and electrical, sanitary, and refrigeration equipment aboard ship.', NULL, NULL, NULL, 0, '0000-00-00'),
(971, '53-6011.00', 'Bridge and Lock Tenders', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate and tend bridges, canal locks, and lighthouses to permit marine passage on inland waterways, near shores, and at danger points in waterway passages. May supervise such operations. Includes drawbridge operators, lock operators, and slip bridge operators.', NULL, NULL, NULL, 0, '0000-00-00'),
(972, '53-6021.00', 'Parking Attendants', 2, 73, 205, NULL, NULL, NULL, NULL, NULL, 'Park vehicles or issue tickets for customers in a parking lot or garage. May park or tend vehicles in environments such as a car dealership or rental car facility. May collect fee.', NULL, NULL, NULL, 0, '0000-00-00'),
(973, '53-6031.00', 'Automotive and Watercraft Service Attendants', 2, 73, 164, NULL, NULL, NULL, NULL, NULL, 'Service automobiles, buses, trucks, boats, and other automotive or marine vehicles with fuel, lubricants, and accessories. Collect payment for services and supplies. May lubricate vehicle, change motor oil, refill antifreeze, or replace lights or other accessories, such as windshield wiper blades or fan belts. May repair or replace tires.', NULL, NULL, NULL, 0, '0000-00-00'),
(974, '53-6032.00', 'Aircraft Service Attendants', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Service aircraft with fuel. May de-ice aircraft, refill water and cooling agents, empty sewage tanks, service air and oxygen systems, or clean and polish exterior.', NULL, NULL, NULL, 0, '0000-00-00'),
(975, '53-6041.00', 'Traffic Technicians', 3, 73, 214, NULL, NULL, NULL, NULL, NULL, 'Conduct field studies to determine traffic volume, speed, effectiveness of signals, adequacy of lighting, and other factors influencing traffic conditions, under direction of traffic engineer.', NULL, NULL, NULL, 0, '0000-00-00'),
(976, '53-6051.00', 'Transportation Inspectors', 4, 73, 168, NULL, NULL, NULL, NULL, NULL, 'Inspect equipment or goods in connection with the safe transport of cargo or people. Includes rail transportation inspectors, such as freight inspectors, rail inspectors, and other inspectors of transportation vehicles not elsewhere classified.', NULL, NULL, NULL, 0, '0000-00-00'),
(977, '53-6051.01', 'Aviation Inspectors', 3, 73, 168, NULL, NULL, NULL, NULL, NULL, 'Inspect aircraft, maintenance procedures, air navigational aids, air traffic controls, and communications equipment to ensure conformance with Federal safety regulations.', NULL, NULL, NULL, 0, '0000-00-00'),
(978, '53-6051.07', 'Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation', 2, 73, 168, NULL, NULL, NULL, NULL, NULL, 'Inspect and monitor transportation equipment, vehicles, or systems to ensure compliance with regulations and safety standards.', NULL, NULL, NULL, 0, '0000-00-00'),
(979, '53-6061.00', 'Passenger Attendants', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Provide services to ensure the safety of passengers aboard ships, buses, trains, or within the station or terminal. Perform duties such as explaining the use of safety equipment, serving meals or beverages, or answering questions related to travel.', NULL, NULL, NULL, 0, '0000-00-00'),
(980, '53-6099.00', 'Transportation Workers, All Other', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'All transportation workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(981, '53-7011.00', 'Conveyor Operators and Tenders', 1, 73, 154, NULL, NULL, NULL, NULL, NULL, 'Control or tend conveyors or conveyor systems that move materials or products to and from stockpiles, processing stations, departments, or vehicles. May control speed and routing of materials or products.', NULL, NULL, NULL, 0, '0000-00-00'),
(982, '53-7021.00', 'Crane and Tower Operators', 3, 73, 154, NULL, NULL, NULL, NULL, NULL, 'Operate mechanical boom and cable or tower and cable equipment to lift and move materials, machines, or products in many directions.', NULL, NULL, NULL, 0, '0000-00-00'),
(983, '53-7031.00', 'Dredge Operators', 2, 73, 154, NULL, NULL, NULL, NULL, NULL, 'Operate dredge to remove sand, gravel, or other materials in order to excavate and maintain navigable channels in waterways.', NULL, NULL, NULL, 0, '0000-00-00'),
(984, '53-7041.00', 'Hoist and Winch Operators', 2, 73, 154, NULL, NULL, NULL, NULL, NULL, 'Operate or tend hoists or winches to lift and pull loads using power-operated cable equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(985, '53-7051.00', 'Industrial Truck and Tractor Operators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate industrial trucks or tractors equipped to move materials around a warehouse, storage yard, factory, construction site, or similar location.', NULL, NULL, NULL, 0, '0000-00-00'),
(986, '53-7061.00', 'Cleaners of Vehicles and Equipment', 2, 73, 164, NULL, NULL, NULL, NULL, NULL, 'Wash or otherwise clean vehicles, machinery, and other equipment. Use such materials as water, cleaning agents, brushes, cloths, and hoses.', NULL, NULL, NULL, 0, '0000-00-00'),
(987, '53-7062.00', 'Laborers and Freight, Stock, and Material Movers, Hand', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Manually move freight, stock, luggage, or other materials, or perform other general labor. Includes all manual laborers not elsewhere classified.', NULL, NULL, NULL, 0, '0000-00-00'),
(988, '53-7062.04', 'Recycling and Reclamation Workers', 2, 73, 195, NULL, NULL, NULL, NULL, NULL, 'Prepare and sort materials or products for recycling. Identify and remove hazardous substances. Dismantle components of products such as appliances.', NULL, NULL, NULL, 0, '0000-00-00'),
(989, '53-7063.00', 'Machine Feeders and Offbearers', 2, 73, 195, NULL, NULL, NULL, NULL, NULL, 'Feed materials into or remove materials from machines or equipment that is automatic or tended by other workers.', NULL, NULL, NULL, 0, '0000-00-00'),
(990, '53-7064.00', 'Packers and Packagers, Hand', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Pack or package by hand a wide variety of products and materials.', NULL, NULL, NULL, 0, '0000-00-00'),
(991, '53-7065.00', 'Stockers and Order Fillers', 2, 73, 148, NULL, NULL, NULL, NULL, NULL, 'Receive, store, and issue merchandise, materials, equipment, and other items from stockroom, warehouse, or storage yard to fill shelves, racks, tables, or customers\' orders. May operate power equipment to fill orders. May mark prices on merchandise and set up sales displays.', NULL, NULL, NULL, 0, '0000-00-00'),
(992, '53-7071.00', 'Gas Compressor and Gas Pumping Station Operators', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate steam-, gas-, electric motor-, or internal combustion-engine driven compressors. Transmit, compress, or recover gases, such as butane, nitrogen, hydrogen, and natural gas.', NULL, NULL, NULL, 0, '0000-00-00'),
(993, '53-7072.00', 'Pump Operators, Except Wellhead Pumpers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Tend, control, or operate power-driven, stationary, or portable pumps and manifold systems to transfer gases, oil, other liquids, slurries, or powdered materials to and from various vessels and processes.', NULL, NULL, NULL, 0, '0000-00-00'),
(994, '53-7073.00', 'Wellhead Pumpers', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Operate power pumps and auxiliary equipment to produce flow of oil or gas from wells in oil field.', NULL, NULL, NULL, 0, '0000-00-00'),
(995, '53-7081.00', 'Refuse and Recyclable Material Collectors', 2, 73, 163, NULL, NULL, NULL, NULL, NULL, 'Collect and dump refuse or recyclable materials from containers into truck. May drive truck.', NULL, NULL, NULL, 0, '0000-00-00'),
(996, '53-7121.00', 'Tank Car, Truck, and Ship Loaders', 2, 73, 213, NULL, NULL, NULL, NULL, NULL, 'Load and unload chemicals and bulk solids, such as coal, sand, and grain, into or from tank cars, trucks, or ships, using material moving equipment. May perform a variety of other tasks relating to shipment of products. May gauge or sample shipping tanks and test them for leaks.', NULL, NULL, NULL, 0, '0000-00-00'),
(997, '53-7199.00', 'Material Moving Workers, All Other', NULL, 73, 213, NULL, NULL, NULL, NULL, NULL, 'All material moving workers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(998, '55-1011.00', 'Air Crew Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Perform and direct in-flight duties to ensure the successful completion of combat, reconnaissance, transport, and search and rescue missions. Duties include operating aircraft communications and radar equipment, such as establishing satellite linkages and jamming enemy communications capabilities; operating aircraft weapons and defensive systems; conducting preflight, in-flight, and postflight inspections of onboard equipment; and directing cargo and personnel drops.', NULL, NULL, NULL, 0, '0000-00-00'),
(999, '55-1012.00', 'Aircraft Launch and Recovery Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Plan and direct the operation and maintenance of catapults, arresting gear, and associated mechanical, hydraulic, and control systems involved primarily in aircraft carrier takeoff and landing operations. Duties include supervision of readiness and safety of arresting gear, launching equipment, barricades, and visual landing aid systems; planning and coordinating the design, development, and testing of launch and recovery systems; preparing specifications for catapult and arresting gear installations; evaluating design proposals; determining handling equipment needed for new aircraft; preparing technical data and instructions for operation of landing aids; and training personnel in carrier takeoff and landing procedures.', NULL, NULL, NULL, 0, '0000-00-00');
INSERT INTO `career` (`jobID`, `jobcode`, `jobname`, `zone`, `field`, `cluster`, `industry`, `stem`, `many_jobs`, `rapid_growth`, `similarjobs`, `jobinfo`, `pic_url`, `doc_url`, `vid_url`, `euser`, `edate`) VALUES
(1000, '55-1013.00', 'Armored Assault Vehicle Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Direct the operation of tanks, light armor, and amphibious assault vehicle units during combat situations on land or in aquatic environments. Duties include directing crew members in the operation of targeting and firing systems; coordinating the operation of advanced onboard communications and navigation equipment; directing the transport of personnel and equipment during combat; formulating and implementing battle plans, including the tactical employment of armored vehicle units; and coordinating with infantry, artillery, and air support units.', NULL, NULL, NULL, 0, '0000-00-00'),
(1001, '55-1014.00', 'Artillery and Missile Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Manage personnel and weapons operations to destroy enemy positions, aircraft, and vessels. Duties include planning, targeting, and coordinating the tactical deployment of field artillery and air defense artillery missile systems units; directing the establishment and operation of fire control communications systems; targeting and launching intercontinental ballistic missiles; directing the storage and handling of nuclear munitions and components; overseeing security of weapons storage and launch facilities; and managing maintenance of weapons systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(1002, '55-1015.00', 'Command and Control Center Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Manage the operation of communications, detection, and weapons systems essential for controlling air, ground, and naval operations. Duties include managing critical communication links between air, naval, and ground forces; formulating and implementing emergency plans for natural and wartime disasters; coordinating emergency response teams and agencies; evaluating command center information and need for high-level military and government reporting; managing the operation of surveillance and detection systems; providing technical information and advice on capabilities and operational readiness; and directing operation of weapons targeting, firing, and launch computer systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(1003, '55-1016.00', 'Infantry Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Direct, train, and lead infantry units in ground combat operations. Duties include directing deployment of infantry weapons, vehicles, and equipment; directing location, construction, and camouflage of infantry positions and equipment; managing field communications operations; coordinating with armor, artillery, and air support units; performing strategic and tactical planning, including battle plan development; and leading basic reconnaissance operations.', NULL, NULL, NULL, 0, '0000-00-00'),
(1004, '55-1017.00', 'Special Forces Officers', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Lead elite teams that implement unconventional operations by air, land, or sea during combat or peacetime. These activities include offensive raids, demolitions, reconnaissance, search and rescue, and counterterrorism. In addition to their combat training, special forces officers often have specialized training in swimming, diving, parachuting, survival, emergency medicine, and foreign languages. Duties include directing advanced reconnaissance operations and evaluating intelligence information; recruiting, training, and equipping friendly forces; leading raids and invasions on enemy territories; training personnel to implement individual missions and contingency plans; performing strategic and tactical planning for politically sensitive missions; and operating sophisticated communications equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(1005, '55-1019.00', 'Military Officer Special and Tactical Operations Leaders, All Other', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'All military officer special and tactical operations leaders not listed separately.', NULL, NULL, NULL, 0, '0000-00-00'),
(1006, '55-2011.00', 'First-Line Supervisors of Air Crew Members', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate the activities of air crew members. Supervisors may also perform the same activities as the workers they supervise.', NULL, NULL, NULL, 0, '0000-00-00'),
(1007, '55-2012.00', 'First-Line Supervisors of Weapons Specialists/Crew Members', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate the activities of weapons specialists/crew members. Supervisors may also perform the same activities as the workers they supervise.', NULL, NULL, NULL, 0, '0000-00-00'),
(1008, '55-2013.00', 'First-Line Supervisors of All Other Tactical Operations Specialists', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Supervise and coordinate the activities of all other tactical operations specialists not classified separately above. Supervisors may also perform the same activities as the workers they supervise.', NULL, NULL, NULL, 0, '0000-00-00'),
(1009, '55-3011.00', 'Air Crew Members', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Perform in-flight duties to ensure the successful completion of combat, reconnaissance, transport, and search and rescue missions. Duties include operating aircraft communications and detection equipment, including establishing satellite linkages and jamming enemy communications capabilities; conducting preflight, in-flight, and postflight inspections of onboard equipment; operating and maintaining aircraft weapons and defensive systems; operating and maintaining aircraft in-flight refueling systems; executing aircraft safety and emergency procedures; computing and verifying passenger, cargo, fuel, and emergency and special equipment weight and balance data; and conducting cargo and personnel drops.', NULL, NULL, NULL, 0, '0000-00-00'),
(1010, '55-3012.00', 'Aircraft Launch and Recovery Specialists', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Operate and maintain catapults, arresting gear, and associated mechanical, hydraulic, and control systems involved primarily in aircraft carrier takeoff and landing operations. Duties include installing and maintaining visual landing aids; testing and maintaining launch and recovery equipment using electric and mechanical test equipment and hand tools; activating airfield arresting systems, such as crash barriers and cables, during emergency landing situations; directing aircraft launch and recovery operations using hand or light signals; and maintaining logs of airplane launches, recoveries, and equipment maintenance.', NULL, NULL, NULL, 0, '0000-00-00'),
(1011, '55-3013.00', 'Armored Assault Vehicle Crew Members', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Operate tanks, light armor, and amphibious assault vehicles during combat situations on land or in aquatic environments. Duties include driving armored vehicles that require specialized training; operating and maintaining targeting and firing systems; operating and maintaining advanced onboard communications and navigation equipment; transporting personnel and equipment in a combat environment; and operating and maintaining auxiliary weapons, including machine guns and grenade launchers.', NULL, NULL, NULL, 0, '0000-00-00'),
(1012, '55-3014.00', 'Artillery and Missile Crew Members', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Target, fire, and maintain weapons used to destroy enemy positions, aircraft, and vessels. Field artillery crew members predominantly use guns, cannons, and howitzers in ground combat operations, while air defense artillery crew members predominantly use missiles and rockets. Naval artillery crew members predominantly use torpedoes and missiles launched from a ship or submarine. Duties include testing, inspecting, and storing ammunition, missiles, and torpedoes; conducting preventive and routine maintenance on weapons and related equipment; establishing and maintaining radio and wire communications; and operating weapons targeting, firing, and launch computer systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(1013, '55-3015.00', 'Command and Control Center Specialists', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Operate and monitor communications, detection, and weapons systems essential for controlling air, ground, and naval operations. Duties include maintaining and relaying critical communications between air, naval, and ground forces; implementing emergency plans for natural and wartime disasters; relaying command center information to high-level military and government decisionmakers; monitoring surveillance and detection systems, such as air defense; interpreting and evaluating tactical situations and making recommendations to superiors; and operating weapons targeting, firing, and launch computer systems.', NULL, NULL, NULL, 0, '0000-00-00'),
(1014, '55-3016.00', 'Infantry', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Operate weapons and equipment in ground combat operations. Duties include operating and maintaining weapons, such as rifles, machine guns, mortars, and hand grenades; locating, constructing, and camouflaging infantry positions and equipment; evaluating terrain and recording topographical information; operating and maintaining field communications equipment; assessing need for and directing supporting fire; placing explosives and performing minesweeping activities on land; and participating in basic reconnaissance operations.', NULL, NULL, NULL, 0, '0000-00-00'),
(1015, '55-3018.00', 'Special Forces', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'Implement unconventional operations by air, land, or sea during combat or peacetime as members of elite teams. These activities include offensive raids, demolitions, reconnaissance, search and rescue, and counterterrorism. In addition to their combat training, special forces members often have specialized training in swimming, diving, parachuting, survival, emergency medicine, and foreign languages. Duties include conducting advanced reconnaissance operations and collecting intelligence information; recruiting, training, and equipping friendly forces; conducting raids and invasions on enemy territories; laying and detonating explosives for demolition targets; locating, identifying, defusing, and disposing of ordnance; and operating and maintaining sophisticated communications equipment.', NULL, NULL, NULL, 0, '0000-00-00'),
(1016, '55-3019.00', 'Military Enlisted Tactical Operations and Air/Weapons Specialists and Crew Members, All Other', NULL, 67, 185, NULL, NULL, NULL, NULL, NULL, 'All military enlisted tactical operations and air/weapons specialists and crewmembers not listed separately.', NULL, NULL, NULL, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `career_data`
--

CREATE TABLE `career_data` (
  `jobdataID` int(11) NOT NULL,
  `jobgroupID` smallint(6) NOT NULL,
  `jobcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `importance` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `career_data`
--

INSERT INTO `career_data` (`jobdataID`, `jobgroupID`, `jobcode`, `importance`) VALUES
(2, 90, '17-2141.02', 0),
(3, 90, '17-2199.01', 0),
(4, 90, '51-8099.01', 0),
(5, 90, '11-3051.03', 0),
(6, 90, '11-9041.01', 0),
(7, 90, '51-8099.03', 0),
(8, 90, '11-3051.04', 0),
(9, 90, '11-9199.11', 0),
(10, 90, '11-1011.03', 0),
(11, 90, '19-2041.01', 0),
(12, 90, '11-9199.02', 0),
(13, 90, '17-3029.02', 0),
(14, 90, '17-3029.03', 0),
(15, 90, '17-3029.04', 0),
(16, 90, '13-1199.01', 0),
(17, 90, '41-3099.01', 0),
(18, 90, '17-2199.03', 0),
(19, 90, '19-3011.01', 0),
(20, 90, '19-2041.02', 0),
(21, 90, '13-2099.01', 0),
(22, 90, '43-5011.01', 0),
(23, 90, '17-2141.01', 0),
(24, 90, '17-3029.10', 0),
(25, 90, '15-1199.05', 0),
(26, 90, '15-1199.04', 0),
(27, 90, '11-3051.02', 0),
(28, 90, '49-9099.01', 0),
(29, 90, '11-2011.01', 0),
(30, 90, '51-8099.04', 0),
(31, 90, '11-3051.06', 0),
(32, 90, '19-2041.03', 0),
(33, 90, '17-3029.05', 0),
(34, 90, '13-2099.03', 0),
(35, 90, '13-1081.02', 0),
(36, 90, '13-1081.01', 0),
(37, 90, '11-3071.03', 0),
(38, 90, '17-3029.06', 0),
(39, 90, '17-2199.04', 0),
(40, 90, '17-3029.09', 0),
(41, 90, '17-3029.07', 0),
(42, 90, '17-2199.05', 0),
(43, 90, '11-3051.05', 0),
(44, 90, '51-8099.02', 0),
(45, 90, '17-2199.06', 0),
(46, 90, '17-2199.09', 0),
(47, 90, '17-3029.12', 0),
(48, 90, '17-3029.11', 0),
(49, 90, '17-2199.07', 0),
(50, 90, '17-3029.08', 0),
(51, 90, '19-4099.02', 0),
(52, 90, '51-9199.01', 0),
(53, 90, '53-1021.01', 0),
(54, 90, '11-9199.01', 0),
(55, 90, '13-1041.07', 0),
(56, 90, '19-2099.01', 0),
(57, 90, '19-4099.03', 0),
(58, 90, '13-2099.02', 0),
(59, 90, '17-2199.08', 0),
(60, 90, '17-3024.01', 0),
(61, 90, '41-3031.03', 0),
(62, 90, '47-1011.03', 0),
(63, 90, '17-2199.11', 0),
(64, 90, '47-2231.00', 0),
(65, 90, '41-4011.07', 0),
(66, 90, '47-4099.02', 0),
(67, 90, '11-9199.04', 0),
(68, 90, '13-1199.05', 0),
(69, 90, '17-2051.01', 0),
(70, 90, '19-3099.01', 0),
(71, 90, '17-2199.02', 0),
(72, 90, '11-9121.02', 0),
(73, 90, '17-2081.01', 0),
(74, 90, '47-4099.03', 0),
(75, 90, '17-2199.10', 0),
(76, 90, '11-9199.09', 0),
(77, 90, '11-9199.10', 0),
(78, 90, '49-9081.00', 0),
(79, 91, '13-2011.00', 0),
(80, 91, '29-1141.01', 0),
(81, 91, '29-1141.02', 0),
(82, 91, '35-3023.01', 0),
(83, 91, '35-3011.00', 0),
(84, 91, '43-3031.00', 0),
(85, 91, '41-2011.00', 0),
(86, 91, '39-9011.00', 0),
(87, 91, '29-1141.04', 0),
(88, 91, '47-2061.00', 0),
(89, 91, '35-2014.00', 0),
(90, 91, '29-1141.03', 0),
(91, 91, '43-4051.00', 0),
(92, 91, '25-2021.00', 0),
(93, 91, '35-3023.00', 0),
(94, 91, '35-1012.00', 0),
(95, 91, '43-1011.00', 0),
(96, 91, '41-1011.00', 0),
(97, 91, '45-3031.00', 0),
(98, 91, '35-2021.00', 0),
(99, 91, '11-1021.00', 0),
(100, 91, '53-3032.00', 0),
(101, 91, '31-1121.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `career_tool`
--

CREATE TABLE `career_tool` (
  `toolsID` int(11) NOT NULL,
  `jobcode` varchar(10) NOT NULL,
  `tools` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employerID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `districtID` int(11) DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `advisor` int(11) DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer_hrm`
--

CREATE TABLE `employer_hrm` (
  `emphrmID` int(11) NOT NULL,
  `empostID` int(11) DEFAULT NULL,
  `employerID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `contactID` tinyint(4) DEFAULT NULL,
  `purposeID` smallint(6) DEFAULT NULL,
  `templateID` int(11) DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matter` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_follow` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusID` tinyint(6) DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrstatusID` tinyint(4) DEFAULT NULL,
  `euser` int(11) DEFAULT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer_vacancy`
--

CREATE TABLE `employer_vacancy` (
  `empvacID` int(11) NOT NULL,
  `employerID` int(11) NOT NULL,
  `jobfieldID` tinyint(4) NOT NULL,
  `postID` int(11) NOT NULL,
  `remuneration` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `gender` enum('A','M','F') CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `job_heading` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_desc` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_file` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_last` date DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_attendance`
--

CREATE TABLE `hrm_attendance` (
  `presentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `time_in` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_exit` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_leave`
--

CREATE TABLE `hrm_leave` (
  `leaveID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `leave_date` date NOT NULL,
  `leave_status` enum('F','H','P') CHARACTER SET latin1 NOT NULL COMMENT 'F-full, H-half, P-partial',
  `approved` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_reference`
--

CREATE TABLE `hrm_reference` (
  `referenceID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET latin1 NOT NULL,
  `verify_email` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `verify_mobile` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_hire`
--

CREATE TABLE `hr_hire` (
  `hiringID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `hrID` int(11) NOT NULL,
  `process` enum('skills','interview','docs','loi','preinduction','postinduction') CHARACTER SET latin1 DEFAULT NULL,
  `upload` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `varified` enum('Y','N') CHARACTER SET latin1 DEFAULT 'N',
  `edate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_hiring`
--

CREATE TABLE `hr_hiring` (
  `detailsID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `skill` datetime DEFAULT NULL,
  `interview` datetime DEFAULT NULL,
  `docs` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docs_date` datetime DEFAULT NULL,
  `loi_date` datetime DEFAULT NULL,
  `preinduction` datetime DEFAULT NULL,
  `postinduction` datetime DEFAULT NULL,
  `rmv_indcution` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_interview`
--

CREATE TABLE `hr_interview` (
  `interviewID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `hrquestID` smallint(6) DEFAULT NULL,
  `score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_question`
--

CREATE TABLE `hr_question` (
  `hrquestID` mediumint(9) NOT NULL,
  `postID` tinyint(4) NOT NULL,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` mediumint(9) DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_result`
--

CREATE TABLE `hr_result` (
  `resultID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected` enum('Y','N','P') CHARACTER SET latin1 DEFAULT 'P',
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `instID` int(11) NOT NULL,
  `institute` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `districtID` smallint(6) NOT NULL,
  `pincode` varchar(6) CHARACTER SET latin1 NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `established` year(4) DEFAULT NULL,
  `instypeID` tinyint(4) NOT NULL,
  `manageID` tinyint(4) DEFAULT NULL,
  `board_univID` smallint(6) DEFAULT NULL,
  `women_only` enum('Y','N') CHARACTER SET latin1 DEFAULT 'N',
  `naac` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `cegs` enum('Y','N') CHARACTER SET latin1 DEFAULT 'N',
  `website` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `advisor` int(11) DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institute_course`
--

CREATE TABLE `institute_course` (
  `icourseID` int(11) NOT NULL,
  `instID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `studytypeID` tinyint(4) NOT NULL,
  `recogniseID` tinyint(4) DEFAULT NULL,
  `women_only` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `duration` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eligibility` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_month` tinyint(4) DEFAULT NULL,
  `course_details` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_instID` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institute_subject`
--

CREATE TABLE `institute_subject` (
  `studyID` int(11) NOT NULL,
  `instID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `marks` tinyint(4) DEFAULT NULL,
  `syllabus` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_instID` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institute_survey`
--

CREATE TABLE `institute_survey` (
  `isurveyID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `instID` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `survey1` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `survey2` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `survey3` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `survey4` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `survey5` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `review` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_authentic`
--

CREATE TABLE `mast_authentic` (
  `authID` int(11) NOT NULL,
  `provider` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user` varchar(200) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_authorise`
--

CREATE TABLE `mast_authorise` (
  `authcode` tinyint(2) NOT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `badge_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_board_univ`
--

CREATE TABLE `mast_board_univ` (
  `board_univID` smallint(6) NOT NULL,
  `board_university` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_contact`
--

CREATE TABLE `mast_contact` (
  `contactID` tinyint(4) NOT NULL,
  `contactmode` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_country`
--

CREATE TABLE `mast_country` (
  `countryID` tinyint(4) NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_course`
--

CREATE TABLE `mast_course` (
  `courseID` int(9) NOT NULL,
  `course` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `coursetypeID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_coursetype`
--

CREATE TABLE `mast_coursetype` (
  `coursetypeID` tinyint(4) NOT NULL,
  `coursetype` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_crmstatus`
--

CREATE TABLE `mast_crmstatus` (
  `statusID` tinyint(4) NOT NULL,
  `crmstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_department`
--

CREATE TABLE `mast_department` (
  `departmentID` tinyint(4) NOT NULL,
  `department` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_district`
--

CREATE TABLE `mast_district` (
  `districtID` smallint(6) NOT NULL,
  `district` varchar(100) CHARACTER SET latin1 NOT NULL,
  `stateID` tinyint(4) NOT NULL,
  `state` varchar(100) CHARACTER SET latin1 NOT NULL,
  `countryID` tinyint(4) DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 NOT NULL,
  `advisor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_hrmstatus`
--

CREATE TABLE `mast_hrmstatus` (
  `statusID` tinyint(4) NOT NULL,
  `hrmstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_instype`
--

CREATE TABLE `mast_instype` (
  `instypeID` tinyint(4) NOT NULL,
  `instype` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_jobability`
--

CREATE TABLE `mast_jobability` (
  `abilityID` tinyint(4) NOT NULL,
  `ability` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maxtime` tinyint(2) NOT NULL COMMENT 'minutes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_jobgroup`
--

CREATE TABLE `mast_jobgroup` (
  `groupID` tinyint(4) NOT NULL,
  `jobgroup` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mast_jobgroup`
--

INSERT INTO `mast_jobgroup` (`groupID`, `jobgroup`, `data`, `info`) VALUES
(1, 'Ability', 'Y', 'Ability is enduring attributes of the individual that influence performance. Example'),
(2, 'Activity', 'Y', 'General types of job behaviors occurring on multiple jobs.\n\nInformation Input â€” Where and how are the information and data gained that are needed to perform this job?\n\nInteracting with Others â€” What interactions with other persons or supervisory activities occur while performing this job?\n\nMental Processes â€” What processing planning problem-solving decision-making and innovating activities are performed with job-relevant information?\n\nWork Output â€” What physical activities are performed what equipment and vehicles are operated/controlled and what complex/technical activities are accomplished as job outputs?'),
(3, 'Aptitude', 'Y', 'Preferences for work environments and outcomes.\n'),
(4, 'Attitude', 'Y', 'Global aspects of work that are important to a person\'s satisfaction.'),
(5, 'Cluster', 'N', 'Career Clusters contain occupations in the same field of work that require similar skills. Students parents and educators can use Career Clusters to help focus education plans towards obtaining the necessary knowledge competencies and training for success in a particular career pathway.'),
(6, 'STEM', 'Y', 'Find occupations that require education in Science, Technology, Engineering and Mathematics (STEM) disciplines.'),
(7, 'Zone', 'N', 'Job Zones group occupations into one of five categories based on levels of education, experience, and training necessary to perform the occupation.\n\nJob Zone One: Little or No Preparation Needed\nJob Zone Two: Some Preparation Needed\nJob Zone Three: Medium Preparation Needed\nJob Zone Four: Considerable Preparation Needed\nJob Zone Five: Extensive Preparation Needed'),
(8, 'Field', 'N', 'Job Fields are groups of occupations based upon work performed, skills, education, training, and credentials.'),
(9, 'Industry', 'Y', 'Industries are broad groups of businesses or organizations with similar activities, products, or services. Occupations are considered part of an industry based on their employment.'),
(10, 'Growth', 'Y', ' '),
(11, 'Opportunity', 'Y', 'Occupations will have large numbers of job openings and are related to green economy.'),
(12, 'Skill', 'Y', 'Developed capacities that facilitate learning or the more rapid acquisition of knowledge.'),
(13, 'Knowledge', 'Y', 'Organized sets of principles and facts applying in general domains.'),
(14, 'Context', 'Y', 'Physical and social factors that influence the nature of work.\n\nInterpersonal Relationships â€” This category describes the context of the job in terms of human interaction processes\n\nPhysical Work Conditions  â€” This category describes the work context as it relates to the interactions between the worker and the physical job environment\n\nStructural Job Characteristics  â€” This category involves the relationships or interactions between the worker and the structural characteristics of the job\n'),
(15, 'Trait', 'Y', 'Personal characteristics that can affect how well someone performs a job.');

-- --------------------------------------------------------

--
-- Table structure for table `mast_jobsubgroup`
--

CREATE TABLE `mast_jobsubgroup` (
  `jobgroupID` smallint(6) NOT NULL,
  `groupID` tinyint(4) NOT NULL,
  `subgroup` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mast_jobsubgroup`
--

INSERT INTO `mast_jobsubgroup` (`jobgroupID`, `groupID`, `subgroup`, `info`) VALUES
(1, 1, 'Category Flexibility', 'The ability to generate or use different sets of rules for combining or grouping things in different ways.'),
(2, 1, 'Deductive Reasoning', 'The ability to apply general rules to specific problems to produce answers that make sense.'),
(3, 1, 'Flexibility of Closure', 'The ability to identify or detect a known pattern (a figure object word or sound) that is hidden in other distracting material.'),
(4, 1, 'Fluency of Ideas', 'The ability to come up with a number of ideas about a topic (the number of ideas is important not their quality correctness or creativity).'),
(5, 1, 'Inductive Reasoning', 'The ability to combine pieces of information to form general rules or conclusions (includes finding a relationship among seemingly unrelated events).'),
(6, 1, 'Information Ordering', 'The ability to arrange things or actions in a certain order or pattern according to a specific rule or set of rules (e.g. patterns of numbers letters words pictures mathematical operations).'),
(7, 1, 'Mathematical Reasoning', 'The ability to choose the right mathematical methods or formulas to solve a problem.'),
(8, 1, 'Memorization', 'The ability to remember information such as words numbers pictures and procedures.'),
(9, 1, 'Number Facility', 'The ability to add subtract multiply or divide quickly and correctly.'),
(10, 1, 'Oral Comprehension', 'The ability to listen to and understand information and ideas presented through spoken words and sentences.'),
(11, 1, 'Oral Expression', 'The ability to communicate information and ideas in speaking so others will understand.'),
(12, 1, 'Originality', 'The ability to come up with unusual or clever ideas about a given topic or situation or to develop creative ways to solve a problem.'),
(13, 1, 'Perceptual Speed', 'The ability to quickly and accurately compare similarities and differences among sets of letters numbers objects pictures or patterns. The things to be compared may be presented at the same time or one after the other. This ability also includes comparing a presented object with a remembered object.'),
(14, 1, 'Problem Sensitivity', 'The ability to tell when something is wrong or is likely to go wrong. It does not involve solving the problem only recognizing there is a problem.'),
(15, 1, 'Selective Attention', 'The ability to concentrate on a task over a period of time without being distracted.'),
(16, 1, 'Spatial Orientation', 'The ability to know your location in relation to the environment or to know where other objects are in relation to you.'),
(17, 1, 'Speed of Closure', 'The ability to quickly make sense of combine and organize information into meaningful patterns.'),
(18, 1, 'Time Sharing', 'The ability to shift back and forth between two or more activities or sources of information (such as speech sounds touch or other sources).'),
(19, 1, 'Visualization', 'The ability to imagine how something will look after it is moved around or when its parts are moved or rearranged.'),
(20, 1, 'Written Comprehension', 'The ability to read and understand information and ideas presented in writing.'),
(21, 1, 'Written Expression', 'The ability to communicate information and ideas in writing so others will understand.\n'),
(22, 1, 'Dynamic Flexibility', 'The ability to quickly and repeatedly bend stretch twist or reach out with your body arms and/or legs.'),
(39, 6, 'Managerial', ''),
(40, 6, 'Postsecondary Teaching', ''),
(41, 6, 'Architecture and Engineering', ''),
(42, 6, 'Computer and Mathematical', ''),
(43, 6, 'Healthcare Practitioners and Technical', ''),
(44, 6, 'Life, Physical, and Social Science', ''),
(45, 6, 'Sales', ''),
(46, 7, 'Little or No Preparation Needed', 'Education:	Some of these occupations may require a high school certificate.\nRelated Experience:	Little or no previous work-related skill, knowledge, or experience is needed for these occupations. For example, a person can become a waiter or waitress even if he/she has never worked before.\nJob Training:	Employees in these occupations need anywhere from a few days to a few months of training. Usually, an experienced worker could show you how to do the job.\nJob Zone Examples:	These occupations involve following instructions and helping others. Examples include food preparation workers, dishwashers, sewing machine operators, landscaping and grounds keeping workers, logging equipment operators and baristas.\n'),
(47, 7, 'Some Preparation Needed', 'Education:	These occupations usually require a Senior Secondary Certificate.\nRelated Experience:	Some previous work-related skill, knowledge, or experience is usually needed. For example, a teller would benefit from experience working directly with the public.\nJob Training:	Employees in these occupations need anywhere from a few months to one year of working with experienced employees. A recognized apprenticeship program may be associated with these occupations.\nJob Zone Examples:	These occupations often involve using your knowledge and skills to help others. Examples include orderlies, counter and rental clerks, customer service representatives, security guards, upholsterers, and tellers.\n'),
(48, 7, 'Medium Preparation Needed', 'Education:	Most occupations in this zone require training in vocational schools, related on-the-job experience, or a diploma.\nRelated Experience:	Previous work-related skill, knowledge, or experience is required for these occupations. For example, an electrician must have completed three or four years of apprenticeship or several years of vocational training, and often must have passed a licensing exam, in order to perform the job.\nJob Training:	Employees in these occupations usually need one or two years of training involving both on-the-job experience and informal training with experienced workers. A recognized apprenticeship program may be associated with these occupations.\nJob Zone Examples:	These occupations usually involve using communication and organizational skills to coordinate, supervise, manage, or train others to accomplish goals. Examples include hydroelectric production managers, travel guides, electricians, agricultural technicians, barbers, court reporters, and medical'),
(49, 7, 'Considerable Preparation Needed', '\nEducation:	Most of these occupations require a bachelor\'s degree, but some do not.\nRelated Experience:	A considerable amount of work-related skill, knowledge, or experience is needed for these occupations. For example, an accountant must complete four years of college and work for several years in accounting to be considered qualified.\nJob Training:	Employees in these occupations usually need several years of work-related experience, on-the-job training, and/or vocational training.\nJob Zone Examples:	Many of these occupations involve coordinating, supervising, managing, or training others. Examples include real estate brokers, sales managers, database administrators, graphic designers, chemists, art directors, and cost estimators.\n'),
(50, 7, 'Extensive Preparation Needed', '\nEducation:	Most of these occupations require graduate school. For example, they may require a master\'s degree, and some require a Ph.D., M.D., or J.D. (law degree).\nRelated Experience:	Extensive skill, knowledge, and experience are needed for these occupations. Many require more than five years of experience. For example, surgeons must complete four years of college and an additional five to seven years of specialized medical training to be able to do their job.\nJob Training:	Employees may need some on-the-job training, but most of these occupations assume that the person will already have the required skills, knowledge, work-related experience, and/or training.\nJob Zone Examples:	These occupations often involve coordinating, training, supervising, or managing the activities of others to accomplish goals. Very advanced communication and organizational skills are required. Examples include pharmacists, lawyers, astronomers, biologists, clergy, neurologists, and veterinarians.\n'),
(51, 8, 'Architecture and Engineering', ''),
(52, 8, 'Arts, Design, Entertainment, Sports, and Media', ''),
(53, 8, 'Building and Grounds Cleaning and Maintenance', ''),
(54, 8, 'Business and Financial Operations', ''),
(55, 8, 'Community and Social Service', ''),
(56, 8, 'Computer and Mathematical', ''),
(57, 8, 'Construction and Extraction', ''),
(58, 8, 'Educational Instruction and Library', ''),
(59, 8, 'Farming, Fishing, and Forestry', ''),
(60, 8, 'Food Preparation and Serving', ''),
(61, 8, 'Healthcare Practitioners and Technical', ''),
(62, 8, 'Healthcare Support', ''),
(63, 8, 'Installation, Maintenance and Repair', ''),
(64, 8, 'Legal', ''),
(65, 8, 'Life, Physical and Social Science', ''),
(66, 8, 'Management', ''),
(67, 8, 'Military and Defence Services', ''),
(68, 8, 'Office and Administrative Support', ''),
(69, 8, 'Personal Care and Service', ''),
(70, 8, 'Production', ''),
(71, 8, 'Protective Service', ''),
(72, 8, 'Sales and Related', ''),
(73, 8, 'Transportation and Material Moving', ''),
(74, 9, 'Accommodation and Food Services', ''),
(75, 10, 'Average', ''),
(76, 10, 'Decline', ''),
(77, 10, 'Faster than average', ''),
(78, 10, 'Little or no change', ''),
(79, 10, 'Much faster than average', ''),
(80, 10, 'Slower than average', ''),
(81, 9, 'Administrative, Support, Waste Management and Remediation Services', ''),
(82, 9, 'Agriculture, Forestry, Fishing and Hunting', ''),
(83, 9, 'Arts, Entertainment and Recreation', ''),
(84, 9, 'Construction', ''),
(85, 9, 'Educational Services', ''),
(86, 9, 'Finance and Insurance', ''),
(87, 9, 'Government', ''),
(88, 9, 'Health Care and Social Assistance', ''),
(89, 10, 'Rapid Growth', ''),
(90, 11, 'Green Emerging', ''),
(91, 11, 'Numerous Openings', ''),
(93, 1, 'Dynamic Strength', 'The ability to exert muscle force repeatedly or continuously over time. This involves muscular endurance and resistance to muscle fatigue.'),
(94, 1, 'Explosive Strength', 'The ability to use short bursts of muscle force to propel oneself (as in jumping or sprinting), or to throw an object.'),
(95, 1, 'Extent Flexibility', 'The ability to bend, stretch, twist, or reach with your body, arms, and/or legs.'),
(96, 1, 'Gross Body Coordination', 'The ability to coordinate the movement of your arms, legs, and torso together when the whole body is in motion.'),
(97, 1, 'Gross Body Equilibrium', 'The ability to keep or regain your body balance or stay upright when in an unstable position.'),
(98, 1, 'Stamina', 'The ability to exert yourself physically over long periods of time without getting winded or out of breath.'),
(99, 1, 'Static Strength', 'The ability to exert maximum muscle force to lift, push, pull, or carry objects.'),
(100, 1, 'Trunk Strength', 'The ability to use your abdominal and lower back muscles to support part of the body repeatedly or continuously over time without \'giving out\' or fatiguing.'),
(101, 1, 'Arm-Hand Steadiness', 'The ability to keep your hand and arm steady while moving your arm or while holding your arm and hand in one position.\n'),
(102, 1, 'Control Precision', 'The ability to quickly and repeatedly adjust the controls of a machine or a vehicle to exact positions.'),
(103, 1, 'Finger Dexterity', 'The ability to make precisely coordinated movements of the fingers of one or both hands to grasp, manipulate, or assemble very small objects.'),
(104, 1, 'Manual Dexterity', 'The ability to quickly move your hand, your hand together with your arm, or your two hands to grasp, manipulate, or assemble objects.'),
(105, 1, 'Multilimb Coordination', 'The ability to coordinate two or more limbs (for example, two arms, two legs, or one leg and one arm) while sitting, standing, or lying down. It does not involve performing the activities while the whole body is in motion.'),
(106, 1, 'Rate Control', 'The ability to time your movements or the movement of a piece of equipment in anticipation of changes in the speed and/or direction of a moving object or scene.'),
(107, 1, 'Reaction Time', 'The ability to quickly respond (with the hand, finger, or foot) to a signal (sound, light, picture) when it appears.'),
(108, 1, 'Response Orientation', 'The ability to choose quickly between two or more movements in response to two or more different signals (lights, sounds, pictures). It includes the speed with which the correct response is started with the hand, foot, or other body part.'),
(109, 1, 'Speed of Limb Movement', 'The ability to quickly move the arms and legs.\nWrist-Finger Speed â€” The ability to make fast, simple, repeated movements of the fingers, hands, and wrists.'),
(110, 1, 'Wrist-Finger Speed', 'The ability to make fast, simple, repeated movements of the fingers, hands, and wrists.'),
(111, 1, 'Auditory Attention', 'The ability to focus on a single source of sound in the presence of other distracting sounds.'),
(112, 1, 'Depth Perception', 'The ability to judge which of several objects is closer or farther away from you, or to judge the distance between you and an object.\n'),
(113, 1, 'Far Vision', 'The ability to see details at a distance.'),
(114, 1, 'Glare Sensitivity', 'The ability to see objects in the presence of glare or bright lighting.'),
(115, 1, 'Hearing Sensitivity', 'The ability to detect or tell the differences between sounds that vary in pitch and loudness.'),
(116, 1, 'Near Vision', 'The ability to see details at close range (within a few feet of the observer).'),
(117, 1, 'Night Vision', 'The ability to see under low light conditions.'),
(118, 1, 'Peripheral Vision', 'The ability to see objects or movement of objects to one\'s side when the eyes are looking ahead.'),
(119, 1, 'Sound Localization', 'The ability to tell the direction from which a sound originated.'),
(120, 1, 'Speech Clarity', 'The ability to speak clearly so others can understand you.'),
(121, 1, 'Speech Recognition', 'The ability to identify and understand the speech of another person.'),
(122, 1, 'Visual Color Discrimination', 'The ability to match or detect differences between colors, including shades of color and brightness.\n'),
(123, 3, 'Realistic', 'Realistic occupations frequently involve work activities that include practical, hands-on problems and solutions. They often deal with plants, animals, and real-world materials like wood, tools, and machinery. Many of the occupations require working outside, and do not involve a lot of paperwork or working closely with others.'),
(124, 3, 'Investigative', 'Investigative occupations frequently involve working with ideas, and require an extensive amount of thinking. These occupations can involve searching for facts and figuring out problems mentally.'),
(125, 3, 'Artistic', 'Artistic occupations frequently involve working with forms, designs and patterns. They often require self-expression and the work can be done without following a clear set of rules.'),
(126, 3, 'Social', 'Social occupations frequently involve working with, communicating with, and teaching people. These occupations often involve helping or providing service to others.'),
(127, 3, 'Enterprising', 'Enterprising occupations frequently involve starting up and carrying out projects. These occupations can involve leading people and making many decisions. Sometimes they require risk taking and often deal with business.'),
(128, 3, 'Conventional', 'Conventional occupations frequently involve following set procedures and routines. These occupations can include working with data and details more than with ideas. Usually there is a clear line of authority to follow.'),
(129, 4, 'Achievement', 'Occupations that satisfy this work value are results oriented and allow employees to use their strongest abilities, giving them a feeling of accomplishment. Corresponding needs are Ability Utilization and Achievement.'),
(130, 4, 'Independence', 'Occupations that satisfy this work value allow employees to work on their own and make decisions. Corresponding needs are Creativity, Responsibility and Autonomy.'),
(131, 4, 'Recognition', 'Occupations that satisfy this work value offer advancement, potential for leadership, and are often considered prestigious. Corresponding needs are Advancement, Authority, Recognition and Social Status.'),
(132, 4, 'Relationships', 'Occupations that satisfy this work value allow employees to provide service to others and work with co-workers in a friendly non-competitive environment. Corresponding needs are Co-workers, Moral Values and Social Service.'),
(133, 4, 'Support', 'Occupations that satisfy this work value offer supportive management that stands behind employees. Corresponding needs are Company Policies, Supervision: Human Relations and Supervision: Technical.'),
(134, 4, 'Working Conditions', 'Occupations that satisfy this work value offer job security and good working conditions. Corresponding needs are Activity, Compensation, Independence, Security, Variety and Working Conditions.'),
(135, 9, 'Information', ''),
(136, 9, 'Management of Companies and Enterprises', ''),
(137, 9, 'Manufacturing', ''),
(138, 9, 'Mining, Quarrying, and Oil and Gas Extraction', ''),
(139, 9, 'Miscellaneous Services', ''),
(140, 9, 'Professional, Scientific, and Technical Services', ''),
(141, 9, 'Real Estate and Rental and Leasing', ''),
(142, 9, 'Retail Trade', ''),
(143, 9, 'Transportation and Warehousing', ''),
(144, 9, 'Utilities', ''),
(145, 9, 'Wholesale Trade', ''),
(146, 5, 'Accounting', ''),
(147, 5, 'Administration', ''),
(148, 5, 'Administrative Support', ''),
(149, 5, 'Agribusiness Systems', ''),
(150, 5, 'Banking Services', ''),
(151, 5, 'Biotechnology Research and Development', ''),
(152, 5, 'Business Finance', ''),
(153, 5, 'Business Information Management', ''),
(154, 5, 'Construction', ''),
(155, 5, 'Consumer Services', ''),
(156, 5, 'Correction Services', ''),
(157, 5, 'Counseling & Mental Health Services', ''),
(158, 5, 'Design/Pre-Construction', ''),
(159, 5, 'Diagnostic Services', ''),
(160, 5, 'Early Childhood Development & Services', ''),
(161, 5, 'Emergency and Fire Management Services', ''),
(162, 5, 'Engineering and Technology', ''),
(163, 5, 'Environmental Service Systems', ''),
(164, 5, 'Facility and Mobile Equipment Maintenance', ''),
(165, 5, 'Family & Community Services', ''),
(166, 5, 'Food Products and Processing Systems', ''),
(167, 5, 'General Management', ''),
(168, 5, 'Governance', ''),
(169, 5, 'Health Informatics', ''),
(170, 5, 'Human Resources Management', ''),
(171, 5, 'Information Support and Services', ''),
(172, 5, 'Insurance', ''),
(173, 5, 'Journalism and Broadcasting', ''),
(174, 5, 'Law Enforcement Services', ''),
(175, 5, 'Legal Services', ''),
(176, 5, 'Lodging', ''),
(177, 5, 'Logistics Planning and Management Services', ''),
(178, 5, 'Maintenance, Installation & Repair', ''),
(179, 5, 'Maintenance/Operations', ''),
(180, 5, 'Manufacturing Production Process Development', ''),
(181, 5, 'Marketing Communications', ''),
(182, 5, 'Marketing Management', ''),
(183, 5, 'Marketing Research', ''),
(184, 5, 'Merchandising', ''),
(185, 5, 'National Security', ''),
(186, 5, 'Natural Resources Systems', ''),
(187, 5, 'Network Systems', ''),
(188, 5, 'Operations Management', ''),
(189, 5, 'Performing Arts', ''),
(190, 5, 'Personal Care Services', ''),
(191, 5, 'Planning', ''),
(192, 5, 'Plant Systems', ''),
(193, 5, 'Power, Structural & Technical Systems', ''),
(194, 5, 'Printing Technology', ''),
(195, 5, 'Production', ''),
(196, 5, 'Professional Sales', ''),
(197, 5, 'Professional Support Services', ''),
(198, 5, 'Programming and Software Development', ''),
(199, 5, 'Public Management and Administration', ''),
(200, 5, 'Quality Assurance', ''),
(201, 5, 'Recreation, Amusements & Attractions', ''),
(202, 5, 'Regulation', ''),
(203, 5, 'Restaurants and Food/Beverage Services', ''),
(204, 5, 'Revenue and Taxation', ''),
(205, 5, 'Sales and Service', ''),
(206, 5, 'Science and Mathematics', ''),
(207, 5, 'Securities & Investments', ''),
(208, 5, 'Security & Protective Services', ''),
(209, 5, 'Support Services', ''),
(210, 5, 'Teaching/Training', ''),
(211, 5, 'Telecommunications', ''),
(212, 5, 'Therapeutic Services', ''),
(213, 5, 'Transportation Operations', ''),
(214, 5, 'Transportation Systems/Infrastructure Planning, Management and Regulation', ''),
(215, 5, 'Travel & Tourism', ''),
(216, 5, 'Visual Arts', ''),
(217, 5, 'Web and Digital Communications', ''),
(218, 5, 'Animal Systems', ''),
(219, 12, 'Active Learning', 'Understanding the implications of new information for both current and future problem-solving and decision-making.'),
(220, 12, 'Active Listening', 'Giving full attention to what other people are saying, taking time to understand the points being made, asking questions as appropriate, and not interrupting at inappropriate times.'),
(221, 12, 'Critical Thinking', 'Using logic and reasoning to identify the strengths and weaknesses of alternative solutions, conclusions or approaches to problems.'),
(222, 12, 'Learning Strategies', 'Selecting and using training/instructional methods and procedures appropriate for the situation when learning or teaching new things.'),
(223, 12, 'Mathematical', 'Using mathematics to solve problems.'),
(224, 12, 'Monitoring', 'Monitoring/Assessing performance of yourself, other individuals, or organizations to make improvements or take corrective action.'),
(225, 12, 'Reading Comprehension', 'Understanding written sentences and paragraphs in work related documents.'),
(226, 12, 'Scientific', 'Using scientific rules and methods to solve problems.'),
(227, 12, 'Speaking', 'Talking to others to convey information effectively.'),
(228, 12, 'Writing', 'Communicating effectively in writing as appropriate for the needs of the audience.'),
(229, 12, 'Coordination', 'Adjusting actions in relation to others\' actions.'),
(230, 12, 'Instructing', 'Teaching others how to do something.'),
(231, 12, 'Negotiation', 'Bringing others together and trying to reconcile differences.'),
(232, 12, 'Persuasion', 'Persuading others to change their minds or behavior.'),
(233, 12, 'Service Orientation', 'Actively looking for ways to help people.'),
(234, 12, 'Social Perceptiveness', 'Being aware of others\' reactions and understanding why they react as they do.'),
(235, 12, 'Complex Problem Solving', 'Identifying complex problems and reviewing related information to develop and evaluate options and implement solutions.'),
(236, 12, 'Equipment Maintenance', 'Performing routine maintenance on equipment and determining when and what kind of maintenance is needed.'),
(238, 12, 'Equipment Selection', 'Determining the kind of tools and equipment needed to do a job.'),
(239, 12, 'Installation', 'Installing equipment, machines, wiring, or programs to meet specifications.'),
(240, 12, 'Operation and Control', 'Controlling operations of equipment or systems.'),
(241, 12, 'Operation Monitoring', 'Watching gauges, dials, or other indicators to make sure a machine is working properly.'),
(242, 12, 'Operations Analysis', 'Analyzing needs and product requirements to create a design.'),
(243, 12, 'Programming', 'Writing computer programs for various purposes.'),
(244, 12, 'Quality Control Analysis', 'Conducting tests and inspections of products, services, or processes to evaluate quality or performance.'),
(245, 12, 'Repairing', 'Repairing machines or systems using the needed tools.'),
(246, 12, 'Technology Design', 'Generating or adapting equipment and technology to serve user needs.'),
(248, 12, 'Troubleshooting', 'Determining causes of operating errors and deciding what to do about it.\n'),
(249, 12, 'Judgment and Decision Making', 'Considering the relative costs and benefits of potential actions to choose the most appropriate one.'),
(250, 12, 'Systems Analysis', 'Determining how a system should work and how changes in conditions, operations, and the environment will affect outcomes.'),
(251, 12, 'Systems Evaluation', 'Identifying measures or indicators of system performance and the actions needed to improve or correct performance, relative to the goals of the system.'),
(252, 12, 'Management of Financial Resources', 'Determining how money will be spent to get the work done, and accounting for these expenditures.'),
(253, 12, 'Management of Material Resources', 'Obtaining and seeing to the appropriate use of equipment, facilities, and materials needed to do certain work.'),
(254, 12, 'Management of Personnel Resources', 'Motivating, developing, and directing people as they work, identifying the best people for the job.'),
(255, 12, 'Time Management', 'Managing one\'s own time and the time of others.'),
(256, 13, 'Administration and Management', 'Knowledge of business and management principles involved in strategic planning, resource allocation, human resources modeling, leadership technique, production methods, and coordination of people and resources.'),
(257, 13, 'Biology', 'Knowledge of plant and animal organisms, their tissues, cells, functions, interdependencies, and interactions with each other and the environment.'),
(258, 13, 'Building and Construction', 'Knowledge of materials, methods, and the tools involved in the construction or repair of houses, buildings, or other structures such as highways and roads.'),
(259, 13, 'Chemistry', 'Knowledge of the chemical composition, structure, and properties of substances and of the chemical processes and transformations that they undergo. This includes uses of chemicals and their interactions, danger signs, production techniques, and disposal methods.'),
(260, 13, 'Clerical', 'Knowledge of administrative and clerical procedures and systems such as word processing, managing files and records, stenography and transcription, designing forms, and other office procedures and terminology.'),
(261, 13, 'Communications and Media', 'Knowledge of media production, communication, and dissemination techniques and methods. This includes alternative ways to inform and entertain via written, oral, and visual media.'),
(262, 13, 'Computers and Electronics', 'Knowledge of circuit boards, processors, chips, electronic equipment, and computer hardware and software, including applications and programming.'),
(263, 13, 'Customer and Personal Service', 'Knowledge of principles and processes for providing customer and personal services. This includes customer needs assessment, meeting quality standards for services, and evaluation of customer satisfaction.'),
(264, 13, 'Design', 'Knowledge of design techniques, tools, and principles involved in production of precision technical plans, blueprints, drawings, and models.'),
(265, 13, 'Economics and Accounting', 'Knowledge of economic and accounting principles and practices, the financial markets, banking and the analysis and reporting of financial data.'),
(266, 13, 'Education and Training', 'Knowledge of principles and methods for curriculum and training design, teaching and instruction for individuals and groups, and the measurement of training effects.'),
(267, 13, 'Engineering and Technology', 'Knowledge of the practical application of engineering science and technology. This includes applying principles, techniques, procedures, and equipment to the design and production of various goods and services.'),
(268, 13, 'English Language', 'Knowledge of the structure and content of the English language including the meaning and spelling of words, rules of composition, and grammar.'),
(269, 13, 'Fine Arts', 'Knowledge of the theory and techniques required to compose, produce, and perform works of music, dance, visual arts, drama, and sculpture.'),
(270, 13, 'Food Production', 'Knowledge of techniques and equipment for planting, growing, and harvesting food products (both plant and animal) for consumption, including storage/handling techniques.'),
(271, 13, 'Foreign Language', 'Knowledge of the structure and content of a foreign (non-English) language including the meaning and spelling of words, rules of composition and grammar, and pronunciation.'),
(272, 13, 'Geography', 'Knowledge of principles and methods for describing the features of land, sea, and air masses, including their physical characteristics, locations, interrelationships, and distribution of plant, animal, and human life.'),
(273, 13, 'History and Archeology', 'Knowledge of historical events and their causes, indicators, and effects on civilizations and cultures.'),
(274, 13, 'Law and Government', 'Knowledge of laws, legal codes, court procedures, precedents, government regulations, executive orders, agency rules, and the democratic political process.'),
(275, 13, 'Mathematics', 'Knowledge of arithmetic, algebra, geometry, calculus, statistics, and their applications.'),
(276, 13, 'Mechanical', 'Knowledge of machines and tools, including their designs, uses, repair, and maintenance.'),
(277, 13, 'Medicine and Dentistry', 'Knowledge of the information and techniques needed to diagnose and treat human injuries, diseases, and deformities. This includes symptoms, treatment alternatives, drug properties and interactions, and preventive health-care measures.'),
(278, 13, 'Personnel and Human Resources', 'Knowledge of principles and procedures for personnel recruitment, selection, training, compensation and benefits, labor relations and negotiation, and personnel information systems.'),
(279, 13, 'Philosophy and Theology', 'Knowledge of different philosophical systems and religions. This includes their basic principles, values, ethics, ways of thinking, customs, practices, and their impact on human culture.'),
(280, 13, 'Physics', 'Knowledge and prediction of physical principles, laws, their interrelationships, and applications to understanding fluid, material, and atmospheric dynamics, and mechanical, electrical, atomic and sub- atomic structures and processes.'),
(281, 13, 'Production and Processing', 'Knowledge of raw materials, production processes, quality control, costs, and other techniques for maximizing the effective manufacture and distribution of goods.'),
(282, 13, 'Psychology', 'Knowledge of human behavior and performance; individual differences in ability, personality, and interests; learning and motivation; psychological research methods; and the assessment and treatment of behavioral and affective disorders.'),
(283, 13, 'Public Safety and Security', 'Knowledge of relevant equipment, policies, procedures, and strategies to promote effective local, state, or national security operations for the protection of people, data, property, and institutions.'),
(284, 13, 'Sales and Marketing', 'Knowledge of principles and methods for showing, promoting, and selling products or services. This includes marketing strategy and tactics, product demonstration, sales techniques, and sales control systems.'),
(285, 13, 'Sociology and Anthropology', 'Knowledge of group behavior and dynamics, societal trends and influences, human migrations, ethnicity, cultures and their history and origins.'),
(286, 13, 'Telecommunications', 'Knowledge of transmission, broadcasting, switching, control, and operation of telecommunications systems.'),
(287, 13, 'Therapy and Counseling', 'Knowledge of principles, methods, and procedures for diagnosis, treatment, and rehabilitation of physical and mental dysfunctions, and for career counseling and guidance.'),
(288, 13, 'Transportation', 'Knowledge of principles and methods for moving people or goods by air, rail, sea, or road, including the relative costs and benefits.'),
(289, 2, 'Estimating the Quantifiable Characteristics of Products, Events, or Information', 'Estimating sizes, distances, and quantities; or determining time, costs, resources, or materials needed to perform a work activity.'),
(290, 2, 'Getting Information', 'Observing, receiving, and otherwise obtaining information from all relevant sources.'),
(291, 2, 'Identifying Objects, Actions, and Events', 'Identifying information by categorizing, estimating, recognizing differences or similarities, and detecting changes in circumstances or events.'),
(292, 2, 'Inspecting Equipment, Structures, or Material', 'Inspecting equipment, structures, or materials to identify the cause of errors or other problems or defects.'),
(293, 2, 'Monitor Processes, Materials, or Surroundings', 'Monitoring and reviewing information from materials, events, or the environment, to detect or assess problems.'),
(294, 2, 'Assisting and Caring for Others', 'Providing personal assistance, medical attention, emotional support, or other personal care to others such as coworkers, customers, or patients.'),
(295, 2, 'Coaching and Developing Others', 'Identifying the developmental needs of others and coaching, mentoring, or otherwise helping others to improve their knowledge or skills.'),
(296, 2, 'Communicating with Persons Outside Organization', 'Communicating with people outside the organization, representing the organization to customers, the public, government, and other external sources. This information can be exchanged in person, in writing, or by telephone or e-mail.'),
(297, 2, 'Communicating with Supervisors, Peers, or Subordinates', 'Providing information to supervisors, co-workers, and subordinates by telephone, in written form, e-mail, or in person.'),
(298, 2, 'Coordinating the Work and Activities of Others', 'Getting members of a group to work together to accomplish tasks.'),
(299, 2, 'Developing and Building Teams', 'Encouraging and building mutual trust, respect, and cooperation among team members.'),
(300, 2, 'Establishing and Maintaining Interpersonal Relationships', 'Developing constructive and cooperative working relationships with others, and maintaining them over time.'),
(301, 2, 'Guiding, Directing, and Motivating Subordinates', 'Providing guidance and direction to subordinates, including setting performance standards and monitoring performance.'),
(302, 2, 'Interpreting the Meaning of Information for Others', 'Translating or explaining what information means and how it can be used.'),
(303, 2, 'Monitoring and Controlling Resources', 'Monitoring and controlling resources and overseeing the spending of money.'),
(304, 2, 'Performing Administrative Activities', 'Performing day-to-day administrative tasks such as maintaining information files and processing paperwork.'),
(305, 2, 'Performing for or Working Directly with the Public', 'Performing for people or dealing directly with the public. This includes serving customers in restaurants and stores, and receiving clients or guests.'),
(306, 2, 'Provide Consultation and Advice to Others', 'Providing guidance and expert advice to management or other groups on technical, systems-, or process-related topics.'),
(307, 2, 'Resolving Conflicts and Negotiating with Others', 'Handling complaints, settling disputes, and resolving grievances and conflicts, or otherwise negotiating with others.'),
(308, 2, 'Selling or Influencing Others', 'Convincing others to buy merchandise/goods or to otherwise change their minds or actions.'),
(309, 2, 'Staffing Organizational Units', 'Recruiting, interviewing, selecting, hiring, and promoting employees in an organization.'),
(310, 2, 'Training and Teaching Others', 'Identifying the educational needs of others, developing formal educational or training programs or classes, and teaching or instructing others.'),
(311, 2, 'Analyzing Data or Information', 'Identifying the underlying principles, reasons, or facts of information by breaking down information or data into separate parts.'),
(312, 2, 'Developing Objectives and Strategies', 'Establishing long-range objectives and specifying the strategies and actions to achieve them.'),
(313, 2, 'Evaluating Information to Determine Compliance with Standards', 'Using relevant information and individual judgment to determine whether events or processes comply with laws, regulations, or standards.'),
(314, 2, 'Judging the Qualities of Things, Services, or People', 'Assessing the value, importance, or quality of things or people.'),
(315, 2, 'Making Decisions and Solving Problems', 'Analyzing information and evaluating results to choose the best solution and solve problems.'),
(316, 2, 'Organizing, Planning, and Prioritizing Work', 'Developing specific goals and plans to prioritize, organize, and accomplish your work.'),
(317, 2, 'Processing Information', 'Compiling, coding, categorizing, calculating, tabulating, auditing, or verifying information or data.'),
(318, 2, 'Scheduling Work and Activities', 'Scheduling events, programs, and activities, as well as the work of others.'),
(319, 2, 'Thinking Creatively', 'Developing, designing, or creating new applications, ideas, relationships, systems, or products, including artistic contributions.'),
(320, 2, 'Updating and Using Relevant Knowledge', 'Keeping up-to-date technically and applying new knowledge to your job.'),
(321, 2, 'Controlling Machines and Processes', 'Using either control mechanisms or direct physical activity to operate machines or processes (not including computers or vehicles).'),
(322, 2, 'Documenting/Recording Information', 'Entering, transcribing, recording, storing, or maintaining information in written or electronic/magnetic form.'),
(323, 2, 'Drafting, Laying Out, and Specifying Technical Devices, Parts, and Equipment', 'Providing documentation, detailed instructions, drawings, or specifications to tell others about how devices, parts, equipment, or structures are to be fabricated, constructed, assembled, modified, maintained, or used.'),
(324, 2, 'Handling and Moving Objects', 'Using hands and arms in handling, installing, positioning, and moving materials, and manipulating things.'),
(325, 2, 'Interacting with Computers', 'Using computers and computer systems (including hardware and software) to program, write software, set up functions, enter data, or process information.'),
(326, 2, 'Operating Vehicles, Mechanized Devices, or Equipment', 'Running, maneuvering, navigating, or driving vehicles or mechanized equipment, such as forklifts, passenger vehicles, aircraft, or water craft.'),
(327, 2, 'Performing General Physical Activities', 'Performing physical activities that require considerable use of your arms and legs and moving your whole body, such as climbing, lifting, balancing, walking, stooping, and handling of materials.'),
(328, 2, 'Repairing and Maintaining Electronic Equipment', 'Servicing, repairing, calibrating, regulating, fine-tuning, or testing machines, devices, and equipment that operate primarily on the basis of electrical or electronic (not mechanical) principles.'),
(329, 2, 'Assisting and Caring for Others', 'Providing personal assistance, medical attention, emotional support, or other personal care to others such as coworkers, customers, or patients.'),
(330, 2, 'Coaching and Developing Others', 'Identifying the developmental needs of others and coaching, mentoring, or otherwise helping others to improve their knowledge or skills.'),
(331, 2, 'Communicating with Persons Outside Organization', 'Communicating with people outside the organization, representing the organization to customers, the public, government, and other external sources. This information can be exchanged in person, in writing, or by telephone or e-mail.'),
(332, 2, 'Communicating with Supervisors, Peers, or Subordinates', 'Providing information to supervisors, co-workers, and subordinates by telephone, in written form, e-mail, or in person.'),
(333, 2, 'Coordinating the Work and Activities of Others', 'Getting members of a group to work together to accomplish tasks.'),
(334, 2, 'Developing and Building Teams', 'Encouraging and building mutual trust, respect, and cooperation among team members.'),
(335, 2, 'Establishing and Maintaining Interpersonal Relationships', 'Developing constructive and cooperative working relationships with others, and maintaining them over time.'),
(336, 2, 'Guiding, Directing, and Motivating Subordinates', 'Providing guidance and direction to subordinates, including setting performance standards and monitoring performance.'),
(337, 2, 'Interpreting the Meaning of Information for Others', 'Translating or explaining what information means and how it can be used.'),
(338, 2, 'Monitoring and Controlling Resources', 'Monitoring and controlling resources and overseeing the spending of money.'),
(339, 2, 'Performing Administrative Activities', 'Performing day-to-day administrative tasks such as maintaining information files and processing paperwork.'),
(340, 2, 'Performing for or Working Directly with the Public', 'Performing for people or dealing directly with the public. This includes serving customers in restaurants and stores, and receiving clients or guests.'),
(341, 2, 'Provide Consultation and Advice to Others', 'Providing guidance and expert advice to management or other groups on technical, systems-, or process-related topics.'),
(342, 2, 'Resolving Conflicts and Negotiating with Others', 'Handling complaints, settling disputes, and resolving grievances and conflicts, or otherwise negotiating with others.'),
(343, 2, 'Selling or Influencing Others', 'Convincing others to buy merchandise/goods or to otherwise change their minds or actions.'),
(344, 2, 'Staffing Organizational Units', 'Recruiting, interviewing, selecting, hiring, and promoting employees in an organization.'),
(345, 2, 'Training and Teaching Others', 'Identifying the educational needs of others, developing formal educational or training programs or classes, and teaching or instructing others.'),
(346, 2, 'Analyzing Data or Information', 'Identifying the underlying principles, reasons, or facts of information by breaking down information or data into separate parts.'),
(347, 2, 'Developing Objectives and Strategies', 'Establishing long-range objectives and specifying the strategies and actions to achieve them.'),
(348, 2, 'Evaluating Information to Determine Compliance with Standards', 'Using relevant information and individual judgment to determine whether events or processes comply with laws, regulations, or standards.'),
(349, 2, 'Judging the Qualities of Things, Services, or People', 'Assessing the value, importance, or quality of things or people.'),
(350, 2, 'Making Decisions and Solving Problems', 'Analyzing information and evaluating results to choose the best solution and solve problems.'),
(351, 2, 'Organizing, Planning, and Prioritizing Work', 'Developing specific goals and plans to prioritize, organize, and accomplish your work.'),
(352, 2, 'Processing Information', 'Compiling, coding, categorizing, calculating, tabulating, auditing, or verifying information or data.'),
(353, 2, 'Scheduling Work and Activities', 'Scheduling events, programs, and activities, as well as the work of others.'),
(354, 2, 'Thinking Creatively', 'Developing, designing, or creating new applications, ideas, relationships, systems, or products, including artistic contributions.'),
(355, 2, 'Updating and Using Relevant Knowledge', 'Keeping up-to-date technically and applying new knowledge to your job.'),
(356, 2, 'Controlling Machines and Processes', 'Using either control mechanisms or direct physical activity to operate machines or processes (not including computers or vehicles).'),
(357, 2, 'Documenting/Recording Information', 'Entering, transcribing, recording, storing, or maintaining information in written or electronic/magnetic form.'),
(358, 2, 'Drafting, Laying Out, and Specifying Technical Devices, Parts, and Equipment', 'Providing documentation, detailed instructions, drawings, or specifications to tell others about how devices, parts, equipment, or structures are to be fabricated, constructed, assembled, modified, maintained, or used.'),
(359, 2, 'Handling and Moving Objects', 'Using hands and arms in handling, installing, positioning, and moving materials, and manipulating things.'),
(360, 2, 'Interacting With Computers', 'Using computers and computer systems (including hardware and software) to program, write software, set up functions, enter data, or process information.'),
(361, 2, 'Operating Vehicles, Mechanized Devices, or Equipment', 'Running, maneuvering, navigating, or driving vehicles or mechanized equipment, such as forklifts, passenger vehicles, aircraft, or water craft.'),
(362, 2, 'Performing General Physical Activities', 'Performing physical activities that require considerable use of your arms and legs and moving your whole body, such as climbing, lifting, balancing, walking, stooping, and handling of materials.'),
(363, 2, 'Repairing and Maintaining Electronic Equipment', 'Servicing, repairing, calibrating, regulating, fine-tuning, or testing machines, devices, and equipment that operate primarily on the basis of electrical or electronic (not mechanical) principles.'),
(364, 2, 'Repairing and Maintaining Mechanical Equipment', 'Servicing, repairing, adjusting, and testing machines, devices, moving parts, and equipment that operate primarily on the basis of mechanical (not electronic) principles.'),
(365, 14, 'Contact With Others', 'How much does this job require the worker to be in contact with others (face-to-face, by telephone, or otherwise) in order to perform it?'),
(366, 14, 'Coordinate or Lead Others', 'How important is it to coordinate or lead others in accomplishing work activities in this job?'),
(367, 14, 'Deal With External Customers', 'How important is it to work with external customers or the public in this job?'),
(368, 14, 'Deal With Physically Aggressive People', 'How frequently does this job require the worker to deal with physical aggression of violent individuals?'),
(369, 14, 'Deal With Unpleasant or Angry People', 'How frequently does the worker have to deal with unpleasant, angry, or discourteous individuals as part of the job requirements?'),
(370, 14, 'Electronic Mail', 'How often do you use electronic mail in this job?'),
(371, 14, 'Face-to-Face Discussions', 'How often do you have to have face-to-face discussions with individuals or teams in this job?'),
(372, 14, 'Frequency of Conflict Situations', 'How often are there conflict situations the employee has to face in this job?'),
(373, 14, 'Letters and Memos', 'How often does the job require written letters and memos?'),
(374, 14, 'Public Speaking', 'How often do you have to perform public speaking in this job?'),
(375, 14, 'Responsibility for Outcomes and Results', 'How responsible is the worker for work outcomes and results of other workers?'),
(376, 14, 'Responsible for Others\' Health and Safety', 'How much responsibility is there for the health and safety of others in this job?'),
(377, 14, 'Telephone', 'How often do you have telephone conversations in this job?'),
(378, 14, 'Work With Work Group or Team', 'How important is it to work with others in a group or team in this job?\n\n\n'),
(379, 14, 'Cramped Work Space, Awkward Positions', 'How often does this job require working in cramped work spaces that requires getting into awkward positions?'),
(380, 14, 'Exposed to Contaminants', 'How often does this job require working exposed to contaminants (such as pollutants, gases, dust or odors)?'),
(381, 14, 'Exposed to Disease or Infections', ' How often does this job require exposure to disease/infections?'),
(382, 14, 'Exposed to Hazardous Conditions', ' How often does this job require exposure to hazardous conditions?'),
(383, 14, 'Exposed to Hazardous Equipment', 'How often does this job require exposure to hazardous equipment?'),
(384, 14, 'Exposed to High Places', 'How often does this job require exposure to high places?'),
(385, 14, 'Exposed to Minor Burns, Cuts, Bites, or Stings', 'How often does this job require exposure to minor burns, cuts, bites, or stings?'),
(386, 14, 'Exposed to Radiation', 'How often does this job require exposure to radiation?'),
(387, 14, 'Exposed to Whole Body Vibration', 'How often does this job require exposure to whole body vibration (e.g., operate a jackhammer)?'),
(388, 14, 'Extremely Bright or Inadequate Lighting', 'How often does this job require working in extremely bright or inadequate lighting conditions?'),
(389, 14, 'In an Enclosed Vehicle or Equipment', 'How often does this job require working in a closed vehicle or equipment (e.g., car)?'),
(390, 14, 'In an Open Vehicle or Equipment', 'How often does this job require working in an open vehicle or equipment (e.g., tractor)?'),
(391, 14, 'Indoors, Environmentally Controlled', 'How often does this job require working indoors in environmentally controlled conditions?'),
(392, 14, 'Indoors, Not Environmentally Controlled', 'How often does this job require working indoors in non-controlled environmental conditions (e.g., warehouse without heat)?'),
(393, 14, 'Outdoors, Exposed to Weather', 'How often does this job require working outdoors, exposed to all weather conditions?'),
(394, 14, 'Outdoors, Under Cover', 'How often does this job require working outdoors, under cover (e.g., structure with roof but no walls)?'),
(395, 14, 'Physical Proximity', 'To what extent does this job require the worker to perform job tasks in close physical proximity to other people?'),
(396, 14, 'Sounds, Noise Levels Are Distracting or Uncomfortable', 'How often does this job require working exposed to sounds and noise levels that are distracting or uncomfortable?'),
(397, 14, 'Spend Time Bending or Twisting the Body', 'How much does this job require bending or twisting your body?'),
(398, 14, 'Spend Time Climbing Ladders, Scaffolds, or Poles', 'How much does this job require climbing ladders, scaffolds, or poles?'),
(399, 14, 'Spend Time Keeping or Regaining Balance', 'How much does this job require keeping or regaining your balance?'),
(400, 14, 'Spend Time Kneeling, Crouching, Stooping, or Crawling', 'How much does this job require kneeling, crouching, stooping or crawling?'),
(401, 14, 'Spend Time Making Repetitive Motions', 'How much does this job require making repetitive motions?'),
(402, 14, 'Spend Time Sitting', 'How much does this job require sitting?'),
(403, 14, 'Spend Time Standing', 'How much does this job require standing?'),
(404, 14, 'Spend Time Using Your Hands to Handle, Control, or Feel Objects, Tools, or Controls', 'How much does this job require using your hands to handle, control, or feel objects, tools or controls?'),
(405, 14, 'Spend Time Walking and Running', 'How much does this job require walking and running?'),
(406, 14, 'Very Hot or Cold Temperatures', 'How often does this job require working in very hot (above 90 F degrees) or very cold (below 32 F degrees) temperatures?');
INSERT INTO `mast_jobsubgroup` (`jobgroupID`, `groupID`, `subgroup`, `info`) VALUES
(407, 14, 'Wear Common Protective or Safety Equipment such as Safety Shoes, Glasses, Gloves, Hearing Protection', 'How much does this job require wearing common protective or safety equipment such as safety shoes, glasses, gloves, hard hats or life jackets?'),
(408, 14, 'Wear Specialized Protective or Safety Equipment such as Breathing Apparatus, Safety Harness, Full Pr', 'How much does this job require wearing specialized protective or safety equipment such as breathing apparatus, safety harness, full protection suits, or radiation protection?'),
(409, 14, 'Consequence of Error', 'How serious would the result usually be if the worker made a mistake that was not readily correctable?'),
(410, 14, 'Degree of Automation', 'How automated is the job?'),
(411, 14, 'Duration of Typical Work Week', 'Number of hours typically worked in one week.'),
(412, 14, 'Freedom to Make Decisions', 'How much decision making freedom, without supervision, does the job offer?'),
(413, 14, 'Frequency of Decision Making', 'How frequently is the worker required to make decisions that affect other people, the financial resources, and/or the image and reputation of the organization?'),
(414, 14, 'Impact of Decisions on Co-workers or Company Results', 'What results do your decisions usually have on other people or the image or reputation or financial resources of your employer?'),
(415, 14, 'Importance of Being Exact or Accurate', 'How important is being very exact or highly accurate in performing this job?'),
(416, 14, 'Importance of Repeating Same Tasks', 'How important is repeating the same physical activities (e.g., key entry) or mental activities (e.g., checking entries in a ledger) over and over, without stopping, to performing this job?'),
(417, 14, 'Level of Competition', 'To what extent does this job require the worker to compete or to be aware of competitive pressures?'),
(418, 14, 'Pace Determined by Speed of Equipment', 'How important is it to this job that the pace is determined by the speed of equipment or machinery? This does not refer to keeping busy at all times on this job.'),
(419, 14, 'Structured versus Unstructured Work', 'To what extent is this job structured for the worker, rather than allowing the worker to determine tasks, priorities, and goals?'),
(420, 14, 'Time Pressure', 'How often does this job require the worker to meet strict deadlines?'),
(421, 14, 'Work Schedules', 'How regular are the work schedules for this job?'),
(422, 15, 'Achievement/Effort', 'Job requires establishing and maintaining personally challenging achievement goals and exerting effort toward mastering tasks.'),
(423, 15, 'Adaptability/Flexibility', 'Job requires being open to change (positive or negative) and to considerable variety in the workplace.'),
(424, 15, 'Analytical Thinking', 'Job requires analyzing information and using logic to address work-related issues and problems.'),
(425, 15, 'Attention to Detail', 'Job requires being careful about detail and thorough in completing work tasks.'),
(427, 15, 'Concern for Others', 'Job requires being sensitive to others\' needs and feelings and being understanding and helpful on the job.'),
(428, 15, 'Cooperation', 'Job requires being pleasant with others on the job and displaying a good-natured, cooperative attitude.'),
(429, 15, 'Dependability', 'Job requires being reliable, responsible, and dependable, and fulfilling obligations.'),
(430, 15, 'Independence', 'Job requires developing one\'s own ways of doing things, guiding oneself with little or no supervision, and depending on oneself to get things done.'),
(431, 15, 'Initiative', 'Job requires a willingness to take on responsibilities and challenges.'),
(432, 15, 'Innovation', 'Job requires creativity and alternative thinking to develop new ideas for and answers to work-related problems.'),
(433, 15, 'Integrity', 'Job requires being honest and ethical.'),
(434, 15, 'Leadership', 'Job requires a willingness to lead, take charge, and offer opinions and direction.'),
(435, 15, 'Persistence', 'Job requires persistence in the face of obstacles.'),
(436, 15, 'Self Control', 'Job requires maintaining composure, keeping emotions in check, controlling anger, and avoiding aggressive behavior, even in very difficult situations.'),
(437, 15, 'Social Orientation', 'Job requires preferring to work with others rather than alone, and being personally connected with others on the job.'),
(438, 15, 'Stress Tolerance', 'Job requires accepting criticism and dealing calmly and effectively with high stress situations.');

-- --------------------------------------------------------

--
-- Table structure for table `mast_language`
--

CREATE TABLE `mast_language` (
  `languageID` tinyint(4) NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_link`
--

CREATE TABLE `mast_link` (
  `linkID` tinyint(4) NOT NULL,
  `link_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_order` tinyint(4) NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_php` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_management`
--

CREATE TABLE `mast_management` (
  `manageID` tinyint(4) NOT NULL,
  `management` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_pincode`
--

CREATE TABLE `mast_pincode` (
  `areaID` int(11) NOT NULL,
  `area` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(6) CHARACTER SET latin1 NOT NULL,
  `district` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `advisor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_position`
--

CREATE TABLE `mast_position` (
  `postID` tinyint(4) NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(2) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_purpose`
--

CREATE TABLE `mast_purpose` (
  `purposeID` tinyint(4) NOT NULL,
  `purpose` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `tax` float DEFAULT NULL,
  `detail` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validays` tinyint(4) DEFAULT NULL,
  `linkID` tinyint(4) DEFAULT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_recognise`
--

CREATE TABLE `mast_recognise` (
  `recogniseID` tinyint(4) NOT NULL,
  `recogniseby` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_social`
--

CREATE TABLE `mast_social` (
  `socialmID` tinyint(4) NOT NULL,
  `social` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mast_state`
--

CREATE TABLE `mast_state` (
  `stateID` tinyint(4) NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` tinyint(4) NOT NULL,
  `advisor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_studycolour`
--

CREATE TABLE `mast_studycolour` (
  `colourID` int(11) NOT NULL,
  `marks_time` enum('M','T') NOT NULL COMMENT 'M-marks, T-time',
  `percentage` tinyint(4) NOT NULL,
  `colour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mast_studytype`
--

CREATE TABLE `mast_studytype` (
  `studytypeID` tinyint(4) NOT NULL,
  `studytype` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_subject`
--

CREATE TABLE `mast_subject` (
  `subjectID` smallint(6) NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_subject_unit`
--

CREATE TABLE `mast_subject_unit` (
  `unitID` smallint(6) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `study_unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_support`
--

CREATE TABLE `mast_support` (
  `sourceID` tinyint(4) NOT NULL,
  `support` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_survey`
--

CREATE TABLE `mast_survey` (
  `surveyID` tinyint(4) NOT NULL,
  `survey` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_usertype`
--

CREATE TABLE `mast_usertype` (
  `usertype` char(1) CHARACTER SET latin1 NOT NULL,
  `typeuser` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mast_weightage`
--

CREATE TABLE `mast_weightage` (
  `weightageID` tinyint(4) NOT NULL,
  `weightage` varchar(50) CHARACTER SET latin1 NOT NULL,
  `weightime` float NOT NULL COMMENT 'multiply',
  `limit_qustion` char(2) CHARACTER SET latin1 NOT NULL COMMENT 'percentage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notificationID` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `inherit_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_userID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_lessons`
--

CREATE TABLE `schedule_lessons` (
  `id` int(11) NOT NULL,
  `scheduleID` int(11) NOT NULL,
  `lessonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skills_evaluator`
--

CREATE TABLE `skills_evaluator` (
  `skillsID` smallint(6) NOT NULL,
  `skill` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `skill_info` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks_total` smallint(6) NOT NULL,
  `marks_pass` smallint(6) NOT NULL,
  `marks_correct` smallint(6) NOT NULL,
  `marks_wrong` float NOT NULL,
  `total_question` smallint(3) NOT NULL,
  `total_time` smallint(2) NOT NULL COMMENT 'minutes',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills_mcq`
--

CREATE TABLE `skills_mcq` (
  `mcqID` int(11) NOT NULL,
  `skillsID` smallint(6) NOT NULL,
  `weightageID` enum('E','N','D','T') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'E-easy,N-normal,D-difficult,T-tough',
  `question` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `option2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `option3` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option4` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct` char(1) CHARACTER SET latin1 NOT NULL,
  `explained` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` enum('U','R','W') CHARACTER SET latin1 NOT NULL DEFAULT 'U' COMMENT 'U-unverified,R-right,W-wrong',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills_result`
--

CREATE TABLE `skills_result` (
  `resultID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `skillsID` int(11) NOT NULL,
  `ques_attempted` tinyint(4) DEFAULT NULL,
  `correct_ans` tinyint(4) DEFAULT NULL,
  `time_sec` smallint(6) DEFAULT NULL,
  `marks` float DEFAULT NULL,
  `finished` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills_test`
--

CREATE TABLE `skills_test` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcq_order` tinyint(4) NOT NULL,
  `mcqID` int(11) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `testime` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `icourseID` int(11) DEFAULT NULL,
  `parent_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_mobile` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `parent_email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `details` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_aim`
--

CREATE TABLE `student_aim` (
  `aimID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `aim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qual_steps` tinyint(4) NOT NULL,
  `qual_done` tinyint(4) NOT NULL,
  `age_min` tinyint(4) DEFAULT NULL,
  `age_max` tinyint(4) DEFAULT NULL,
  `remarks_advisor` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks_student` varchar(1000) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `achieved` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_edutrain`
--

CREATE TABLE `student_edutrain` (
  `edutrainID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `course` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `institute` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_performance`
--

CREATE TABLE `student_performance` (
  `performID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` tinyint(4) DEFAULT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(6) DEFAULT NULL,
  `marks_full` varchar(4) CHARACTER SET latin1 NOT NULL,
  `marks_got` varchar(4) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_variable`
--

CREATE TABLE `student_variable` (
  `variableID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `studyID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `marks_total` tinyint(4) DEFAULT NULL,
  `marks_pass` tinyint(4) DEFAULT NULL,
  `marks_correct` tinyint(6) DEFAULT NULL,
  `marks_wrong` float DEFAULT NULL,
  `total_question` tinyint(4) DEFAULT NULL,
  `total_time` tinyint(4) DEFAULT NULL,
  `syllabus` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_activity`
--

CREATE TABLE `study_activity` (
  `activityID` smallint(6) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `activity` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `marks_total` tinyint(2) NOT NULL,
  `marks_pass` tinyint(4) DEFAULT NULL,
  `info` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_activity_result`
--

CREATE TABLE `study_activity_result` (
  `acresultID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `activityID` tinyint(4) NOT NULL,
  `activity_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks` tinyint(4) DEFAULT NULL,
  `tremarks` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) DEFAULT NULL,
  `edate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_docs`
--

CREATE TABLE `study_docs` (
  `contentID` int(11) NOT NULL,
  `lessonID` int(11) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_iclass`
--

CREATE TABLE `study_iclass` (
  `iclassID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `teacherID` int(11) DEFAULT NULL,
  `test_limit` enum('O','U') CHARACTER SET latin1 DEFAULT NULL COMMENT 'O-once,U-unlimited',
  `last_date` date NOT NULL,
  `completed` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_lesson`
--

CREATE TABLE `study_lesson` (
  `lessonID` int(11) NOT NULL,
  `studyID` int(11) NOT NULL,
  `unitID` smallint(6) DEFAULT NULL,
  `lesson_rank` tinyint(4) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `lesson` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `study_time` smallint(6) NOT NULL,
  `marks` tinyint(4) DEFAULT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_mcq`
--

CREATE TABLE `study_mcq` (
  `mcqID` int(11) NOT NULL,
  `studyID` int(11) NOT NULL,
  `lessonID` int(11) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `weightageID` enum('E','N','D','T') CHARACTER SET latin1 NOT NULL DEFAULT 'N' COMMENT 'E-easy,N-normal,D-difficult,T-tough',
  `question` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option2` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option3` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option4` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct` char(1) CHARACTER SET latin1 NOT NULL,
  `explained` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` enum('U','R','W') CHARACTER SET latin1 NOT NULL DEFAULT 'U' COMMENT 'U-unverified,R-right,W-wrong',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_practical`
--

CREATE TABLE `study_practical` (
  `practicalID` smallint(6) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `practical` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `marks_total` tinyint(4) NOT NULL,
  `marks_pass` tinyint(4) NOT NULL,
  `info` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `doc_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_practical_result`
--

CREATE TABLE `study_practical_result` (
  `presultID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `practicalID` tinyint(4) NOT NULL,
  `practical_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks` tinyint(4) DEFAULT NULL,
  `tremarks` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) DEFAULT NULL,
  `edate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_result`
--

CREATE TABLE `study_result` (
  `resultID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `scheduleID` int(11) DEFAULT NULL,
  `lessonID` int(11) NOT NULL,
  `ques_attempted` tinyint(4) DEFAULT NULL,
  `correct_ans` tinyint(4) DEFAULT NULL,
  `time_sec` smallint(6) DEFAULT NULL,
  `marks` float DEFAULT NULL,
  `finished` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_questions` smallint(4) NOT NULL,
  `total_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_review`
--

CREATE TABLE `study_review` (
  `reviewID` int(11) NOT NULL,
  `subjectID` smallint(6) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_schedule`
--

CREATE TABLE `study_schedule` (
  `scheduleID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` smallint(11) NOT NULL,
  `weightageID` tinyint(4) NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `date_leave` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `study_days` varchar(200) CHARACTER SET latin1 NOT NULL,
  `study_time` int(11) NOT NULL COMMENT 'minutes',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_teacher`
--

CREATE TABLE `study_teacher` (
  `teachID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `teach_date` date NOT NULL,
  `teach_time` time NOT NULL,
  `euser` int(11) NOT NULL COMMENT '08:15, 14:30',
  `edate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_test`
--

CREATE TABLE `study_test` (
  `testID` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `mcq_order` tinyint(4) NOT NULL,
  `mcqID` int(11) NOT NULL,
  `answer` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `time_sec` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_video`
--

CREATE TABLE `study_video` (
  `videoID` int(11) NOT NULL,
  `lessonID` int(11) NOT NULL,
  `languageID` tinyint(4) NOT NULL,
  `vid_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_mail`
--

CREATE TABLE `template_mail` (
  `templateID` tinyint(4) NOT NULL,
  `temptype` enum('C','H') CHARACTER SET latin1 NOT NULL COMMENT 'C-crm,H-hrm',
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matter` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `templatefile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_pitch`
--

CREATE TABLE `template_pitch` (
  `templateID` tinyint(11) NOT NULL,
  `template` enum('C','H') CHARACTER SET latin1 NOT NULL,
  `matter` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_sms`
--

CREATE TABLE `template_sms` (
  `templateID` tinyint(11) NOT NULL,
  `template` enum('C','H') CHARACTER SET latin1 NOT NULL,
  `matter` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `share` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `usertype` char(1) CHARACTER SET latin1 DEFAULT NULL COMMENT 'A-admin,C-counsellor,S-student',
  `password` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'encrypyed',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(11) CHARACTER SET latin1 NOT NULL,
  `mobileo` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `districtID` smallint(6) DEFAULT NULL,
  `pincode` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `gender` enum('M','F','O') CHARACTER SET latin1 DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_mobile` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `verified_email` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `active` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `deactive_reason` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introducer` int(11) DEFAULT NULL,
  `beneficiary` int(11) DEFAULT NULL COMMENT 'as per ''usertype'' and 2 conditions odd value of self referby, even his referrer',
  `advisor` int(11) DEFAULT NULL,
  `euser` int(11) DEFAULT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `accountID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `credit_debit` enum('C','D') CHARACTER SET latin1 NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `payment_mode` enum('A','G') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'A - Through Admin, G - Gateway ccavenue',
  `details` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_advisor`
--

CREATE TABLE `user_advisor` (
  `advisorID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `advisor` int(11) DEFAULT NULL,
  `authcode` tinyint(4) NOT NULL,
  `area` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `panelrank` int(11) DEFAULT NULL,
  `qualification` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expertise` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ifscode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `work_email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `email_pass` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `work_DID` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `work_GSM` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `work_mobile` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `work_whatsapp` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_awareness`
--

CREATE TABLE `user_awareness` (
  `awareID` int(11) NOT NULL,
  `caption` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_casestudy`
--

CREATE TABLE `user_casestudy` (
  `caseID` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `case_study` varchar(5000) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `pic_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupon`
--

CREATE TABLE `user_coupon` (
  `couponID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `couponcode` varchar(8) CHARACTER SET latin1 NOT NULL,
  `amount` smallint(6) DEFAULT NULL,
  `percentage` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `validate` date NOT NULL,
  `used` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_crm`
--

CREATE TABLE `user_crm` (
  `crmID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `purposeID` tinyint(4) NOT NULL,
  `contactID` tinyint(4) NOT NULL,
  `templateID` tinyint(4) DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `statusID` tinyint(4) NOT NULL,
  `date_follow` datetime NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_email`
--

CREATE TABLE `user_email` (
  `emailID` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bad` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_ewallet`
--

CREATE TABLE `user_ewallet` (
  `ewalletID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `credit_debit` enum('C','D') CHARACTER SET latin1 NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `details` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_hrm`
--

CREATE TABLE `user_hrm` (
  `hrmID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `postID` tinyint(4) NOT NULL,
  `contactID` tinyint(4) NOT NULL,
  `templateID` tinyint(4) DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `statusID` tinyint(4) NOT NULL,
  `date_follow` datetime NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_income`
--

CREATE TABLE `user_income` (
  `incomeID` int(11) NOT NULL,
  `accountID` int(11) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `source` enum('S','T1','T2') CHARACTER SET latin1 NOT NULL COMMENT 'S-self,T1-team1,team2',
  `amount` float NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `userlinkID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `linkID` tinyint(4) NOT NULL,
  `date_active` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `loginID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_mobile`
--

CREATE TABLE `user_mobile` (
  `mobileID` int(11) NOT NULL,
  `mobile` varchar(11) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bad` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `orderID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `purposeID` tinyint(4) NOT NULL,
  `gatewayID` int(11) DEFAULT NULL,
  `amount_mrp` float NOT NULL,
  `couponcode` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `amount_final` float NOT NULL,
  `tax` float DEFAULT NULL,
  `amount_payable` float NOT NULL,
  `ewalletID` int(11) DEFAULT NULL,
  `eamount` float DEFAULT NULL,
  `accountID` int(11) DEFAULT NULL,
  `paid` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `activated` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `loginIP` varchar(15) CHARACTER SET latin1 NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_refer`
--

CREATE TABLE `user_refer` (
  `referID` int(11) NOT NULL,
  `resultID` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET latin1 NOT NULL,
  `vmobile` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `vemail` enum('Y','N') CHARACTER SET latin1 NOT NULL DEFAULT 'N',
  `euser` int(11) DEFAULT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_social`
--

CREATE TABLE `user_social` (
  `socialinkID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `socialmID` tinyint(4) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_support`
--

CREATE TABLE `user_support` (
  `supportID` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `executive` int(11) DEFAULT NULL,
  `sourceID` tinyint(4) NOT NULL,
  `department` tinyint(4) NOT NULL COMMENT '1 HR, 2 iClass, 3 Accounts 4 Counsellor 5 IT/Website',
  `subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `matter` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `attach` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAT` date DEFAULT NULL,
  `resolved` enum('C','E') CHARACTER SET latin1 DEFAULT NULL COMMENT 'C - client, E - Executive',
  `euser` int(11) DEFAULT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_testimonial`
--

CREATE TABLE `user_testimonial` (
  `testimonialID` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `euser` int(11) NOT NULL,
  `edate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_update`
--

CREATE TABLE `user_update` (
  `updateID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value_old` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `euser` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_variable`
--

CREATE TABLE `user_variable` (
  `variableID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date_ctel` date DEFAULT NULL,
  `limit_lead` smallint(6) NOT NULL,
  `limit_crm` smallint(6) NOT NULL DEFAULT '5',
  `limit_hrm` smallint(6) NOT NULL DEFAULT '100',
  `limit_sms` smallint(6) NOT NULL,
  `limit_team` tinyint(4) NOT NULL,
  `ewallet_vmobile` tinyint(4) NOT NULL,
  `ewallet_vemail` tinyint(4) NOT NULL,
  `ewallet_mcq` tinyint(4) NOT NULL,
  `ewallet_review` tinyint(4) NOT NULL,
  `income_self` tinyint(4) NOT NULL,
  `income_introducer` tinyint(4) NOT NULL,
  `income_beneficiary` tinyint(4) NOT NULL DEFAULT '10',
  `income_advisor` tinyint(4) NOT NULL,
  `income_manager` tinyint(4) NOT NULL,
  `income_institute` tinyint(4) NOT NULL,
  `income_pincode` tinyint(4) DEFAULT NULL,
  `income_district` tinyint(4) DEFAULT NULL,
  `income_state` tinyint(4) DEFAULT NULL,
  `business` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ability`
--
ALTER TABLE `ability`
  ADD PRIMARY KEY (`abilityID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `abilityq_3dspace`
--
ALTER TABLE `abilityq_3dspace`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityq_arithmetic`
--
ALTER TABLE `abilityq_arithmetic`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityq_computation`
--
ALTER TABLE `abilityq_computation`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityq_name`
--
ALTER TABLE `abilityq_name`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityq_object`
--
ALTER TABLE `abilityq_object`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityq_vocabulary`
--
ALTER TABLE `abilityq_vocabulary`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `abilityt_3dspace`
--
ALTER TABLE `abilityt_3dspace`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `abilityt_arithmetic`
--
ALTER TABLE `abilityt_arithmetic`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `abilityt_computation`
--
ALTER TABLE `abilityt_computation`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `abilityt_name`
--
ALTER TABLE `abilityt_name`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `abilityt_object`
--
ALTER TABLE `abilityt_object`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `abilityt_vocabulary`
--
ALTER TABLE `abilityt_vocabulary`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `ability_result`
--
ALTER TABLE `ability_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `aptitude`
--
ALTER TABLE `aptitude`
  ADD PRIMARY KEY (`jobaptitudeID`);

--
-- Indexes for table `aptitude_jobs`
--
ALTER TABLE `aptitude_jobs`
  ADD PRIMARY KEY (`aptvalueID`);

--
-- Indexes for table `aptitude_ques`
--
ALTER TABLE `aptitude_ques`
  ADD PRIMARY KEY (`quesID`);

--
-- Indexes for table `aptitude_result`
--
ALTER TABLE `aptitude_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `attitude`
--
ALTER TABLE `attitude`
  ADD PRIMARY KEY (`jobattitudeID`);

--
-- Indexes for table `attitude_jobs`
--
ALTER TABLE `attitude_jobs`
  ADD PRIMARY KEY (`attitutedID`);

--
-- Indexes for table `attitude_order`
--
ALTER TABLE `attitude_order`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `attitude_ques`
--
ALTER TABLE `attitude_ques`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `attitude_resorder`
--
ALTER TABLE `attitude_resorder`
  ADD PRIMARY KEY (`asmtordID`);

--
-- Indexes for table `attitude_result`
--
ALTER TABLE `attitude_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`jobID`),
  ADD UNIQUE KEY `jobcode` (`jobcode`),
  ADD UNIQUE KEY `jobname` (`jobname`);

--
-- Indexes for table `career_tool`
--
ALTER TABLE `career_tool`
  ADD PRIMARY KEY (`toolsID`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employerID`);

--
-- Indexes for table `employer_hrm`
--
ALTER TABLE `employer_hrm`
  ADD PRIMARY KEY (`emphrmID`);

--
-- Indexes for table `employer_vacancy`
--
ALTER TABLE `employer_vacancy`
  ADD PRIMARY KEY (`empvacID`);

--
-- Indexes for table `hrm_attendance`
--
ALTER TABLE `hrm_attendance`
  ADD PRIMARY KEY (`presentID`);

--
-- Indexes for table `hrm_leave`
--
ALTER TABLE `hrm_leave`
  ADD PRIMARY KEY (`leaveID`);

--
-- Indexes for table `hrm_reference`
--
ALTER TABLE `hrm_reference`
  ADD PRIMARY KEY (`referenceID`);

--
-- Indexes for table `hr_hire`
--
ALTER TABLE `hr_hire`
  ADD PRIMARY KEY (`hiringID`);

--
-- Indexes for table `hr_hiring`
--
ALTER TABLE `hr_hiring`
  ADD PRIMARY KEY (`detailsID`);

--
-- Indexes for table `hr_interview`
--
ALTER TABLE `hr_interview`
  ADD PRIMARY KEY (`interviewID`);

--
-- Indexes for table `hr_question`
--
ALTER TABLE `hr_question`
  ADD PRIMARY KEY (`hrquestID`),
  ADD KEY `hrquestion` (`question`(255));

--
-- Indexes for table `hr_result`
--
ALTER TABLE `hr_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`instID`),
  ADD UNIQUE KEY `institute` (`institute`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `institute_course`
--
ALTER TABLE `institute_course`
  ADD PRIMARY KEY (`icourseID`);

--
-- Indexes for table `institute_subject`
--
ALTER TABLE `institute_subject`
  ADD PRIMARY KEY (`studyID`),
  ADD KEY `mainID` (`instID`),
  ADD KEY `subjectID` (`subjectID`);

--
-- Indexes for table `institute_survey`
--
ALTER TABLE `institute_survey`
  ADD PRIMARY KEY (`isurveyID`);

--
-- Indexes for table `mast_authentic`
--
ALTER TABLE `mast_authentic`
  ADD PRIMARY KEY (`authID`);

--
-- Indexes for table `mast_authorise`
--
ALTER TABLE `mast_authorise`
  ADD PRIMARY KEY (`authcode`),
  ADD UNIQUE KEY `designation` (`designation`);

--
-- Indexes for table `mast_board_univ`
--
ALTER TABLE `mast_board_univ`
  ADD PRIMARY KEY (`board_univID`),
  ADD UNIQUE KEY `board_university` (`board_university`);

--
-- Indexes for table `mast_contact`
--
ALTER TABLE `mast_contact`
  ADD PRIMARY KEY (`contactID`),
  ADD UNIQUE KEY `contactmode` (`contactmode`);

--
-- Indexes for table `mast_country`
--
ALTER TABLE `mast_country`
  ADD PRIMARY KEY (`countryID`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Indexes for table `mast_course`
--
ALTER TABLE `mast_course`
  ADD PRIMARY KEY (`courseID`),
  ADD UNIQUE KEY `course` (`course`);

--
-- Indexes for table `mast_coursetype`
--
ALTER TABLE `mast_coursetype`
  ADD PRIMARY KEY (`coursetypeID`),
  ADD UNIQUE KEY `coursetype` (`coursetype`);

--
-- Indexes for table `mast_crmstatus`
--
ALTER TABLE `mast_crmstatus`
  ADD PRIMARY KEY (`statusID`),
  ADD UNIQUE KEY `leadstatus` (`crmstatus`);

--
-- Indexes for table `mast_department`
--
ALTER TABLE `mast_department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `mast_district`
--
ALTER TABLE `mast_district`
  ADD PRIMARY KEY (`districtID`),
  ADD KEY `district` (`district`);

--
-- Indexes for table `mast_hrmstatus`
--
ALTER TABLE `mast_hrmstatus`
  ADD PRIMARY KEY (`statusID`),
  ADD UNIQUE KEY `leadstatus` (`hrmstatus`);

--
-- Indexes for table `mast_instype`
--
ALTER TABLE `mast_instype`
  ADD PRIMARY KEY (`instypeID`),
  ADD UNIQUE KEY `institutetype` (`instype`);

--
-- Indexes for table `mast_jobability`
--
ALTER TABLE `mast_jobability`
  ADD PRIMARY KEY (`abilityID`);

--
-- Indexes for table `mast_jobgroup`
--
ALTER TABLE `mast_jobgroup`
  ADD PRIMARY KEY (`groupID`),
  ADD KEY `topic` (`jobgroup`);

--
-- Indexes for table `mast_jobsubgroup`
--
ALTER TABLE `mast_jobsubgroup`
  ADD PRIMARY KEY (`jobgroupID`),
  ADD KEY `topic` (`groupID`);

--
-- Indexes for table `mast_language`
--
ALTER TABLE `mast_language`
  ADD PRIMARY KEY (`languageID`),
  ADD UNIQUE KEY `language` (`language`);

--
-- Indexes for table `mast_link`
--
ALTER TABLE `mast_link`
  ADD PRIMARY KEY (`linkID`),
  ADD KEY `linkheading` (`link_group`),
  ADD KEY `link` (`link`);

--
-- Indexes for table `mast_management`
--
ALTER TABLE `mast_management`
  ADD PRIMARY KEY (`manageID`);

--
-- Indexes for table `mast_pincode`
--
ALTER TABLE `mast_pincode`
  ADD PRIMARY KEY (`areaID`);

--
-- Indexes for table `mast_position`
--
ALTER TABLE `mast_position`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `mast_recognise`
--
ALTER TABLE `mast_recognise`
  ADD PRIMARY KEY (`recogniseID`),
  ADD UNIQUE KEY `recogniseby` (`recogniseby`);

--
-- Indexes for table `mast_social`
--
ALTER TABLE `mast_social`
  ADD PRIMARY KEY (`socialmID`);

--
-- Indexes for table `mast_state`
--
ALTER TABLE `mast_state`
  ADD PRIMARY KEY (`stateID`),
  ADD UNIQUE KEY `state` (`state`);

--
-- Indexes for table `mast_studycolour`
--
ALTER TABLE `mast_studycolour`
  ADD PRIMARY KEY (`colourID`);

--
-- Indexes for table `mast_studytype`
--
ALTER TABLE `mast_studytype`
  ADD PRIMARY KEY (`studytypeID`),
  ADD UNIQUE KEY `studytype` (`studytype`);

--
-- Indexes for table `mast_subject`
--
ALTER TABLE `mast_subject`
  ADD PRIMARY KEY (`subjectID`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `mast_subject_unit`
--
ALTER TABLE `mast_subject_unit`
  ADD PRIMARY KEY (`unitID`);

--
-- Indexes for table `mast_support`
--
ALTER TABLE `mast_support`
  ADD PRIMARY KEY (`sourceID`);

--
-- Indexes for table `mast_survey`
--
ALTER TABLE `mast_survey`
  ADD PRIMARY KEY (`surveyID`);

--
-- Indexes for table `mast_usertype`
--
ALTER TABLE `mast_usertype`
  ADD PRIMARY KEY (`usertype`),
  ADD UNIQUE KEY `typeuser` (`typeuser`);

--
-- Indexes for table `mast_weightage`
--
ALTER TABLE `mast_weightage`
  ADD PRIMARY KEY (`weightageID`),
  ADD UNIQUE KEY `weightage` (`weightage`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_inherit_id_index` (`inherit_id`),
  ADD KEY `permissions_name_index` (`name`),
  ADD KEY `permissions_slug_index` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_userID`);

--
-- Indexes for table `schedule_lessons`
--
ALTER TABLE `schedule_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_evaluator`
--
ALTER TABLE `skills_evaluator`
  ADD PRIMARY KEY (`skillsID`);

--
-- Indexes for table `skills_mcq`
--
ALTER TABLE `skills_mcq`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `skills_result`
--
ALTER TABLE `skills_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `skills_test`
--
ALTER TABLE `skills_test`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_aim`
--
ALTER TABLE `student_aim`
  ADD PRIMARY KEY (`aimID`);

--
-- Indexes for table `student_edutrain`
--
ALTER TABLE `student_edutrain`
  ADD PRIMARY KEY (`edutrainID`);

--
-- Indexes for table `student_performance`
--
ALTER TABLE `student_performance`
  ADD PRIMARY KEY (`performID`);

--
-- Indexes for table `student_variable`
--
ALTER TABLE `student_variable`
  ADD PRIMARY KEY (`variableID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`studyID`),
  ADD KEY `mainID` (`courseID`),
  ADD KEY `subjectID` (`subjectID`);

--
-- Indexes for table `study_activity`
--
ALTER TABLE `study_activity`
  ADD PRIMARY KEY (`activityID`);

--
-- Indexes for table `study_activity_result`
--
ALTER TABLE `study_activity_result`
  ADD PRIMARY KEY (`acresultID`);

--
-- Indexes for table `study_docs`
--
ALTER TABLE `study_docs`
  ADD PRIMARY KEY (`contentID`);

--
-- Indexes for table `study_iclass`
--
ALTER TABLE `study_iclass`
  ADD PRIMARY KEY (`iclassID`);

--
-- Indexes for table `study_lesson`
--
ALTER TABLE `study_lesson`
  ADD PRIMARY KEY (`lessonID`),
  ADD KEY `courseID` (`studyID`);

--
-- Indexes for table `study_mcq`
--
ALTER TABLE `study_mcq`
  ADD PRIMARY KEY (`mcqID`);

--
-- Indexes for table `study_practical`
--
ALTER TABLE `study_practical`
  ADD PRIMARY KEY (`practicalID`);

--
-- Indexes for table `study_practical_result`
--
ALTER TABLE `study_practical_result`
  ADD PRIMARY KEY (`presultID`);

--
-- Indexes for table `study_result`
--
ALTER TABLE `study_result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `study_review`
--
ALTER TABLE `study_review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `study_schedule`
--
ALTER TABLE `study_schedule`
  ADD PRIMARY KEY (`scheduleID`);

--
-- Indexes for table `study_teacher`
--
ALTER TABLE `study_teacher`
  ADD PRIMARY KEY (`teachID`);

--
-- Indexes for table `study_test`
--
ALTER TABLE `study_test`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `study_video`
--
ALTER TABLE `study_video`
  ADD PRIMARY KEY (`videoID`);

--
-- Indexes for table `template_mail`
--
ALTER TABLE `template_mail`
  ADD PRIMARY KEY (`templateID`),
  ADD UNIQUE KEY `templname` (`template`);

--
-- Indexes for table `template_pitch`
--
ALTER TABLE `template_pitch`
  ADD PRIMARY KEY (`templateID`);

--
-- Indexes for table `template_sms`
--
ALTER TABLE `template_sms`
  ADD PRIMARY KEY (`templateID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`accountID`);

--
-- Indexes for table `user_advisor`
--
ALTER TABLE `user_advisor`
  ADD PRIMARY KEY (`advisorID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Indexes for table `user_awareness`
--
ALTER TABLE `user_awareness`
  ADD PRIMARY KEY (`awareID`);

--
-- Indexes for table `user_casestudy`
--
ALTER TABLE `user_casestudy`
  ADD PRIMARY KEY (`caseID`);

--
-- Indexes for table `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`couponID`);

--
-- Indexes for table `user_crm`
--
ALTER TABLE `user_crm`
  ADD PRIMARY KEY (`crmID`);

--
-- Indexes for table `user_email`
--
ALTER TABLE `user_email`
  ADD PRIMARY KEY (`emailID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_ewallet`
--
ALTER TABLE `user_ewallet`
  ADD PRIMARY KEY (`ewalletID`);

--
-- Indexes for table `user_hrm`
--
ALTER TABLE `user_hrm`
  ADD PRIMARY KEY (`hrmID`);

--
-- Indexes for table `user_income`
--
ALTER TABLE `user_income`
  ADD PRIMARY KEY (`incomeID`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`userlinkID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`loginID`);

--
-- Indexes for table `user_mobile`
--
ALTER TABLE `user_mobile`
  ADD PRIMARY KEY (`mobileID`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `user_refer`
--
ALTER TABLE `user_refer`
  ADD PRIMARY KEY (`referID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_social`
--
ALTER TABLE `user_social`
  ADD PRIMARY KEY (`socialinkID`);

--
-- Indexes for table `user_support`
--
ALTER TABLE `user_support`
  ADD PRIMARY KEY (`supportID`);

--
-- Indexes for table `user_testimonial`
--
ALTER TABLE `user_testimonial`
  ADD PRIMARY KEY (`testimonialID`);

--
-- Indexes for table `user_update`
--
ALTER TABLE `user_update`
  ADD PRIMARY KEY (`updateID`);

--
-- Indexes for table `user_variable`
--
ALTER TABLE `user_variable`
  ADD PRIMARY KEY (`variableID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ability`
--
ALTER TABLE `ability`
  MODIFY `abilityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_3dspace`
--
ALTER TABLE `abilityq_3dspace`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_arithmetic`
--
ALTER TABLE `abilityq_arithmetic`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_computation`
--
ALTER TABLE `abilityq_computation`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_name`
--
ALTER TABLE `abilityq_name`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_object`
--
ALTER TABLE `abilityq_object`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityq_vocabulary`
--
ALTER TABLE `abilityq_vocabulary`
  MODIFY `mcqID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_3dspace`
--
ALTER TABLE `abilityt_3dspace`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_arithmetic`
--
ALTER TABLE `abilityt_arithmetic`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_computation`
--
ALTER TABLE `abilityt_computation`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_name`
--
ALTER TABLE `abilityt_name`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_object`
--
ALTER TABLE `abilityt_object`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abilityt_vocabulary`
--
ALTER TABLE `abilityt_vocabulary`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ability_result`
--
ALTER TABLE `ability_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aptitude`
--
ALTER TABLE `aptitude`
  MODIFY `jobaptitudeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aptitude_jobs`
--
ALTER TABLE `aptitude_jobs`
  MODIFY `aptvalueID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aptitude_ques`
--
ALTER TABLE `aptitude_ques`
  MODIFY `quesID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aptitude_result`
--
ALTER TABLE `aptitude_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude`
--
ALTER TABLE `attitude`
  MODIFY `jobattitudeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude_jobs`
--
ALTER TABLE `attitude_jobs`
  MODIFY `attitutedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude_order`
--
ALTER TABLE `attitude_order`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude_ques`
--
ALTER TABLE `attitude_ques`
  MODIFY `questionID` tinyint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude_resorder`
--
ALTER TABLE `attitude_resorder`
  MODIFY `asmtordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attitude_result`
--
ALTER TABLE `attitude_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `career_tool`
--
ALTER TABLE `career_tool`
  MODIFY `toolsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_hrm`
--
ALTER TABLE `employer_hrm`
  MODIFY `emphrmID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer_vacancy`
--
ALTER TABLE `employer_vacancy`
  MODIFY `empvacID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_attendance`
--
ALTER TABLE `hrm_attendance`
  MODIFY `presentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_leave`
--
ALTER TABLE `hrm_leave`
  MODIFY `leaveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_reference`
--
ALTER TABLE `hrm_reference`
  MODIFY `referenceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_hire`
--
ALTER TABLE `hr_hire`
  MODIFY `hiringID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_hiring`
--
ALTER TABLE `hr_hiring`
  MODIFY `detailsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_interview`
--
ALTER TABLE `hr_interview`
  MODIFY `interviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_question`
--
ALTER TABLE `hr_question`
  MODIFY `hrquestID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_result`
--
ALTER TABLE `hr_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `instID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institute_course`
--
ALTER TABLE `institute_course`
  MODIFY `icourseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institute_subject`
--
ALTER TABLE `institute_subject`
  MODIFY `studyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institute_survey`
--
ALTER TABLE `institute_survey`
  MODIFY `isurveyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_authentic`
--
ALTER TABLE `mast_authentic`
  MODIFY `authID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_authorise`
--
ALTER TABLE `mast_authorise`
  MODIFY `authcode` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_board_univ`
--
ALTER TABLE `mast_board_univ`
  MODIFY `board_univID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_contact`
--
ALTER TABLE `mast_contact`
  MODIFY `contactID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_country`
--
ALTER TABLE `mast_country`
  MODIFY `countryID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_course`
--
ALTER TABLE `mast_course`
  MODIFY `courseID` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_coursetype`
--
ALTER TABLE `mast_coursetype`
  MODIFY `coursetypeID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_crmstatus`
--
ALTER TABLE `mast_crmstatus`
  MODIFY `statusID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_department`
--
ALTER TABLE `mast_department`
  MODIFY `departmentID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_district`
--
ALTER TABLE `mast_district`
  MODIFY `districtID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_hrmstatus`
--
ALTER TABLE `mast_hrmstatus`
  MODIFY `statusID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_instype`
--
ALTER TABLE `mast_instype`
  MODIFY `instypeID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_jobability`
--
ALTER TABLE `mast_jobability`
  MODIFY `abilityID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_jobgroup`
--
ALTER TABLE `mast_jobgroup`
  MODIFY `groupID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mast_jobsubgroup`
--
ALTER TABLE `mast_jobsubgroup`
  MODIFY `jobgroupID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `mast_language`
--
ALTER TABLE `mast_language`
  MODIFY `languageID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_link`
--
ALTER TABLE `mast_link`
  MODIFY `linkID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_management`
--
ALTER TABLE `mast_management`
  MODIFY `manageID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_pincode`
--
ALTER TABLE `mast_pincode`
  MODIFY `areaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_position`
--
ALTER TABLE `mast_position`
  MODIFY `postID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_recognise`
--
ALTER TABLE `mast_recognise`
  MODIFY `recogniseID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_social`
--
ALTER TABLE `mast_social`
  MODIFY `socialmID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_state`
--
ALTER TABLE `mast_state`
  MODIFY `stateID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_studycolour`
--
ALTER TABLE `mast_studycolour`
  MODIFY `colourID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_studytype`
--
ALTER TABLE `mast_studytype`
  MODIFY `studytypeID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_subject`
--
ALTER TABLE `mast_subject`
  MODIFY `subjectID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_subject_unit`
--
ALTER TABLE `mast_subject_unit`
  MODIFY `unitID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_support`
--
ALTER TABLE `mast_support`
  MODIFY `sourceID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mast_survey`
--
ALTER TABLE `mast_survey`
  MODIFY `surveyID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_lessons`
--
ALTER TABLE `schedule_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills_evaluator`
--
ALTER TABLE `skills_evaluator`
  MODIFY `skillsID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills_mcq`
--
ALTER TABLE `skills_mcq`
  MODIFY `mcqID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills_result`
--
ALTER TABLE `skills_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills_test`
--
ALTER TABLE `skills_test`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_aim`
--
ALTER TABLE `student_aim`
  MODIFY `aimID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_edutrain`
--
ALTER TABLE `student_edutrain`
  MODIFY `edutrainID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_performance`
--
ALTER TABLE `student_performance`
  MODIFY `performID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_variable`
--
ALTER TABLE `student_variable`
  MODIFY `variableID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study`
--
ALTER TABLE `study`
  MODIFY `studyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_activity`
--
ALTER TABLE `study_activity`
  MODIFY `activityID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_activity_result`
--
ALTER TABLE `study_activity_result`
  MODIFY `acresultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_docs`
--
ALTER TABLE `study_docs`
  MODIFY `contentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_iclass`
--
ALTER TABLE `study_iclass`
  MODIFY `iclassID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_lesson`
--
ALTER TABLE `study_lesson`
  MODIFY `lessonID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_mcq`
--
ALTER TABLE `study_mcq`
  MODIFY `mcqID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_practical`
--
ALTER TABLE `study_practical`
  MODIFY `practicalID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_practical_result`
--
ALTER TABLE `study_practical_result`
  MODIFY `presultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_result`
--
ALTER TABLE `study_result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_review`
--
ALTER TABLE `study_review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_schedule`
--
ALTER TABLE `study_schedule`
  MODIFY `scheduleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_teacher`
--
ALTER TABLE `study_teacher`
  MODIFY `teachID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_test`
--
ALTER TABLE `study_test`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_video`
--
ALTER TABLE `study_video`
  MODIFY `videoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_mail`
--
ALTER TABLE `template_mail`
  MODIFY `templateID` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_pitch`
--
ALTER TABLE `template_pitch`
  MODIFY `templateID` tinyint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_sms`
--
ALTER TABLE `template_sms`
  MODIFY `templateID` tinyint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_advisor`
--
ALTER TABLE `user_advisor`
  MODIFY `advisorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_awareness`
--
ALTER TABLE `user_awareness`
  MODIFY `awareID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_casestudy`
--
ALTER TABLE `user_casestudy`
  MODIFY `caseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `couponID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_crm`
--
ALTER TABLE `user_crm`
  MODIFY `crmID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_email`
--
ALTER TABLE `user_email`
  MODIFY `emailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ewallet`
--
ALTER TABLE `user_ewallet`
  MODIFY `ewalletID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_hrm`
--
ALTER TABLE `user_hrm`
  MODIFY `hrmID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_income`
--
ALTER TABLE `user_income`
  MODIFY `incomeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `userlinkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_mobile`
--
ALTER TABLE `user_mobile`
  MODIFY `mobileID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_refer`
--
ALTER TABLE `user_refer`
  MODIFY `referID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_social`
--
ALTER TABLE `user_social`
  MODIFY `socialinkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_support`
--
ALTER TABLE `user_support`
  MODIFY `supportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_testimonial`
--
ALTER TABLE `user_testimonial`
  MODIFY `testimonialID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_update`
--
ALTER TABLE `user_update`
  MODIFY `updateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_variable`
--
ALTER TABLE `user_variable`
  MODIFY `variableID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_inherit_id_foreign` FOREIGN KEY (`inherit_id`) REFERENCES `permissions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
