-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2022 at 03:50 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MilkteaCompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `Combination`
--

CREATE TABLE `Combination` (
  `CombinationID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ReceiptNumber` int(11) DEFAULT NULL,
  `Sugar` varchar(25) DEFAULT NULL,
  `Ice` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Combination`
--

INSERT INTO `Combination` (`CombinationID`, `ProductID`, `ReceiptNumber`, `Sugar`, `Ice`) VALUES
(1, 1, 3, '30%', 'No'),
(2, 2, 3, '70%', 'Less'),
(3, 1, 2, '50%', 'More'),
(4, 4, 1, '0', 'No'),
(5, 3, 4, '100%', 'Less'),
(6, 1, 5, '30%', 'No ');

-- --------------------------------------------------------

--
-- Table structure for table `Composition`
--

CREATE TABLE `Composition` (
  `CompositionID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `MaterialID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Composition`
--

INSERT INTO `Composition` (`CompositionID`, `ProductID`, `MaterialID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 7),
(4, 2, 2),
(5, 2, 3),
(6, 3, 2),
(7, 3, 6),
(8, 4, 2),
(9, 4, 6),
(10, 4, 7),
(11, 5, 5),
(12, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Rewards` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `LastName`, `FirstName`, `Email`, `Phone`, `Rewards`) VALUES
(1, 'Li', 'Rick', 'qwert@gmail.com', NULL, 5),
(2, 'Zhang', 'Jing', 'yuiop@gmail.com', NULL, 5),
(3, 'Li', 'Yiyi', 'asdfg@gmail.com', NULL, 10),
(4, 'Wang', 'Tim', 'hjkl@gmial.com', NULL, 5),
(5, 'Yu', 'Peter', 'zxcvb@gmail.com', NULL, 5),
(9, 'Pan', 'Haohao', 'ehjdke@gmail.com', '', 0),
(10, 'Wang', 'Bingbing', 'eryfdvb@gmail.com', '', 0),
(13, 'Ying', 'Xiao', 'ertdxd@gmail.com', '', 0),
(16, 'Wang', 'Wen', 'njhg@gmail.com', '', 0),
(17, 'Jiang', 'Shuyin', 'ssj@gmail.com', '6261234567', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Workhour` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`EmployeeID`, `LastName`, `FirstName`, `Email`, `Phone`, `Address`, `Workhour`) VALUES
(1, 'Wang', 'Rick', 'trewq@gmail.com', NULL, NULL, 0),
(2, 'Li', 'Jing', 'poiuy@gmail.com', NULL, NULL, 0),
(3, 'Yu', 'Yiyi', 'gfdsa@gmail.com', NULL, NULL, 0),
(4, 'Zhang', 'Tim', 'lkjh@gmial.com', NULL, NULL, 0),
(5, 'Sun', 'Peter', 'bvcxz@gmail.com', NULL, NULL, 0),
(6, 'Machine', 'Online', 'None', 'None', 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Materials`
--

CREATE TABLE `Materials` (
  `MaterialID` int(11) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `Name` varchar(25) NOT NULL,
  `Stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Materials`
--

INSERT INTO `Materials` (`MaterialID`, `SupplierID`, `Name`, `Stock`) VALUES
(1, 1, 'Boba', 5),
(2, 2, 'Black Tea', 15),
(3, 3, 'Cream', 22),
(4, 4, 'Sugar', 12),
(5, 5, 'Green Tea', 11),
(6, 6, 'Ice Cream', 9),
(7, 7, 'Milk', 7),
(8, 8, 'Grapefruit', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ProductID`, `Name`, `Price`) VALUES
(1, 'Boba Milk Tea', 5),
(2, 'Black Tea Macchiato', 6),
(3, 'Ice Cream Black Tea', 4),
(4, 'Ice Cream Milk Tea', 5),
(5, 'Grapefruit Green Tea', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Receipts`
--

CREATE TABLE `Receipts` (
  `ReceiptNumber` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Receipts`
--

INSERT INTO `Receipts` (`ReceiptNumber`, `CustomerID`, `EmployeeID`, `Date`) VALUES
(1, 1, 3, '2021-12-07 05:13:03'),
(2, 2, 4, '2021-12-07 05:13:03'),
(3, 3, 5, '2021-12-07 05:13:03'),
(4, 4, 1, '2021-12-07 05:13:03'),
(5, 5, 2, '2021-12-07 05:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers`
--

CREATE TABLE `Suppliers` (
  `SupplierID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Suppliers`
--

INSERT INTO `Suppliers` (`SupplierID`, `Name`, `Email`, `Phone`, `Address`) VALUES
(1, 'Boba Company', 'qaz@gmail.com', NULL, NULL),
(2, 'Black Tea Company', 'wsx@gmail.com', NULL, NULL),
(3, 'Cream Company', 'edc@gmail.com', NULL, NULL),
(4, 'Sugar Company', 'rfv@gmail.com', NULL, NULL),
(5, 'Grean Tea Company', 'tgb@gmail.com', NULL, NULL),
(6, 'Ice Crean Company', 'yhn@gmail.com', NULL, NULL),
(7, 'Milk Company', 'ujm@gmail.com', NULL, NULL),
(8, 'Grapefruit Company', 'iko@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Combination`
--
ALTER TABLE `Combination`
  ADD PRIMARY KEY (`CombinationID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `ReceiptNumber` (`ReceiptNumber`);

--
-- Indexes for table `Composition`
--
ALTER TABLE `Composition`
  ADD PRIMARY KEY (`CompositionID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `MaterialID` (`MaterialID`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `Materials`
--
ALTER TABLE `Materials`
  ADD PRIMARY KEY (`MaterialID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Receipts`
--
ALTER TABLE `Receipts`
  ADD PRIMARY KEY (`ReceiptNumber`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Combination`
--
ALTER TABLE `Combination`
  MODIFY `CombinationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Composition`
--
ALTER TABLE `Composition`
  MODIFY `CompositionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Materials`
--
ALTER TABLE `Materials`
  MODIFY `MaterialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Receipts`
--
ALTER TABLE `Receipts`
  MODIFY `ReceiptNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Suppliers`
--
ALTER TABLE `Suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Combination`
--
ALTER TABLE `Combination`
  ADD CONSTRAINT `combination_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`) ON DELETE SET NULL,
  ADD CONSTRAINT `combination_ibfk_2` FOREIGN KEY (`ReceiptNumber`) REFERENCES `Receipts` (`ReceiptNumber`) ON DELETE SET NULL;

--
-- Constraints for table `Composition`
--
ALTER TABLE `Composition`
  ADD CONSTRAINT `composition_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`) ON DELETE SET NULL,
  ADD CONSTRAINT `composition_ibfk_2` FOREIGN KEY (`MaterialID`) REFERENCES `Materials` (`MaterialID`) ON DELETE SET NULL;

--
-- Constraints for table `Materials`
--
ALTER TABLE `Materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `Suppliers` (`SupplierID`) ON DELETE SET NULL;

--
-- Constraints for table `Receipts`
--
ALTER TABLE `Receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE SET NULL,
  ADD CONSTRAINT `receipts_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
