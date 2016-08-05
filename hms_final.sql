-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 04:12 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `doctor_id` varchar(50) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `appointment_timestamp` int(11) NOT NULL,
  `appointment_upcomingpast` int(11) NOT NULL,
  `appointment_fee_new` int(11) NOT NULL,
  `appointment_fee_followup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category` mediumtext NOT NULL,
  `writerName` text NOT NULL,
  `ArticleName` mediumtext NOT NULL,
  `Article` longtext NOT NULL,
  `article_timestamp` timestamp NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ask_the_expert`
--

CREATE TABLE `ask_the_expert` (
  `ate_id` int(11) NOT NULL,
  `ate_name` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consulting_room`
--

CREATE TABLE `consulting_room` (
  `cr_id` int(11) NOT NULL,
  `cr_name` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` varchar(50) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` bit(2) NOT NULL,
  `picture` blob NOT NULL,
  `logo` blob NOT NULL,
  `phone no` varchar(20) NOT NULL,
  `professional body` varchar(50) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `other procedure` varchar(200) NOT NULL,
  `about` varchar(200) NOT NULL,
  `membership` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_fee`
--

CREATE TABLE `doctor_fee` (
  `fee_id` int(11) NOT NULL,
  `follow_up_fee` int(50) NOT NULL,
  `new_fee` int(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `health_id` int(11) NOT NULL,
  `health_name` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `healthcheck`
--

CREATE TABLE `healthcheck` (
  `healthcheck_id` int(11) NOT NULL,
  `healthcheck_category` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL,
  `healthcheck_id` int(11) NOT NULL,
  `scan_id` int(11) NOT NULL,
  `appointment_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insurance_id` int(50) NOT NULL,
  `insurance_name` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` varchar(50) NOT NULL,
  `languages_Name` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_email` varchar(50) NOT NULL,
  `message_timestamp` timestamp NOT NULL,
  `message_message` varchar(200) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `on_the_pulse`
--

CREATE TABLE `on_the_pulse` (
  `pulse_id` int(11) NOT NULL,
  `pulse_name` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_address`
--

CREATE TABLE `patient_address` (
  `patient_address_id` int(11) NOT NULL,
  `patient_city` varchar(50) NOT NULL,
  `patient_house_no` varchar(50) NOT NULL,
  `patient_postcode` varchar(50) NOT NULL,
  `patient_street` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_data`
--

CREATE TABLE `patient_data` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_E-mail` varchar(50) NOT NULL,
  `patient_dob` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

CREATE TABLE `patient_phone` (
  `phone_no` int(11) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `practice_table`
--

CREATE TABLE `practice_table` (
  `practice_id` int(11) NOT NULL,
  `practice_name` varchar(50) NOT NULL,
  `practice_hospital` varchar(50) NOT NULL,
  `practice_secretary` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `recommendation_id` int(11) NOT NULL,
  `recommendation_new` longtext NOT NULL,
  `recommendation_request` longtext NOT NULL,
  `recommendation_approved` longtext NOT NULL,
  `recommendation_pending` longtext NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scan`
--

CREATE TABLE `scan` (
  `scan_id` int(11) NOT NULL,
  `scan_category` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `special interest`
--

CREATE TABLE `special interest` (
  `special_interest_id` int(11) NOT NULL,
  `speical_interest_name` longtext NOT NULL,
  `other_interest` longtext NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `speciality_id` int(50) NOT NULL,
  `speciality_Name` varchar(50) NOT NULL,
  `sub_Speicality` varchar(50) NOT NULL,
  `doctor_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `ask_the_expert`
--
ALTER TABLE `ask_the_expert`
  ADD PRIMARY KEY (`ate_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `consulting_room`
--
ALTER TABLE `consulting_room`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctor_fee`
--
ALTER TABLE `doctor_fee`
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`health_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `healthcheck`
--
ALTER TABLE `healthcheck`
  ADD PRIMARY KEY (`healthcheck_id`),
  ADD UNIQUE KEY `doctor_id` (`doctor_id`),
  ADD KEY `doctor_id_2` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `scan_id` (`scan_id`),
  ADD KEY `scan_id_2` (`scan_id`),
  ADD KEY `scan_id_3` (`scan_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `on_the_pulse`
--
ALTER TABLE `on_the_pulse`
  ADD PRIMARY KEY (`pulse_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD PRIMARY KEY (`patient_address_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patient_data`
--
ALTER TABLE `patient_data`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD PRIMARY KEY (`phone_no`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `practice_table`
--
ALTER TABLE `practice_table`
  ADD PRIMARY KEY (`practice_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`recommendation_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `scan`
--
ALTER TABLE `scan`
  ADD PRIMARY KEY (`scan_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `special interest`
--
ALTER TABLE `special interest`
  ADD PRIMARY KEY (`special_interest_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`speciality_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `healthcheck`
--
ALTER TABLE `healthcheck`
  MODIFY `healthcheck_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insurance_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_address`
--
ALTER TABLE `patient_address`
  MODIFY `patient_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_data`
--
ALTER TABLE `patient_data`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_phone`
--
ALTER TABLE `patient_phone`
  MODIFY `phone_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `practice_table`
--
ALTER TABLE `practice_table`
  MODIFY `practice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `recommendation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scan`
--
ALTER TABLE `scan`
  MODIFY `scan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `special interest`
--
ALTER TABLE `special interest`
  MODIFY `special_interest_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `speciality_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ask_the_expert`
--
ALTER TABLE `ask_the_expert`
  ADD CONSTRAINT `ask_the_expert_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consulting_room`
--
ALTER TABLE `consulting_room`
  ADD CONSTRAINT `consulting_room_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_fee`
--
ALTER TABLE `doctor_fee`
  ADD CONSTRAINT `doctor_fee_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `health`
--
ALTER TABLE `health`
  ADD CONSTRAINT `health_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `healthcheck`
--
ALTER TABLE `healthcheck`
  ADD CONSTRAINT `healthcheck_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `healthcheck_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient_data` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`scan_id`) REFERENCES `scan` (`scan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patient_data` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `on_the_pulse`
--
ALTER TABLE `on_the_pulse`
  ADD CONSTRAINT `on_the_pulse_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD CONSTRAINT `patient_address_ibfk_1` FOREIGN KEY (`patient_address_id`) REFERENCES `patient_data` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_data`
--
ALTER TABLE `patient_data`
  ADD CONSTRAINT `patient_data_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD CONSTRAINT `patient_phone_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_data` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `practice_table`
--
ALTER TABLE `practice_table`
  ADD CONSTRAINT `practice_table_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD CONSTRAINT `recommendation_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scan`
--
ALTER TABLE `scan`
  ADD CONSTRAINT `scan_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scan_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient_data` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `special interest`
--
ALTER TABLE `special interest`
  ADD CONSTRAINT `special interest_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speciality`
--
ALTER TABLE `speciality`
  ADD CONSTRAINT `speciality_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
