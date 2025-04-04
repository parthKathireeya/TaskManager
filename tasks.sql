-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2025 at 07:15 PM
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
-- Database: `taskmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1 => Low, 2 => Medium, 3 => High',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Pending, 2 => In Progress, 3 => Past Due, 4 => Completed',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `assign_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `priority`, `status`, `created_by`, `assign_to`, `created_at`, `updated_at`) VALUES
(1, 'test task 1', 'test task 1', '2025-04-03', 2, 3, 1, 2, '2025-04-04 10:52:05', '2025-04-04 11:34:19'),
(2, 'Task 2', 'Task 2', '2025-04-17', 2, 1, 1, 1, '2025-04-04 11:32:21', '2025-04-04 11:32:21'),
(3, 'Task 3', 'Task 3', '2025-04-01', 2, 3, 1, 2, '2025-04-04 11:32:39', '2025-04-04 11:34:19'),
(4, 'Task 4', 'test 4', '2025-04-25', 2, 1, 1, 2, '2025-04-04 11:33:23', '2025-04-04 11:33:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
