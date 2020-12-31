-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 03:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cred`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight ID` int(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Departure` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight ID`, `Source`, `Destination`, `Departure`, `Date`, `Price`) VALUES
(1, 'ctg', 'dhaka', '8:00', '2010-10-19', 2500),
(2, 'Dhaka', 'ctg', '16:30', '2011-12-19', 2500),
(3, 'Dhaka', 'Syedpur', '9:30', '2019-12-01', 1500),
(4, 'Dhaka', 'Syedpur', '9:30', '2019-12-01', 1500),
(5, 'Dhaka', 'Coxs', '07:00', '2019-01-31', 3000),
(6, 'ctg', 'dhaka', '10', '2019-10-18', 3000),
(7, 'Dhaka', 'ctg', '', '2014-01-01', 0),
(8, 'Dhaka', 'ctg', '05:30', '2019-12-12', 5000),
(9, 'ctg', 'dhaka', '10:00', '2020-09-01', 2500),
(10, 'ctg', 'dhaka', '10:00', '2020-09-01', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `managerinfo`
--

CREATE TABLE `managerinfo` (
  `fname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `area` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathersName` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managerinfo`
--

INSERT INTO `managerinfo` (`fname`, `lname`, `username`, `password`, `email`, `phone`, `area`, `fathersName`, `nid`) VALUES
('Ashiqul Hoque', 'chowdhury', 'ashiq4321', 'ashiq4321', 'ashiqulhoque45@gmail.com', 1823828500, 'bashundhara', 'shafiqul hoque chowdhury', 1670464084);

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `Flight ID` int(50) NOT NULL,
  `uid` int(20) NOT NULL,
  `agent id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`Flight ID`, `uid`, `agent id`, `date`) VALUES
(2, 2, 5, '2020-09-12'),
(2, 1, 5, '2020-09-12'),
(2, 2, 5, '2020-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `uid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`uid`, `firstname`, `lastname`, `uname`, `gender`, `password`, `email`, `contact`) VALUES
(1, 'Chandler', 'Bing', 'Chan', 'male', '202cb962ac59075b964b07152d234b70', 'cb@gmail.com', '01705719021'),
(2, 'Joey', 'Tribbiani', 'Joe', 'male', '1234', 'JT@gmail.com', '01836252698'),
(3, 'Joey', 'Tribbiani', 'Joe', 'male', '202cb962ac59075b964b07152d234b70', 'JT@gmail.com', '01836252698'),
(4, 'Joey', 'Tribbiani', 'Joe', 'male', '202cb962ac59075b964b07152d234b70', 'JT@gmail.com', '01836252698'),
(5, 'Joey', 'Tribbiani', 'Joe', 'male', '202cb962ac59075b964b07152d234b70', 'JT@gmail.com', '01836252698'),
(6, 'Musaddiq', 'karim', 'Musa1', 'male', '202cb962ac59075b964b07152d234b70', 'musaddiqmk19@gmail.com', '01705719021'),
(7, 'Chandler', 'Bing', 'chan1', 'male', '202cb962ac59075b964b07152d234b70', 'c@gmail.com', '01705719021'),
(8, 'Chandler', 'Bing', 'chan1', 'male', '202cb962ac59075b964b07152d234b70', 'c@gmail.com', '01705719021'),
(9, 'Chandler', 'Bing', 'chan1', 'male', '202cb962ac59075b964b07152d234b70', 'c@gmail.com', '01705719021'),
(10, 'Frank', 'Castle', 'Frank', 'male', '202cb962ac59075b964b07152d234b70', 'p@gmail.com', '01705719021'),
(11, 'Monica', 'Geller', 'monica', 'female', '202cb962ac59075b964b07152d234b70', 'm@gmail.com', '01705719021'),
(12, 'Musa', 'karim', 'mak01', 'male', '202cb962ac59075b964b07152d234b70', 'musaddiqmk19@gmail.com', '01705719021');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `firstname`, `lastname`, `password`, `email`, `phone`, `type`) VALUES
(1, 'joey', 'xyz', 'qwe', '1234', 'a@gmail.com', '01111155874', 'admin'),
(2, 'mina', 'xyz', 'qwe', '1234', 'a@gmail.com', '01716409087', 'agent'),
(3, 'raju', 'xyz', 'qwe', '202cb962ac59075b964b07152d234b70', 'a@gmail.com', '01716409087', 'manager'),
(4, 'Musaddiq01', 'Musaddiq Al', 'Karim', 'cea8ce5bd901d2d44ffad2da8e49a6d9', 'musaddiqmk19@gmail.c', '01705719021', 'manager'),
(5, 'Rio', 'Rio', 'Denver', '202cb962ac59075b964b07152d234b70', 'r@gmail.com', '45678912312', 'agent'),
(6, 'rachel', 'Rachel', 'Green', '202cb962ac59075b964b07152d234b70', 'rg@gmail.com', '01705719021', 'customer'),
(7, 'Sheldor', 'Sheldon', 'Cooper', '12345', 'sc@gmail.com', '01234567896', 'admin'),
(9, 'howo', 'Howard', 'Wolowitz', '1234', 'howo@gmail.com', '01323123456', 'admin'),
(10, 'agent1', 'agent1', 'one', '1234', 'agent1@gmail.com', '01811111111', 'agent'),
(11, 'agent1', 'agent1', 'one', '1234', 'agent1@gmail.com', '01811111111', 'agent'),
(12, 'manager1', 'manager1', 'one', '1234', 'manager1@gmail.com', '01111111111', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight ID`),
  ADD UNIQUE KEY `Flight ID` (`Flight ID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `Flight ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
