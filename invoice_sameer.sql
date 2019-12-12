-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2019 at 07:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice_sameer`
--
CREATE DATABASE IF NOT EXISTS `invoice_sameer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `invoice_sameer`;

-- --------------------------------------------------------

--
-- Table structure for table `account_group`
--

CREATE TABLE `account_group` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bal` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_group`
--

INSERT INTO `account_group` (`id`, `name`, `bal`, `date`, `c_id`, `userid`) VALUES
(1, 'sale account', '10000.00', '2019-03-23', 3, 4),
(2, 'purchase account', '20000.00', '2019-03-23', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` int(11) NOT NULL,
  `b_name` varchar(250) NOT NULL,
  `ac_no` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `bname` varchar(250) NOT NULL,
  `checkno` varchar(250) NOT NULL,
  `t_id` varchar(250) NOT NULL,
  `amount` int(11) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `pay_opt` varchar(250) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `b_name`, `ac_no`, `branch`, `payment`, `bname`, `checkno`, `t_id`, `amount`, `remark`, `pay_opt`, `c_id`, `userid`) VALUES
(1, 'BANK OF INDIA', '123458912345', 'CHANDRAPUR', '6', '', '', '', 1200, ' PAYMENT ', 'withdraw', 2, 3),
(2, 'BIO', '1234567890', 'BVJ', '5', '', '', '123456789', 1000, 'SAMEER ANDANKAR FOR SOFTWARE ', 'withdraw', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bill_department`
--

CREATE TABLE `bill_department` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_department`
--

INSERT INTO `bill_department` (`id`, `name`, `c_id`, `userid`) VALUES
(1, 'cashier', 3, 4),
(2, 'accounts', 3, 4),
(3, 'sale', 3, 4),
(4, 'purchase', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `brand_master`
--

CREATE TABLE `brand_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand_master`
--

INSERT INTO `brand_master` (`id`, `name`, `c_id`, `userid`) VALUES
(1, 'brand', 2, 3),
(2, 'Cp Plus', 3, 4),
(3, 'LG', 2, 3),
(4, 'ertyuiol', 1, 2),
(5, 'Figfjgvb', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gstno` varchar(15) NOT NULL,
  `pan` varchar(250) NOT NULL,
  `integration` varchar(50) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) NOT NULL,
  `acno` varchar(250) NOT NULL,
  `ifsc` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `image` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `email`, `mobile`, `gstno`, `pan`, `integration`, `bank_name`, `branch_name`, `acno`, `ifsc`, `username`, `password`, `status`, `image`, `start_date`, `end_date`) VALUES
(1, 'zodiactech software ', 'samadhi ward chandrapur', 'sam.andankar1990@gmail.com', '9090909090', '27bacpasnkj3829', '', '', 'axis bank', 'bank', '12345678', 'isbinn1092', 'sameer', '1602', 1, 'octocat.jpg', '2019-03-19', '2020-03-30'),
(2, 'NETWIN SYSTEM AND SOFTWARE', 'MG HOUSE PUNE', 'student@gmail.com', '9090909090', '', '', '', '', '', '', '', 'ram', '123', 1, 'sagar-1.jpg', '2019-03-19', '2020-03-19'),
(3, 'Zodiactech Enterprises Ltd.', 'Chandrapur', 'dhiraj44@hotmail.com', '8390966444', '27ASDFG4562AC1Z', 'ASDFG4895A', '', 'AXIS BANK', 'Chandrapur', '91700100987559', 'UTIB0003529', 'dhiraj', 'dhiraj1990', 1, '{\"error\":\"The upload path does not appear to be valid.<\\/p>\"}\"\"', '2019-03-20', '2020-03-20'),
(4, 'ALLY SOFT SOLUTIONS', 'Rajkot', 'vishal.rkcet@gmail.com', '7575865414', '', '', 'no', '', '', '', '', 'vishal', 'vishal', 1, '', '2019-04-30', '2019-07-31'),
(5, 'चंद्रपूर शहर', '', 'vishal.rkcet@gmail.com', '9146128855', '', '', 'yes', '', '', '', '', 'admin', '1234', 1, '', '2019-05-16', '2019-05-16'),
(6, 'ASPM', 'MADHUBAN PLAZA SHIVAJI NAGAR CHANDRPAUR', 'varmaniraj.2829@gmail.com', '9975950950', '271475258522632', 'AIBPV2542D', 'yes', 'ANDHARA BANL', 'CHANDRAPUR', '44987879879488888888888', 'ANDB000000000000000000000000000', 'varmaniraj', 'Niraj@123', 1, '', '2019-05-01', '2020-05-20'),
(7, 'Aditya info', 'samadhi ward near govind swami temple chandrapur', '123@facebook.com', '9325695631', '27bacpasnkj3829', 'Hauab24s3', 'yes', 'Sbi', 'Chandrapur ', '1234567890', 'Sbin0019177 ', 'Aditya', '12345', 1, '15598993923541.jpg', '2019-07-03', '2019-07-10'),
(8, 'sdrtfygujo', '45euhji', 'e67t8yu9@gmail.com', '1234567890', 'qwertyu', 'ertyu', '', 'sbi', 'chandrapur', '1234567890', '12345678', 'sameer', '1602', 1, 'admin.jpg', '2019-09-20', '2020-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `name`, `address`, `mobile`, `gstin`, `c_id`, `userid`) VALUES
(1, 'Dhiraj Sharma', 'MG HOUSE PUNE', '9090909090', '1234567890', 3, 4),
(2, 'Dhiraj Junarkar', 'Visapur', '8390966444', '27asdfv1245c1zx', 2, 3),
(3, 'sameer andankar', 'samadhi ward near govind swami temple chandrapur', '9325695631', '12345678dfghjkvbnm', 1, 2),
(4, 'parag', 'ram nagar', '1234567890', '--', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

CREATE TABLE `employee_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`id`, `name`, `address`, `mobile`, `email`, `age`, `gender`, `c_id`, `userid`) VALUES
(1, 'Rahul Ranjan', 'qwertyuio', '1234567890', 'abc@gmail.com', 11, 'male', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `item_group`
--

CREATE TABLE `item_group` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_group`
--

INSERT INTO `item_group` (`id`, `name`, `c_id`, `userid`) VALUES
(1, '1234567', 2, 3),
(2, 'cctv', 3, 4),
(3, 'TV HD', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `item_location`
--

CREATE TABLE `item_location` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_location`
--

INSERT INTO `item_location` (`id`, `name`, `c_id`, `userid`) VALUES
(1, 'qwert', 2, 3),
(2, 'rack 1', 3, 4),
(3, 'rack 2', 3, 4),
(4, 'G1-R1', 3, 4),
(5, 'HALL ', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `id` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_type` varchar(250) NOT NULL,
  `item_group` varchar(250) NOT NULL,
  `hsn` varchar(250) NOT NULL,
  `unit` decimal(10,0) NOT NULL,
  `location` varchar(300) NOT NULL,
  `company` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `expiry_date` date NOT NULL,
  `min_qty` varchar(200) NOT NULL,
  `max_qty` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `packing` varchar(250) NOT NULL,
  `purchase_rate` varchar(250) NOT NULL,
  `mrp` varchar(250) NOT NULL,
  `net_rate` varchar(250) NOT NULL,
  `gst` int(11) NOT NULL,
  `sales_rate` int(11) NOT NULL,
  `opening_stock` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`id`, `item_code`, `item_name`, `item_type`, `item_group`, `hsn`, `unit`, `location`, `company`, `supplier`, `expiry_date`, `min_qty`, `max_qty`, `size`, `packing`, `purchase_rate`, `mrp`, `net_rate`, `gst`, `sales_rate`, `opening_stock`, `c_id`, `userid`, `barcode`) VALUES
(1, 1, 'camera1.3mp', '2', '2', '110022', '10', '3', '2', '2', '2020-03-23', '5', '100', '0', '1', '1250', '1950', '1250', 18, 1500, '10', 3, 4, ''),
(2, 2, 'camera2.4mp', '2', '2', '110022', '20', '2', '2', '2', '2020-03-23', '5', '100', '0', '1', '1450', '2050', '1450', 18, 1650, '20', 3, 4, ''),
(3, 3, 'dvr', '2', '2', '445566', '1', '3', '2', '2', '2021-01-07', '5', '100', '0', '1', '2650', '4500', '2650', 18, 3050, '5', 3, 4, 'dhiraj123456'),
(4, 1, 'dvr', '1', '1', '112244', '10', '1', '1', '1', '0000-00-00', '5', '100', '0', '10', '3000', '4500', '3000', 18, 3100, '10', 2, 3, ''),
(5, 4, 'Jens', '2', '2', 'g1r1je', '20', '2', '2', '2', '2019-07-13', '100', '200', '28', '', '1000', '1000', '500', 2, 200, '', 3, 4, '1234567890'),
(6, 4, 'Test', '2', '2', 'Sgsh', '0', '2', '2', '2', '2019-07-13', '12', '21', '40', '20', '0', '0', '', 0, 0, '', 3, 4, ''),
(7, 2, '32inc tv ', '1', '3', '23456', '20', '5', '3', '3', '0000-00-00', '1', '10', '32', '1', '1200', '1500', '1500', 18, 1650, '100', 2, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id`, `name`, `c_id`, `userid`) VALUES
(1, 'asdfghjk', 2, 3),
(2, 'cctv camera', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL DEFAULT 'admin',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`id`, `c_id`, `username`, `password`, `role`, `status`) VALUES
(1, 0, 'admin', 'admin', 'superadmin', 1),
(2, 1, 'sameer', '1602', 'admin', 1),
(3, 2, 'ram', '123', 'admin', 1),
(4, 3, 'dhiraj', 'dhiraj1990', 'admin', 1),
(5, 4, 'vishal', 'vishal', 'admin', 1),
(6, 5, 'admin', '1234', 'admin', 1),
(7, 0, 'Aditya', '12345', 'admin', 1),
(8, 7, 'Aditya', '12345', 'admin', 1),
(9, 8, 'sameer', '1602', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paychasebill_master`
--

CREATE TABLE `paychasebill_master` (
  `id` int(11) NOT NULL,
  `billno` varchar(255) NOT NULL,
  `billdate` date NOT NULL,
  `supplierid` int(11) NOT NULL,
  `entryno` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `totalamount` decimal(10,0) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `disscount_per` decimal(10,3) NOT NULL,
  `disscount_plus` decimal(10,3) NOT NULL,
  `gst` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paychasebill_master`
--

INSERT INTO `paychasebill_master` (`id`, `billno`, `billdate`, `supplierid`, `entryno`, `entrydate`, `address`, `mobileno`, `totalamount`, `status`, `disscount_per`, `disscount_plus`, `gst`, `paid`, `c_id`, `userid`) VALUES
(1, '1', '2019-03-26', 2, 1, '2019-03-26', 'mahakali ward, chandrapur', '9960250852', '4838', 1, '0.000', '0.000', 18, 0, 3, 4),
(2, '1', '0000-00-00', 1, 1, '0000-00-00', 'MG HOUSE PUNE', '9090909090', '79650', 1, '0.000', '0.000', 18, 0, 2, 3),
(3, '', '0000-00-00', 2, 77, '2019-07-13', 'mahakali ward, chandrapur', '9960250852', '0', 1, '5.000', '0.000', 2, 0, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

CREATE TABLE `payment_master` (
  `id` int(11) NOT NULL,
  `e_no` int(11) NOT NULL,
  `e_date` date NOT NULL,
  `name` varchar(250) NOT NULL,
  `r_no` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `type` varchar(250) NOT NULL,
  `agroup` varchar(250) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `bankname` varchar(250) NOT NULL,
  `checkno` varchar(250) NOT NULL,
  `t_id` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_master`
--

INSERT INTO `payment_master` (`id`, `e_no`, `e_date`, `name`, `r_no`, `r_date`, `type`, `agroup`, `payment`, `bankname`, `checkno`, `t_id`, `amount`, `remark`, `c_id`, `userid`) VALUES
(1, 1, '0000-00-00', '3', 1, '0000-00-00', 'payment', '', '6', '', '', '', '1000.00', 'TV PAYMENT', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment_option`
--

CREATE TABLE `payment_option` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_option`
--

INSERT INTO `payment_option` (`id`, `name`, `c_id`, `userid`) VALUES
(1, 'by cash', 3, 4),
(2, 'by cheque', 3, 4),
(3, 'RTGS', 3, 4),
(4, 'NEFT', 3, 4),
(5, 'NEFT', 2, 3),
(6, 'CHEQUE', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `id` int(11) NOT NULL,
  `purid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `mrp` decimal(10,2) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `gst` decimal(10,2) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`id`, `purid`, `groupid`, `itemid`, `mrp`, `qty`, `discount`, `gst`, `total`) VALUES
(2, 2, 1, 4, '4500.00', 15, '0.00', '18.00', '79650'),
(3, 3, 2, 0, '1000.00', 10, '5.00', '2.00', '0'),
(4, 1, 2, 2, '2050.00', 2, '0.00', '18.00', '4838');

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturndetails`
--

CREATE TABLE `purchasereturndetails` (
  `id` int(11) NOT NULL,
  `purretid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `mrp` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `returnid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasereturndetails`
--

INSERT INTO `purchasereturndetails` (`id`, `purretid`, `groupid`, `itemid`, `mrp`, `qty`, `discount`, `gst`, `total`, `returnid`) VALUES
(1, 1, 3, 7, '1500.00', 2, 10, 18, 3186, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchasereturn_master`
--

CREATE TABLE `purchasereturn_master` (
  `id` int(11) NOT NULL,
  `billno` varchar(255) NOT NULL,
  `billdate` date NOT NULL,
  `supplier` int(11) NOT NULL,
  `entryno` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `totalamount` decimal(10,0) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `dis_per` decimal(10,2) NOT NULL,
  `dis_plus` decimal(10,2) NOT NULL,
  `gst` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasereturn_master`
--

INSERT INTO `purchasereturn_master` (`id`, `billno`, `billdate`, `supplier`, `entryno`, `entrydate`, `address`, `mobileno`, `invoiceno`, `totalamount`, `status`, `dis_per`, `dis_plus`, `gst`, `paid`, `c_id`, `userid`) VALUES
(1, '12', '0000-00-00', 3, 12, '0000-00-00', 'NAGPUR', '1234567890', 0, '3186', 1, '10.00', '0.00', 18, 0, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `refund_master`
--

CREATE TABLE `refund_master` (
  `id` int(11) NOT NULL,
  `e_no` int(11) NOT NULL,
  `e_date` date NOT NULL,
  `name` varchar(250) NOT NULL,
  `r_no` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `type` varchar(250) NOT NULL,
  `agroup` varchar(250) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `bankname` varchar(250) NOT NULL,
  `checkno` varchar(250) NOT NULL,
  `t_id` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salesbilldetails`
--

CREATE TABLE `salesbilldetails` (
  `id` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `mrp` varchar(250) NOT NULL,
  `dis` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cgst` int(11) NOT NULL,
  `sgst` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesbilldetails`
--

INSERT INTO `salesbilldetails` (`id`, `salesid`, `groupid`, `itemid`, `mrp`, `dis`, `qty`, `cgst`, `sgst`, `total`) VALUES
(1, 1, 2, 1, '1950', 0, 2, 9, 9, '4602.00'),
(2, 1, 2, 2, '2050', 0, 2, 9, 9, '4838.00'),
(4, 2, 1, 4, '4500', 0, 5, 9, 9, '26550.00'),
(5, 2, 1, 4, '4500', 10, 3, 9, 9, '14337.00'),
(7, 4, 2, 0, '1000', 0, 10, 1, 1, '0.00'),
(9, 5, 3, 7, '1500', 0, 5, 9, 9, '8850.00');

-- --------------------------------------------------------

--
-- Table structure for table `salesbill_master`
--

CREATE TABLE `salesbill_master` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `stock` varchar(250) NOT NULL,
  `salesman` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `dis_per` varchar(250) NOT NULL,
  `dis_plus` varchar(250) NOT NULL,
  `cgst` varchar(250) NOT NULL,
  `sgst` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `roundoff` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesbill_master`
--

INSERT INTO `salesbill_master` (`id`, `name`, `invoice_no`, `invoice_date`, `stock`, `salesman`, `total`, `dis_per`, `dis_plus`, `cgst`, `sgst`, `paid`, `roundoff`, `c_id`, `userid`) VALUES
(1, '1', 1, '2019-03-26', '', 'sam', '9440.00', '0', '0', '18', '18', '0', '0.00', 3, 4),
(2, '2', 1, '0000-00-00', '', 'rajesh', '40887.00', '10', '0', '18', '18', '0', '0.00', 2, 3),
(3, '2', 2, '0000-00-00', '', 'ds,', '0', '0', '00', '0', '0', '0', '0.00', 2, 3),
(4, '1', 2, '2019-07-13', '', 'Rahul', '0.00', '0', '0', '1', '1', '0', '0.00', 3, 4),
(5, '4', 3, '0000-00-00', '', 'sameer', '8850.00', '0', '0', '9', '9', '10000', '0.00', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturndetails`
--

CREATE TABLE `salesreturndetails` (
  `id` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `mrp` varchar(250) NOT NULL,
  `dis` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cgst` int(11) NOT NULL,
  `sgst` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `returnid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salesreturn_master`
--

CREATE TABLE `salesreturn_master` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `total` varchar(250) NOT NULL,
  `dis_per` varchar(250) NOT NULL,
  `dis_plus` varchar(250) NOT NULL,
  `cgst` varchar(250) NOT NULL,
  `sgst` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `id` int(11) NOT NULL,
  `oprationid` int(11) NOT NULL,
  `stockdate` date NOT NULL,
  `opration` varchar(255) NOT NULL,
  `itemid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`id`, `oprationid`, `stockdate`, `opration`, `itemid`, `qty`, `status`) VALUES
(2, 1, '2019-03-26', 'sales', 1, 2, 1),
(3, 1, '2019-03-26', 'sales', 2, 2, 1),
(5, 2, '2019-06-09', 'purchase', 4, 15, 1),
(6, 2, '2019-06-24', 'sales', 4, 5, 1),
(7, 2, '2019-06-24', 'sales', 4, 3, 1),
(8, 3, '2019-07-13', 'purchase', 0, 10, 1),
(9, 1, '2019-07-13', 'purchase', 2, 2, 1),
(11, 4, '2019-07-13', 'sales', 0, 10, 1),
(12, 1, '2019-09-20', 'purchase_return', 7, 2, 1),
(14, 5, '2019-09-20', 'sales', 7, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_master`
--

CREATE TABLE `supplier_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `con_person` varchar(250) NOT NULL,
  `con_number` varchar(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_master`
--

INSERT INTO `supplier_master` (`id`, `name`, `address`, `mobile`, `gstin`, `con_person`, `con_number`, `c_id`, `userid`) VALUES
(1, 'Dhiraj Sharma supllier', 'MG HOUSE PUNE', '9090909090', 'qwer234ertyu', 'sdfghj', '1234567890', 2, 3),
(2, 'VT Computers', 'mahakali ward, chandrapur', '9960250852', '27asdfc4578ac1zx', 'Vaibhav Thote', '9960250852', 3, 4),
(3, 'LG ', 'NAGPUR', '1234567890', 'drfygyuhujoi', 'kjfdkjgk', '1234567890', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_group`
--
ALTER TABLE `account_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_department`
--
ALTER TABLE `bill_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_master`
--
ALTER TABLE `brand_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_master`
--
ALTER TABLE `employee_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_group`
--
ALTER TABLE `item_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_location`
--
ALTER TABLE `item_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paychasebill_master`
--
ALTER TABLE `paychasebill_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_master`
--
ALTER TABLE `payment_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_option`
--
ALTER TABLE `payment_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasereturndetails`
--
ALTER TABLE `purchasereturndetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasereturn_master`
--
ALTER TABLE `purchasereturn_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_master`
--
ALTER TABLE `refund_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesbilldetails`
--
ALTER TABLE `salesbilldetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesbill_master`
--
ALTER TABLE `salesbill_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesreturndetails`
--
ALTER TABLE `salesreturndetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesreturn_master`
--
ALTER TABLE `salesreturn_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_master`
--
ALTER TABLE `supplier_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_group`
--
ALTER TABLE `account_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bill_department`
--
ALTER TABLE `bill_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand_master`
--
ALTER TABLE `brand_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_master`
--
ALTER TABLE `employee_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_group`
--
ALTER TABLE `item_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_location`
--
ALTER TABLE `item_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_master`
--
ALTER TABLE `item_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paychasebill_master`
--
ALTER TABLE `paychasebill_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_master`
--
ALTER TABLE `payment_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_option`
--
ALTER TABLE `payment_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchasereturndetails`
--
ALTER TABLE `purchasereturndetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchasereturn_master`
--
ALTER TABLE `purchasereturn_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund_master`
--
ALTER TABLE `refund_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesbilldetails`
--
ALTER TABLE `salesbilldetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salesbill_master`
--
ALTER TABLE `salesbill_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salesreturndetails`
--
ALTER TABLE `salesreturndetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesreturn_master`
--
ALTER TABLE `salesreturn_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_master`
--
ALTER TABLE `stock_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier_master`
--
ALTER TABLE `supplier_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
