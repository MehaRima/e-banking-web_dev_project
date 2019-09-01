-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2019 at 01:27 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_number` char(5) NOT NULL,
  `branch_name` varchar(10) DEFAULT NULL,
  `balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_number`, `branch_name`, `balance`) VALUES
('A-101', 'Downtown', 500),
('A-102', 'Perryridge', 400),
('A-201', 'Brighton', 900),
('A-215', 'Mianus', 700),
('A-217', 'Brighton', 750),
('A-222', 'Redwood', 700),
('A-305', 'Round Hill', 350);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `name`) VALUES
('ridhitiwari@gmail.com', 'ridhi12345', 'Ridhi Tiwari');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'Ridhi ', 'ridhi@gmail.com', '4723672', '123456'),
(2, 'Saheli Basu', 'saheli@gmail.com', '9875432', 'saheli123');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(11) NOT NULL,
  `acc_no_from` varchar(15) NOT NULL,
  `acc_no_to` varchar(15) NOT NULL,
  `t_date` text,
  `amt` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `acc_no_from`, `acc_no_to`, `t_date`, `amt`, `type`) VALUES
(5, 'A957554238', 'A600913904', '0000-00-00', 5000, '1'),
(6, 'A112269126', 'A519453455', '0000-00-00', 5000, '1'),
(7, 'A361351211', 'A912178085', '0000-00-00', 5000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_accnt`
--

CREATE TABLE `user_accnt` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `aadhar` varchar(15) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `img` text NOT NULL,
  `account_no` varchar(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accnt`
--

INSERT INTO `user_accnt` (`id`, `fname`, `lname`, `email`, `password`, `mobile`, `gender`, `address`, `aadhar`, `pan`, `img`, `account_no`, `balance`, `status`) VALUES
(10, 'Ridhi', 'Tiwari', 'ridhi@gmail.com', 'rid12345', '8899543210', 'female', 'VIP ROAD, KOLKATA', 'ADH123456', 'PAN-098765', 'image/9162_image_a.jpg', 'A268202715', 5000, '1'),
(11, 'Saheli', 'Basu', 'saheli@gmai', 'saheli1234', '865553453', 'female', 'TOLLYGAUNGE,KOLKATA', 'ADH886874', 'PAN-478638', 'image/3204_image_b.jpg', '0', 0, ''),
(12, 'Anushka', 'Singh', 'anush@gmail.com', 'anush2345', '8764352198', 'female', 'NEW TOWN, KOLKATA', 'ADH654378', 'PAN-213546', 'image/2692_image_e.jpg', '0', 0, ''),
(13, 'Mickey', 'Mouse', 'mick@gm.com', 'mic1235', '9834210065', 'male', 'M.G Road, Kolkata', 'ADH-846352', 'PAN-859475', 'image/6250_images_d.jpg', '0', 0, ''),
(14, 'Daisy', 'Duck', 'daisy@gmail.com', 'daisy1234', '9035241227', 'female', 'Chinar Park, Kolkata', 'ADH948520', 'PAN-897285', 'image/6753_images_c.jpg', '0', 0, ''),
(15, 'Winnie', 'Pooh', 'winnie@g.com', 'winnie1234', '98786756565', 'male', 'G Road, Kolkata', 'ADH-324262', 'PAN-156426', 'image/877_image1.png', '0', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_number`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `user_accnt`
--
ALTER TABLE `user_accnt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_accnt`
--
ALTER TABLE `user_accnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
