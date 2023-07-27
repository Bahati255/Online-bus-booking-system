-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 11:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `abcd` (IN `push` INT)  NO SQL SELECT* from user_info$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Namanga` (IN `push` INT)  NO SQL SELECT* from user_info$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `nishu` (IN `bus` INT)  NO SQL SELECT* from bus_details$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `raj` (IN `raj` INT)  NO SQL SELECT* from ticket$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Rush` (IN `bus` INT)  NO SQL SELECT* from bus_details$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `psw`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_det`
--

CREATE TABLE `booking_det` (
  `bus_id` int(11) NOT NULL,
  `vacant` int(11) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_det`
--

INSERT INTO `booking_det` (`bus_id`, `vacant`, `jdate`, `bfrom`, `bto`) VALUES

(1, 79, '2023-07-07', 'Namanga', 'Nairobi'),
(6, 49, '2023-07-05', 'Nairobi', 'Nakuru'),
(5, 44, '2023-07-06', 'Nairobi', 'Nakuru'),
(4, 78, '2023-07-06', 'Nairobi', 'Kisumu'),
(1, 78, '2023-07-09', 'Namanga', 'Nairobi'),
(5, 49, '2023-07-17', 'Nairobi', 'Nakuru'),
(2, 68, '2023-07-12', 'Nairobi ', 'Mombasa'),
(1, 67, '2023-07-17', 'Namanga', 'Nairobi'),
(2, 68, '2023-07-17', 'Nairobi ', 'Mombasa'),
(1, 78, '2023-07-18', 'Namanga', 'Nairobi'),
(9, 40, '2023-07-18', 'Nairobi', 'MOMBASA');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_id` int(11) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bno` varchar(20) NOT NULL,
  `bfrom` varchar(30) NOT NULL,
  `bto` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_id`, `bname`, `bno`, `bfrom`, `bto`, `time`, `type`, `no_seat`, `fare`) VALUES
(1, 'Namanga Express', 'KDK 032V', 'Namanga', 'Nairobi', '6am', 'Ac', 80, 1000),
(2, 'Satabdi Express', 'KDM 123V', 'Nairobi ', 'Mombasa', '7 am', 'Non Ac', 80, 1500),
(3, 'Isiolo Express', 'KDJ 777B', 'Nairobi', 'Isiolo', '6 am', 'Ac', 80, 3500),
(4, 'Taj express', 'KDM 333U', 'Nairobi', 'Kisumu', '8AM', 'Ac', 80, 5000),
(5, 'Rush Express', 'KDN 092J', 'Nairobi', 'Nakuru', '7am', 'Ac', 50, 1500),
(7, 'Mombasa Raha', 'KDK 123U', 'Nyamira', 'Kisumu', '7am', 'Non Ac', 33, 2000),
(8, 'Nyamira Express', 'KAA 011V', 'Nyamira', 'Kisii', '6 am', 'Non Ac', 50, 1000),
(9, 'Mombasa Raha', 'KBB 048U', 'Nairobi', 'MOMBASA', '10PM', 'Ac', 50, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `no_seat` int(11) NOT NULL,
  `ticket_status` varchar(30) NOT NULL,
  `jdate` varchar(30) NOT NULL,
  `booking_date` date NOT NULL,
  `pname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `bus_id`, `uid`, `seat_no`, `no_seat`, `ticket_status`, `jdate`, `booking_date`, `pname`) VALUES
(5, 1, 4, ' 1', 1, 'Conform', '2023-07-07', '2023-07-02', 'Bahati'),
(6, 6, 5, ' 1', 1, 'Conform', '2023-07-05', '2023-07-02', 'Nesta'),
(7, 5, 8, ' 1 2 3 4 5 6', 6, 'Conform', '2023-07-06', '2023-07-04', 'Yaya'),
(8, 4, 8, ' 1 2', 2, 'Conform', '2023-07-06', '2023-07-04', 'YAYA'),
(9, 1, 8, ' 1 2', 2, 'Conform', '2023-07-09', '2023-07-08', 'Miggz'),
(10, 5, 8, ' 1', 1, 'Conform', '2023-07-17', '2023-07-16', 'hamza'),
(11, 2, 8, ' 1 2 3 4 5 6 7 8 9 10 11 12', 12, 'Conform', '2023-07-12', '2023-07-16', 'Nesta'),
(12, 1, 8, ' 1 2 3 4 5 6 7 8 9 10 11 12 13', 13, 'Conform', '2023-07-17', '2023-07-16', 'namanga'),
(13, 2, 9, ' 1 2 3 4 5 6 7 8 9 10 11 12', 12, 'Conform', '2023-07-17', '2023-07-16', 'company'),
(14, 1, 9, ' 1 2', 2, 'Conform', '2023-07-18', '2023-07-16', 'vv'),
(15, 9, 10, ' 1 2 3 4 5 6 7 8 9 10', 10, 'Conform', '2023-07-18', '2023-07-17', 'ANNE');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `ID_no` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `name`, `uname`, `age`, `ID_no`, `psw`, `email`) VALUES
(4, 'Godfrey', 'Bahati', '12', '1234', 'gabriel', 'godfreygabanell4@gmail.com'),
(5, 'Nesta', 'Kariuki', '2', '101', 'Nesta', 'nesta@gmail.com'),
(6, 'HAMZA', 'YAHYA', '20', '2345678', '12345', 'bahati@gmail.com'),
(7, '', '', '', '', '', ''),
(8, 'YAYA', 'CENTER', '20', '1234567897', '123456', 'bahati@gmail.com'),
(9, 'tata', 'company', '22', '12345654', '234322', 'dada@gmail.com'),
(10, 'LUCY', 'ANNE', '21', '1122', '1234567', 'ANNE@GMAIL.COM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
