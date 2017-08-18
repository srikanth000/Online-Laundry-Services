-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2017 at 05:27 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabrinz`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `location_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `branch_id` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`location_name`, `branch_name`, `branch_code`, `branch_id`) VALUES
('Hyderabad', 'Ameerpet', 'AM1001', 3),
('Basar', 'IIIT BASAR', 'BAS101', 6),
('Hyderabad', 'Hitech City', 'HC1001', 4),
('Secandrabad', 'Suchitra Circle', 'SC1001', 1),
('Secandrabad', 'Bowanpally', 'SC1002', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_name` varchar(50) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `Cost` int(50) NOT NULL,
  `uid` int(20) NOT NULL,
  `Item_id` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_name`, `Action`, `Cost`, `uid`, `Item_id`) VALUES
('Jeans', 'Iron', 10, 6, 1),
('Jeans', 'Wash and Iron', 30, 6, 2),
('Jeans', 'Wash and Fold', 20, 6, 3),
('T-Shirt', 'Iron', 10, 6, 4),
('T-Shirt', 'Wash and Fold', 20, 6, 5),
('T-Shirt', 'Wash and Iron', 30, 6, 6),
('Jeans', 'Wash and Iron', 50, 6, 7),
('Bed- Sheet', 'Wash and Iron', 60, 6, 8),
('Bed- Sheet', 'Dry Clean', 10, 6, 9),
('Jeans', 'Wash and Iron', 10, 7, 10),
('T-Shirt', 'Dry Clean', 5, 7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `itemlist`
--

CREATE TABLE `itemlist` (
  `Item_Name` varchar(50) NOT NULL,
  `Item_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemlist`
--

INSERT INTO `itemlist` (`Item_Name`, `Item_Id`) VALUES
('T-Shirt', 1),
('Jeans', 2),
('Kurta', 3),
('legi', 4),
('Bed- Sheet', 5),
('Sherwani', 6);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_name` varchar(50) NOT NULL,
  `location_id` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_name`, `location_id`) VALUES
('Hyderabad', 1),
('Secandrabad', 2),
('Basar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `location` varchar(50) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `custname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `picuptime` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `orderid` bigint(100) NOT NULL,
  `orderstatus` varchar(100) DEFAULT 'No Status',
  `orderdate` varchar(100) DEFAULT NULL,
  `tqty` bigint(100) DEFAULT NULL,
  `tamount` bigint(100) DEFAULT NULL,
  `paymode` varchar(100) DEFAULT NULL,
  `paystatus` varchar(100) DEFAULT NULL,
  `deldate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`location`, `sid`, `custname`, `email`, `mobile`, `pin`, `address`, `picuptime`, `uid`, `orderid`, `orderstatus`, `orderdate`, `tqty`, `tamount`, `paymode`, `paystatus`, `deldate`) VALUES
('Secandrabad', '6', 'Raj Namdeo', 'raj@gmail.com', '9407070876', '484661', 'HN.106 Suchitra', '12:00 PM To 04:00 PM', '1', 1, 'Complete', '2017-03-28', 10, 200, 'Cash On Delivery (COD)', 'Not paid', '28/03/2017'),
('Secandrabad', '6', 'Kishor  Namdeo', 'Kishor.umr@gmail.com', '9977940694', '484661', 'Purana Padav Umaria', '08:00 AM To 12:00 PM', '1', 3, 'Picked From Destination', '2017-03-28', 10, 100, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'Kishor  Namdeo', 'Kishor.umr@gmail.com', '9977940694', '484661', 'Purana Padav Umaria', '04:00 PM To 08:00 PM', '1', 5, 'Complete', '2017-03-29', 150, 3000, 'Cash On Delivery (COD)', 'Paid', NULL),
('Secandrabad', '6', 'Kishor  Namdeo', 'Kishor.umr@gmail.com', '9977940694', '484661', 'Purana Padav Umaria', '04:00 PM To 08:00 PM', '1', 7, 'Process Finished & Ready to Dispatch', '2017-03-29', 10, 300, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'Raj Namdeo', 'raj@gmail.com', '9407070876', '484661', '3633', '04:00 PM To 08:00 PM', '1', 8, 'Complete', '2017-03-29', 5, 50, 'Cash On Delivery (COD)', 'null', NULL),
('Secandrabad', '6', 'anurag asati', 'asati@gmai.com', '9407070876', '484661', 'jabalpur', '12:00 PM To 04:00 PM', '1', 10, 'Complete', '2017-03-29', 10, 300, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'Raj Namdeo', 'raj@gmail.com', '9407070876', '484661', '12542 ranjhi', '12:00 PM To 04:00 PM', '1', 12, 'Complete', '2017-04-06', 10, 300, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'Raj Namdeo', 'raj@gmail.com', '9407070876', '484661', 'Purana Padav ', '04:00 PM To 08:00 PM', '1', 13, 'Not Pick Up From Destination', '2017-04-20', 5, 50, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'Raj Namdeo', 'raj@gmail.com', '9407070876', '484661', 'HN.106 Suchitra', '12:00 PM To 04:00 PM', '1', 14, 'Not Pick Up From Destination', '2017-05-26', 20, 400, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'arjun', 'arjun2012@gmail.com', '9977042556', '484661', 'ranji', '08:00 AM To 12:00 PM', '2', 15, 'Complete', '2017-04-25', 2, 60, 'Cash On Delivery (COD)', 'Paid', NULL),
('Secandrabad', '6', 'shraddha soni', 'sh@gmail.com', '9685204106', '482004', 'suhgagi', '04:00 PM To 08:00 PM', '3', 16, 'Complete', '2017-04-25', 1, 30, 'Cash On Delivery (COD)', 'Paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', 'basar', '-Select Picup Time-', '5', 28, 'Not Pick Up From Destination', '2017-07-14', 3, 60, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '-Select Picup Time-', '5', 29, 'Process Finished & Ready to Dispatch', '2017-07-14', 0, 0, 'none', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', 'sadf', '08:00 AM To 12:00 PM', '5', 30, 'Not Pick Up From Destination', '2017-07-14', 2, 20, 'Online (Pripaid)', 'Not paid', NULL),
('none', '', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '-Select Picup Time-', '5', 31, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '-Select Picup Time-', '5', 32, 'Not Pick Up From Destination', '2017-07-14', 2, 40, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', 'acd', '12:00 PM To 04:00 PM', '5', 33, 'Not Pick Up From Destination', '2017-07-15', 3, 70, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '12:00 PM To 04:00 PM', '5', 34, 'Not Pick Up From Destination', '2017-07-15', 4, 80, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '-Select Picup Time-', '5', 35, 'Not Pick Up From Destination', '2017-07-15', 0, 0, 'none', 'Not paid', NULL),
('none', '', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', '', '-Select Picup Time-', '5', 36, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', 'null', 'addf', '12:00 PM To 04:00 PM', '12', 38, 'Not Pick Up From Destination', '2017-07-22', 1, 20, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 39, 'Not Pick Up From Destination', '2017-07-22', 1, 30, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '12:00 PM To 04:00 PM', '20', 40, 'Not Pick Up From Destination', '2017-07-22', 1, 20, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '12:00 PM To 04:00 PM', '20', 41, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '9494992127', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 42, 'Not Pick Up From Destination', '2017-07-22', 5, 100, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '8328620976', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 43, 'Not Pick Up From Destination', '2017-07-22', 6, 120, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Basar', '7', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 44, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 45, 'Not Pick Up From Destination', '2017-07-22', 8, 160, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '-Select Picup Time-', '20', 46, 'Not Pick Up From Destination', '2017-07-22', 12, 240, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '505321', 'basar', '12:00 PM To 04:00 PM', '12', 47, 'Not Pick Up From Destination', '2017-07-22', 1, 10, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '505321', 'basar', '08:00 AM To 12:00 PM', '12', 48, 'Not Pick Up From Destination', '2017-07-22', 1, 20, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'srikanth', 'margamsrikanth7@gmail.com', '7675051154', '505321', 'basar', '08:00 AM To 12:00 PM', '20', 49, 'Not Pick Up From Destination', '2017-07-22', 1, 10, 'Online (Pripaid)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'basar', '08:00 AM To 12:00 PM', '12', 50, 'Process Finished & Ready to Dispatch', '2017-07-22', 1, 10, 'Online (Pripaid)', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'basar', '08:00 AM To 12:00 PM', '12', 51, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'basar', '08:00 AM To 12:00 PM', '12', 52, 'Not Pick Up From Destination', '2017-07-24', 4, 80, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9705406750', '504107', 'basar', '08:00 AM To 12:00 PM', '12', 53, 'Not Pick Up From Destination', '2017-07-27', 2, 50, 'Cash On Delivery (COD)', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '234', 'ewrwe', '08:00 AM To 12:00 PM', '12', 54, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '3243', 'sdfs', '08:00 AM To 12:00 PM', '12', 55, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'basar', '08:00 AM To 12:00 PM', '12', 56, 'Not Pick Up From Destination', '2017-08-04', 0, 0, 'none', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'ewrwe', '08:00 AM To 12:00 PM', '12', 57, 'Not Pick Up From Destination', '2017-08-04', 0, 0, 'none', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'ewrwe', '08:00 AM To 12:00 PM', '12', 58, 'Not Pick Up From Destination', '2017-08-04', 0, 0, 'none', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'ewrwe', '08:00 AM To 12:00 PM', '12', 59, 'Not Pick Up From Destination', '2017-08-04', 0, 0, 'none', 'Not paid', NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '9490128833', '504107', 'ewrwe', '08:00 AM To 12:00 PM', '12', 60, 'No Status', NULL, NULL, NULL, NULL, NULL, NULL),
('Secandrabad', '6', 'shekhar', 'shekhar.goud9@gmail.com', '8328620976', '504107', 'Basar iiit', '08:00 AM To 12:00 PM', '12', 61, 'Not Pick Up From Destination', '2017-08-04', 1, 30, 'none', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '8328620976', '504107', 'Basar iiit', '08:00 AM To 12:00 PM', '12', 62, 'Not Pick Up From Destination', '2017-08-04', 1, 10, 'Online (Pripaid)', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '8328620976', '504107', 'Basar iiit', '08:00 AM To 12:00 PM', '12', 63, 'Not Pick Up From Destination', '2017-08-04', 1, 10, 'Online (Pripaid)', 'Not paid', NULL),
('Basar', '7', 'shekhar', 'shekhar.goud9@gmail.com', '8328620976', '504107', 'Basar iiit', '12:00 PM To 04:00 PM', '12', 64, 'Not Pick Up From Destination', '2017-08-04', 3, 20, 'Online (Pripaid)', 'Not paid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderlistitem`
--

CREATE TABLE `orderlistitem` (
  `Item_Name` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `qty` bigint(100) DEFAULT NULL,
  `total` bigint(100) DEFAULT NULL,
  `orderid` bigint(100) DEFAULT NULL,
  `Ino` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderlistitem`
--

INSERT INTO `orderlistitem` (`Item_Name`, `action`, `rate`, `qty`, `total`, `orderid`, `Ino`) VALUES
('T-Shirt', 'null', '20', 50, 1000, 5, 12),
('Jeans', 'Iron', '10', 50, 500, 5, 13),
('Jeans', 'Wash and Iron', '30', 50, 1500, 5, 14),
('Jeans', 'Wash and Iron', '30', 10, 300, 10, 15),
('Jeans', 'Iron', '10', 5, 50, 8, 16),
('Jeans', 'Wash and Iron', '30', 10, 300, 7, 17),
('Jeans', 'Iron', '10', 10, 100, 3, 18),
('Jeans', 'Iron', '10', 10, 100, 4, 19),
('Jeans', 'Wash and Iron', '30', 50, 1500, 6, 20),
('Jeans', 'Wash and Iron', '30', 10, 300, 12, 21),
('Jeans', 'Iron', '10', 5, 50, 13, 22),
('Jeans', 'Wash and Iron', '30', 2, 60, 15, 23),
('Jeans', 'Wash and Iron', '30', 1, 30, 16, 24),
('T-Shirt', 'Wash and Fold', '20', 20, 400, 14, 25),
('T-Shirt', 'Wash and Fold', '20', 5, 100, 17, 26),
('T-Shirt', 'Wash and Fold', '20', 5, 100, 17, 27),
('Jeans', 'Wash and Fold', '20', 1, 20, 21, 28),
('T-Shirt', 'Wash and Iron', 'null', 2, 0, 21, 29),
('T-Shirt', 'Iron', '10', 2, 20, 25, 30),
('T-Shirt', 'Wash and Iron', '30', 4, 120, 25, 31),
('Jeans', 'Wash and Fold', '20', 1, 20, 25, 32),
('Jeans', 'Wash and Iron', '30', 2, 60, 24, 33),
('Jeans', 'Wash and Iron', '30', 3, 90, 26, 34),
('Jeans', 'Wash and Iron', '30', 4, 120, 27, 35),
('T-Shirt', 'Wash and Fold', '20', 1, 20, 28, 36),
('Jeans', 'Wash and Fold', '20', 2, 40, 28, 37),
('T-Shirt', 'Iron', '10', 2, 20, 30, 38),
('Jeans', 'Wash and Fold', '20', 2, 40, 32, 39),
('Jeans', 'Wash and Iron', '30', 1, 30, 33, 40),
('T-Shirt', 'Wash and Fold', '20', 2, 40, 33, 41),
('T-Shirt', 'Wash and Fold', '20', 2, 40, 34, 42),
('Jeans', 'Wash and Fold', '20', 2, 40, 34, 43),
('T-Shirt', 'Wash and Fold', '20', 1, 20, 38, 44),
('Jeans', 'Wash and Iron', '30', 1, 30, 39, 45),
('T-Shirt', 'Wash and Fold', '20', 1, 20, 40, 46),
('T-Shirt', 'Wash and Fold', '20', 5, 100, 42, 47),
('T-Shirt', 'Wash and Fold', '20', 6, 120, 43, 48),
('T-Shirt', 'Wash and Fold', '20', 8, 160, 45, 49),
('T-Shirt', 'Wash and Fold', '20', 12, 240, 46, 50),
('Jeans', 'Iron', '10', 1, 10, 47, 51),
('T-Shirt', 'Wash and Fold', '20', 1, 20, 48, 52),
('T-Shirt', 'Iron', '10', 1, 10, 49, 53),
('T-Shirt', 'Iron', '10', 1, 10, 50, 54),
('Jeans', 'Wash and Fold', '20', 2, 40, 52, 55),
('T-Shirt', 'Wash and Fold', '20', 2, 40, 52, 56),
('Jeans', 'Wash and Iron', '30', 1, 30, 53, 57),
('T-Shirt', 'Wash and Fold', '20', 1, 20, 53, 58),
('Jeans', 'Wash and Iron', '30', 2, 60, 54, 59),
('Bed- Sheet', 'Dry Clean', '10', 2, 20, 54, 60),
('T-Shirt', 'Wash and Iron', '30', 1, 30, 61, 62),
('Jeans', 'Wash and Iron', '10', 1, 10, 62, 63),
('Jeans', 'Wash and Iron', '10', 1, 10, 63, 64),
('Jeans', 'Wash and Iron', '10', 1, 10, 64, 65),
('T-Shirt', 'Dry Clean', '5', 2, 10, 64, 66);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `owner_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `location_name` varchar(50) DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `usertype` int(5) NOT NULL,
  `store_name` varchar(50) DEFAULT NULL,
  `uid` int(20) NOT NULL,
  `pid` int(20) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`owner_name`, `email`, `password`, `mobile`, `location_name`, `branch_name`, `usertype`, `store_name`, `uid`, `pid`, `lastupdate`, `status`) VALUES
('Shekhar Rangu', 'admin', 'admin', '9490128833', 'Basar', 'RGUKT', 1, 'ADMIN', 1, 0, NULL, 1),
('Abdul Saif Khan', 'saif@gmail.com', '1994', '9630376267', 'Secandrabad', 'Suchitra Circle', 2, 'Rising ', 6, 1, NULL, 1),
('Rangu Shekhar', 'shekhar.goud9@gmail.com', 'rgukt123', '9490128833', 'Basar', 'Basar', 2, 'Fabrinz', 7, 1, NULL, 1),
('Rangu Nagaraju', 'rangunagaraju100@gmail.com', 'rgukt123', '9490128822', 'Basar', 'Basar IIIT', 2, 'Fabrinz', 10, 1, NULL, 1),
('Margam Srikanth', 'margamsrikanth7@gmail.com', 'rgukt123', '7675051154', 'Basar', 'Basar IIIT', 2, 'MyFriends', 11, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `storeitem`
--

CREATE TABLE `storeitem` (
  `Item_Name` varchar(50) DEFAULT NULL,
  `uid` bigint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storeitem`
--

INSERT INTO `storeitem` (`Item_Name`, `uid`) VALUES
('Jeans', 6),
('T-Shirt', 6),
('Bed- Sheet', 6),
('Jeans', 7),
('Jeans', 7),
('T-Shirt', 7),
('Bed- Sheet', 11),
('T-Shirt', 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `userid` bigint(100) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Pincode` bigint(6) DEFAULT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Mobile`, `Password`, `DOB`, `userid`, `Address`, `Pincode`, `status`) VALUES
('Raj Namdeo', 'raj@gmail.com', '9407070876', '94070', '11/07/1989', 1, 'Suchitra- x Road Secundrabad', 484661, 0),
('arjun', 'arjun2012@gmail.com', '9977042556', '2012ravi', '20/12/1994', 2, 'ranjhi', 476212, 0),
('shraddha soni', 'sh@gmail.com', '9685204106', 're3106shu', '23/05/1992', 3, 'Suhagi', 482004, 0),
('shekhar', 'shekhar.goud9@gmail.com', '8328620976', 'rangu123', '08/07/1996', 12, 'Basar ', 504107, 1),
('srikanth', 'margamsrikanth7@gmail.com', '7675051154', 'rgukt123', '08/07/1996', 20, NULL, NULL, 0),
('test', 'shekhar.goud9@gmail.com', '8328620976', 'rgukt@123', 'null', 21, NULL, NULL, 1),
('hi', 'rangunagaraju100@gmail.com', '8328620976', 'rgukt@123', 'null', 22, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_code`),
  ADD UNIQUE KEY `branch_id` (`branch_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD UNIQUE KEY `Item_id` (`Item_id`);

--
-- Indexes for table `itemlist`
--
ALTER TABLE `itemlist`
  ADD UNIQUE KEY `Item_Id` (`Item_Id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_name`),
  ADD UNIQUE KEY `location_id` (`location_id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD UNIQUE KEY `orderid` (`orderid`);

--
-- Indexes for table `orderlistitem`
--
ALTER TABLE `orderlistitem`
  ADD UNIQUE KEY `Ino` (`Ino`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `Item_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `itemlist`
--
ALTER TABLE `itemlist`
  MODIFY `Item_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `orderid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `orderlistitem`
--
ALTER TABLE `orderlistitem`
  MODIFY `Ino` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
