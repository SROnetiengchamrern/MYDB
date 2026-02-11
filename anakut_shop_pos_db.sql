-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2026 at 02:56 AM
-- Server version: 5.7.36
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anakut_shop_pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

DROP TABLE IF EXISTS `sma_addresses`;
CREATE TABLE IF NOT EXISTS `sma_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_addresses`
--

INSERT INTO `sma_addresses` (`id`, `company_id`, `line1`, `line2`, `city`, `postal_code`, `state`, `country`, `phone`, `updated_at`) VALUES
(1, 34, 'Spain', 'Paris', 'Paris', '2233', 'PS', 'France', '0101010101', '2022-05-30 07:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

DROP TABLE IF EXISTS `sma_adjustments`;
CREATE TABLE IF NOT EXISTS `sma_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `reference_no`, `warehouse_id`, `note`, `attachment`, `created_by`, `updated_by`, `updated_at`, `count_id`) VALUES
(1, '2020-12-11 08:14:00', 'PR/0030', 1, '', NULL, 27, NULL, NULL, NULL),
(2, '2020-12-11 10:13:00', 'PR/0031', 1, '', NULL, 27, NULL, NULL, NULL),
(3, '2020-12-11 10:38:00', 'PR/0032', 1, '', NULL, 27, NULL, NULL, NULL),
(4, '2020-12-21 13:21:00', 'PR/0033', 1, '', NULL, 27, NULL, NULL, NULL),
(5, '2021-01-13 12:34:00', 'PR/0034', 1, '', NULL, 27, NULL, NULL, NULL),
(6, '2021-02-02 15:09:00', 'PR/0035', 1, '', NULL, 27, NULL, NULL, NULL),
(7, '2021-02-02 15:09:00', 'PR/0036', 1, '', NULL, 27, NULL, NULL, NULL),
(8, '2021-03-19 16:36:00', 'PR/0037', 1, '', NULL, 27, NULL, NULL, NULL),
(9, '2021-03-19 16:37:00', 'PR/0038', 1, '', NULL, 27, NULL, NULL, NULL),
(10, '2021-05-25 13:59:00', 'PR/0039', 1, '', NULL, 27, NULL, NULL, NULL),
(11, '2021-06-03 15:15:00', 'PR/0040', 1, '&lt;p&gt;tsdfsf&lt;&sol;p&gt;', NULL, 27, NULL, NULL, NULL),
(12, '2021-06-03 15:31:00', 'PR/0041', 1, '', NULL, 27, NULL, NULL, NULL),
(13, '2021-06-03 15:32:00', 'PR/0042', 1, '', NULL, 27, NULL, NULL, NULL),
(14, '2021-07-25 10:26:00', 'PR/0043', 1, '&lt;p&gt;ខូច stinct 1 case នៅថៃ្ង 01-Jul-2021&lt;&sol;p&gt;', NULL, 27, NULL, NULL, NULL),
(15, '2021-09-20 20:35:00', 'PR/0044', 1, '&lt;p&gt;poor quality&lt;&sol;p&gt;', NULL, 27, NULL, NULL, NULL),
(16, '2021-09-27 16:40:00', 'PR/0045', 1, '', NULL, 27, NULL, NULL, NULL),
(17, '2021-09-27 16:40:00', 'PR/0046', 1, '', NULL, 27, NULL, NULL, NULL),
(18, '2021-10-09 09:30:00', 'PR/0047', 1, '&lt;p&gt;gift&lt;&sol;p&gt;', NULL, 27, NULL, NULL, NULL),
(19, '2021-10-19 17:15:00', 'PR/0048', 1, '', NULL, 27, NULL, NULL, NULL),
(20, '2021-10-23 09:25:00', 'PR/0049', 1, '', NULL, 27, NULL, NULL, NULL),
(21, '2021-11-14 11:50:00', 'PR/0050', 1, '', NULL, 27, NULL, NULL, NULL),
(22, '2021-11-14 11:52:00', 'PR/0051', 1, '', NULL, 27, NULL, NULL, NULL),
(23, '2021-11-15 15:49:00', 'PR/0052', 2, '', NULL, 27, NULL, NULL, NULL),
(24, '2021-11-15 15:53:00', 'PR/0053', 1, '', NULL, 27, NULL, NULL, NULL),
(25, '2021-11-15 15:56:00', 'PR/0054', 2, '', NULL, 27, NULL, NULL, NULL),
(26, '2021-12-16 08:41:00', 'PR/0055', 1, '', NULL, 27, NULL, NULL, NULL),
(27, '2021-12-20 16:39:00', 'PR/0056', 1, '', NULL, 27, NULL, NULL, NULL),
(28, '2021-12-21 11:30:00', 'PR/0057', 1, '', NULL, 27, NULL, NULL, NULL),
(29, '2021-12-23 10:25:00', 'PR/0058', 1, '', NULL, 27, NULL, NULL, NULL),
(30, '2021-12-23 23:25:00', 'PR/0059', 1, '', NULL, 27, NULL, NULL, NULL),
(31, '2022-01-03 12:15:00', 'PR/0060', 1, '', NULL, 27, NULL, NULL, NULL),
(32, '2022-01-03 12:15:00', 'PR/0061', 1, '', NULL, 27, NULL, NULL, NULL),
(33, '2022-01-03 15:56:00', 'PR/0062', 1, '', NULL, 27, NULL, NULL, NULL),
(34, '2022-01-18 16:16:00', 'PR/0063', 1, '', NULL, 27, NULL, NULL, NULL),
(35, '2022-03-25 09:17:00', 'PR/0064', 1, '', NULL, 27, NULL, NULL, NULL),
(36, '2022-05-30 14:18:00', '001212002', 1, '', NULL, 27, NULL, NULL, NULL),
(37, '2022-07-19 20:14:00', 'PR/0001', 1, '', NULL, 27, NULL, NULL, NULL),
(38, '2022-07-20 22:57:00', 'PR/0002', 1, '', NULL, 27, NULL, NULL, NULL),
(39, '2022-07-21 08:41:00', 'PR/0003', 1, '', NULL, 27, NULL, NULL, NULL),
(40, '2022-07-21 08:44:00', 'PR/0004', 1, '', NULL, 27, NULL, NULL, NULL),
(41, '2022-08-27 13:52:00', 'PR/0005', 4, '', NULL, 48, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

DROP TABLE IF EXISTS `sma_adjustment_items`;
CREATE TABLE IF NOT EXISTS `sma_adjustment_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `spoiled` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adjustment_id` (`adjustment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `type`, `spoiled`) VALUES
(1, 1, 384, NULL, '5.0000', 1, NULL, 'subtraction', ''),
(2, 2, 384, NULL, '20.0000', 1, NULL, 'addition', ''),
(3, 3, 384, NULL, '10.0000', 1, NULL, 'addition', ''),
(4, 4, 227, NULL, '1.0000', 1, NULL, 'subtraction', ''),
(5, 5, 384, NULL, '10.0000', 1, NULL, 'subtraction', ''),
(6, 6, 229, NULL, '12.0000', 1, NULL, 'subtraction', ''),
(7, 7, 403, NULL, '6.0000', 1, NULL, 'subtraction', ''),
(8, 8, 392, NULL, '100.0000', 1, NULL, 'addition', ''),
(9, 9, 390, NULL, '100.0000', 1, NULL, 'addition', ''),
(10, 10, 419, NULL, '1.0000', 1, NULL, 'subtraction', ''),
(12, 11, 419, NULL, '100.0000', 1, NULL, 'addition', ''),
(13, 11, 229, NULL, '100.0000', 1, NULL, 'addition', ''),
(14, 11, 232, NULL, '100.0000', 1, NULL, 'addition', ''),
(15, 12, 415, NULL, '1.0000', 1, NULL, 'addition', ''),
(16, 13, 415, NULL, '1.0000', 1, NULL, 'addition', ''),
(17, 14, 432, NULL, '1.0000', 1, NULL, 'subtraction', ''),
(18, 14, 380, NULL, '5.0000', 1, NULL, 'subtraction', ''),
(19, 15, 379, 1, '1.0000', 1, NULL, 'subtraction', ''),
(20, 16, 227, NULL, '20.0000', 1, NULL, 'addition', ''),
(21, 17, 227, NULL, '20.0000', 1, NULL, 'addition', ''),
(22, 18, 228, NULL, '10.0000', 1, NULL, 'subtraction', ''),
(23, 19, 436, 8, '10.0000', 1, NULL, 'addition', ''),
(24, 20, 436, 8, '1.0000', 1, NULL, 'addition', ''),
(25, 21, 436, 8, '100.0000', 1, NULL, 'addition', ''),
(26, 22, 436, 8, '15.0000', 1, NULL, 'subtraction', ''),
(27, 23, 436, 8, '1.0000', 2, NULL, 'addition', ''),
(28, 24, 436, 8, '3.0000', 1, NULL, 'addition', ''),
(29, 25, 436, 8, '4.0000', 2, NULL, 'addition', ''),
(31, 26, 415, NULL, '100.0000', 1, NULL, 'subtraction', ''),
(32, 27, 379, 1, '4.0000', 1, NULL, 'addition', ''),
(33, 28, 415, NULL, '201.0000', 1, NULL, 'addition', ''),
(34, 29, 489, NULL, '10.0000', 1, NULL, 'addition', ''),
(35, 30, 492, NULL, '20.0000', 1, NULL, 'addition', ''),
(36, 31, 379, 1, '99.0000', 1, NULL, 'addition', ''),
(37, 32, 379, 1, '700.0000', 1, NULL, 'subtraction', ''),
(38, 33, 497, NULL, '10.0000', 1, NULL, 'addition', ''),
(41, 34, 233, NULL, '50.0000', 1, NULL, 'addition', ''),
(42, 34, 255, NULL, '10.0000', 1, NULL, 'subtraction', ''),
(43, 34, 488, NULL, '4.0000', 1, NULL, 'addition', ''),
(45, 35, 487, NULL, '40.0000', 1, NULL, 'addition', ''),
(46, 36, 518, NULL, '2.0000', 1, NULL, 'subtraction', ''),
(47, 36, 229, NULL, '1.0000', 1, NULL, 'subtraction', ''),
(48, 37, 232, NULL, '50.0000', 1, NULL, 'addition', ''),
(49, 38, 517, NULL, '50.0000', 1, NULL, 'addition', ''),
(50, 39, 485, NULL, '50.0000', 1, NULL, 'addition', ''),
(51, 40, 380, NULL, '50.0000', 1, NULL, 'addition', ''),
(52, 41, 539, NULL, '10.0000', 4, NULL, 'subtraction', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

DROP TABLE IF EXISTS `sma_brands`;
CREATE TABLE IF NOT EXISTS `sma_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`) VALUES
(1, 'New', 'New', NULL, 'new'),
(2, 'USA', 'USA', '785a158ebba8c77b0539bd0ae26231be.jpg', 'usa');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

DROP TABLE IF EXISTS `sma_calendar`;
CREATE TABLE IF NOT EXISTS `sma_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

DROP TABLE IF EXISTS `sma_captcha`;
CREATE TABLE IF NOT EXISTS `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

DROP TABLE IF EXISTS `sma_categories`;
CREATE TABLE IF NOT EXISTS `sma_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`) VALUES
(25, 'Bread', 'Bread', '51b10744213cfa885a8db842f678ab21.png', 0, '1'),
(26, 'នំCake', 'នំCake', 'da4f9619690ff1696d9aff33891406b0.jpg', 0, '1'),
(27, 'Coffee', 'Coffee', 'a3980de2094acbdeb562bd18924165db.jpg', 41, '1'),
(28, 'Dry Stock', 'Dry Stock', '', NULL, NULL),
(29, 'Guest Supply', 'Guest Supply', '965dd89231df570eabd33c51f956b2f4.jpg', NULL, NULL),
(30, 'Milk Tea', 'Milk Tea', 'bc8c271b4c2a3e0cdcf660191c3a6ee2.jpg', 41, '1'),
(31, 'Machin', 'Machin', '022af5b7fe4706ef360938c183d965c0.jpg', 0, '1'),
(32, 'Soft Drink', 'Soft Drink', '66f646239b0bfec1212739a54e3276c9.jpg', 41, '1'),
(33, 'Topping', 'Topping', '', NULL, NULL),
(34, 'ប្រភេទ បន្លែរ', 'ប្រភេទ បន្លែរ', 'a226b2bd66fcd410ab6ef262be53af9d.jpg', NULL, NULL),
(35, 'ប្រភេទ ផ្សេងៗ', 'ប្រភេទ ផ្សេងៗ', 'cd54c19db7b321700e87c4a1c7428661.jpg', NULL, NULL),
(37, 'Fruit', 'Fruit', NULL, 0, NULL),
(38, 'washing', 'Washing Service', NULL, 0, NULL),
(39, 'set1', 'set1', NULL, 0, NULL),
(41, 'drink', 'drink', NULL, 0, NULL),
(42, 'Services', 'Services', NULL, 0, NULL),
(43, 'WOODS', 'WOODS', '', NULL, NULL),
(44, 'AIR MASSAGE', 'AIR MASSAGE', '', 0, '1'),
(47, 'Mart', 'Mart', NULL, 0, NULL),
(48, 'baby care', 'baby care', NULL, 0, '1'),
(49, 'Pastry', 'Pastry', '8d46f2990e99ff6a7f17b64f37f9a9c9.jpg', 0, NULL),
(50, 'Food', 'Food', '63a145a2f03b50e45ab6d4ff00d70ce9.jpg', 0, NULL),
(51, 'សាប៊ូកក់សក់', 'សាប៊ូកក់សក់', NULL, 0, NULL),
(52, 'category', 'category', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

DROP TABLE IF EXISTS `sma_combo_items`;
CREATE TABLE IF NOT EXISTS `sma_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_combo_items`
--

INSERT INTO `sma_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `unit_price`) VALUES
(2, 514, '03733060', '12.0000', '12.0000'),
(3, 528, 'Cheese Stick213', '1.0000', '3.0000'),
(4, 528, 'E00001', '1.0000', '3.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

DROP TABLE IF EXISTS `sma_companies`;
CREATE TABLE IF NOT EXISTS `sma_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `table` varchar(50) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text CHARACTER SET utf8mb4,
  `payment_term` int(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT '0',
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `group_id_2` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `table`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`) VALUES
(1, 3, 'customer', 1, 'General', 'អតិថិជនទូទៅ', '', 'អតិថិជនទូទៅ', '', 'ផ្ទះលេខ 387Beo  មហាវិថីម៉ៅសេទុង សង្កាត់ផ្សាដេប៉ូIII​ ខណ្ឌទួលគោក រាជាធានីភ្នំពេញ', 'PP', '', '', '', '012235561', '', '', '', '', '', '', '', NULL, 0, 'logo.png', -2147483324, NULL, 11, 'sophorn'),
(2, NULL, 'biller', NULL, NULL, 'AnakutDigital Solution', '', 'AnakutDigital Solution', '', '@87, st 164 (In-front of Backtouk School)', 'Phnom Penh', '', '', '', '010601168', 'anakutdigital@gmail.com', '', '', '', '', '', '', '', 0, 'logo2.png', 0, NULL, NULL, NULL),
(3, 4, 'supplier', NULL, NULL, 'AnakutDigital Solution', '', 'AnakutDigital Solution', '', '', 'Phnom Penh', '', '', '', '0123456789', 'anakutdigital@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(4, 3, 'table', NULL, NULL, 'Table A', 'Table A', 'Table A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walkin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(5, 3, 'table', NULL, NULL, 'Table B', 'Table B', 'Table B', NULL, '', '', '', '', '', '', 'walkin@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(6, 3, 'table', NULL, NULL, 'Table C', 'Table C', 'Table C', NULL, '', '', '', '', '', '', 'walkin@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(7, 3, 'customer', 1, 'General', 'Big Cup', '', 'AnakutDigital Solution', '', 'pp', '', '', '', '', '0123456789', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 31, NULL, NULL, NULL),
(8, 3, 'customer', 1, 'General', 'ODM', '', 'AB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(9, 3, 'customer', 1, 'General', 'Dara 123', '', '012345678', '', 'Olympic', 'PP', '', '', '', '012345678', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 665, NULL, 12, 'Whole Sale'),
(10, 4, 'supplier', NULL, NULL, 'haha', '', 'abc', '', 'pp', 'pp', '', '', 'Cambodia', '012537484', 'ags@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(11, 3, 'customer', 1, 'General', 'Dara', '', '098765432', '', 'Phnom Penh', 'Phnom Penh', '', '', '', '098765432', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 12, 'Whole Sale'),
(12, 3, 'customer', 3, 'VIP', 'Draraae', '', '0192', '', 'Phnom Penh', '0192873492', '', '', '', '0192873492', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(13, 3, 'customer', 1, 'General', 'សុខ', '', 'សុខ', '', 'ទួលស្វាយ', 'ភ្នំពេញ', '', '', '', '09887766/0898767566', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(14, 4, 'supplier', NULL, NULL, 'AB', '', 'AB', '', 'ភ្នំពេញ', 'ភ្នំពេញ', '', '', '', '09887766/0898767566', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(15, 3, 'customer', 1, 'General', '012214514', '', 'sophea', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 16, NULL, NULL, NULL),
(16, 3, 'customer', 1, 'General', '077611777', '', '077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(17, 3, 'customer', 1, 'General', '093123456', '', '077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(18, 3, 'customer', 1, 'General', '087456000', '', '111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(19, 3, 'customer', 1, 'General', '087456000', '', '111', '', '', '', '', '', '', '078456000', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(20, 3, 'customer', 1, 'General', 'តុ និង បន្ចាប់', '', 'តុ និង បន្ចាប់', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(21, 3, 'customer', 1, 'General', 'dara 011200200', '', 'dara 011200200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', -20, NULL, NULL, NULL),
(22, 3, 'customer', 1, 'General', 'vireak011011011', '', 'vireak011011011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(24, 3, 'customer', 1, 'General', 'table1', '', 'table1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(25, 3, 'customer', 1, 'General', 'alex', '', 'alex', '', '', '', '', '', '', '012345678', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(26, 3, 'customer', 1, 'General', 'test', '', 'test', '', 'PP', 'PP', '', '', '', '12345', 'test@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(27, 3, 'customer', 1, 'General', 'Neary', '', 'General', '', '', '', '', '', '', '012345423', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(28, 3, 'customer', 1, 'General', 'test', '', 'test', '', 'Phnom Penh', '', '', '', '', '123456789', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(29, 3, 'customer', 1, 'General', 'B', '', 'A', '', '', '', '', '', '', '09776565565', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(30, 3, 'customer', 3, 'VIP', 'Coca', '', 'Anakut', '10', 'TK', 'Phnom Penh', '', '', '', '086622430', 'coloa@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(31, 4, 'supplier', NULL, NULL, 'Supplier', '', 'Company', '', '', 'Phnom Penh', '', '', '', '010601168', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(32, 3, 'customer', 3, 'VIP', 'Machha', '', '087554246', '', 'Takeo', 'PP', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 12, 'Whole Sale'),
(33, 3, 'table', NULL, NULL, 'Table D', 'Table D', 'Table D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walkin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, NULL, NULL),
(34, 3, 'customer', 3, 'VIP', 'Leo Messi', '', '010101010', '', 'France', 'Paris', '', '', '', '', '', 'Rang', '', '', '', '', '', NULL, 0, 'logo.png', 0, '10000.0000', NULL, NULL),
(35, 3, 'table', NULL, NULL, 'Table E', 'Table E', 'Table E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walkin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'logo.png', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

DROP TABLE IF EXISTS `sma_costing`;
CREATE TABLE IF NOT EXISTS `sma_costing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT '0',
  `overselling` tinyint(1) DEFAULT '0',
  `option_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(75, '2020-12-06', 227, 75, 34, 219, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '997.0000', 1, 0, NULL),
(76, '2020-12-06', 228, 76, 34, 220, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '999.0000', 1, 0, NULL),
(77, '2020-12-06', 231, 77, 34, 223, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '998.0000', 1, 0, NULL),
(78, '2020-12-06', 230, 78, 35, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '999.0000', 1, 0, NULL),
(79, '2020-12-06', 235, 79, 35, 227, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '999.0000', 1, 0, NULL),
(121, '2020-12-17', 384, 123, 59, 380, '2.0000', '5.0000', '5.0000', '8.0000', '8.0000', '13.0000', 1, 0, NULL),
(240, '2020-12-29', 228, 219, 102, 220, '2.0000', '0.0000', NULL, '3.0000', '3.0000', '997.0000', 1, 0, NULL),
(275, '2020-12-29', 288, 240, 110, 280, '1.0000', '0.0000', NULL, '1.8800', '1.8800', '999.0000', 1, 0, NULL),
(350, '2020-12-29', 227, 287, 116, 219, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '983.0000', 1, 0, NULL),
(380, '2021-01-13', 288, 317, 146, 393, '1.0000', '1.8198', '1.8198', '1.8800', '1.8800', '97.0000', 1, 0, NULL),
(383, '2021-01-13', 368, 319, 148, 360, '9.0000', '0.0000', NULL, '0.5700', '0.5700', '988.0000', 1, 0, NULL),
(440, '2021-01-18', 407, 375, 163, 413, '45.0000', '1000.0000', '1000.0000', '1.0000', '1.0000', '9945.0000', 1, 0, NULL),
(444, '2021-01-19', 228, 379, 166, 220, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '996.0000', 1, 0, NULL),
(460, '2021-01-26', 227, 399, 180, 219, '5.0000', '0.0000', '0.0000', '3.0000', '3.0000', '972.0000', 1, 0, NULL),
(461, '2021-01-26', 228, 400, 180, 220, '5.0000', '0.0000', NULL, '3.0000', '3.0000', '987.0000', 1, 0, NULL),
(474, '2021-01-28', 227, 416, 190, 219, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '971.0000', 1, 0, NULL),
(475, '2021-01-28', 228, 417, 190, 220, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '990.0000', 1, 0, NULL),
(480, '2021-01-29', 229, 422, 193, 221, '2.0000', '0.0000', NULL, '4.0000', '4.0000', '998.0000', 1, 0, NULL),
(485, '2021-02-05', 2147483647, 427, 196, NULL, '1.0000', '0.0000', '0.0000', '100.0000', '100.0000', NULL, NULL, 0, NULL),
(487, '2021-02-05', 227, 429, 198, 219, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '965.0000', 1, 0, NULL),
(488, '2021-02-05', 227, 430, 199, 219, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '964.0000', 1, 0, NULL),
(532, '2021-05-25', 419, 472, 237, 434, '4.0000', '7.0000', '7.0000', '7.2000', '7.2000', '2.0000', 1, 0, NULL),
(533, '2021-05-25', 419, 474, 239, 435, '5.0000', '7.0000', '7.0000', '10.0000', '10.0000', '3.0000', 1, 0, NULL),
(534, '2021-05-26', 229, 475, 240, 221, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '985.0000', 1, 0, NULL),
(535, '2021-05-26', 237, 476, 240, 229, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '996.0000', 1, 0, NULL),
(536, '2021-05-26', 228, 477, 240, 220, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '989.0000', 1, 0, NULL),
(603, '2021-07-06', 228, 544, 277, 220, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '988.0000', 1, 0, NULL),
(636, '2021-07-26', 229, 577, 295, 221, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '1084.0000', 1, 0, NULL),
(637, '2021-07-26', 234, 578, 295, 226, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '995.0000', 1, 0, NULL),
(707, '2021-09-27', 227, 656, 338, 461, '1.0000', '0.5213', '0.5213', '3.0000', '3.0000', '138.0000', 1, 0, NULL),
(718, '2021-09-28', 227, 667, 344, 461, '1.0000', '0.5213', '0.5213', '3.6000', '3.6000', '134.0000', 1, 0, NULL),
(719, '2021-09-28', 227, 668, 344, 461, '1.0000', '0.5213', '0.5213', '3.6000', '3.6000', '134.0000', 1, 0, NULL),
(721, '2021-10-20', 227, 673, 348, 461, '1.0000', '0.5213', '0.5213', '3.0000', '3.0000', '133.0000', 1, 0, NULL),
(722, '2021-10-20', 229, 674, 348, 221, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '1082.0000', 1, 0, NULL),
(731, '2021-10-26', 227, 688, 357, 461, '1.0000', '0.5213', '0.5213', '3.0000', '3.0000', '132.0000', 1, 0, NULL),
(734, '2021-10-27', 227, 691, 360, 461, '1.0000', '0.5213', '0.5213', '3.0000', '3.0000', '130.0000', 1, 0, NULL),
(756, '2021-11-03', 436, 712, 376, 488, '-42.0000', '2.0000', '2.0000', '20.0000', '20.0000', '0.0000', 1, 0, 8),
(757, '2021-11-03', 436, 712, 376, NULL, '24.0000', '2.0000', '2.0000', '20.0000', '20.0000', NULL, 1, 1, NULL),
(807, '2021-11-08', 445, 760, 416, 503, '5.0000', '0.0000', '0.0000', '1.0000', '1.0000', '995.0000', 1, 0, NULL),
(857, '2021-12-15', 232, 810, 451, 224, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '1088.0000', 1, 0, NULL),
(858, '2021-12-15', 234, 811, 451, 226, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '991.0000', 1, 0, NULL),
(976, '2021-12-23', 2147483647, 932, 535, NULL, '1.0000', '0.0000', '0.0000', '100.0000', '100.0000', NULL, NULL, 0, NULL),
(980, '2021-12-23', 2147483647, 936, 538, NULL, '1.0000', '0.0000', '0.0000', '100.0000', '100.0000', NULL, NULL, 0, NULL),
(1012, '2021-12-27', 227, 968, 563, 461, '1.0000', '0.5213', '0.5213', '5.0000', '5.0000', '77.0000', 1, 0, NULL),
(1013, '2021-12-27', 229, 969, 563, 221, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '1081.0000', 1, 0, NULL),
(1014, '2021-12-27', 227, 970, 564, 461, '1.0000', '0.5213', '0.5213', '5.0000', '5.0000', '76.0000', 1, 0, NULL),
(1109, '2022-01-24', 232, 1069, 619, 224, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '1076.0000', 1, 0, NULL),
(1120, '2022-01-27', 228, 1080, 625, 462, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '89.0000', 1, 0, NULL),
(1121, '2022-01-27', 228, 1081, 626, 462, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '88.0000', 1, 0, NULL),
(1265, '2022-03-20', 228, 1228, 690, 462, '20.0000', '0.0000', NULL, '3.0000', '3.0000', '68.0000', 1, 0, NULL),
(1266, '2022-03-20', 232, 1229, 690, 224, '20.0000', '0.0000', NULL, '2.0000', '2.0000', '1052.0000', 1, 0, NULL),
(1267, '2022-03-20', 496, 1230, 691, 617, '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', 1, 0, NULL),
(1331, '2022-03-25', 227, 1300, 708, 514, '1.0000', '0.0000', '0.0000', '5.0000', '5.0000', '1.0000', 1, 0, NULL),
(1354, '2022-04-04', 430, 1323, 724, 453, '1.0000', '0.3000', '0.3000', '0.3600', '0.3600', '999.0000', 1, 0, NULL),
(1360, '2022-04-08', 227, 1329, 730, 461, '1.0000', '0.5208', '0.5208', '5.0000', '5.0000', '36.0000', 1, 0, NULL),
(1361, '2022-04-21', 228, 1330, 731, 462, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '67.0000', 1, 0, NULL),
(1372, '2022-04-24', 232, 1341, 737, 625, '1.0000', '0.0000', '0.0000', '2.7000', '2.7000', '9.0000', 1, 0, NULL),
(1397, '2022-05-11', 2147483647, 1368, 755, NULL, '4.0000', '0.0000', '0.0000', '-19.5000', '-19.5000', NULL, NULL, 0, NULL),
(1398, '2022-05-11', 2147483647, 1369, 756, NULL, '2.0000', '0.0000', '0.0000', '-9.5000', '-9.5000', NULL, NULL, 0, NULL),
(1446, '2022-05-30', 348, 1399, 764, NULL, '1.0000', '0.0000', '0.0000', '15.0000', '15.0000', NULL, 1, 1, NULL),
(1461, '2022-06-07', 239, 1410, 770, 616, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '99.0000', 1, 0, NULL),
(1462, '2022-06-07', 230, 1411, 770, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '998.0000', 1, 0, NULL),
(1463, '2022-06-07', 266, 1412, 770, 258, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '999.0000', 1, 0, NULL),
(1464, '2022-06-07', 231, 1413, 770, 631, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '0.0000', 1, 0, NULL),
(1465, '2022-06-07', 227, 1414, 770, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '9.0000', 1, 0, NULL),
(1466, '2022-06-07', 454, 1415, 771, 524, '-99999999990.0000', '0.0000', NULL, '102.0000', '102.0000', '0.0000', 1, 0, NULL),
(1467, '2022-06-07', 454, 1415, 771, NULL, '1.0000', '0.0000', NULL, '102.0000', '102.0000', NULL, 1, 1, NULL),
(1468, '2022-06-07', 459, 1416, 771, 529, '-299999998.0000', '0.0000', NULL, '35.0000', '35.0000', '0.0000', 1, 0, NULL),
(1469, '2022-06-07', 459, 1416, 771, NULL, '1.0000', '0.0000', NULL, '35.0000', '35.0000', NULL, 1, 1, NULL),
(1470, '2022-06-07', 460, 1417, 771, 530, '-99999983.0000', '0.0000', NULL, '40.0000', '40.0000', '0.0000', 1, 0, NULL),
(1471, '2022-06-07', 460, 1417, 771, NULL, '1.0000', '0.0000', NULL, '40.0000', '40.0000', NULL, 1, 1, NULL),
(1472, '2022-06-08', 472, 1418, 772, 542, '1.0000', '0.0000', NULL, '10.0000', '10.0000', '9.0000', 1, 0, NULL),
(1473, '2022-06-08', 464, 1419, 773, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '9.0000', 1, 0, NULL),
(1474, '2022-06-08', 510, 1420, 773, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1475, '2022-06-08', 513, 1421, 774, 628, '1.0000', '0.0000', '0.0000', '2.5000', '2.5000', '119.0000', 1, 0, NULL),
(1476, '2022-06-09', 510, 1422, 775, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1477, '2022-06-09', 462, 1423, 776, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '9.0000', 1, 0, NULL),
(1478, '2022-06-09', 464, 1424, 776, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '8.0000', 1, 0, NULL),
(1479, '2022-06-09', 492, 1425, 776, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '49.0000', 1, 0, NULL),
(1480, '2022-06-09', 488, 1426, 776, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1481, '2022-06-09', 468, 1427, 776, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '9.0000', 1, 0, NULL),
(1482, '2022-06-09', 492, 1428, 777, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '48.0000', 1, 0, NULL),
(1483, '2022-06-09', 488, 1429, 777, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1484, '2022-06-10', 468, 1430, 778, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '8.0000', 1, 0, NULL),
(1485, '2022-06-13', 524, 1431, 779, NULL, '1.0000', '2000.0000', '2000.0000', '2500.0000', '2500.0000', NULL, 1, 1, NULL),
(1486, '2022-06-14', 510, 1432, 780, NULL, '1.0000', '0.0000', '0.0000', '10.8000', '10.8000', NULL, 1, 1, NULL),
(1487, '2022-06-14', 488, 1433, 780, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1488, '2022-06-14', 463, 1434, 781, 533, '1.0000', '0.0000', NULL, '0.0000', '0.0000', '9.0000', 1, 0, NULL),
(1489, '2022-06-14', 464, 1435, 781, 534, '2.0000', '0.0000', NULL, '2.5000', '2.5000', '6.0000', 1, 0, NULL),
(1490, '2022-06-14', 488, 1436, 782, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1491, '2022-06-14', 492, 1437, 782, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '47.0000', 1, 0, NULL),
(1492, '2022-06-14', 462, 1438, 783, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '8.0000', 1, 0, NULL),
(1493, '2022-06-14', 468, 1439, 783, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '7.0000', 1, 0, NULL),
(1494, '2022-06-14', 463, 1440, 784, 533, '1.0000', '0.0000', NULL, '2.0000', '2.0000', '8.0000', 1, 0, NULL),
(1495, '2022-06-14', 504, 1441, 784, 599, '1.0000', '3.0000', '3.0000', '5.0000', '5.0000', '19.0000', 1, 0, NULL),
(1496, '2022-06-15', 513, 1442, 785, 628, '1.0000', '0.0000', '0.0000', '2.5000', '2.5000', '118.0000', 1, 0, NULL),
(1499, '2022-06-16', 510, 1445, 787, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1500, '2022-06-16', 510, 1446, 787, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1501, '2022-06-16', 510, 1447, 788, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1502, '2022-06-16', 507, 1448, 789, 605, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', '99.0000', 1, 0, NULL),
(1503, '2022-06-16', 464, 1449, 790, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '5.0000', 1, 0, NULL),
(1504, '2022-06-16', 462, 1450, 791, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '7.0000', 1, 0, NULL),
(1505, '2022-06-17', 510, 1451, 792, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1506, '2022-06-17', 488, 1452, 792, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1507, '2022-06-17', 464, 1453, 793, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '4.0000', 1, 0, NULL),
(1508, '2022-06-22', 504, 1454, 794, 599, '1.0000', '3.0000', '3.0000', '5.0000', '5.0000', '18.0000', 1, 0, NULL),
(1509, '2022-06-22', 510, 1455, 794, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1513, '2022-04-01', 464, 1459, 795, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '3.0000', 1, 0, NULL),
(1514, '2022-04-01', 462, 1460, 795, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '6.0000', 1, 0, NULL),
(1515, '2022-04-01', 510, 1461, 795, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1516, '2022-06-23', 370, 1462, 796, 362, '1.0000', '0.0000', NULL, '2.3000', '2.3000', '999.0000', 1, 0, NULL),
(1517, '2022-06-23', 372, 1463, 796, 364, '1.0000', '0.0000', NULL, '2.3000', '2.3000', '999.0000', 1, 0, NULL),
(1518, '2022-06-27', 505, 1464, 797, NULL, '7.0000', '0.2500', '0.2500', '2.0000', '2.0000', NULL, 1, 1, NULL),
(1519, '2022-06-27', 492, 1465, 798, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '46.0000', 1, 0, NULL),
(1520, '2022-06-27', 510, 1466, 798, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1521, '2022-06-30', 521, 1471, 800, NULL, '1.0000', '1.0000', '1.0000', '3.0000', '3.0000', NULL, 1, 1, NULL),
(1522, '2022-06-30', 521, 1472, 800, NULL, '1.0000', '1.0000', '1.0000', '3.0000', '3.0000', NULL, 1, 1, NULL),
(1523, '2022-07-04', 488, 1473, 801, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1524, '2022-07-04', 510, 1474, 801, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1525, '2022-07-04', 492, 1475, 801, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '45.0000', 1, 0, NULL),
(1526, '2022-07-04', 510, 1476, 802, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1527, '2022-07-04', 468, 1477, 802, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '6.0000', 1, 0, NULL),
(1528, '2022-07-04', 462, 1478, 802, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '5.0000', 1, 0, NULL),
(1529, '2022-07-04', 464, 1479, 802, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '2.0000', 1, 0, NULL),
(1530, '2022-07-04', 464, 1480, 803, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '1.0000', 1, 0, NULL),
(1531, '2022-07-04', 510, 1481, 803, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1532, '2022-07-04', 510, 1482, 804, NULL, '1.0000', '0.0000', '0.0000', '10.8000', '10.8000', NULL, 1, 1, NULL),
(1533, '2022-07-04', 468, 1483, 805, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '5.0000', 1, 0, NULL),
(1534, '2022-07-04', 462, 1484, 806, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '4.0000', 1, 0, NULL),
(1535, '2022-07-04', 464, 1485, 806, 534, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1536, '2022-07-05', 463, 1486, 807, 533, '1.0000', '0.0000', NULL, '2.0000', '2.0000', '7.0000', 1, 0, NULL),
(1537, '2022-07-05', 462, 1487, 807, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '3.0000', 1, 0, NULL),
(1538, '2022-07-05', 510, 1488, 807, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1539, '2022-07-05', 504, 1490, 809, 599, '1.0000', '3.0000', '3.0000', '5.0000', '5.0000', '17.0000', 1, 0, NULL),
(1540, '2022-07-05', 472, 1491, 809, 542, '1.0000', '0.0000', NULL, '10.0000', '10.0000', '8.0000', 1, 0, NULL),
(1541, '2022-07-05', 468, 1492, 809, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '4.0000', 1, 0, NULL),
(1542, '2022-07-05', 470, 1493, 809, 540, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '9.0000', 1, 0, NULL),
(1543, '2022-07-05', 462, 1494, 809, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '2.0000', 1, 0, NULL),
(1544, '2022-07-05', 492, 1495, 809, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '44.0000', 1, 0, NULL),
(1545, '2022-07-05', 510, 1496, 809, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1546, '2022-07-05', 504, 1497, 810, 599, '1.0000', '3.0000', '3.0000', '5.0000', '5.0000', '16.0000', 1, 0, NULL),
(1547, '2022-07-05', 470, 1498, 810, 540, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '8.0000', 1, 0, NULL),
(1548, '2022-07-05', 472, 1499, 810, 542, '1.0000', '0.0000', NULL, '10.0000', '10.0000', '7.0000', 1, 0, NULL),
(1549, '2022-07-05', 462, 1500, 810, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '1.0000', 1, 0, NULL),
(1550, '2022-07-05', 468, 1501, 810, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '3.0000', 1, 0, NULL),
(1551, '2022-07-05', 464, 1502, 810, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1552, '2022-07-05', 510, 1503, 810, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1553, '2022-07-05', 510, 1504, 811, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1554, '2022-07-05', 468, 1505, 811, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '2.0000', 1, 0, NULL),
(1555, '2022-07-05', 464, 1506, 811, 534, '-1.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1556, '2022-07-05', 464, 1506, 811, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1557, '2022-07-07', 495, 1507, 812, NULL, '1.0000', '0.0000', '0.0000', '1.0000', '1.0000', NULL, 1, 1, NULL),
(1558, '2022-07-08', 462, 1508, 813, 532, '1.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1559, '2022-07-08', 464, 1509, 813, 534, '-2.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1560, '2022-07-08', 464, 1509, 813, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1561, '2022-07-08', 462, 1510, 814, NULL, '1.0000', '0.0000', NULL, '5.5000', '5.5000', NULL, 1, 1, NULL),
(1562, '2022-07-08', 464, 1511, 814, 534, '-3.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1563, '2022-07-08', 464, 1511, 814, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1564, '2022-07-08', 464, 1512, 815, 534, '-4.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1565, '2022-07-08', 464, 1512, 815, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1566, '2022-07-08', 464, 1513, 816, 534, '-5.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1567, '2022-07-08', 464, 1513, 816, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1568, '2022-07-08', 470, 1514, 817, 540, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '7.0000', 1, 0, NULL),
(1569, '2022-07-08', 510, 1515, 818, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1570, '2022-07-08', 510, 1516, 819, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1571, '2022-07-08', 510, 1517, 820, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1572, '2022-07-08', 472, 1518, 821, 542, '1.0000', '0.0000', NULL, '10.0000', '10.0000', '6.0000', 1, 0, NULL),
(1573, '2022-07-08', 510, 1519, 822, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1574, '2022-07-08', 510, 1520, 823, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1575, '2022-07-08', 510, 1521, 824, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1576, '2022-07-08', 464, 1522, 825, 534, '-6.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1577, '2022-07-08', 464, 1522, 825, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1578, '2022-07-08', 464, 1523, 826, 534, '-7.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1579, '2022-07-08', 464, 1523, 826, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1580, '2022-07-08', 510, 1524, 827, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1581, '2022-07-09', 488, 1525, 828, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1582, '2022-07-09', 510, 1526, 828, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1583, '2022-07-11', 464, 1527, 829, 534, '-8.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1584, '2022-07-11', 464, 1527, 829, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1585, '2022-07-11', 510, 1528, 829, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1586, '2022-07-11', 510, 1529, 829, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1587, '2022-07-11', 464, 1530, 830, 534, '-9.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1588, '2022-07-11', 464, 1530, 830, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1589, '2022-07-11', 510, 1531, 830, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1590, '2022-07-11', 492, 1532, 831, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '43.0000', 1, 0, NULL),
(1591, '2022-07-11', 510, 1533, 831, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1592, '2022-07-12', 464, 1534, 832, 534, '-10.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1593, '2022-07-12', 464, 1534, 832, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1594, '2022-07-12', 510, 1535, 832, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1595, '2022-07-12', 230, 1536, 833, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '997.0000', 1, 0, NULL),
(1596, '2022-07-12', 227, 1537, 833, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '8.0000', 1, 0, NULL),
(1597, '2022-07-12', 231, 1538, 833, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '9.0000', 1, 0, NULL),
(1598, '2022-07-12', 230, 1539, 833, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '997.0000', 1, 0, NULL),
(1599, '2022-07-12', 239, 1540, 833, 616, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '98.0000', 1, 0, NULL),
(1600, '2022-07-12', 416, 1541, 834, 428, '1.0000', '1.0000', '1.0000', '2.0000', '2.0000', '199.0000', 1, 0, NULL),
(1601, '2022-07-12', 379, 1542, 834, 483, '-498.0000', '0.4550', '0.4550', '1.0000', '1.0000', '0.0000', 1, 0, 1),
(1602, '2022-07-12', 379, 1542, 834, 483, '-498.0000', '0.4550', '0.4550', '1.0000', '1.0000', '0.0000', 1, 0, 1),
(1603, '2022-07-12', 379, 1542, 834, NULL, '1.0000', '0.4550', '0.4550', '1.0000', '1.0000', NULL, 1, 1, NULL),
(1604, '2022-07-13', 510, 1543, 835, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1605, '2022-07-13', 510, 1544, 836, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1606, '2022-07-14', 231, 1545, 837, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '8.0000', 1, 0, NULL),
(1607, '2022-07-14', 227, 1546, 837, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '7.0000', 1, 0, NULL),
(1608, '2022-07-14', 510, 1547, 837, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1609, '2022-07-14', 510, 1548, 838, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1610, '2022-07-14', 510, 1549, 839, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1611, '2022-07-15', 526, 1550, 840, NULL, '1.0000', '2000.0000', '2000.0000', '2500.0000', '2500.0000', NULL, 1, 1, NULL),
(1612, '2022-07-15', 462, 1551, 841, 532, '-1.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1613, '2022-07-15', 462, 1551, 841, NULL, '1.0000', '0.0000', NULL, '5.5000', '5.5000', NULL, 1, 1, NULL),
(1614, '2022-07-15', 464, 1552, 841, 534, '-11.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1615, '2022-07-15', 464, 1552, 841, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1616, '2022-07-15', 488, 1553, 842, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1617, '2022-07-16', 532, 1554, 843, NULL, '1.0000', '800.0000', '800.0000', '1000.0000', '1000.0000', NULL, 1, 1, NULL),
(1618, '2022-07-16', 464, 1555, 844, 534, '-12.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1619, '2022-07-16', 464, 1555, 844, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1620, '2022-07-16', 510, 1556, 845, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1621, '2022-07-16', 510, 1557, 846, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1622, '2022-07-16', 464, 1558, 847, 534, '-13.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1623, '2022-07-16', 464, 1558, 847, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1624, '2022-07-17', 536, 1559, 848, 657, '2.0000', '1.0000', '1.0000', '2.0000', '2.0000', '8.0000', 1, 0, NULL),
(1625, '2022-07-17', 536, 1560, 849, 657, '1.0000', '1.0000', '1.0000', '1.8000', '1.8000', '7.0000', 1, 0, NULL),
(1632, '2022-07-19', 510, 1567, 853, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1633, '2022-07-19', 492, 1568, 854, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '42.0000', 1, 0, NULL),
(1634, '2022-07-19', 510, 1569, 854, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1635, '2022-07-19', 488, 1570, 855, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1640, '2022-07-20', 510, 1575, 856, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1641, '2022-07-20', 492, 1576, 856, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '41.0000', 1, 0, NULL),
(1642, '2022-07-20', 510, 1577, 857, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1643, '2022-07-20', 492, 1578, 858, 567, '1.0000', '2.0000', '2.0000', '5.0000', '5.0000', '40.0000', 1, 0, NULL),
(1656, '2022-07-20', 462, 1585, 860, 532, '-23.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1657, '2022-07-20', 462, 1585, 860, NULL, '1.0000', '0.0000', NULL, '5.5000', '5.5000', NULL, 1, 1, NULL),
(1658, '2022-07-20', 464, 1586, 860, 534, '-119.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1659, '2022-07-20', 464, 1586, 860, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1660, '2022-07-20', 462, 1587, 861, 532, '-24.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1661, '2022-07-20', 462, 1587, 861, NULL, '1.0000', '0.0000', NULL, '5.5000', '5.5000', NULL, 1, 1, NULL),
(1662, '2022-07-20', 464, 1588, 861, 534, '-120.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1663, '2022-07-20', 464, 1588, 861, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1664, '2022-07-20', 462, 1589, 862, 532, '-25.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1666, '2022-07-20', 464, 1590, 862, 534, '-121.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1668, '2022-07-21', 468, 1593, 864, 538, '1.0000', '0.0000', NULL, '10.5000', '10.5000', '1.0000', 1, 0, NULL),
(1669, '2022-07-21', 462, 1594, 864, 532, '-25.0000', '0.0000', NULL, '5.5000', '5.5000', '0.0000', 1, 0, NULL),
(1670, '2022-07-21', 462, 1594, 864, NULL, '1.0000', '0.0000', NULL, '5.5000', '5.5000', NULL, 1, 1, NULL),
(1671, '2022-07-21', 464, 1595, 865, 534, '-121.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1672, '2022-07-21', 464, 1595, 865, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1673, '2022-07-21', 464, 1596, 866, 534, '-122.0000', '0.0000', NULL, '2.5000', '2.5000', '0.0000', 1, 0, NULL),
(1674, '2022-07-21', 464, 1596, 866, NULL, '1.0000', '0.0000', NULL, '2.5000', '2.5000', NULL, 1, 1, NULL),
(1675, '2022-07-21', 478, 1597, 867, 548, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '9.0000', 1, 0, NULL),
(1676, '2022-07-21', 474, 1598, 867, 544, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '9.0000', 1, 0, NULL),
(1677, '2022-07-21', 473, 1599, 867, 543, '1.0000', '0.0000', NULL, '2.5000', '2.5000', '9.0000', 1, 0, NULL),
(1678, '2022-07-26', 231, 1600, 868, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '5.0000', 1, 0, NULL),
(1679, '2022-07-26', 227, 1601, 868, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '6.0000', 1, 0, NULL),
(1680, '2022-07-28', 510, 1602, 869, NULL, '1.0000', '0.0000', '0.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1681, '2022-07-28', 488, 1603, 869, NULL, '1.0000', '10.0000', '10.0000', '12.0000', '12.0000', NULL, 1, 1, NULL),
(1682, '2022-08-03', 227, 1605, 871, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '5.0000', 1, 0, NULL),
(1683, '2022-08-03', 227, 1606, 872, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '4.0000', 1, 0, NULL),
(1684, '2022-08-09', 227, 1607, 873, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '3.0000', 1, 0, NULL),
(1685, '2022-08-09', 231, 1608, 873, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '4.0000', 1, 0, NULL),
(1686, '2022-08-27', 232, 1609, 874, 636, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '59.0000', 1, 0, NULL),
(1687, '2022-08-27', 231, 1610, 874, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '3.0000', 1, 0, NULL),
(1688, '2022-08-27', 230, 1611, 874, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '995.0000', 1, 0, NULL),
(1689, '2022-08-27', 232, 1612, 875, 636, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '58.0000', 1, 0, NULL),
(1690, '2022-08-27', 231, 1613, 875, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '2.0000', 1, 0, NULL),
(1691, '2022-08-27', 239, 1614, 876, 616, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '96.0000', 1, 0, NULL),
(1692, '2022-08-27', 266, 1615, 876, 258, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '998.0000', 1, 0, NULL),
(1693, '2022-08-27', 230, 1616, 876, 222, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '994.0000', 1, 0, NULL),
(1694, '2022-08-27', 231, 1617, 877, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '1.0000', 1, 0, NULL),
(1695, '2022-08-27', 227, 1618, 877, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '2.0000', 1, 0, NULL),
(1696, '2022-08-29', 266, 1619, 878, 258, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '997.0000', 1, 0, NULL),
(1697, '2022-08-29', 231, 1620, 878, 626, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '0.0000', 1, 0, NULL),
(1698, '2022-08-29', 227, 1621, 878, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '1.0000', 1, 0, NULL),
(1699, '2022-09-01', 239, 1622, 879, 616, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '95.0000', 1, 0, NULL),
(1700, '2022-09-01', 239, 1623, 879, 616, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '95.0000', 1, 0, NULL),
(1701, '2022-09-01', 227, 1624, 879, 624, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '0.0000', 1, 0, NULL),
(1702, '2022-09-02', 227, 1625, 880, 592, '1.0000', '0.5154', '0.5154', '5.0000', '5.0000', '0.0000', 1, 0, NULL),
(1703, '2024-05-06', 266, 1626, 881, 258, '1.0000', '0.0000', NULL, '3.0000', '3.0000', '996.0000', 1, 0, NULL),
(1704, '2024-05-06', 231, 1627, 881, 444, '1.0000', '0.0000', '0.0000', '3.0000', '3.0000', '29995.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

DROP TABLE IF EXISTS `sma_currencies`;
CREATE TABLE IF NOT EXISTS `sma_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0',
  `symbol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(1, 'USD', 'USD', '1.0000', 0, '$'),
(3, 'REL', 'KHR', '4100.0000', 0, '៛');

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

DROP TABLE IF EXISTS `sma_customer_groups`;
CREATE TABLE IF NOT EXISTS `sma_customer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(3, 'VIP', -10),
(5, 'normal', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

DROP TABLE IF EXISTS `sma_date_format`;
CREATE TABLE IF NOT EXISTS `sma_date_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

DROP TABLE IF EXISTS `sma_deliveries`;
CREATE TABLE IF NOT EXISTS `sma_deliveries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_deliveries`
--

INSERT INTO `sma_deliveries` (`id`, `date`, `sale_id`, `do_reference_no`, `sale_reference_no`, `customer`, `address`, `note`, `status`, `attachment`, `delivered_by`, `received_by`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '2021-05-25 14:42:00', 239, 'Ry Rat', '$A/1450', 'សុខ', '<p>ទួលស្វាយ ភ្នំពេញ   <br>Tel: 09887766/0898767566 Email:</p>', '', 'packing', NULL, 'Ry Rat', '', 27, NULL, NULL),
(2, '2021-05-26 11:45:00', 240, 'Ry Rat', '$A/1451', 'អតិថិជនទូទៅ', '<p>ផ្ទះលេខ 387Beo  មហាវិថីម៉ៅសេទុង សង្កាត់ផ្សាដេប៉ូIII ខណ្ឌទួលគោក រាជាធានីភ្នំពេញ PP   <br>លេខទូរសព្ទ: 012235561 Email:</p>', '', 'packing', NULL, 'Ry Rat', '', 27, NULL, NULL),
(3, '2021-09-28 15:18:00', 295, '123', '$A/1453', 'Draraae', '<p><br>Tel: 0192873492 Email:</p>', '', 'packing', NULL, 'me', 'srey sa', 27, NULL, NULL),
(4, '2021-12-09 10:39:00', 439, 'DO/0002', '$A/2399', 'អតិថិជនទូទៅ', '<p>ផ្ទះលេខ 387Beo  មហាវិថីម៉ៅសេទុង សង្កាត់ផ្សាដេប៉ូIII ខណ្ឌទួលគោក រាជាធានីភ្នំពេញ PP   <br>Tel: 012235561 Email:</p>', '', 'packing', NULL, '', '', 27, NULL, NULL),
(5, '2022-04-26 10:48:00', 735, 'DO/0003', '$A/0064', 'អតិថិជនទូទៅ', '<p>ផ្ទះលេខ 387Beo  មហាវិថីម៉ៅសេទុង សង្កាត់ផ្សាដេប៉ូIII ខណ្ឌទួលគោក រាជាធានីភ្នំពេញ PP   <br>Tel: 012235561 Email:</p>', '', 'packing', NULL, '', '', 27, NULL, NULL),
(6, '2022-05-16 15:18:00', 756, '123', '$A/1491', 'Machha', '<p>Takeo PP   <br>Tel:  Email:</p>', '', 'packing', NULL, '123', '', 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

DROP TABLE IF EXISTS `sma_deposits`;
CREATE TABLE IF NOT EXISTS `sma_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_deposits`
--

INSERT INTO `sma_deposits` (`id`, `date`, `company_id`, `amount`, `paid_by`, `note`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '2022-05-30 14:37:00', 34, '10000.0000', 'leo', '<p>hello hello</p>', 27, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

DROP TABLE IF EXISTS `sma_expenses`;
CREATE TABLE IF NOT EXISTS `sma_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

DROP TABLE IF EXISTS `sma_expense_categories`;
CREATE TABLE IF NOT EXISTS `sma_expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expent_type`
--

DROP TABLE IF EXISTS `sma_expent_type`;
CREATE TABLE IF NOT EXISTS `sma_expent_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expend_name` varchar(54) DEFAULT NULL,
  `expend_description` varchar(54) DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_expent_type`
--

INSERT INTO `sma_expent_type` (`id`, `expend_name`, `expend_description`, `date`, `reference`) VALUES
(14, 'ទិញប្រេងឆា', '', '2019-12-06 19:24:00', 'EXP/2019/12/0001'),
(15, 'បង្គ្រប់លីេប្រាក់បងខា(ប្តីបងភី)', '', '2019-12-07 19:22:00', 'EXP/2019/12/0001'),
(16, 'អាពី', '', '2019-12-08 19:50:00', 'EXP/2019/12/0001'),
(18, 'ទិញកាតទូរស័ព្ទ', '', '2019-12-10 19:04:00', 'EXP/2019/12/0001'),
(21, 'ជិះកង់បី', '', '2019-12-15 18:48:00', 'EXP/2019/12/0001'),
(22, 'ទឹកត្រី', '', '2019-12-15 18:49:00', 'EXP/2019/12/0001'),
(23, 'ទិញសាប៊ូ', '', '2019-12-25 08:14:00', 'EXP/2019/12/0001'),
(24, 'ទិញគុយទាវអោយចែ', '', '2019-12-27 16:34:00', 'EXP/2019/12/0001'),
(25, 'ម៉ូតូឌុប', '', '2020-01-01 13:55:00', 'EXP/2020/01/0001'),
(26, 'អូសអីវ៉ាន់ចូលផ្សារ', '', '2020-01-03 14:07:00', 'EXP/2020/01/0001'),
(27, 'ទិញឥវ៉ាន់online', '', '2020-01-05 12:10:00', 'ទិញឥវ៉ាន់online'),
(28, 'ទិញទឹកដោះគោ', '', '2020-01-05 18:54:00', 'ទិញទឹកដោះគោ'),
(29, 'បុគ្គលិកខ្ចីលុយ', '', '2020-01-06 17:11:00', 'បុគ្គលិកខ្ចីលុយ'),
(30, '6.25', '', '2020-01-09 17:20:00', 'Food'),
(32, '0.5', '', '2020-01-15 18:08:00', 'ទិញទឺកអោយបងពី'),
(33, 'បង្គ្រប់ប្រាក់ខែ', '', '2020-01-18 12:54:00', 'បង្គ្រប់ប្រាក់ខែ'),
(34, 'ទិញថ្នាំអោយបង', '', '2020-01-30 18:11:00', 'ទិញថ្នាំអោយបង'),
(35, 'ទិញផ្លែឈើសែន', '', '2020-02-01 17:15:00', 'ទិញផ្លែឈើសែន'),
(36, 'ចាក់សាំងឡាន', '', '2020-02-01 17:54:00', 'ចាក់សាំងឡាន'),
(37, 'បង់ថ្លៃទឹក', '', '2020-02-05 17:43:00', 'បង់ថ្លៃទឹក'),
(38, 'ទិញនំសែន', '', '2020-02-08 15:24:00', 'ទិញនំសែន'),
(39, 'ទិញមាន់សែន', '', '2020-02-11 19:24:00', 'ទិញមាន់សែន'),
(40, 'ទិញហ្វឺត', '', '2020-02-11 19:32:00', 'ទិញហ្វឺត'),
(41, 'ទិញស្រាសែន', '', '2020-02-11 19:34:00', 'ទិញស្រាសែន'),
(42, 'បងផាតដកទិញម្ហូប', '', '2020-02-12 17:28:00', 'បងផាតដកទិញម្ងូប'),
(43, 'ចែពៅដកជិះតុតុ', '', '2020-02-12 17:31:00', 'ចែពៅដកជិះតុតុ'),
(44, 'យកកាត់សក់', '', '2020-02-23 16:24:00', 'អាម៉ាប់'),
(45, 'ទិញគ្រឿង', '', '2020-02-26 19:32:00', 'ទិញគ្រឿង'),
(46, 'ថ្លៃដឺកអង្ករ', '', '2020-02-26 19:34:00', 'ថ្លៃដឺកអង្ករ'),
(47, 'ទិញព្រីភ្លើង', '', '2020-02-27 20:01:00', 'ទិញព្រីភ្លើង'),
(48, '1.25', '', '2020-02-28 17:47:00', 'ទិញបបរអោយអុំ'),
(49, 'ទិញបបរអោយអុំ', '', '2020-02-28 17:52:00', 'ទិញបបរអោយអុំ'),
(50, 'ទិញអំបោស', '', '2020-02-28 17:56:00', 'ទិញអំបោស'),
(51, 'ទិញបាកាសអោយចែពៅ', '', '2020-02-29 19:42:00', 'ទិញបាកាសអោយចែពៅ'),
(52, 'អោយនីននីនកាត់សក់', '', '2020-03-01 19:18:00', 'អោយនីននីនកាត់សក់'),
(53, 'ទិញសៀវភៅ', '', '2020-03-02 20:22:00', 'ទិញសៀវភៅ'),
(54, 'ទិញថ្នាំ', '', '2020-03-09 20:54:00', 'ទិញថ្នាំ'),
(55, 'ទីញថ្នាំលី', '', '2020-03-10 20:24:00', 'ទិញថ្នាំលី'),
(56, 'tes', '', '2020-03-15 19:26:00', 'tes'),
(57, 'អោយនីនទិញំ', '', '2020-03-31 19:52:00', 'អោយនីននីនទិញអីញូូុំ'),
(58, 'ចែលាបជិះតុតទៅលក់', '', '2020-04-02 09:29:00', 'ចែលាបដកជិះតុតទៅលក់'),
(59, 'ផាសុី', '', '2020-04-02 12:16:00', 'កន្លែងផាសុី'),
(60, 'ទិញអីញំុនៅកន្លែងលក់', '', '2020-04-02 12:19:00', 'ចែលាបទិញអីញំុនៅកន្លែងលក់'),
(61, 'រទេះដឹកអីវ៉ាន', '', '2020-04-02 12:21:00', 'រទេះដឹកអីវ៉ាននៅកន្លែងលក់'),
(62, 'តុត​តុត', '', '2020-04-02 12:23:00', 'អ៊ំផាតជិះតុត'),
(63, 'ទិញអាកុល', '', '2020-04-03 19:29:00', 'ទិញអាកុល'),
(64, 'សេវាអនឡាញ', '', '2020-04-03 19:31:00', 'សេវាអីវ៉ានអនឡាញបងវី'),
(65, 'ទិញសាច់ជ្រុួក', '', '2020-04-09 18:20:00', 'ទិញសាច់ជ្រូូក'),
(66, 'food', '', '2021-12-07 16:07:00', 'EXP/0001'),
(67, 'ប្រាក់ខែបុគ្គលិក', '', '2021-12-14 19:36:00', 'ប្រាក់ខែបុគ្គលិក'),
(68, 'Test', '', '2022-04-12 09:53:00', 'Test '),
(69, 'ជួលផ្ទះ', '', '2022-07-27 13:28:00', 'EXP/0001');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

DROP TABLE IF EXISTS `sma_gift_cards`;
CREATE TABLE IF NOT EXISTS `sma_gift_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_gift_cards`
--

INSERT INTO `sma_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `customer`, `balance`, `expiry`, `created_by`) VALUES
(1, '2021-02-05 02:17:37', '0001', '10.0000', 9, '012345678', '10.0000', '2023-02-05', '27'),
(2, '2021-06-29 09:10:42', '10212331', '12.0000', 7, 'AnakutDigital Solution', '12.0000', '2023-06-29', '27'),
(3, '2021-08-04 08:42:41', '012214514', '1.0000', 11, '098765432', '1.0000', '2023-08-04', '27'),
(4, '2021-12-23 09:29:16', '01', '10.0000', 7, 'AnakutDigital Solution', '10.0000', '2023-12-23', '27'),
(5, '2021-12-23 09:30:02', '09', '5.0000', 7, 'AnakutDigital Solution', '2.0000', '2022-01-08', '27'),
(6, '2021-12-23 09:34:02', '02', '5.0000', 7, 'AnakutDigital Solution', '0.0000', '2023-12-23', '27'),
(7, '2022-02-17 04:13:13', '4286090113028920', '8.0000', 15, 'sophea', '8.0000', '2024-02-17', '27'),
(8, '2022-08-05 10:04:19', '1231', '12.0000', 7, 'AnakutDigital Solution', '12.0000', '2024-08-05', '27');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

DROP TABLE IF EXISTS `sma_gift_card_topups`;
CREATE TABLE IF NOT EXISTS `sma_gift_card_topups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `card_id` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

DROP TABLE IF EXISTS `sma_groups`;
CREATE TABLE IF NOT EXISTS `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(5, 'sales', 'Sales Staff'),
(6, 'cashier', 'cashier'),
(7, 'account', 'Account Staff'),
(8, 'stock', 'stock '),
(9, 'stock-control', 'Stock-Control'),
(10, 'customer', 'for testing'),
(11, 'for_customer', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `sma_location`
--

DROP TABLE IF EXISTS `sma_location`;
CREATE TABLE IF NOT EXISTS `sma_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sma_location`
--

INSERT INTO `sma_location` (`id`, `name`, `code`, `slug`) VALUES
(3, 'AnakutDigital Solution', 'AnakutDigital Solution', 'anakutdigital-solution');

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

DROP TABLE IF EXISTS `sma_login_attempts`;
CREATE TABLE IF NOT EXISTS `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

DROP TABLE IF EXISTS `sma_migrations`;
CREATE TABLE IF NOT EXISTS `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

DROP TABLE IF EXISTS `sma_notifications`;
CREATE TABLE IF NOT EXISTS `sma_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_notifications`
--

INSERT INTO `sma_notifications` (`id`, `comment`, `date`, `from_date`, `till_date`, `scope`) VALUES
(1, '<p>Thank you for purchasing Stock Manager Advance. Please don\'t forget to check the documentation in help folder. If you find any error/bug, please email to support@tecdiary.com with details. You can send us your valued suggestions/feedback too.</p><p>Please rate Stock Manager Advance on your download page of codecanyon.net</p>', '2014-08-14 23:00:57', '2015-01-01 00:00:00', '2017-01-01 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

DROP TABLE IF EXISTS `sma_order_ref`;
CREATE TABLE IF NOT EXISTS `sma_order_ref` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT '1',
  `qu` int(11) NOT NULL DEFAULT '1',
  `po` int(11) NOT NULL DEFAULT '1',
  `to` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '1',
  `do` int(11) NOT NULL DEFAULT '1',
  `pay` int(11) NOT NULL DEFAULT '1',
  `re` int(11) NOT NULL DEFAULT '1',
  `rep` int(11) NOT NULL DEFAULT '1',
  `ex` int(11) NOT NULL DEFAULT '1',
  `ppay` int(11) NOT NULL DEFAULT '1',
  `qa` int(11) DEFAULT '1',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2022-05-01', 2, 1, 3, 2, 121, 1, 123, 1, 1, 1, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

DROP TABLE IF EXISTS `sma_payments`;
CREATE TABLE IF NOT EXISTS `sma_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `approval_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(36, '2020-12-10 11:36:00', NULL, NULL, 1, 'POP/0204', NULL, 'cash', '', '', '', '', '', 'Visa', '50.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(80, '2020-12-29 15:42:00', 102, NULL, NULL, 'IPAY/3296', NULL, 'cash', '', '', '', '', '', 'Visa', '6.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(89, '2020-12-29 16:08:00', 110, NULL, NULL, 'IPAY/3305', NULL, 'cash', '', '', '', '', '', 'Visa', '1.8800', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(93, '2020-12-29 00:00:00', 34, NULL, NULL, 'IPAY/3309', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '9.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(104, '2020-12-30 00:00:00', 116, NULL, NULL, 'IPAY/3320', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(105, '2020-12-30 13:23:00', 59, NULL, NULL, 'IPAY/3321', NULL, 'cash', '', '', '', '', '', 'Visa', '18.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(106, '2020-12-30 13:25:00', 35, NULL, NULL, 'IPAY/3322', NULL, 'cash', '', '', '', '', '', 'Visa', '6.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(111, '2021-01-04 10:46:00', NULL, NULL, 6, 'POP/0205', NULL, 'cash', '', '', '', '', '', 'Visa', '125.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(124, '2021-01-13 12:13:00', 146, NULL, NULL, 'IPAY/3339', NULL, 'cash', '', '', '', '', '', 'Visa', '3.7600', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(126, '2021-01-13 12:19:00', 148, NULL, NULL, 'IPAY/3341', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(127, '2021-01-13 12:23:00', NULL, NULL, 9, 'POP/0206', NULL, 'cash', '', '', '', '', '', 'Visa', '90.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(139, '2021-01-18 13:47:00', NULL, NULL, 12, 'POP/0207', NULL, 'cash', '', '', '', '', '', 'Visa', '10000000.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(140, '2021-01-18 13:49:00', 163, NULL, NULL, 'IPAY/3353', NULL, 'cash', '', '', '', '', '', 'Visa', '50.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(142, '2021-01-19 09:36:00', 166, NULL, NULL, 'IPAY/3355', NULL, 'cash', '', '', '', '', '', 'Visa', '4.0000', NULL, 27, NULL, 'received', '<p>second payment fsadfa</p>', '0.0000', '0.0000', NULL),
(150, '2021-01-26 14:32:00', 176, NULL, NULL, 'IPAY/3364', NULL, 'cash', '', '', '', '', '', 'Visa', '-1.8800', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(159, '2021-02-05 09:15:00', 196, NULL, NULL, 'IPAY/3373', NULL, 'cash', '', '', '', '', '', 'Visa', '100.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(160, '2021-02-05 00:00:00', 148, NULL, NULL, 'IPAY/3374', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '2.7000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(194, '2021-05-13 18:37:00', NULL, NULL, 15, 'POP/0208', NULL, 'cash', '', '', '', '', '', 'Visa', '1000.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(195, '2021-05-13 18:37:00', NULL, NULL, 16, 'POP/0209', NULL, 'cash', '', '', '', '', '', 'Visa', '-500.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(198, '2021-05-25 14:07:00', 237, NULL, NULL, 'IPAY/3410', NULL, 'cash', '', '', '', '', '', 'Visa', '36.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(199, '2021-05-25 14:12:00', 238, NULL, NULL, 'IPAY/3411', NULL, 'cash', '', '', '', '', '', 'Visa', '-7.2000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(200, '2021-05-25 14:24:00', NULL, NULL, 17, 'POP/0210', NULL, 'cash', '', '', '', '', '', 'Visa', '70.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(201, '2021-05-25 14:29:00', 239, NULL, NULL, 'IPAY/3412', NULL, 'cash', '', '', '', '', '', 'Visa', '60.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(202, '2021-05-26 11:44:00', 240, NULL, NULL, 'IPAY/3413', NULL, 'cash', '', '', '', '', '', 'Visa', '9.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(212, '2021-06-03 00:00:00', 198, NULL, NULL, 'IPAY/3423', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '2.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(213, '2021-06-03 00:00:00', 199, NULL, NULL, 'IPAY/3424', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(224, '2021-06-10 16:39:00', NULL, NULL, 20, 'POP/0211', NULL, 'cash', '', '', '', '', '', 'Visa', '0.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(226, '2021-06-13 18:04:00', NULL, NULL, 21, 'POP/0212', NULL, 'cash', '', '', '', '', '', 'Visa', '0.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(234, '2021-06-25 00:00:00', 180, NULL, NULL, 'IPAY/3443', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '33.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(242, '2021-07-06 11:51:00', 277, NULL, NULL, '1', NULL, 'cash', '', '', '', '', '', 'Visa', '5.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(261, '2021-07-25 11:07:00', NULL, NULL, 24, 'POP/0213', NULL, 'cash', '', '', '', '', '', 'Visa', '1000.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(263, '2021-08-03 00:00:00', 166, NULL, NULL, 'IPAY/3469', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '4.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(264, '2021-08-03 00:00:00', 180, NULL, NULL, 'IPAY/3470', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '6.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(265, '2021-08-03 00:00:00', 190, NULL, NULL, 'IPAY/3471', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.4000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(266, '2021-08-03 00:00:00', 297, NULL, NULL, 'IPAY/3472', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '6.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(270, '2021-08-04 16:02:00', 301, NULL, NULL, 'IPAY/3476', NULL, 'cash', '', '', '', '', '', 'Visa', '-6.0000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(271, '2021-08-04 16:04:00', 302, NULL, NULL, 'IPAY/3477', NULL, 'cash', '', '', '', '', '', 'Visa', '-10.0000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(272, '2021-08-04 00:00:00', 198, NULL, NULL, 'IPAY/3478', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '1.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(273, '2021-08-04 00:00:00', 199, NULL, NULL, 'IPAY/3479', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(289, '2021-09-09 09:15:00', 319, NULL, NULL, 'IPAY/3495', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(293, '2021-09-09 09:55:00', 323, NULL, NULL, 'IPAY/3499', NULL, 'cash', '', '', '', '', '', 'Visa', '-3.0000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(299, '2021-09-19 01:50:00', 295, NULL, NULL, 'IPAY/3505', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(300, '2021-09-19 01:52:00', 295, NULL, NULL, 'IPAY/3506', NULL, 'cash', '', '', '', '', '', 'Visa', '2.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(304, '2021-09-20 20:32:00', NULL, NULL, 34, 'POP/0214', NULL, 'cash', '', '', '', '', '', 'Visa', '500.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(313, '2021-09-28 16:04:00', 344, NULL, NULL, 'IPAY/3518', NULL, 'cash', '', '', '', '', '', 'Visa', '7.2000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(317, '2021-10-08 15:03:00', NULL, NULL, 35, 'POP/0215', NULL, 'cash', '', '', '', '', '', 'Visa', '20.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(318, '2021-10-08 15:04:00', NULL, NULL, 35, 'POP/0216', NULL, 'cash', '', '', '', '', '', 'Visa', '13.2500', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(319, '2021-10-08 00:00:00', NULL, NULL, 2, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '25.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(320, '2021-10-08 00:00:00', NULL, NULL, 3, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '2000.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(321, '2021-10-08 00:00:00', NULL, NULL, 4, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(322, '2021-10-08 00:00:00', NULL, NULL, 5, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '12.5000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(323, '2021-10-08 00:00:00', NULL, NULL, 7, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '125.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(324, '2021-10-08 00:00:00', NULL, NULL, 8, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '125.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(325, '2021-10-08 00:00:00', NULL, NULL, 10, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '100.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(326, '2021-10-08 00:00:00', NULL, NULL, 11, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(327, '2021-10-08 00:00:00', NULL, NULL, 13, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(328, '2021-10-08 00:00:00', NULL, NULL, 23, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(329, '2021-10-08 00:00:00', NULL, NULL, 26, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(330, '2021-10-08 00:00:00', NULL, NULL, 27, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '13.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(331, '2021-10-08 00:00:00', NULL, NULL, 28, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(332, '2021-10-08 00:00:00', NULL, NULL, 29, 'IPAY/3521', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(350, '2021-10-09 00:00:00', 152, NULL, NULL, 'IPAY/3538', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '4.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(362, '2021-10-09 00:00:00', 193, NULL, NULL, 'IPAY/3550', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '8.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(375, '2021-10-20 15:02:00', 348, NULL, NULL, 'IPAY/3563', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(376, '2021-10-21 14:57:00', 348, NULL, NULL, 'IPAY/3564', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(380, '2021-10-27 15:51:00', 361, NULL, NULL, 'IPAY/3568', NULL, 'cash', '', '', '', '', '', 'Visa', '9.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(433, '2021-11-09 00:00:00', 416, NULL, NULL, 'IPAY/3620', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(439, '2021-11-09 00:00:00', 340, NULL, NULL, 'IPAY/3625', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '6.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(440, '2021-11-09 00:00:00', 338, NULL, NULL, 'IPAY/3626', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(441, '2021-11-09 00:00:00', 351, NULL, NULL, 'IPAY/3627', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(442, '2021-11-09 00:00:00', 357, NULL, NULL, 'IPAY/3628', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(443, '2021-11-09 00:00:00', 360, NULL, NULL, 'IPAY/3629', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(444, '2021-11-09 00:00:00', 376, NULL, NULL, 'IPAY/3630', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '20.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(451, '2021-11-10 00:00:00', 353, NULL, NULL, 'IPAY/3637', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(452, '2021-11-10 00:00:00', 355, NULL, NULL, 'IPAY/3638', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(583, '2021-12-27 14:26:00', 563, NULL, NULL, 'IPAY/3768', NULL, 'cash', '', '', '', '', '', 'Visa', '8.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(584, '2021-12-27 14:30:00', 564, NULL, NULL, 'IPAY/3769', NULL, 'cash', '', '', '', '', '', 'Visa', '5.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(585, '2021-12-27 14:34:00', 451, NULL, NULL, 'IPAY/3770', NULL, 'cash', '', '', '', '', '', 'Visa', '6.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(586, '2021-12-27 00:00:00', 355, NULL, NULL, 'IPAY/3771', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(597, '2021-12-27 16:43:00', 538, NULL, NULL, 'IPAY/3782', NULL, 'cash', '', '', '', '', '', 'Visa', '100.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(598, '2021-12-27 00:00:00', 355, NULL, NULL, 'IPAY/3783', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(608, '2021-12-27 16:48:00', 535, NULL, NULL, 'IPAY/3793', NULL, 'cash', '', '', '', '', '', 'Visa', '100.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(609, '2021-12-27 16:52:00', 568, NULL, NULL, 'IPAY/3794', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(610, '2021-12-27 00:00:00', 480, NULL, NULL, 'IPAY/3795', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '7.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(636, '2022-01-11 00:00:00', NULL, NULL, 25, 'IPAY/3821', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '50.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(637, '2022-01-11 00:00:00', 480, NULL, NULL, 'IPAY/3821', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.5000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(638, '2022-01-11 00:00:00', NULL, NULL, 41, 'IPAY/3822', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(639, '2022-01-11 00:00:00', 480, NULL, NULL, 'IPAY/3822', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.5000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(642, '2022-01-12 10:08:00', 596, NULL, NULL, 'IPAY/3824', NULL, 'cash', '', '', '', '', '', 'Visa', '-3.0000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(652, '2022-01-19 00:00:00', NULL, NULL, 31, 'IPAY/3834', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '100.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(683, '2022-02-01 00:00:00', 619, NULL, NULL, 'IPAY/3864', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '1.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(737, '2022-03-18 22:36:00', NULL, NULL, 57, 'POP/0217', NULL, 'cash', '', '', '', '', '', 'Visa', '200.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(738, '2022-03-18 23:13:00', 626, NULL, NULL, 'IPAY/3918', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(739, '2022-03-20 00:00:00', 619, NULL, NULL, 'IPAY/3919', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '2.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(742, '2022-03-20 00:00:00', 690, NULL, NULL, 'IPAY/3922', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '4994.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(764, '2022-04-04 00:00:00', NULL, NULL, 25, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '50.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(765, '2022-04-04 00:00:00', NULL, NULL, 19, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '2.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(766, '2022-04-04 00:00:00', NULL, NULL, 22, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(767, '2022-04-04 00:00:00', NULL, NULL, 30, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '1.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(768, '2022-04-04 00:00:00', NULL, NULL, 31, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '200.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(769, '2022-04-04 00:00:00', NULL, NULL, 32, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(770, '2022-04-04 00:00:00', NULL, NULL, 33, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '15.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(771, '2022-04-04 00:00:00', NULL, NULL, 51, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(772, '2022-04-04 00:00:00', NULL, NULL, 52, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '-5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(773, '2022-04-04 00:00:00', NULL, NULL, 53, 'IPAY/3944', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(779, '2022-04-04 00:00:00', NULL, NULL, 37, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '20.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(780, '2022-04-04 00:00:00', NULL, NULL, 38, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(781, '2022-04-04 00:00:00', NULL, NULL, 40, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '50.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(782, '2022-04-04 00:00:00', NULL, NULL, 41, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '20.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(783, '2022-04-04 00:00:00', NULL, NULL, 42, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '589.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(784, '2022-04-04 00:00:00', NULL, NULL, 46, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '50.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(785, '2022-04-04 00:00:00', NULL, NULL, 50, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(786, '2022-04-04 00:00:00', NULL, NULL, 54, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(787, '2022-04-04 00:00:00', NULL, NULL, 55, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '316.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(788, '2022-04-04 00:00:00', NULL, NULL, 59, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(789, '2022-04-04 00:00:00', NULL, NULL, 60, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(790, '2022-04-04 00:00:00', NULL, NULL, 61, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(791, '2022-04-04 00:00:00', NULL, NULL, 62, 'IPAY/3949', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '5.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(799, '2022-04-08 15:18:00', 730, NULL, NULL, 'IPAY/3956', NULL, 'cash', '', '', '', '', '', 'Visa', '5.0000', NULL, 27, NULL, 'received', '<p>\r\n www.vanda.work\r\n</p>', '0.0000', '0.0000', NULL),
(800, '2022-04-21 13:10:00', 731, NULL, NULL, 'IPAY/3957', NULL, 'cash', '', '', '', '', '', 'Visa', '3.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(803, '2022-04-23 19:01:00', NULL, NULL, 68, 'POP/0218', NULL, 'cash', '', '', '', '', '', 'Visa', '500.0000', NULL, 27, NULL, 'sent', '&lt;p&gt;2 may&lt;&sol;p&gt;', '0.0000', '0.0000', NULL),
(807, '2022-04-24 10:23:00', 737, NULL, NULL, 'IPAY/3963', NULL, 'cash', '', '', '', '', '', 'Visa', '2.7000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(825, '2022-05-11 09:38:00', NULL, NULL, 69, 'POP/0219', NULL, 'cash', '', '', '', '', '', 'Visa', '50.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(826, '2022-05-11 09:41:00', NULL, NULL, 68, 'POP/0220', NULL, 'cash', '', '', '', '', '', 'Visa', '700.0000', NULL, 27, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(827, '2022-05-11 10:09:00', 755, NULL, NULL, 'IPAY/3981', NULL, 'cash', '', '', '', '', '', 'Visa', '-82.6800', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(828, '2022-05-18 11:39:00', 701, NULL, NULL, 'IPAY/3982', NULL, 'cash', '', '', '', '', '', 'Visa', '13.0000', NULL, 27, NULL, 'received', '', '0.0000', '0.0000', NULL),
(833, '2022-05-23 00:00:00', 700, NULL, NULL, 'IPAY/0005', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '3.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(834, '2022-05-23 00:00:00', 708, NULL, NULL, 'IPAY/0006', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(842, '2022-05-30 00:00:00', 764, NULL, NULL, 'IPAY/0013', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(847, '2022-06-07 11:19:13', 770, NULL, NULL, 'IPAY/0018', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.3200', '0.3200', NULL),
(848, '2022-06-07 11:37:35', 771, NULL, NULL, 'IPAY/0019', NULL, 'cash', '', '', '', '', '', '', '177.0000', NULL, 27, NULL, 'received', '', '197.5600', '20.5600', NULL),
(849, '2022-06-08 15:21:48', 772, NULL, NULL, 'IPAY/0020', NULL, 'cash', '', '', '', '', '', '', '10.0000', NULL, 27, NULL, 'received', '', '10.0000', '0.0000', NULL),
(850, '2022-06-08 15:22:46', 773, NULL, NULL, 'IPAY/0021', NULL, 'cash', '', '', '', '', '', '', '14.5000', NULL, 27, NULL, 'received', '', '14.5000', '0.0000', NULL),
(851, '2022-06-08 17:13:17', 774, NULL, NULL, 'IPAY/0022', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '10.0000', '7.5000', NULL),
(852, '2022-06-09 15:59:12', 775, NULL, NULL, 'IPAY/0023', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(853, '2022-06-09 16:01:16', 776, NULL, NULL, 'IPAY/0024', NULL, 'cash', '', '', '', '', '', '', '35.5000', NULL, 27, NULL, 'received', '', '47.5000', '12.0000', NULL),
(854, '2022-06-09 17:32:29', 777, NULL, NULL, 'IPAY/0025', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.0000', '0.0000', NULL),
(855, '2022-06-13 14:55:21', 779, NULL, NULL, 'IPAY/0026', NULL, 'cash', '', '', '', '', '', '', '2500.0000', NULL, 27, NULL, 'received', '', '2500.0000', '0.0000', NULL),
(856, '2022-06-14 10:17:38', 780, NULL, NULL, 'IPAY/0027', NULL, 'cash', '', '', '', '', '', '', '22.8000', NULL, 27, NULL, 'received', '', '22.8000', '0.0000', NULL),
(857, '2022-06-14 11:24:38', 781, NULL, NULL, 'IPAY/0028', NULL, 'cash', '', '', '', '', '', '', '5.0000', NULL, 27, NULL, 'received', '', '5.0000', '0.0000', NULL),
(858, '2022-06-14 14:01:11', 782, NULL, NULL, 'IPAY/0029', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.0000', '0.0000', NULL),
(859, '2022-06-14 14:03:08', 783, NULL, NULL, 'IPAY/0030', NULL, 'cash', '', '', '', '', '', '', '16.0000', NULL, 27, NULL, 'received', '', '16.0000', '0.0000', NULL),
(860, '2022-06-14 14:05:12', 784, NULL, NULL, 'IPAY/0031', NULL, 'cash', '', '', '', '', '', '', '6.3000', NULL, 27, NULL, 'received', '', '6.3000', '0.0000', NULL),
(861, '2022-06-15 15:07:02', 785, NULL, NULL, 'IPAY/0032', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '10.0000', '7.5000', NULL),
(863, '2022-06-16 08:50:10', 787, NULL, NULL, 'IPAY/0034', NULL, 'cash', '', '', '', '', '', '', '24.0000', NULL, 27, NULL, 'received', '', '500.0000', '476.0000', NULL),
(864, '2022-06-16 10:35:18', 788, NULL, NULL, 'IPAY/0035', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 36, NULL, 'received', '', '12.0000', '0.0000', NULL),
(865, '2022-06-16 15:05:21', 789, NULL, NULL, 'IPAY/0036', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(866, '2022-06-16 15:07:01', 790, NULL, NULL, 'IPAY/0037', NULL, 'cash', '', '', '', '', '', '', '2.2500', NULL, 27, NULL, 'received', '', '2.2500', '0.0000', NULL),
(867, '2022-06-16 15:24:04', 791, NULL, NULL, 'IPAY/0038', NULL, 'cash', '', '', '', '', '', '', '5.5000', NULL, 27, NULL, 'received', '', '5.5000', '0.0000', NULL),
(868, '2022-06-17 16:01:12', 792, NULL, NULL, 'IPAY/0039', NULL, 'cash', '', '', '', '', '', '', '24.0000', NULL, 27, NULL, 'received', '', '24.0000', '0.0000', NULL),
(869, '2022-06-17 16:50:57', 793, NULL, NULL, 'IPAY/0040', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(870, '2022-06-22 15:16:22', 794, NULL, NULL, 'IPAY/0041', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.0000', '0.0000', NULL),
(871, '2022-06-23 09:09:24', 795, NULL, NULL, 'IPAY/0042', NULL, 'cash', '', '', '', '', '', '', '20.0000', NULL, 27, NULL, 'received', '', '20.0000', '0.0000', NULL),
(872, '2022-06-23 15:04:35', 796, NULL, NULL, 'IPAY/0043', NULL, 'cash', '', '', '', '', '', '', '4.6000', NULL, 27, NULL, 'received', '', '4.6000', '0.0000', NULL),
(873, '2022-06-27 09:58:02', 797, NULL, NULL, 'IPAY/0044', NULL, 'cash', '', '', '', '', '', '', '14.0000', NULL, 27, NULL, 'received', '', '20.0000', '6.0000', NULL),
(874, '2022-06-27 15:10:26', 798, NULL, NULL, 'IPAY/0045', NULL, 'cash', '', '', '', '', '', '', '5.0000', NULL, 27, NULL, 'received', '', '5.0000', '-12.0000', NULL),
(875, '2022-06-27 00:00:00', 764, NULL, NULL, 'IPAY/0046', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '10.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(876, '2022-06-27 00:00:00', 778, NULL, NULL, 'IPAY/0047', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.0000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(877, '2022-06-27 00:00:00', 764, NULL, NULL, 'IPAY/0048', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '9.7000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(878, '2022-06-27 00:00:00', 778, NULL, NULL, 'IPAY/0049', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, 'Visa', '0.3000', NULL, 27, NULL, 'received', 'from list sale payment', '0.0000', '0.0000', NULL),
(879, '2022-06-30 16:18:44', 800, NULL, NULL, 'IPAY/0050', NULL, 'cash', '', '', '', '', '', '', '6.0000', NULL, 27, NULL, 'received', '', '50.0000', '44.0000', NULL),
(880, '2022-07-04 13:12:38', 801, NULL, NULL, 'IPAY/0051', NULL, 'cash', '', '', '', '', '', '', '29.0000', NULL, 27, NULL, 'received', '', '29.0000', '0.0000', NULL),
(881, '2022-07-04 14:25:27', 803, NULL, NULL, 'IPAY/0052', NULL, 'cash', '', '', '', '', '', '', '14.5000', NULL, 27, NULL, 'received', '', '20.0000', '5.5000', NULL),
(882, '2022-07-04 14:29:32', 804, NULL, NULL, 'IPAY/0053', NULL, 'cash', '', '', '', '', '', '', '10.8000', NULL, 27, NULL, 'received', '', '20.0000', '9.2000', NULL),
(883, '2022-07-04 14:31:59', 805, NULL, NULL, 'IPAY/0054', NULL, 'cash', '', '', '', '', '', '', '10.5000', NULL, 27, NULL, 'received', '', '20.0000', '9.5000', NULL),
(884, '2022-07-05 08:07:45', 807, NULL, NULL, 'IPAY/0055', NULL, 'cash', '', '', '', '', '', '', '19.5000', NULL, 27, NULL, 'received', '', '20.0000', '0.5000', NULL),
(885, '2022-07-05 10:08:29', 809, NULL, NULL, 'IPAY/0056', NULL, 'cash', '', '', '', '', '', '', '58.5000', NULL, 27, NULL, 'received', '', '100.0000', '41.5000', NULL),
(886, '2022-07-05 11:19:58', 810, NULL, NULL, 'IPAY/0057', NULL, 'cash', '', '', '', '', '', '', '56.0000', NULL, 27, NULL, 'received', '', '100.0000', '44.0000', NULL),
(887, '2022-07-07 14:44:49', 812, NULL, NULL, 'IPAY/0058', NULL, 'cash', '', '', '', '', '', '', '1.0000', NULL, 27, NULL, 'received', '', '1.0000', '0.0000', NULL),
(888, '2022-07-08 09:21:20', 813, NULL, NULL, 'IPAY/0059', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 27, NULL, 'received', '', '8.0000', '0.0000', NULL),
(889, '2022-07-08 09:22:36', 814, NULL, NULL, 'IPAY/0060', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 27, NULL, 'received', '', '12.2000', '4.2000', NULL),
(890, '2022-07-08 10:02:20', 815, NULL, NULL, 'IPAY/0061', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(891, '2022-07-08 10:04:19', 816, NULL, NULL, 'IPAY/0062', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '15000.0000', '14997.5000', NULL),
(892, '2022-07-08 10:11:03', 817, NULL, NULL, 'IPAY/0063', NULL, 'cash', '', '', '', '', '', '', '10.5000', NULL, 27, NULL, 'received', '', '20.0000', '9.5000', NULL),
(893, '2022-07-08 10:27:32', 818, NULL, NULL, 'IPAY/0064', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(894, '2022-07-08 12:58:24', 819, NULL, NULL, 'IPAY/0065', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(895, '2022-07-08 12:59:14', 820, NULL, NULL, 'IPAY/0066', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 45, NULL, 'received', '', '12.0000', '0.0000', NULL),
(896, '2022-07-08 13:01:58', 821, NULL, NULL, 'IPAY/0067', NULL, 'cash', '', '', '', '', '', '', '10.0000', NULL, 45, NULL, 'received', '', '30.0000', '20.0000', NULL),
(897, '2022-07-08 13:16:44', 822, NULL, NULL, 'IPAY/0068', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(898, '2022-07-08 14:15:02', 823, NULL, NULL, 'IPAY/0069', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '20.0000', '8.0000', NULL),
(899, '2022-07-08 14:15:44', 824, NULL, NULL, 'IPAY/0070', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '20.0000', '8.0000', NULL),
(900, '2022-07-08 14:17:19', 825, NULL, NULL, 'IPAY/0071', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '10.0000', '7.5000', NULL),
(901, '2022-07-08 14:19:09', 826, NULL, NULL, 'IPAY/0072', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(902, '2022-07-08 14:19:19', 827, NULL, NULL, 'IPAY/0073', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(903, '2022-07-09 10:35:36', 828, NULL, NULL, 'IPAY/0074', NULL, 'Cheque', 'adfafdsdf', '', '', '', '', '', '24.0000', NULL, 27, NULL, 'received', '', '24.0000', '0.0000', NULL),
(904, '2022-07-11 10:21:03', 829, NULL, NULL, 'IPAY/0075', NULL, 'cash', '', '', '', '', '', '', '26.5000', NULL, 27, NULL, 'received', '', '26.5000', '0.0000', NULL),
(905, '2022-07-11 10:21:22', 830, NULL, NULL, 'IPAY/0076', NULL, 'cash', '', '', '', '', '', '', '14.5000', NULL, 27, NULL, 'received', '', '14.5000', '0.0000', NULL),
(906, '2022-07-11 15:10:19', 831, NULL, NULL, 'IPAY/0077', NULL, 'CC', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '50.0000', '33.0000', NULL),
(907, '2022-07-12 14:14:52', 832, NULL, NULL, 'IPAY/0078', NULL, 'cash', '', '', '', '', '', '', '14.5000', NULL, 27, NULL, 'received', '', '14.5000', '0.0000', NULL),
(908, '2022-07-12 14:15:45', 833, NULL, NULL, 'IPAY/0079', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '20.0000', '3.0000', NULL),
(909, '2022-07-12 14:18:42', 834, NULL, NULL, 'IPAY/0080', NULL, 'cash', '', '', '', '', '', '', '3.0000', NULL, 27, NULL, 'received', '', '10.0000', '7.0000', NULL),
(910, '2022-07-13 17:23:53', 835, NULL, NULL, 'IPAY/0081', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(911, '2022-07-13 17:31:05', 836, NULL, NULL, 'IPAY/0082', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '15.0000', '3.0000', NULL),
(912, '2022-07-14 08:23:48', 837, NULL, NULL, 'IPAY/0083', NULL, 'cash', '', '', '', '', '', '', '20.0000', NULL, 27, NULL, 'received', '', '100.0000', '80.0000', NULL),
(913, '2022-07-14 09:00:59', 838, NULL, NULL, 'IPAY/0084', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(914, '2022-07-14 09:10:30', 839, NULL, NULL, 'IPAY/0085', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(915, '2022-07-15 09:59:34', 840, NULL, NULL, 'IPAY/0086', NULL, 'cash', '', '', '', '', '', '', '2500.0000', NULL, 27, NULL, 'received', '', '2500.0000', '0.0000', NULL),
(916, '2022-07-15 09:59:34', 840, NULL, NULL, 'IPAY/0087', NULL, 'cash', '', '', '', '', '', '', '1.0000', NULL, 27, NULL, 'received', '', '1.0000', '0.0000', NULL),
(917, '2022-07-15 11:52:07', 841, NULL, NULL, 'IPAY/0088', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 27, NULL, 'received', '', '8.0000', '0.0000', NULL),
(918, '2022-07-15 12:03:44', 842, NULL, NULL, 'IPAY/0089', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(919, '2022-07-16 10:06:45', 843, NULL, NULL, 'IPAY/0090', NULL, 'cash', '', '', '', '', '', '', '1000.0000', NULL, 27, NULL, 'received', '', '1000.0000', '0.0000', NULL),
(920, '2022-07-16 11:14:17', 844, NULL, NULL, 'IPAY/0091', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(921, '2022-07-16 11:24:01', 846, NULL, NULL, 'IPAY/0092', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(922, '2022-07-16 11:30:08', 847, NULL, NULL, 'IPAY/0093', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(923, '2022-07-17 12:33:19', 848, NULL, NULL, 'IPAY/0094', NULL, 'cash', '', '', '', '', '', '', '4.0000', NULL, 27, NULL, 'received', '', '4.0000', '0.0000', NULL),
(924, '2022-07-17 12:36:21', 849, NULL, NULL, 'IPAY/0095', NULL, 'cash', '', '', '', '', '', '', '1.8000', NULL, 27, NULL, 'received', '', '1.8000', '0.0000', NULL),
(928, '2022-07-19 16:50:00', 853, NULL, NULL, 'IPAY/0099', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(929, '2022-07-19 20:22:12', 854, NULL, NULL, 'IPAY/0100', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.0000', '0.0000', NULL),
(930, '2022-07-19 20:23:08', 855, NULL, NULL, 'IPAY/0101', NULL, 'cash', '', '', '', '', '', '', '12.0000', NULL, 27, NULL, 'received', '', '12.0000', '0.0000', NULL),
(931, '2022-07-20 11:51:44', 856, NULL, NULL, 'IPAY/0102', NULL, 'cash', '', '', '', '', '', '', '17.0000', NULL, 27, NULL, 'received', '', '17.0000', '0.0000', NULL),
(932, '2022-07-20 13:19:55', 857, NULL, NULL, 'IPAY/0103', NULL, 'cash', '', '', '', '', '', '', '6.0000', NULL, 27, NULL, 'received', 'pay 50%', '6.0000', '-6.0000', NULL),
(933, '2022-07-20 13:21:46', 858, NULL, NULL, 'IPAY/0104', NULL, 'cash', '', '', '', '', '', '', '2.0000', NULL, 27, NULL, 'received', '', '2.0000', '-3.0000', NULL),
(939, '2022-07-20 13:31:43', 860, NULL, NULL, 'IPAY/0106', NULL, 'cash', '', '', '', '', '', '', '4.0000', NULL, 27, NULL, 'received', '', '4.0000', '-4.0000', NULL),
(940, '2022-07-20 13:32:00', 860, NULL, NULL, 'IPAY/0107', NULL, 'cash', '', '', '', '', '', 'Visa', '4.0000', NULL, 27, NULL, 'received', '', '4.0000', '0.0000', NULL),
(941, '2022-07-20 16:55:42', 861, NULL, NULL, 'IPAY/0107', NULL, 'cash', '', '', '', '', '', '', '4.0000', NULL, 27, NULL, 'received', '', '4.0000', '-4.0000', NULL),
(942, '2022-07-20 17:00:04', 862, NULL, NULL, 'IPAY/0108', NULL, 'cash', '', '', '', '', '', '', '4.0000', NULL, 27, NULL, 'received', '', '4.0000', '-4.0000', NULL),
(943, '2022-07-20 23:08:00', 863, NULL, NULL, 'IPAY/0109', NULL, 'cash', '', '', '', '', '', 'Visa', '-8.0000', NULL, 27, NULL, 'returned', NULL, '0.0000', '0.0000', NULL),
(944, '2022-07-21 08:36:10', 864, NULL, NULL, 'IPAY/0110', NULL, 'cash', '', '', '', '', '', '', '16.0000', NULL, 27, NULL, 'received', '', '20.0000', '4.0000', NULL),
(945, '2022-07-21 08:41:30', 865, NULL, NULL, 'IPAY/0111', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '10.0000', '7.5000', NULL),
(946, '2022-07-21 08:46:53', 866, NULL, NULL, 'IPAY/0112', NULL, 'cash', '', '', '', '', '', '', '2.5000', NULL, 27, NULL, 'received', '', '2.5000', '0.0000', NULL),
(947, '2022-07-26 12:36:21', 868, NULL, NULL, 'IPAY/0113', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 27, NULL, 'received', '', '8.0000', '0.0000', NULL),
(948, '2022-07-28 14:06:43', 869, NULL, NULL, 'IPAY/0114', NULL, 'cash', '', '', '', '', '', '', '24.0000', NULL, 27, NULL, 'received', '', '24.0000', '0.0000', NULL),
(949, '2022-08-09 09:29:57', 873, NULL, NULL, 'IPAY/0115', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 27, NULL, 'received', '', '8.0000', '0.0000', NULL),
(950, '2022-08-27 13:23:45', 874, NULL, NULL, 'IPAY/0116', NULL, 'cash', '', '', '', '', '', '', '9.0000', NULL, 48, NULL, 'received', '', '9.0000', '0.0000', NULL),
(951, '2022-08-27 13:36:38', 875, NULL, NULL, 'IPAY/0117', NULL, 'cash', '', '', '', '', '', '', '6.0000', NULL, 48, NULL, 'received', '', '6.0000', '0.0000', NULL),
(952, '2022-08-27 13:44:46', 876, NULL, NULL, 'IPAY/0118', NULL, 'cash', '', '', '', '', '', '', '8.1000', NULL, 48, NULL, 'received', '', '41000.0000', '40991.9000', NULL),
(953, '2022-08-27 13:54:52', 877, NULL, NULL, 'IPAY/0119', NULL, 'cash', '', '', '', '', '', '', '8.0000', NULL, 48, NULL, 'received', '', '8.0000', '0.0000', NULL),
(954, '2022-08-27 13:58:00', NULL, NULL, 72, 'POP/0001', NULL, 'cash', '', '', '', '', '', 'Visa', '10.0000', NULL, 48, NULL, 'sent', '', '0.0000', '0.0000', NULL),
(955, '2022-08-29 11:42:19', 878, NULL, NULL, 'IPAY/0120', NULL, 'cash', '', '', '', '', '', '', '11.0000', NULL, 48, NULL, 'received', '', '21.0000', '10.0000', NULL),
(956, '2022-09-01 15:19:01', 879, NULL, NULL, 'IPAY/0121', NULL, 'cash', '', '', '', '', '', '', '11.0000', NULL, 27, NULL, 'received', '', '11.0000', '0.0000', NULL),
(957, '2022-09-02 02:06:02', 880, NULL, NULL, 'IPAY/0122', NULL, 'cash', '', '', '', '', '', '', '5.0000', NULL, 27, NULL, 'received', '', '5.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_payment_record`
--

DROP TABLE IF EXISTS `sma_payment_record`;
CREATE TABLE IF NOT EXISTS `sma_payment_record` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount_usd` varchar(50) NOT NULL,
  `amount_r` varchar(50) NOT NULL,
  `amount_b` varchar(50) NOT NULL,
  `delete` int(10) NOT NULL,
  `billers` int(11) NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payment_record`
--

INSERT INTO `sma_payment_record` (`rec_id`, `cus_id`, `date`, `amount_usd`, `amount_r`, `amount_b`, `delete`, `billers`) VALUES
(1, 1, '2020-12-29', '9', '', '', 0, 0),
(2, 1, '2020-12-30', '3', '', '', 0, 0),
(3, 9, '2021-02-05', '2.7', '', '', 0, 2),
(4, 9, '2021-06-03', '2', '', '', 0, 0),
(5, 7, '2021-06-25', '33', '', '', 0, 0),
(6, 7, '2021-08-03', '21.4', '', '', 0, 0),
(7, 9, '2021-08-04', '21', '', '', 0, 0),
(8, 3, '2021-10-08', '2430.5', '', '', 0, 0),
(9, 1, '2021-10-09', '592.966', '', '', 0, 0),
(10, 1, '2021-11-09', '5', '', '', 0, 0),
(11, 1, '2021-11-09', '2', '', '', 0, 0),
(12, 1, '2021-11-09', '1', '', '', 0, 0),
(13, 1, '2021-11-09', '2', '', '', 0, 0),
(14, 1, '2021-11-09', '3', '', '', 0, 0),
(15, 7, '2021-11-09', '6', '', '', 0, 0),
(16, 8, '2021-11-09', '3', '', '', 0, 0),
(17, 7, '2021-11-09', '36', '', '', 0, 0),
(18, 7, '2021-11-09', '3', '', '', 0, 0),
(19, 7, '2021-11-09', '2', '', '', 0, 0),
(20, 7, '2021-11-09', '5', '', '', 0, 0),
(21, 7, '2021-11-09', '5', '', '', 0, 0),
(22, 1, '2021-11-10', '15', '', '', 0, 0),
(23, 1, '2021-12-27', '3', '', '', 0, 0),
(24, 1, '2021-12-27', '5', '', '', 0, 0),
(25, 1, '2021-12-27', '64', '', '', 0, 2),
(26, 7, '2021-12-27', '7', '', '', 0, 0),
(27, 1, '2022-01-10', '20', '', '', 0, 2),
(28, 1, '2022-01-10', '10', '', '', 0, 2),
(29, 1, '2022-01-10', '15', '', '', 0, 2),
(30, 10, '2022-01-11', '50', '', '', 0, 2),
(31, 7, '2022-01-11', '0.5', '', '', 0, 0),
(32, 3, '2022-01-11', '5', '', '', 0, 2),
(33, 7, '2022-01-11', '1', '', '', 0, 2),
(34, 10, '2022-01-19', '100', '', '', 0, 2),
(35, 1, '2022-01-28', '5', '', '', 0, 0),
(36, 13, '2022-01-28', '3', '', '', 0, 0),
(37, 27, '2022-02-01', '9', '', '', 0, 0),
(38, 7, '2022-02-01', '2', '', '', 0, 0),
(39, 1, '2022-03-01', '135.75', '', '', 0, 0),
(40, 1, '2022-03-09', '9', '', '', 0, 0),
(41, 1, '2022-03-14', '119.4', '', '', 0, 0),
(42, 7, '2022-03-20', '2', '', '', 0, 0),
(43, 9, '2022-03-20', '5000', '', '', 0, 0),
(44, 10, '2022-04-04', '50', '', '', 0, 0),
(45, 10, '2022-04-04', '228', '', '', 0, 0),
(46, 1, '2022-04-04', '198', '', '', 0, 0),
(47, 3, '2022-04-04', '1070', '', '', 0, 0),
(48, 1, '2022-04-08', '142', '', '', 0, 2),
(49, 1, '2022-04-08', '200', '', '', 0, 0),
(50, 7, '2022-05-23', '3', '', '', 0, 0),
(51, 1, '2022-05-30', '999999999999999900000', '', '', 0, 2),
(52, 1, '2022-06-27', '10', '', '', 0, 2),
(53, 1, '2022-06-27', '10', '', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sma_payment_record_detail`
--

DROP TABLE IF EXISTS `sma_payment_record_detail`;
CREATE TABLE IF NOT EXISTS `sma_payment_record_detail` (
  `record_detailid` int(11) NOT NULL AUTO_INCREMENT,
  `rec_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `amount_usd` varchar(50) NOT NULL,
  `amount_r` varchar(50) NOT NULL,
  `amount_b` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  PRIMARY KEY (`record_detailid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payment_record_detail`
--

INSERT INTO `sma_payment_record_detail` (`record_detailid`, `rec_id`, `sale_id`, `amount_usd`, `amount_r`, `amount_b`, `payment_status`) VALUES
(1, 1, 34, '9.00', '', '', 'paid'),
(2, 2, 116, '3.00', '', '', 'paid'),
(3, 3, 148, '2.70', '', '', 'paid'),
(4, 4, 198, '2.000', '', '', 'partial'),
(5, 4, 199, '0.000', '', '', 'partial'),
(6, 5, 180, '33.000', '', '', 'partial'),
(7, 6, 166, '4.000', '', '', 'paid'),
(8, 6, 180, '6.000', '', '', 'paid'),
(9, 6, 190, '5.400', '', '', 'paid'),
(10, 6, 297, '6.000', '', '', 'partial'),
(11, 7, 198, '1.000', '', '', 'paid'),
(12, 7, 199, '3.000', '', '', 'paid'),
(13, 7, 251, '17.000', '', '', 'paid'),
(14, 8, 2, '25.000', '', '', 'paid'),
(15, 8, 3, '2000.000', '', '', 'paid'),
(16, 8, 4, '0.000', '', '', 'paid'),
(17, 8, 5, '12.500', '', '', 'paid'),
(18, 8, 7, '125.000', '', '', 'paid'),
(19, 8, 8, '125.000', '', '', 'paid'),
(20, 8, 10, '100.000', '', '', 'paid'),
(21, 8, 11, '10.000', '', '', 'paid'),
(22, 8, 13, '10.000', '', '', 'paid'),
(23, 8, 23, '0.000', '', '', 'paid'),
(24, 8, 26, '0.000', '', '', 'paid'),
(25, 8, 27, '13.000', '', '', 'paid'),
(26, 8, 28, '5.000', '', '', 'paid'),
(27, 8, 29, '5.000', '', '', 'paid'),
(28, 9, 55, '13.850', '', '', 'paid'),
(29, 9, 57, '15.000', '', '', 'paid'),
(30, 9, 58, '14.000', '', '', 'paid'),
(31, 9, 61, '0.020', '', '', 'paid'),
(32, 9, 64, '4.000', '', '', 'paid'),
(33, 9, 80, '20.000', '', '', 'paid'),
(34, 9, 81, '0.010', '', '', 'paid'),
(35, 9, 82, '0.010', '', '', 'paid'),
(36, 9, 83, '0.640', '', '', 'paid'),
(37, 9, 84, '0.900', '', '', 'paid'),
(38, 9, 87, '3.750', '', '', 'paid'),
(39, 9, 94, '3.750', '', '', 'paid'),
(40, 9, 97, '0.060', '', '', 'paid'),
(41, 9, 128, '85.000', '', '', 'paid'),
(42, 9, 132, '4.000', '', '', 'paid'),
(43, 9, 134, '15.000', '', '', 'paid'),
(44, 9, 135, '1.000', '', '', 'paid'),
(45, 9, 152, '4.000', '', '', 'paid'),
(46, 9, 157, '21.900', '', '', 'paid'),
(47, 9, 159, '0.016', '', '', 'paid'),
(48, 9, 160, '0.020', '', '', 'paid'),
(49, 9, 161, '3.000', '', '', 'paid'),
(50, 9, 164, '60.000', '', '', 'paid'),
(51, 9, 171, '20.000', '', '', 'paid'),
(52, 9, 172, '80.000', '', '', 'paid'),
(53, 9, 182, '15.000', '', '', 'paid'),
(54, 9, 184, '27.500', '', '', 'paid'),
(55, 9, 185, '27.500', '', '', 'paid'),
(56, 9, 191, '5.000', '', '', 'paid'),
(57, 9, 193, '8.000', '', '', 'paid'),
(58, 9, 202, '0.240', '', '', 'paid'),
(59, 9, 206, '37.000', '', '', 'paid'),
(60, 9, 207, '40.000', '', '', 'paid'),
(61, 9, 242, '3.000', '', '', 'paid'),
(62, 9, 269, '18.000', '', '', 'paid'),
(63, 9, 270, '1.800', '', '', 'paid'),
(64, 9, 272, '21.000', '', '', 'paid'),
(65, 9, 286, '2.000', '', '', 'paid'),
(66, 9, 287, '2.000', '', '', 'paid'),
(67, 9, 304, '6.000', '', '', 'paid'),
(68, 9, 306, '3.000', '', '', 'paid'),
(69, 9, 325, '6.000', '', '', 'paid'),
(70, 10, 416, '5.000', '', '', 'paid'),
(71, 11, 414, '2.000', '', '', 'partial'),
(72, 12, 414, '1.000', '', '', 'paid'),
(73, 13, 415, '2.000', '', '', 'paid'),
(74, 14, 358, '3.000', '', '', 'paid'),
(75, 15, 340, '6.000', '', '', 'paid'),
(76, 16, 338, '3.000', '', '', 'paid'),
(77, 17, 351, '10.000', '', '', 'paid'),
(78, 17, 357, '3.000', '', '', 'paid'),
(79, 17, 360, '3.000', '', '', 'paid'),
(80, 17, 376, '20.000', '', '', 'paid'),
(81, 18, 418, '3.000', '', '', 'partial'),
(82, 19, 418, '2.000', '', '', 'paid'),
(83, 20, 420, '5.000', '', '', 'paid'),
(84, 21, 419, '5.000', '', '', 'paid'),
(85, 22, 353, '10.000', '', '', 'paid'),
(86, 22, 355, '5.000', '', '', 'partial'),
(87, 22, 423, '0.000', '', '', 'partial'),
(88, 23, 459, '3.000', '', '', 'paid'),
(89, 24, 355, '5.000', '', '', 'partial'),
(90, 24, 423, '0.000', '', '', 'partial'),
(91, 24, 424, '0.000', '', '', 'partial'),
(92, 24, 425, '0.000', '', '', 'partial'),
(93, 24, 463, '0.000', '', '', 'partial'),
(94, 24, 479, '0.000', '', '', 'partial'),
(95, 24, 483, '0.000', '', '', 'partial'),
(96, 24, 495, '0.000', '', '', 'partial'),
(97, 24, 510, '0.000', '', '', 'partial'),
(98, 24, 546, '0.000', '', '', 'partial'),
(99, 25, 355, '10.000', '', '', 'paid'),
(100, 25, 423, '8.000', '', '', 'paid'),
(101, 25, 424, '8.000', '', '', 'paid'),
(102, 25, 425, '6.000', '', '', 'paid'),
(103, 25, 463, '6.000', '', '', 'paid'),
(104, 25, 479, '5.000', '', '', 'paid'),
(105, 25, 483, '3.000', '', '', 'paid'),
(106, 25, 495, '12.000', '', '', 'paid'),
(107, 25, 510, '3.000', '', '', 'paid'),
(108, 25, 546, '3.000', '', '', 'paid'),
(109, 26, 480, '7.000', '', '', 'partial'),
(110, 26, 530, '0.000', '', '', 'partial'),
(111, 27, 591, '10.0000', '', '', 'paid'),
(112, 28, 575, '7.0000', '', '', 'paid'),
(113, 29, 592, '10.0000', '', '', 'paid'),
(114, 30, 25, '50.0000', '', '', 'partial'),
(115, 31, 480, '0.5000', '', '', 'partial'),
(116, 32, 41, '5.0000', '', '', 'partial'),
(117, 33, 480, '0.5000', '', '', 'paid'),
(118, 34, 31, '100.0000', '', '', 'partial'),
(119, 35, 627, '5.0000', '', '', 'partial'),
(120, 36, 623, '3.0000', '', '', 'paid'),
(121, 37, 634, '9.0000', '', '', 'paid'),
(122, 38, 530, '1.0000', '', '', 'paid'),
(123, 38, 619, '1.0000', '', '', 'partial'),
(124, 39, 593, '3.7500', '', '', 'paid'),
(125, 39, 595, '6.0000', '', '', 'paid'),
(126, 39, 622, '6.0000', '', '', 'paid'),
(127, 39, 627, '10.0000', '', '', 'paid'),
(128, 39, 640, '102.0000', '', '', 'paid'),
(129, 39, 646, '8.0000', '', '', 'paid'),
(130, 40, 664, '9.0000', '', '', 'paid'),
(131, 41, 663, '30.0000', '', '', 'paid'),
(132, 41, 667, '18.4000', '', '', 'paid'),
(133, 41, 669, '71.0000', '', '', 'paid'),
(134, 42, 619, '2.0000', '', '', 'paid'),
(135, 43, 616, '3.0000', '', '', 'paid'),
(136, 43, 648, '3.0000', '', '', 'paid'),
(137, 43, 690, '4994.0000', '', '', 'partial'),
(138, 44, 25, '50.00', '', '', 'paid'),
(139, 45, 19, '2.00', '', '', 'paid'),
(140, 45, 22, '0.00', '', '', 'paid'),
(141, 45, 30, '1.00', '', '', 'paid'),
(142, 45, 31, '200.00', '', '', 'paid'),
(143, 45, 32, '10.00', '', '', 'paid'),
(144, 45, 33, '15.00', '', '', 'partial'),
(145, 45, 51, '0.00', '', '', 'paid'),
(146, 45, 52, '-5.00', '', '', 'paid'),
(147, 45, 53, '0.00', '', '', 'paid'),
(148, 46, 692, '100.00', '', '', 'paid'),
(149, 46, 709, '30.00', '', '', 'paid'),
(150, 46, 710, '30.00', '', '', 'paid'),
(151, 46, 711, '30.00', '', '', 'paid'),
(152, 46, 720, '8.00', '', '', 'paid'),
(153, 47, 37, '20.00', '', '', 'paid'),
(154, 47, 38, '10.00', '', '', 'paid'),
(155, 47, 40, '50.00', '', '', 'paid'),
(156, 47, 41, '20.00', '', '', 'paid'),
(157, 47, 42, '589.00', '', '', 'paid'),
(158, 47, 46, '50.00', '', '', 'paid'),
(159, 47, 50, '0.00', '', '', 'paid'),
(160, 47, 54, '0.00', '', '', 'paid'),
(161, 47, 55, '316.00', '', '', 'paid'),
(162, 47, 59, '0.00', '', '', 'paid'),
(163, 47, 60, '10.00', '', '', 'paid'),
(164, 47, 61, '0.00', '', '', 'paid'),
(165, 47, 62, '5.00', '', '', 'paid'),
(166, 48, 726, '102.00', '', '', 'paid'),
(167, 48, 727, '40.00', '', '', 'paid'),
(168, 49, 728, '102.00', '', '', 'paid'),
(169, 49, 729, '98.00', '', '', 'partial'),
(170, 50, 700, '3.00', '', '', 'partial'),
(171, 50, 708, '0.00', '', '', 'partial'),
(172, 51, 729, '4.00', '', '', 'paid'),
(173, 51, 757, '222.00', '', '', 'paid'),
(174, 51, 759, '999999999999999868928.00', '', '', 'partial'),
(175, 51, 763, '0.00', '', '', 'partial'),
(176, 51, 764, '0.00', '', '', 'partial'),
(177, 52, 764, '10.00', '', '', 'partial'),
(178, 52, 778, '0.00', '', '', 'partial'),
(179, 53, 764, '9.70', '', '', 'paid'),
(180, 53, 778, '0.30', '', '', 'partial');

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

DROP TABLE IF EXISTS `sma_paypal`;
CREATE TABLE IF NOT EXISTS `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '2.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '3.9000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '4.4000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

DROP TABLE IF EXISTS `sma_permissions`;
CREATE TABLE IF NOT EXISTS `sma_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT '0',
  `products-add` tinyint(1) DEFAULT '0',
  `products-edit` tinyint(1) DEFAULT '0',
  `products-delete` tinyint(1) DEFAULT '0',
  `products-cost` tinyint(1) DEFAULT '0',
  `products-price` tinyint(1) DEFAULT '0',
  `quotes-index` tinyint(1) DEFAULT '0',
  `quotes-add` tinyint(1) DEFAULT '0',
  `quotes-edit` tinyint(1) DEFAULT '0',
  `quotes-pdf` tinyint(1) DEFAULT '0',
  `quotes-email` tinyint(1) DEFAULT '0',
  `quotes-delete` tinyint(1) DEFAULT '0',
  `sales-index` tinyint(1) DEFAULT '0',
  `sales-add` tinyint(1) DEFAULT '0',
  `sales-edit` tinyint(1) DEFAULT '0',
  `sales-pdf` tinyint(1) DEFAULT '0',
  `sales-email` tinyint(1) DEFAULT '0',
  `sales-delete` tinyint(1) DEFAULT '0',
  `purchases-index` tinyint(1) DEFAULT '0',
  `purchases-add` tinyint(1) DEFAULT '0',
  `purchases-edit` tinyint(1) DEFAULT '0',
  `purchases-pdf` tinyint(1) DEFAULT '0',
  `purchases-email` tinyint(1) DEFAULT '0',
  `purchases-delete` tinyint(1) DEFAULT '0',
  `transfers-index` tinyint(1) DEFAULT '0',
  `transfers-add` tinyint(1) DEFAULT '0',
  `transfers-edit` tinyint(1) DEFAULT '0',
  `transfers-pdf` tinyint(1) DEFAULT '0',
  `transfers-email` tinyint(1) DEFAULT '0',
  `transfers-delete` tinyint(1) DEFAULT '0',
  `customers-index` tinyint(1) DEFAULT '0',
  `customers-add` tinyint(1) DEFAULT '0',
  `customers-edit` tinyint(1) DEFAULT '0',
  `customers-delete` tinyint(1) DEFAULT '0',
  `suppliers-index` tinyint(1) DEFAULT '0',
  `suppliers-add` tinyint(1) DEFAULT '0',
  `suppliers-edit` tinyint(1) DEFAULT '0',
  `suppliers-delete` tinyint(1) DEFAULT '0',
  `sales-deliveries` tinyint(1) DEFAULT '0',
  `sales-add_delivery` tinyint(1) DEFAULT '0',
  `sales-edit_delivery` tinyint(1) DEFAULT '0',
  `sales-delete_delivery` tinyint(1) DEFAULT '0',
  `sales-email_delivery` tinyint(1) DEFAULT '0',
  `sales-pdf_delivery` tinyint(1) DEFAULT '0',
  `sales-gift_cards` tinyint(1) DEFAULT '0',
  `sales-add_gift_card` tinyint(1) DEFAULT '0',
  `sales-edit_gift_card` tinyint(1) DEFAULT '0',
  `sales-delete_gift_card` tinyint(1) DEFAULT '0',
  `pos-index` tinyint(1) DEFAULT '0',
  `sales-return_sales` tinyint(1) DEFAULT '0',
  `reports-index` tinyint(1) DEFAULT '0',
  `reports-warehouse_stock` tinyint(1) DEFAULT '0',
  `reports-quantity_alerts` tinyint(1) DEFAULT '0',
  `reports-expiry_alerts` tinyint(1) DEFAULT '0',
  `reports-products` tinyint(1) DEFAULT '0',
  `reports-daily_sales` tinyint(1) DEFAULT '0',
  `reports-monthly_sales` tinyint(1) DEFAULT '0',
  `reports-sales` tinyint(1) DEFAULT '0',
  `reports-payments` tinyint(1) DEFAULT '0',
  `reports-purchases` tinyint(1) DEFAULT '0',
  `reports-profit_loss` tinyint(1) DEFAULT '0',
  `reports-customers` tinyint(1) DEFAULT '0',
  `reports-suppliers` tinyint(1) DEFAULT '0',
  `reports-staff` tinyint(1) DEFAULT '0',
  `reports-register` tinyint(1) DEFAULT '0',
  `sales-payments` tinyint(1) DEFAULT '0',
  `purchases-payments` tinyint(1) DEFAULT '0',
  `purchases-expenses` tinyint(1) DEFAULT '0',
  `products-adjustments` tinyint(1) NOT NULL DEFAULT '0',
  `bulk_actions` tinyint(1) NOT NULL DEFAULT '0',
  `customers-deposits` tinyint(1) NOT NULL DEFAULT '0',
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT '0',
  `products-barcode` tinyint(1) NOT NULL DEFAULT '0',
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `reports-expenses` tinyint(1) NOT NULL DEFAULT '0',
  `reports-daily_purchases` tinyint(1) DEFAULT '0',
  `reports-monthly_purchases` tinyint(1) DEFAULT '0',
  `products-stock_count` tinyint(1) DEFAULT '0',
  `edit_price` tinyint(1) DEFAULT '0',
  `reports-profit_and_loss` tinyint(1) DEFAULT NULL,
  `reports-warehouse_chat` tinyint(1) DEFAULT NULL,
  `reports-stock_in_out_report` tinyint(1) DEFAULT NULL,
  `reports-register_report` tinyint(1) DEFAULT NULL,
  `account_receivable` tinyint(1) DEFAULT NULL,
  `account_payable` tinyint(1) DEFAULT NULL,
  `add-purchases-expenses` tinyint(1) DEFAULT NULL,
  `sum_purchases_payment` tinyint(1) DEFAULT NULL,
  `list_purchases_payment` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `reports-profit_and_loss`, `reports-warehouse_chat`, `reports-stock_in_out_report`, `reports-register_report`, `account_receivable`, `account_payable`, `add-purchases-expenses`, `sum_purchases_payment`, `list_purchases_payment`) VALUES
(1, 5, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, 1, 1, 0, 0, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 0, NULL, NULL, 0, 0, 1, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, NULL, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL),
(3, 7, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 8, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 9, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(6, 10, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 0, 1, 0, 1, 0, 0, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1),
(7, 11, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

DROP TABLE IF EXISTS `sma_pos_register`;
CREATE TABLE IF NOT EXISTS `sma_pos_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2020-06-20 04:43:57', 1, '0.0000', 'close', '76.0000', 0, 0, '76.0000', 0, 0, '', '2021-06-10 10:25:25', NULL, 27),
(2, '2020-12-06 15:21:53', 27, '100.0000', 'close', '-8846002424044.2000', 0, 0, '-8846002424044.2000', 0, 0, '', '2020-12-25 14:41:57', '0', 27),
(3, '2020-12-25 14:43:08', 27, '200.0000', 'close', '55995.2750', 0, 0, '55995.2750', 0, 0, '', '2021-06-03 15:21:20', '0', 27),
(4, '2021-06-03 15:21:46', 27, '10.0000', 'close', '40.4000', 0, 0, '40.4000', 0, 0, '', '2021-06-10 10:25:48', '0', 27),
(5, '2021-06-10 10:26:06', 27, '10.0000', 'close', '13.0000', 0, 0, '13.0000', 0, 0, '', '2021-06-10 10:26:54', '0', 27),
(6, '2021-06-10 10:27:20', 27, '20.0000', 'close', '57.0750', 0, 0, '57.0750', 0, 0, '', '2021-06-19 11:51:16', '0', 27),
(7, '2021-06-23 16:41:23', 27, '100.0000', 'close', '140.2000', 0, 0, '140.2000', 0, 0, '', '2021-07-02 09:58:16', '0', 27),
(8, '2021-07-02 09:58:23', 27, '10.0000', 'close', '164.4000', 0, 0, '164.4000', 0, 0, '', '2021-07-09 10:47:08', NULL, 27),
(9, '2021-07-09 10:47:34', 27, '500.0000', 'close', '517.4000', 0, 0, '517.4000', 0, 0, '', '2021-07-13 11:46:35', '0', 27),
(10, '2021-07-13 11:47:02', 27, '200.0000', 'close', '224.0000', 0, 0, '224.0000', 0, 0, '<p>ចំនាយលើទិញសាច់ 104</p>', '2021-07-25 09:44:15', '0', 27),
(11, '2021-07-25 09:46:37', 27, '25.0000', 'close', '214.4000', 0, 0, '214.4000', 0, 0, '', '2021-08-03 18:22:59', NULL, 27),
(12, '2021-08-03 18:23:13', 27, '20.0000', 'close', '26.0000', 0, 0, '26.0000', 0, 0, '', '2021-08-03 18:27:03', NULL, 27),
(13, '2021-08-04 08:46:30', 27, '600.0000', 'close', '615.6250', 0, 0, '615.6250', 0, 0, '', '2021-08-04 15:36:35', NULL, 27),
(14, '2021-08-04 15:41:56', 27, '100.0000', 'close', '223.4740', 0, 0, '223.4740', 0, 0, '', '2021-10-08 14:40:40', '0', 27),
(15, '2021-10-08 14:41:10', 27, '100.0000', 'close', '130.0000', 0, 1, '130.0000', 0, 1, '', '2021-10-08 14:54:08', '0', 27),
(16, '2021-10-08 15:07:47', 27, '7000.0000', 'close', '9258.4160', 0, 0, '9258.4160', 0, 0, '', '2021-11-13 16:22:33', '0', 27),
(17, '2021-11-15 13:58:30', 27, '0.0000', 'close', '13120.0000', 0, 3, '13120.0000', 0, 3, '', '2021-12-23 14:28:18', '0', 27),
(18, '2021-12-21 16:51:37', 32, '20.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2021-12-23 10:24:17', 33, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2021-12-23 14:28:29', 27, '100.0000', 'close', '198.5000', 0, 1, '198.5000', 0, 1, '', '2021-12-23 22:45:58', '0', 27),
(21, '2021-12-23 22:46:59', 27, '100.0000', 'close', '4471.5000', 0, 0, '4471.5000', 0, 0, '', '2021-12-29 15:12:17', '0', 27),
(22, '2021-12-29 15:13:07', 27, '0.0000', 'close', '36.0000', 0, 1, '36.0000', 0, 1, '', '2022-01-03 11:38:10', '34', 27),
(23, '2022-01-03 13:41:27', 27, '0.0000', 'close', '0.0000', 0, 2, '0.0000', 0, 2, '', '2022-01-03 15:32:35', NULL, 27),
(24, '2022-01-03 15:51:41', 27, '10000.0000', 'close', '10000.0000', 0, 0, '10000.0000', 0, 0, '', '2022-01-03 15:52:04', NULL, 27),
(25, '2022-01-03 15:56:52', 27, '100.0000', 'close', '112.5000', 0, 0, '112.5000', 0, 0, '', '2022-01-04 13:59:36', NULL, 27),
(26, '2022-01-06 08:27:36', 27, '0.0000', 'close', '3822.6300', 0, 1, '3822.6300', 0, 1, '<p>test</p>', '2022-02-01 10:15:41', '0', 27),
(27, '2022-01-10 13:36:22', 35, '1222.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2022-02-01 10:16:07', 27, '12.0000', 'close', '57.0000', 0, 0, '57.0000', 0, 0, '', '2022-02-01 10:28:24', '0', 27),
(29, '2022-02-01 10:28:40', 27, '10.0000', 'close', '25.0000', 0, 1, '25.0000', 0, 1, '', '2022-02-01 10:38:35', NULL, 27),
(30, '2022-02-01 10:40:49', 27, '5.0000', 'close', '15.0000', 0, 0, '15.0000', 0, 0, '', '2022-02-01 10:41:55', NULL, 27),
(31, '2022-02-01 11:53:25', 27, '12.0000', 'close', '164.0000', 0, 0, '164.0000', 0, 0, '', '2022-02-08 14:12:03', NULL, 27),
(32, '2022-02-02 12:15:57', 36, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2022-02-06 11:21:19', 37, '40000.0000', 'close', '40000.0000', 0, 0, '40000.0000', 0, 0, '', '2022-02-06 11:21:25', NULL, 37),
(34, '2022-02-08 14:12:17', 27, '100.0000', 'close', '139284.2500', 0, 2, '139284.2500', 0, 2, '', '2022-03-07 12:00:15', '0', 27),
(35, '2022-02-25 19:55:05', 38, '100.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2022-03-05 09:05:07', 39, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2022-03-07 12:00:25', 27, '100.0000', 'close', '111.0000', 0, 1, '111.0000', 0, 1, '', '2022-03-07 12:02:08', '0', 27),
(38, '2022-03-07 13:22:18', 27, '0.0000', 'close', '111.4000', 0, 0, '111.4000', 0, 0, '', '2022-03-14 09:38:02', '0', 27),
(39, '2022-03-14 09:38:22', 27, '4.0000', 'close', '16.0000', 0, 1, '16.0000', 0, 1, '', '2022-03-14 17:04:58', '0', 27),
(40, '2022-03-14 17:21:27', 27, '10.0000', 'close', '5302.5000', 0, 1, '5302.5000', 0, 1, '', '2022-03-20 22:20:35', '0', 27),
(41, '2022-03-21 12:25:47', 27, '0.0000', 'close', '2780.5750', 0, 0, '2780.5750', 0, 0, '', '2022-03-31 17:31:58', '0', 27),
(42, '2022-03-25 17:16:05', 40, '100.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2022-03-31 17:32:09', 27, '100.0000', 'close', '202.0000', 0, 0, '202.0000', 0, 0, '', '2022-03-31 17:32:50', '0', 27),
(44, '2022-04-01 15:41:52', 27, '1000.0000', 'close', '3251.0000', 0, 0, '3251.0000', 0, 0, '', '2022-04-24 10:13:41', '0', 27),
(45, '2022-04-24 10:13:57', 27, '100.0000', 'close', '176.0000', 0, 0, '176.0000', 0, 0, '', '2022-04-24 10:14:38', '0', 27),
(46, '2022-04-24 10:14:48', 27, '100.0000', 'close', '703.7000', 0, 0, '703.7000', 0, 0, '', '2022-05-03 12:51:55', '0', 27),
(47, '2022-05-03 12:52:08', 27, '100.0000', 'close', '33.3200', 0, 0, '33.3200', 0, 0, '', '2022-06-07 10:48:39', '0', 27),
(48, '2022-06-07 10:49:33', 27, '100.0000', 'close', '304.0000', 0, 0, '304.0000', 0, 0, '', '2022-06-08 15:22:22', '0', 27),
(49, '2022-06-08 15:22:36', 27, '100.0000', 'close', '2726.3000', 0, 0, '2726.3000', 0, 0, '', '2022-06-14 14:02:38', NULL, 27),
(50, '2022-06-14 14:02:52', 27, '100.0000', 'close', '116.0000', 0, 0, '116.0000', 0, 0, '', '2022-06-14 14:03:42', NULL, 27),
(51, '2022-06-14 14:04:06', 27, '100.0000', 'close', '147.0500', 0, 0, '147.0500', 0, 0, '', '2022-06-16 15:09:16', '0', 27),
(52, '2022-06-16 15:09:25', 27, '100.0000', 'close', '169.0000', 0, 0, '169.0000', 0, 0, '', '2022-06-23 15:02:04', '0', 27),
(53, '2022-06-23 15:03:35', 27, '100.0000', 'close', '533.4000', 1, 1, '533.4000', 1, 1, '', '2022-07-13 11:55:57', '0', 27),
(54, '2022-07-08 12:59:04', 45, '50000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2022-07-13 11:58:47', 27, '100.0000', 'close', '168.0000', 0, 0, '168.0000', 0, 0, '', '2022-07-15 09:31:04', '0', 27),
(56, '2022-07-15 09:33:51', 27, '100.0000', 'close', '3655.8000', 0, 0, '3655.8000', 0, 0, '', '2022-07-19 20:20:27', '0', 27),
(57, '2022-07-19 20:20:47', 27, '100.0000', 'close', '-85.0000', 0, 0, '-85.0000', 0, 0, '', '2022-07-29 14:30:02', '0', 27),
(58, '2022-08-02 16:36:30', 27, '5000.0000', 'close', '5008.0000', 0, 0, '5008.0000', 0, 0, '', '2022-09-01 15:18:15', '0', 27),
(59, '2022-08-27 13:20:53', 48, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2022-09-01 15:18:38', 27, '10.0000', 'close', '21.0000', 0, 0, '21.0000', 0, 0, '', '2022-09-01 15:19:50', '0', 27),
(61, '2022-09-01 15:22:26', 27, '10.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

DROP TABLE IF EXISTS `sma_pos_settings`;
CREATE TABLE IF NOT EXISTS `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT '1',
  `paypal_pro` tinyint(1) DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `rounding` tinyint(1) DEFAULT '0',
  `char_per_line` tinyint(4) DEFAULT '42',
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.2.2',
  `after_sale_page` tinyint(1) DEFAULT '0',
  `item_order` tinyint(1) DEFAULT '0',
  `authorize` tinyint(1) DEFAULT '0',
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT '1',
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT '0',
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 9, 25, 1, 2, '1', 'GST Reg', 'VAT Reg', '123456789', '987654321', NULL, 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 0, NULL, 0, 'default', 1, 0, 0, 0, 42, NULL, 'purchase_code', 'envato_username', '3.2.2', 0, 0, 0, '', 1, NULL, 'null', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

DROP TABLE IF EXISTS `sma_price_groups`;
CREATE TABLE IF NOT EXISTS `sma_price_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(13, 'ggwp'),
(11, 'sophorn'),
(12, 'Whole Sale');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

DROP TABLE IF EXISTS `sma_printers`;
CREATE TABLE IF NOT EXISTS `sma_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

DROP TABLE IF EXISTS `sma_products`;
CREATE TABLE IF NOT EXISTS `sma_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT '20.0000',
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text,
  `tax_method` tinyint(1) DEFAULT '0',
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT '0',
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `weight` decimal(10,4) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `category_id` (`category_id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `category_id_2` (`category_id`),
  KEY `unit` (`unit`),
  KEY `brand` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `location`, `description`, `created_date`, `updated_date`) VALUES
(227, '2903741535', 'Almond Doughnut', 23, '0.0000', '5.0000', '50.0000', '49d5e8e8e5d9a9067b6bb6d5f8f2d299.png', 25, NULL, '', '', '', '', '', '', '1144.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1055.0000', NULL, 1, NULL, 1, '2', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(229, 'Strawberry Doughnut', 'Strawberry Doughnut', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1080.0000', NULL, 1, NULL, 1, '3', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(230, 'BakeHam', 'Bake Ham', 28, '0.0000', '3.0000', '50.0000', 'b3d1815114e00c725a7faeddb6563abb.jpg', 25, NULL, '', '', '', '', '', '', '994.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(231, '98321867156', 'Bacon Onion', 28, '0.0000', '3.0000', '50.0000', '33219e745c8f7dac914d7b007f25bec6.jpg', 25, NULL, '', '', '', '', '', '', '30998.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(232, 'E00001', 'Egg Sandwich', 28, '0.0000', '3.0000', '50.0000', 'f14db6e46fd7bb416ab34913d6dd5655.jpg', 25, NULL, '', '', '', '', '', '', '1245.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(233, 'G00002', 'Green Onion Floss', 28, '0.0000', '3.0000', '50.0000', 'cba1906b2d72b570839dd8d3619c3c61.jpg', 25, NULL, '', '', '', '', '', '', '1100.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(234, 'G0003', 'Green Onion', 28, '0.0000', '3.0000', '50.0000', '83718a81ccaccbd220c7cb82ac049dbe.jpg', 25, NULL, '', '', '', '', '', '', '998.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(235, 'Ham and Cheese Onion 4', 'Ham and Cheese Onion 3', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1099.0000', NULL, 1, NULL, 1, '9', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(236, 'Green Onion Hot Dog', 'Green Onion Hot Dog', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '10', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(237, 'Cheese Stick213', 'Cheese Stick', 28, '0.0000', '3.0000', '50.0000', '001485c9fa9a024a7c11264a3a58bf23.jpg', 25, NULL, '', '', '', '', '', '', '999.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(238, 'Coconut Twist', 'Coconut Twist', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '31001.0000', NULL, 1, NULL, 1, '12', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(239, 'c00001', 'Cream001', 28, '0.0000', '3.0000', '50.0000', 'cf4812a00c119cf762ed847234a258df.jpg', 25, NULL, '', '', '', '', '', '', '1095.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(240, 'Red Bean Bun', 'Red Bean Bun', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '14', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(241, 'Milk Raisin Bun', 'Milk Raisin Bun', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '15', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(242, 'Milk Custard Bread 3', 'Milk Custard Bread 2', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '31100.0000', NULL, 1, NULL, 1, '16', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(243, 'Snow Bread', 'Snow Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '17', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(244, 'Raisin Roll', 'Raisin Roll', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '18', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(245, 'Milk Soft', 'Milk Soft', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '19', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(246, 'Raisin Bread', 'Raisin Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '20', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(247, 'White Toast', 'White Toast', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '21', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(248, 'Milk Raisin Toast', 'Milk Raisin Toast', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '22', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(249, 'Pandoro 4', 'Pandoro 3', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '23', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(250, 'Whole Wheat Floss 3', 'Whole Wheat Floss 2', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '24', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(251, 'Soft Garlic', 'Soft Garlic', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '25', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(252, 'Ham Cheese Bread', 'Ham Cheese Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '26', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(253, 'G00001', 'Golden Cheese Bread', 28, '0.0000', '3.0000', '50.0000', 'bf2d344832e0a6f86bcb41a80db15031.jpg', 25, NULL, '', '', '', '', '', '', '999.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(254, 'Milk Bread', 'Milk Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '28', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(255, 'Pine Apple Bread', 'Pine Apple Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '990.0000', NULL, 1, NULL, 1, '29', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(256, 'Whole Wheat Toast', 'Whole Wheat Toast', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '30', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(257, 'Sausage Doughnut', 'Sausage Doughnut', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '31', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(258, 'D0001', 'Douhnut', 28, '0.0000', '3.0000', '50.0000', '7b4bf405afaf3a951627658141cdf857.jpeg', 25, NULL, '', '', '', '', '', '', '1000.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(259, 'Honey Baguette', 'Honey Baguette', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '33', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(260, 'Sausage Floss Bread', 'Sausage Floss Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '34', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(261, 'F0002', 'Floss Roll', 28, '0.0000', '3.0000', '50.0000', 'd93f03677ffcb19231a0fb431fbf116d.jpg', 25, NULL, '', '', '', '', '', '', '999.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(262, 'F0001', 'Floss Bread', 28, '0.0000', '3.0000', '50.0000', 'cfb8f4a68e8494f23f2abe2d4f59741e.jpg', 25, NULL, '', '', '', '', '', '', '1000.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(263, 'Milk Toast', 'Milk Toast', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '37', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(264, 'Red Bean Custard Bread', 'Red Bean Custard Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '38', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(265, 'Sausage Roll Bread', 'Sausage Roll Bread', 28, '0.0000', '3.0000', '50.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '39', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(266, 'BakeCheese', 'Bake Cheese', 28, '0.0000', '3.0000', '50.0000', '4608f63256d1930acca62a74822521fa.jpg', 25, NULL, '', '', '', '', '', '', '996.0000', NULL, 1, '', 1, 'code25', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(267, 'Oolong tea', 'Oolong tea', 22, '0.0000', '1.4000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '41', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(268, 'Jasmin tea', 'Jasmin tea', 22, '0.0000', '1.4000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '42', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(269, 'Black tea12', 'Black tea', 22, '0.0000', '1.4000', '50.0000', '70efb17dcf51c623aa2d1bfc408fd079.jpg', 30, NULL, '', '', '', '', '', '', '1000.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(270, 'Tiwan tea', 'Tiwan tea', 22, '0.0000', '1.4000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '44', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(271, 'Milk tea', 'Milk tea', 22, '0.0000', '2.3000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '45', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(272, 'Oolong  Milk Tea', 'Oolong  Milk Tea', 22, '0.0000', '2.3000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '46', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(273, 'Jasmin   Milk Tea', 'Jasmin   Milk Tea', 22, '0.0000', '2.3000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '47', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(274, 'Black Milk Tea', 'Black       Milk Tea', 22, '0.0000', '2.3000', '50.0000', '076d6cae6eebaadad2dd12b0c7a8525d.jpg', 30, NULL, '', '', '', '', '', '', '1000.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(275, 'Tiwan     Milk Tea', 'Tiwan     Milk Tea', 22, '0.0000', '2.3000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '49', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(276, 'Caramel milk tea', 'Caramel milk tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '50', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(277, 'Brown sugar milk tea', 'Brown sugar milk tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '51', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(278, 'Coffee milk tea', 'Coffee milk tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '52', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(279, 'Peach  fruit tea', 'Peach  fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '53', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(280, 'Passion fruit tea', 'Passion fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '54', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(281, 'Mango fruit tea', 'Mango fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '55', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(282, 'Lemon tae', 'Lemon tae', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '56', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(283, 'Honey tea', 'Honey tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '57', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(284, 'Peach mocchiato fruit tea', 'Peach mocchiato fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '58', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(285, 'Passion mocchiato fruit tea', 'Passion mocchiato fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '59', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(286, 'Mango mocchiato fruit tea', 'Mango mocchiato fruit tea', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '60', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(287, 'Honey mocchiato', 'Honey mocchiato', 22, '0.0000', '2.5000', '50.0000', '', 30, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '61', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(288, 'Hot espresso (Small)', 'Hot espresso', 30, '0.0000', '1.8750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1098.0000', NULL, 1, NULL, 1, '62', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(289, 'Hot double espresso (Small)', 'Hot double espresso', 30, '0.0000', '2.2500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '63', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(290, 'Hot americano (Small)', 'Hot americano', 30, '0.0000', '1.8750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '64', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(291, 'Hot cappuccino (Small)', 'Hot cappuccino', 30, '0.0000', '2.2500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '65', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(292, 'Hot latte (Small)', 'Hot latte', 30, '0.0000', '2.6250', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '66', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(293, 'Hot mocha latte (Small)', 'Hot mocha latte', 30, '0.0000', '2.3750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '67', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(294, 'Hot caramel latte (Small)', 'Hot caramel latte', 30, '0.0000', '2.3750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '68', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(295, 'Hot vanilla latte (Small)', 'Hot vanilla latte', 30, '0.0000', '2.3750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '69', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(296, 'Iced Latte (Small)', 'Iced Latte', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '70', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(297, 'Iced lemon Tea (Small)', 'Iced lemon Tea', 30, '0.0000', '1.9750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '71', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(298, 'Iced green Tea (Small)', 'Iced green Tea', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '72', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(299, 'Iced Americano (Small)', 'Iced Americano', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '73', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(300, 'Iced Caramel Latte (Small)', 'Iced Caramel Latte', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '74', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(301, 'Iced Vanilla Latte (Small)', 'Iced Vanilla Latte', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '75', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(302, 'Iced mocha latte (Small)', 'Iced mocha latte', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '76', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(303, 'Iced chocolate (Small)', 'Iced chocolate', 30, '0.0000', '2.5500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '77', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(304, 'Iced Passion Soda (Small)', 'Iced Passion Soda', 30, '0.0000', '2.4000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '78', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(305, 'Iced Passion Milk (Small)', 'Iced Passion Milk', 30, '0.0000', '2.4000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '79', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(306, 'Coffee frappe (Small)', 'Coffee frappe', 30, '0.0000', '2.3000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '80', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(307, 'Mocha frappe (Small)', 'Mocha frappe', 30, '0.0000', '2.3000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '81', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(308, 'Caramel frappe (Small)', 'Caramel frappe', 30, '0.0000', '2.3000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '82', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(309, 'Chocolate frappe (Small)', 'Chocolate frappe', 30, '0.0000', '2.3000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '83', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(310, 'Green tea frappe (Small)', 'Green tea frappe', 30, '0.0000', '2.3000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '84', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(311, 'Orang mojito (Small)', 'Orang mojito', 30, '0.0000', '2.8500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '85', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(312, 'Lime mojito (Small)', 'Lime mojito', 30, '0.0000', '2.8500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '86', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(314, 'Lemon Soda (Small)', 'Lemon Soda', 30, '0.0000', '2.6000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '88', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(315, 'Strawberry Sody (Small)', 'Strawberry Sody', 30, '0.0000', '2.6000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '89', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(316, 'Mango Soda (Small)', 'Mango Soda', 30, '0.0000', '2.6000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '90', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(317, 'Passion Fruit Soda (Small)', 'Passion Fruit Soda', 30, '0.0000', '2.6000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '91', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(318, 'Hot espresso', 'Hot espresso', 31, '0.0000', '2.3750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '92', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(319, 'Hot double espresso', 'Hot double espresso', 31, '0.0000', '2.7500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '93', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(320, 'Hot americano', 'Hot americano', 31, '0.0000', '2.3750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '94', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(321, 'Hot cappuccino', 'Hot cappuccino', 31, '0.0000', '2.7500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '95', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(322, 'Hot latte', 'Hot latte', 31, '0.0000', '3.0000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '96', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(323, 'Hot mocha latte', 'Hot mocha latte', 31, '0.0000', '2.7500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '97', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(324, 'Hot caramel latte', 'Hot caramel latte', 31, '0.0000', '2.7500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '98', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(325, 'Hot vanilla latte', 'Hot vanilla latte', 31, '0.0000', '2.7500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '99', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(326, 'Iced Latte', 'Iced Latte', 31, '0.0000', '3.0000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '100', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(327, 'Iced lemon Tea', 'Iced lemon Tea', 31, '0.0000', '2.2000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '101', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(328, 'Iced green Tea', 'Iced green Tea', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '102', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(329, 'Iced Americano', 'Iced Americano', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '103', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(330, 'Iced Caramel Latte', 'Iced Caramel Latte', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '104', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(331, 'Iced Vanilla Latte', 'Iced Vanilla Latte', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '105', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(332, 'Iced mocha latte', 'Iced mocha latte', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '106', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(333, 'Iced chocolate', 'Iced chocolate', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '107', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(334, 'Iced Passion Soda', 'Iced Passion Soda', 31, '0.0000', '2.9500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '108', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(335, 'Iced Passion Milk', 'Iced Passion Milk', 31, '0.0000', '2.9500', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '109', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(336, 'Coffee frappe', 'Coffee frappe', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '110', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(337, 'Mocha frappe', 'Mocha frappe', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '111', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(338, 'Caramel frappe', 'Caramel frappe', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '112', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(339, 'Chocolate frappe', 'Chocolate frappe', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '113', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(340, 'Green tea frappe', 'Green tea frappe', 31, '0.0000', '2.8000', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '114', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(341, 'Orang mojito', 'Orang mojito', 31, '0.0000', '3.7250', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '115', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(342, 'Lime mojito', 'Lime mojito', 31, '0.0000', '3.7250', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '116', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(344, 'Lemon Soda', 'Lemon Soda', 31, '0.0000', '2.9750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '118', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(345, 'Strawberry Sody', 'Strawberry Sody', 31, '0.0000', '2.9750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '119', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(346, 'Mango Soda', 'Mango Soda', 31, '0.0000', '2.9750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '120', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(347, 'Passion Fruit Soda', 'Passion Fruit Soda', 31, '0.0000', '2.9750', '50.0000', '', 27, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '121', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(348, 'Blue sky', 'Blue sky', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '999.0000', NULL, 1, NULL, 1, '122', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(349, 'Blueberry choco', 'Blueberry choco', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '123', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(350, 'Cap cake', 'Cap cake', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '124', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(351, 'Chocolate choco chip', 'Chocolate choco chip', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '125', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(352, 'Chocolate love', 'Chocolate love', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '126', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(353, 'Coconut cream', 'Coconut cream', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '127', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(354, 'Fresh fruit choco', 'Fresh fruit choco', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '128', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(355, 'Fruit vanilla', 'Fruit vanilla', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '129', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(356, 'Layer custard', 'Layer custard', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '130', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(357, 'Light star', 'Light star', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '131', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(358, 'Mango fresh cream', 'Mango fresh cream', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '132', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(359, 'Milk Pudding', 'Milk Pudding', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '133', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(360, 'Mini rool', 'Mini rool', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '134', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(361, 'Mouse choco fresh cream', 'Mouse choco fresh cream', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '135', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(362, 'MX Chocolate', 'MX Chocolate', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '136', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(363, 'My crush', 'My crush', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '137', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(364, 'Pandan cake', 'Pandan cake', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '138', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(365, 'Pig cake', 'Pig cake', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '139', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(366, 'Slyte cake', 'Slyte cake', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '140', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(367, 'Tiramisu', 'Tiramisu', 28, '0.0000', '15.0000', '50.0000', '', 26, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '141', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 28, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(368, 'Candle Number (1Box*10Pcs)', 'Candle Number (1Box*10Pcs)', 26, '0.0000', '0.5750', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '991.0000', NULL, 1, NULL, 1, '142', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL);
INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `location`, `description`, `created_date`, `updated_date`) VALUES
(369, 'Candle Love for Birthday Cake (1Ctn*24Pcs)', 'Candle Love for Birthday Cake (1Ctn*24Pcs)', 26, '0.0000', '2.3000', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '143', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(370, 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', 26, '0.0000', '2.3000', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '999.0000', NULL, 1, NULL, 1, '144', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(371, 'Paper Party Hat', 'Paper Party Hat', 26, '0.0000', '2.3000', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '145', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(372, 'Hat Disco for Birthday Cake', 'Hat Disco for Birthday Cake', 26, '0.0000', '2.3000', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '999.0000', NULL, 1, NULL, 1, '146', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(373, 'Popper Bomb Party (Dollar)', 'Popper Bomb Party (Dollar)', 26, '0.0000', '2.3000', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '147', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 26, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(376, 'Spray for Birthday Cake (1Ctn*48Can)', 'Spray for Birthday Cake (1Ctn*48Can)', 25, '0.0000', '1.1500', '50.0000', '', 28, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '150', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 25, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(377, 'Dasani', 'Dasani', 23, '0.0000', '0.7500', '50.0000', '', 32, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '151', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 23, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(378, 'Vital', 'Vital', 23, '0.0000', '0.7500', '50.0000', '', 32, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '152', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 23, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(379, '184623782', 'Angkorpuro', 23, '0.2500', '1.0000', '50.0000', 'd3778cd505209eefde1380ab58e03c9c.jpg', 41, NULL, '', '', '', '', '', '', '195.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 50, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(380, 'Cocacola', 'Cocacola', 23, '0.0000', '0.7500', '50.0000', '', 32, NULL, '', '', '', '', NULL, NULL, '1145.0000', NULL, 1, NULL, 1, '154', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 23, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(381, 'Soda', 'Soda', 23, '0.0000', '0.7500', '50.0000', '', 32, NULL, '', '', '', '', NULL, NULL, '1000.0000', NULL, 1, NULL, 1, '155', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 23, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(386, 'F00001', 'Banana', 29, '2.0000', '4.0000', '5.0000', 'no_image.png', 37, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 29, 29, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(387, 'Mask', 'Sophat', 23, '12.0000', '30.0000', '0.0000', 'no_image.png', 25, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(388, '8846002481704', 'Vital', 31, '1000.0000', '2000.0000', '0.0000', 'e029536822cef1f96da0305fe0c63852.jpg', 35, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 31, 31, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(390, '8888311090444', 'Gold Roast', 28, '3.0000', '4.0000', '0.0000', 'e821e5f233b114266d11e2b14a11cee4.jpg', 27, NULL, '', '', '', '', '', '', '74.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(392, '8843883889889', 'Elan water', 23, '0.2000', '0.5000', '0.0000', '5e3b57d834d65cb0b8bc773092eda032.jpg', 32, NULL, '', '', '', '', '', '', '-105.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(415, '34100064', 'Kulen Water', 23, '0.3000', '0.4000', '0.0000', '97b7be4f1915f295c18600c2da06b2f3.png', 32, NULL, '', '', '', '', '', '', '100.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(416, '59227711', 'Pocarisweat', 25, '1.0000', '2.0000', '0.0000', 'f89a298c1548b8fcba81ea9fa94a6146.jpg', 41, NULL, '', '', '', '', '', '', '199.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(419, 'C000001', 'អាវ coat', 36, '7.0000', '10.0000', '10.0000', 'no_image.png', 40, NULL, '', '', '', '', '', '', '110.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 36, 36, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(422, '8847100562395', 'Coca Cola', 25, '1.0000', '1.0000', '0.0000', 'dfaa9d6294ab355c332d10c6075304c2.jpg', 41, NULL, '', '', '', '', '', '', '3.0000', NULL, 1, '', NULL, 'code25', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(428, '94575518', 'Tasty Bread', 29, '0.0000', '12.0000', '0.0000', 'no_image.png', 25, NULL, '', '', '', '', '', '', '100.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 29, 29, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(430, '90716944', 'mask 4 layers', 47, '0.3000', '0.4000', '0.0000', 'no_image.png', 35, NULL, '', '', '', '', '', '', '999.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 47, 49, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(432, '65468254', 'sting', 50, '10.0000', '15.0000', '2.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '119.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 51, 50, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(434, '45561', 'មីឆាសាច់គោ', 24, '3.0000', '4.5000', '0.0000', 'no_image.png', 26, NULL, '', '', '', '', '', '', '20.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(435, 'L000034', 'Product 1', 25, '2.0000', '4.0000', '0.0000', 'b437c0dd68ed3d0cb648bab96b7da9d6.jpg', 25, NULL, '', '', '', '', '', '', '20.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(437, 'L98021', 'Product 2', 24, '2.0000', '5.0000', '10.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '220.0000', NULL, 1, NULL, 1, 'code128', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 24, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(438, 'L98022', 'Product 3', 24, '3.0000', '5.0000', '10.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '100.0000', NULL, 1, NULL, 1, 'code128', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 24, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(439, 'L98023', 'Product 4', 24, '2.0000', '5.0000', '10.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '100.0000', NULL, 1, NULL, 1, 'code128', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 24, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(440, 'L98024', 'Product 5', 24, '2.0000', '5.0000', '10.0000', '', 25, NULL, '', '', '', '', NULL, NULL, '200.0000', NULL, 1, NULL, 1, 'code128', NULL, NULL, 0, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 24, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(442, 'S001', 'អ៊ុតសក់នារី', 29, '0.0000', '10.0000', '0.0000', 'no_image.png', 45, NULL, '', '', '', '', '', '', '0.0000', NULL, 0, '', NULL, 'code128', '', '', NULL, 'service', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 29, 29, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(445, 'DD001', 'Dizzy Drinks', 25, '0.0000', '1.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '995.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(446, '53223', 'add', 24, '5.0000', '20.0000', '0.0000', 'no_image.png', 26, NULL, '', '', '', '', '', '', '55.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(449, 'con01', 'ថ្នាំប្រេង 1​ខាំ', 28, '0.0000', '100.0000', '0.0000', '9d406ca33a20ff8cb6c9b2126a2bea48.jpg', 46, NULL, '', '', '', '', '', '', '-99999981.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(450, 'con02', 'ថ្នាំច្រះក្រហម​ 18 k', 28, '0.0000', '6.0000', '0.0000', '26a98cbd18185ba1cf1377cbc64f49ac.jpg', 46, NULL, '', '', '', '', '', '', '-299999975.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(451, 'con03', 'ថ្នាំច្រេះប្រផេះ 1 k', 28, '0.0000', '34.0000', '0.0000', '4e458d5031be8cb44a90090013f42005.jpg', 46, NULL, '', '', '', '', '', '', '-199999989.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(452, 'con04', 'ទឹកមាសលាយទឹក 3​ខាំ', 28, '0.0000', '29.0000', '0.0000', '160a96bfde43b5a9766c1e4bdde9bf2b.png', 46, NULL, '', '', '', '', '', '', '-99999999990.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(453, 'con05', 'ទឹកមាសលាយទឹក 1K', 28, '0.0000', '36.0000', '0.0000', '8a2e88d3bc723f085c55eaf42716d9e2.jpg', 46, NULL, '', '', '', '', '', '', '-99999999990.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(454, 'con06', 'ទឹកមាសលាយទឹក 4K', 28, '0.0000', '102.0000', '0.0000', '5db51925d8982351c51c6d59122a8a3c.jpg', 46, NULL, '', '', '', '', '', '', '-99999999991.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(455, 'con07', 'ទឹកមាសលាយសាំង​ 3ខាំ', 28, '0.0000', '125.0000', '0.0000', '75ccc96f8188b278b7c84168d0ee977b.png', 46, NULL, '', '', '', '', '', '', '-99999984.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(456, 'con08', 'ទឹកមាសលាយសាំង​ 1K', 28, '0.0000', '0.0000', '0.0000', 'b850613cc49238414737ae6771cec649.jpg', 46, NULL, '', '', '', '', '', '', '-99999987.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(457, 'con09', 'ទឹកលាយថ្នាំប្រេង​ 200L', 28, '0.0000', '0.0000', '0.0000', 'dd8f38b0ac8f91e89c405c147e97fe23.jpg', 46, NULL, '', '', '', '', '', '', '-99999983.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(458, 'con10', 'ថ្នាំក្បឿង​ 1k', 28, '0.0000', '322.0000', '0.0000', '687e4d7cd45b51b93123785aff897f19.jpg', 46, NULL, '', '', '', '', '', '', '-500000042.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(459, 'con11', 'ថ្នាំក្បឿង​ 4k', 28, '0.0000', '35.0000', '0.0000', '6b479e3ce8b24ae554f45c3e3af8b019.png', 46, NULL, '', '', '', '', '', '', '-299999999.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(460, 'con12', 'ទ្រនាប់200', 28, '0.0000', '40.0000', '0.0000', 'ac6f6f4321bd53b081c9c0ac1efe2f79.png', 46, NULL, '', '', '', '', '', '', '-99999984.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(461, 'baby02', 'នំកូនក្មេង​ Puffs Banana​​', 28, '0.0000', '3.0000', '0.0000', 'f8bb930cdf6eb1d760b8c9b5e705675b.jpg', 48, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(462, 'baby03', 'ក្តាខៀន​', 28, '0.0000', '5.5000', '0.0000', 'de3e762aa7f64389c56ee027d490c37b.jpg', 48, NULL, '', '', '', '', '', '', '-26.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(463, 'baby04', 'នំកូនក្មេង​ Promina', 28, '0.0000', '2.0000', '0.0000', '679d425bdb7edd27683d1403df464dec.jpg', 48, NULL, '', '', '', '', '', '', '7.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(464, 'baby05', 'កំបុ៉ងបបរ', 28, '0.0000', '2.5000', '0.0000', 'f6a4e0c8a2795ee2ae1c21351c3d808d.jpg', 48, NULL, '', '', '', '', '', '', '-123.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(465, 'baby06', 'ប្រដាប់វាស់កំដៅ Rossmax', 28, '0.0000', '3.0000', '0.0000', 'c52f6dbd0b8afe645f13851bd71f9565.jpg', 48, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(466, 'baby07', 'ម៉ាសុីនស្ពុងច្រមុះ Rossmax', 28, '0.0000', '65.0000', '0.0000', '07de5fb5b942e2be2c7c68f927ddbc2a.jpg', 48, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(467, 'baby08', 'ម្ស៉ៅលាបខ្លួនកូនក្មេង​ JonhSon (Pink) 180g', 28, '0.0000', '1.0000', '0.0000', 'a656698715f4f9296abf7fa25d83970d.jpg', 48, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 28, '0.0000', '10.5000', '0.0000', '59262b473756dc71d9753313b6a6615d.jpg', 48, NULL, '', '', '', '', '', '', '1.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(470, 'baby11', 'ខោទឹកនោម Yuniku (XL)', 28, '0.0000', '10.5000', '0.0000', 'ebf3df22ca31c5deab3a9613857f2ab0.jpg', 48, NULL, '', '', '', '', '', '', '7.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', 28, '5.0000', '10.0000', '0.0000', '2e8ef28c8dd692237190ddd09ac4bd74.jpg', 48, NULL, '', '', '', '', '', '', '6.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, '2022-03-31'),
(473, 'mart01', 'កូកា', 28, '0.0000', '3.0000', '0.0000', '77318476de999339b55e93341b15b31c.jpg', 47, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(474, 'mart02', 'កូកាដប', 28, '0.0000', '3.0000', '0.0000', '5549c6e51999d475cb8ed9f967fbf0da.jpg', 47, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(475, 'mart03', 'សាមុរ៉ៃ', 28, '0.0000', '3.0000', '0.0000', '79adb860e0c008d27023cd778416ab1f.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(476, 'mart04', 'ស្ទីងលឿង', 28, '0.0000', '3.0000', '0.0000', '39140407f1e467cb65fbc705ff6fd10b.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(477, 'mart05', 'ស្ទីងក្រហម', 28, '0.0000', '3.0000', '0.0000', 'cc8ab0f93955e539c6cdd233d89c6326.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(478, 'mart06', 'សេវិនអាប់', 28, '0.0000', '3.0000', '0.0000', '85484807006b8c52e323b7091da2e97c.jpg', 47, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(479, 'mart07', 'ហ្វាន់តាបៃតង', 28, '0.0000', '3.0000', '0.0000', 'db06b4127468fc1d8a17898b02eeb655.png', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(480, 'mart08', 'ហ្វាន់តាទឹកក្រូច', 28, '0.0000', '3.0000', '0.0000', 'd933376f81a42df893b30b0053ff2bd7.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(481, 'mart09', 'ប៊ិបស៊ី', 28, '0.0000', '3.0000', '0.0000', 'd4ef6612ea2e1925002126a331a3616a.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(482, 'mart10', 'អាយខៀវ', 28, '0.0000', '3.0000', '0.0000', 'fbd34775f4a5caea3eed8ab255c727b2.jpg', 47, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', 1, 'code128', NULL, '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 28, 28, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(483, 'l01', 'l', 24, '0.0000', '10.0000', '0.0000', 'no_image.png', 34, NULL, '', '', '', '', '', '', '110.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(484, '92596111', 'miniral water', 24, '0.0000', '12.0000', '0.0000', 'no_image.png', 35, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(485, 'C001', 'coca', 52, '0.0000', '2.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '150.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 52, 52, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(487, '6959375199175', 'Flamingo De-Rust', 23, '1.0000', '1.5000', '0.0000', 'no_image.png', 46, NULL, '', '', '', '', '', '', '-99999999999.9999', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 26, '10.0000', '12.0000', '0.0000', 'no_image.png', 48, NULL, '', '', '', '', '', '', '-11.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 26, 26, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(491, '202103080003', 'l001', 24, '0.0000', '0.0000', '0.0000', 'no_image.png', 26, NULL, '', '', '', '', '', '', '-1.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(492, '864321', 'Product', 24, '2.0000', '5.0000', '0.0000', 'no_image.png', 48, NULL, '', '', '', '', '', '', '40.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(493, '4718050609666', 'ADATA C008 USB Flash Drive 32GB', 24, '10.0000', '2000.0000', '0.0000', 'no_image.png', 38, NULL, '', '', '', '', '', '', '18.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 0, NULL, NULL, NULL),
(494, '88548388482', 'Vital 330ml', 24, '10.0000', '20.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(495, '47865190', 'Apple', 20, '0.0000', '1.0000', '0.0000', 'no_image.png', 37, NULL, '', '', '', '', '', '', '99.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 20, 20, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(497, '891206081920', 'Vital', 52, '0.2500', '0.5000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '9.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 52, 52, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(499, '92797691', 'ប៊ិច', 57, '0.0250', '0.3800', '0.0000', 'no_image.png', 45, NULL, '', '', '', '', '', '', '500.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 57, 57, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(500, '75440192', 'test-30', 29, '0.0000', '1.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '55.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 29, 29, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(501, '81389169', 'X', 29, '0.0000', '1.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '20.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(502, '38042349', 'Variant', 29, '1.0000', '2.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '45.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 29, 29, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(504, 'A001', 'ជេល', 26, '3.0000', '5.0000', '0.0000', 'no_image.png', 48, NULL, '', '', '', '', '', '', '16.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 26, 26, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(505, '12345', 'CoCa', 64, '0.2500', '2.0000', '0.0000', 'c1e4b046db457ec39501225947ff4578.png', 41, 32, '', '', '', '', '', '', '18.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 1, '0', NULL, '0.0000', 3, NULL, NULL, '2022-06-14'),
(507, '27050974', 'Test', 23, '0.0000', '12.0000', '0.0000', 'no_image.png', 44, NULL, '', '', '', '', '', '', '99.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 50, 23, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(508, '41337102', 'Coca', 24, '2500.0000', '3000.0000', '0.0000', 'no_image.png', 41, 32, '', '', '', '', '', '', '1200.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(509, '45596144', 'coffe', 30, '2500.0000', '12223.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 30, 30, 0, '0', NULL, '0.0000', 3, NULL, NULL, NULL),
(510, '14891549', 'asda', 20, '0.0000', '12.0000', '0.0000', '6535381fa32592963821fc40a19614d7.jpg', 48, NULL, '', '', '', '', '', '', '-48.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 20, 20, 0, '0', NULL, '0.0000', 0, NULL, '2022-04-04', NULL),
(511, '18427165', 'vital', 52, '0.0000', '1.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '240.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 52, 52, 0, '0', NULL, '0.0000', 3, NULL, '2022-04-08', NULL),
(512, '03733060', 'Test', 24, '0.0000', '12.0000', '0.0000', 'no_image.png', 25, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 24, 24, 1, '0', NULL, '0.0000', 3, NULL, '2022-04-12', NULL),
(513, '69360799', 'test', 25, '0.0000', '2.5000', '0.0000', 'no_image.png', 49, NULL, '', '', '', '', '', '', '118.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, '0', NULL, '0.0000', 3, NULL, '2022-04-20', NULL),
(514, '90068270', 'test case', 36, '0.0000', '453.0000', '0.0000', 'no_image.png', 49, NULL, '', '', '', '', '', '', NULL, NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 36, 36, 1, '0', NULL, '0.0000', 3, NULL, '2022-04-20', '2022-04-20'),
(516, '1234567', 'NTG', 64, '0.0000', '12.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '12.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 63, 63, 0, '0', NULL, '0.0000', 3, NULL, '2022-05-07', '2022-05-07'),
(517, '0988877', 'Fanta', 64, '0.5000', '0.1000', '0.0000', 'no_image.png', 41, 32, '', '', '', '', '', '', '50.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 1, '0', NULL, '0.0000', 3, NULL, '2022-05-10', NULL),
(522, '58692209', 'Hanouman', 64, '1.0000', '1.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 0, '0', NULL, '0.0000', 0, NULL, '2022-06-13', NULL),
(526, '79084292', 'coca', 64, '2000.0000', '2500.0000', '0.0000', 'e8069f1debab9f65aaf90534105d40f0.jpg', 41, NULL, '', '', '', '', '', '', '-13.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 0, '0', NULL, '0.0000', 0, NULL, '2022-06-13', '2022-06-14'),
(528, '64097488', 'sandwitch', 0, '0.0000', '3000.0000', '0.0000', 'no_image.png', 25, NULL, '', '', '', '', '', '', '0.0000', NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, '0', NULL, '0.0000', 0, NULL, '2022-06-17', NULL),
(530, '1212312', 'thinkPad', 64, '15.0000', '20.0000', '0.0000', 'no_image.png', 41, 27, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 2, '0', NULL, '0.0000', 3, NULL, '2022-07-04', NULL),
(532, '27805575', 'Viso', 64, '800.0000', '1000.0000', '0.0000', 'no_image.png', 48, NULL, '', '', '', '', '', '', '-1.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 64, 64, 0, '0', NULL, '0.0000', 0, NULL, '2022-07-15', NULL),
(533, '00001', 'coca cola new', 79, '1.0000', '3.0000', '0.0000', 'no_image.png', 41, NULL, '', '', '', '', '', '', '10.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 79, 79, 0, '0', NULL, '0.0000', 0, NULL, '2022-07-15', '2022-08-03'),
(534, '10005', 'Sanhwich', 80, '2.0000', '3.0000', '0.0000', 'cd83591e83c47554eb6ee32afa82611b.jpg', 50, NULL, '', '', '', '', '', '', '900.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 80, 80, 1, '0', NULL, '0.0000', 0, NULL, '2022-07-15', NULL),
(536, '11343567', 'clear', 81, '1.0000', '2.0000', '0.0000', 'no_image.png', 51, NULL, '', '', '', '', '', '', '7.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 81, 81, 0, '0', NULL, '0.0000', 0, NULL, '2022-07-17', NULL),
(537, '009', 'sandwich', 80, '2.0000', '2.0000', '2.0000', 'no_image.png', 25, NULL, '', '', '', '', '', '', '0.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 80, 80, 1, '0', NULL, '0.0000', 3, NULL, '2022-07-18', NULL),
(538, '109921', 'test', 82, '5.0000', '10.0000', '5.0000', 'no_image.png', 52, NULL, '', '', '', '', '', '', '20.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 82, 82, 2, '0', NULL, '0.0000', 3, NULL, '2022-07-19', NULL),
(539, '19691385', 'Remote Control LG', 65, '1.0000', '3.0000', '0.0000', 'no_image.png', 50, NULL, '', '', '', '', '', '', '-10.0000', NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 65, 65, 0, '0', NULL, '0.0000', 0, NULL, '2022-08-27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

DROP TABLE IF EXISTS `sma_product_photos`;
CREATE TABLE IF NOT EXISTS `sma_product_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_photos`
--

INSERT INTO `sma_product_photos` (`id`, `product_id`, `photo`) VALUES
(1, 2452, '321d5d11aca605a06e125d4a1b58444f.gif'),
(2, 1767, 'deb06a93f73cea8725a30c95e2c67eb7.jpg'),
(3, 510, '106a64592a4d32ff29901a3729849bf0.jpg'),
(10, 526, 'e62acd154c650073b5a565c1372642f7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_price`
--

DROP TABLE IF EXISTS `sma_product_price`;
CREATE TABLE IF NOT EXISTS `sma_product_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `price` decimal(11,4) DEFAULT NULL,
  `discount` varchar(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

DROP TABLE IF EXISTS `sma_product_prices`;
CREATE TABLE IF NOT EXISTS `sma_product_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `price_group_id` (`price_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_prices`
--

INSERT INTO `sma_product_prices` (`id`, `product_id`, `price_group_id`, `price`) VALUES
(2, 379, 12, '20.0000'),
(3, 379, 13, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

DROP TABLE IF EXISTS `sma_product_variants`;
CREATE TABLE IF NOT EXISTS `sma_product_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_variants`
--

INSERT INTO `sma_product_variants` (`id`, `product_id`, `name`, `cost`, `price`, `quantity`) VALUES
(1, 379, 'M', NULL, '0.0000', '-794.0000'),
(2, 379, 'L', NULL, '0.0000', '8.0000'),
(3, 379, 'X', NULL, '0.0000', '10.0000'),
(4, 379, 'XL', NULL, '0.0000', '17.0000'),
(5, 422, 'Size', '1.0000', '3.0000', '13.0000'),
(6, 435, 'White', NULL, '0.0000', '120.0000'),
(7, 435, 'Black', NULL, '0.0000', '120.0000'),
(8, 500, '30-black', NULL, '0.0000', '122.0000'),
(9, 500, '30-red', NULL, '0.0000', '30.0000'),
(10, 500, '30-blue', NULL, '0.0000', '30.0000'),
(11, 501, 'b', NULL, '0.0000', '34.0000'),
(12, 501, 'r', NULL, '0.0000', '25.0000'),
(13, 501, 'w', NULL, '0.0000', '25.0000'),
(14, 501, 'y', NULL, '0.0000', '25.0000'),
(15, 502, 'a', '1.0000', '0.0000', '15.0000'),
(16, 502, 'b', NULL, '0.0000', '10.0000'),
(17, 502, 'c', NULL, '0.0000', '10.0000'),
(18, 502, 'd', NULL, '0.0000', '10.0000'),
(20, 505, 'ដបវែង', NULL, '0.0000', '-4.0000'),
(21, 526, 'ដបវែង', NULL, '0.0000', '-13.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

DROP TABLE IF EXISTS `sma_purchases`;
CREATE TABLE IF NOT EXISTS `sma_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `reference` varchar(255) DEFAULT NULL,
  `exType_id` int(11) DEFAULT NULL,
  `abroad_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `abroad_shipping` decimal(25,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `reference`, `exType_id`, `abroad_date`, `abroad_shipping`) VALUES
(1, 'PO/0470', '2020-12-10 11:35:00', 3, 'AnakutDigital Solution', 1, '', '50.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', 'received', 'paid', 27, 27, '2020-12-10 11:36:23', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2020-12-10 04:36:37', NULL),
(2, 'PO/0471', '2020-12-11 10:14:00', 3, 'AnakutDigital Solution', 1, '', '25.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '25.0000', '25.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(3, 'test', '2022-04-12 10:06:00', 6, 'AnakutDigital Solution', 2, '', '2000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '12000.0000', '2000.0000', 'received', 'paid', 27, NULL, NULL, '7bd61a6024822cb7e0f0e3cfbf9e84c0.PNG', NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, '2022-04-12 03:08:16', NULL),
(4, 'PO/0473', '2020-12-30 16:20:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(5, 'PO/0474', '2020-12-30 16:24:00', 3, 'AnakutDigital Solution', 1, '', '12.5000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '12.5000', '12.5000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(6, 'PO/0475', '2021-01-04 10:45:00', 3, 'AnakutDigital Solution', 1, '', '125.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '125.0000', '125.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-01-04 03:46:11', NULL),
(7, 'PO/0476', '2021-01-04 10:47:00', 3, 'AnakutDigital Solution', 1, '', '125.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '125.0000', '125.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(8, 'PO/0477', '2021-01-04 10:48:00', 3, 'AnakutDigital Solution', 1, '', '125.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '125.0000', '125.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(9, 'PO/0478', '2021-01-13 12:21:00', 10, 'abc', 1, '', '100.0000', '0.0000', '10%', '10.0000', '10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '90.0000', '90.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-01-13 05:23:51', NULL),
(10, 'PO/0479', '2021-01-14 15:36:00', 3, 'AnakutDigital Solution', 1, '', '100.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '100.0000', '100.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(11, 'EXP/0001', '2021-01-16 09:54:00', 3, '', 0, '<p>12314</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '10.0000', '10.0000', 'expend', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, '2021-10-08 08:06:27', NULL),
(12, 'PO/0480', '2021-01-18 13:46:00', 3, 'AnakutDigital Solution', 1, '', '10000000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '10000000.0000', '10000000.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-01-18 06:47:54', NULL),
(13, 'EXP/0001', '2021-02-06 08:58:00', 3, '', 1, '<p>Dara</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '10.0000', '10.0000', 'expend', 'paid', 27, NULL, NULL, 'beebbe8ce233a7330ecaffe005c06d55.jpeg', NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, '2021-10-08 08:06:27', NULL),
(14, 'EXP/0001', '2021-03-24 14:43:00', 0, '', 1, 'buy from shop nearby', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '20.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 66, NULL, NULL),
(15, 'PO/0481', '2021-05-13 18:34:00', 3, 'AnakutDigital Solution', 1, '', '1000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '1000.0000', '1000.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, 16, '0.0000', 'PR/0001', NULL, '-500.0000', NULL, NULL, '2021-05-13 11:37:39', NULL),
(16, 'PO/0481', '2021-05-13 18:35:00', 3, 'AnakutDigital Solution', 1, '', '-500.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 0, '0.0000', '0.0000', '0.0000', '-500.0000', '-500.0000', 'returned', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', 'PR/0001', 15, '0.0000', NULL, NULL, '2021-05-13 11:37:52', NULL),
(17, 'PO/0482', '2021-05-25 14:18:00', 14, 'AB', 1, '', '70.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '70.0000', '70.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-05-25 07:24:09', NULL),
(18, 'EXP/0001', '2021-05-25 14:26:00', 0, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '120.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 62, NULL, NULL),
(19, 'PO/0483', '2021-05-28 18:31:00', 10, 'abc', 1, '', '2.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '2.0000', '2.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(20, 'PO/0484', '2021-06-10 16:36:00', 3, 'AnakutDigital Solution', 2, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-06-10 09:39:21', NULL),
(21, 'PO/0485', '2021-06-13 18:02:00', 10, 'abc', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-06-13 11:01:49', NULL),
(22, '123', '2021-06-24 14:45:00', 10, 'abc', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(23, 'PO/0486', '2021-07-06 11:54:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(24, '១២៣៤៥៥៦', '2021-07-25 11:03:00', 10, 'abc', 1, '', '1000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '1000.0000', '1000.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-07-25 04:07:18', NULL),
(25, '123123233', '2021-07-27 15:34:00', 10, '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '100.0000', '100.0000', 'expend', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 5, '2022-04-04 02:50:11', NULL),
(26, '123123123', '2021-07-27 15:35:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(27, '123', '2021-07-29 10:06:00', 3, 'AnakutDigital Solution', 1, '', '13.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '13.0000', '13.0000', 'ordered', 'paid', 27, 27, '2021-07-29 10:08:04', '71d3b703b3ceaab87d7de51873fa99a9.png', 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(28, 'PO/0487', '2021-08-18 09:42:00', 3, 'AnakutDigital Solution', 1, '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(29, 'PO/0488', '2021-08-18 09:42:00', 3, 'AnakutDigital Solution', 1, '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:06:27', NULL),
(30, 'PO/0489', '2021-09-08 16:33:00', 10, 'abc', 1, '', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '1.0000', 'received', 'paid', 27, 27, '2021-09-08 16:36:32', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(31, 'a', '2021-09-09 09:25:00', 10, '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '300.0000', '300.0000', 'expend', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, '2022-04-04 02:59:05', NULL),
(32, 'PO/0490', '2021-09-13 19:33:00', 10, 'abc', 1, '', '10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(33, 'EXP/0001', '2021-09-16 15:07:00', 10, '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '20.0000', '15.0000', 'expend', 'partial', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 1, '2022-04-04 02:59:05', NULL),
(34, 'PO/0491', '2021-09-20 20:30:00', 10, 'abc', 1, '', '500.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '500.0000', '500.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-09-20 13:33:10', NULL),
(35, 'PO/0492', '2021-10-08 15:01:00', 3, 'AnakutDigital Solution', 1, '&lt;p&gt;Noted&lt;&sol;p&gt;', '35.0000', '0.0000', '5%', '1.7500', '1.7500', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '33.2500', '33.2500', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2021-10-08 08:04:35', NULL),
(36, 'EXP/0001', '2021-10-08 15:07:00', 0, '', 1, '<p>Noted</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '20.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, NULL, NULL),
(37, 'PO/0493', '2021-10-11 11:07:00', 3, 'AnakutDigital Solution', 1, '', '20.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', 'received', 'paid', 27, 27, '2021-10-11 11:09:04', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(38, 'PO/0494', '2021-10-14 20:38:00', 3, 'AnakutDigital Solution', 1, '', '10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(39, 'EXP/0001', '2021-11-02 17:41:00', 0, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '10.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 7, NULL, NULL),
(40, 'PO/0495', '2021-11-02 17:54:00', 3, 'AnakutDigital Solution', 1, '', '50.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(41, 'PO/0496', '2021-12-06 16:09:00', 3, 'AnakutDigital Solution', 1, '', '25.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '25.0000', '25.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(42, '0339', '2021-12-07 12:39:00', 3, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '589.0000', '589.0000', 'expend', 'paid', 27, NULL, NULL, '6744c16a0bb2a66c212df41b1120701a.PNG', NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 1, '2022-04-04 03:01:57', NULL),
(43, '0340', '2021-12-07 13:40:00', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '20.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 1, NULL, NULL),
(45, 'សុខ សុនាង', '2021-12-14 19:37:00', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '250.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 67, NULL, NULL),
(46, 'EXP/0001', '2021-12-17 12:31:00', 3, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '50.0000', '50.0000', 'expend', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 2, '2022-04-04 03:01:57', NULL),
(47, 'EXP/0001', '2021-12-17 17:50:00', 0, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '20.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 1, NULL, NULL),
(48, 'EXP/0001', '2021-12-21 15:04:00', 0, '', 0, '<p>book</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '10.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 0, NULL, NULL),
(49, 'ស្រីនាង', '2021-12-01 00:00:00', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '150.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 67, NULL, NULL),
(50, 'PO/0498', '2021-12-22 11:14:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(51, '6543', '2022-01-11 13:00:00', 10, 'abc', 5, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(52, '234567890', '2022-01-19 15:35:00', 10, 'abc', 1, '&lt;p&gt;test&lt;&sol;p&gt;', '0.0000', '0.0000', '5', '5.0000', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '-5.0000', '-5.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(53, '11123456789', '2022-01-20 08:22:00', 10, 'abc', 1, '', '5.0000', '0.0000', '5', '5.0000', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 02:59:05', NULL),
(54, 'PO/0499', '2022-02-08 14:19:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(55, 'PO/0500', '2022-03-18 11:33:00', 3, 'AnakutDigital Solution', 1, '', '316.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '316.0000', '316.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(57, '0986532245', '2022-03-18 22:32:00', 3, 'AnakutDigital Solution', 1, '', '200.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '200.0000', '200.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-03-18 15:37:13', NULL),
(58, 'PO/0501', '2022-03-20 09:44:00', 10, 'abc', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, 27, '2022-03-20 09:46:24', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-03-20 02:46:24', NULL),
(59, 'PO/0502', '2022-03-20 09:49:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(60, 'ដឹកជញ្ជូន', '2022-03-29 08:42:00', 3, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '10.0000', '10.0000', 'expend', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 62, '2022-04-04 03:01:57', NULL),
(61, 'PO/0503', '2022-03-31 16:54:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(62, 'PO/0504', '2022-03-31 16:59:00', 3, 'AnakutDigital Solution', 1, '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-04-04 03:01:57', NULL),
(63, 'PO/0505', '2022-04-08 16:01:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(64, '0012354', '2022-04-09 09:22:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(65, 'PO/0506', '2022-04-09 09:22:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'ordered', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(66, 'test', '2022-04-12 10:06:00', 3, '', 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '120.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 34, NULL, NULL),
(67, 'PO/0507', '2022-04-22 13:19:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'received', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(68, 'PO/0508', '2022-04-23 19:00:00', 10, 'abc', 1, '', '700.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '700.0000', '1200.0000', 'ordered', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-05-11 02:42:05', NULL),
(69, 'PO/0509', '2022-04-24 10:27:00', 3, 'AnakutDigital Solution', 1, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', 'received', 'paid', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-05-11 02:39:08', NULL),
(70, 'PO/0001', '2022-07-15 11:25:00', 3, 'AnakutDigital Solution', 1, '', '3000000.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '3000000.0000', '0.0000', 'received', 'pending', 27, 27, '2022-07-15 11:46:20', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-07-15 04:46:20', NULL),
(71, 'EXP/0001', '2022-07-27 13:29:00', 3, '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '300.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 69, NULL, NULL),
(72, 'PO/0002', '2022-08-27 13:56:00', 3, 'AnakutDigital Solution', 3, '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', 'ordered', 'paid', 48, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, '2022-08-27 06:58:51', NULL),
(73, '123123', '2022-09-02 01:55:00', 3, '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '100.0000', '0.0000', 'expend', 'pending', 27, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

DROP TABLE IF EXISTS `sma_purchase_items`;
CREATE TABLE IF NOT EXISTS `sma_purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) DEFAULT '0.0000',
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`) VALUES
(1, NULL, NULL, 2, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '-2.0000', '0000-00-00', 'received', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000'),
(2, NULL, NULL, 1, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '-2.0000', '0000-00-00', 'received', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000'),
(3, NULL, NULL, 3, '61296271', 'test', NULL, '3.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '30.0000', '8.0000', '2020-06-21', 'received', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000'),
(4, NULL, NULL, 4, '21089365', 'tests', NULL, '3.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '30.0000', '8.0000', '2020-06-21', 'received', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000'),
(5, NULL, NULL, 5, '15909299', 'testing', NULL, '3.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '30.0000', '7.0000', '2020-06-21', 'received', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000'),
(6, 0, NULL, 0, '', '', NULL, '0.0000', '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(7, NULL, NULL, 16, '84398228', '121', NULL, '0.0000', '111.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '104.0000', '2020-09-28', 'received', '0.0000', '0.0000', '111.0000', NULL, NULL, NULL, NULL, '0.0000'),
(8, NULL, NULL, 17, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '-3.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(9, NULL, NULL, 18, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '-5.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(10, NULL, NULL, 21, '00000003', 'ជាំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(11, NULL, NULL, 22, '00000004', 'អាចម៌រុយ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(12, NULL, NULL, 23, '00000005', 'សន្លាក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(13, NULL, NULL, 24, '00000006', 'ផ្លែសាច់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(14, NULL, NULL, 25, '00000007', 'រន្ធរោមធំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(15, NULL, NULL, 26, '00000008', 'មុខក្រហម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(16, NULL, NULL, 27, '00000009', 'ស្នាមក្រម៉ៅ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(17, NULL, NULL, 28, '00000010', 'បូមខ្លាញ់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(18, NULL, NULL, 29, '00000011', 'ភៀលមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(19, NULL, NULL, 30, '00000012', 'បញ្ចូលវីតាមីនមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(20, NULL, NULL, 31, '00000013', 'បណ្តឹងស្បែកមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(21, NULL, NULL, 32, '00000014', 'បំបាត់ស្នាមជ្រាវជ្រួញលើមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(22, NULL, NULL, 33, '00000015', 'កាត់ប្រជ្រុយ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(23, NULL, NULL, 34, '00000016', 'សាច់ដុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(24, NULL, NULL, 35, '00000017', 'ផ្កាស្បូន', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(25, NULL, NULL, 36, '00000018', 'ឫស​', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(26, NULL, NULL, 37, '00000019', 'ជម្រុះរោម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(27, NULL, NULL, 38, '00000020', 'លុបស្នាមសាក់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(28, NULL, NULL, 39, '00000021', 'ស្នាមពីកំណើត', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(29, NULL, NULL, 40, '00000022', 'លាងរបួស​', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(30, NULL, NULL, 41, '00000023', 'វះកាត់តូច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(31, NULL, NULL, 42, '00000024', 'ពិនិត្យឈាម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(32, NULL, NULL, 43, '00000025', 'ចាក់វ៉ាក់សាំងគ្រប់ប្រភេទ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(33, NULL, NULL, 44, '00000026', 'ចាក់បំបាត់ជ្រីវជ្រួញ ថ្ងាស់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(34, NULL, NULL, 45, '00000027', 'ចាក់បំបាត់ជ្រីវជ្រួញ កន្ទុយភ្នែក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(35, NULL, NULL, 46, '00000028', 'ចាក់បង្រួមដើមដៃ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(36, NULL, NULL, 47, '00000029', 'ចាក់បង្រួមថ្គាម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(37, NULL, NULL, 48, '00000030', 'ចាក់បំបាត់ញើស ក្លិនក្លៀក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(38, NULL, NULL, 49, '00000031', 'ចាក់ខ្សែអំបោះបន្តឹងស្បែកមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(39, NULL, NULL, 50, '00000032', 'ចាក់ខ្សែអំបោះច្រមុះឲ្យស្រួច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(40, NULL, NULL, 51, '00000033', 'ចាក់បំបាត់មុខខ្មូត', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(41, NULL, NULL, 52, '00000034', 'ចាក់បំពេញមុខ ចង្ការ V​ ច្រមុះស្រួច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(42, NULL, NULL, 53, '00000035', 'ចាក់រំលាយខ្លាញ់មុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(43, NULL, NULL, 54, '00000036', 'ចាក់រំលាយខ្លាញ់បឿក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(44, NULL, NULL, 55, '00000037', 'ចាក់ផ្លែសាច់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(45, NULL, NULL, 56, '00000038', 'វះកាត់លើខ្ទង់ច្រមុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(46, NULL, NULL, 57, '00000039', 'វះកាត់បង្រួមស្លាបច្រមុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(47, NULL, NULL, 58, '00000040', 'វះកាត់ត្របកភ្នែកពីរជាន់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(48, NULL, NULL, 59, '00000041', 'កាត់ប្រជ្រុយ តូច ធំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(49, NULL, NULL, 60, '00000042', 'កាត់សាច់ដុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(50, NULL, NULL, 61, '00000043', 'កាត់​ ឬស ដៃ ជើង ប្រដាប់ភេទ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(51, NULL, NULL, 62, '00000044', 'កាត់ ផ្កាស្បូន', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(52, NULL, NULL, 63, '00000045', 'កាត់ត្រចៀកក្រាញ់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(53, NULL, NULL, 64, '00000046', 'ដេរផ្ចិតទងត្រចៀក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(54, NULL, NULL, 65, '00000047', 'មុខមុន(Acne)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(55, NULL, NULL, 66, '00000048', 'មុខជាំ អាចម៌រុយ (Melasma)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(56, NULL, NULL, 67, '00000049', 'អាឡែក​ហ្ស៊ីស្បែក​ (Allergy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(57, NULL, NULL, 68, '00000050', 'ប្រទាលតាអាក (Urticaria)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(58, NULL, NULL, 69, '00000051', 'ជំងឺផ្សិតស្បែក ក្រចក (Fungai infection)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(59, NULL, NULL, 70, '00000052', 'អង្គែរស្បែកក្បាល (Dandruff)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(60, NULL, NULL, 71, '00000053', 'ជ្រុះសក់ (Hair loss)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(61, NULL, NULL, 72, '00000054', 'ជំងឺរើម (Herpes Zoster)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(62, NULL, NULL, 73, '00000055', 'ជំងឺរឹងស្បែក (Scleroderma)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(63, NULL, NULL, 74, '00000056', 'ជំងឺ Psoriasis', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(64, NULL, NULL, 75, '00000057', 'បញ្ហាស្បែកផ្សេងៗទៀត (Other skin disease)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(65, NULL, NULL, 76, '00000058', 'ម៉ាស្សាមុខចិញ្ចេមស្បែកមុខ (Facial treatment)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(66, NULL, NULL, 77, '00000059', 'សំអាតមុខ​ បូមមុនខ្សាច់​ និងបិតម៉ាសព្យាបាលមុខ(Comedi extraction)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(67, NULL, NULL, 78, '00000060', 'បញ្ចូលវីតាមីនស្បែកមុខ (Mesotherapy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(68, NULL, NULL, 79, '00000061', 'បញ្ចូល steam cell លើមុខ(Steam cell skin polishing)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(69, NULL, NULL, 80, '00000062', 'ព្យួរសេរ៉ូមឲ្យស្បែកភ្លឺថ្លា និងក្មេងជាងវ័យ (Vitamin Infusion Therapy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(70, NULL, NULL, 81, '00000063', 'ជម្រុះកោសិកាចាស់បណ្តុះកោសិកាថ្មី (Diamond peel & Chemical peel)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(71, NULL, NULL, 82, '00000064', 'បង្រួមគល់រោម (Pore tightening)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(72, NULL, NULL, 83, '00000065', 'ព្យាបាលសក់ជ្រុះ និងក្មេងជាងវ័យដោយ PRP (PRP therapy for face & hair)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(73, NULL, NULL, 84, '00000066', 'ព្យាបាលមុខមុន និងការពារស្នាមមុន (Acne reatment & Acne scar)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(74, NULL, NULL, 85, '00000067', 'ព្យាបាលបញ្ហាមុខជាំ ស្នាមអុចខ្មៅ(Melasma & Solar Lentigo)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(75, NULL, NULL, 86, '00000068', 'ព្យាបាលបញ្ហា​ មុខក្រហមចេញសរសៃ (Rosacea & Telangiectasia)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(76, NULL, NULL, 87, '00000069', 'ជំរុះរោមលើមុខ និងដងខ្លួន (Hair removal)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(77, NULL, NULL, 88, '00000070', 'បន្តឹងស្បែកមុខ កាត់បន្ថយស្នាមជ្រីវជ្រួញ(cell Toning & Skin Rejuvenation)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(78, NULL, NULL, 89, '00000071', 'កាត់ ឫស​ ប្រជ្រុយ​ សាច់ដុះ និងផ្កាស្បូន (Mole, wart, skin tag & syringoma removal)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(79, NULL, NULL, 71, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(80, NULL, NULL, 66, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(81, NULL, NULL, 20, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(82, NULL, NULL, 72, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(83, NULL, NULL, 46, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(84, NULL, NULL, 90, '1', 'មុន​​', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(85, NULL, NULL, 91, '2', 'ស្នាមមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(86, NULL, NULL, 92, '3', 'ជាំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(87, NULL, NULL, 93, '4', 'អាចម៌រុយ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(88, NULL, NULL, 94, '5', 'សន្លាក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(89, NULL, NULL, 95, '6', 'ផ្លែសាច់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(90, NULL, NULL, 96, '7', 'រន្ធរោមធំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(91, NULL, NULL, 97, '8', 'មុខក្រហម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(92, NULL, NULL, 98, '9', 'ស្នាមក្រម៉ៅ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(93, NULL, NULL, 99, '10', 'បូមខ្លាញ់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(94, NULL, NULL, 100, '11', 'ភៀលមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(95, NULL, NULL, 101, '12', 'បញ្ចូលវីតាមីនមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(96, NULL, NULL, 102, '13', 'បណ្តឹងស្បែកមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(97, NULL, NULL, 103, '14', 'បំបាត់ស្នាមជ្រាវជ្រួញលើមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(98, NULL, NULL, 104, '15', 'កាត់ប្រជ្រុយ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(99, NULL, NULL, 105, '16', 'សាច់ដុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(100, NULL, NULL, 106, '17', 'ផ្កាស្បូន', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(101, NULL, NULL, 107, '18', 'ឫស​', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(102, NULL, NULL, 108, '19', 'ជម្រុះរោម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(103, NULL, NULL, 109, '20', 'លុបស្នាមសាក់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(104, NULL, NULL, 110, '21', 'ស្នាមពីកំណើត', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(105, NULL, NULL, 111, '22', 'លាងរបួស​', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(106, NULL, NULL, 112, '23', 'វះកាត់តូច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(107, NULL, NULL, 113, '24', 'ពិនិត្យឈាម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(108, NULL, NULL, 114, '25', 'ចាក់វ៉ាក់សាំងគ្រប់ប្រភេទ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(109, NULL, NULL, 115, '26', 'ចាក់បំបាត់ជ្រីវជ្រួញ ថ្ងាស់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(110, NULL, NULL, 116, '27', 'ចាក់បំបាត់ជ្រីវជ្រួញ កន្ទុយភ្នែក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(111, NULL, NULL, 117, '28', 'ចាក់បង្រួមដើមដៃ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(112, NULL, NULL, 118, '29', 'ចាក់បង្រួមថ្គាម', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(113, NULL, NULL, 119, '30', 'ចាក់បំបាត់ញើស ក្លិនក្លៀក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(114, NULL, NULL, 120, '31', 'ចាក់ខ្សែអំបោះបន្តឹងស្បែកមុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(115, NULL, NULL, 121, '32', 'ចាក់ខ្សែអំបោះច្រមុះឲ្យស្រួច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(116, NULL, NULL, 122, '33', 'ចាក់បំបាត់មុខខ្មូត', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(117, NULL, NULL, 123, '34', 'ចាក់បំពេញមុខ ចង្ការ V​ ច្រមុះស្រួច', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(118, NULL, NULL, 124, '35', 'ចាក់រំលាយខ្លាញ់មុខ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(119, NULL, NULL, 125, '36', 'ចាក់រំលាយខ្លាញ់បឿក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(120, NULL, NULL, 126, '37', 'ចាក់ផ្លែសាច់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(121, NULL, NULL, 127, '38', 'វះកាត់លើខ្ទង់ច្រមុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-3.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(122, NULL, NULL, 128, '39', 'វះកាត់បង្រួមស្លាបច្រមុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(123, NULL, NULL, 129, '40', 'វះកាត់ត្របកភ្នែកពីរជាន់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-5.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(124, NULL, NULL, 130, '41', 'កាត់ប្រជ្រុយ តូច ធំ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-3.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(125, NULL, NULL, 131, '42', 'កាត់សាច់ដុះ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(126, NULL, NULL, 132, '43', 'កាត់​ ឬស ដៃ ជើង ប្រដាប់ភេទ', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-3.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(127, NULL, NULL, 133, '44', 'កាត់ ផ្កាស្បូន', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(128, NULL, NULL, 134, '45', 'កាត់ត្រចៀកក្រាញ់', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-3.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(129, NULL, NULL, 135, '46', 'ដេរផ្ចិតទងត្រចៀក', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-5.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(130, NULL, NULL, 136, '47', 'មុខមុន(Acne)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(131, NULL, NULL, 137, '48', 'មុខជាំ អាចម៌រុយ (Melasma)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(132, NULL, NULL, 138, '49', 'អាឡែក​ហ្ស៊ីស្បែក​ (Allergy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(133, NULL, NULL, 139, '50', 'ប្រទាលតាអាក (Urticaria)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(134, NULL, NULL, 140, '51', 'ជំងឺផ្សិតស្បែក ក្រចក (Fungai infection)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(135, NULL, NULL, 141, '52', 'អង្គែរស្បែកក្បាល (Dandruff)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(136, NULL, NULL, 142, '53', 'ជ្រុះសក់ (Hair loss)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(137, NULL, NULL, 143, '54', 'ជំងឺរើម (Herpes Zoster)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(138, NULL, NULL, 144, '55', 'ជំងឺរឹងស្បែក (Scleroderma)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(139, NULL, NULL, 145, '56', 'ជំងឺ Psoriasis', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(140, NULL, NULL, 146, '57', 'បញ្ហាស្បែកផ្សេងៗទៀត (Other skin disease)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(141, NULL, NULL, 147, '58', 'ម៉ាស្សាមុខចិញ្ចេមស្បែកមុខ (Facial treatment)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(142, NULL, NULL, 148, '59', 'សំអាតមុខ​ បូមមុនខ្សាច់​ និងបិតម៉ាសព្យាបាលមុខ(Comedi extraction)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(143, NULL, NULL, 149, '60', 'បញ្ចូលវីតាមីនស្បែកមុខ (Mesotherapy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(144, NULL, NULL, 150, '61', 'បញ្ចូល steam cell លើមុខ(Steam cell skin polishing)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(145, NULL, NULL, 151, '62', 'ព្យួរសេរ៉ូមឲ្យស្បែកភ្លឺថ្លា និងក្មេងជាងវ័យ (Vitamin Infusion Therapy)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(146, NULL, NULL, 152, '63', 'ជម្រុះកោសិកាចាស់បណ្តុះកោសិកាថ្មី (Diamond peel & Chemical peel)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(147, NULL, NULL, 153, '64', 'បង្រួមគល់រោម (Pore tightening)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(148, NULL, NULL, 154, '65', 'ព្យាបាលសក់ជ្រុះ និងក្មេងជាងវ័យដោយ PRP (PRP therapy for face & hair)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(149, NULL, NULL, 155, '66', 'ព្យាបាលមុខមុន និងការពារស្នាមមុន (Acne reatment & Acne scar)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(150, NULL, NULL, 156, '67', 'ព្យាបាលបញ្ហាមុខជាំ ស្នាមអុចខ្មៅ(Melasma & Solar Lentigo)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(151, NULL, NULL, 157, '68', 'ព្យាបាលបញ្ហា​ មុខក្រហមចេញសរសៃ (Rosacea & Telangiectasia)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(152, NULL, NULL, 158, '69', 'ជំរុះរោមលើមុខ និងដងខ្លួន (Hair removal)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(153, NULL, NULL, 159, '70', 'បន្តឹងស្បែកមុខ កាត់បន្ថយស្នាមជ្រីវជ្រួញ(cell Toning & Skin Rejuvenation)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(154, NULL, NULL, 160, '71', 'កាត់ ឫស​ ប្រជ្រុយ​ សាច់ដុះ និងផ្កាស្បូន (Mole, wart, skin tag & syringoma removal)', NULL, NULL, '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '2020-09-29', 'received', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(155, NULL, NULL, 163, 'A00000', 'ផ្កាខៀវ (青花)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(156, NULL, NULL, 164, 'B00000', 'ផ្កាស (百花)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(157, NULL, NULL, 165, 'C00000', 'ពួយឡេង (菠菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(158, NULL, NULL, 166, 'D00000', 'ហោតូច (荷兰豆)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(159, NULL, NULL, 167, 'E00000', 'ឆាយស៊ីម (菜心)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(160, NULL, NULL, 168, 'F00000', 'ផាសលី​ (法香)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(161, NULL, NULL, 169, 'G00000', 'ហ្វីសេ (狗牙)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(162, NULL, NULL, 170, 'H00000', 'LoLo​ (红珊瑚)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(163, NULL, NULL, 171, 'I00000', 'ផ្កាខ្ទឹម (蒜苔)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(164, NULL, NULL, 172, 'J00000', 'កាវស៊ុន (茭白)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(165, NULL, NULL, 173, 'K00000', 'ខិនឆាយធំ (西芹(袋子))', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(166, NULL, NULL, 174, 'KV0000', 'ខិនឆាយស្លឹក (西芹(叶))', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(167, NULL, NULL, 175, 'L00000', 'រ៉ូមេន (螺纹)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(168, NULL, NULL, 176, 'M00000', 'សឹងតូច (蒜苗)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(169, NULL, NULL, 177, 'N00000', 'តឿចិន (上海青)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(170, NULL, NULL, 178, 'O00000', 'យ៉ូមៃ (油麦菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(171, NULL, NULL, 179, 'PL0000', 'យេនខៀវ (菜球)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(172, NULL, NULL, 180, 'Q00000', 'កូនខាត់ណា (小芥兰)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(173, NULL, NULL, 181, 'RR0000', 'កូនឆៃថាវក្រហម (小萝卜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(174, NULL, NULL, 182, 'S00000', 'សាលាដក្តោប (西生菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(175, NULL, NULL, 183, 'SBC000', 'ស/បារាំងចិន​ (中国四季豆)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(176, NULL, NULL, 184, 'T00000', 'កូនក្តោប (小包菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(177, NULL, NULL, 185, 'U00000', 'ននោងចិន (小瓜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(178, NULL, NULL, 186, 'V00000', 'ត្រសក់ចិន (中国黄瓜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(179, NULL, NULL, 187, 'W00000', 'កូនស្ពៃ (娃娃菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(180, NULL, NULL, 188, 'X00000', 'វ័រស៊ុន (莴笋)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(181, NULL, NULL, 189, 'Y00000', 'អ៊ីតាលី (意大利)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(182, NULL, NULL, 190, 'Z00000', 'កាឆាយស (韭黄)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(183, NULL, NULL, 191, 'LH0000', 'កូនផ្កា (兰花苔)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(184, NULL, NULL, 192, 'OU0000', 'ឈូកចិន (莲藕)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(185, NULL, NULL, 193, 'MA0000', 'ម៉ាឡេធំ (大青椒)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(186, NULL, NULL, 194, 'XQ0000', 'កូនខិនឆាយ (小芹菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(187, NULL, NULL, 195, 'XC0000', 'វ៉ាន់ស៊ុយចិន​ (香菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(188, NULL, NULL, 196, 'XJ0000', 'ម៉ាឡេញ័រ (长线椒)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(189, NULL, NULL, 197, 'PR0000', 'ប៉ូរ៉ូ (大葱)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(190, NULL, NULL, 198, 'JC0000', 'ស្ពៃហាង (芥菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(191, NULL, NULL, 199, 'HB0000', 'ក្រញាញ់ចិន (黄白)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(192, NULL, NULL, 200, 'LB0000', 'ឆៃថាវ (白萝卜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(193, NULL, NULL, 201, 'SY0000', 'សានយ៉ាវ (淮山)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(194, NULL, NULL, 202, 'TD0000', 'ហោធំ (甜豆)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(195, NULL, NULL, 203, 'JT0000', 'ខាត់ណាដើមធំ (鸡腿芥兰)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(196, NULL, NULL, 204, 'BK0000', 'បូកគោធំ (大白菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(197, NULL, NULL, 205, 'TT0000', 'ក្តោប (包菜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(198, NULL, NULL, 206, 'MO0000', 'សណ្តែករោម (毛豆)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(199, NULL, NULL, 207, 'NG0000', 'ល្ពៅចិន (中国南瓜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(200, NULL, NULL, 208, 'DG0000', 'ត្រលាចចិន (中国冬瓜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(201, NULL, NULL, 209, 'THC000', 'តាំងអោចិន (中国茼蒿)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(202, NULL, NULL, 210, 'LMC000', 'ក្រូចឆ្មារលឿង (大柠檬)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(203, NULL, NULL, 211, 'APS000', 'ទំពាំងបារាំង (芦笋)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(204, NULL, NULL, 212, 'PUR000', 'ក្តោបស្វាយ (紫甘蓝)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(205, NULL, NULL, 213, 'SZ0000', 'កូនការ៉ុត (手指萝卜)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(206, NULL, NULL, 214, 'HC0000', 'យេនក្រហម (红菜头)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(207, NULL, NULL, 215, 'NB0000', 'កន្ទុយគោ (牛蒡)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(208, NULL, NULL, 216, 'MX0000', 'ផ្សិតម្ជុល MX (金针菇)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(209, NULL, NULL, 217, 'SN0000', 'ផ្សិតព្រិលកញ្ចប់ (白雪菇(Unit))', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(210, NULL, NULL, 218, 'SN1000', 'ផ្សិតព្រិលគីឡូ (白雪菇(Kg))', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(211, NULL, NULL, 219, 'WH0000', 'ក្តាមស (白玉菇)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(212, NULL, NULL, 220, 'BLAK00', 'ក្តាមខ្មៅ (蟹味菇)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(213, NULL, NULL, 221, 'DOG000', 'តុងកូវ (香菇)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(214, NULL, NULL, 222, 'Tom000', 'ភ្លៅមាន់ (杏鲍菇)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(215, NULL, NULL, 223, 'M40000', 'ភ្លៅមាន់M4 (杏鲍菇M4)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(216, NULL, NULL, 224, 'T30000', 'ភ្លៅមាន់T3 (杏鲍菇T3)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(217, NULL, NULL, 225, 'MX200g', 'មាន់MX200g (杏鲍菇200g)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(218, NULL, NULL, 226, '200gBox', 'មាន់ប្រអប់200g (盒装200g)', NULL, NULL, '5.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '2020-12-05', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(219, NULL, NULL, 227, 'Almond Doughnut', 'Almond Doughnut', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '989.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(220, NULL, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '988.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(221, NULL, NULL, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1082.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(222, NULL, NULL, 230, 'Bake Ham', 'Bake Ham', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '994.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(223, NULL, NULL, 231, 'Bacon Onion', 'Bacon Onion', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000');
INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`) VALUES
(224, NULL, NULL, 232, 'Egg Sandwich', 'Egg Sandwich', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1078.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(225, NULL, NULL, 233, 'Green Onion Floss', 'Green Onion Floss', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1050.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(226, NULL, NULL, 234, 'Green Onion', 'Green Onion', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '998.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(227, NULL, NULL, 235, 'Ham and Cheese Onion 4', 'Ham and Cheese Onion 3', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(228, NULL, NULL, 236, 'Green Onion Hot Dog', 'Green Onion Hot Dog', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(229, NULL, NULL, 237, 'Cheese Stick', 'Cheese Stick', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '992.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(230, NULL, NULL, 238, 'Coconut Twist', 'Coconut Twist', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(231, NULL, NULL, 239, 'Cream Bun', 'Cream Bun', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(232, NULL, NULL, 240, 'Red Bean Bun', 'Red Bean Bun', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(233, NULL, NULL, 241, 'Milk Raisin Bun', 'Milk Raisin Bun', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(234, NULL, NULL, 242, 'Milk Custard Bread 3', 'Milk Custard Bread 2', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(235, NULL, NULL, 243, 'Snow Bread', 'Snow Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(236, NULL, NULL, 244, 'Raisin Roll', 'Raisin Roll', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(237, NULL, NULL, 245, 'Milk Soft', 'Milk Soft', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(238, NULL, NULL, 246, 'Raisin Bread', 'Raisin Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(239, NULL, NULL, 247, 'White Toast', 'White Toast', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(240, NULL, NULL, 248, 'Milk Raisin Toast', 'Milk Raisin Toast', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(241, NULL, NULL, 249, 'Pandoro 4', 'Pandoro 3', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(242, NULL, NULL, 250, 'Whole Wheat Floss 3', 'Whole Wheat Floss 2', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(243, NULL, NULL, 251, 'Soft Garlic', 'Soft Garlic', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(244, NULL, NULL, 252, 'Ham Cheese Bread', 'Ham Cheese Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(245, NULL, NULL, 253, 'Golden Cheese Bread', 'Golden Cheese Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(246, NULL, NULL, 254, 'Milk Bread', 'Milk Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(247, NULL, NULL, 255, 'Pine Apple Bread', 'Pine Apple Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '990.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(248, NULL, NULL, 256, 'Whole Wheat Toast', 'Whole Wheat Toast', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(249, NULL, NULL, 257, 'Sausage Doughnut', 'Sausage Doughnut', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(250, NULL, NULL, 258, 'Douhnut', 'Douhnut', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(251, NULL, NULL, 259, 'Honey Baguette', 'Honey Baguette', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(252, NULL, NULL, 260, 'Sausage Floss Bread', 'Sausage Floss Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(253, NULL, NULL, 261, 'Floss Roll', 'Floss Roll', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(254, NULL, NULL, 262, 'Floss Bread', 'Floss Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(255, NULL, NULL, 263, 'Milk Toast', 'Milk Toast', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(256, NULL, NULL, 264, 'Red Bean Custard Bread', 'Red Bean Custard Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(257, NULL, NULL, 265, 'Sausage Roll Bread', 'Sausage Roll Bread', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(258, NULL, NULL, 266, 'Bake Cheese', 'Bake Cheese', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '996.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(259, NULL, NULL, 267, 'Oolong tea', 'Oolong tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(260, NULL, NULL, 268, 'Jasmin tea', 'Jasmin tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(261, NULL, NULL, 269, 'Black tea', 'Black tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(262, NULL, NULL, 270, 'Tiwan tea', 'Tiwan tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(263, NULL, NULL, 271, 'Milk tea', 'Milk tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(264, NULL, NULL, 272, 'Oolong  Milk Tea', 'Oolong  Milk Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(265, NULL, NULL, 273, 'Jasmin   Milk Tea', 'Jasmin   Milk Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(266, NULL, NULL, 274, 'Black       Milk Tea', 'Black       Milk Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(267, NULL, NULL, 275, 'Tiwan     Milk Tea', 'Tiwan     Milk Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(268, NULL, NULL, 276, 'Caramel milk tea', 'Caramel milk tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(269, NULL, NULL, 277, 'Brown sugar milk tea', 'Brown sugar milk tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(270, NULL, NULL, 278, 'Coffee milk tea', 'Coffee milk tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(271, NULL, NULL, 279, 'Peach  fruit tea', 'Peach  fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(272, NULL, NULL, 280, 'Passion fruit tea', 'Passion fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(273, NULL, NULL, 281, 'Mango fruit tea', 'Mango fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(274, NULL, NULL, 282, 'Lemon tae', 'Lemon tae', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(275, NULL, NULL, 283, 'Honey tea', 'Honey tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(276, NULL, NULL, 284, 'Peach mocchiato fruit tea', 'Peach mocchiato fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(277, NULL, NULL, 285, 'Passion mocchiato fruit tea', 'Passion mocchiato fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(278, NULL, NULL, 286, 'Mango mocchiato fruit tea', 'Mango mocchiato fruit tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(279, NULL, NULL, 287, 'Honey mocchiato', 'Honey mocchiato', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(280, NULL, NULL, 288, 'Hot espresso (Small)', 'Hot espresso', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(281, NULL, NULL, 289, 'Hot double espresso (Small)', 'Hot double espresso', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(282, NULL, NULL, 290, 'Hot americano (Small)', 'Hot americano', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(283, NULL, NULL, 291, 'Hot cappuccino (Small)', 'Hot cappuccino', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(284, NULL, NULL, 292, 'Hot latte (Small)', 'Hot latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(285, NULL, NULL, 293, 'Hot mocha latte (Small)', 'Hot mocha latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(286, NULL, NULL, 294, 'Hot caramel latte (Small)', 'Hot caramel latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(287, NULL, NULL, 295, 'Hot vanilla latte (Small)', 'Hot vanilla latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(288, NULL, NULL, 296, 'Iced Latte (Small)', 'Iced Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(289, NULL, NULL, 297, 'Iced lemon Tea (Small)', 'Iced lemon Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(290, NULL, NULL, 298, 'Iced green Tea (Small)', 'Iced green Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(291, NULL, NULL, 299, 'Iced Americano (Small)', 'Iced Americano', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(292, NULL, NULL, 300, 'Iced Caramel Latte (Small)', 'Iced Caramel Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(293, NULL, NULL, 301, 'Iced Vanilla Latte (Small)', 'Iced Vanilla Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(294, NULL, NULL, 302, 'Iced mocha latte (Small)', 'Iced mocha latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(295, NULL, NULL, 303, 'Iced chocolate (Small)', 'Iced chocolate', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(296, NULL, NULL, 304, 'Iced Passion Soda (Small)', 'Iced Passion Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(297, NULL, NULL, 305, 'Iced Passion Milk (Small)', 'Iced Passion Milk', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(298, NULL, NULL, 306, 'Coffee frappe (Small)', 'Coffee frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(299, NULL, NULL, 307, 'Mocha frappe (Small)', 'Mocha frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(300, NULL, NULL, 308, 'Caramel frappe (Small)', 'Caramel frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(301, NULL, NULL, 309, 'Chocolate frappe (Small)', 'Chocolate frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(302, NULL, NULL, 310, 'Green tea frappe (Small)', 'Green tea frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(303, NULL, NULL, 311, 'Orang mojito (Small)', 'Orang mojito', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(304, NULL, NULL, 312, 'Lime mojito (Small)', 'Lime mojito', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(305, NULL, NULL, 313, 'Blue soda (Small)', 'Blue soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '997.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(306, NULL, NULL, 314, 'Lemon Soda (Small)', 'Lemon Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(307, NULL, NULL, 315, 'Strawberry Sody (Small)', 'Strawberry Sody', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(308, NULL, NULL, 316, 'Mango Soda (Small)', 'Mango Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(309, NULL, NULL, 317, 'Passion Fruit Soda (Small)', 'Passion Fruit Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(310, NULL, NULL, 318, 'Hot espresso', 'Hot espresso', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(311, NULL, NULL, 319, 'Hot double espresso', 'Hot double espresso', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(312, NULL, NULL, 320, 'Hot americano', 'Hot americano', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(313, NULL, NULL, 321, 'Hot cappuccino', 'Hot cappuccino', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(314, NULL, NULL, 322, 'Hot latte', 'Hot latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(315, NULL, NULL, 323, 'Hot mocha latte', 'Hot mocha latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(316, NULL, NULL, 324, 'Hot caramel latte', 'Hot caramel latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(317, NULL, NULL, 325, 'Hot vanilla latte', 'Hot vanilla latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(318, NULL, NULL, 326, 'Iced Latte', 'Iced Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(319, NULL, NULL, 327, 'Iced lemon Tea', 'Iced lemon Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(320, NULL, NULL, 328, 'Iced green Tea', 'Iced green Tea', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(321, NULL, NULL, 329, 'Iced Americano', 'Iced Americano', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(322, NULL, NULL, 330, 'Iced Caramel Latte', 'Iced Caramel Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(323, NULL, NULL, 331, 'Iced Vanilla Latte', 'Iced Vanilla Latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(324, NULL, NULL, 332, 'Iced mocha latte', 'Iced mocha latte', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(325, NULL, NULL, 333, 'Iced chocolate', 'Iced chocolate', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(326, NULL, NULL, 334, 'Iced Passion Soda', 'Iced Passion Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(327, NULL, NULL, 335, 'Iced Passion Milk', 'Iced Passion Milk', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(328, NULL, NULL, 336, 'Coffee frappe', 'Coffee frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(329, NULL, NULL, 337, 'Mocha frappe', 'Mocha frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(330, NULL, NULL, 338, 'Caramel frappe', 'Caramel frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(331, NULL, NULL, 339, 'Chocolate frappe', 'Chocolate frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(332, NULL, NULL, 340, 'Green tea frappe', 'Green tea frappe', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(333, NULL, NULL, 341, 'Orang mojito', 'Orang mojito', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(334, NULL, NULL, 342, 'Lime mojito', 'Lime mojito', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(335, NULL, NULL, 343, 'Blue soda', 'Blue soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '996.7850', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(336, NULL, NULL, 344, 'Lemon Soda', 'Lemon Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(337, NULL, NULL, 345, 'Strawberry Sody', 'Strawberry Sody', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(338, NULL, NULL, 346, 'Mango Soda', 'Mango Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(339, NULL, NULL, 347, 'Passion Fruit Soda', 'Passion Fruit Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(340, NULL, NULL, 348, 'Blue sky', 'Blue sky', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(341, NULL, NULL, 349, 'Blueberry choco', 'Blueberry choco', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(342, NULL, NULL, 350, 'Cap cake', 'Cap cake', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(343, NULL, NULL, 351, 'Chocolate choco chip', 'Chocolate choco chip', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(344, NULL, NULL, 352, 'Chocolate love', 'Chocolate love', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(345, NULL, NULL, 353, 'Coconut cream', 'Coconut cream', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(346, NULL, NULL, 354, 'Fresh fruit choco', 'Fresh fruit choco', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(347, NULL, NULL, 355, 'Fruit vanilla', 'Fruit vanilla', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(348, NULL, NULL, 356, 'Layer custard', 'Layer custard', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(349, NULL, NULL, 357, 'Light star', 'Light star', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(350, NULL, NULL, 358, 'Mango fresh cream', 'Mango fresh cream', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(351, NULL, NULL, 359, 'Milk Pudding', 'Milk Pudding', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(352, NULL, NULL, 360, 'Mini rool', 'Mini rool', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(353, NULL, NULL, 361, 'Mouse choco fresh cream', 'Mouse choco fresh cream', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(354, NULL, NULL, 362, 'MX Chocolate', 'MX Chocolate', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(355, NULL, NULL, 363, 'My crush', 'My crush', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(356, NULL, NULL, 364, 'Pandan cake', 'Pandan cake', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(357, NULL, NULL, 365, 'Pig cake', 'Pig cake', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(358, NULL, NULL, 366, 'Slyte cake', 'Slyte cake', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(359, NULL, NULL, 367, 'Tiramisu', 'Tiramisu', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(360, NULL, NULL, 368, 'Candle Number (1Box*10Pcs)', 'Candle Number (1Box*10Pcs)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '891.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(361, NULL, NULL, 369, 'Candle Love for Birthday Cake (1Ctn*24Pcs)', 'Candle Love for Birthday Cake (1Ctn*24Pcs)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(362, NULL, NULL, 370, 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(363, NULL, NULL, 371, 'Paper Party Hat', 'Paper Party Hat', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(364, NULL, NULL, 372, 'Hat Disco for Birthday Cake', 'Hat Disco for Birthday Cake', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(365, NULL, NULL, 373, 'Popper Bomb Party (Dollar)', 'Popper Bomb Party (Dollar)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(366, NULL, NULL, 374, 'Bithday Party Popper (paper box bomb)', 'Bithday Party Popper (paper box bomb)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(367, NULL, NULL, 375, 'Birthday Party Firework (1Ctn*30Pkt*20Pcs)', 'Birthday Party Firework (1Ctn*30Pkt*20Pcs)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '999.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(368, NULL, NULL, 376, 'Spray for Birthday Cake (1Ctn*48Can)', 'Spray for Birthday Cake (1Ctn*48Can)', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(369, NULL, NULL, 377, 'Dasani', 'Dasani', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(370, NULL, NULL, 378, 'Vital', 'Vital', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(371, NULL, NULL, 379, 'Angkorpuro', 'Angkorpuro', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(372, NULL, NULL, 380, 'Cocacola', 'Cocacola', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '995.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(373, NULL, NULL, 381, 'Soda', 'Soda', NULL, NULL, '1000.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.0000', '2020-12-05', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(374, NULL, NULL, 382, '74354115', 'ODM', NULL, '50.0000', '3.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '150.0000', '-25.0000', '2020-12-07', 'received', '50.0000', '50.0000', '3.0000', NULL, NULL, NULL, NULL, '0.0000'),
(375, NULL, NULL, 383, '25117740', 'Apple', NULL, '5.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '50.0000', '0.0000', '2020-12-10', 'received', '5.0000', '5.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(376, NULL, NULL, 384, '53670579', 'Orange', NULL, '5.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '3.0000', '2020-12-10', 'received', '5.0000', '5.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(378, 1, NULL, 384, '53670579', 'Apple', NULL, '5.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '50.0000', '25.0000', '2020-12-10', 'received', '5.0000', '5.0000', '10.0000', NULL, NULL, 27, 'kg', '10.0000'),
(379, NULL, NULL, 385, '101', 'Test', NULL, '5.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '500.0000', '100.0000', '2020-12-10', 'received', '5.0000', '5.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(380, 2, NULL, 384, '53670579', 'Apple', NULL, '5.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '25.0000', '7.0000', '2020-12-11', 'received', '5.0000', '5.0000', '5.0000', NULL, NULL, 27, 'kg', '5.0000'),
(381, NULL, NULL, 386, 'F00001', 'Banana', NULL, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '10.0000', '2020-12-11', 'received', '2.0000', '2.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(382, NULL, NULL, 388, '8846002481704', 'Vital', NULL, '1000.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10000.0000', '10.0000', '2020-12-14', 'received', '1000.0000', '1000.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(383, NULL, NULL, 390, '8888311090444', 'Gold Roast ', NULL, '3.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '30.0000', '74.0000', '2020-12-28', 'received', '3.0000', '3.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(384, NULL, NULL, 391, '4892368072166', 'Palmolive', NULL, '2.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '40.0000', '-17.0000', '2020-12-28', 'received', '2.0000', '2.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(385, NULL, NULL, 392, '8843883889889', 'Elan water', NULL, '0.2000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '1.0000', '-105.0000', '2020-12-28', 'received', '0.2000', '0.2000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(386, NULL, NULL, 393, '8850006602768', 'Protex ', NULL, '3.2100', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '32.1000', '-19.0000', '2020-12-28', 'received', '3.2100', '3.2100', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(387, NULL, NULL, 394, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-16.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(388, NULL, NULL, 395, '123456', 'Latte', NULL, '2.0000', '12.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '24.0000', '11.6700', '2020-12-28', 'received', '2.0000', '2.0000', '12.0000', NULL, NULL, NULL, NULL, '0.0000'),
(389, NULL, NULL, 396, '000001', 'Salad', NULL, '5.0000', '12.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '60.0000', '11.9250', '2020-12-28', 'received', '5.0000', '5.0000', '12.0000', NULL, NULL, NULL, NULL, '0.0000'),
(390, NULL, NULL, 397, '8850006480915', 'colgate Toothpaste Fresh Cool Mint 170g ', NULL, '2.5000', '12.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '30.0000', '12.0000', '2020-12-28', 'received', '2.5000', '2.5000', '12.0000', NULL, NULL, NULL, NULL, '0.0000'),
(391, NULL, NULL, 398, '8850006480915', 'palmolive body wash', NULL, '1.0000', '50.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '50.0000', '30.0000', '2020-12-28', 'received', '1.0000', '1.0000', '50.0000', NULL, NULL, NULL, NULL, '0.0000'),
(392, NULL, NULL, 400, '066666', 'Virtal', NULL, '10.0000', '12.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '120.0000', '9.9250', '2020-12-29', 'received', '10.0000', '10.0000', '12.0000', NULL, NULL, NULL, NULL, '0.0000'),
(393, 3, NULL, 288, 'Hot espresso (Small)', 'Hot espresso', NULL, '20.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '2000.0000', '99.0000', '2020-12-29', 'received', '20.0000', '20.0000', '100.0000', NULL, NULL, 30, 'Small Cup', '100.0000'),
(394, NULL, NULL, 402, '8847108270025', 'Salad', NULL, '1.2500', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '9.9200', '2020-12-29', 'received', '1.2500', '1.2500', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(395, NULL, NULL, 389, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(396, NULL, NULL, 403, '1270025000753', 'Salad', NULL, '1.2500', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '10.0000', '2020-12-29', 'received', '1.2500', '1.2500', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(397, 4, NULL, 227, 'Almond Doughnut', 'Almond Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2020-12-30', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(398, 4, NULL, 236, 'Green Onion Hot Dog', 'Green Onion Hot Dog', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2020-12-30', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(399, 4, NULL, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', NULL, '0.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '2.0000', '2020-12-30', 'ordered', '0.0000', '0.0000', '2.0000', NULL, NULL, 28, '1', '2.0000'),
(400, 4, NULL, 276, 'Caramel milk tea', 'Caramel milk tea', NULL, '0.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '2.0000', '2020-12-30', 'ordered', '0.0000', '0.0000', '2.0000', NULL, NULL, 22, 'Cup', '2.0000'),
(401, 5, NULL, 403, '1270025000753', 'Salad', NULL, '1.2500', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '12.5000', '10.0000', '2020-12-30', 'received', '1.2500', '1.2500', '10.0000', NULL, NULL, 27, 'kg', '10.0000'),
(402, NULL, NULL, 401, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-4.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(403, NULL, NULL, 399, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-28.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(404, 6, NULL, 403, '1270025000753', 'Salad', NULL, '1.2500', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '125.0000', '100.0000', '2021-01-04', 'ordered', '1.2500', '1.2500', '100.0000', NULL, NULL, 27, 'kg', '100.0000'),
(405, 7, NULL, 403, '1270025000753', 'Salad', NULL, '1.2500', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '125.0000', '100.0000', '2021-01-04', 'received', '1.2500', '1.2500', '100.0000', NULL, NULL, 27, 'kg', '100.0000'),
(406, 8, NULL, 403, '1270025000753', 'Salad', NULL, '1.2500', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '125.0000', '80.0000', '2021-01-04', 'received', '1.2500', '1.2500', '100.0000', NULL, NULL, 27, 'kg', '100.0000'),
(407, NULL, NULL, 404, '1234', 'shoes', 1, '50.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '500.0000', '10.0000', '2021-01-05', 'received', '50.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(408, NULL, NULL, 404, '1234', 'shoes', 2, '50.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '500.0000', '9.0000', '2021-01-05', 'received', '50.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(409, NULL, NULL, 404, '1234', 'shoes', 3, '50.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '500.0000', '10.0000', '2021-01-05', 'received', '50.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(410, 9, NULL, 384, '53670579', 'Apple', NULL, '5.0000', '20.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '100.0000', '0.0000', '2021-01-13', 'received', '5.0000', '5.0000', '20.0000', NULL, NULL, 27, 'kg', '20.0000'),
(411, 10, NULL, 400, '066666', 'Virtal', NULL, '10.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '100.0000', '10.0000', '2021-01-14', 'received', '10.0000', '10.0000', '10.0000', NULL, NULL, 27, 'kg', '10.0000'),
(412, NULL, NULL, 406, '04343543', 'Travel set Bamboo case ', NULL, '0.0000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '2021-01-14', 'received', '0.0000', '0.0000', '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(413, 12, NULL, 407, '855', 'pig', NULL, '1000000.0000', '10000.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-01-18', '10000000.0000', '9955.0000', '2021-01-18', 'received', '1000000.0000', '1000.0000', '10000.0000', NULL, NULL, 35, 'KG', '10.0000'),
(414, NULL, NULL, 408, '94402706', 'Electric Candle', 4, '10.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '200.0000', '17.0000', '2021-01-25', 'received', '10.0000', NULL, '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(415, NULL, NULL, 409, '37826319', 'light', NULL, '2.0000', '50.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '50.0000', '2021-01-25', 'received', '2.0000', '2.0000', '50.0000', NULL, NULL, NULL, NULL, '0.0000'),
(416, NULL, NULL, 410, '50217917', 'អំពូល', NULL, '0.0000', '50.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '40.0000', '2021-01-26', 'received', '0.0000', '0.0000', '50.0000', NULL, NULL, NULL, NULL, '0.0000'),
(417, NULL, NULL, 408, '94402706', 'Electric Candle', 5, '10.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '10.0000', '2021-01-27', 'received', '10.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(418, NULL, NULL, 408, '94402706', 'Electric Candle', 6, '10.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '10.0000', '2021-01-27', 'received', '10.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(419, NULL, NULL, 408, '94402706', 'Electric Candle', 7, '10.0000', '10.0000', 0, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '10.0000', '2021-01-27', 'received', '10.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(420, NULL, NULL, 411, '34134', 'ODM', 8, '4.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '40.0000', '10.0000', '2021-01-28', 'received', '4.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(421, NULL, NULL, 411, '34134', 'ODM', 9, '4.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '40.0000', '10.0000', '2021-01-28', 'received', '4.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(422, NULL, NULL, 411, '34134', 'ODM', 10, '4.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '40.0000', '10.0000', '2021-01-28', 'received', '4.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(423, NULL, NULL, 408, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(424, NULL, NULL, 414, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-3.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(425, NULL, NULL, 403, '1270025000753', '123414 (អំពូល5)', 11, '1.2500', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '10.0000', '2021-02-12', 'received', '1.2500', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(426, NULL, NULL, 403, '1270025000753', '123414 (អំពូល5)', 12, '1.2500', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '10.0000', '2021-02-12', 'received', '1.2500', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(427, NULL, NULL, 403, '1270025000753', '123414 (អំពូល5)', 13, '1.2500', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '10.0000', '2021-02-12', 'received', '1.2500', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(428, NULL, NULL, 416, '59227711', 'Pokarisweat', NULL, '1.0000', '200.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '200.0000', '199.0000', '2021-03-19', 'received', '1.0000', '1.0000', '200.0000', NULL, NULL, NULL, NULL, '0.0000'),
(429, NULL, NULL, 417, 'AFD-10348', 'David', NULL, '10.0000', '50.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '500.0000', '43.0000', '2021-03-20', 'received', '10.0000', '10.0000', '50.0000', NULL, NULL, NULL, NULL, '0.0000'),
(430, NULL, NULL, 418, '54621833', 'testtesttest', NULL, '20.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '400.0000', '20.0000', '2021-03-21', 'received', '20.0000', '20.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(431, 15, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '100.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2021-05-18', '1000.0000', '10.0000', '2021-05-13', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 28, '1', '10.0000'),
(432, 16, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '100.0000', '-5.0000', 1, '0.0000', 0, '', '0', '0.0000', NULL, '-500.0000', '-5.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 431, 28, '1', '-5.0000'),
(433, NULL, NULL, 379, '', '', 2, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(434, NULL, NULL, 419, 'C000001', 'អាវ coat', NULL, '7.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '70.0000', '5.0000', '2021-05-25', 'received', '7.0000', '7.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(435, 17, NULL, 419, 'C000001', 'អាវ coat', NULL, '7.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '70.0000', '105.0000', '2021-05-25', 'received', '7.0000', '7.0000', '10.0000', NULL, NULL, 36, 'PCS', '10.0000');
INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`) VALUES
(436, 19, NULL, 238, 'Coconut Twist', 'Coconut Twist', NULL, '2.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '2.0000', '1.0000', '2021-05-28', 'received', '2.0000', '2.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(437, NULL, NULL, 420, '10152760', 'asads', NULL, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '-991.0000', '2021-05-30', 'received', '2.0000', '2.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(438, NULL, NULL, 421, '72623148', 'test', NULL, '41000.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '820000.0000', '19.0000', '2021-06-02', 'received', '41000.0000', '41000.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(439, NULL, NULL, 415, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(440, 20, NULL, 242, 'Milk Custard Bread 3', 'Milk Custard Bread 2', NULL, '0.0000', '100.0000', 2, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '100.0000', '2021-06-10', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 28, '1', '100.0000'),
(441, NULL, NULL, 424, '84656367', 'Test', 6, '1.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '100.0000', '2021-06-11', 'received', '1.0000', NULL, '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(442, NULL, NULL, 424, '84656367', 'Test', 7, '1.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '100.0000', '2021-06-11', 'received', '1.0000', NULL, '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(443, NULL, NULL, 424, '84656367', 'Test', 8, '1.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '100.0000', '2021-06-11', 'received', '1.0000', NULL, '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(444, 21, NULL, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '30000.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '29995.0000', '2021-06-13', 'received', '0.0000', '0.0000', '30000.0000', NULL, NULL, 28, '1', '30000.0000'),
(445, 21, NULL, 242, 'Milk Custard Bread 3', 'Milk Custard Bread 2', NULL, '0.0000', '30000.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '30000.0000', '2021-06-13', 'received', '0.0000', '0.0000', '30000.0000', NULL, NULL, 28, '1', '30000.0000'),
(446, 21, NULL, 238, 'Coconut Twist', 'Coconut Twist', NULL, '0.0000', '30000.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '30000.0000', '2021-06-13', 'received', '0.0000', '0.0000', '30000.0000', NULL, NULL, 28, '1', '30000.0000'),
(447, NULL, NULL, 425, '0002', 'cake 123', NULL, '0.0000', '1000.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '1000.0000', '2021-06-15', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(448, 22, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2021-06-24', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(449, 22, NULL, 239, 'Cream Bun', 'Cream Bun', NULL, '0.0000', '50.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '50.0000', '2021-06-24', 'ordered', '0.0000', '0.0000', '50.0000', NULL, NULL, 28, '1', '50.0000'),
(450, NULL, NULL, 426, 'A0067', 'Product A12', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '100.0000', '2021-06-25', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(451, NULL, NULL, 428, '94575518', 'Tasty Bread', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '100.0000', '2021-06-28', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(452, NULL, NULL, 429, '74637915', 'Item Sale', NULL, '5.0000', '1000.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '5000.0000', '1000.0000', '2021-07-04', 'received', '5.0000', '5.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(453, NULL, NULL, 430, '90716944', 'mask 4 layers', NULL, '0.3000', '1000.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '300.0000', '999.0000', '2021-07-04', 'received', '0.3000', '0.3000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(454, NULL, NULL, 431, '009282', 'coca cola', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '99.0000', '2021-07-06', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(455, 23, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2021-07-06', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(456, 23, NULL, 233, 'Green Onion Floss', 'Green Onion Floss', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2021-07-06', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(457, NULL, NULL, 432, '65468254', 'sting', NULL, '10.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '200.0000', '19.0000', '2021-07-25', 'received', '10.0000', '10.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(458, NULL, NULL, 433, '35195974', 'Delivery  in Town', NULL, '1.0000', '10000.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10000.0000', '9999.0000', '2021-07-25', 'received', '1.0000', '1.0000', '10000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(459, 24, NULL, 432, '65468254', 'sting', NULL, '10.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '1000.0000', '100.0000', '2021-07-25', 'received', '10.0000', '10.0000', '100.0000', NULL, NULL, 50, 'កេស', '100.0000'),
(460, 24, NULL, 380, 'Cocacola', 'Cocacola', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '150.0000', '2021-07-25', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 23, 'Bottle', '100.0000'),
(461, 26, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '122.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '149.0000', '2021-07-27', 'received', '0.0000', '0.0000', '122.0000', NULL, NULL, 28, '1', '122.0000'),
(462, 26, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '67.0000', '2021-07-27', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 28, '1', '100.0000'),
(465, 27, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '12.0000', '1.0000', '2021-07-29', 'ordered', '12.0000', '12.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(466, 27, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, '1.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '1.0000', '1.0000', '2021-07-29', 'ordered', '1.0000', '1.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(467, NULL, NULL, 229, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(468, NULL, NULL, 231, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(469, NULL, 1, 368, 'Candle Number (1Box*10Pcs)', 'Candle Number (1Box*10Pcs)', NULL, '0.0000', '100.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '100.0000', '2021-08-03', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 26, 'Piece', '100.0000'),
(470, NULL, NULL, 433, '1test', 'test', NULL, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2021-08-18', 'received', '1.0000', '1.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(471, NULL, NULL, 433, '1test', 'test', NULL, '1.0000', '10.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2021-08-18', 'received', '1.0000', '1.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(472, 28, NULL, 433, '12test', 'test', NULL, '1.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2021-08-19', '5.0000', '5.0000', '2021-08-18', 'received', '1.0000', '1.0000', '5.0000', NULL, NULL, 29, 'unit', '5.0000'),
(473, 29, NULL, 433, '12test', 'test', NULL, '1.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2021-08-25', '5.0000', '3.0000', '2021-08-18', 'received', '1.0000', '1.0000', '5.0000', NULL, NULL, 29, 'unit', '5.0000'),
(475, 30, NULL, 433, '12test', 'test', NULL, '1.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '1.0000', '1.0000', '2021-09-08', 'received', '1.0000', '1.0000', '1.0000', NULL, NULL, 29, 'unit', '1.0000'),
(476, NULL, NULL, 227, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(477, NULL, NULL, 228, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(478, NULL, 2, 237, 'Cheese Stick213', 'Cheese Stick', NULL, '0.0000', '5.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '4.0000', '2021-09-13', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, '1', '5.0000'),
(479, 32, NULL, 432, '65468254', 'sting', NULL, '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-01-31', '10.0000', '1.0000', '2021-09-13', 'ordered', '10.0000', '10.0000', '1.0000', NULL, NULL, 50, 'កេស', '1.0000'),
(480, NULL, NULL, 434, '45561', 'មីឆាសាច់គោ', NULL, '3.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '60.0000', '20.0000', '2021-09-15', 'received', '3.0000', '3.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(481, NULL, NULL, 422, '8847100562234', 'Coca Cola', 5, '1.0000', '5.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '5.0000', '5.0000', '2021-09-15', 'received', '1.0000', NULL, '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(482, NULL, NULL, 422, '', '', 5, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-318.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(483, 34, NULL, 379, '184623782', 'Angkorpuro', 1, '5.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '500.0000', '0.0000', '2021-09-20', 'received', '5.0000', '5.0000', '100.0000', NULL, NULL, 23, 'Bottle', '100.0000'),
(484, NULL, 3, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 2, '0.0000', NULL, '', NULL, NULL, '2021-09-27', '0.0000', '1.0000', '2021-09-27', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, '1', '1.0000'),
(485, NULL, 4, 237, 'Cheese Stick213', 'Cheese Stick', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '1.0000', '2021-09-28', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, '1', '1.0000'),
(486, NULL, NULL, 435, 'L000034', 'Product 1', 6, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '10.0000', '2021-10-08', 'received', '2.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(487, NULL, NULL, 435, 'L000034', 'Product 1', 7, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '10.0000', '2021-10-08', 'received', '2.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(488, NULL, NULL, 436, '00002', 'test', 8, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '-90.0000', '2021-10-08', 'received', '2.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(489, NULL, NULL, 436, '00002', 'test', 9, '2.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '20.0000', '10.0000', '2021-10-08', 'received', '2.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(490, NULL, NULL, 437, 'L98021', 'Product 2', NULL, NULL, '200.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200.0000', '2021-10-08', 'received', '2.0000', '2.0000', '200.0000', NULL, NULL, NULL, NULL, '0.0000'),
(491, NULL, NULL, 438, 'L98022', 'Product 3', NULL, NULL, '100.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', '2021-10-08', 'received', '3.0000', '3.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(492, NULL, NULL, 439, 'L98023', 'Product 4', NULL, NULL, '100.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', '2021-10-08', 'received', '2.0000', '2.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(493, NULL, NULL, 440, 'L98024', 'Product 5', NULL, NULL, '200.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200.0000', '2021-10-08', 'received', '2.0000', '2.0000', '200.0000', NULL, NULL, NULL, NULL, '0.0000'),
(494, 35, NULL, 437, 'L98021', 'Product 2', NULL, '1.5000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-10-09', '15.0000', '10.0000', '2021-10-08', 'received', '1.5000', '1.5000', '10.0000', NULL, NULL, 24, 'Box', '10.0000'),
(495, 35, NULL, 437, 'L98021', 'Product 2', NULL, '2.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-10-08', '20.0000', '10.0000', '2021-10-08', 'received', '2.0000', '2.0000', '10.0000', NULL, NULL, 24, 'Box', '10.0000'),
(497, 37, NULL, 436, '00002', 'test', 8, '2.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '20.0000', '0.0000', '2021-10-11', 'received', '2.0000', '2.0000', '5.0000', NULL, NULL, 25, 'Can', '10.0000'),
(498, 38, NULL, 436, '00002', 'test', 8, '2.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '10.0000', '85.0000', '2021-10-14', 'received', '2.0000', '2.0000', '5.0000', NULL, NULL, 25, 'Can', '5.0000'),
(499, NULL, NULL, 441, '51762323', 'test111', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '2021-10-28', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, NULL, NULL, '0.0000'),
(500, 40, NULL, 443, 'TP001', 'Test Product', NULL, '1.0000', '50.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '50.0000', '20.0000', '2021-11-02', 'received', '1.0000', '1.0000', '50.0000', NULL, NULL, 24, 'Box', '50.0000'),
(501, NULL, NULL, 379, '', '', 1, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-804.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(502, NULL, NULL, 444, '70453937', 'Product Test', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '3.0000', '2021-11-04', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(503, NULL, NULL, 445, 'DD001', 'Dizzy Drinks', NULL, '0.0000', '1000.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '995.0000', '2021-11-08', 'received', '0.0000', '0.0000', '1000.0000', NULL, NULL, NULL, NULL, '0.0000'),
(504, NULL, NULL, 436, '00002', 'test', 8, '0.0000', '0.0000', 2, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '4.0000', '2021-11-15', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(505, NULL, 5, 436, '00002', 'test', 8, '2.0000', '1.0000', 1, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '2.0000', '3.0000', '2021-11-15', 'received', '2.0000', '2.0000', NULL, NULL, NULL, 25, 'Can', '1.0000'),
(506, NULL, NULL, 446, '53223', 'add', NULL, '5.0000', '50.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '250.0000', '50.0000', '2021-12-06', 'received', '5.0000', '5.0000', '50.0000', NULL, NULL, NULL, NULL, '0.0000'),
(507, 41, NULL, 446, '53223', 'add', NULL, '5.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '25.0000', '5.0000', '2021-12-06', 'received', '5.0000', '5.0000', '5.0000', NULL, NULL, 24, 'Box', '5.0000'),
(508, NULL, NULL, 447, '001', 'Shoes', 10, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2021-12-09', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(509, NULL, NULL, 447, '001', 'Shoes', 11, '0.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '19.0000', '2021-12-09', 'received', '0.0000', NULL, '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(510, NULL, NULL, 447, '001', 'Shoes', 12, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2021-12-09', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(511, NULL, NULL, 447, '001', 'Shoes', 13, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2021-12-09', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(512, NULL, NULL, 447, '001', 'Shoes', 14, '0.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '20.0000', '2021-12-09', 'received', '0.0000', NULL, '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(513, NULL, 6, 447, '001', 'Shoes', 13, '0.0000', '10.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '10.0000', '2021-12-09', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 29, 'unit', '10.0000'),
(514, NULL, 7, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '3.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '1.0000', '2021-12-13', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 23, 'Bottle', '3.0000'),
(515, NULL, 7, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '4.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '4.0000', '2021-12-13', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, '1', '4.0000'),
(516, NULL, 8, 237, 'Cheese Stick213', 'Cheese Stick', NULL, '0.0000', '2.0000', 2, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '2.0000', '2021-12-13', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, '1', '2.0000'),
(519, NULL, NULL, 449, 'con01', 'ថ្នាំប្រេង 1​ខាំ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999981.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(520, NULL, NULL, 450, 'con02', 'ថ្នាំច្រះក្រហម​ 18 k', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-299999975.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(521, NULL, NULL, 451, 'con03', 'ថ្នាំច្រេះប្រផេះ 1 k', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-199999989.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(522, NULL, NULL, 452, 'con04', 'ទឹកមាសលាយទឹក 3​ខាំ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999999990.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(523, NULL, NULL, 453, 'con05', 'ទឹកមាសលាយទឹក 1K', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999999990.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(524, NULL, NULL, 454, 'con06', 'ទឹកមាសលាយទឹក 4K', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999999991.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(525, NULL, NULL, 455, 'con07', 'ទឹកមាសលាយសាំង​ 3ខាំ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999984.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(526, NULL, NULL, 456, 'con08', 'ទឹកមាសលាយសាំង​ 1K', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999987.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(527, NULL, NULL, 457, 'con09', 'ទឹកលាយថ្នាំប្រេង​ 200L', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999983.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(528, NULL, NULL, 458, 'con10', 'ថ្នាំក្បឿង​ 1k', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-500000042.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(529, NULL, NULL, 459, 'con11', 'ថ្នាំក្បឿង​ 4k', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-299999999.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(530, NULL, NULL, 460, 'con12', 'ទ្រនាប់200', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-99999984.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(531, NULL, NULL, 461, 'baby02', 'នំកូនក្មេង​ Puffs Banana​​', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(532, NULL, NULL, 462, 'baby03', 'ក្តាខៀន​', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-26.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(533, NULL, NULL, 463, 'baby04', 'នំកូនក្មេង​ Promina', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(534, NULL, NULL, 464, 'baby05', 'កំបុ៉ងបបរ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-123.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(535, NULL, NULL, 465, 'baby06', 'ប្រដាប់វាស់កំដៅ Rossmax', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(536, NULL, NULL, 466, 'baby07', 'ម៉ាសុីនស្ពុងច្រមុះ Rossmax', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(537, NULL, NULL, 467, 'baby08', 'ម្ស៉ៅលាបខ្លួនកូនក្មេង​ JonhSon (Pink) 180g', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(538, NULL, NULL, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(539, NULL, NULL, 469, 'baby10', 'ខោទឹកនោម Yuniku (L)', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(540, NULL, NULL, 470, 'baby11', 'ខោទឹកនោម Yuniku (XL)', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(541, NULL, NULL, 471, 'baby12', 'ខោទឹកនោម​ Yuniku (XXL)', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(542, NULL, NULL, 472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(543, NULL, NULL, 473, 'mart01', 'កូកា', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(544, NULL, NULL, 474, 'mart02', 'កូកាដប', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(545, NULL, NULL, 475, 'mart03', 'សាមុរ៉ៃ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(546, NULL, NULL, 476, 'mart04', 'ស្ទីងលឿង', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(547, NULL, NULL, 477, 'mart05', 'ស្ទីងក្រហម', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(548, NULL, NULL, 478, 'mart06', 'សេវិនអាប់', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(549, NULL, NULL, 479, 'mart07', 'ហ្វាន់តាបៃតង', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(550, NULL, NULL, 480, 'mart08', 'ហ្វាន់តាទឹកក្រូច', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(551, NULL, NULL, 481, 'mart09', 'ប៊ិបស៊ី', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(552, NULL, NULL, 482, 'mart10', 'អាយខៀវ', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(553, NULL, NULL, 483, 'mart11', 'អាយលឿង', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(554, NULL, NULL, 484, 'mart12', 'អាយដប', NULL, NULL, '10.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '2021-12-17', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(555, NULL, NULL, 483, 'l01', 'l', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '100.0000', '2021-12-21', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(556, 50, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2021-12-22', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 23, 'Bottle', '1.0000'),
(557, 50, NULL, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2021-12-22', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(558, NULL, NULL, 485, 'C001', 'coca', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '150.0000', '2021-12-22', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(559, NULL, NULL, 486, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-6.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(560, NULL, NULL, 487, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-99999999999.9999', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(561, NULL, NULL, 488, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-11.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(562, NULL, NULL, 489, 'M0001', 'MACHINE', NULL, NULL, '100.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '108.0000', '2021-12-23', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(563, NULL, NULL, 490, 'T0001', 'Testing', NULL, NULL, '100.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', '2021-12-23', 'received', '90.0000', '90.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(564, NULL, NULL, 491, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(565, NULL, NULL, 261, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(566, NULL, NULL, 253, '', '', NULL, NULL, '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(567, NULL, NULL, 492, '864321', 'Product', NULL, '2.0000', '30.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '60.0000', '40.0000', '2021-12-23', 'received', '2.0000', '2.0000', '30.0000', NULL, NULL, NULL, NULL, '0.0000'),
(568, NULL, NULL, 493, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(569, NULL, NULL, 494, '88548388482', 'Vital 330ml', NULL, '10.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '10.0000', '2021-12-29', 'received', '10.0000', '10.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(570, NULL, NULL, 231, '', '', NULL, NULL, '0.0000', 3, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(571, NULL, NULL, 495, '47865190', 'Apple', NULL, '0.0000', '100.0000', 4, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '50.0000', '2022-01-03', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(572, NULL, 9, 495, '47865190', 'Apple', NULL, '0.0000', '50.0000', 3, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '50.0000', '2022-01-03', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 20, 'null', '50.0000'),
(573, NULL, NULL, 496, '29940333', 'Apple', NULL, '0.0000', '100.0000', 5, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '50.0000', '2022-01-03', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(574, NULL, 10, 496, '29940333', 'Apple', NULL, '0.0000', '50.0000', 6, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '50.0000', '2022-01-03', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 20, 'null', '50.0000'),
(575, NULL, NULL, 497, '1551123', 'Vital', NULL, '0.0000', '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '9.0000', '2022-01-03', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(576, NULL, NULL, 498, '22005332', 'ប៊ិច', NULL, '0.0250', '500.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '500.0000', '2022-01-06', 'received', '0.0250', '0.0250', '500.0000', NULL, NULL, NULL, NULL, '0.0000'),
(577, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '500.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '12.5000', '500.0000', '2022-01-06', 'received', '0.0250', '0.0250', '500.0000', NULL, NULL, NULL, NULL, '0.0000'),
(578, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '0.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2022-01-06', 'received', '0.0250', '0.0250', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(579, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '0.0000', 3, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2022-01-06', 'received', '0.0250', '0.0250', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(580, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '0.0000', 4, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2022-01-06', 'received', '0.0250', '0.0250', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(581, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '0.0000', 5, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2022-01-06', 'received', '0.0250', '0.0250', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(582, NULL, NULL, 499, '92797691', 'ប៊ិច', NULL, '0.0250', '0.0000', 6, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2022-01-06', 'received', '0.0250', '0.0250', '0.0000', NULL, NULL, NULL, NULL, '0.0000'),
(583, NULL, NULL, 500, '69505874', 'Test', NULL, '0.0000', '25.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '25.0000', '2022-01-10', 'received', '0.0000', '0.0000', '25.0000', NULL, NULL, NULL, NULL, '0.0000'),
(584, 51, NULL, 448, 'test123', 'Test', NULL, '0.0000', '50.0000', 5, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '50.0000', '2022-01-11', 'received', '0.0000', '0.0000', '50.0000', NULL, NULL, 20, 'null', '50.0000'),
(585, NULL, NULL, 500, '75440192', 'test-30', 8, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2022-01-19', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(586, NULL, NULL, 500, '75440192', 'test-30', 9, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2022-01-19', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(587, NULL, NULL, 500, '75440192', 'test-30', 10, '0.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '10.0000', '2022-01-19', 'received', '0.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(588, NULL, NULL, 501, '81389169', 'X', 11, '0.0000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2022-01-19', 'received', '0.0000', NULL, '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(589, NULL, NULL, 501, '81389169', 'X', 12, '0.0000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2022-01-19', 'received', '0.0000', NULL, '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(590, NULL, NULL, 501, '81389169', 'X', 13, '0.0000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2022-01-19', 'received', '0.0000', NULL, '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(591, NULL, NULL, 501, '81389169', 'X', 14, '0.0000', '5.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '2022-01-19', 'received', '0.0000', NULL, '5.0000', NULL, NULL, NULL, NULL, '0.0000'),
(592, 52, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '0.0000', '2022-01-19', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, 23, 'Bottle', '1.0000'),
(593, 52, NULL, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '0.0000', '2022-01-19', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(594, NULL, NULL, 502, '38042349', 'Variant', 15, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2022-01-20', 'received', '1.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(595, NULL, NULL, 502, '38042349', 'Variant', 16, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2022-01-20', 'received', '1.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(596, NULL, NULL, 502, '38042349', 'Variant', 17, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2022-01-20', 'received', '1.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(597, NULL, NULL, 502, '38042349', 'Variant', 18, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2022-01-20', 'received', '1.0000', NULL, '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(598, 53, NULL, 502, '38042349', 'Variant', 15, '1.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '5.0000', '5.0000', '2022-01-20', 'received', '1.0000', '1.0000', '5.0000', NULL, NULL, 29, 'unit', '5.0000'),
(599, NULL, NULL, 504, 'A001', 'ជេល', NULL, '3.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '60.0000', '16.0000', '2022-01-31', 'received', '3.0000', '3.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(600, NULL, NULL, 505, '12345', 'CoCa', NULL, '0.2500', '25.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '6.2500', '15.0000', '2022-02-01', 'received', '0.2500', '0.2500', '25.0000', NULL, NULL, NULL, NULL, '0.0000'),
(601, 54, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-02-08', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(602, 54, NULL, 261, 'F0002', 'Floss Roll', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-02-08', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(603, NULL, 11, 505, '12345', 'CoCa', NULL, '0.2500', '10.0000', 7, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '2.5000', '10.0000', '2022-02-16', 'received', '0.2500', '0.2500', NULL, NULL, NULL, 52, 'ដប', '10.0000'),
(604, NULL, 12, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 3, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '1.0000', '2022-03-05', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 23, 'Bottle', '1.0000'),
(605, NULL, NULL, 507, '27050974', 'Test', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '99.0000', '2022-03-15', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(606, 55, NULL, 422, '8847100562395', 'Coca Cola', 5, '1.0000', '316.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-08-04', '316.0000', '316.0000', '2022-03-18', 'received', '1.0000', '1.0000', '316.0000', NULL, NULL, 25, 'Can', '316.0000'),
(607, 57, NULL, 493, '4718050609666', 'ADATA C008 USB Flash Drive 32GB', NULL, '10.0000', '20.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-04-04', '200.0000', '20.0000', '2022-03-18', 'received', '10.0000', '10.0000', '20.0000', NULL, NULL, 24, 'Box', '20.0000'),
(613, 58, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '100.0000', '2022-03-20', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 28, '1', '100.0000'),
(614, 58, NULL, 233, 'G00002', 'Green Onion Floss', NULL, '0.0000', '50.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '50.0000', '2022-03-20', 'received', '0.0000', '0.0000', '50.0000', NULL, NULL, 28, '1', '50.0000'),
(615, 58, NULL, 235, 'Ham and Cheese Onion 4', 'Ham and Cheese Onion 3', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '100.0000', '2022-03-20', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 28, '1', '100.0000'),
(616, 58, NULL, 239, 'c00001', 'Cream001', NULL, '0.0000', '100.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '94.0000', '2022-03-20', 'received', '0.0000', '0.0000', '100.0000', NULL, NULL, 28, '1', '100.0000'),
(617, 59, NULL, 496, '29940333', 'Apple', NULL, '0.0000', '50.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-04-30', '0.0000', '40.0000', '2022-03-20', 'received', '0.0000', '0.0000', '50.0000', NULL, NULL, 20, 'null', '50.0000'),
(618, 61, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-03-31', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(619, 61, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-03-31', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 23, 'Bottle', '1.0000'),
(620, 62, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '5.0000', '1.0000', '2022-03-31', 'ordered', '5.0000', '5.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(621, NULL, NULL, 511, '18427165', 'vital', NULL, '0.0000', '240.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '240.0000', '2022-04-08', 'received', '0.0000', '0.0000', '240.0000', NULL, NULL, NULL, NULL, '0.0000'),
(622, 63, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-04-08', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(623, 63, NULL, 233, 'G00002', 'Green Onion Floss', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-04-08', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(624, 64, NULL, 227, '2903741535', 'Almond Doughnut', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-06-23', '0.0000', '0.0000', '2022-04-09', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 23, 'Bottle', '10.0000'),
(625, 64, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-04-29', '0.0000', '9.0000', '2022-04-09', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 28, '1', '10.0000'),
(626, 64, NULL, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-06-14', '0.0000', '0.0000', '2022-04-09', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 28, '1', '10.0000'),
(627, 65, NULL, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', NULL, '0.0000', '1120.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-04-29', '0.0000', '1120.0000', '2022-04-09', 'ordered', '0.0000', '0.0000', '1120.0000', NULL, NULL, 28, '1', '1120.0000'),
(628, NULL, NULL, 513, '69360799', 'test', NULL, '0.0000', '120.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '118.0000', '2022-04-20', 'received', '0.0000', '0.0000', '120.0000', NULL, NULL, NULL, NULL, '0.0000'),
(629, NULL, NULL, 506, '000789', 'Hanan Lee Qatar', NULL, '0.0000', '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-1.0000', '2022-04-21', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(630, 67, NULL, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-04-22', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(631, 67, NULL, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '0.0000', '2022-04-22', 'received', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(632, 68, NULL, 230, 'BakeHam', 'Bake Ham', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-04-23', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(633, 68, NULL, 236, 'Green Onion Hot Dog', 'Green Onion Hot Dog', NULL, '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '1.0000', '2022-04-23', 'ordered', '0.0000', '0.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(634, 68, NULL, 231, '98321867156', 'Bacon Onion', NULL, '500.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '500.0000', '1.0000', '2022-04-23', 'ordered', '500.0000', '500.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(635, 68, NULL, 233, 'G00002', 'Green Onion Floss', NULL, '200.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '200.0000', '1.0000', '2022-04-23', 'ordered', '200.0000', '200.0000', '1.0000', NULL, NULL, 28, '1', '1.0000'),
(636, 69, NULL, 232, 'E00001', 'Egg Sandwich', NULL, '0.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2022-06-22', '0.0000', '58.0000', '2022-04-24', 'received', '0.0000', '0.0000', '10.0000', NULL, NULL, 28, '1', '10.0000'),
(637, NULL, NULL, 515, '001', 'meatball', NULL, '13000.0000', '100.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '1300000.0000', '100.0000', '2022-05-05', 'received', '13000.0000', '13000.0000', '100.0000', NULL, NULL, NULL, NULL, '0.0000'),
(638, NULL, NULL, 516, '1234567', 'NTG', NULL, '0.0000', '12.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '12.0000', '2022-05-07', 'received', '0.0000', '0.0000', '12.0000', NULL, NULL, NULL, NULL, '0.0000'),
(639, NULL, NULL, 518, '002424', 'Rainsin', NULL, '0.0000', '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-2.0000', '2022-05-30', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(640, NULL, NULL, 348, '', '', NULL, NULL, '0.0000', 4, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(641, NULL, NULL, 510, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-48.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(642, NULL, NULL, 523, '36748631', 'string', 20, '2000.0000', '3.0000', 2, '0.0000', NULL, NULL, NULL, NULL, NULL, '6000.0000', '3.0000', '2022-06-13', 'received', '2000.0000', NULL, '3.0000', NULL, NULL, NULL, NULL, '0.0000'),
(643, NULL, NULL, 524, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(644, NULL, NULL, 529, '0001', 'Pepsi', NULL, '2.0000', '72.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '144.0000', '72.0000', '2022-06-20', 'received', '2.0000', '2.0000', '72.0000', NULL, NULL, NULL, NULL, '0.0000'),
(645, NULL, NULL, 505, '', '', 20, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-7.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(646, NULL, NULL, 521, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(647, NULL, NULL, 495, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(648, NULL, NULL, 526, '', '', 21, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-13.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(652, 70, NULL, 508, '41337102', 'Coca', NULL, '2500.0000', '200.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '500000.0000', '200.0000', '2022-07-15', 'received', '2500.0000', '2500.0000', '200.0000', NULL, NULL, 24, NULL, '200.0000'),
(653, 70, NULL, 508, '41337102', 'Coca', NULL, '2500.0000', '1000.0000', 1, '0.0000', NULL, '', '0', '0.0000', NULL, '2500000.0000', '1000.0000', '2022-07-15', 'received', '2500.0000', '2500.0000', '1000.0000', NULL, NULL, 24, NULL, '1000.0000'),
(654, NULL, NULL, 533, '00001', 'coca cola new', NULL, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '2022-07-15', 'received', '1.0000', '1.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(655, NULL, NULL, 534, '10005', 'Sanhwich', NULL, '2.0000', '900.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '1800.0000', '900.0000', '2022-07-15', 'received', '2.0000', '2.0000', '900.0000', NULL, NULL, NULL, NULL, '0.0000'),
(656, NULL, NULL, 532, '', '', NULL, NULL, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(657, NULL, NULL, 536, '11343567', 'clear', NULL, '1.0000', '10.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '7.0000', '2022-07-17', 'received', '1.0000', '1.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000'),
(658, NULL, NULL, 538, '109921', 'test', NULL, '5.0000', '20.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '100.0000', '20.0000', '2022-07-19', 'received', '5.0000', '5.0000', '20.0000', NULL, NULL, NULL, NULL, '0.0000'),
(659, NULL, 13, 231, '98321867156', 'Bacon Onion', NULL, '0.0000', '2.0000', 4, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '2.0000', '2022-07-20', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, NULL, '2.0000'),
(660, NULL, 13, 239, 'c00001', 'Cream001', NULL, '0.0000', '1.0000', 4, '0.0000', NULL, '', NULL, NULL, '0000-00-00', '0.0000', '1.0000', '2022-07-20', 'received', '0.0000', '0.0000', NULL, NULL, NULL, 28, NULL, '1.0000'),
(661, NULL, NULL, 517, '0988877', 'Fanta', NULL, '0.0000', '0.0000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '50.0000', '2022-07-20', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(662, NULL, NULL, 539, '19691385', 'Remote Control LG', NULL, '0.0000', '0.0000', 4, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-10.0000', '2022-08-27', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000'),
(663, 72, NULL, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', NULL, '0.0000', '20.0000', 3, '0.0000', NULL, '', '0', '0.0000', NULL, '0.0000', '20.0000', '2022-08-27', 'ordered', '0.0000', '0.0000', '20.0000', NULL, NULL, 28, NULL, '20.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_receive`
--

DROP TABLE IF EXISTS `sma_purchase_receive`;
CREATE TABLE IF NOT EXISTS `sma_purchase_receive` (
  `receive_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL,
  `receive_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ref_no` varchar(45) DEFAULT NULL,
  `by` varchar(45) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `receive_no` varchar(45) DEFAULT NULL,
  `invoice_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`receive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_receive`
--

INSERT INTO `sma_purchase_receive` (`receive_id`, `purchase_id`, `receive_date`, `ref_no`, `by`, `no`, `receive_no`, `invoice_no`) VALUES
(1, 147, '2019-12-03 13:50:00', 'PO/2019/12/0346', 'owner', 1, 'RC201912-0001', ''),
(2, 148, '2019-12-03 15:45:00', 'PO/2019/12/0347', 'owner', 2, 'RC201912-0002', ''),
(3, 150, '2019-12-03 16:21:00', 'PO/2019/12/0348', 'owner', 3, 'RC201912-0003', ''),
(4, 26, '2021-07-27 15:36:00', '123123123', 'demo', 4, 'RC202107-0004', '23123123'),
(5, 37, '2021-10-11 11:08:00', 'PO/0493', 'demo', 5, 'RC202110-0005', ''),
(6, 37, '2021-10-11 11:10:00', 'PO/0493', 'demo', 6, 'RC202110-0006', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_receive_item`
--

DROP TABLE IF EXISTS `sma_purchase_receive_item`;
CREATE TABLE IF NOT EXISTS `sma_purchase_receive_item` (
  `receive_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` decimal(11,4) DEFAULT '0.0000',
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cost` decimal(11,4) DEFAULT NULL,
  `purchase_itemid` int(11) DEFAULT NULL,
  `trans_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `not_include` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `adjust_id` int(11) DEFAULT NULL,
  `old_stock` decimal(11,4) DEFAULT NULL,
  `internal_usage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`receive_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_receive_item`
--

INSERT INTO `sma_purchase_receive_item` (`receive_item_id`, `receive_id`, `item_id`, `quantity`, `date`, `cost`, `purchase_itemid`, `trans_date`, `not_include`, `warehouse_id`, `transfer_id`, `adjust_id`, `old_stock`, `internal_usage_id`) VALUES
(1, 1, 213, '20.0000', '2019-12-03 13:50:00', '0.0000', 421, '2019-12-03 13:51:34', NULL, 1, NULL, NULL, NULL, NULL),
(2, 2, 214, '100.0000', '2019-12-03 15:45:00', '0.0000', 422, '2019-12-03 15:47:45', NULL, 1, NULL, NULL, '0.0000', NULL),
(3, 3, 214, '100.0000', '2019-12-03 16:21:00', '0.0000', 423, '2019-12-03 16:21:32', NULL, 1, NULL, NULL, '99.0000', NULL),
(4, 4, 227, '122.0000', '2021-07-27 15:36:00', '0.0000', 461, '2021-07-27 15:36:10', NULL, 1, NULL, NULL, '914.0000', NULL),
(5, 4, 228, '100.0000', '2021-07-27 15:36:00', '0.0000', 462, '2021-07-27 15:36:10', NULL, 1, NULL, NULL, '988.0000', NULL),
(6, 5, 436, '5.0000', '2021-10-11 11:08:00', '0.0000', 496, '2021-10-11 11:08:18', NULL, 1, NULL, NULL, '20.0000', NULL),
(7, 6, 436, '5.0000', '2021-10-11 11:10:00', '0.0000', 497, '2021-10-11 11:09:18', NULL, 1, NULL, NULL, '25.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

DROP TABLE IF EXISTS `sma_quotes`;
CREATE TABLE IF NOT EXISTS `sma_quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_quotes`
--

INSERT INTO `sma_quotes` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `warehouse_id`, `biller_id`, `biller`, `note`, `internal_note`, `total`, `product_discount`, `order_discount`, `order_discount_id`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `supplier_id`, `supplier`, `hash`) VALUES
(1, '2022-04-24 11:05:00', 'QUOTE/0002', 7, 'AnakutDigital Solution', 1, 2, 'AnakutDigital Solution', '', NULL, '3.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'pending', 27, NULL, NULL, NULL, 3, 'AnakutDigital Solution', 'fa06fd1b61954536bb68490dcc130cbf3ef7943866840ebf91cd896e3f7385e3');

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

DROP TABLE IF EXISTS `sma_quote_items`;
CREATE TABLE IF NOT EXISTS `sma_quote_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_id` (`quote_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_quote_items`
--

INSERT INTO `sma_quote_items` (`id`, `quote_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`) VALUES
(1, 1, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', NULL, '3.0000', 28, '1', '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

DROP TABLE IF EXISTS `sma_sales`;
CREATE TABLE IF NOT EXISTS `sma_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `product_cost` decimal(18,4) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `paid` decimal(25,4) DEFAULT '0.0000',
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT '0',
  `shop` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `sus_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=882 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `product_cost`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `sus_status`) VALUES
(34, '2020-12-06 15:22:00', '$A/1431', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '9.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '9.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 0, '9.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '6bf371cf768077c72afed7c8c49dec4df3ac92750fd3409116e518eedd565a7d', NULL),
(35, '2020-12-06 15:28:00', '$A/1432', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '0d0a8aa7da7d3e7b0f83916ecba908594de1d9bc656b8bfce7ecf5d072d12688', NULL),
(59, '2020-12-17 08:58:00', 'Preap Express/00001', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '16.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '2.0000', '18.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '18.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'da758fc5b7c7c2c2ab81eb2ad2bedca2e83d953ad1c9d23f8d3da6eb288ec5e6', NULL),
(102, '2020-12-29 15:40:00', '$A/1434', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '7247327ce94b6f92aa804fc0af730f094a96c16d1c592611e90881404612fad1', NULL),
(110, '2020-12-29 16:02:00', '$A/1435', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '1.8800', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1.8800', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '1.8800', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'f4645cfa21df1641026ccbdc1925a8e4d28e3b0c0349ab847f139624abd882f3', NULL),
(116, '2020-12-29 16:18:00', '$A/1436', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, 27, '2020-12-30 13:18:37', 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'd75736b678fd60f302e0c80a68127c10d2873c9b2c61130fdd52dcefec59e21c', NULL),
(146, '2021-01-13 12:13:00', '$A/1437', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.7600', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.7600', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '3.7600', 176, '0.0000', NULL, 'SR/0001', NULL, '-1.8800', NULL, NULL, 0, 0, NULL, NULL, '64cb58d602eb4b5dbec6c09a93bc71f318b13ca545cc375f13164023a9f893dd', NULL),
(148, '2021-01-13 12:18:00', '$A/1438', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '5.7000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.7000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 10, 0, '5.7000', 179, '0.0000', NULL, 'SR/0001', NULL, '-0.5800', NULL, NULL, 0, 0, NULL, NULL, '899fac1c0fa47428ce1ee3411eac55f0d2cf8d19656768ddd6eacd64356ad1c8', NULL),
(152, '2021-01-14 15:51:00', '$A/1439', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '4.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '4.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '4.0000', 175, '0.0000', NULL, 'SR/0001', NULL, '-4.0000', NULL, NULL, 0, 0, NULL, NULL, '315fe2b168802f5c43087523dac3ab7edc6d64c69e603f7410d3b0b62b25cabc', NULL),
(163, '2021-01-18 13:49:00', '$A/1440', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '50.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '50.0000', 'completed', 'paid', 0, NULL, 27, 27, '2021-01-19 09:26:10', 50, 0, '50.0000', 178, '0.0000', 'ca654d0e0c96b4fa42897aef022eb223.jpg', 'SR/0001', NULL, '-5.0000', NULL, NULL, 0, 0, NULL, NULL, '1b590324e75775fa0fac94c83ac58c36e420e975305b372dc70c0d427a6063ee', NULL),
(166, '2021-01-19 09:35:00', '$A/1441', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;payment 10-Feb-2020&lt;&sol;p&gt;', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '2.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '8.0000', 177, '0.0000', NULL, 'SR/0001', NULL, '-3.0000', NULL, NULL, 0, 0, NULL, NULL, '0b3902ce5ec1680fbffb5ee04e9c58d025fdaf710a63ebafa879dcafa8671ba3', NULL),
(175, '2021-01-26 14:32:00', '$A/1439', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-4.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-4.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 152, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(176, '2021-01-26 14:32:00', '$A/1437', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-1.8800', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-1.8800', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-1.8800', NULL, '0.0000', NULL, 'SR/0001', 146, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(177, '2021-01-26 14:36:00', '$A/1441', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-3.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 166, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(180, '2021-01-26 14:44:00', '$A/1443', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '39.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '39.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 13, 0, '39.0000', 181, '0.0000', NULL, 'SR/0001', NULL, '-9.0000', NULL, NULL, 0, 0, NULL, NULL, 'b932c36dfeaba47123c071570fb1ed052cd8cbc6d4d85ffe2135cde7adc6eb8c', NULL),
(181, '2021-01-26 14:45:00', '$A/1443', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-9.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-9.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 180, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(190, '2021-01-28 14:41:00', '$A/1444', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', '10%', '0.6000', '0.6000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.4000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '5.4000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '6c67840f2fcf615039078f62b09faffbe0ecc99ff62db77d15d94d98346cfbe2', NULL),
(193, '2021-01-29 08:44:00', '$A/1445', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '8.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '4b01f88c8d8c7889cfd5db1eec3a601e12759e6c16ecac20d1914af3d13b4f68', NULL),
(196, '2021-02-05 09:15:00', '$A/1446', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '100.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '100.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '100.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '1342b5d2b1b18f42d8917761c3327172475e38324e731265bce7418bd29efa43', NULL),
(198, '2021-02-05 09:24:00', '$A/1447', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'ed7e8cb7e421d4fe87e5366a259bb32c3f1da0392090fc073f718e9b0d644b48', NULL),
(199, '2021-02-05 11:21:00', '$A/1448', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '2b2c4f0b4153308af24b42e7ce187a81514f56596e21921425e90e54242880ed', NULL),
(237, '2021-05-25 14:07:00', '$A/1449', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '36.0000', '4.0000', NULL, '4.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '36.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 5, 0, '36.0000', 238, '0.0000', NULL, 'SR/0001', NULL, '-7.2000', NULL, NULL, 0, 0, NULL, NULL, '65473dfd3cb47bb3933f5cb50f13d322433b20a66ddfe49c803a306ed18939f4', NULL),
(238, '2021-05-25 14:12:00', '$A/1449', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-7.2000', '-0.8000', NULL, '-0.8000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-7.2000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-7.2000', NULL, '0.0000', NULL, 'SR/0001', 237, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(239, '2021-05-25 14:29:00', '$A/1450', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '60.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '60.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 6, 0, '60.0000', 302, '0.0000', NULL, 'SR/0001', NULL, '-10.0000', NULL, NULL, 0, 0, NULL, NULL, '492811cb947974560d846822b9a928dda8eacd2772f289ef87232e8ad440cef7', NULL),
(240, '2021-05-26 11:44:00', '$A/1451', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '9.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '9.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 0, '9.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'cafcb50c152ea5288554e68dda74ee9264b896ff197d18c1f9f4a640feec7371', NULL),
(277, '2021-07-06 11:51:00', '$A/1452', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '2.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8537569497cdd3458dbda052cbbfc2d24aa6e3be7375862275a8435a36224088', NULL),
(295, '2021-07-26 15:18:00', '$A/1453', 12, '0192873492', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 2, 0, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'cd81069084d3900e117de9f2430f2bb3573eb5c10e58fc04cb54dcdf06c912bf', NULL),
(297, '2021-08-01 17:23:00', '$A/1454', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '6.0000', 301, '0.0000', NULL, 'SR/0001', NULL, '-6.0000', NULL, NULL, 0, 0, NULL, NULL, 'fd7bbb5360c4d8c25271c2d9d258cde123f949f07adf4c1387f2d365a9d4476d', NULL),
(301, '2021-08-04 16:02:00', '$A/1454', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', NULL, '-6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-6.0000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-6.0000', NULL, '0.0000', NULL, 'SR/0001', 297, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(302, '2021-08-04 16:04:00', '$A/1450', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-10.0000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-10.0000', NULL, '0.0000', NULL, 'SR/0001', 239, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(319, '2021-09-09 09:15:00', '$A/1455', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', 323, '0.0000', NULL, 'SR/0001', NULL, '-3.0000', NULL, NULL, 0, 0, NULL, NULL, '149c01f66ce10fa6edb1667e30aaaf3a8f773a74c4171665991178b1d9e52c0f', NULL),
(323, '2021-09-09 09:55:00', '$A/1455', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', NULL, '-3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-3.0000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-3.0000', NULL, '0.0000', NULL, 'SR/0001', 319, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(338, '2021-09-27 17:13:00', '$A/1459', 8, 'AB', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'df393505fdd7c82e634fd4aa4b91209394792b787ea9fafbde669ad632d95177', NULL),
(340, '2021-09-27 17:17:00', '$A/1460', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, 27, '2021-09-27 17:18:43', 2, 0, '6.0000', 345, '0.0000', NULL, 'SR/0001', NULL, '-6.0000', NULL, NULL, 0, 0, NULL, NULL, '28953273da9040f0f896b336346730d428fb49225ed804c0faf064c914ae445b', NULL),
(344, '2021-09-28 16:01:00', '$A/1461', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '7.2000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '7.2000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '7.2000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '18de7a5aadc0e774ccc47f3555b7ae204b0f39abf636f9274ae94d842e008e03', NULL),
(345, '2021-09-28 16:05:00', '$A/1460', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-6.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 340, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(348, '2021-10-20 15:01:00', '$A/1462', 8, 'AB', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '92768287e900bab884e205b2386df1fb4da8266e4ae4e7cc062be102bed6e80a', NULL),
(351, '2021-10-23 09:23:00', '$A/1463', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '10.0000', 352, '0.0000', NULL, 'SR/0001', NULL, '-10.0000', NULL, NULL, 0, 0, NULL, NULL, '29757cb6468e994e233dc550fafa0590984265fb7f55c004e1f093fb3bdeb206', NULL),
(352, '2021-10-23 09:24:00', '$A/1463', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-10.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 351, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(353, '2021-10-23 09:25:00', '$A/1464', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '10.0000', 354, '0.0000', NULL, 'SR/0001', NULL, '-10.0000', NULL, NULL, 0, 0, NULL, NULL, '4b1d91d053cb53a25c29866c04e13485c3c94b7a533a0e1f0e71645e47ba2f4b', NULL),
(354, '2021-10-23 09:26:00', '$A/1464', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-10.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-10.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 353, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(355, '2021-10-23 09:28:00', '$A/1465', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '20.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '20.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '20.0000', 356, '0.0000', NULL, 'SR/0001', NULL, '-20.0000', NULL, NULL, 0, 0, NULL, NULL, 'c598fede1c303eaac08844abd32d41a664b707e88d25ce4abaca9dfec604c451', NULL),
(356, '2021-10-23 09:28:00', '$A/1465', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-20.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-20.0000', 'returned', 'pending', NULL, NULL, 27, NULL, NULL, NULL, 0, '0.0000', NULL, '0.0000', NULL, 'SR/0001', 355, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(357, '2021-10-26 09:53:00', '$A/1466', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;Note&lt;&sol;p&gt;', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'ffbcd4b5bdcb0b32952fdfed509fee3a3078aae26f364e19e613613282eb0cd4', NULL),
(360, '2021-10-27 15:48:00', '$A/1467', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'cb01c4b4cd26f460400fb913de9b8678535ad99007e41b681c2963fd9f9c81f7', NULL),
(361, '2021-10-27 15:49:00', '$A/1468', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '9.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '9.0000', 'pending', 'paid', 0, NULL, 27, NULL, NULL, 3, 0, '9.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c051853f5b458f1a6e88b69df13207840adfb7145a1d62f9f471a46fc2b19e89', NULL),
(376, '2021-11-03 11:27:00', '$A/1469', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '20.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '20.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '20.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'cd0ef86b57503c85b90cf46ec1d95ccd7d99c6b8a7dd28631123dc0a29f7eedd', NULL),
(416, '2021-11-08 14:33:00', '$A/1470', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, 27, '2021-11-08 14:34:30', 5, 0, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'fa622620ae251e7ed5815fcfa21da2b98a41249a10f56a55eb35e2545f35b0f4', NULL),
(451, '2021-12-15 17:12:00', '$A/1471', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '6.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'ba1cf2d806ba714a683658ed8026d271bdad5e077b6d43110ddf89cfee31c31b', NULL),
(480, '2021-12-21 15:39:00', '$A/1472', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '8.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'pending', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '263a82bfa9f036fd862804250c90f7554bf6ad9c6246c2258e74dfb68b676a2a', NULL),
(535, '2021-12-23 16:27:00', '$A/1473', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '100.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '100.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '100.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'b7baced72e3b0f9c050e56e50c84a63e4f46910c1414237fa4c549fd8e466942', NULL),
(538, '2021-12-23 16:33:00', '$A/1474', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '100.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '100.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '100.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '6e86390a5664ac578b544b669e9779cf909c4a863fc60cb234060d78e27acab5', NULL),
(563, '2021-12-27 14:26:00', '$A/1475', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '8.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 0, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '023b29454f12eabc897e466640deb272307f898ab6e083107c06d03698694471', NULL),
(564, '2021-12-27 14:30:00', '$A/1476', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '80ba9aea987fd473576c063804720d3cc665393d37ba3701c3c6f831a0923506', NULL),
(568, '2021-12-27 16:50:00', '$A/1477', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', 596, '0.0000', NULL, 'SR/0001', NULL, '-3.0000', NULL, NULL, 0, 0, NULL, NULL, '6998a01f9eb8bdf5bbd67aec810927add427317b30bd70c62d308335408c97b8', NULL),
(596, '2022-01-12 10:08:00', '$A/1477', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;change &lt;br&gt;mind&lt;&sol;p&gt;', NULL, '-3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-3.0000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 0, '-3.0000', NULL, '0.0000', NULL, 'SR/0001', 568, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(619, '2022-01-24 15:27:00', '$A/1478', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '58985be6bd821d3bf4f02730b92aa29798c7abf7226e64908a918f38c0f24070', NULL),
(625, '2022-01-27 14:47:00', '$A/1479', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'cba42b50efa8e4c3d72ae5778e548198a222f8c50ad76a9cc88ac6ed065b9646', NULL),
(626, '2022-01-27 14:48:00', '$A/1480', 13, 'សុខ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a229e252ad302de0e670541d05c9fe667c538e015b3090149c957a88ff38669e', NULL),
(690, '2022-03-20 09:39:00', '$A/1481', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;pay next week&lt;&sol;p&gt;', '', '100.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '11234.0000', '11334.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 40, 0, '4994.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '213906fa166334f98fbd469ec972ceda588030ee58dd1030cfd8c458fac86897', NULL),
(691, '2022-03-20 09:50:00', '$A/1482', 9, '012345678', NULL, 2, 'AnakutDigital Solution', 1, '', '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '0.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 10, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'bed577cb0c9653268ec987f53b59b970d04a685e1a994aeb8d5b55582b9f8316', NULL),
(700, '2022-03-23 16:00:00', '$A/1483', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'pending', 'partial', 0, NULL, 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c2a5bfb38e2029f8d2dbcf81bae44bfcd9a6cf26d000ba9a7a6eea845846f9da', NULL),
(701, '2022-03-23 16:01:00', '$A/1484', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '13.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '13.0000', 'pending', 'paid', 0, NULL, 27, 27, '2022-05-10 09:08:01', 3, 0, '13.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'ea6e275d964608dc2e179796811cfa090d7e687490d54c170cdae52d90664a79', NULL),
(708, '2022-03-25 18:22:00', '$A/1485', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 2, '', '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a042b066cdfc423fe1cfc0eef98cd0faf20cd986ba3b5f8e6755311353a9dd39', NULL),
(724, '2022-04-04 14:09:00', '$A/1486', 30, 'Anakut', NULL, 2, 'AnakutDigital Solution', 1, '', '', '0.3600', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '0.3600', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c4fbf958365af57126ce7145361e56bb71e425928c96d106fd306535c0643540', NULL),
(730, '2022-04-08 15:18:00', '$A/1487', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '5.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'da52a6aeb236cafb55fd3965d174bc5fc8269aa1a1a98e0b14ebf64bb2c994f7', NULL),
(731, '2022-04-21 13:10:00', '$A/1488', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 1, '2022-04-22', 27, NULL, NULL, 1, 0, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a2ab71f9bff7a6d3a77fb2df5e638bb998ae835a30b6b3bac08dcc3b28f00d2a', NULL),
(737, '2022-04-24 10:23:00', '$A/1489', 30, 'Anakut', NULL, 2, 'AnakutDigital Solution', 1, '', '', '2.7000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.7000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 0, '2.7000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '264cedb471fad0209555d09b889a0f826623c3707ba7d4038b0d7ff35992ad48', NULL),
(755, '2022-05-11 10:03:00', '$A/1490', 32, '087554246', NULL, 2, 'AnakutDigital Solution', 1, '', '', '-78.0000', '80.0000', NULL, '80.0000', '0.0000', '0.0000', 3, '-4.6800', '-4.6800', '0.0000', '-82.6800', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 4, 0, '-82.6800', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'fd50f465f73b33294f31ada78cc7150c4cb787b04fca9b75a8caa47ce7046067', NULL),
(756, '2022-05-11 10:10:00', '$A/1491', 32, '087554246', NULL, 2, 'AnakutDigital Solution', 1, '', '', '-19.0000', '20.0000', '20', '40.0000', '20.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-39.0000', 'completed', 'pending', 0, NULL, 27, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '7427bed38dffc4e7ef6d989c80c460a4af6e964cd676f53e8a5d69d95f0a441b', NULL),
(764, '2022-05-30 14:23:00', '009', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 4, '&lt;p&gt;ygyuguigik&lt;&sol;p&gt;', '', '15.0000', '0.0000', '8', '8.0000', '8.0000', '0.0000', 2, '0.7000', '0.7000', '12.0000', '19.7000', 'completed', 'paid', 15, '2022-06-14', 27, NULL, NULL, 1, 0, '19.7000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '938ce2697c230d8e2c39502cbc0595ab6fabd64b793a966caa59ebbcb3992a18', NULL),
(770, '2022-06-07 11:19:13', '$A/0012', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;30000', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 5, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '60e92dcd0bdb62fa6447c2d9f09dbebd51e03c9b41b42ba85853c45d2f4bce51', 'pending'),
(771, '2022-06-07 11:37:35', '$A/0013', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;100&comma; Pay riels&equals;400000', '', '177.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '177.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '177.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '365290e339c4ea8ca0b2dde3447512fbdb5d2a2880d2c06bab6ce7e9855be3ed', 'pending'),
(772, '2022-06-08 15:21:48', '$A/0014', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '10.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '10.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '92a62a861fcf5c6774d13b2cbe28032cd988966d978ca447f3d30f9561af7516', 'pending'),
(773, '2022-06-08 15:22:46', '$A/0015', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;14&period;5&comma; Pay riels&equals;', '', '14.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '14.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '14.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e3f441448d301c786357e9ad389423f11619e4057349b8c252ac62009f8008db', 'pending'),
(774, '2022-06-08 17:13:17', '$A/0016', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '7aa2cb4df8ffe791eb3267204c63fad1b66486a7473dd5ad3076da3c8f97640c', 'pending'),
(775, '2022-06-09 15:59:12', '$A/0017', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '953566867d8d4cad96d561837c4e5c745825aec83f1f2f0f5a25ba3462a75d89', 'pending'),
(776, '2022-06-09 16:01:16', '$A/0018', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;47&period;5&comma; Pay riels&equals;', '', '35.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '35.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 5, 1, '35.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '19c35fd3837564f618cba38e427077da761260cfb8186cfb0f59ee4fafdb9080', 'pending'),
(777, '2022-06-09 17:32:29', '$A/0019', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;17&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '25b9c81815c5b75efbff2722a60a8e1b8e9e92d86f2289f249896814656f8b4e', 'pending'),
(778, '2022-06-10 16:12:18', '$A/0020', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;0&comma; Pay riels&equals;', '', '10.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.5000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 1, 1, '0.3000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '1a93c13c65c281f6f0e91b398d85c4161404217d710faf913b9e6e88d64412ce', 'pending'),
(779, '2022-06-13 14:55:21', '$A/0021', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2500&comma; Pay riels&equals;', '', '2500.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2500.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '62aac75aa99f4b775b828adaaad6fee6f280bb188c9ef6e3903168600bb2b7fa', 'pending'),
(780, '2022-06-14 10:17:38', '$A/0022', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;22&period;8&comma; Pay riels&equals;', '', '22.8000', '1.2000', '0%', '1.2000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '22.8000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '22.8000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'bc8b795cbd369ea73e5e5cec3e2dcfd3345bfc2347247958bc547d1c59bb16b1', 'pending'),
(781, '2022-06-14 11:24:38', '$A/0023', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;5&comma; Pay riels&equals;', '', '5.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '409ae5170ddf6ab37a41a728ecfecdad707a0884b42825861ab1f129b5cd0e6e', 'pending'),
(782, '2022-06-14 14:01:11', '$A/0024', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;17&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '4b960c136d987012d7cd54f401ef9dac05ab5565c56fe9c6d076a6dab62c168b', 'pending'),
(783, '2022-06-14 14:03:08', '$A/0025', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;16&comma; Pay riels&equals;', '', '16.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '16.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '16.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '81ef06be5a6dc81381924fa82ac4367c91ed3b6e4586b40b4627260a1e9d64df', 'pending'),
(784, '2022-06-14 14:05:12', '$A/0026', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;6&period;3&comma; Pay riels&equals;', '', '7.0000', '0.0000', '10%', '0.7000', '0.7000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.3000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '6.3000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '6bc4015d5d450f57563e0221cb50cc2d9d017537f7c9023e1b30e9a6b0ddcc61', 'pending'),
(785, '2022-06-15 15:07:02', '$A/0027', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a3cc7749962439b69714d0e037e255aa520092ee9fa674077f656c7fe64591ec', 'pending'),
(787, '2022-06-16 08:50:10', '$A/0029', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;500&comma; Pay riels&equals;', '', '24.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '24.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '24.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '33221916a5f4848e31c5bbc2ffae772ad71546cfefad9a7c1f126d41fa949c8b', 'pending'),
(788, '2022-06-16 10:35:18', '$A/0030', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 36, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '439e31bace87876a572ad931e26471358b5ca83b9fd41ba39d617a2c6f5f3591', 'pending'),
(789, '2022-06-16 15:05:21', '$A/0031', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '0cfb54d59fbf1e24a4acab1a95ecb1b6ede81052567f1fc5e3e3038cbe1001c2', 'pending'),
(790, '2022-06-16 15:07:01', '$A/0032', 11, 'Dara', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;25&comma; Pay riels&equals;', '', '2.5000', '0.0000', '10%', '0.2500', '0.2500', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.2500', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.2500', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e5a543c8d667adaa30db3fae8ee050f21602db26b38d803198329683df3d16ce', 'pending'),
(791, '2022-06-16 15:24:04', '$A/0033', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;5&period;5&comma; Pay riels&equals;', '', '5.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '5.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b82b236600495927d6d6628d8327133c86ea569fa643dfd420ee5c8940f9b23b', 'pending'),
(792, '2022-06-17 16:01:12', '$A/0034', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;24&comma; Pay riels&equals;', '', '24.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '24.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '24.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '07fa502ab1e0f0b0f9f0e1cec5db9f18abac0502cf468f7f03a2f23a3dc489fd', 'pending'),
(793, '2022-06-17 16:50:57', '$A/0035', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '9934728a9961b045338bb8a07990cba0d57200fc0c2ec2ca9774c97173ca0185', 'pending'),
(794, '2022-06-22 15:16:22', '$A/0036', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;17&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '224817469927970e77d4b5109915ce1a4117c3adda1fffcd144430a4f4fcdbe3', 'pending'),
(795, '2022-04-01 00:00:00', '$A/0037', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;nullPay US&equals;20&comma; Pay riels&equals;&lt;&sol;p&gt;', '', '20.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '20.0000', 'completed', 'paid', 0, NULL, 27, 27, '2022-06-23 09:09:52', 3, 1, '20.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'de729fe79c633ad153169758814a95094a1ee6b266702a5b65aeb0fa775dd8b9', 'pending'),
(796, '2022-06-23 15:04:35', '$A/0038', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;4&period;6&comma; Pay riels&equals;', '', '4.6000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '4.6000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '4.6000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '43e7beaff4fed858b826cea464ebaa58fe547fdf22d28b9eaf8a7fcee45d17f3', 'pending'),
(797, '2022-06-27 09:58:02', '$A/0039', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '14.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '14.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 7, 1, '14.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '00bb0e8a66831a239648186bd23c2525ea190fe9374b69f24a1e4278da7edc2f', 'pending'),
(798, '2022-06-27 15:10:26', '$A/0040', 11, 'Dara', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;5&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 2, 1, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '0a71f2254da924e34eb8e6b9e336b06f17a2f3390f757e73b45774b7c166981b', 'pending'),
(799, '2022-06-27 15:50:00', '$A/0001', 7, 'AnakutDigital Solution', NULL, 2, 'AnakutDigital Solution', 1, '', '', '633.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '633.0000', 'completed', 'due', 0, NULL, 27, 27, '2022-06-27 15:53:36', 5, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '0a161e17627eda792faccd758e4b923bf21e8ff791ccb71bd857212e9f17a35f', NULL),
(800, '2022-06-30 16:18:44', '$A/0041', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;50&comma; Pay riels&equals;', '', '6.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '00f6eef0940d37c957a6427d0859226c6a0fb7852bf52d8a786df902dbf84bb9', 'pending'),
(801, '2022-07-04 13:12:38', '$A/0042', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;29&comma; Pay riels&equals;', '', '29.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '29.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '29.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3f9496bf72d0c726b8e8249a435760979bf9f72df6905790d7544ea5979b0090', 'pending'),
(802, '2022-07-04 13:22:24', '$A/0043', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '30.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '30.5000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 4, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b410e00d90baaedbcf050e4c585dbba40b3117a2df5a3fc55d752b8593b80246', 'pending'),
(803, '2022-07-04 14:25:27', '$A/0044', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '14.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '14.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '14.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '9748f47412c71e8b7c6a0f94e079c0b2ac20f149a148bdc5501da0784b11d5e8', 'pending'),
(804, '2022-07-04 14:29:32', '$A/0045', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '10.8000', '1.2000', '0', '1.2000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.8000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '10.8000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '86667afd90a9914ded095450487513f903d87d1437cec57174381a8b5a8425a3', 'pending'),
(805, '2022-07-04 14:31:59', '$A/0046', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '10.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '10.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'da45f0f8e1cb2824ec812f78ebcb2002a0d5d60d4a9e653488c280873c62cf96', 'pending'),
(806, '2022-07-04 15:55:42', '$A/0047', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 2, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '7eca15b0dfac9eafa134274d5b477d0d6b65be7d6d5c6c5ec64253d899ec1071', 'pending'),
(807, '2022-07-05 08:07:45', '$A/0048', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '19.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '19.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '19.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a35925f707ed56d2c5b0c38ddeac8fd13383a68835c7cbf6b560f67da8dbe864', 'pending'),
(808, '2022-07-05 08:26:00', '14891549', 15, 'sophea', NULL, 2, 'AnakutDigital Solution', 1, '', '', '324.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '324.0000', 'pending', 'pending', 15, '2022-07-20', 27, NULL, NULL, 27, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8b9cce5f2ca8124ca8a4a0afee788b78de810b2b4742628f203227c082693331', NULL),
(809, '2022-07-05 10:08:29', '$A/0049', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;100&comma; Pay riels&equals;', '', '58.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '58.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 7, 1, '58.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '7d1ed1e812ba931174ccecb43c06a2341832fd976bc16dd8fc341aee4b26cc33', 'pending'),
(810, '2022-07-05 11:19:58', '$A/0050', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;100&comma; Pay riels&equals;', '', '56.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '56.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 7, 1, '56.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'fa28616af8e52b5c736cda7a3cdd7f1c54f4ffec4112ccef412466dc3c9b8c00', 'pending'),
(811, '2022-07-05 15:13:13', '$A/0051', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '25.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '25.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 3, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e6426b250fc50a9191b17f85a9efb600f098823b77ed2249206dd6bb054abe4a', 'pending'),
(812, '2022-07-07 14:44:49', '$A/0052', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;1&comma; Pay riels&equals;', '', '1.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '1.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '5e68adbfdbfa94a09ddb69a373213f02670b0212ccbbb932b1db8721f1162102', 'pending');
INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `product_cost`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `sus_status`) VALUES
(813, '2022-07-08 09:21:20', '$A/0053', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;8&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '58ac053da12931d9b958c42039345e604d56897b6ba81a7898a59114bc5539f3', 'pending'),
(814, '2022-07-08 09:22:36', '$A/0054', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;50000', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a6dd51949db7e84945f919266177c8e0ecd06d10caf20588868cfe5f6d94e6f8', 'pending'),
(815, '2022-07-08 10:02:20', '$A/0055', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '112c3715416fa6569cd2d4bf9dbf08e4f0fdfbecb1e9377407c5c1cb9e6126be', 'pending'),
(816, '2022-07-08 10:04:19', '$A/0056', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;15000&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b074be6bc8e7328e5b86f5d41989d4e322b83cbd96b0b0fc60a4a036524119a2', 'pending'),
(817, '2022-07-08 10:11:03', '$A/0057', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '10.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '10.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e553040db72b20f2502e11bbe9bec690f21c4c0732f54422415e9de10e24ee6e', 'pending'),
(818, '2022-07-08 10:27:32', '$A/0058', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b18cc53d8a66cfc7d6daf5292057b527abd800b8869007aa484c79b4577d9437', 'pending'),
(819, '2022-07-08 12:58:24', '$A/0059', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '309598ece980c898d92220a465c8666f35c8c9888afadd26d72f3fbee9bcdc99', 'pending'),
(820, '2022-07-08 12:59:14', '$A/0060', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 45, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '343a27c90593b2394ced2f4d1ee3882caf69b3ab161164248b89ebfc7608e064', 'pending'),
(821, '2022-07-08 13:01:58', '$A/0061', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;30&comma; Pay riels&equals;', '', '10.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '10.0000', 'completed', 'paid', 0, NULL, 45, NULL, NULL, 1, 1, '10.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '0d8259f105414f42150ff2d046cf0e0c1a1054732e73fbe3f4b792e5a8814c79', 'pending'),
(822, '2022-07-08 13:16:44', '$A/0062', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '618812a82f5513c73999080688ee7841c3215e180408d2f50b04966ddc16f713', 'pending'),
(823, '2022-07-08 14:15:02', '$A/0063', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '6ee16cac81d8e64fcc679ae76343d5a78c51199e16c43fc601cdff5159b5fada', 'pending'),
(824, '2022-07-08 14:15:44', '$A/0064', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'd74615e120876b2cb8f04d3464a4514c7d9200c19e8ab87ae79197ce3528f8af', 'pending'),
(825, '2022-07-08 14:17:19', '$A/0065', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '434483bfad8f1dbfdf25685cba7422a76278e7cf25c3440e537ab30de9129803', 'pending'),
(826, '2022-07-08 14:19:09', '$A/0066', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '1436acc522477c441f8c1037cad328d36c99c954be0bbb1abc724287d7e672d0', 'pending'),
(827, '2022-07-08 14:19:19', '$A/0067', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '40e79c8d54bd04b5be6c8acb19843c3399928f2d89dc7eb89d717de10955bb90', 'pending'),
(828, '2022-07-09 10:35:36', '$A/0068', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;24&comma; Pay riels&equals;', '', '24.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '24.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '24.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '02a2dab196886078d605a0c57bdb7454df52aa0201ddcdd240cf3d43f314eded', 'pending'),
(829, '2022-07-11 10:21:03', '$A/0069', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;26&period;5&comma; Pay riels&equals;', '', '26.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '26.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '26.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '25bc4a2f342984b95445ea57011c306939b13c4b3b360d4d79c97fa35ba6a744', 'pending'),
(830, '2022-07-11 10:21:22', '$A/0070', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;14&period;5&comma; Pay riels&equals;', '', '14.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '14.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '14.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '80a8607dafdcb23ce81403e75a0bf0e7cd22d06c7feeefb2488c1b03252b84a1', 'pending'),
(831, '2022-07-11 15:10:19', '$A/0071', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;50&comma; Pay riels&equals;0', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3e80d7cfdfd01a4dc60b048842b1877b2260122134987c7bb9be1eb8e3202151', 'pending'),
(832, '2022-07-12 14:14:52', '$A/0072', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;14&period;5&comma; Pay riels&equals;', '', '14.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '14.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '14.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '99eae609c989ee4c868844169027278afebaa23f15786d2ed22ab7d4167231f0', 'pending'),
(833, '2022-07-12 14:15:45', '$A/0073', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 5, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '806a8d3a80beb04ab004caa8c65e24f5732f16a73ae7396f217a0a4ed716a1b1', 'pending'),
(834, '2022-07-12 14:18:42', '$A/0074', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '3.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a11bf6d1a307ba0d8d652203a46de0a7bc2f795251c4168fdd0f456a3cd7331c', 'pending'),
(835, '2022-07-13 17:23:53', '$A/0075', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '58813dd46c32bc182d8aa89d4e138cd2efeb07dccbb41ca5c95a0b9ab8488b6b', 'pending'),
(836, '2022-07-13 17:31:05', '$A/0076', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;15&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'dc136f43676e653b3437efb48e7741ed3bbbbb9fcf436f968f291b148052c2cb', 'pending'),
(837, '2022-07-14 08:23:48', '$A/0077', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;100&comma; Pay riels&equals;', '', '20.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '20.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '20.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'ba02fa3b04285102342ad4a931620924c85f17d4f73681c4ed2b90de3bc8f4ab', 'pending'),
(838, '2022-07-14 09:00:59', '$A/0078', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '5b9051d083674fd79887b073d5c40de897214fcf2ae3dec056979b01c4f78481', 'pending'),
(839, '2022-07-14 09:10:30', '$A/0079', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '52eae1b3064cff97596d60ec0de74521e95bcdd90be9341d389afe2d189917a5', 'pending'),
(840, '2022-07-15 09:59:34', '$A/0080', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2500&comma; Pay riels&equals;', '', '2500.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2500.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 1, 1, '2501.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'e17e014fc3f1cb90b8900733e3fcb8f05b0f2820a8b68aed127a290f40b47999', 'pending'),
(841, '2022-07-15 11:52:07', '$A/0081', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;8&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b82a9bbad67631b8ca281554e440473ab5741efdb61fd46f71ff73ce371b5845', 'pending'),
(842, '2022-07-15 12:03:44', '$A/0082', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '78037cd739152a7cd751a31ba33c871533b084415c7d669a812ca0146c0d3215', 'pending'),
(843, '2022-07-16 10:06:45', '$A/0083', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;1000&comma; Pay riels&equals;', '', '1000.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1000.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '1000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'd4b2a6e97bfe302834e2ab139967087f4ee5b652c7b9aa68822ea2b81f60bb77', 'pending'),
(844, '2022-07-16 11:14:17', '$A/0084', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '5a502372c3f858b05ac5eb87ba228674cc05bbcefa1f017cd9e06f09343ae603', 'pending'),
(845, '2022-07-16 11:15:14', '$A/0085', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '700ed36261d83ca147961d898286518b25ef25a5ee11491bbe9af96936e5dbe5', 'pending'),
(846, '2022-07-16 11:24:01', '$A/0086', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3df146abb793c10a400cfb96c88b5864bc5fc947d3e3fea604399713a5bf9b96', 'pending'),
(847, '2022-07-16 11:30:08', '$A/0087', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '385a154ac84a18ec2ab9f005d224f548db36344b634d430f3dad2ca794208fa1', 'pending'),
(848, '2022-07-17 12:33:19', '$A/0088', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;4&comma; Pay riels&equals;', '', '4.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '4.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '4.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '6e6afe763d2268402a359aa4d19de6377e7235597706f2d7521ce4735946830f', 'pending'),
(849, '2022-07-17 12:36:21', '$A/0089', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;1&period;8&comma; Pay riels&equals;', '', '1.8000', '0.2000', '0', '0.2000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1.8000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '1.8000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3de533f45dbbb58249385975ca136c99c637e5fe7f97e3a4a25aeb3f4ce89fc6', 'pending'),
(853, '2022-07-19 16:50:00', '$A/0093', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '8714410403867f2a990faf8110a846b799c61ffea3f58cda6128ff31a0f27241', 'pending'),
(854, '2022-07-19 20:22:12', '$A/0094', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;17&comma; Pay riels&equals;', '', '17.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3d65fb3105f5469eb62eeaebdd2f252ff14812faacb290fd75510d15d31d908a', 'pending'),
(855, '2022-07-19 20:23:08', '$A/0095', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;12&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '12.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b7fda7ae73563bf1fe56f3680dab55b45298dabd71decb83412f07d2bb6fc0b2', 'pending'),
(856, '2022-07-20 11:51:00', '$A/0096', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '&lt;p&gt;nullPay US&equals;17&comma; Pay riels&equals;&lt;&sol;p&gt;', '', '17.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '17.0000', 'completed', 'paid', 0, NULL, 27, 27, '2022-07-20 13:19:15', 2, 1, '17.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'c6233d574e2536761b326506843d4509517150f661b4f156e17edb1de4ccdbe5', 'pending'),
(857, '2022-07-20 13:19:55', '$A/0097', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;6&comma; Pay riels&equals;', '', '12.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 1, 1, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3f668ac65fc1ebc38f79e36b09ce44065b94059fecaedcf33a61d17b9690d229', 'pending'),
(858, '2022-07-20 13:21:46', '$A/0098', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&comma; Pay riels&equals;', '', '5.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 1, 1, '2.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'f9243e0cc7d260f477e84650ba50105b8f101243730087cc787c4429fc3281e3', 'pending'),
(860, '2022-07-20 13:31:43', '$A/0100', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;4&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '2f34ff7acc3b698cbe93c675a9015baeee00c56fbcf4d836a134cf37fe7d1222', 'pending'),
(861, '2022-07-20 16:55:42', '$A/0101', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;4&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 2, 1, '4.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '852bf99dda7d2e6fd88171de6a7d8cf855522ab6b4058975bc7c1cf76489376e', 'pending'),
(862, '2022-07-20 17:00:04', '$A/0102', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;4&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'partial', 0, NULL, 27, NULL, NULL, 2, 1, '4.0000', 863, '0.0000', NULL, 'SR/0001', NULL, '-8.0000', '0.0000', NULL, 0, 0, NULL, NULL, '37ec8c1760c21fc7e37173299a19975fb4385f14c98131cf05beb5288ef79371', 'pending'),
(863, '2022-07-20 23:08:00', '$A/0102', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, '', NULL, '-8.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-8.0000', 'returned', 'paid', NULL, NULL, 27, NULL, NULL, NULL, 1, '-8.0000', NULL, '0.0000', NULL, 'SR/0001', 862, '0.0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL),
(864, '2022-07-21 08:36:10', '$A/0103', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;20&comma; Pay riels&equals;', '', '16.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '16.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '16.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '3b3567fb4a38c7445a6701c03641ecbec3f106d68acef767e3068288cd605916', 'pending'),
(865, '2022-07-21 08:41:30', '$A/0104', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;10&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '44f8f765770834070044347fa2e9f605199880eaafe6d061c97662037831fe8e', 'pending'),
(866, '2022-07-21 08:46:53', '$A/0105', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;2&period;5&comma; Pay riels&equals;', '', '2.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2.5000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '2.5000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b3da3c44a0e36e1d6f31b5e41eb1f16bd34eb56fd8e852235bb7767c644f2221', 'pending'),
(867, '2022-07-21 13:11:34', '$A/0106', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '8.5000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.5000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 3, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '316ec16dc87ce39f2770e57f236563b297ad921f5aa0091735107011a8caaea3', 'pending'),
(868, '2022-07-26 12:36:21', '$A/0107', 9, 'Dara 123', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;8&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '9874012c126c5a7da5c656ba3293e4b2aea948bedc7bd68bbe381419fd797ba0', 'pending'),
(869, '2022-07-28 14:06:43', '$A/0108', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;24&comma; Pay riels&equals;', '', '24.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '24.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '24.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'b3888dd91482a0ef891d35410f41563bc6ffeede12958c1c47f654aa8d854c09', 'pending'),
(870, '2022-07-29 13:36:27', '$A/0109', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '-3.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '-3.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, -1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a1bcfe0fc7ae2f19208cb2c9b077e1edbc9e264ce9d477cd32f64ff3742f2580', 'pending'),
(871, '2022-08-03 09:00:57', '$A/0110', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '5.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '6d2d94925241e03ca6a3642130e9e233f14713ece7cf9ae87fef293d38e40a56', 'pending'),
(872, '2022-08-03 09:08:32', '$A/0111', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;', '', '5.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '5dab879ca8ce30b5121a0f0e12ba6a5f0ee18022df56af0a7cef0c88df039ff2', 'pending'),
(873, '2022-08-09 09:29:57', '$A/0112', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;8&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '8ef85aa90ca33a422d33da74ae8cfed5ee9731a3f09cc3ff59e8f8568cf88c9f', 'pending'),
(874, '2022-08-27 13:23:45', '$A/0113', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;9&comma; Pay riels&equals;', '', '9.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '9.0000', 'completed', 'paid', 0, NULL, 48, NULL, NULL, 3, 1, '9.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '2d2865942ca72bf7f41075d85e3c8a7ee6bf9888c3993eb37876ca7144d4c1b9', 'pending'),
(875, '2022-08-27 13:36:38', '$A/0114', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;6&comma; Pay riels&equals;', '', '6.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'paid', 0, NULL, 48, NULL, NULL, 2, 1, '6.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'a62fe08253f207e90a9e6dfed35ac471325a9b62e554f4a1ff76eebbd0b7ead4', 'pending'),
(876, '2022-08-27 13:44:46', '$A/0115', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;&comma; Pay riels&equals;10', '', '9.0000', '0.0000', '10%', '0.9000', '0.9000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.1000', 'completed', 'paid', 0, NULL, 48, NULL, NULL, 3, 1, '8.1000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '4d56b9fcc3d54d018ab2ae2b87f8a5de40398163ffe1b82d3e23de6bdd0f91bd', 'pending'),
(877, '2022-08-27 13:54:52', '$A/0116', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;8&comma; Pay riels&equals;', '', '8.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8.0000', 'completed', 'paid', 0, NULL, 48, NULL, NULL, 2, 1, '8.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '82b150cabf9992ee1961550dee64c37b697d79bca2c639b624692be594aa38e9', 'pending'),
(878, '2022-08-29 11:42:19', '$A/0117', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;21&comma; Pay riels&equals;', '', '11.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '11.0000', 'completed', 'paid', 0, NULL, 48, NULL, NULL, 3, 1, '11.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '5b9c0a18fd4e0f41e1ae5f1a3a58ac3f7df323ae06f4d3a165290ada02dc7058', 'pending'),
(879, '2022-09-01 15:19:01', '$A/0118', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;11&comma; Pay riels&equals;', '', '11.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '11.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 3, 1, '11.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '9240361b24e2d2d88826e54eee6c37ed870a85531ee7a80a1bce686d0a020262', 'pending'),
(880, '2022-09-02 02:06:02', '$A/0119', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;5&comma; Pay riels&equals;', '', '5.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5.0000', 'completed', 'paid', 0, NULL, 27, NULL, NULL, 1, 1, '5.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, '168eb6ca2a3dfba79f38d44863adc2a5b23482ac9baf54a33930568ae9006aef', 'pending'),
(881, '2024-05-06 09:46:23', '$A/0120', 1, 'អតិថិជនទូទៅ', NULL, 2, 'AnakutDigital Solution', 1, 'nullPay US&equals;0&comma; Pay riels&equals;', '', '6.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '6.0000', 'completed', 'due', 0, NULL, 27, NULL, NULL, 2, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, 0, 0, NULL, NULL, 'aca548c37ca2a5cf7953ffbc8512bd89c732c312b00db0e19215df187a483ee8', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sma_saleunitprice`
--

DROP TABLE IF EXISTS `sma_saleunitprice`;
CREATE TABLE IF NOT EXISTS `sma_saleunitprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sale_unitname` varchar(54) DEFAULT NULL,
  `sale_unitprice` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_saleunitprice`
--

INSERT INTO `sma_saleunitprice` (`id`, `product_id`, `sale_unitname`, `sale_unitprice`) VALUES
(11, 177, 'យូ6', '10.0000'),
(14, 25, 'ដុំ(ខោរអាវ)', '10.0000'),
(104, 1, 'ដុំ(ខោរអាវ)', '14.0000'),
(103, 1, 'ដុំ(ខោរអាវ)', '14.0000'),
(19, 26, 'លក់ដុំX4', '12.0000'),
(20, 28, 'រ៉ូបX4', '12.0000'),
(21, 27, 'រ៉ូបX4', '20.0000'),
(22, 29, 'លក់ដុំX4', '12.0000'),
(23, 44, 'លក់ដុំX10គូ', '0.0000'),
(24, 109, 'លក់x5', '0.0000'),
(25, 147, 'លក់ដុំX3', '0.0000'),
(26, 147, 'លក់ដុំX4', '0.0000'),
(27, 147, 'លក់ដុំX5', '0.0000'),
(32, 145, 'លក់ដុំX4', '0.0000'),
(34, 158, 'លក់x5', '0.0000'),
(35, 217, 'លក់ដុំX3', '0.0000'),
(36, 217, 'លក់ដុំX4', '0.0000'),
(37, 217, 'លក់ដុំX5', '0.0000'),
(38, 218, 'លក់ដុំX4', '0.0000'),
(50, 220, 'លក់ដុំX5', '0.0000'),
(49, 220, 'លក់ដុំX4', '0.0000'),
(48, 220, 'លក់ដុំX3', '0.0000'),
(51, 221, 'លក់ដុំX3', '0.0000'),
(52, 221, 'លក់ដុំX4', '0.0000'),
(53, 221, 'លក់ដុំX5', '0.0000'),
(54, 222, 'លក់ដុំX3', '0.0000'),
(55, 222, 'លក់ដុំX4', '0.0000'),
(56, 222, 'លក់ដុំX5', '0.0000'),
(57, 223, 'លក់x5', '0.0000'),
(58, 224, 'លក់ដុំX3', '0.0000'),
(59, 224, 'លក់ដុំX4', '0.0000'),
(60, 224, 'លក់ដុំX5', '0.0000'),
(61, 225, 'លក់ដុំX10គូ', '0.0000'),
(62, 225, 'លក់ដុំX3', '0.0000'),
(63, 225, 'លក់ដុំX4', '0.0000'),
(64, 225, 'លក់ដុំX5', '0.0000'),
(65, 226, 'លក់ដុំX3', '0.0000'),
(66, 226, 'លក់ដុំX4', '0.0000'),
(67, 226, 'លក់ដុំX5', '0.0000'),
(68, 228, 'លក់ដុំX10គូ', '0.0000'),
(69, 235, 'លក់ដុំX10គូ', '0.0000'),
(70, 236, 'រ៉ូបX4', '0.0000'),
(71, 238, 'លក់ដុំX3', '0.0000'),
(72, 238, 'លក់ដុំX4', '0.0000'),
(73, 238, 'លក់ដុំX5', '0.0000'),
(139, 239, 'លក់ដុំX3', '0.0000'),
(138, 239, 'លក់ដុំX4', '0.0000'),
(137, 239, 'លក់ដុំX5', '0.0000'),
(85, 240, 'លក់ដុំX5', '0.0000'),
(84, 240, 'លក់ដុំX4', '0.0000'),
(83, 240, 'លក់ដុំX3', '0.0000'),
(86, 241, 'លក់x5', '0.0000'),
(87, 242, 'លក់ដុំX3', '0.0000'),
(88, 242, 'លក់ដុំX4', '0.0000'),
(89, 242, 'លក់ដុំX5', '0.0000'),
(90, 247, 'លក់ដុំX10គូ', '0.0000'),
(91, 247, 'លក់ដុំX3', '0.0000'),
(92, 247, 'លក់ដុំX4', '0.0000'),
(93, 247, 'លក់ដុំX5', '0.0000'),
(94, 249, 'លក់ដុំX10គូ', '0.0000'),
(95, 250, 'លក់ដុំX10គូ', '0.0000'),
(96, 251, 'លក់ដុំX3', '0.0000'),
(97, 251, 'លក់ដុំX4', '0.0000'),
(98, 251, 'លក់ដុំX5', '0.0000'),
(99, 252, 'លក់ដុំX3', '0.0000'),
(100, 252, 'លក់ដុំX4', '0.0000'),
(101, 252, 'លក់ដុំX5', '0.0000'),
(140, 253, 'លក់ដុំX10គូ', '0.0000'),
(109, 385, 'KG', '1.0000'),
(108, 385, 'grain', '1.0000'),
(110, 407, 'KG', '0.0000'),
(115, 420, 'KG', '6.0000'),
(170, 422, 'Case', '20.0000'),
(120, 428, 'collect', '9.0000'),
(121, 429, 'កញ្ចប់', '0.0000'),
(122, 429, 'កេស', '0.0000'),
(126, 430, 'ប្រអប់', '4.5000'),
(125, 430, 'កញ្ចប់', '1.0000'),
(128, 431, 'Case', '0.0000'),
(132, 432, 'កំប៉ុង', '1.5000'),
(135, 433, 'collect', '0.0000'),
(141, 435, 'Case', '0.0000'),
(151, 436, 'Case', '20.0000'),
(144, 442, 'collect', '0.0000'),
(197, 379, 'កេស', '5.0000'),
(196, 379, 'យួរ', '3.0000'),
(152, 436, 'Case', '20.0000'),
(157, 227, 'កេស(12)', '50.0000'),
(156, 227, 'កេស(12)', '50.0000'),
(158, 444, 'Case', '0.0000'),
(159, 444, 'យួរ', '0.0000'),
(160, 445, 'Case', '0.0000'),
(161, 446, 'កំប៉ុង', '0.0000'),
(162, 447, 'collect', '0.0000'),
(163, 483, 'កំប៉ុង', '0.0000'),
(164, 484, 'កេស', '0.0000'),
(165, 484, 'កេស(12)', '0.0000'),
(166, 484, 'កំប៉ុង', '0.0000'),
(167, 485, 'យួរ', '0.0000'),
(168, 486, 'កេស', '0.0000'),
(169, 486, 'កេស(12)', '0.0000'),
(171, 491, 'កំប៉ុង', '0.0000'),
(172, 492, 'កំប៉ុង', '0.0000'),
(173, 493, 'កំប៉ុង', '0.0000'),
(182, 494, 'កំប៉ុង', '2.2000'),
(193, 497, 'យួរ', '0.5000'),
(190, 498, 'ប្រអប់(12)', '0.0000'),
(192, 499, 'ប្រអប់(12)', '1.2500'),
(194, 500, 'collect', '0.0000'),
(195, 502, 'collect', '0.0000'),
(200, 503, 'កំប៉ុង', '0.0000'),
(201, 504, 'set', '0.0000'),
(279, 505, '1យួរ6', '6.0000'),
(204, 507, 'កេស', '15.0000'),
(205, 507, 'កេស(12)', '23.0000'),
(207, 508, 'កំប៉ុង', '0.0000'),
(208, 512, 'កំប៉ុង', '0.0000'),
(209, 513, 'Case', '0.0000'),
(221, 506, 'ដប', '0.0000'),
(213, 515, 'ដប', '16000.0000'),
(216, 516, 'ដប', '0.0000'),
(217, 517, 'ដប', '0.0000'),
(220, 506, 'កំប៉ុង', '0.0000'),
(222, 519, 'ដប', '1.0000'),
(224, 522, 'ដប', '1.0000'),
(225, 522, '1យូរ3', '3.0000'),
(226, 522, '1យូរ6', '6.0000'),
(278, 505, '1យួរ4', '4.0000'),
(277, 505, '1យូរ3', '3.0000'),
(276, 505, 'យួរ', '1.0000'),
(246, 523, '1កេះ', '58.0000'),
(245, 523, '1យួរ6', '15.0000'),
(244, 523, '1យួរ4', '10.0000'),
(243, 523, '1យូរ3', '7.0000'),
(247, 524, '1យូរ3', '7500.0000'),
(248, 524, '1យួរ4', '10000.0000'),
(249, 524, '1យួរ6', '15000.0000'),
(250, 524, '1កេះ', '60000.0000'),
(251, 524, 'កន្លះកេះ', '30000.0000'),
(252, 525, '1យូរ3', '7500.0000'),
(253, 525, '1យួរ4', '10000.0000'),
(254, 525, '1យួរ6', '15000.0000'),
(255, 525, '1កេះ', '60000.0000'),
(256, 525, 'កន្លះកេះ', '30000.0000'),
(283, 526, '1កេះ', '60.0000'),
(282, 526, '1យួរ6', '15.0000'),
(281, 526, '1យួរ4', '10.0000'),
(280, 526, '1យូរ3', '7.0000'),
(275, 527, '1យូរ3', '7.0000'),
(274, 527, '1យួរ4', '10.0000'),
(273, 527, '1យួរ6', '15.0000'),
(272, 527, '1កេះ', '60.0000'),
(271, 527, 'កន្លះកេះ', '30.0000'),
(284, 529, '1កេះ', '90.0000'),
(285, 530, '1យូរ3', '0.0000'),
(286, 530, '1យួរ4', '0.0000'),
(287, 530, '1យួរ6', '0.0000'),
(288, 530, '1កេះ', '0.0000'),
(289, 530, 'កន្លះកេះ', '0.0000'),
(290, 530, 'ឡូ', '0.0000'),
(291, 532, '1យូរ3', '0.0000'),
(292, 532, '1យួរ4', '0.0000'),
(293, 532, '1យួរ6', '0.0000'),
(294, 532, '1កេះ', '0.0000'),
(295, 532, 'កន្លះកេះ', '0.0000'),
(296, 532, 'ឡូ', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_combo_items`
--

DROP TABLE IF EXISTS `sma_sale_combo_items`;
CREATE TABLE IF NOT EXISTS `sma_sale_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `combo_name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `combo_cost` float DEFAULT NULL,
  `combo_code` varchar(11) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sma_sale_combo_items`
--

INSERT INTO `sma_sale_combo_items` (`id`, `product_id`, `combo_name`, `quantity`, `combo_cost`, `combo_code`, `date`, `sale_id`) VALUES
(18, 2750, 'ខ្មៅដៃឈើ​ Deli-U508', 50, 0.05, 'u508', '2022-02-18', 163),
(19, 2925, 'ហ្វឺតCD FO-PM07 ខៀវ', 12, 0.25, '89350018743', '2022-02-21', 176),
(22, 3248, 'ក្រដាសរ៉ាម Smart 70g', 5, 2.4, '88519600049', '2022-03-23', 237),
(23, 2925, 'ហ្វឺតCD FO-PM07 ខៀវ', 12, 0.25, '89350018743', '2022-03-23', 240);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

DROP TABLE IF EXISTS `sma_sale_items`;
CREATE TABLE IF NOT EXISTS `sma_sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `sdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `invoice_dis` varchar(55) DEFAULT '0',
  `item_invoice_dis` decimal(55,0) DEFAULT '0',
  `product_cost` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  KEY `product_id` (`product_id`),
  KEY `product_id_2` (`product_id`,`sale_id`),
  KEY `sale_id_2` (`sale_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1628 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `sdate`, `invoice_dis`, `item_invoice_dis`, `product_cost`) VALUES
(75, 34, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2020-12-06 15:22:00', NULL, NULL, NULL),
(76, 34, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2020-12-06 15:22:00', NULL, NULL, NULL),
(77, 34, 231, 'Bacon Onion', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2020-12-06 15:22:00', NULL, NULL, NULL),
(78, 35, 230, 'Bake Ham', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2020-12-06 15:28:00', NULL, NULL, NULL),
(79, 35, 235, 'Ham and Cheese Onion 4', 'Ham and Cheese Onion 3', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2020-12-06 15:28:00', NULL, NULL, NULL),
(123, 59, 384, '53670579', 'Apple', 'standard', NULL, '8.0000', '8.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '16.0000', '', '8.0000', NULL, 27, 'kg', '2.0000', NULL, '2020-12-17 08:58:00', NULL, NULL, NULL),
(219, 102, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '6.0000', '', '3.0000', NULL, 28, '1', '2.0000', NULL, '2020-12-29 15:40:00', NULL, NULL, NULL),
(240, 110, 288, 'Hot espresso (Small)', 'Hot espresso', 'standard', NULL, '1.8800', '1.8800', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '1.8800', '', '1.8800', NULL, 30, 'Small Cup', '1.0000', NULL, '2020-12-29 16:02:00', NULL, NULL, NULL),
(287, 116, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, NULL, '0', '0', NULL),
(317, 146, 288, 'Hot espresso (Small)', 'Hot espresso', 'standard', NULL, '1.8800', '1.8800', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.7600', '', '1.8800', NULL, 30, 'Small Cup', '2.0000', NULL, '2021-01-13 12:13:00', NULL, NULL, NULL),
(319, 148, 368, 'Candle Number (1Box*10Pcs)', 'Candle Number (1Box*10Pcs)', 'standard', NULL, '0.5700', '0.5700', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.7000', '', '0.5800', NULL, 26, 'Piece', '10.0000', NULL, '2021-01-13 12:18:00', NULL, NULL, NULL),
(323, 152, 406, '04343543', 'Travel set Bamboo case', 'standard', NULL, '4.0000', '4.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '4.0000', '', '4.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-14 15:51:00', NULL, NULL, NULL),
(375, 163, 407, '855', 'pig', 'standard', NULL, '1.0000', '1.0000', '50.0000', 1, '0.0000', NULL, '', '0', '0.0000', '50.0000', '', '1.0000', NULL, 34, 'G', '50.0000', NULL, NULL, '0', '0', NULL),
(378, 166, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-19 09:35:00', NULL, NULL, NULL),
(379, 166, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-19 09:35:00', NULL, NULL, NULL),
(394, 175, 406, '04343543', 'Travel set Bamboo case', 'standard', NULL, '4.0000', '4.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-4.0000', '', '4.0000', 323, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(395, 176, 288, 'Hot espresso (Small)', 'Hot espresso', 'standard', NULL, '1.8800', '1.8800', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-1.8800', '', '1.8800', 317, 30, 'Small Cup', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(396, 177, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 378, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(399, 180, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', '15.0000', '', '3.0000', NULL, 28, '1', '5.0000', NULL, '2021-01-26 14:44:00', NULL, NULL, NULL),
(400, 180, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '7.0000', 1, '0.0000', NULL, '', '0', '0.0000', '21.0000', '', '3.0000', NULL, 28, '1', '7.0000', NULL, '2021-01-26 14:44:00', NULL, NULL, NULL),
(401, 180, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-26 14:44:00', NULL, NULL, NULL),
(402, 181, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '-2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-6.0000', '', '3.0000', 400, 28, '1', '-2.0000', NULL, NULL, NULL, NULL, NULL),
(403, 181, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 401, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(416, 190, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-28 14:41:00', '10%', '0', NULL),
(417, 190, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-01-28 14:41:00', '10%', '0', NULL),
(422, 193, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', 0, '4.0000', '4.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '8.0000', '', '4.0000', NULL, 28, '1', '2.0000', NULL, '2021-01-29 08:44:00', NULL, NULL, NULL),
(427, 196, 4294967295, '0001', 'Gift Card', 'manual', 0, '100.0000', '100.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '100.0000', '', '100.0000', NULL, NULL, NULL, '1.0000', NULL, '2021-02-05 09:15:00', NULL, NULL, NULL),
(429, 198, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-02-05 09:24:00', NULL, NULL, NULL),
(430, 199, 227, 'Almond Doughnut', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-02-05 11:21:00', NULL, NULL, NULL),
(472, 237, 419, 'C000001', 'អាវ coat', 'standard', 0, '7.2000', '7.2000', '5.0000', 1, '0.0000', NULL, '', '10%', '4.0000', '36.0000', '', '8.0000', NULL, 36, 'PCS', '5.0000', NULL, '2021-05-25 14:07:00', NULL, NULL, NULL),
(473, 238, 419, 'C000001', 'អាវ coat', 'standard', 0, '7.2000', '7.2000', '-1.0000', 1, '0.0000', NULL, '', '10%', '-0.8000', '-7.2000', '', '8.0000', 472, 36, 'PCS', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(474, 239, 419, 'C000001', 'អាវ coat', 'standard', NULL, '10.0000', '10.0000', '6.0000', 1, '0.0000', NULL, '', '0', '0.0000', '60.0000', '', '10.0000', NULL, 36, 'PCS', '6.0000', NULL, '2021-05-25 14:29:00', NULL, NULL, NULL),
(475, 240, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-05-26 11:44:00', NULL, NULL, NULL),
(476, 240, 237, 'Cheese Stick', 'Cheese Stick', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-05-26 11:44:00', NULL, NULL, NULL),
(477, 240, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-05-26 11:44:00', NULL, NULL, NULL),
(544, 277, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-07-06 11:51:00', NULL, NULL, NULL),
(577, 295, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-07-26 15:18:00', NULL, NULL, NULL),
(578, 295, 234, 'Green Onion', 'Green Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-07-26 15:18:00', NULL, NULL, NULL),
(583, 297, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-08-01 17:23:00', NULL, NULL, NULL),
(584, 297, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-08-01 17:23:00', NULL, NULL, NULL),
(592, 301, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 584, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(593, 301, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 583, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(594, 302, 419, 'C000001', 'អាវ coat', 'standard', NULL, '10.0000', '10.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-10.0000', '', '10.0000', 474, 36, 'PCS', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(622, 319, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-09-09 09:15:00', NULL, NULL, NULL),
(628, 323, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 622, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(656, 338, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-09-27 17:13:00', NULL, NULL, NULL),
(662, 340, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, NULL, '0', '0', NULL),
(663, 340, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, NULL, '0', '0', NULL),
(667, 344, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.6000', '3.6000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.6000', '', '3.6000', NULL, 28, '1', '1.0000', NULL, '2021-09-28 16:01:00', NULL, NULL, NULL),
(668, 344, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.6000', '3.6000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.6000', '', '3.6000', NULL, 28, '1', '1.0000', NULL, '2021-09-28 16:01:00', NULL, NULL, NULL),
(669, 345, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 663, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(670, 345, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 662, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(673, 348, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-20 15:01:00', NULL, NULL, NULL),
(674, 348, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-20 15:01:00', NULL, NULL, NULL),
(682, 351, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, 25, 'Can', '1.0000', NULL, '2021-10-23 09:23:00', NULL, NULL, NULL),
(683, 352, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-10.0000', '', '10.0000', 682, 25, 'Can', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(684, 353, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, 25, 'Can', '1.0000', NULL, '2021-10-23 09:25:00', NULL, NULL, NULL),
(685, 354, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-10.0000', '', '10.0000', 684, 25, 'Can', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(686, 355, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '20.0000', '', '10.0000', NULL, 25, 'Can', '2.0000', NULL, '2021-10-23 09:28:00', NULL, NULL, NULL),
(687, 356, 436, '00002', 'test', 'standard', 8, '10.0000', '10.0000', '-2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-20.0000', '', '10.0000', 686, 25, 'Can', '-2.0000', NULL, NULL, NULL, NULL, NULL),
(688, 357, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-26 09:53:00', NULL, NULL, NULL),
(691, 360, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-27 15:48:00', NULL, NULL, NULL),
(692, 361, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-27 15:49:00', NULL, NULL, NULL),
(693, 361, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-27 15:49:00', NULL, NULL, NULL),
(694, 361, 237, 'Cheese Stick213', 'Cheese Stick', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-10-27 15:49:00', NULL, NULL, NULL),
(712, 376, 436, '00002', 'test', 'standard', 8, '20.0000', '20.0000', '24.0000', 1, '0.0000', NULL, '', '0', '0.0000', '20.0000', '', '20.0000', NULL, 37, 'Case', '1.0000', NULL, '2021-11-03 11:27:00', NULL, NULL, NULL),
(760, 416, 445, 'DD001', 'Dizzy Drinks', 'standard', NULL, '1.0000', '1.0000', '5.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '1.0000', NULL, 25, 'Can', '5.0000', NULL, NULL, '0', '0', NULL),
(810, 451, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-12-15 17:12:00', NULL, NULL, NULL),
(811, 451, 234, 'G0003', 'Green Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-12-15 17:12:00', NULL, NULL, NULL),
(867, 480, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2021-12-21 15:39:00', NULL, NULL, NULL),
(868, 480, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-12-21 15:39:00', NULL, NULL, NULL),
(932, 535, 4294967295, '09', 'Gift Card', 'manual', 0, '100.0000', '100.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '100.0000', '', '100.0000', NULL, NULL, NULL, '1.0000', NULL, '2021-12-23 16:27:00', NULL, NULL, NULL),
(936, 538, 4294967295, '02', 'Gift Card', 'manual', 0, '100.0000', '100.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '100.0000', '', '100.0000', NULL, NULL, NULL, '1.0000', NULL, '2021-12-23 16:33:00', NULL, NULL, NULL),
(968, 563, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2021-12-27 14:26:00', NULL, NULL, NULL),
(969, 563, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-12-27 14:26:00', NULL, NULL, NULL),
(970, 564, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2021-12-27 14:30:00', NULL, NULL, NULL),
(974, 568, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2021-12-27 16:50:00', NULL, NULL, NULL),
(1025, 596, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', 974, 28, '1', '-1.0000', NULL, NULL, NULL, NULL, NULL),
(1069, 619, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2022-01-24 15:27:00', NULL, NULL, NULL),
(1080, 625, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2022-01-27 14:47:00', NULL, NULL, NULL),
(1081, 626, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2022-01-27 14:48:00', NULL, NULL, NULL),
(1228, 690, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '20.0000', 1, '0.0000', NULL, '', '0', '0.0000', '60.0000', '', '3.0000', NULL, 28, '1', '20.0000', NULL, '2022-03-20 09:39:00', NULL, NULL, NULL),
(1229, 690, 232, 'E00001', 'Egg Sandwich', 'standard', 0, '2.0000', '2.0000', '20.0000', 1, '0.0000', NULL, '', '0', '0.0000', '40.0000', '', '2.0000', NULL, 28, '1', '20.0000', NULL, '2022-03-20 09:39:00', NULL, NULL, NULL),
(1230, 691, 496, '29940333', 'Apple', 'standard', NULL, '0.0000', '0.0000', '10.0000', 1, '0.0000', NULL, '', '0', '0.0000', '0.0000', '', '0.0000', NULL, 20, 'null', '10.0000', NULL, '2022-03-20 09:50:00', NULL, NULL, NULL),
(1250, 700, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2022-03-23 16:00:00', NULL, NULL, NULL),
(1300, 708, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 2, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2022-03-25 18:22:00', NULL, NULL, NULL),
(1323, 724, 430, '90716944', 'mask 4 layers', 'standard', NULL, '0.3600', '0.3600', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '0.3600', '', '0.3600', NULL, 47, 'សន្លឺក', '1.0000', NULL, '2022-04-04 14:09:00', NULL, NULL, '0.3000'),
(1329, 730, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, 23, 'Bottle', '1.0000', NULL, '2022-04-08 15:18:00', NULL, NULL, '0.0000'),
(1330, 731, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 28, '1', '1.0000', NULL, '2022-04-21 13:10:00', NULL, NULL, '0.0000'),
(1341, 737, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '2.7000', '2.7000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.7000', '', '2.7000', NULL, 28, '1', '1.0000', NULL, '2022-04-24 10:23:00', NULL, NULL, '0.0000'),
(1365, 701, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1366, 701, 228, 'White Chocolate Doughnut', 'White Chocolate Doughnut', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1367, 701, 229, 'Strawberry Doughnut', 'Strawberry Doughnut', 'standard', 0, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1368, 755, 4294967295, '0001', 'Fanta', 'manual', 0, '-19.5000', '-19.5000', '4.0000', 1, '0.0000', NULL, '', '20', '80.0000', '-78.0000', '', '0.5000', NULL, NULL, NULL, '4.0000', NULL, '2022-05-11 10:03:00', NULL, NULL, NULL),
(1369, 756, 4294967295, '002', 'Coca', 'manual', 0, '-9.5000', '-9.5000', '2.0000', 1, '0.0000', NULL, '', '10', '20.0000', '-19.0000', '', '0.5000', NULL, NULL, NULL, '2.0000', NULL, '2022-05-11 10:10:00', '20', '20', NULL),
(1399, 764, 348, 'Blue sky', 'Blue sky', 'standard', NULL, '15.0000', '15.0000', '1.0000', 4, '0.0000', NULL, '', '0', '0.0000', '15.0000', '', '15.0000', NULL, NULL, NULL, '1.0000', NULL, '2022-05-30 14:23:00', '8', '8', '0.0000'),
(1410, 770, 239, 'c00001', 'Cream001', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1411, 770, 230, 'BakeHam', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1412, 770, 266, 'BakeCheese', 'Bake Cheese', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1413, 770, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1414, 770, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1415, 771, 454, 'con06', 'ទឹកមាសលាយទឹក 4K', 'standard', NULL, '102.0000', '102.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '102.0000', '', '102.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1416, 771, 459, 'con11', 'ថ្នាំក្បឿង​ 4k', 'standard', NULL, '35.0000', '35.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '35.0000', '', '35.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1417, 771, 460, 'con12', 'ទ្រនាប់200', 'standard', NULL, '40.0000', '40.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '40.0000', '', '40.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1418, 772, 472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', 'standard', NULL, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '5.0000'),
(1419, 773, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1420, 773, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1421, 774, 513, '69360799', 'test', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1422, 775, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1423, 776, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1424, 776, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1425, 776, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1426, 776, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1427, 776, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1428, 777, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1429, 777, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1430, 778, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1431, 779, 524, '35945951', 'coca', 'standard', 0, '2500.0000', '2500.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2500.0000', '', '2500.0000', NULL, 64, 'ដប', '1.0000', '', NULL, '0', '0', '2000.0000'),
(1432, 780, 510, '14891549', 'asda', 'standard', 0, '10.8000', '10.8000', '1.0000', 1, '0.0000', NULL, '', '10%', '1.2000', '10.8000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1433, 780, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1434, 781, 463, 'baby04', 'នំកូនក្មេង​ Promina', 'standard', 0, '0.0000', '0.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '0.0000', '', '0.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1435, 781, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '2.5000', NULL, NULL, NULL, '2.0000', '', NULL, '0', '0', '0.0000'),
(1436, 782, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1437, 782, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1438, 783, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1439, 783, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1440, 784, 463, 'baby04', 'នំកូនក្មេង​ Promina', 'standard', NULL, '2.0000', '2.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.0000', '', '2.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1441, 784, 504, 'A001', 'ជេល', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '3.0000'),
(1442, 785, 513, '69360799', 'test', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1445, 787, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1446, 787, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1447, 788, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1448, 789, 507, '27050974', 'Test', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1449, 790, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1450, 791, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1451, 792, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1452, 792, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1453, 793, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1454, 794, 504, 'A001', 'ជេល', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '3.0000'),
(1455, 794, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1459, 795, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1460, 795, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1461, 795, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1462, 796, 370, 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', 'Candle Happy for Birthday Cake (1Ctn*24Pcs)', 'standard', NULL, '2.3000', '2.3000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.3000', '', '2.3000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1463, 796, 372, 'Hat Disco for Birthday Cake', 'Hat Disco for Birthday Cake', 'standard', NULL, '2.3000', '2.3000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.3000', '', '2.3000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1464, 797, 505, '12345', 'CoCa', 'standard', 20, '2.0000', '2.0000', '7.0000', 1, '0.0000', NULL, '', '0', '0.0000', '14.0000', '', '2.0000', NULL, 64, 'ដប', '7.0000', '', NULL, '0', '0', '0.2500'),
(1465, 798, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1466, 798, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1469, 799, 4294967295, '03', 'DFJH', 'manual', 0, '203.0000', '203.0000', '3.0000', 1, '0.0000', NULL, '', '0', '0.0000', '609.0000', '', '203.0000', NULL, NULL, NULL, '3.0000', NULL, NULL, '0', '0', NULL),
(1470, 799, 4294967295, '01', 'CAR', 'manual', 0, '12.0000', '12.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '24.0000', '', '12.0000', NULL, NULL, NULL, '2.0000', NULL, NULL, '0', '0', NULL),
(1471, 800, 521, 'apple', 'Apple', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 66, 'pcs', '1.0000', '', NULL, '0', '0', '1.0000'),
(1472, 800, 521, 'apple', 'Apple', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, 66, 'pcs', '1.0000', '', NULL, '0', '0', '1.0000'),
(1473, 801, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1474, 801, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1475, 801, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1476, 802, 510, '14891549', 'asda', 'standard', 0, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1477, 802, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', 0, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1478, 802, 462, 'baby03', 'ក្តាខៀន​', 'standard', 0, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1479, 802, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', 0, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1480, 803, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1481, 803, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1482, 804, 510, '14891549', 'asda', 'standard', 0, '10.8000', '10.8000', '1.0000', 1, '0.0000', NULL, '', '10%', '1.2000', '10.8000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1483, 805, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1484, 806, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1485, 806, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1486, 807, 463, 'baby04', 'នំកូនក្មេង​ Promina', 'standard', NULL, '2.0000', '2.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.0000', '', '2.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1487, 807, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1488, 807, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1489, 808, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '27.0000', 1, '0.0000', NULL, '', '0', '0.0000', '324.0000', '', '12.0000', NULL, NULL, NULL, '27.0000', NULL, '2022-07-05 08:26:00', NULL, NULL, '0.0000'),
(1490, 809, 504, 'A001', 'ជេល', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '3.0000'),
(1491, 809, 472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', 'standard', NULL, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '5.0000'),
(1492, 809, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1493, 809, 470, 'baby11', 'ខោទឹកនោម Yuniku (XL)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1494, 809, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1495, 809, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1496, 809, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1497, 810, 504, 'A001', 'ជេល', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '3.0000'),
(1498, 810, 470, 'baby11', 'ខោទឹកនោម Yuniku (XL)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1499, 810, 472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', 'standard', NULL, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '5.0000'),
(1500, 810, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1501, 810, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1502, 810, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1503, 810, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1504, 811, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1505, 811, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1506, 811, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1507, 812, 495, '47865190', 'Apple', 'standard', NULL, '1.0000', '1.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '1.0000', '', '1.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1508, 813, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1509, 813, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1510, 814, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1511, 814, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1512, 815, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1513, 816, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1514, 817, 470, 'baby11', 'ខោទឹកនោម Yuniku (XL)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1515, 818, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1516, 819, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1517, 820, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1518, 821, 472, 'baby13', 'ច្រាសដុសធ្មេញ​ក្មេង​ Colgate Banana ( 5year-9year )​', 'standard', NULL, '10.0000', '10.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.0000', '', '10.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '5.0000'),
(1519, 822, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1520, 823, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1521, 824, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1522, 825, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1523, 826, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1524, 827, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1525, 828, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1526, 828, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1527, 829, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1528, 829, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1529, 829, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1530, 830, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1531, 830, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1532, 831, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1533, 831, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1534, 832, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1535, 832, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1536, 833, 230, 'BakeHam', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1537, 833, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1538, 833, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1539, 833, 230, 'BakeHam', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1540, 833, 239, 'c00001', 'Cream001', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1541, 834, 416, '59227711', 'Pocarisweat', 'standard', NULL, '2.0000', '2.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.0000', '', '2.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '1.0000'),
(1542, 834, 379, '184623782', 'Angkorpuro', 'standard', 1, '1.0000', '1.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '1.0000', '', '1.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.2500'),
(1543, 835, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1544, 836, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000');
INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `sdate`, `invoice_dis`, `item_invoice_dis`, `product_cost`) VALUES
(1545, 837, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1546, 837, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1547, 837, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1548, 838, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1549, 839, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1550, 840, 526, '79084292', 'coca', 'standard', 21, '2500.0000', '2500.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2500.0000', '', '2500.0000', NULL, 64, 'ដប', '1.0000', '', NULL, '0', '0', '2000.0000'),
(1551, 841, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1552, 841, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1553, 842, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1554, 843, 532, '27805575', 'Viso', 'standard', NULL, '1000.0000', '1000.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '1000.0000', '', '1000.0000', NULL, 64, 'ដប', '1.0000', '', NULL, '0', '0', '800.0000'),
(1555, 844, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1556, 845, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1557, 846, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1558, 847, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1559, 848, 536, '11343567', 'clear', 'standard', NULL, '2.0000', '2.0000', '2.0000', 1, '0.0000', NULL, '', '0', '0.0000', '4.0000', '', '2.0000', NULL, 81, '500ml', '2.0000', '', NULL, '0', '0', '1.0000'),
(1560, 849, 536, '11343567', 'clear', 'standard', 0, '1.8000', '1.8000', '1.0000', 1, '0.0000', NULL, '', '10%', '0.2000', '1.8000', '', '2.0000', NULL, 81, '500ml', '1.0000', '', NULL, '0', '0', '1.0000'),
(1567, 853, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1568, 854, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1569, 854, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1570, 855, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1575, 856, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '0.0000'),
(1576, 856, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, '0', '0', '2.0000'),
(1577, 857, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1578, 858, 492, '864321', 'Product', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '2.0000'),
(1585, 860, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1586, 860, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1587, 861, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1588, 861, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1589, 862, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1590, 862, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1591, 863, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-2.5000', '', '2.5000', 1590, 0, NULL, '-1.0000', NULL, NULL, NULL, NULL, NULL),
(1592, 863, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-5.5000', '', '5.5000', 1589, 0, NULL, '-1.0000', NULL, NULL, NULL, NULL, NULL),
(1593, 864, 468, 'baby09', 'ខោទឹកនោម Yuniku (M)', 'standard', NULL, '10.5000', '10.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '10.5000', '', '10.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1594, 864, 462, 'baby03', 'ក្តាខៀន​', 'standard', NULL, '5.5000', '5.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.5000', '', '5.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1595, 865, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1596, 866, 464, 'baby05', 'កំបុ៉ងបបរ', 'standard', NULL, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1597, 867, 478, 'mart06', 'សេវិនអាប់', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1598, 867, 474, 'mart02', 'កូកាដប', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1599, 867, 473, 'mart01', 'កូកា', 'standard', 0, '2.5000', '2.5000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '2.5000', '', '2.5000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1600, 868, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1601, 868, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1602, 869, 510, '14891549', 'asda', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1603, 869, 488, '4718050609659', 'ADATA C008 USB Flash Drive 32GB', 'standard', NULL, '12.0000', '12.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '12.0000', '', '12.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '10.0000'),
(1604, 870, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '-1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '-3.0000', '', '3.0000', NULL, NULL, NULL, '-1.0000', '', NULL, '0', '0', '0.0000'),
(1605, 871, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', 'ខ្ចប់', NULL, '0', '0', '0.0000'),
(1606, 872, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', 'ខ្ចប់', NULL, '0', '0', '0.0000'),
(1607, 873, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1608, 873, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1609, 874, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1610, 874, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1611, 874, 230, 'BakeHam', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1612, 875, 232, 'E00001', 'Egg Sandwich', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1613, 875, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1614, 876, 239, 'c00001', 'Cream001', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1615, 876, 266, 'BakeCheese', 'Bake Cheese', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1616, 876, 230, 'BakeHam', 'Bake Ham', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1617, 877, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1618, 877, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1619, 878, 266, 'BakeCheese', 'Bake Cheese', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1620, 878, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1621, 878, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1622, 879, 239, 'c00001', 'Cream001', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1623, 879, 239, 'c00001', 'Cream001', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1624, 879, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1625, 880, 227, '2903741535', 'Almond Doughnut', 'standard', NULL, '5.0000', '5.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '5.0000', '', '5.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1626, 881, 266, 'BakeCheese', 'Bake Cheese', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000'),
(1627, 881, 231, '98321867156', 'Bacon Onion', 'standard', NULL, '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', '3.0000', NULL, NULL, NULL, '1.0000', '', NULL, '0', '0', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

DROP TABLE IF EXISTS `sma_sessions`;
CREATE TABLE IF NOT EXISTS `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02a9b8ou6o7s677e7kaui50nv4v2fb5u', '::1', 1714988822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343938383634353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363634323437353632223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313731343938383739353b72656769737465725f69647c733a323a223631223b636173685f696e5f68616e647c733a373a2231302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30392d30312032323a32323a3236223b),
('868gh1ham8eadqdd5lfj3lf9dnt7sa5g', '::1', 1714990268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343939303235393b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231373134393837313231223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a33383a223c703e596f7520617265207375636365737366756c6c79206c6f6767656420696e2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('ahn878har82sd5qjobb5s4f4fb2hki9v', '127.0.0.1', 1664248113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343234373836313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363632303833363830223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313636343234383130363b72656769737465725f69647c733a323a223631223b636173685f696e5f68616e647c733a373a2231302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30392d30312032323a32323a3236223b),
('hk3trv7s8rai9hpldp1o39p2d9vr12v0', '127.0.0.1', 1664247861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636343234373836313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363632303833363830223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313636343234373738353b72656769737465725f69647c733a323a223631223b636173685f696e5f68616e647c733a373a2231302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30392d30312032323a32323a3236223b),
('k0fe7o0rq3ecpqr1lm0tnt36tebolfhh', '::1', 1714987138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343938373130353b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363634323437353632223b6c6173745f69707c733a393a223132372e302e302e31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313731343938373132363b72656769737465725f69647c733a323a223631223b636173685f696e5f68616e647c733a373a2231302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032322d30392d30312032323a32323a3236223b),
('lk48s95mrjo714943ns6pl0082jcl1qt', '::1', 1714990791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343939303739313b7265717565737465645f706167657c733a353a2261646d696e223b6964656e746974797c733a343a2264656d6f223b757365726e616d657c733a343a2264656d6f223b656d61696c7c733a32333a22616e616b75746469676974616c40676d61696c2e636f6d223b757365725f69647c733a323a223237223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231373134393837313231223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('vkp37i8f5ccftki3pv2jeruvnncm8n84', '::1', 1714987105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731343938373130353b);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

DROP TABLE IF EXISTS `sma_settings`;
CREATE TABLE IF NOT EXISTS `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '_',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0',
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT '90',
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_num` varchar(100) DEFAULT NULL,
  `sale_num` varchar(100) DEFAULT NULL,
  `purchase_num` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `invoice_num`, `sale_num`, `purchase_num`) VALUES
(1, '104093617_289361475773.png', '104093617_289361475774.png', 'Anakut Digital Solutions', 'english', 1, 2, 'REL', 0, 100, '3.2.3', 1, 5, '$A', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 0, 1, 1, 1, 0, 1, 1, 1, 0, 'Asia/Phnom_Penh', 800, 800, 150, 150, 0, NULL, NULL, NULL, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', 'BhBUZ1YzBm5QYVYzADQBNAZi', '25', NULL, NULL, 1, 'contact@tecdiary.com', 0, 4, 0, 0, 2, 0, 0, 1, 4, 2, '.', ',', 0, 2, 'ryrun168', 'aec99605-5703-48fb-a0cc-8a55aded76f2', 0, '20.0000', 1, '100.0000', 1, 0, 0, 0, 0, '', 0, '_', 0, 1, 1, 'POP', 90, '', 0, 0, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

DROP TABLE IF EXISTS `sma_skrill`;
CREATE TABLE IF NOT EXISTS `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

DROP TABLE IF EXISTS `sma_stock_counts`;
CREATE TABLE IF NOT EXISTS `sma_stock_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_counts`
--

INSERT INTO `sma_stock_counts` (`id`, `date`, `reference_no`, `warehouse_id`, `type`, `initial_file`, `final_file`, `brands`, `brand_names`, `categories`, `category_names`, `note`, `products`, `rows`, `differences`, `matches`, `missing`, `created_by`, `updated_by`, `updated_at`, `finalized`) VALUES
(1, '2022-03-28 17:17:00', '', 1, 'full', 'ccee300f56c64d5e518a3a8266d82064.csv', NULL, '', '', '', '', NULL, 236, 248, NULL, NULL, NULL, 27, NULL, NULL, NULL),
(2, '2022-04-28 16:51:00', '', 1, 'full', 'c5ccb617ee78304e1199fa29e5830ec4.csv', NULL, '', '', '', '', NULL, 238, 250, NULL, NULL, NULL, 27, NULL, NULL, NULL),
(3, '2022-05-30 15:01:00', '', 1, 'full', 'b588c73ad7efbb443851b5107f8c1758.csv', NULL, '', '', '', '', NULL, 240, 252, NULL, NULL, NULL, 27, NULL, NULL, NULL),
(4, '2022-06-14 10:21:00', '', 1, 'full', 'a3c06b38cc599abaee698b47e8efdd34.csv', NULL, '', '', '', '', NULL, 239, 251, NULL, NULL, NULL, 27, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

DROP TABLE IF EXISTS `sma_stock_count_items`;
CREATE TABLE IF NOT EXISTS `sma_stock_count_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_count_id` (`stock_count_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_subcategories`
--

DROP TABLE IF EXISTS `sma_subcategories`;
CREATE TABLE IF NOT EXISTS `sma_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

DROP TABLE IF EXISTS `sma_suspended_bills`;
CREATE TABLE IF NOT EXISTS `sma_suspended_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT '0.0000',
  `sus_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

DROP TABLE IF EXISTS `sma_suspended_items`;
CREATE TABLE IF NOT EXISTS `sma_suspended_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `product_cost` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_suspended_items`
--

INSERT INTO `sma_suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `option_id`, `product_type`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `product_cost`) VALUES
(33, 7, 232, 'E00001', 'Egg Sandwich', '3.0000', '3.0000', '1.0000', 1, '0.0000', NULL, '', '0', '0.0000', '3.0000', '', NULL, 'standard', '3.0000', 28, '1', '1.0000', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_table`
--

DROP TABLE IF EXISTS `sma_table`;
CREATE TABLE IF NOT EXISTS `sma_table` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

DROP TABLE IF EXISTS `sma_tax_rates`;
CREATE TABLE IF NOT EXISTS `sma_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @10%', 'VAT10', '10.0000', '1'),
(3, 'GST @6%', 'GST', '6.0000', '1'),
(4, 'VAT @20%', 'VT20', '20.0000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

DROP TABLE IF EXISTS `sma_transfers`;
CREATE TABLE IF NOT EXISTS `sma_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_transfers`
--

INSERT INTO `sma_transfers` (`id`, `transfer_no`, `date`, `from_warehouse_id`, `from_warehouse_code`, `from_warehouse_name`, `to_warehouse_id`, `to_warehouse_code`, `to_warehouse_name`, `note`, `total`, `total_tax`, `grand_total`, `created_by`, `status`, `shipping`, `attachment`) VALUES
(1, 'TR/0002', '2021-08-03 18:02:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '&lt;p&gt;noted&lt;&sol;p&gt;', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(2, 'TR/0003', '2021-09-13 11:39:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '&lt;p&gt;dtvgvgy&lt;&sol;p&gt;', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(3, 'TR/0004', '2021-09-27 16:51:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(4, 'TR/0005', '2021-09-28 16:21:00', 2, '02', 'BK001', 1, '01', 'AnakutDigital Solution', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(5, 'w', '2021-11-15 15:51:00', 2, '02', 'BK001', 1, '01', 'AnakutDigital Solution', '', '2.0000', '0.0000', '2.0000', '27', 'completed', '0.0000', NULL),
(6, 'TR/0006', '2021-12-09 10:37:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(7, 'TR/0007', '2021-12-13 09:21:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(8, 'TR/0008', '2021-12-13 09:23:00', 1, '01', 'AnakutDigital Solution', 2, '02', 'BK001', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(9, 'TR/0009', '2022-01-03 09:22:00', 4, 'store123', 'Store', 3, '03', 'Service ', '&lt;p&gt;Transfer stock&lt;&sol;p&gt;', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(10, 'TR/0010', '2022-01-03 14:01:00', 5, 'test123', 'test', 6, 'b12', 'B', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(11, 'TR/0011', '2022-02-16 12:21:00', 1, '01', 'AnakutDigital Solution', 7, 'Test', 'Test', '', '2.5000', '0.0000', '2.5000', '27', 'completed', '0.0000', NULL),
(12, 'TR/0012', '2022-03-05 15:43:00', 2, '02', 'BK001', 3, '03', 'Service ', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL),
(13, 'TR/0001', '2022-07-20 10:59:00', 1, '01', 'AnakutDigital Solution', 4, 'ANAKUT 2', 'ANAKUT 2', '', '0.0000', '0.0000', '0.0000', '27', 'completed', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

DROP TABLE IF EXISTS `sma_transfer_items`;
CREATE TABLE IF NOT EXISTS `sma_transfer_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_id` (`transfer_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

DROP TABLE IF EXISTS `sma_units`;
CREATE TABLE IF NOT EXISTS `sma_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_unit` (`base_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(64, 'ដប', 'ដប', NULL, NULL, NULL, NULL),
(65, '01', 'កែវ', NULL, NULL, NULL, NULL),
(66, 'pcs', 'pcs', 77, '/', NULL, '6'),
(67, '1យូរ3', '1យូរ3', 64, '*', NULL, '3'),
(69, '1យួរ4', '1យួរ4', 64, '*', NULL, '4'),
(70, '1យួរ6', '1យួរ6', 64, '*', NULL, '6'),
(75, '1កេះ', '1កេះ', 64, '*', NULL, '24'),
(76, 'កន្លះកេះ', 'កន្លះកេះ', 64, '*', NULL, '12'),
(77, 'Case', 'Case', NULL, NULL, NULL, NULL),
(78, 'ឡូ', 'ឡូ', 64, '*', NULL, '12'),
(79, '1 ដប', '1 ដប', NULL, NULL, NULL, NULL),
(80, '1ចាន', '1ចាន', NULL, NULL, NULL, NULL),
(81, '500ml', '500ml', NULL, NULL, NULL, NULL),
(82, 'unit', 'unit', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

DROP TABLE IF EXISTS `sma_users`;
CREATE TABLE IF NOT EXISTS `sma_users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT '0',
  `show_price` tinyint(1) DEFAULT '0',
  `award_points` int(11) DEFAULT '0',
  `view_right` tinyint(1) NOT NULL DEFAULT '0',
  `edit_right` tinyint(1) NOT NULL DEFAULT '0',
  `allow_discount` tinyint(1) DEFAULT '0',
  `print_invoice` tinyint(1) DEFAULT NULL,
  `print_receipt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  KEY `group_id_2` (`group_id`,`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`, `print_invoice`, `print_receipt`) VALUES
(27, 0x3a3a31, 0x35382e39372e3230332e313931, 'demo', 'db388914288199e46f0c5e2ebde7c33e44d14f3f', NULL, 'anakutdigital@gmail.com', NULL, NULL, NULL, 'cdb87a869d541140b810977874f9b47a25cd3503', 1607157108, 1714990268, 1, 'Owner', 'Owner', 'AnakutDigital Solution', '0123456789', NULL, 'male', 1, 0, 0, NULL, 0, 0, -2147483578, 1, 0, 0, 1, 1),
(28, NULL, 0x35382e39372e3230332e313931, 'bora', 'd6ad2027292346b36e5dd582c6cf07a180a87788', NULL, 'dara@gmail.com', NULL, NULL, NULL, NULL, 1609233689, 1609233689, 1, 'john1222', 'Mark', 'ASD', '01234556', NULL, 'male', 6, 1, 2, NULL, NULL, 1, 0, 1, 0, 0, 1, 1),
(29, 0x3230332e3231372e3137312e32, 0x3230332e3231372e3137312e32, 'thida', '4263c5d3f5d4e9ad91faf6a335e9a2154977ebef', NULL, 'honsophat1309@gmail.com', NULL, NULL, NULL, NULL, 1610861171, 1610861195, 1, 'demo', 'de', 'A', '+855964936058', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(30, 0x35382e39372e3233302e3930, 0x35382e39372e3230332e313931, 'admin', '8c8ea2f5c88b5b730c95039cdc0adb85f68a7aaa', NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, 1614585788, 1624674606, 1, 'admin', 'admin', 'Anakut', '01234556', NULL, 'male', 5, 1, 2, NULL, NULL, 1, 0, 1, 0, 1, 1, 1),
(31, 0x39362e392e39342e313330, 0x35382e39372e3230342e313239, 'test', '37b3c5a8c540b5f137975f8cacedd8be78d97a69', NULL, 'test@gmail.com', NULL, NULL, NULL, NULL, 1637805851, 1659069991, 1, 'test', 'test', 'Anakut Digital Solutions', '010601168', NULL, 'male', 9, 1, 2, NULL, 0, 0, 0, 1, 1, 1, 1, 1),
(33, 0x39362e392e39342e313330, 0x3131302e3233352e3234302e3433, 'sophea', 'd6f19af4b8fe32975f26a7ba594b62be4b824903', NULL, 'demo@gmail.com', NULL, NULL, NULL, NULL, 1640229790, 1658142852, 1, 'Cashier', 'Cashier', 'Dental Fix', '0964936058', NULL, 'female', 6, NULL, 2, NULL, NULL, 1, 0, 1, 1, 1, 1, 1),
(34, NULL, 0x35382e39372e3230342e313239, 'dara', '0d536196b93db711e44ecb4f18811df84bf68983', NULL, 'chandara@gmail.com', NULL, NULL, NULL, NULL, 1640599387, 1640599387, 1, 'Dara', 'Chan', 'General', '01223131', NULL, 'male', 5, 1, 2, NULL, NULL, 1, 0, 1, 0, 0, 1, 1),
(35, 0x35382e39372e3230342e313239, 0x35382e39372e3230342e313239, 'user1', 'c240037365b95fd51af5290b0f37660f15133d9c', NULL, 'deeee@gmail.com', NULL, NULL, NULL, NULL, 1641796553, 1641796574, 1, 'user', 'user', 'anak', '0969595955', NULL, 'male', 6, 1, 2, NULL, NULL, 1, 0, 1, 1, 1, 1, 1),
(36, 0x35382e39372e3231362e3239, 0x39362e392e39342e313330, 'phat', '6c39b8858b28bf907d16538ae1096fc0fba4b7b8', NULL, 'honsophat130911@gmail.com', NULL, NULL, NULL, NULL, 1643778937, 1655350713, 1, 'phat', 'so', 'Anakut ', '095988879 / 09663944', NULL, 'male', 5, 1, 2, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL),
(37, 0x33362e33372e3230342e3332, 0x33362e33372e3230342e3332, 'asdf', 'ed5439216d38bbd3316fd41cf371da90a2b5f222', NULL, 'asdf@gmail.com', NULL, NULL, NULL, NULL, 1644121222, 1644121236, 1, 'Cash', 'Ier', 'tes1', '01928272', NULL, 'male', 6, 1, 2, NULL, NULL, 1, 0, 1, 0, 0, NULL, 1),
(38, 0x32372e3130392e3131352e313331, 0x32372e3130392e3131352e313331, 'phatso', '3894f9acdc5384b35c397c7058c4b3d40d28d99d', NULL, 'demo1112232@gmail.com', NULL, NULL, NULL, NULL, 1645793689, 1645793698, 1, 'Hon', 'Sophat', 'anakut', '09384092', NULL, 'male', 5, 5, 2, NULL, NULL, 1, 0, 0, 1, 0, 1, 1),
(39, 0x39362e392e39342e313330, 0x39362e392e39342e313330, 'menglay', '91fb12478f0d20da9ccce8bbc20972484a835146', NULL, 'heamenglay.heng@gmail.com', NULL, NULL, NULL, NULL, 1646445829, 1646445892, 1, 'Meng', 'Lay', 'AnakutDigital ', '010 60 11 68', NULL, 'male', 5, 1, 2, NULL, NULL, 1, 0, 0, 0, 0, 1, 1),
(40, 0x34392e3135362e34362e3930, 0x35382e39372e3230342e313239, 'customer', 'ff5fe0ae51ce9a993e0d38533a1a9fb55b3a9147', NULL, 'customer@test.com', NULL, NULL, NULL, NULL, 1648203086, 1649160442, 1, 'customer', 'customer', 'customer', '0963619886', NULL, 'male', 11, 1, 0, NULL, 1, 1, 0, 1, 0, 0, 1, 1),
(41, NULL, 0x39362e392e39342e313330, 'machhasm1997', '8b319f00146bb7e02d413d0bbf0b6a59576baadc', NULL, 'machhasm1997@gmail.com', NULL, NULL, NULL, NULL, 1652239104, 1652239104, 1, 'Machha', 'Im', 'AB', '', NULL, 'female', 3, NULL, NULL, 14, 0, 0, 0, 0, 0, 0, NULL, NULL),
(42, NULL, 0x35382e39372e3231362e313433, 'adama', '2a47abf6187633d2b12df18d2d3e279bfe760b1b', NULL, 'adama27@gmail.com', '6db55b137a0065fd7c80aeb65691d2caf2814594', NULL, NULL, NULL, 1653896039, 1653896039, 0, 'Adama', 'Traorre', 'FC Barcelona', '0101010101', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(43, NULL, 0x35382e39372e3231362e313433, 'mateo10', '40ce55ee97c330f62ca7c618ea21f5cdd82822e5', NULL, 'mateo10@gmail.com', NULL, NULL, NULL, NULL, 1653896497, 1653896497, 1, 'Mateo', 'Messi', '010101010', '020202020', NULL, 'male', 3, NULL, NULL, 34, 0, 0, 0, 0, 0, 0, NULL, NULL),
(44, NULL, 0x35382e39372e3232392e3932, 'sounart', '42dfd839a17440e78a67af90a6ec5974110c0cf9', NULL, 'empirepc22@gmail.com', NULL, NULL, NULL, NULL, 1657259052, 1657259052, 1, 'art', 'soun', 'PTC', '012639623', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(45, 0x35382e39372e3232392e3932, 0x35382e39372e3232392e3932, 'viimean', 'd82c57dcc2ec2337d0b4587e3b436563e83acf0d', NULL, 'viimean22@gmail.com', NULL, NULL, NULL, NULL, 1657259883, 1657259932, 1, 'viimean', 'seng', 'HR', '012639623', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(46, 0x35382e39372e3231362e3334, 0x35382e39372e3231362e3334, 'heng123', '69ea083315d079bf0dac3e9712f3628d36063a6d', NULL, 'sokheng12@gmail.com', NULL, NULL, NULL, NULL, 1657596492, 1657596733, 1, 'Ban', 'Sokheng', 'Anakut Digital member', '016 271 133', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(47, NULL, 0x39362e392e39342e313332, 'dalin', 'ff7ce04123fc673faa7c71d439cdd720d6ba4f6b', NULL, 'dalin@gmail.com', NULL, NULL, NULL, NULL, 1661333268, 1661333268, 1, 'Da', 'Lin', 'Anakut', '0882326165', NULL, 'female', 1, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, 1),
(48, 0x3137352e3130302e38382e313030, 0x39362e392e39342e313330, 'chiyung', '1cc8b6ed9f07e1ad486c5b69c09736234db7545d', NULL, 'tangchiyung@gmail.com', NULL, NULL, NULL, NULL, 1661568725, 1661913413, 1, 'Tang', 'Chiyung', 'តាំង ​ជីយ៉ុង', '012 888 429/016 888 ', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

DROP TABLE IF EXISTS `sma_user_logins`;
CREATE TABLE IF NOT EXISTS `sma_user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3283 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(2904, 27, NULL, 0x35382e39372e3232362e313039, 'demo', '2022-04-19 07:53:12'),
(2905, 27, NULL, 0x35382e39372e3232362e313039, 'demo', '2022-04-19 09:32:37'),
(2906, 27, NULL, 0x3137352e3130302e31322e313237, 'demo', '2022-04-19 13:03:36'),
(2907, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-20 10:01:56'),
(2908, 27, NULL, 0x35382e39372e3232302e313231, 'demo', '2022-04-21 06:01:51'),
(2909, 27, NULL, 0x35382e39372e3232302e313231, 'demo', '2022-04-21 07:17:14'),
(2910, 27, NULL, 0x3131372e32302e3131332e323232, 'demo', '2022-04-21 12:48:11'),
(2911, 27, NULL, 0x35382e39372e3232342e33, 'demo', '2022-04-22 02:44:40'),
(2912, 27, NULL, 0x3131302e37342e3230322e313134, 'demo', '2022-04-22 03:57:17'),
(2913, 27, NULL, 0x32372e3130392e3131332e3938, 'demo', '2022-04-22 06:19:09'),
(2914, 27, NULL, 0x3131372e32302e3131332e323133, 'demo', '2022-04-23 07:43:30'),
(2915, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-23 08:59:15'),
(2916, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-23 11:45:15'),
(2917, 27, NULL, 0x3131372e32302e3131352e3135, 'demo', '2022-04-24 02:54:51'),
(2918, 27, NULL, 0x32372e3130392e3131332e3937, 'demo', '2022-04-25 03:38:49'),
(2919, 27, NULL, 0x3131372e32302e3131322e3534, 'demo', '2022-04-26 03:48:00'),
(2920, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-26 03:48:10'),
(2921, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-26 10:05:30'),
(2922, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-27 01:26:42'),
(2923, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-27 02:12:27'),
(2924, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-27 07:21:19'),
(2925, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-27 11:15:28'),
(2926, 27, NULL, 0x3131372e32302e3131322e33, 'demo', '2022-04-28 02:10:21'),
(2927, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-28 02:13:06'),
(2928, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-28 03:50:59'),
(2929, 27, NULL, 0x35382e39372e3231382e3935, 'demo', '2022-04-28 05:41:12'),
(2930, 27, NULL, 0x3139332e35382e3130362e3539, 'demo', '2022-04-28 09:47:32'),
(2931, 27, NULL, 0x32372e3130392e3131332e3838, 'demo', '2022-04-29 05:06:47'),
(2932, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-29 06:33:01'),
(2933, 27, NULL, 0x35382e39372e3232302e313231, 'demo', '2022-04-29 10:47:18'),
(2934, 27, NULL, 0x3131372e32302e3131332e323230, 'demo', '2022-04-30 01:11:23'),
(2935, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-04-30 02:49:56'),
(2936, 27, NULL, 0x33362e33372e3230372e3831, 'demo', '2022-04-30 08:43:33'),
(2937, 27, NULL, 0x3131372e32302e3131362e313436, 'demo', '2022-04-30 13:01:02'),
(2938, 27, NULL, 0x35382e39372e3231362e3135, 'demo', '2022-05-02 06:24:19'),
(2939, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-02 06:25:35'),
(2940, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-03 05:48:41'),
(2941, 27, NULL, 0x35382e39372e3233302e31, 'demo', '2022-05-03 08:26:49'),
(2942, 27, NULL, 0x3131372e32302e3131362e313633, 'demo', '2022-05-03 13:08:35'),
(2943, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-04 02:08:07'),
(2944, 27, NULL, 0x35382e39372e3232352e313232, 'demo', '2022-05-04 05:17:44'),
(2945, 27, NULL, 0x35382e39372e3232352e313232, 'demo', '2022-05-04 06:52:41'),
(2946, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-04 09:18:29'),
(2947, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-05 02:49:45'),
(2948, 27, NULL, 0x35382e39372e3231362e313030, 'demo', '2022-05-05 03:46:05'),
(2949, 27, NULL, 0x35382e39372e3231362e313030, 'demo', '2022-05-05 08:18:10'),
(2950, 27, NULL, 0x3131372e32302e3131372e3736, 'demo', '2022-05-05 08:54:59'),
(2951, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-05 10:27:44'),
(2952, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-05 10:31:41'),
(2953, 27, NULL, 0x35382e39372e3232342e323332, 'demo', '2022-05-06 02:10:23'),
(2954, 27, NULL, 0x35382e39372e3232342e323332, 'demo', '2022-05-06 07:03:38'),
(2955, 27, NULL, 0x3131302e37342e3232322e313134, 'demo', '2022-05-07 03:50:00'),
(2956, 27, NULL, 0x3131372e32302e3131372e3337, 'demo', '2022-05-07 10:40:58'),
(2957, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-09 06:31:05'),
(2958, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-09 09:51:05'),
(2959, 27, NULL, 0x3131372e32302e3131352e313238, 'demo', '2022-05-09 13:14:13'),
(2960, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-10 01:57:12'),
(2961, 27, NULL, 0x3131372e32302e3131352e313238, 'demo', '2022-05-10 03:01:36'),
(2962, 27, NULL, 0x35382e39372e3232342e323530, 'demo', '2022-05-10 07:22:57'),
(2963, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-10 08:28:10'),
(2964, 27, NULL, 0x3131372e32302e3131352e313238, 'demo', '2022-05-11 01:49:42'),
(2965, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-11 01:52:21'),
(2966, 27, NULL, 0x33362e33372e3138352e3830, 'demo', '2022-05-11 08:18:52'),
(2967, 31, NULL, 0x39362e392e39342e313330, 'test', '2022-05-11 08:44:44'),
(2968, 27, NULL, 0x3131372e32302e3131352e313238, 'demo', '2022-05-11 08:46:00'),
(2969, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-11 08:46:51'),
(2970, 27, NULL, 0x32372e3130392e3131352e313238, 'demo', '2022-05-12 03:40:47'),
(2971, 27, NULL, 0x32372e3130392e3131332e313538, 'demo', '2022-05-12 13:23:16'),
(2972, 27, NULL, 0x32372e3130392e3131332e313538, 'demo', '2022-05-12 21:49:11'),
(2973, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-13 03:33:58'),
(2974, 27, NULL, 0x35382e39372e3232342e313339, 'demo', '2022-05-13 05:42:04'),
(2975, 27, NULL, 0x35382e39372e3231382e3836, 'demo', '2022-05-13 12:35:32'),
(2976, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-16 04:34:07'),
(2977, 27, NULL, 0x35382e39372e3232392e3133, 'demo', '2022-05-16 07:44:47'),
(2978, 27, NULL, 0x35382e39372e3232392e3133, 'demo', '2022-05-16 08:17:47'),
(2979, 27, NULL, 0x35382e39372e3232392e3833, 'demo', '2022-05-17 06:40:34'),
(2980, 27, NULL, 0x34392e3135362e33332e313730, 'demo', '2022-05-17 09:02:05'),
(2981, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-18 03:15:44'),
(2982, 27, NULL, 0x35382e39372e3231382e313134, 'demo', '2022-05-18 06:01:25'),
(2983, 27, NULL, 0x35382e39372e3231382e313134, 'demo', '2022-05-18 06:14:01'),
(2984, 27, NULL, 0x35382e39372e3231382e313134, 'demo', '2022-05-18 07:18:50'),
(2985, 27, NULL, 0x35382e39372e3231382e313134, 'demo', '2022-05-18 08:31:20'),
(2986, 27, NULL, 0x3136372e3137392e34342e313535, 'demo', '2022-05-19 11:09:51'),
(2987, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-20 01:34:44'),
(2988, 27, NULL, 0x35382e39372e3233302e3737, 'demo', '2022-05-21 01:31:39'),
(2989, 27, NULL, 0x3131372e32302e3131362e313230, 'demo', '2022-05-21 03:20:19'),
(2990, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-21 03:37:52'),
(2991, 27, NULL, 0x35382e39372e3233302e3737, 'demo', '2022-05-21 08:42:54'),
(2992, 27, NULL, 0x35382e39372e3232392e313930, 'demo', '2022-05-22 06:39:21'),
(2993, 27, NULL, 0x3130332e392e3139302e313834, 'demo', '2022-05-23 03:53:30'),
(2994, 27, NULL, 0x35382e39372e3232342e30, 'demo', '2022-05-23 06:37:03'),
(2995, 27, NULL, 0x35382e39372e3232342e30, 'demo', '2022-05-23 08:38:43'),
(2996, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-05-25 03:27:55'),
(2997, 27, NULL, 0x35382e39372e3232372e3230, 'demo', '2022-05-26 07:50:40'),
(2998, 27, NULL, 0x3136372e3137392e34342e3432, 'demo', '2022-05-27 02:49:15'),
(2999, 27, NULL, 0x3136372e3137392e34342e3432, 'demo', '2022-05-27 02:50:12'),
(3000, 27, NULL, 0x35382e39372e3232372e3230, 'demo', '2022-05-27 03:40:13'),
(3001, 27, NULL, 0x32372e3130392e3131332e313634, 'demo', '2022-05-28 14:41:12'),
(3002, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 01:37:25'),
(3003, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 01:57:03'),
(3004, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 04:20:49'),
(3005, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 07:07:13'),
(3006, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 07:07:42'),
(3007, 27, NULL, 0x35382e39372e3231362e313433, 'demo', '2022-05-30 07:09:29'),
(3008, 27, NULL, 0x35382e39372e3231362e323337, 'demo', '2022-05-31 01:42:01'),
(3009, 27, NULL, 0x35382e39372e3231362e323337, 'demo', '2022-05-31 02:22:24'),
(3010, 27, NULL, 0x3131372e32302e3131332e323334, 'demo', '2022-05-31 04:07:37'),
(3011, 27, NULL, 0x35382e39372e3231362e323337, 'demo', '2022-05-31 08:13:56'),
(3012, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 01:51:04'),
(3013, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 02:25:55'),
(3014, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 03:42:43'),
(3015, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 04:28:22'),
(3016, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 08:34:29'),
(3017, 27, NULL, 0x35382e39372e3232392e313731, 'demo', '2022-06-01 10:28:41'),
(3018, 27, NULL, 0x35382e39372e3232392e323432, 'demo', '2022-06-02 02:18:16'),
(3019, 27, NULL, 0x35382e39372e3232392e323432, 'demo', '2022-06-02 06:39:54'),
(3020, 27, NULL, 0x39362e392e39342e313331, 'demo', '2022-06-02 06:59:42'),
(3021, 27, NULL, 0x35382e39372e3232392e323432, 'demo', '2022-06-02 09:46:34'),
(3022, 27, NULL, 0x35382e39372e3233302e3833, 'demo', '2022-06-03 01:31:44'),
(3023, 27, NULL, 0x35382e39372e3233302e3833, 'demo', '2022-06-03 07:03:44'),
(3024, 27, NULL, 0x35382e39372e3232322e323235, 'demo', '2022-06-04 06:11:10'),
(3025, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 01:10:56'),
(3026, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 01:40:53'),
(3027, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 03:32:10'),
(3028, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 04:18:33'),
(3029, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 04:40:02'),
(3030, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 04:44:21'),
(3031, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 04:55:32'),
(3032, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 06:32:35'),
(3033, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 06:35:10'),
(3034, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 06:41:52'),
(3035, 27, NULL, 0x35382e39372e3232392e3432, 'demo', '2022-06-07 06:55:25'),
(3036, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 01:24:30'),
(3037, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 01:50:03'),
(3038, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 01:51:51'),
(3039, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 02:09:41'),
(3040, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 02:13:23'),
(3041, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 02:28:15'),
(3042, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 02:29:43'),
(3043, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 02:33:02'),
(3044, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 04:45:46'),
(3045, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 04:52:22'),
(3046, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 07:37:45'),
(3047, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 07:46:45'),
(3048, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 08:12:02'),
(3049, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 09:29:21'),
(3050, 27, NULL, 0x35382e39372e3231362e323233, 'demo', '2022-06-08 09:30:11'),
(3051, 27, NULL, 0x34352e3230312e3133352e323438, 'demo', '2022-06-09 01:17:25'),
(3052, 27, NULL, 0x34352e3230312e3133352e323438, 'demo', '2022-06-09 04:13:06'),
(3053, 27, NULL, 0x34352e3230312e3133352e323438, 'demo', '2022-06-09 06:50:26'),
(3054, 27, NULL, 0x34352e3230312e3133352e323438, 'demo', '2022-06-09 07:42:42'),
(3055, 27, NULL, 0x34352e3230312e3133352e323438, 'demo', '2022-06-09 08:58:47'),
(3056, 27, NULL, 0x35382e39372e3232352e3539, 'demo', '2022-06-10 08:37:55'),
(3057, 27, NULL, 0x35382e39372e3232352e3539, 'demo', '2022-06-10 09:11:58'),
(3058, 27, NULL, 0x35382e39372e3233302e323038, 'demo', '2022-06-11 01:39:55'),
(3059, 27, NULL, 0x35382e39372e3233302e323038, 'demo', '2022-06-11 01:42:49'),
(3060, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-11 02:44:27'),
(3061, 27, NULL, 0x35382e39372e3233302e323038, 'demo', '2022-06-11 04:39:54'),
(3062, 27, NULL, 0x3230322e3135302e332e3438, 'demo', '2022-06-11 08:05:42'),
(3063, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-12 04:01:04'),
(3064, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 03:23:25'),
(3065, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-13 04:53:53'),
(3066, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 06:20:03'),
(3067, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 06:23:53'),
(3068, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 07:39:00'),
(3069, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 07:45:33'),
(3070, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 08:10:26'),
(3071, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 08:12:52'),
(3072, 27, NULL, 0x35382e39372e3232302e3539, 'demo', '2022-06-13 08:29:42'),
(3073, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 01:34:48'),
(3074, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 02:49:14'),
(3075, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 03:11:31'),
(3076, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:44:08'),
(3077, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:48:17'),
(3078, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:51:03'),
(3079, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:52:56'),
(3080, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:56:07'),
(3081, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:59:21'),
(3082, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 06:59:50'),
(3083, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 07:12:53'),
(3084, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 08:01:10'),
(3085, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 08:05:16'),
(3086, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 08:06:25'),
(3087, 27, NULL, 0x35382e39372e3232302e34, 'demo', '2022-06-14 08:10:37'),
(3088, 27, NULL, 0x35382e39372e3233302e323433, 'demo', '2022-06-15 07:31:07'),
(3089, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-15 08:41:10'),
(3090, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 01:43:46'),
(3091, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 01:47:48'),
(3092, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 01:51:03'),
(3093, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 01:54:17'),
(3094, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 02:01:32'),
(3095, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 02:49:07'),
(3096, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 03:33:38'),
(3097, 36, NULL, 0x35382e39372e3231362e3239, 'phat', '2022-06-16 03:35:01'),
(3098, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 03:37:51'),
(3099, 36, NULL, 0x35382e39372e3231362e3239, 'phat', '2022-06-16 03:38:33'),
(3100, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 03:41:21'),
(3101, 27, NULL, 0x35382e39372e3231362e3239, 'demo', '2022-06-16 07:59:56'),
(3102, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-16 08:02:52'),
(3103, 27, NULL, 0x35382e39372e3232302e323236, 'demo', '2022-06-17 02:30:46'),
(3104, 27, NULL, 0x35382e39372e3232302e323236, 'demo', '2022-06-17 03:26:19'),
(3105, 27, NULL, 0x35382e39372e3232302e323236, 'demo', '2022-06-17 06:57:53'),
(3106, 27, NULL, 0x3130332e33302e3139382e313239, 'demo', '2022-06-17 08:59:20'),
(3107, 27, NULL, 0x35382e39372e3232302e323236, 'demo', '2022-06-17 09:48:27'),
(3108, 27, NULL, 0x35382e39372e3232302e323236, 'demo', '2022-06-17 11:35:50'),
(3109, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-20 02:06:24'),
(3110, 27, NULL, 0x35382e39372e3231362e3630, 'demo', '2022-06-20 02:38:12'),
(3111, 27, NULL, 0x35382e39372e3231362e3630, 'demo', '2022-06-20 04:04:44'),
(3112, 27, NULL, 0x35382e39372e3231362e3630, 'demo', '2022-06-20 06:22:11'),
(3113, 27, NULL, 0x35382e39372e3231362e3630, 'demo', '2022-06-20 06:50:40'),
(3114, 27, NULL, 0x35382e39372e3231362e3630, 'demo', '2022-06-20 08:37:01'),
(3115, 27, NULL, 0x35382e39372e3232392e3238, 'demo', '2022-06-21 01:50:22'),
(3116, 27, NULL, 0x35382e39372e3232392e3238, 'demo', '2022-06-21 07:00:50'),
(3117, 27, NULL, 0x35382e39372e3232392e3238, 'demo', '2022-06-21 09:53:35'),
(3118, 27, NULL, 0x35382e39372e3232302e3232, 'demo', '2022-06-22 01:29:27'),
(3119, 27, NULL, 0x35382e39372e3232302e3232, 'demo', '2022-06-22 02:59:58'),
(3120, 27, NULL, 0x35382e39372e3232302e3232, 'demo', '2022-06-22 04:13:50'),
(3121, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-22 04:49:10'),
(3122, 27, NULL, 0x35382e39372e3232302e3232, 'demo', '2022-06-22 07:55:50'),
(3123, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-22 08:09:30'),
(3124, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 01:49:43'),
(3125, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 02:07:31'),
(3126, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 06:47:29'),
(3127, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 07:59:33'),
(3128, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 10:17:18'),
(3129, 27, NULL, 0x35382e39372e3232302e313336, 'demo', '2022-06-23 10:52:52'),
(3130, 27, NULL, 0x35382e39372e3231362e35, 'demo', '2022-06-24 01:40:18'),
(3131, 27, NULL, 0x35382e39372e3231362e35, 'demo', '2022-06-24 01:46:41'),
(3132, 27, NULL, 0x35382e39372e3231362e35, 'demo', '2022-06-24 02:50:32'),
(3133, 27, NULL, 0x35382e39372e3231362e35, 'demo', '2022-06-24 06:22:57'),
(3134, 27, NULL, 0x35382e39372e3231362e35, 'demo', '2022-06-24 07:32:35'),
(3135, 27, NULL, 0x35382e39372e3233302e313235, 'demo', '2022-06-25 01:57:25'),
(3136, 27, NULL, 0x35382e39372e3233302e313235, 'demo', '2022-06-25 02:00:32'),
(3137, 27, NULL, 0x35382e39372e3233302e313235, 'demo', '2022-06-25 03:04:27'),
(3138, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 01:33:48'),
(3139, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 02:57:14'),
(3140, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 05:02:16'),
(3141, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 07:11:18'),
(3142, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 07:35:57'),
(3143, 27, NULL, 0x35382e39372e3231362e313333, 'demo', '2022-06-27 08:09:54'),
(3144, 27, NULL, 0x3130332e392e3139302e313834, 'demo', '2022-06-27 08:50:06'),
(3145, 27, NULL, 0x3130332e3130312e38322e3338, 'demo', '2022-06-28 04:31:24'),
(3146, 27, NULL, 0x35382e39372e3232392e3334, 'demo', '2022-06-28 07:34:28'),
(3147, 27, NULL, 0x35382e39372e3232392e3334, 'demo', '2022-06-28 07:43:59'),
(3148, 27, NULL, 0x35382e39372e3232392e3334, 'demo', '2022-06-28 09:35:55'),
(3149, 27, NULL, 0x35382e39372e3232392e3334, 'demo', '2022-06-28 12:14:04'),
(3150, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-29 02:11:44'),
(3151, 27, NULL, 0x35382e39372e3233302e313733, 'demo', '2022-06-29 02:47:50'),
(3152, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-29 04:38:04'),
(3153, 27, NULL, 0x35382e39372e3233302e313733, 'demo', '2022-06-29 07:19:44'),
(3154, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-06-30 03:48:25'),
(3155, 27, NULL, 0x35382e39372e3233302e3534, 'demo', '2022-06-30 07:11:43'),
(3156, 27, NULL, 0x35382e39372e3233302e3534, 'demo', '2022-06-30 07:24:28'),
(3157, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-04 01:03:42'),
(3158, 27, NULL, 0x35382e39372e3231382e313031, 'demo', '2022-07-04 03:25:21'),
(3159, 27, NULL, 0x35382e39372e3231382e313031, 'demo', '2022-07-04 04:08:31'),
(3160, 27, NULL, 0x35382e39372e3231382e313031, 'demo', '2022-07-04 04:10:37'),
(3161, 27, NULL, 0x35382e39372e3231382e313031, 'demo', '2022-07-04 05:06:29'),
(3162, 27, NULL, 0x35382e39372e3231382e313031, 'demo', '2022-07-04 06:12:04'),
(3163, 31, NULL, 0x35382e39372e3231382e313031, 'test', '2022-07-04 08:18:41'),
(3164, 27, NULL, 0x35382e39372e3231362e313430, 'demo', '2022-07-05 01:05:58'),
(3165, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-05 04:50:10'),
(3166, 27, NULL, 0x35382e39372e3231362e313430, 'demo', '2022-07-05 06:41:30'),
(3167, 27, NULL, 0x35382e39372e3231362e313430, 'demo', '2022-07-05 07:06:52'),
(3168, 27, NULL, 0x35382e39372e3232342e313038, 'demo', '2022-07-06 03:05:55'),
(3169, 27, NULL, 0x35382e39372e3232342e313038, 'demo', '2022-07-06 06:26:55'),
(3170, 27, NULL, 0x35382e39372e3232342e313038, 'demo', '2022-07-06 06:27:07'),
(3171, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-06 09:32:26'),
(3172, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-07 03:55:42'),
(3173, 27, NULL, 0x35382e39372e3231362e323239, 'demo', '2022-07-07 07:31:00'),
(3174, 27, NULL, 0x35382e39372e3232392e3932, 'demo', '2022-07-08 02:21:04'),
(3175, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-08 03:27:22'),
(3176, 27, NULL, 0x35382e39372e3232392e3932, 'demo', '2022-07-08 05:43:20'),
(3177, 27, NULL, 0x35382e39372e3232392e3932, 'demo', '2022-07-08 05:57:09'),
(3178, 45, NULL, 0x35382e39372e3232392e3932, 'viimean', '2022-07-08 05:58:52'),
(3179, 27, NULL, 0x35382e39372e3232392e3932, 'demo', '2022-07-08 06:16:24'),
(3180, 27, NULL, 0x35382e39372e3232392e3932, 'demo', '2022-07-08 07:19:00'),
(3181, 31, NULL, 0x35382e39372e3231362e323232, 'test', '2022-07-09 03:34:06'),
(3182, 27, NULL, 0x35382e39372e3231362e323232, 'demo', '2022-07-09 03:34:27'),
(3183, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-11 02:01:02'),
(3184, 27, NULL, 0x35382e39372e3231362e37, 'demo', '2022-07-11 02:37:42'),
(3185, 27, NULL, 0x35382e39372e3231362e37, 'demo', '2022-07-11 03:20:47'),
(3186, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-11 06:52:14'),
(3187, 27, NULL, 0x35382e39372e3231362e37, 'demo', '2022-07-11 09:03:40'),
(3188, 27, NULL, 0x35382e39372e3231362e37, 'demo', '2022-07-11 09:39:12'),
(3189, 31, NULL, 0x34392e3135362e34362e313439, 'test', '2022-07-11 14:09:19'),
(3190, 31, NULL, 0x34392e3135362e34362e313439, 'test', '2022-07-11 23:59:26'),
(3191, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 01:24:19'),
(3192, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 01:40:41'),
(3193, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 02:19:55'),
(3194, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 02:57:45'),
(3195, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 03:31:21'),
(3196, 46, NULL, 0x35382e39372e3231362e3334, 'heng123', '2022-07-12 03:32:13'),
(3197, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-12 07:14:00'),
(3198, 27, NULL, 0x39362e392e36362e3838, 'demo', '2022-07-12 12:40:20'),
(3199, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-13 04:39:33'),
(3200, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-13 04:46:24'),
(3201, 31, NULL, 0x35382e39372e3231362e3334, 'test', '2022-07-13 07:48:48'),
(3202, 31, NULL, 0x35382e39372e3231362e3334, 'test', '2022-07-13 10:22:20'),
(3203, 27, NULL, 0x35382e39372e3231362e3334, 'demo', '2022-07-13 10:23:35'),
(3204, 27, NULL, 0x35382e39372e3232342e323337, 'demo', '2022-07-14 01:22:07'),
(3205, 31, NULL, 0x35382e39372e3232342e323337, 'test', '2022-07-14 01:31:47'),
(3206, 27, NULL, 0x35382e39372e3232342e323337, 'demo', '2022-07-14 01:32:26'),
(3207, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-14 02:00:46'),
(3208, 27, NULL, 0x35382e39372e3232342e323337, 'demo', '2022-07-14 04:16:21'),
(3209, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-14 07:52:17'),
(3210, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-15 02:21:46'),
(3211, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-15 05:03:30'),
(3212, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-15 06:48:05'),
(3213, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-15 07:40:59'),
(3214, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-15 08:01:01'),
(3215, 27, NULL, 0x35382e39372e3232362e313333, 'demo', '2022-07-15 15:02:07'),
(3216, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-16 03:05:39'),
(3217, 27, NULL, 0x3137352e3130302e32302e323434, 'demo', '2022-07-17 05:15:48'),
(3218, 27, NULL, 0x34352e3230312e3132382e323236, 'demo', '2022-07-17 06:18:41'),
(3219, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-18 03:06:07'),
(3220, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-18 08:07:59'),
(3221, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-18 08:36:42'),
(3222, 27, NULL, 0x39362e392e38382e3532, 'demo', '2022-07-18 08:44:10'),
(3223, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-18 11:12:41'),
(3224, 33, NULL, 0x39362e392e39342e313330, 'sophea', '2022-07-18 11:14:12'),
(3225, 27, NULL, 0x3131372e32302e3131362e313133, 'demo', '2022-07-18 13:12:35'),
(3226, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-19 03:24:32'),
(3227, 31, NULL, 0x39362e392e39342e313330, 'test', '2022-07-19 07:44:46'),
(3228, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-19 09:49:22'),
(3229, 27, NULL, 0x3131372e32302e3131352e313532, 'demo', '2022-07-19 12:50:30'),
(3230, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 02:10:11'),
(3231, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 03:11:00'),
(3232, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 03:31:06'),
(3233, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 03:34:01'),
(3234, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 03:36:53'),
(3235, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 06:12:58'),
(3236, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 08:59:09'),
(3237, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-20 11:06:24'),
(3238, 27, NULL, 0x33362e33372e3138352e313039, 'demo', '2022-07-20 15:55:55'),
(3239, 31, NULL, 0x39362e392e39342e313330, 'test', '2022-07-21 01:34:35'),
(3240, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-21 01:34:50'),
(3241, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-21 01:41:00'),
(3242, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-21 02:55:35'),
(3243, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-21 06:10:33'),
(3244, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-22 06:51:02'),
(3245, 27, NULL, 0x34352e3230312e3132382e323236, 'demo', '2022-07-24 11:05:17'),
(3246, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-26 05:34:30'),
(3247, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-27 03:38:23'),
(3248, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-27 06:25:47'),
(3249, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-27 10:30:00'),
(3250, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-28 06:32:44'),
(3251, 31, NULL, 0x39362e392e39342e313330, 'test', '2022-07-29 04:46:31'),
(3252, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-29 04:46:56'),
(3253, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-07-29 05:23:53'),
(3254, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-02 08:47:36'),
(3255, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-02 09:36:05'),
(3256, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-03 01:56:46'),
(3257, 27, NULL, 0x3131372e32302e3131352e3334, 'demo', '2022-08-03 16:20:29'),
(3258, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-05 03:04:20'),
(3259, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-05 08:40:33'),
(3260, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-05 08:47:34'),
(3261, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-05 09:51:12'),
(3262, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-08 04:09:30'),
(3263, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-08 08:24:30'),
(3264, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-08 10:23:20'),
(3265, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-09 02:28:27'),
(3266, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-09 10:25:11'),
(3267, 27, NULL, 0x35382e39372e3231382e3531, 'demo', '2022-08-09 11:17:54'),
(3268, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-10 04:52:56'),
(3269, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-19 04:24:59'),
(3270, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-22 08:22:35'),
(3271, 27, NULL, 0x39362e392e39342e313239, 'demo', '2022-08-24 08:04:27'),
(3272, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-27 02:37:42'),
(3273, 27, NULL, 0x39362e392e39342e313330, 'demo', '2022-08-27 02:46:36'),
(3274, 48, NULL, 0x39362e392e39342e313330, 'chiyung', '2022-08-27 02:52:20'),
(3275, 48, NULL, 0x3137352e3130302e38382e313030, 'chiyung', '2022-08-27 06:20:31'),
(3276, 48, NULL, 0x39362e392e39342e313330, 'chiyung', '2022-08-29 04:41:41'),
(3277, 48, NULL, 0x3137352e3130302e38382e313030, 'chiyung', '2022-08-31 02:36:53'),
(3278, 27, NULL, 0x3137352e3130302e332e323430, 'demo', '2022-09-01 08:14:43'),
(3279, 27, NULL, 0x3132372e302e302e31, 'demo', '2022-09-02 01:54:40'),
(3280, 27, NULL, 0x3132372e302e302e31, 'demo', '2022-09-27 02:59:22'),
(3281, 27, NULL, 0x3a3a31, 'demo', '2024-05-06 09:18:41'),
(3282, 27, NULL, 0x3a3a31, 'demo', '2024-05-06 10:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

DROP TABLE IF EXISTS `sma_variants`;
CREATE TABLE IF NOT EXISTS `sma_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_variants`
--

INSERT INTO `sma_variants` (`id`, `name`) VALUES
(1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

DROP TABLE IF EXISTS `sma_warehouses`;
CREATE TABLE IF NOT EXISTS `sma_warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, '01', 'AnakutDigital Solution', '<p>Phnom Penh</p>', NULL, '012235561', 'adorableanakut@gmail.com', 0),
(3, '03', 'Service ', '<p>Dental Fix</p>', NULL, '', '', 0),
(4, 'ANAKUT 2', 'ANAKUT 2', '<p>SIEM REAP</p>', NULL, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

DROP TABLE IF EXISTS `sma_warehouses_products`;
CREATE TABLE IF NOT EXISTS `sma_warehouses_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1068 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(228, 227, 1, '1143.0000', NULL, '0.5154'),
(233, 234, 1, '998.0000', NULL, '0.0000'),
(246, 241, 1, '1000.0000', NULL, '0.7015'),
(249, 244, 1, '1000.0000', NULL, '1.9023'),
(250, 245, 1, '1000.0000', NULL, '0.1453'),
(251, 246, 1, '1000.0000', NULL, '1.8115'),
(258, 248, 1, '1000.0000', NULL, '2.8827'),
(259, 249, 1, '1000.0000', NULL, '0.0000'),
(260, 250, 1, '1000.0000', NULL, '0.0000'),
(261, 251, 1, '1000.0000', NULL, '0.0000'),
(262, 252, 1, '1000.0000', NULL, '0.0000'),
(263, 255, 1, '990.0000', NULL, '1.9287'),
(264, 254, 1, '1000.0000', NULL, '1.5862'),
(283, 16, 1, '104.0000', NULL, NULL),
(284, 17, 1, '-3.0000', NULL, NULL),
(285, 5, 1, '7.0000', NULL, NULL),
(286, 4, 1, '8.0000', NULL, NULL),
(287, 3, 1, '8.0000', NULL, NULL),
(288, 2, 1, '-2.0000', NULL, NULL),
(289, 1, 1, '-2.0000', NULL, NULL),
(449, 121, 1, '-1.0000', NULL, NULL),
(450, 158, 1, '-1.0000', NULL, NULL),
(451, 131, 1, '-1.0000', NULL, NULL),
(452, 128, 1, '-1.0000', NULL, NULL),
(453, 129, 1, '-5.0000', NULL, NULL),
(454, 130, 1, '-3.0000', NULL, NULL),
(455, 134, 1, '-3.0000', NULL, NULL),
(456, 135, 1, '-5.0000', NULL, NULL),
(457, 127, 1, '-3.0000', NULL, NULL),
(458, 132, 1, '-3.0000', NULL, NULL),
(459, 110, 1, '-1.0000', NULL, NULL),
(460, 90, 1, '-1.0000', NULL, NULL),
(461, 95, 1, '-1.0000', NULL, NULL),
(462, 102, 1, '-1.0000', NULL, NULL),
(463, 114, 1, '-1.0000', NULL, NULL),
(464, 133, 1, '-1.0000', NULL, NULL),
(465, 104, 1, '-1.0000', NULL, NULL),
(466, 118, 1, '-1.0000', NULL, NULL),
(467, 117, 1, '-1.0000', NULL, NULL),
(468, 120, 1, '-1.0000', NULL, NULL),
(469, 46, 1, '-1.0000', NULL, NULL),
(470, 72, 1, '-1.0000', NULL, NULL),
(471, 71, 1, '-2.0000', NULL, NULL),
(472, 20, 1, '-1.0000', NULL, NULL),
(473, 66, 1, '-1.0000', NULL, NULL),
(538, 227, 1, '1143.0000', NULL, '0.5154'),
(539, 228, 1, '1056.0000', NULL, '0.0000'),
(540, 229, 1, '1082.0000', NULL, '0.0000'),
(541, 230, 1, '994.0000', NULL, NULL),
(542, 231, 1, '30994.0000', NULL, '0.0000'),
(543, 232, 1, '1245.0000', NULL, '0.0000'),
(544, 233, 1, '1100.0000', NULL, '0.0000'),
(545, 234, 1, '998.0000', NULL, NULL),
(546, 235, 1, '1099.0000', NULL, '0.0000'),
(547, 236, 1, '1000.0000', NULL, NULL),
(548, 237, 1, '993.0000', NULL, NULL),
(549, 238, 1, '31001.0000', NULL, '0.0001'),
(550, 239, 1, '1094.0000', NULL, '0.0000'),
(551, 240, 1, '1000.0000', NULL, NULL),
(552, 241, 1, '1000.0000', NULL, NULL),
(553, 242, 1, '31000.0000', NULL, '0.0000'),
(554, 243, 1, '1000.0000', NULL, NULL),
(555, 244, 1, '1000.0000', NULL, NULL),
(556, 245, 1, '1000.0000', NULL, NULL),
(557, 246, 1, '1000.0000', NULL, NULL),
(558, 247, 1, '1000.0000', NULL, NULL),
(559, 248, 1, '1000.0000', NULL, NULL),
(560, 249, 1, '1000.0000', NULL, NULL),
(561, 250, 1, '1000.0000', NULL, NULL),
(562, 251, 1, '1000.0000', NULL, NULL),
(563, 252, 1, '1000.0000', NULL, NULL),
(564, 253, 1, '1000.0000', NULL, NULL),
(565, 254, 1, '1000.0000', NULL, NULL),
(566, 255, 1, '990.0000', NULL, NULL),
(567, 256, 1, '1000.0000', NULL, NULL),
(568, 257, 1, '1000.0000', NULL, NULL),
(569, 258, 1, '1000.0000', NULL, NULL),
(570, 259, 1, '1000.0000', NULL, NULL),
(571, 260, 1, '1000.0000', NULL, NULL),
(572, 261, 1, '1000.0000', NULL, NULL),
(573, 262, 1, '1000.0000', NULL, NULL),
(574, 263, 1, '1000.0000', NULL, NULL),
(575, 264, 1, '1000.0000', NULL, NULL),
(576, 265, 1, '1000.0000', NULL, NULL),
(577, 266, 1, '996.0000', NULL, NULL),
(578, 267, 1, '1000.0000', NULL, NULL),
(579, 268, 1, '1000.0000', NULL, NULL),
(580, 269, 1, '1000.0000', NULL, NULL),
(581, 270, 1, '1000.0000', NULL, NULL),
(582, 271, 1, '1000.0000', NULL, NULL),
(583, 272, 1, '1000.0000', NULL, NULL),
(584, 273, 1, '1000.0000', NULL, NULL),
(585, 274, 1, '1000.0000', NULL, NULL),
(586, 275, 1, '1000.0000', NULL, NULL),
(587, 276, 1, '1000.0000', NULL, NULL),
(588, 277, 1, '1000.0000', NULL, NULL),
(589, 278, 1, '1000.0000', NULL, NULL),
(590, 279, 1, '1000.0000', NULL, NULL),
(591, 280, 1, '1000.0000', NULL, NULL),
(592, 281, 1, '1000.0000', NULL, NULL),
(593, 282, 1, '1000.0000', NULL, NULL),
(594, 283, 1, '1000.0000', NULL, NULL),
(595, 284, 1, '1000.0000', NULL, NULL),
(596, 285, 1, '1000.0000', NULL, NULL),
(597, 286, 1, '1000.0000', NULL, NULL),
(598, 287, 1, '1000.0000', NULL, NULL),
(599, 288, 1, '1098.0000', NULL, '1.8198'),
(600, 289, 1, '1000.0000', NULL, NULL),
(601, 290, 1, '1000.0000', NULL, NULL),
(602, 291, 1, '1000.0000', NULL, NULL),
(603, 292, 1, '1000.0000', NULL, NULL),
(604, 293, 1, '1000.0000', NULL, NULL),
(605, 294, 1, '1000.0000', NULL, NULL),
(606, 295, 1, '1000.0000', NULL, NULL),
(607, 296, 1, '1000.0000', NULL, NULL),
(608, 297, 1, '1000.0000', NULL, NULL),
(609, 298, 1, '1000.0000', NULL, NULL),
(610, 299, 1, '1000.0000', NULL, NULL),
(611, 300, 1, '1000.0000', NULL, NULL),
(612, 301, 1, '1000.0000', NULL, NULL),
(613, 302, 1, '1000.0000', NULL, NULL),
(614, 303, 1, '1000.0000', NULL, NULL),
(615, 304, 1, '1000.0000', NULL, NULL),
(616, 305, 1, '1000.0000', NULL, NULL),
(617, 306, 1, '1000.0000', NULL, NULL),
(618, 307, 1, '1000.0000', NULL, NULL),
(619, 308, 1, '1000.0000', NULL, NULL),
(620, 309, 1, '1000.0000', NULL, NULL),
(621, 310, 1, '1000.0000', NULL, NULL),
(622, 311, 1, '1000.0000', NULL, NULL),
(623, 312, 1, '1000.0000', NULL, NULL),
(625, 314, 1, '1000.0000', NULL, NULL),
(626, 315, 1, '1000.0000', NULL, NULL),
(627, 316, 1, '1000.0000', NULL, NULL),
(628, 317, 1, '1000.0000', NULL, NULL),
(629, 318, 1, '1000.0000', NULL, NULL),
(630, 319, 1, '1000.0000', NULL, NULL),
(631, 320, 1, '1000.0000', NULL, NULL),
(632, 321, 1, '1000.0000', NULL, NULL),
(633, 322, 1, '1000.0000', NULL, NULL),
(634, 323, 1, '1000.0000', NULL, NULL),
(635, 324, 1, '1000.0000', NULL, NULL),
(636, 325, 1, '1000.0000', NULL, NULL),
(637, 326, 1, '1000.0000', NULL, NULL),
(638, 327, 1, '1000.0000', NULL, NULL),
(639, 328, 1, '1000.0000', NULL, NULL),
(640, 329, 1, '1000.0000', NULL, NULL),
(641, 330, 1, '1000.0000', NULL, NULL),
(642, 331, 1, '1000.0000', NULL, NULL),
(643, 332, 1, '1000.0000', NULL, NULL),
(644, 333, 1, '1000.0000', NULL, NULL),
(645, 334, 1, '1000.0000', NULL, NULL),
(646, 335, 1, '1000.0000', NULL, NULL),
(647, 336, 1, '1000.0000', NULL, NULL),
(648, 337, 1, '1000.0000', NULL, NULL),
(649, 338, 1, '1000.0000', NULL, NULL),
(650, 339, 1, '1000.0000', NULL, NULL),
(651, 340, 1, '1000.0000', NULL, NULL),
(652, 341, 1, '1000.0000', NULL, NULL),
(653, 342, 1, '1000.0000', NULL, NULL),
(655, 344, 1, '1000.0000', NULL, NULL),
(656, 345, 1, '1000.0000', NULL, NULL),
(657, 346, 1, '1000.0000', NULL, NULL),
(658, 347, 1, '1000.0000', NULL, NULL),
(659, 348, 1, '1000.0000', NULL, NULL),
(660, 349, 1, '1000.0000', NULL, NULL),
(661, 350, 1, '1000.0000', NULL, NULL),
(662, 351, 1, '1000.0000', NULL, NULL),
(663, 352, 1, '1000.0000', NULL, NULL),
(664, 353, 1, '1000.0000', NULL, NULL),
(665, 354, 1, '1000.0000', NULL, NULL),
(666, 355, 1, '1000.0000', NULL, NULL),
(667, 356, 1, '1000.0000', NULL, NULL),
(668, 357, 1, '1000.0000', NULL, NULL),
(669, 358, 1, '1000.0000', NULL, NULL),
(670, 359, 1, '1000.0000', NULL, NULL),
(671, 360, 1, '1000.0000', NULL, NULL),
(672, 361, 1, '1000.0000', NULL, NULL),
(673, 362, 1, '1000.0000', NULL, NULL),
(674, 363, 1, '1000.0000', NULL, NULL),
(675, 364, 1, '1000.0000', NULL, NULL),
(676, 365, 1, '1000.0000', NULL, NULL),
(677, 366, 1, '1000.0000', NULL, NULL),
(678, 367, 1, '1000.0000', NULL, NULL),
(679, 368, 1, '891.0000', NULL, NULL),
(680, 369, 1, '1000.0000', NULL, NULL),
(681, 370, 1, '999.0000', NULL, NULL),
(682, 371, 1, '1000.0000', NULL, NULL),
(683, 372, 1, '999.0000', NULL, NULL),
(684, 373, 1, '1000.0000', NULL, NULL),
(687, 376, 1, '1000.0000', NULL, NULL),
(688, 377, 1, '1000.0000', NULL, NULL),
(689, 378, 1, '1000.0000', NULL, NULL),
(690, 379, 1, '195.0000', NULL, '0.4550'),
(691, 380, 1, '1145.0000', NULL, '0.0000'),
(692, 381, 1, '1000.0000', NULL, NULL),
(695, 383, 1, '0.0000', NULL, NULL),
(698, 386, 1, '10.0000', NULL, '2.0000'),
(699, 388, 1, '10.0000', NULL, '1000.0000'),
(700, 390, 1, '74.0000', NULL, '3.0000'),
(702, 392, 1, '-105.0000', NULL, '0.2000'),
(722, 406, 1, '1.0000', NULL, NULL),
(737, 416, 1, '199.0000', NULL, '1.0000'),
(742, 419, 1, '110.0000', NULL, '7.0000'),
(747, 415, 1, '100.0000', NULL, '0.3000'),
(749, 422, 1, '-2.0000', NULL, '1.0000'),
(760, 428, 1, '100.0000', NULL, '0.0000'),
(763, 430, 1, '999.0000', NULL, '0.3000'),
(767, 432, 1, '119.0000', NULL, '10.0000'),
(776, 434, 1, '20.0000', NULL, '3.0000'),
(785, 435, 1, '20.0000', NULL, '2.0000'),
(787, 437, 1, '220.0000', NULL, '0.1632'),
(788, 438, 1, '100.0000', NULL, NULL),
(789, 439, 1, '100.0000', NULL, NULL),
(790, 440, 1, '200.0000', NULL, NULL),
(793, 442, 1, '0.0000', NULL, NULL),
(797, 445, 1, '995.0000', NULL, '0.0000'),
(798, 446, 1, '55.0000', NULL, '5.0000'),
(801, 449, 1, '-99999981.0000', NULL, NULL),
(802, 450, 1, '-299999975.0000', NULL, NULL),
(803, 451, 1, '-199999989.0000', NULL, NULL),
(804, 452, 1, '-99999999990.0000', NULL, NULL),
(805, 453, 1, '-99999999990.0000', NULL, NULL),
(806, 454, 1, '-99999999991.0000', NULL, NULL),
(807, 455, 1, '-99999984.0000', NULL, NULL),
(808, 456, 1, '-99999987.0000', NULL, NULL),
(809, 457, 1, '-99999983.0000', NULL, NULL),
(810, 458, 1, '-500000042.0000', NULL, NULL),
(811, 459, 1, '-299999999.0000', NULL, NULL),
(812, 460, 1, '-99999984.0000', NULL, NULL),
(813, 461, 1, '10.0000', NULL, NULL),
(814, 462, 1, '-26.0000', NULL, NULL),
(815, 463, 1, '7.0000', NULL, NULL),
(816, 464, 1, '-123.0000', NULL, NULL),
(817, 465, 1, '10.0000', NULL, NULL),
(818, 466, 1, '10.0000', NULL, NULL),
(819, 467, 1, '10.0000', NULL, NULL),
(820, 468, 1, '1.0000', NULL, NULL),
(822, 470, 1, '7.0000', NULL, NULL),
(824, 472, 1, '6.0000', NULL, NULL),
(825, 473, 1, '9.0000', NULL, NULL),
(826, 474, 1, '9.0000', NULL, NULL),
(827, 475, 1, '10.0000', NULL, NULL),
(828, 476, 1, '10.0000', NULL, NULL),
(829, 477, 1, '10.0000', NULL, NULL),
(830, 478, 1, '9.0000', NULL, NULL),
(831, 479, 1, '10.0000', NULL, NULL),
(832, 480, 1, '10.0000', NULL, NULL),
(833, 481, 1, '10.0000', NULL, NULL),
(834, 482, 1, '10.0000', NULL, NULL),
(871, 483, 1, '110.0000', NULL, '0.0000'),
(872, 485, 1, '150.0000', NULL, '0.0000'),
(874, 487, 1, '-99999999999.9999', NULL, '1.0000'),
(876, 488, 1, '-11.0000', NULL, '10.0000'),
(879, 491, 1, '-1.0000', NULL, '0.0000'),
(880, 492, 1, '40.0000', NULL, '2.0000'),
(881, 493, 1, '18.0000', NULL, '10.0000'),
(882, 379, 3, '0.0000', NULL, '0.0000'),
(883, 494, 1, '10.0000', NULL, '10.0000'),
(885, 494, 3, '0.0000', NULL, '10.0000'),
(886, 231, 3, '-1.0000', NULL, '0.0000'),
(888, 495, 1, '-1.0000', NULL, '0.0000'),
(890, 495, 3, '50.0000', NULL, '0.0000'),
(892, 416, 3, '0.0000', NULL, '1.0000'),
(894, 487, 3, '0.0000', NULL, '1.0000'),
(902, 497, 1, '9.0000', NULL, '0.2500'),
(904, 497, 3, '0.0000', NULL, '0.2500'),
(914, 499, 1, '500.0000', NULL, '0.0250'),
(916, 499, 3, '0.0000', NULL, '0.0250'),
(920, 500, 1, '55.0000', NULL, '0.0000'),
(921, 501, 1, '20.0000', NULL, '0.0000'),
(922, 502, 1, '45.0000', NULL, '1.0000'),
(931, 504, 1, '16.0000', NULL, '3.0000'),
(932, 505, 1, '8.0000', NULL, '0.2500'),
(934, 505, 3, '0.0000', NULL, '0.2500'),
(939, 227, 3, '1.0000', NULL, '0.0000'),
(944, 507, 1, '99.0000', NULL, '0.0000'),
(946, 507, 3, '0.0000', NULL, '0.0000'),
(958, 472, 3, '0.0000', NULL, '5.0000'),
(963, 511, 1, '240.0000', NULL, '0.0000'),
(964, 513, 1, '118.0000', NULL, '0.0000'),
(965, 514, 1, '0.0000', NULL, NULL),
(967, 514, 3, '0.0000', NULL, NULL),
(973, 516, 1, '12.0000', NULL, '0.0000'),
(975, 516, 3, '0.0000', NULL, '0.0000'),
(1002, 506, 1, '-1.0000', NULL, NULL),
(1003, 489, 1, '108.0000', NULL, NULL),
(1004, 486, 1, '-6.0000', NULL, NULL),
(1005, 447, 1, '59.0000', NULL, NULL),
(1006, 436, 1, '8.0000', NULL, NULL),
(1007, 444, 1, '3.0000', NULL, NULL),
(1008, 443, 1, '20.0000', NULL, NULL),
(1009, 433, 1, '10018.0000', NULL, NULL),
(1010, 431, 1, '99.0000', NULL, NULL),
(1011, 421, 1, '19.0000', NULL, NULL),
(1012, 343, 1, '996.7850', NULL, NULL),
(1013, 420, 1, '-991.0000', NULL, NULL),
(1014, 417, 1, '43.0000', NULL, NULL),
(1015, 399, 1, '-28.0000', NULL, NULL),
(1016, 382, 1, '-25.0000', NULL, NULL),
(1017, 408, 1, '16.0000', NULL, NULL),
(1018, 414, 1, '-3.0000', NULL, NULL),
(1019, 401, 1, '-4.0000', NULL, NULL),
(1020, 384, 1, '35.0000', NULL, NULL),
(1021, 403, 1, '230.0000', NULL, NULL),
(1022, 410, 1, '40.0000', NULL, NULL),
(1023, 394, 1, '-16.0000', NULL, NULL),
(1024, 404, 1, '29.0000', NULL, NULL),
(1025, 375, 1, '999.0000', NULL, NULL),
(1026, 389, 1, '-1.0000', NULL, NULL),
(1027, 402, 1, '9.9200', NULL, NULL),
(1028, 398, 1, '30.0000', NULL, NULL),
(1029, 393, 1, '-19.0000', NULL, NULL),
(1030, 391, 1, '-17.0000', NULL, NULL),
(1031, 400, 1, '19.9250', NULL, NULL),
(1032, 313, 1, '997.0000', NULL, NULL),
(1033, 396, 1, '11.9250', NULL, NULL),
(1034, 395, 1, '11.6700', NULL, NULL),
(1036, 510, 1, '-48.0000', NULL, '0.0000'),
(1044, 526, 1, '-13.0000', NULL, '2000.0000'),
(1046, 526, 3, '0.0000', NULL, '2000.0000'),
(1051, 528, 1, '0.0000', NULL, NULL),
(1052, 528, 3, '0.0000', NULL, NULL),
(1053, 508, 1, '1200.0000', NULL, '2500.0000'),
(1054, 533, 1, '10.0000', NULL, '1.0000'),
(1055, 534, 1, '900.0000', NULL, '2.0000'),
(1056, 532, 1, '-1.0000', NULL, '800.0000'),
(1057, 536, 1, '7.0000', NULL, '1.0000'),
(1060, 533, 3, '0.0000', NULL, '1.0000'),
(1061, 538, 1, '20.0000', NULL, '5.0000'),
(1062, 231, 4, '2.0000', NULL, '0.0000'),
(1063, 239, 3, '0.0000', NULL, '0.0000'),
(1064, 239, 4, '1.0000', NULL, '0.0000'),
(1065, 517, 1, '50.0000', NULL, '0.5000'),
(1066, 533, 4, '0.0000', NULL, '1.0000'),
(1067, 539, 4, '-10.0000', NULL, '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

DROP TABLE IF EXISTS `sma_warehouses_products_variants`;
CREATE TABLE IF NOT EXISTS `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products_variants`
--

INSERT INTO `sma_warehouses_products_variants` (`id`, `option_id`, `product_id`, `warehouse_id`, `quantity`, `rack`) VALUES
(1, 1, 379, 1, '-794.0000', NULL),
(2, 2, 379, 1, '8.0000', NULL),
(3, 3, 379, 1, '10.0000', NULL),
(4, 4, 379, 1, '17.0000', NULL),
(5, 5, 422, 2, '15.0000', NULL),
(6, 5, 422, 1, '-2.0000', NULL),
(7, 6, 435, 1, '110.0000', NULL),
(8, 6, 435, 2, '10.0000', NULL),
(9, 7, 435, 1, '110.0000', NULL),
(10, 7, 435, 2, '0.0000', NULL),
(11, 8, 500, 1, '108.0000', NULL),
(12, 8, 500, 2, '14.0000', NULL),
(13, 8, 500, 3, '0.0000', NULL),
(14, 8, 500, 4, '0.0000', NULL),
(15, 8, 500, 5, '0.0000', NULL),
(16, 8, 500, 6, '0.0000', NULL),
(17, 9, 500, 1, '20.0000', NULL),
(18, 9, 500, 2, '10.0000', NULL),
(19, 9, 500, 3, '0.0000', NULL),
(20, 9, 500, 4, '0.0000', NULL),
(21, 9, 500, 5, '0.0000', NULL),
(22, 9, 500, 6, '0.0000', NULL),
(23, 10, 500, 1, '20.0000', NULL),
(24, 10, 500, 2, '10.0000', NULL),
(25, 10, 500, 3, '0.0000', NULL),
(26, 10, 500, 4, '0.0000', NULL),
(27, 10, 500, 5, '0.0000', NULL),
(28, 10, 500, 6, '0.0000', NULL),
(29, 11, 501, 1, '34.0000', NULL),
(30, 11, 501, 2, '0.0000', NULL),
(31, 11, 501, 3, '0.0000', NULL),
(32, 11, 501, 4, '0.0000', NULL),
(33, 11, 501, 5, '0.0000', NULL),
(34, 11, 501, 6, '0.0000', NULL),
(35, 12, 501, 1, '25.0000', NULL),
(36, 12, 501, 2, '0.0000', NULL),
(37, 12, 501, 3, '0.0000', NULL),
(38, 12, 501, 4, '0.0000', NULL),
(39, 12, 501, 5, '0.0000', NULL),
(40, 12, 501, 6, '0.0000', NULL),
(41, 13, 501, 1, '15.0000', NULL),
(42, 13, 501, 2, '0.0000', NULL),
(43, 13, 501, 3, '0.0000', NULL),
(44, 13, 501, 4, '0.0000', NULL),
(45, 13, 501, 5, '0.0000', NULL),
(46, 13, 501, 6, '0.0000', NULL),
(47, 14, 501, 1, '25.0000', NULL),
(48, 14, 501, 2, '0.0000', NULL),
(49, 14, 501, 3, '0.0000', NULL),
(50, 14, 501, 4, '0.0000', NULL),
(51, 14, 501, 5, '0.0000', NULL),
(52, 14, 501, 6, '0.0000', NULL),
(53, 15, 502, 1, '15.0000', NULL),
(54, 15, 502, 2, '0.0000', NULL),
(55, 15, 502, 3, '0.0000', NULL),
(56, 15, 502, 4, '0.0000', NULL),
(57, 15, 502, 5, '0.0000', NULL),
(58, 15, 502, 6, '0.0000', NULL),
(59, 16, 502, 1, '10.0000', NULL),
(60, 16, 502, 2, '0.0000', NULL),
(61, 16, 502, 3, '0.0000', NULL),
(62, 16, 502, 4, '0.0000', NULL),
(63, 16, 502, 5, '0.0000', NULL),
(64, 16, 502, 6, '0.0000', NULL),
(65, 17, 502, 1, '10.0000', NULL),
(66, 17, 502, 2, '0.0000', NULL),
(67, 17, 502, 3, '0.0000', NULL),
(68, 17, 502, 4, '0.0000', NULL),
(69, 17, 502, 5, '0.0000', NULL),
(70, 17, 502, 6, '0.0000', NULL),
(71, 18, 502, 1, '10.0000', NULL),
(72, 18, 502, 2, '0.0000', NULL),
(73, 18, 502, 3, '0.0000', NULL),
(74, 18, 502, 4, '0.0000', NULL),
(75, 18, 502, 5, '0.0000', NULL),
(76, 18, 502, 6, '0.0000', NULL),
(77, 20, 505, 2, '3.0000', NULL),
(78, 20, 505, 1, '-7.0000', NULL),
(79, 21, 526, 1, '-13.0000', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
