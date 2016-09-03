-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2015 at 02:15 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stockdb`
--
CREATE DATABASE IF NOT EXISTS `stockdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stockdb`;

-- --------------------------------------------------------

--
-- Table structure for table `business_table`
--

CREATE TABLE IF NOT EXISTS `business_table` (
  `bill_no` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `stock_id` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `total_amt` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10010 ;

--
-- Dumping data for table `business_table`
--

INSERT INTO `business_table` (`bill_no`, `customer_id`, `customer_name`, `phone`, `stock_id`, `category`, `subcategory`, `company`, `model`, `quantity`, `price`, `discount`, `total_amt`, `date`) VALUES
(10001, '-', '', '', '1,', 'Mobiles,', 'Touch,', 'Samsung,', 'note 3 neo,', '1,', '22000,', '', '22000.0', '2015-08-09'),
(10004, '-', 'sahilsodhi', '8968581700', '2,1,', 'Mobiles,Mobiles,', 'Touch,Touch,', 'Gionee,Samsung,', 's7,note 3 neo,', '1,1,', '20000,22000,', '10', '82000.0', '2015-08-09'),
(10007, '-', 'sahil', '1234567890', '1,2,', 'Mobiles,Mobiles,', 'Touch,Touch,', 'Samsung,Gionee,', 'note 3 neo,s7,', '1,2,', '20900.0,19000.0,', '5', '58900.0', '2015-08-14'),
(10008, '-', '', '          ', '1,', 'Mobiles,', 'Touch,', 'Samsung,', 'note 3 neo,', '1,', '18700.0,', '15', '18700.0', '2015-10-31'),
(10009, '-', '', '          ', '3,1,', 'Mobiles,Mobiles,', 'Bar,Touch,', 'Samsung,Samsung,', 'chat,note 3 neo,', '1,1,', '2880.0,17600.0,', '20', '20480.0', '2015-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE IF NOT EXISTS `category_table` (
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_name`) VALUES
('Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `company_table`
--

CREATE TABLE IF NOT EXISTS `company_table` (
  `company_name` varchar(100) NOT NULL,
  PRIMARY KEY (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_table`
--

INSERT INTO `company_table` (`company_name`) VALUES
('Gionee'),
('Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE IF NOT EXISTS `customer_table` (
  `customer_id` int(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `total_business` varchar(100) NOT NULL,
  `pending_amt` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_category_table`
--

CREATE TABLE IF NOT EXISTS `emp_category_table` (
  `category_name` varchar(20) NOT NULL,
  PRIMARY KEY (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_category_table`
--

INSERT INTO `emp_category_table` (`category_name`) VALUES
('Department'),
('Gender'),
('Status');

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE IF NOT EXISTS `emp_login` (
  `emp_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`emp_id`, `username`, `password`) VALUES
('1', 'ss', '123'),
('2', 'ssodhi', '123'),
('3', 'm', '123');

-- --------------------------------------------------------

--
-- Table structure for table `emp_subcategory_table`
--

CREATE TABLE IF NOT EXISTS `emp_subcategory_table` (
  `category_name` varchar(100) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  PRIMARY KEY (`subcategory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_subcategory_table`
--

INSERT INTO `emp_subcategory_table` (`category_name`, `subcategory_name`) VALUES
('Gender', 'Female'),
('Status', 'Left'),
('Gender', 'Male'),
('Department', 'Purchase'),
('Department', 'Sales'),
('Status', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE IF NOT EXISTS `emp_table` (
  `emp_id` varchar(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `department` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salary` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`emp_id`, `emp_name`, `father_name`, `mother_name`, `gender`, `dob`, `department`, `address`, `phone`, `email`, `salary`, `status`, `image_name`) VALUES
('6', 'ROHIT', 'SS', 'SS', 'Male', '1990-07-19', 'Sales', 'JALANDHAR', '2222222222', 'rohit@gmail.com', 10000, 'Left', 'employee_images\\default.png'),
('7', 'SODHI', 'SS', 'SS', 'Male', '2015-07-02', 'Clerk', 'JALANDHAR	', '1111111111', 'sahilsodhi18@yahoo.com', 50000, 'Working', ''),
('8', 'SS', 'SS', 'SS', 'Male', '2015-07-15', 'Officer', 'JALANDHAR', '1234567890', 'ss', 5000, 'Working', 'employee_images\\1437067818538_emp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stock_table`
--

CREATE TABLE IF NOT EXISTS `stock_table` (
  `stock_id` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_table`
--

INSERT INTO `stock_table` (`stock_id`, `category`, `subcategory`, `company`, `model`, `price`, `quantity`, `date`) VALUES
(1, 'Mobiles', 'Touch', 'Samsung', 'note 3 neo', '22000', '0', '2015-07-31'),
(2, 'Mobiles', 'Touch', 'Gionee', 's7', '20000', '7', '2015-08-08'),
(3, 'Mobiles', 'Bar', 'Samsung', 'chat', '3600', '9', '2015-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE IF NOT EXISTS `subcategory_table` (
  `category_name` varchar(100) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  PRIMARY KEY (`subcategory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`category_name`, `subcategory_name`) VALUES
('Mobiles', 'Bar'),
('Mobiles', 'Touch');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_table`
--

CREATE TABLE IF NOT EXISTS `supplier_table` (
  `supplier_id` int(10) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `total_business` varchar(100) NOT NULL,
  `pending_amt` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_table`
--

INSERT INTO `supplier_table` (`supplier_id`, `company_name`, `supplier_name`, `gender`, `address`, `phone`, `email`, `image_name`, `total_business`, `pending_amt`, `status`, `date`) VALUES
(2001, 'RAJ SHREE TRANDERS', 'RAJ KUMAR HIRANI', 'Female', 'JALANDHAR', '1234567898', 'raj@yahoo.com', 'supplier_images\\default.png', '0', '0', 'Activated', '2015-08-14'),
(2002, 'EKART', 'SURESH SODHI', 'Male', 'COMPANY BAGH', '9876888170', 'suresh@yahoo.com', 'supplier_images\\default.png', '0', '0', 'Activated', '2015-12-30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
