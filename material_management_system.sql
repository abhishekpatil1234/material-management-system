-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 01:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `material_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `lab_name` varchar(128) NOT NULL,
  `requested_or_extra` varchar(128) NOT NULL,
  `requested_by_or_available_to` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `task_completed`
--

CREATE TABLE `task_completed` (
  `item_id` int(128) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `lab_name` varchar(128) NOT NULL,
  `requested_or_extra` varchar(128) NOT NULL,
  `requested_by_or_available_to` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_completed`
--

INSERT INTO `task_completed` (`item_id`, `item_name`, `lab_name`, `requested_or_extra`, `requested_by_or_available_to`) VALUES
(1, 'mouse', 'networking', 'request', 'ram'),
(2, 'keyboard', 'os', 'extra', 'ram'),
(3, 'keyboard', 'science', 'extra', 'ram'),
(4, 'mouse', 'os', 'request', 'ram'),
(5, 'keyboard', 'networking', 'extra', 'ram'),
(6, 'mouse', 'networking', 'request', 'ram'),
(7, 'keyboard', 'programming', 'extra', 'ram'),
(8, 'keyboard', 'os', 'request', 'ram'),
(9, 'mouse', 'science', 'extra', 'ram'),
(10, 'mouse', 'science', 'extra', 'ram'),
(11, 'projector', 'os', 'request', 'anup'),
(12, 'keyboard', 'networking', 'extra', 'akshay'),
(13, 'speaker', 'os', 'extra', 'jhon'),
(14, 'mouse', 'networking', 'extra', 'mard'),
(15, 'mouse', 'science', 'extra', 'karan'),
(16, 'mouse', 'os', 'extra', 'ram'),
(23, 'abc', 'xyz', 'extra', 'jhon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usersUid`, `usersEmail`, `usersName`, `usersPwd`) VALUES
(1, 'hitman', 'ramsharama@gmail.com', 'ram sharma', '$2y$10$E3xpzQZIe6ytXBGT7PhRbOEzKLil/G1djlfSh9ipoUgJFmusAEMlW'),
(3, 'xyz', 'abhishek@gmail.com', 'abhishek patil', '$2y$10$25mJfX7V4CySobWpsdxpNe1AMowDc/NkDqR1xp8X42JnJuFJU8Y.u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_completed`
--
ALTER TABLE `task_completed`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `task_completed`
--
ALTER TABLE `task_completed`
  MODIFY `item_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
