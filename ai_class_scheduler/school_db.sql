-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2025 at 05:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `generated_schedule`
--

CREATE TABLE `generated_schedule` (
  `id` int(11) NOT NULL,
  `generation_id` int(11) NOT NULL,
  `day_of_week` varchar(20) DEFAULT NULL,
  `time_slot` varchar(50) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `professor` varchar(100) DEFAULT NULL,
  `section_name` varchar(50) DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generated_schedule`
--

INSERT INTO `generated_schedule` (`id`, `generation_id`, `day_of_week`, `time_slot`, `subject_name`, `professor`, `section_name`, `room_name`, `created_at`) VALUES
(1, 1, 'Wednesday', '7:30 AM - 9:00 AM', 'IT 101', 'PURAL', 'BSIT 1A', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(2, 1, 'Wednesday', '5:00 PM - 6:30 PM', 'IT 101', 'PURAL', 'BSIT 1B', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(3, 1, 'Wednesday', '10:30 AM - 12:00 PM', 'IT 101', 'PURAL', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(4, 1, 'Wednesday', '9:00 AM - 10:30 AM', 'IT 101', 'PURAL', 'BSIT 2B', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(5, 1, 'Monday', '3:30 PM - 5:00 PM', 'IT 102', 'LEPITEN', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(6, 1, 'Monday', '1:00 PM - 2:30 PM', 'IT 102', 'LEPITEN', 'BSIT 2B', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(7, 1, 'Saturday', '7:30 AM - 9:00 AM', 'IT 103', 'Jumao-as', 'BSIT 1A', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(8, 1, 'Saturday', '6:30 PM - 8:00 PM', 'IT 103', 'Jumao-as', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:39:47'),
(9, 2, 'Wednesday', '7:30 AM - 9:00 AM', 'IT 101', 'PURAL', 'BSIT 1A', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(10, 2, 'Wednesday', '5:00 PM - 6:30 PM', 'IT 101', 'PURAL', 'BSIT 1B', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(11, 2, 'Wednesday', '10:30 AM - 12:00 PM', 'IT 101', 'PURAL', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(12, 2, 'Wednesday', '9:00 AM - 10:30 AM', 'IT 101', 'PURAL', 'BSIT 2B', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(13, 2, 'Monday', '3:30 PM - 5:00 PM', 'IT 102', 'LEPITEN', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(14, 2, 'Monday', '1:00 PM - 2:30 PM', 'IT 102', 'LEPITEN', 'BSIT 2B', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(15, 2, 'Saturday', '9:00 AM - 10:30 AM', 'IT 103', 'Jumao-as', 'BSIT 1A', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(16, 2, 'Saturday', '7:30 AM - 9:00 AM', 'IT 103', 'Jumao-as', 'BSIT 2A', 'COMP. LAB. 1', '2025-12-23 09:42:45'),
(17, 2, 'Friday', '7:30 AM - 9:00 AM', 'IT 105', 'Cataraja ', 'BSIT 3A', 'COMP. LAB. 2', '2025-12-23 09:42:45'),
(18, 2, 'Saturday', '6:30 PM - 8:00 PM', 'IT 105', 'Cataraja ', 'BSIT 3B', 'COMP. LAB. 2', '2025-12-23 09:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`, `created_at`) VALUES
(1, 'admin', 'admin123', 'admin', 'approved', '2025-12-27 02:22:13'),
(2, 'regalo', '123456', 'user', 'approved', '2025-12-27 02:22:49'),
(3, 'sample', '12345', 'user', 'approved', '2025-12-27 02:40:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `generated_schedule`
--
ALTER TABLE `generated_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `generated_schedule`
--
ALTER TABLE `generated_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
