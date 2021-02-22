-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 09:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reserv`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userName`, `password`) VALUES
('admin', 'adminlog1234');

-- --------------------------------------------------------

--
-- Table structure for table `today`
--

CREATE TABLE `today` (
  `date` varchar(35) NOT NULL,
  `reservationType` varchar(35) NOT NULL,
  `name` varchar(35) NOT NULL,
  `surname` varchar(35) NOT NULL,
  `area` varchar(35) NOT NULL,
  `mobileNumber` varchar(35) NOT NULL,
  `notes` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `today`
--

INSERT INTO `today` (`date`, `reservationType`, `name`, `surname`, `area`, `mobileNumber`, `notes`) VALUES
('2020-5-28', 'Lunch', 'Eren', 'Dalcik', '534', '52345267457', 'Table for 2'),
('2020-5-21', 'Dinner', 'Ferhat', 'D.', '213', '23456678', 'Bring water to table'),
('2020-5-27', 'Lunch', 'Bat', 'Man', '123', '1234567', 'Hello'),
('2020-5-01', 'Dinner', '', '', '', '', ''),
('2020-5-26', 'Dinner', 'idlil', 'deniz', '123', '123153246', 'Candles');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
