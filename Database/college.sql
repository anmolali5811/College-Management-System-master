-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 04:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--
CREATE DATABASE IF NOT EXISTS `college` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `college`;

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(1, 'MCS-S19-1', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(2, '25', 'MCS', 'OOP', '2', '100', '93', '10-03-20'),
(3, '27', 'MCS', 'OOP', '2', '100', '92', '10-03-20'),
(4, '29', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(5, '31', 'MCS', 'OOP', '2', '100', '96', '10-03-20'),
(6, '33', 'MCS', 'OOP', '2', '100', '97', '10-03-20'),
(7, '34', 'MCS', 'OOP', '2', '100', '94', '10-03-20'),
(8, '35', 'MCS', 'OOP', '2', '100', '91', '10-03-20'),
(9, '36', 'MCS', 'OOP', '2', '100', '90', '10-03-20'),
(10, 'MCS-S19-1', 'MCS', 'DBMS', '2', '100', '98', '10-03-20'),
(11, '25', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(12, '27', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(13, '29', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(14, '31', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(15, '33', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(16, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '64', '10-03-20'),
(17, '35', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(18, '36', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(28, 'MCS-S19-1', 'MCS', 'DLD', '2', '100', '76', '29-03-20'),
(35, '', '', '', '', '', '', '29-03-20'),
(36, '', '', '', '', '', '', '29-03-20'),
(37, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(38, '', '', '', '', '', '', '30-03-20'),
(39, '', '', '', '', '', '', '30-03-20'),
(40, '', '', '', '', '', '', '30-03-20'),
(41, '', '', '', '', '', '', '30-03-20'),
(42, '', '', '', '', '', '', '30-03-20'),
(43, '', '', '', '', '', '', '30-03-20'),
(44, '', '', '', '', '', '', '30-03-20'),
(45, '', '', '', '', '', '', '30-03-20'),
(46, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(47, '', '', '', '', '', '', '30-03-20'),
(48, '', '', '', '', '', '', '30-03-20'),
(49, '', '', '', '', '', '', '30-03-20'),
(50, '', '', '', '', '', '', '30-03-20'),
(51, '', '', '', '', '', '', '30-03-20'),
(52, '', '', '', '', '', '', '30-03-20'),
(53, '', '', '', '', '', '', '30-03-20'),
(54, '', '', '', '', '', '', '30-03-20'),
(55, '12011004', 'Btech', 'CSL-401', '4', '100', '87', '05-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('Btech', 'Bachelor of Technology', '8', 8),
('Btech+Mtech', 'Bachelor + Master of Technology', '10', 5),
('Mtech', 'Master of Technology', '4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('CSL-401', 'DatabaseManagementSystem', 'Btech', 4, 4),
('CSL-402', 'StatisticalandNumericalmethods', 'Btech', 4, 4),
('CSL-403', 'OperatingSystem', 'Btech', 4, 3),
('CSL-404', 'ObjectOrientedProgramming', 'Btech', 4, 3),
('CSL-405', 'ComputerNetwork', 'Btech', 4, 4),
('CSL-406', 'Practicum-2', 'Btech', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Sname` varchar(255) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(12, 'PHP', 'How do you execute a PHP script from the command line?', 'How can we display the output directly to the browser?', 'What is the main difference between PHP 4 and PHP 5?', 'What is the meaning of a final class and a final method?', 'What is needed to be able to use image function?'),
(13, 'HTML', 'How to insert a copyright symbol on a browser page?', 'Does a hyperlink only apply to text?', 'What is a style sheet?', 'Can you create a multi-colored text on a web page?', 'What are empty elements?'),
(14, 'jQuery', 'Which built-in method returns the length of the string?', 'Which jQuery selector selects element with the given element id some-id?', 'Which jQuery method remove all or the specified class(es) from the set of matched elements?', 'Which jQuery method removes elements matching the specified selector from the set of matched elements?', 'Which jQuery method gets a set of elements containing all of the unique immediate children of each of the matched set of elements?'),
(15, 'Demo Assessment', 'Q1 Demo', 'Q2 Demo', 'Q3 Demo', 'Q4 Demo', 'Q5 Demo');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(2, 'admin@gmail.com', 'admin123*', 'Admin', ''),
(20, 'mukeshmann@gmail.com', 'teacher123', 'Teacher', 'Activate'),
(21, 'sourbhjain@gmail.com', 'teacher123', 'Teacher', 'Activate'),
(22, '12011004', 'student123', 'Student', 'Activate'),
(23, '12011005', 'student123', 'Student', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `course_code`) VALUES
('B.Fashion-S19-1', 'husnain', 'B.Fashion'),
('B.Fashion-S19-2', 'razarai663@gmail.com', 'B.Fashion'),
('MCS-S19-1', 'Muhammad Husnain Raza', 'MCS'),
('MCS-S19-2', 'razarai663@gmail.com', 'MCS'),
('MIT-S19-1', 'Muhammad Husnain Raza', 'MIT');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `N_id` int(11) NOT NULL,
  `N_Title` varchar(255) NOT NULL,
  `N_Url` longtext NOT NULL,
  `N_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`N_id`, `N_Title`, `N_Url`, `N_Remarks`) VALUES
(2, 'demo change', 'demo change', 'demo change'),
(3, 'demo2', 'demo2', 'demo2'),
(4, 'gfjgjg', 'hgjgg', 'jvkgkg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(2, 'S19', '2022-05-01 06:53:37'),
(3, 'S20', '2022-05-01 06:53:53'),
(4, 'S21', '2022-05-01 06:54:02'),
(5, 'S22', '2022-05-01 06:54:09'),
(6, 'S23', '2022-05-01 06:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(9, 'Btech', 'CSL-401', 4, '12011004', 1, '05-05-22'),
(10, 'Btech', 'CSL-401', 4, '12011004', 1, '05-05-22'),
(11, 'Btech', 'CSL-401', 4, '12011004', 0, '05-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(23, 'Btech', 4, '12011004', 'CSL-401', '', '05-05-22'),
(24, 'Btech', 4, '12011004', 'CSL-402', '', '05-05-22'),
(25, 'Btech', 4, '12011004', 'CSL-403', '', '05-05-22'),
(26, 'Btech', 4, '12011004', 'CSL-404', '', '05-05-22'),
(27, 'Btech', 4, '12011004', 'CSL-405', '', '05-05-22'),
(28, 'Btech', 4, '12011004', 'CSL-406', '', '05-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(3, '12011004', 1000, '2022-04-26 04:26:39', 'Paid'),
(4, '12011004', 1000, '2022-04-26 04:27:01', 'Paid'),
(5, '12011004', 100, '2022-04-26 16:46:22', 'Paid'),
(6, '12011004', 1200, '2022-05-05 14:16:46', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `prospectus_amount` varchar(10) NOT NULL,
  `applicant_status` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `semester` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtain_marks` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `prospectus_issued`, `prospectus_amount`, `applicant_status`, `application_status`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
('12011004', 'Mohd', '', 'Aqib', 'Rafat', 'anmolali5811@gmail.com', '9369904676', 'Btech', 'S20', '', 'Yes', 'Yes', 'Admitted', 'Approved', '2003-11-11', '', 'Male', 'Rasdhan', 'Kanpur', 'Kanpur', 4, 0, 0, '', '2022-05-05 13:12:42'),
('12011005', 'Akesh', '', 'Yadav', 'Father', 'akesh@gmail.com', '1234567890', 'Btech', 'S20', '', 'Yes', 'Yes', 'Admitted', 'Approved', '2002-01-01', '', 'Male', 'Harayana', 'Sonepat', 'Sonepat', 0, 0, 0, '', '2022-05-01 07:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(10, '7', 1, '05-05-22'),
(11, '7', 1, '05-05-22'),
(12, '7', 0, '05-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(14, 'Btech', 4, '7', 'CSL-401', '05-05-22', 40);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `hire_date` varchar(10) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `hire_date`) VALUES
(7, 'Mukesh', '', 'Mann', '', 'mukeshmann@gmail.com', '1234567890', '', 'Permanent', 'Yes', '1990-01-01', 0, 'Male', 'NewDelhi', 'Sonepat', 'Delhi', '01-05-22'),
(8, 'Sourbh', '', 'Jain', '', 'sourbhjain@gmail.com', '1234567890', '', 'Permanent', 'Yes', '1990-01-01', 0, 'Male', 'Delhi', 'Sonepat', 'Delhi', '01-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(7, 50000, 5, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(34, 7, 55000, 'Paid', '2022-05-05 14:08:15'),
(35, 7, 55000, 'Paid', '2022-05-05 14:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(10, 'Btech', 4, '09:00', '10:00', '1', 'CSL-405', 23),
(11, 'Btech', 4, '10:00', '11:00', '1', 'CSL-403', 24),
(14, 'Btech', 4, '10:00', '11:00', '5', 'CSL-401', 24);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(11) NOT NULL,
  `V_Title` varchar(255) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
(1, 'demo really changed', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3CS-eQdcMLU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'demo video'),
(7, 'dsa', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9gn7q89mK3k\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'dsa complte in 3 months');

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`N_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `N_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
--
-- Database: `onlclassroom`
--
CREATE DATABASE IF NOT EXISTS `onlclassroom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlclassroom`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Apass`) VALUES
('admin', 'admin'),
('williams', 'williams');

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examans`
--

INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
(6, 12, '146891650', 'Robert Huffman', 'php script.php', 'Using special tags <?= and ?>', 'PHP 5 presents many additional OOP features', 'Final class means that this class cannot be extended and a final method cannot be overridden.', 'GD library'),
(7, 13, '146891654', 'John Greenwood', 'using &copy; or &#169;', 'No, we can use hyperlinks on text and images both.', 'A style sheet is used to build a consistent, transportable, and well-designed style template. It describes the look and formatting of a document written in markup language.', 'Yes, by using <font color =\"color\"> </font> for the specific texts.', 'HTML elements with no content are called empty elements.'),
(8, 14, '146891658', 'Francisca Ashley', 'Demo Answer 1', 'Demo Answer 2', 'Demo Answer 3', 'Demo Answer 4', 'Demo Answer 5'),
(9, 12, '146891650', 'Robert Huffman', 'php script.php', 'using a special tag <?= and ?>', 'ver5 has many additional OOP features', 'meaning class cannot be extended and a final method cannot be overridden', 'GD library');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(12, 'PHP', 'How do you execute a PHP script from the command line?', 'How can we display the output directly to the browser?', 'What is the main difference between PHP 4 and PHP 5?', 'What is the meaning of a final class and a final method?', 'What is needed to be able to use image function?'),
(13, 'HTML', 'How to insert a copyright symbol on a browser page?', 'Does a hyperlink only apply to text?', 'What is a style sheet?', 'Can you create a multi-colored text on a web page?', 'What are empty elements?'),
(14, 'jQuery', 'Which built-in method returns the length of the string?', 'Which jQuery selector selects element with the given element id some-id?', 'Which jQuery method remove all or the specified class(es) from the set of matched elements?', 'Which jQuery method removes elements matching the specified selector from the set of matched elements?', 'Which jQuery method gets a set of elements containing all of the unique immediate children of each of the matched set of elements?'),
(15, 'Demo Assessment', 'Q1 Demo', 'Q2 Demo', 'Q3 Demo', 'Q4 Demo', 'Q5 Demo');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`, `FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(101, 'Robert Meadows', 'Stephen M Grower', '4021  Bell Street', 'Male', '2010-09-23', 'New York', '101010', 7454545850),
(102, 'Floyd Foster', 'James R Foster', '4839  Broad Street', 'Male', '2010-08-11', 'Birmingham', '101010', 7014569696),
(103, 'Heather Truong', 'Robert Truong', '1508  Davis Street', 'Female', '2015-12-03', 'Augusta', '101010', 7354541000),
(104, 'Leona Bledsoe', 'Mackie Bledsoe', '45  Carolyns Circle', 'Female', '2017-07-19', 'Pixley', '101010', 7025554700),
(106, 'Rebecca Burkett', 'Spader Burket', '1109  Clifford Street', 'Female', '2019-01-23', 'Oakland', '101010', 7014786969),
(107, 'Nicholas Kiley', 'Dwayne Kiley', '4276 McDowell Street', 'Male', '2020-12-02', 'Nashville', '101010', 7023698503),
(108, 'William G Nicolas', 'Johnny G Nicolas', '3875 Timbercrest Road', 'Male', '2021-05-11', 'Juneau', '101010', 7413693330);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuEid`, `Gname`) VALUES
('guestd@gmail.com', 'Demo Name Guest'),
('avilakr@gmail.com', 'Karla Avila'),
('patrickla@gmail.com', 'Patrick M Larios\n'),
('shannonrgmu@gmail.com', 'Shannon R Hang\n');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text NOT NULL,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('							Which built-in method returns the characters in a string beginning at the specified location? ', '													substr()', 'robert@gmail.com', 15),
('							How can we automatically escape incoming data? ', '												We have to enable the Magic quotes entry in the configuration file of PHP.	', 'greenwood@gmail.com', 16),
('							What does the function get_magic_quotes_gpc() means? ', '												The function get_magic_quotes_gpc() tells us whether the magic quotes is switched on or no.	', 'greenwood@gmail.com', 17),
('							What does accessing a class via :: means? ', '									:: is used to access static methods that do not require object initialization.				', 'kathy@gmail.com', 18),
('							What is jQuery UI? ', '									A set of user interface interactions, effects, widgets, and themes built on top of the jQuery JavaScript Library.				', 'robert@gmail.com', 20),
('demo test for guest query', '', 'guestd@gmail.com', 21);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RsID` bigint(20) NOT NULL,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int(10) NOT NULL,
  `Marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`) VALUES
(2384, '146891650', 12, 'Pass'),
(2385, '146891654', 13, 'Pass'),
(2386, '146891650', 12, 'Pass'),
(2387, '146891658', 14, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891650, 'Robert', 'Huffman', 'Jason Huffman', '220  Cardinal Lane', 'Male', 'BIT', '1996-07-16', 7010101250, 'password', 'robert@gmail.com'),
(146891651, 'Martin', 'Huynh', 'Anthony Huynh', '3936  Brighton Circle Road', 'Male', 'MIT', '1996-08-05', 7023658960, 'password', 'martin@gmail.com'),
(146891652, 'June', 'Barker', 'Peter Barker', '4871  Romano Street', 'Female', 'BIT', '1996-02-10', 7410000010, 'password', 'barker@gmail.com'),
(146891654, 'John', 'Greenwood', 'Thomas M Greenwood', '1495  Wilmar Farm Road', 'Male', 'BIT', '1996-07-12', 7013696365, 'password', 'greenwood@gmail.com'),
(146891655, 'Kathy', 'Dales', 'Stewart Dales', '1318  Hilltop Street', 'Female', 'MIT', '1993-11-03', 7014563320, 'password', 'kathy@gmail.com'),
(146891656, 'Robb', 'Caldwell', 'James Caldwell', '3590  White River Way', 'Male', 'BIT', '1997-04-01', 7036580002, 'password', 'robb@gmail.com'),
(146891657, 'Christine', 'Meadow', 'Johnny M Meadow', '662  Frederick Street', 'Female', 'BIT', '1995-08-25', 70258666660, 'password', 'christine@gmail.com'),
(146891658, 'Francisca', 'Ashley', 'George Ashley', '3828  Pine Garden Lane', 'Female', 'BIT', '1994-11-03', 7014524580, 'password', 'ashley@gmail.com'),
(146891659, 'Jason', 'Robinson', 'Mark L Robinson', '4916  Melm Street', 'Male', 'BIT', '1997-11-13', 7023699630, 'password', 'json@gmail.com'),
(146891662, 'Liam', 'Moore', 'Stephen Moore', '2587 Ralph Street', 'Male', 'BIT', '1996-02-12', 7410002587, 'password', 'liamoore@gmail.com'),
(146891663, 'Rachel', 'Rufus', 'Jordan Rufus', '3898 Mulberry Lane', 'Female', 'BIT', '1998-11-01', 7014445836, 'password', 'rachel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
(1, 'PHP Sessions', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3CS-eQdcMLU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Start a Session in PHP | PHP Tutorial | Learn PHP Programming | PHP for Beginners. Today we will learn about sessions in debt so we know how to create and destroy these sessions.'),
(3, 'Multi User Role Based Login PHP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-8q3GLkr9Ts\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This is a complete video demonstrating multi user role based login form using Bootstrap 5, PHP, MySQL'),
(4, 'CSS Grid ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HgwCeNVPlo0?rel=0&amp;showinfo=0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'How to create website layouts using CSS grid'),
(5, 'JQuery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BWXggB-T1jQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'JQuery Tutorial:\r\nQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.'),
(6, 'JSON - Full Crash Course', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GpOO5iKzOmY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'You will learn:- what JSON is, why JSON is important, what JSON is used for, the syntax of JSON, and see multiple examples of JSON. '),
(8, 'MongoDB Crash Course', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-56x56UppqQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This video will go over MongoDB, which is a popular NoSQL database.'),
(9, 'demo changes', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3CS-eQdcMLU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'demo video');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Gname`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RsID`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `RsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2388;

--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891664;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"college\",\"table\":\"teacher_attendance\"},{\"db\":\"college\",\"table\":\"teacher_salary_report\"},{\"db\":\"college\",\"table\":\"teacher_salary_allowances\"},{\"db\":\"college\",\"table\":\"teacher_info\"},{\"db\":\"college\",\"table\":\"student_courses\"},{\"db\":\"college\",\"table\":\"courses\"},{\"db\":\"college\",\"table\":\"course_subjects\"},{\"db\":\"college\",\"table\":\"student_info\"},{\"db\":\"college\",\"table\":\"time_table\"},{\"db\":\"college\",\"table\":\"teacher_courses\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'college', 'courses', '{\"sorted_col\":\"`courses`.`course_code` ASC\"}', '2022-05-01 05:39:41'),
('root', 'college', 'student_info', '{\"sorted_col\":\"`student_info`.`roll_no` ASC\"}', '2022-05-01 04:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-05 14:39:05', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
