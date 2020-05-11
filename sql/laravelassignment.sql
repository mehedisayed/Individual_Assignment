-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 05:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `seat_row` int(10) NOT NULL,
  `seat_column` int(10) NOT NULL,
  `company` varchar(200) NOT NULL,
  `operator` varchar(200) NOT NULL,
  `m_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `location`, `seat_row`, `seat_column`, `company`, `operator`, `m_id`) VALUES
(4, 'econo', 'lakshmipur', 10, 4, 'econo', 'econo', 3),
(5, 'abcd', 'bcksjdb', 50, 5, 'fklnbf', 'dsjbv', 3),
(11, 'econo', 'lakshmipur', 10, 5, 'econo', 'econo', 3),
(12, 'econo', 'lakshmipur', 10, 5, 'econo', 'econo', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `registered` date NOT NULL,
  `validated` int(1) NOT NULL,
  `role` varchar(15) NOT NULL,
  `company` varchar(20) NOT NULL,
  `operator` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `registered`, `validated`, `role`, `company`, `operator`) VALUES
(1, 'mehedi', '17-34364-1@student.aiub.edu', '12345678', '2020-04-10', 1, 'admin', 'dhaka express', NULL),
(3, 'Sadikur Rahman', 'sayedm103434@gmail.com', '12345678', '2020-05-11', 1, 'manager', 'econo', NULL),
(4, 'mahbub', 'sayedmehedi1734364@gmail.com', '12345678', '2020-05-11', 1, 'manager', 'econo', NULL),
(5, 'mehrab', 'smsd@gmail.com', '12345678', '2020-05-11', 1, 'supportstaff', 'dhaka express', NULL),
(6, 'abcd', 'sayedmehedi@hotmail.com', '123456789', '2020-05-11', 1, 'supportstaff', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
