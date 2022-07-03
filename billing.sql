-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 03:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `name` text NOT NULL,
  `cnic` int(50) NOT NULL,
  `contact` int(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `meter` int(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`name`, `cnic`, `contact`, `email`, `meter`, `account`, `address`) VALUES
('hairs', 1, 3, 'hariskhalid366@gmail.com', 54, 'yt2232h', 'harishhsadf');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `C_Account` int(50) NOT NULL,
  `C_Name` text NOT NULL,
  `C_CNIC` varchar(13) NOT NULL,
  `C_Contact` varchar(11) NOT NULL,
  `C_Email` text NOT NULL,
  `C_Address` text NOT NULL,
  `C_Meter` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`C_Account`, `C_Name`, `C_CNIC`, `C_Contact`, `C_Email`, `C_Address`, `C_Meter`) VALUES
(1234567, 'ali', '1234567898', '987654321', 'ali@gmail.pkr', 'Karachi', 246810),
(234, 'haris', '2342342', '1234578900', 'hariskhalid366@gmail.com', 'karachi', 234234),
(12332, 'haris', '3332323223333', '12345678', 'haris@tplink', 'france', 22331),
(12244, 'ahmed malik', '123324234', '1234567', 'ahmed@gmail.com', 'pakistan', 122334);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `meter` (`meter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
