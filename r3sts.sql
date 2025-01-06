-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r3sts`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_tbl`
--

CREATE TABLE `book_tbl` (
  `prodname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mob` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tbl`
--

INSERT INTO `book_tbl` (`prodname`, `name`, `mob`, `city`, `email`) VALUES
('FlowerVaseTable', 'Madhuri', '1234567890', 'Pune', 'madhuri@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `orderid` int(100) NOT NULL,
  `prodid` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `startdate` date NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`orderid`, `prodid`, `email`, `startdate`, `cemail`, `status`) VALUES
(1, 1, 'madhuri@gmail.com', '2023-07-22', 'damini@gmail.com', 'Approve'),
(2, 4, 'damini@gmail.com', '2023-07-22', 'madhuri@gmail.com', 'Approve'),
(3, 5, 'damini@gmail.com', '2023-07-22', 'madhuri@gmail.com', 'Disapprove'),
(4, 3, 'madhuri@gmail.com', '2023-07-22', 'damini@gmail.com', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `prodid` int(100) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `mob` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `deposit` varchar(100) NOT NULL,
  `imgurl` longblob NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`prodid`, `prodname`, `mob`, `city`, `price`, `deposit`, `imgurl`, `email`) VALUES
(1, 'SoftComfyChair', '1234567890', 'Pune', '3999', '1599', 0x736d616c6c436f7563682e706e67, 'madhuri@gmail.com'),
(2, 'Couch', '1234567890', 'Pune', '1999', '999', 0x736f66612e6a7067, 'madhuri@gmail.com'),
(3, 'Refrigerator', '1234567890', 'Pune', '5999', '2499', 0x526566726967697261746f722e706e67, 'madhuri@gmail.com'),
(4, 'FlowerVaseTable', '1234567890', 'Mumbai', '2599', '1499', 0x766173657461626c652e706e67, 'damini@gmail.com'),
(5, 'WoodenCoffeeTable', '1234567890', 'Mumbai', '2999', '999', 0x636f66666565207461626c652e706e67, 'damini@gmail.com'),
(6, 'WoodenCupboard', '1234567890', 'Mumbai', '7999', '5999', 0x776f6f64656e2077617264726f62652e706e67, 'damini@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `userid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mob` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userid`, `username`, `email`, `mob`, `city`, `password`) VALUES
(1, 'Madhuri ', 'madhuri@gmail.com', '1234567890', 'Pune', '1234'),
(2, 'Damini', 'damini@gmail.com', '1234567890', 'Mumbai', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `orderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `prodid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
