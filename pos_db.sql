-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2026 at 02:59 AM
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
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

DROP TABLE IF EXISTS `about_sections`;
CREATE TABLE IF NOT EXISTS `about_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `title`, `description`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Our Story', 'Founded to make everyday shopping faster and friendlier, we\'ve grown from a small corner shop into a modern retail experience powered by simple, reliable technology.', 1, 1, '2025-09-02 09:27:44', '2025-09-02 09:27:44'),
(2, 'Our Mission', 'To deliver great products, fair prices, and seamless service—every visit, every time.', 1, 2, '2025-09-02 09:27:44', '2025-09-02 09:27:44'),
(3, 'Our Vision', 'A community where shopping is effortless, connected, and personalized through smart retail tools.', 1, 3, '2025-09-02 09:27:44', '2025-09-02 09:27:44'),
(4, 'Our Values', 'Integrity in every transaction, care for our customers, teamwork with our people, and constant improvement in how we serve.', 1, 4, '2025-09-02 09:33:54', '2025-09-02 09:33:54'),
(5, 'What We Do', 'We combine curated products with efficient checkout and clear pricing, supported by an easy-to-use POS system.', 1, 5, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(6, 'Why Choose Us', 'Transparent pricing, responsive support, and a consistently smooth in-store and online experience.', 1, 6, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(7, 'Our Team', 'A dedicated group of operators, merchandisers, and technologists focused on making each guest visit better than the last.', 1, 7, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(8, 'Community & Sustainability', 'We source responsibly, reduce waste, and support local partners to create lasting value.', 1, 8, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(9, 'Quality Assurance', 'We monitor stock freshness, verify suppliers, and continuously review customer feedback to improve.', 1, 9, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(10, 'Customer Commitment', 'Your time matters—expect quick service, helpful staff, and straightforward returns.', 1, 10, '2025-09-02 09:35:42', '2025-09-02 09:35:42'),
(11, 'Our Values', 'Integrity in every transaction, care for our customers, teamwork with our people, and constant improvement in how we serve.', 1, 4, '2025-09-02 09:35:45', '2025-09-02 09:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('Food','Clothes') NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text,
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `parent_id` (`parent_id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `parent_id`, `description`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Beverages', 'Food', NULL, 'Drinks and beverages', 1, 1, '2025-08-13 02:38:03', '2025-08-13 02:38:03'),
(2, 'Snacks', 'Food', NULL, 'Snack foods and treats', 1, 2, '2025-08-13 02:38:03', '2025-08-13 02:38:03'),
(3, 'Groceries', 'Food', NULL, 'Basic grocery items', 1, 3, '2025-08-13 02:38:03', '2025-08-13 02:38:03'),
(4, 'Personal Care', 'Food', NULL, 'Personal care products', 1, 4, '2025-08-13 02:38:03', '2025-08-13 02:38:03'),
(5, 'Men\'s Clothing', 'Clothes', NULL, 'Clothing for men', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(6, 'Women\'s Clothing', 'Clothes', NULL, 'Clothing for women', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(7, 'Kids Clothing', 'Clothes', NULL, 'Clothing for children', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(8, 'Shoes', 'Clothes', NULL, 'Footwear for all ages', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(9, 'Accessories', 'Clothes', NULL, 'Fashion accessories', 1, 5, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(10, 'T-Shirts', 'Clothes', 5, 'Men\'s t-shirts and casual tops', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(11, 'Shirts', 'Clothes', 5, 'Men\'s formal and casual shirts', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(12, 'Pants', 'Clothes', 5, 'Men\'s pants and trousers', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(13, 'Jackets', 'Clothes', 5, 'Men\'s jackets and coats', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(14, 'Shorts', 'Clothes', 5, 'Men\'s shorts', 1, 5, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(15, 'Dresses', 'Clothes', 6, 'Women\'s dresses', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(16, 'Tops', 'Clothes', 6, 'Women\'s tops and blouses', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(17, 'Jeans', 'Clothes', 6, 'Women\'s jeans and denim', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(18, 'Skirts', 'Clothes', 6, 'Women\'s skirts', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(19, 'Pants', 'Clothes', 6, 'Women\'s pants and trousers', 1, 5, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(20, 'Boys Clothing', 'Clothes', 7, 'Clothing for boys', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(21, 'Girls Clothing', 'Clothes', 7, 'Clothing for girls', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(22, 'School Uniforms', 'Clothes', 7, 'School uniforms for children', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(23, 'Baby Clothing', 'Clothes', 7, 'Clothing for babies and toddlers', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(24, 'Men\'s Shoes', 'Clothes', 8, 'Shoes for men', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(25, 'Women\'s Shoes', 'Clothes', 8, 'Shoes for women', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(26, 'Kids Shoes', 'Clothes', 8, 'Shoes for children', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(27, 'Sports Shoes', 'Clothes', 8, 'Athletic and sports footwear', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(28, 'Formal Shoes', 'Clothes', 8, 'Formal and dress shoes', 1, 5, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(29, 'Bags', 'Clothes', 9, 'Handbags, backpacks, and luggage', 1, 1, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(30, 'Jewelry', 'Clothes', 9, 'Necklaces, rings, earrings', 1, 2, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(31, 'Watches', 'Clothes', 9, 'Wristwatches and timepieces', 1, 3, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(32, 'Belts', 'Clothes', 9, 'Belts and buckles', 1, 4, '2025-08-13 02:38:53', '2025-08-13 02:38:53'),
(33, 'Hats', 'Clothes', 9, 'Caps, hats, and headwear', 1, 5, '2025-08-13 02:38:53', '2025-08-13 02:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

DROP TABLE IF EXISTS `chart_of_accounts`;
CREATE TABLE IF NOT EXISTS `chart_of_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_code` varchar(20) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_type` enum('asset','liability','equity','revenue','expense') NOT NULL,
  `parent_account_id` int(11) DEFAULT NULL,
  `description` text,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_code` (`account_code`),
  KEY `parent_account_id` (`parent_account_id`),
  KEY `account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `account_code`, `account_name`, `account_type`, `parent_account_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1000', 'Current Assets', 'asset', NULL, 'All current assets', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(2, '1100', 'Cash and Cash Equivalents', 'asset', 1, 'Cash, bank accounts, petty cash', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(3, '1200', 'Accounts Receivable', 'asset', 1, 'Money owed by customers', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(4, '1300', 'Inventory', 'asset', 1, 'Product inventory', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(5, '1400', 'Prepaid Expenses', 'asset', 1, 'Prepaid rent, insurance, etc.', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(6, '2000', 'Current Liabilities', 'liability', NULL, 'All current liabilities', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(7, '2100', 'Accounts Payable', 'liability', 6, 'Money owed to suppliers', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(8, '2200', 'Sales Tax Payable', 'liability', 6, 'Sales tax collected', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(9, '2300', 'Accrued Expenses', 'liability', 6, 'Accrued wages, utilities, etc.', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(10, '3000', 'Owner Equity', 'equity', NULL, 'Owner investments and retained earnings', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(11, '3100', 'Owner Investment', 'equity', 10, 'Initial and additional owner investments', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(12, '3200', 'Retained Earnings', 'equity', 10, 'Accumulated profits/losses', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(13, '4000', 'Revenue', 'revenue', NULL, 'All revenue accounts', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(14, '4100', 'Sales Revenue', 'revenue', 13, 'Product sales revenue', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(15, '4200', 'Discount Revenue', 'revenue', 13, 'Revenue from discounts given', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(16, '5000', 'Expenses', 'expense', NULL, 'All expense accounts', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(17, '5100', 'Cost of Goods Sold', 'expense', 16, 'Cost of products sold', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(18, '5200', 'Operating Expenses', 'expense', 16, 'General operating expenses', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(19, '5210', 'Rent Expense', 'expense', 18, 'Store rent', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(20, '5220', 'Utilities Expense', 'expense', 18, 'Electricity, water, internet', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(21, '5230', 'Salaries and Wages', 'expense', 18, 'Employee salaries and wages', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(22, '5240', 'Advertising Expense', 'expense', 18, 'Marketing and advertising costs', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(23, '5250', 'Office Supplies', 'expense', 18, 'Office and store supplies', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(24, '5260', 'Insurance Expense', 'expense', 18, 'Business insurance', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46'),
(25, '5270', 'Depreciation Expense', 'expense', 18, 'Equipment and furniture depreciation', 1, '2025-07-07 04:44:46', '2025-07-07 04:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'Main Office', 'contact@example.com', '+855 12 345 678', '123 Main St, Phnom Penh', 'Primary contact', '2025-09-02 09:03:42', '2025-09-02 09:03:42'),
(3, 'Main Office', 'contact@yourstore.com', '+855 12 345 678', '123 Main St, Phnom Penh', 'Primary contact', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(4, 'Customer Support', 'support@yourstore.com', '+855 98 111 222', 'Phnom Penh', 'Support hotline', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(5, 'Sales Dept', 'sales@yourstore.com', '+855 97 222 333', 'Phnom Penh', 'Bulk orders and pricing', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(6, 'Accounting', 'accounting@yourstore.com', '+855 93 333 444', 'Phnom Penh', 'Invoices and payments', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(7, 'HR Department', 'hr@yourstore.com', '+855 85 444 555', 'Phnom Penh', 'Recruitment & HR', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(8, 'Warehouse 1', 'warehouse1@yourstore.com', '+855 99 555 666', 'Kandal Province', 'Stock and logistics', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(9, 'Warehouse 2', 'warehouse2@yourstore.com', '+855 88 666 777', 'Siem Reap', 'Secondary warehouse', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(10, 'Store Branch A', 'branch.a@yourstore.com', '+855 87 777 888', 'Battambang', 'Retail branch A', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(11, 'Store Branch B', 'branch.b@yourstore.com', '+855 86 888 999', 'Sihanoukville', 'Retail branch B', '2025-09-02 09:05:35', '2025-09-02 09:05:35'),
(12, 'Marketing', 'marketing@yourstore.com', '+855 15 999 000', 'Phnom Penh', 'Campaigns & media', '2025-09-02 09:05:35', '2025-09-02 09:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `is_default`, `is_active`, `created_at`) VALUES
(1, 'USD', 'US Dollar', '$', 1, 1, '2025-07-09 07:36:39'),
(2, 'EUR', 'Euro', '€', 0, 1, '2025-07-09 07:36:39'),
(3, 'GBP', 'British Pound', '£', 0, 1, '2025-07-09 07:36:39'),
(4, 'JPY', 'Japanese Yen', '¥', 0, 1, '2025-07-09 07:36:39'),
(5, 'CAD', 'Canadian Dollar', 'C$', 0, 1, '2025-07-09 07:36:39'),
(6, 'AUD', 'Australian Dollar', 'A$', 0, 1, '2025-07-09 07:36:39'),
(7, 'CHF', 'Swiss Franc', 'CHF', 0, 1, '2025-07-09 07:36:39'),
(8, 'CNY', 'Chinese Yuan', '¥', 0, 1, '2025-07-09 07:36:39'),
(9, 'INR', 'Indian Rupee', '₹', 0, 1, '2025-07-09 07:36:39'),
(10, 'KRW', 'South Korean Won', '₩', 0, 1, '2025-07-09 07:36:39'),
(11, 'SGD', 'Singapore Dollar', 'S$', 0, 1, '2025-07-09 07:36:39'),
(12, 'HKD', 'Hong Kong Dollar', 'HK$', 0, 1, '2025-07-09 07:36:39'),
(13, 'THB', 'Thai Baht', '฿', 0, 1, '2025-07-09 07:36:39'),
(14, 'PHP', 'Philippine Peso', '₱', 0, 1, '2025-07-09 07:36:39'),
(15, 'MYR', 'Malaysian Ringgit', 'RM', 0, 1, '2025-07-09 07:36:39'),
(16, 'IDR', 'Indonesian Rupiah', 'Rp', 0, 1, '2025-07-09 07:36:39'),
(17, 'VND', 'Vietnamese Dong', '₫', 0, 1, '2025-07-09 07:36:39'),
(18, 'KHR', 'Cambodian Riel', '៛', 0, 1, '2025-07-09 07:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rates`
--

DROP TABLE IF EXISTS `exchange_rates`;
CREATE TABLE IF NOT EXISTS `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `target_currency` varchar(3) NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_currency_pair` (`base_currency`,`target_currency`),
  KEY `idx_base_currency` (`base_currency`),
  KEY `idx_target_currency` (`target_currency`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exchange_rates`
--

INSERT INTO `exchange_rates` (`id`, `base_currency`, `target_currency`, `rate`, `last_updated`, `is_active`) VALUES
(37, 'USD', 'KHR', '4100.000000', '2025-07-09 08:31:38', 1),
(36, 'USD', 'VND', '9999.999999', '2025-07-09 08:31:38', 1),
(35, 'USD', 'IDR', '9999.999999', '2025-07-09 08:31:38', 1),
(34, 'USD', 'MYR', '4.150000', '2025-07-09 08:31:38', 1),
(33, 'USD', 'PHP', '50.800000', '2025-07-09 08:31:38', 1),
(32, 'USD', 'THB', '33.500000', '2025-07-09 08:31:38', 1),
(31, 'USD', 'HKD', '7.780000', '2025-07-09 08:31:38', 1),
(30, 'USD', 'SGD', '1.350000', '2025-07-09 08:31:38', 1),
(29, 'USD', 'KRW', '1150.000000', '2025-07-09 08:31:38', 1),
(28, 'USD', 'INR', '74.500000', '2025-07-09 08:31:38', 1),
(27, 'USD', 'CNY', '6.450000', '2025-07-09 08:31:38', 1),
(26, 'USD', 'CHF', '0.920000', '2025-07-09 08:31:38', 1),
(25, 'USD', 'AUD', '1.350000', '2025-07-09 08:31:38', 1),
(24, 'USD', 'CAD', '1.250000', '2025-07-09 08:31:38', 1),
(23, 'USD', 'JPY', '110.000000', '2025-07-09 08:31:38', 1),
(22, 'USD', 'GBP', '0.730000', '2025-07-09 08:31:38', 1),
(21, 'USD', 'EUR', '0.850000', '2025-07-09 08:31:38', 1),
(20, 'USD', 'USD', '1.000000', '2025-07-09 08:31:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_number` varchar(20) NOT NULL,
  `expense_date` date NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_email` varchar(100) DEFAULT NULL,
  `vendor_phone` varchar(20) DEFAULT NULL,
  `description` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','check','bank_transfer','credit_card','other') DEFAULT 'cash',
  `payment_status` enum('paid','pending','cancelled') DEFAULT 'pending',
  `expense_category` varchar(50) DEFAULT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_number` (`expense_number`),
  KEY `expense_date` (`expense_date`),
  KEY `payment_status` (`payment_status`),
  KEY `created_by` (`created_by`),
  KEY `idx_expenses_date` (`expense_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financial_periods`
--

DROP TABLE IF EXISTS `financial_periods`;
CREATE TABLE IF NOT EXISTS `financial_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_closed` tinyint(1) DEFAULT '0',
  `closing_date` timestamp NULL DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `is_closed` (`is_closed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_ledger`
--

DROP TABLE IF EXISTS `general_ledger`;
CREATE TABLE IF NOT EXISTS `general_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `opening_debit` decimal(12,2) DEFAULT '0.00',
  `opening_credit` decimal(12,2) DEFAULT '0.00',
  `period_debit` decimal(12,2) DEFAULT '0.00',
  `period_credit` decimal(12,2) DEFAULT '0.00',
  `closing_debit` decimal(12,2) DEFAULT '0.00',
  `closing_credit` decimal(12,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_period` (`account_id`,`period_id`),
  KEY `account_id` (`account_id`),
  KEY `period_id` (`period_id`),
  KEY `idx_general_ledger_period` (`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_adjustments`
--

DROP TABLE IF EXISTS `inventory_adjustments`;
CREATE TABLE IF NOT EXISTS `inventory_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `adjustment_type` enum('manual','restock','damage','correction','sale','return','stock_in','stock_out') NOT NULL DEFAULT 'manual',
  `old_quantity` int(11) NOT NULL DEFAULT '0',
  `new_quantity` int(11) NOT NULL DEFAULT '0',
  `quantity_change` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `adjusted_by` int(11) NOT NULL,
  `adjusted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `adjusted_by` (`adjusted_by`),
  KEY `adjusted_at` (`adjusted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_adjustments`
--

INSERT INTO `inventory_adjustments` (`id`, `product_id`, `adjustment_type`, `old_quantity`, `new_quantity`, `quantity_change`, `notes`, `adjusted_by`, `adjusted_at`) VALUES
(1, 17, 'stock_in', 34, 50, 16, 'Stock In: 16 units', 2, '2025-07-12 04:31:26'),
(2, 1, 'stock_in', 73, 100, 27, 'Stock In: 27 units', 2, '2025-07-12 04:32:31'),
(3, 9, 'manual', -2, 200, 202, '', 2, '2025-08-13 04:31:23');

--
-- Triggers `inventory_adjustments`
--
DROP TRIGGER IF EXISTS `calculate_quantity_change`;
DELIMITER $$
CREATE TRIGGER `calculate_quantity_change` BEFORE INSERT ON `inventory_adjustments` FOR EACH ROW BEGIN
    SET NEW.quantity_change = NEW.new_quantity - NEW.old_quantity;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

DROP TABLE IF EXISTS `journal_entries`;
CREATE TABLE IF NOT EXISTS `journal_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_number` varchar(20) NOT NULL,
  `entry_date` date NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `description` text,
  `entry_type` enum('sale','purchase','expense','adjustment','transfer','opening_balance') NOT NULL,
  `total_debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_number` (`entry_number`),
  KEY `entry_date` (`entry_date`),
  KEY `entry_type` (`entry_type`),
  KEY `created_by` (`created_by`),
  KEY `idx_journal_entries_date` (`entry_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entry_details`
--

DROP TABLE IF EXISTS `journal_entry_details`;
CREATE TABLE IF NOT EXISTS `journal_entry_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_entry_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `debit_amount` decimal(12,2) DEFAULT '0.00',
  `credit_amount` decimal(12,2) DEFAULT '0.00',
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `journal_entry_id` (`journal_entry_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `currency_code` varchar(3) DEFAULT 'USD',
  `exchange_rate` decimal(10,6) DEFAULT '1.000000',
  `original_amount` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `journal_entry_id` int(11) DEFAULT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `payment_method` varchar(50) DEFAULT NULL,
  `card_type` varchar(20) DEFAULT NULL,
  `card_number` varchar(20) DEFAULT NULL,
  `card_expiry` varchar(10) DEFAULT NULL,
  `card_cvv` varchar(10) DEFAULT NULL,
  `card_holder` varchar(100) DEFAULT NULL,
  `amount_tendered` decimal(10,2) DEFAULT '0.00',
  `change_amount` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_customer_email` (`customer_email`),
  KEY `idx_payment_method` (`payment_method`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_currency_code` (`currency_code`),
  KEY `idx_card_type` (`card_type`),
  KEY `idx_payment_method_card` (`payment_method`,`card_type`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_name`, `customer_email`, `total_amount`, `currency_code`, `exchange_rate`, `original_amount`, `subtotal`, `tax_amount`, `discount_amount`, `journal_entry_id`, `status`, `payment_method`, `card_type`, `card_number`, `card_expiry`, `card_cvv`, `card_holder`, `amount_tendered`, `change_amount`, `created_at`, `updated_at`) VALUES
(7, 10, 'customers1', 'customers1@gmail.com', '2.50', 'USD', '1.000000', NULL, '0.00', '0.00', '0.00', NULL, 'completed', 'test', NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '2025-07-08 08:21:55', '2025-07-09 09:16:58'),
(9, 10, 'customer1', 'customer1@gmail.com', '35.00', 'USD', '1.000000', NULL, '0.00', '0.00', '0.00', NULL, 'completed', 'card', NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '2025-07-09 03:17:18', '2025-07-09 03:17:18'),
(37, 10, 'customers1', 'customers1@gmail.com', '74.25', 'USD', '1.000000', '74.25', '0.00', '0.00', '0.00', NULL, 'completed', 'card', NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '2025-08-14 12:29:17', '2025-08-14 12:29:17'),
(36, 13, 'customers3', 'chamrern3@gmail.com', '23.97', 'USD', '1.000000', '23.97', '0.00', '0.00', '0.00', NULL, 'completed', 'card', NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '2025-08-12 03:48:07', '2025-08-12 03:48:07'),
(40, 10, 'customers1', 'customers1@gmail.com', '140.00', 'USD', '1.000000', '140.00', '0.00', '0.00', '0.00', NULL, 'completed', 'card', 'amex', '4234 2342 3423 4234', '42/34', '424', 'JONE ERR', '0.00', '0.00', '2025-08-14 12:54:15', '2025-08-14 12:56:01'),
(39, 10, 'customers1', 'customers1@gmail.com', '2.50', 'USD', '1.000000', '2.50', '0.00', '0.00', '0.00', NULL, 'completed', 'card', 'mastercard', '4343 4343 4343 4434', '43/43', '434', 'JONE', '5.00', '0.00', '2025-08-14 12:50:43', '2025-08-14 12:50:43'),
(38, 10, 'customers1', 'customers1@gmail.com', '23.94', 'USD', '1.000000', '23.94', '0.00', '0.00', '0.00', NULL, 'pending', 'card', 'visa', '1333 3313 1313 1313', '31/31', '211', 'CHAMRERN1', '0.00', '0.00', '2025-08-14 12:37:11', '2025-08-14 12:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency_code` varchar(3) DEFAULT 'USD',
  `exchange_rate` decimal(10,6) DEFAULT '1.000000',
  `cost_price` decimal(10,2) DEFAULT '0.00',
  `profit_margin` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `idx_currency_code` (`currency_code`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `currency_code`, `exchange_rate`, `cost_price`, `profit_margin`) VALUES
(1, 1, 1, 2, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(2, 2, 16, 2, '4.00', 'USD', '1.000000', '0.00', '0.00'),
(3, 3, 11, 2, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(4, 3, 2, 2, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(5, 3, 4, 2, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(6, 3, 3, 2, '1.75', 'USD', '1.000000', '0.00', '0.00'),
(7, 4, 14, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(8, 4, 16, 1, '4.00', 'USD', '1.000000', '0.00', '0.00'),
(9, 4, 11, 2, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(10, 5, 14, 5, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(11, 6, 7, 3, '3.99', 'USD', '1.000000', '0.00', '0.00'),
(12, 7, 1, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(13, 8, 11, 4, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(14, 9, 18, 10, '3.50', 'USD', '1.000000', '0.00', '0.00'),
(15, 10, 3, 2, '1.75', 'USD', '1.000000', '0.00', '0.00'),
(16, 11, 9, 3, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(17, 12, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(18, 13, 16, 1, '4.00', 'USD', '1.000000', '0.00', '0.00'),
(19, 14, 15, 1, '2.75', 'USD', '1.000000', '0.00', '0.00'),
(20, 15, 12, 3, '2.25', 'USD', '1.000000', '0.00', '0.00'),
(21, 16, 13, 1, '2.75', 'USD', '1.000000', '0.00', '0.00'),
(22, 17, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(23, 18, 6, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(24, 19, 1, 3, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(25, 20, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(26, 21, 6, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(27, 22, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(28, 23, 1, 3, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(29, 24, 6, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(30, 24, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(31, 29, 4, 1, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(32, 30, 19, 3, '32759.00', 'KHR', '4100.000000', '0.00', '0.00'),
(33, 31, 7, 1, '3.99', 'USD', '1.000000', '0.00', '0.00'),
(34, 32, 4, 1, '3.00', 'USD', '1.000000', '0.00', '0.00'),
(35, 33, 1, 5, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(36, 34, 1, 1, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(37, 34, 7, 1, '3.99', 'USD', '1.000000', '0.00', '0.00'),
(38, 35, 7, 1, '3.99', 'USD', '1.000000', '0.00', '0.00'),
(39, 36, 19, 3, '7.99', 'USD', '1.000000', '0.00', '0.00'),
(40, 37, 44, 1, '65.00', 'USD', '1.000000', '0.00', '0.00'),
(41, 37, 3, 3, '1.75', 'USD', '1.000000', '0.00', '0.00'),
(42, 37, 10, 2, '2.00', 'USD', '1.000000', '0.00', '0.00'),
(43, 38, 7, 6, '3.99', 'USD', '1.000000', '0.00', '0.00'),
(44, 39, 6, 1, '2.50', 'USD', '1.000000', '0.00', '0.00'),
(45, 40, 43, 4, '35.00', 'USD', '1.000000', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT '0',
  `category` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `type` enum('Food','Clothes') DEFAULT 'Food',
  `size` varchar(20) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`),
  UNIQUE KEY `barcode` (`barcode`),
  UNIQUE KEY `qr_code` (`qr_code`),
  KEY `idx_product_type` (`type`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_subcategory_id` (`subcategory_id`),
  KEY `idx_product_size` (`size`),
  KEY `idx_product_color` (`color`),
  KEY `idx_product_material` (`material`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `barcode`, `qr_code`, `name`, `description`, `price`, `discount_price`, `stock_quantity`, `category`, `category_id`, `subcategory_id`, `type`, `size`, `weight`, `color`, `material`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'PROD001', 'BAR000001', 'QR000001', 'Coca Cola', 'Refreshing carbonated soft drink - 330ml can', '2.50', '2.00', 100, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/coke.jpg', '2025-07-04 03:39:03', '2025-07-12 04:32:31'),
(2, 'PROD002', 'BAR000002', 'QR000002', 'Pepsi', 'Classic cola drink - 330ml can', '2.50', NULL, 83, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/pepsi.jpg', '2025-07-04 03:39:03', '2025-07-07 04:34:35'),
(3, 'PROD003', 'BAR000003', 'QR000003', 'Sprite', 'Lemon-lime flavored soft drink - 330ml can', '2.00', '1.75', 53, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/sprite.jpg', '2025-07-04 03:39:03', '2025-08-14 12:29:17'),
(4, 'PROD004', 'BAR000004', 'QR000004', 'Red Bull', 'Energy drink - 250ml can', '3.50', '3.00', 41, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/redbull.jpg', '2025-07-04 03:39:03', '2025-07-09 09:11:41'),
(5, 'PROD005', 'BAR000005', 'QR000005', 'Mineral Water', 'Pure drinking water - 500ml bottle', '1.00', NULL, 200, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/water.jpg', '2025-07-04 03:39:03', '2025-07-07 04:34:35'),
(6, 'PROD006', 'BAR000006', 'QR000006', 'Lays Classic', 'Original potato chips - 150g bag', '3.00', '2.50', 69, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/lays.jpg', '2025-07-04 03:39:03', '2025-08-14 12:50:43'),
(7, 'PROD007', 'BAR000007', 'QR000007', 'Doritos Nacho', 'Cheese flavored tortilla chips - 180g bag', '4.50', '3.99', 37, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/products/product_7_68678fa8ee106.jpg', '2025-07-04 03:39:03', '2025-08-14 12:37:11'),
(8, 'PROD008', 'BAR000008', 'QR000008', 'Pringles Original', 'Stackable potato chips - 110g can', '5.00', '4.50', 40, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:39:03', '2025-07-07 04:34:35'),
(9, 'PROD009', 'BAR000009', 'QR000009', 'Oreo', 'Chocolate sandwich cookies', '3.50', '3.00', 200, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/snickers.jpg', '2025-07-04 03:39:03', '2025-08-13 04:31:23'),
(10, 'PROD010', 'BAR000010', 'QR000010', 'KitKat', 'Chocolate wafer bar - 4 finger pack', '2.25', '2.00', 61, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/kitkat.jpg', '2025-07-04 03:39:03', '2025-08-14 12:29:17'),
(11, 'PROD011', 'BAR000011', 'QR000011', 'Oreo Cookies', 'Chocolate sandwich cookies - 137g pack', '3.50', '3.00', 47, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/oreo.jpg', '2025-07-04 03:47:30', '2025-07-09 02:18:27'),
(12, 'PROD012', 'BAR000012', 'QR000012', 'Twix', 'Chocolate bar with caramel and cookie - 50g', '2.50', '2.25', 67, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/twix.jpg', '2025-07-04 03:47:30', '2025-07-09 04:10:00'),
(13, 'PROD013', 'BAR000013', 'QR000013', 'M&M\'s Peanut', 'Chocolate candies with peanuts - 100g bag', '3.00', '2.75', 43, 'Snacks', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/products/product_13_686790925ed75.jpg', '2025-07-04 03:47:30', '2025-07-09 04:10:58'),
(14, 'PROD014', 'BAR000014', 'QR000014', 'White Bread', 'Fresh white bread loaf - 500g', '2.50', NULL, 24, 'Groceries', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-08 07:29:54'),
(15, 'PROD015', 'BAR000015', 'QR000015', 'Milk', 'Fresh whole milk - 1 liter', '3.00', '2.75', 24, 'Groceries', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-09 04:08:46'),
(16, 'PROD016', 'BAR000016', 'QR000016', 'Eggs', 'Fresh farm eggs - 12 pieces', '4.50', '4.00', 36, 'Groceries', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-09 03:53:24'),
(17, 'PROD017', 'BAR000017', 'QR000017', 'Butter', 'Salted butter - 250g block', '3.75', '3.50', 50, 'Groceries', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-12 04:31:26'),
(18, 'PROD018', 'BAR000018', 'QR000018', 'Toothpaste', 'Fresh mint toothpaste - 100ml tube', '4.00', '3.50', 50, 'Personal Care', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-09 03:17:18'),
(19, 'PROD019', 'BAR000019', 'QR000019', 'Shampoo', 'Moisturizing shampoo - 400ml bottle', '8.50', '7.99', 24, 'Personal Care', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-08-12 03:48:07'),
(20, 'PROD020', 'BAR000020', 'QR000020', 'Soap Bar', 'Antibacterial soap bar - 100g', '2.00', '1.75', 80, 'Personal Care', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, NULL, '2025-07-04 03:47:30', '2025-07-07 04:34:35'),
(21, 'PROD021', 'BAR000021', 'QR000021', 'Testing', 'Testing', '20.00', '10.00', 0, 'Testing', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/products/product_21_686753bc59b78.jpg', '2025-07-04 03:59:12', '2025-07-07 04:34:35'),
(22, 'PROD023', 'BAR000022', 'QR000022', 'Testing1', 'Testing1', '30.00', '15.00', 0, 'Beverages', NULL, NULL, 'Food', NULL, NULL, NULL, NULL, 'images/products/product_22_686753b1796ed.jpg', '2025-07-04 04:00:48', '2025-07-07 04:34:35'),
(41, 'CLO008', '1234567890130', 'CLO008_QR', 'Women\'s Summer Dress', 'Light and breezy summer dress perfect for warm weather', '30.00', '25.00', 35, 'Clothing', NULL, NULL, 'Clothes', 'S', '250.00', 'Yellow', 'Cotton', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(40, 'CLO007', '1234567890129', 'CLO007_QR', 'Women\'s Blouse', 'Elegant blouse for women, suitable for professional and casual settings', '28.00', NULL, 30, 'Clothing', NULL, NULL, 'Clothes', 'M', '200.00', 'Pink', 'Silk', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(39, 'CLO006', '1234567890128', 'CLO006_QR', 'Men\'s Formal Shirt', 'Elegant formal shirt for men, suitable for office and special occasions', '40.00', NULL, 40, 'Clothing', NULL, NULL, 'Clothes', 'L', '280.00', 'White', 'Cotton', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(38, 'CLO005', '1234567890127', 'CLO005_QR', 'Men\'s Casual Pants', 'Comfortable casual pants for men, perfect for everyday wear', '32.00', '28.00', 40, 'Apparel', NULL, NULL, 'Clothes', '32', '300.00', 'Khaki', 'Cotton', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(37, 'CLO004', '1234567890126', 'CLO004_QR', 'Unisex Hoodie', 'Comfortable hoodie suitable for both men and women, great for casual wear', '35.00', NULL, 45, 'Apparel', NULL, NULL, 'Clothes', 'L', '350.00', 'Gray', 'Cotton Blend', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(36, 'CLO003', '1234567890125', 'CLO003_QR', 'Kids Winter Jacket', 'Warm and cozy winter jacket for children, waterproof and insulated', '35.00', '30.00', 25, 'Apparel', NULL, NULL, 'Clothes', 'S', '500.00', 'Red', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(35, 'CLO002', '1234567890124', 'CLO002_QR', 'Women\'s Denim Jeans', 'Classic blue denim jeans for women with perfect fit and durability', '45.00', NULL, 30, 'Apparel', NULL, NULL, 'Clothes', 'L', '400.00', 'Blue', 'Denim', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(34, 'CLO001', '1234567890123', 'CLO001_QR', 'Men\'s Cotton T-Shirt', 'Comfortable 100% cotton t-shirt for men, available in various sizes and colors', '25.00', '20.00', 50, 'Apparel', NULL, NULL, 'Clothes', 'M', '250.00', 'Blue', 'Cotton', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(42, 'CLO009', '1234567890131', 'CLO009_QR', 'Men\'s Business Suit', 'Professional business suit for men, includes jacket and pants', '120.00', '100.00', 15, 'Clothing', NULL, NULL, 'Clothes', 'L', '800.00', 'Navy', 'Wool', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(43, 'CLO010', '1234567890132', 'CLO010_QR', 'Women\'s Cardigan', 'Soft and warm cardigan for women, perfect for layering', '35.00', NULL, 21, 'Clothing', NULL, NULL, 'Clothes', 'M', '300.00', 'Beige', 'Wool Blend', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-14 12:54:15'),
(44, 'CLO011', '1234567890133', 'CLO011_QR', 'Designer Handbag', 'Stylish designer handbag for women, perfect for any occasion', '80.00', '65.00', 19, 'Fashion', NULL, NULL, 'Clothes', NULL, '500.00', 'Black', 'Leather', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-14 12:29:17'),
(45, 'CLO012', '1234567890134', 'CLO012_QR', 'Fashion Sunglasses', 'Trendy sunglasses with UV protection', '45.00', NULL, 30, 'Fashion', NULL, NULL, 'Clothes', NULL, '50.00', 'Brown', 'Plastic', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(46, 'CLO013', '1234567890135', 'CLO013_QR', 'Statement Necklace', 'Elegant statement necklace for women', '25.00', '20.00', 40, 'Fashion', NULL, NULL, 'Clothes', NULL, '30.00', 'Gold', 'Metal', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(47, 'CLO014', '1234567890136', 'CLO014_QR', 'Designer Watch', 'Luxury designer watch for men and women', '150.00', '120.00', 10, 'Fashion', NULL, NULL, 'Clothes', NULL, '80.00', 'Silver', 'Stainless Steel', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(48, 'CLO015', '1234567890137', 'CLO015_QR', 'Fashion Belt', 'Stylish leather belt for men and women', '30.00', NULL, 35, 'Fashion', NULL, NULL, 'Clothes', 'L', '100.00', 'Brown', 'Leather', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(49, 'CLO016', '1234567890138', 'CLO016_QR', 'Men\'s Sports Shorts', 'Lightweight sports shorts for men, perfect for workouts and sports activities', '20.00', '18.00', 60, 'Sports Wear', NULL, NULL, 'Clothes', 'M', '150.00', 'Black', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(50, 'CLO017', '1234567890139', 'CLO017_QR', 'Women\'s Yoga Pants', 'Comfortable yoga pants for women, perfect for exercise and casual wear', '25.00', NULL, 45, 'Sports Wear', NULL, NULL, 'Clothes', 'M', '200.00', 'Black', 'Spandex Blend', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(51, 'CLO018', '1234567890140', 'CLO018_QR', 'Running Shoes', 'Professional running shoes for men and women', '80.00', '65.00', 30, 'Sports Wear', NULL, NULL, 'Clothes', '42', '300.00', 'White', 'Mesh', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(52, 'CLO019', '1234567890141', 'CLO019_QR', 'Sports Jersey', 'Team sports jersey for men and women', '35.00', '30.00', 25, 'Sports Wear', NULL, NULL, 'Clothes', 'L', '250.00', 'Blue', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(53, 'CLO020', '1234567890142', 'CLO020_QR', 'Gym Bag', 'Durable gym bag for carrying sports equipment', '40.00', NULL, 20, 'Sports Wear', NULL, NULL, 'Clothes', NULL, '500.00', 'Black', 'Nylon', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(54, 'CLO021', '1234567890143', 'CLO021_QR', 'Kids School Uniform', 'Complete school uniform set for children, includes shirt and pants', '50.00', '45.00', 20, 'Uniforms', NULL, NULL, 'Clothes', 'S', '400.00', 'Navy', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(55, 'CLO022', '1234567890144', 'CLO022_QR', 'Security Guard Uniform', 'Professional security guard uniform', '60.00', NULL, 15, 'Uniforms', NULL, NULL, 'Clothes', 'L', '600.00', 'Black', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(56, 'CLO023', '1234567890145', 'CLO023_QR', 'Chef\'s Uniform', 'Complete chef uniform including hat and apron', '45.00', '40.00', 25, 'Uniforms', NULL, NULL, 'Clothes', 'M', '350.00', 'White', 'Cotton', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(57, 'CLO024', '1234567890146', 'CLO024_QR', 'Medical Scrubs', 'Comfortable medical scrubs for healthcare workers', '35.00', NULL, 30, 'Uniforms', NULL, NULL, 'Clothes', 'M', '300.00', 'Blue', 'Cotton Blend', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40'),
(58, 'CLO025', '1234567890147', 'CLO025_QR', 'Police Uniform', 'Professional police uniform set', '80.00', '70.00', 10, 'Uniforms', NULL, NULL, 'Clothes', 'L', '800.00', 'Navy', 'Polyester', 'images/placeholder.jpg', '2025-08-13 07:20:40', '2025-08-13 07:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
CREATE TABLE IF NOT EXISTS `purchase_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `po_number` varchar(20) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `shipping_amount` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` enum('draft','sent','received','cancelled') DEFAULT 'draft',
  `payment_terms` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `po_number` (`po_number`),
  KEY `vendor_id` (`vendor_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `created_by` (`created_by`),
  KEY `idx_purchase_orders_date` (`order_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
CREATE TABLE IF NOT EXISTS `purchase_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `received_quantity` int(11) DEFAULT '0',
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `purchase_order_id` (`purchase_order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) DEFAULT 'POS System',
  `about_content` text,
  `contact_email` varchar(150) DEFAULT NULL,
  `contact_phone` varchar(50) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `telegram_url` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `about_content`, `contact_email`, `contact_phone`, `contact_address`, `facebook_url`, `instagram_url`, `telegram_url`, `whatsapp_url`, `created_at`, `updated_at`) VALUES
(1, 'POS System', 'Updated about content here...', 'hello@chfashion.com', '+855 12 345 678', '123 Main St, Phnom Penh, Cambodia', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://t.me/', 'https://wa.me/85512345678', '2025-09-02 08:04:27', '2025-09-02 08:06:43'),
(2, 'CH-FASHION POS', 'We provide a modern POS solution for retail with inventory, orders, and analytics.', 'support@chfashion.com', '+855 12 345 678', '123 Main St, Phnom Penh, Cambodia', 'https://www.facebook.com/yourpage', 'https://www.instagram.com/yourpage', 'https://t.me/yourchannel', 'https://wa.me/85512345678', '2025-09-02 08:06:43', '2025-09-02 08:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon_class` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_platform` (`platform`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `url`, `icon_class`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://facebook.com/yourpage', 'fab fa-facebook-f', 1, 1, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(2, 'Instagram', 'https://instagram.com/yourpage', 'fab fa-instagram', 1, 2, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(3, 'Telegram', 'https://t.me/yourchannel', 'fab fa-telegram', 1, 3, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(4, 'WhatsApp', 'https://wa.me/85512345678', 'fab fa-whatsapp', 1, 4, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(5, 'YouTube', 'https://youtube.com/@yourchannel', 'fab fa-youtube', 1, 5, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(6, 'Twitter/X', 'https://x.com/yourhandle', 'fab fa-x-twitter', 1, 6, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(7, 'LinkedIn', 'https://linkedin.com/company/yourcompany', 'fab fa-linkedin-in', 1, 7, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(8, 'TikTok', 'https://www.tiktok.com/@yourhandle', 'fab fa-tiktok', 1, 8, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(9, 'Pinterest', 'https://pinterest.com/yourpage', 'fab fa-pinterest', 0, 9, '2025-09-02 09:14:25', '2025-09-02 09:14:25'),
(10, 'Website', 'https://yourstore.com', 'fas fa-globe', 1, 10, '2025-09-02 09:14:25', '2025-09-02 09:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` enum('Food','Clothes') NOT NULL,
  `description` text,
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `type` (`type`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `type`, `description`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Soft Drinks', 1, 'Food', 'Carbonated soft drinks and sodas', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(2, 'Hot Beverages', 1, 'Food', 'Coffee, tea, and hot drinks', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(3, 'Juices', 1, 'Food', 'Fresh and packaged fruit juices', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(4, 'Water', 1, 'Food', 'Bottled and filtered water', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(5, 'Chips & Crisps', 2, 'Food', 'Potato chips and similar snacks', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(6, 'Candy & Chocolate', 2, 'Food', 'Sweets and chocolate products', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(7, 'Nuts & Seeds', 2, 'Food', 'Dried nuts and seeds', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(8, 'Crackers', 2, 'Food', 'Biscuits and crackers', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(9, 'Rice & Grains', 3, 'Food', 'Rice, pasta, and grain products', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(10, 'Canned Foods', 3, 'Food', 'Canned vegetables and fruits', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(11, 'Dairy Products', 3, 'Food', 'Milk, cheese, and dairy items', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(12, 'Baking Supplies', 3, 'Food', 'Flour, sugar, and baking ingredients', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(13, 'Hair Care', 4, 'Food', 'Shampoo, conditioner, and hair products', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(14, 'Skin Care', 4, 'Food', 'Soap, lotion, and skin products', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(15, 'Oral Care', 4, 'Food', 'Toothpaste, toothbrushes, and dental care', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(16, 'Feminine Care', 4, 'Food', 'Feminine hygiene products', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(17, 'T-Shirts', 5, 'Clothes', 'Men\'s t-shirts and casual tops', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(18, 'Shirts', 5, 'Clothes', 'Men\'s formal and casual shirts', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(19, 'Pants', 5, 'Clothes', 'Men\'s pants and trousers', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(20, 'Jackets', 5, 'Clothes', 'Men\'s jackets and coats', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(21, 'Shorts', 5, 'Clothes', 'Men\'s shorts', 1, 5, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(22, 'Dresses', 6, 'Clothes', 'Women\'s dresses', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(23, 'Tops', 6, 'Clothes', 'Women\'s tops and blouses', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(24, 'Jeans', 6, 'Clothes', 'Women\'s jeans and denim', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(25, 'Skirts', 6, 'Clothes', 'Women\'s skirts', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(26, 'Pants', 6, 'Clothes', 'Women\'s pants and trousers', 1, 5, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(27, 'Boys Clothing', 7, 'Clothes', 'Clothing for boys', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(28, 'Girls Clothing', 7, 'Clothes', 'Clothing for girls', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(29, 'School Uniforms', 7, 'Clothes', 'School uniforms for children', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(30, 'Baby Clothing', 7, 'Clothes', 'Clothing for babies and toddlers', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(31, 'Men\'s Shoes', 8, 'Clothes', 'Shoes for men', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(32, 'Women\'s Shoes', 8, 'Clothes', 'Shoes for women', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(33, 'Kids Shoes', 8, 'Clothes', 'Shoes for children', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(34, 'Sports Shoes', 8, 'Clothes', 'Athletic and sports footwear', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(35, 'Formal Shoes', 8, 'Clothes', 'Formal and dress shoes', 1, 5, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(36, 'Bags', 9, 'Clothes', 'Handbags, backpacks, and luggage', 1, 1, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(37, 'Jewelry', 9, 'Clothes', 'Necklaces, rings, earrings', 1, 2, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(38, 'Watches', 9, 'Clothes', 'Wristwatches and timepieces', 1, 3, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(39, 'Belts', 9, 'Clothes', 'Belts and buckles', 1, 4, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(40, 'Hats', 9, 'Clothes', 'Caps, hats, and headwear', 1, 5, '2025-08-13 02:55:41', '2025-08-13 02:55:41'),
(41, 'Food subtesting', 2, 'Food', 'Food subtesting', 1, 0, '2025-08-13 03:00:34', '2025-08-13 03:00:34'),
(42, 'Clothes subtesting', 9, 'Clothes', 'Clothes subtesting', 1, 0, '2025-08-13 03:01:23', '2025-08-13 03:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  `tax_rate` decimal(5,4) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `tax_name`, `tax_rate`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sales Tax', '0.0800', 1, 'Standard sales tax rate', '2025-07-07 04:44:47', '2025-07-07 04:44:47'),
(2, 'GST', '0.0500', 1, 'Goods and Services Tax', '2025-07-07 04:44:47', '2025-07-07 04:44:47'),
(3, 'PST', '0.0700', 1, 'Provincial Sales Tax', '2025-07-07 04:44:47', '2025-07-07 04:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','users','cashier','manager','customer') DEFAULT 'cashier',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_phone` (`phone`),
  KEY `idx_user_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `phone`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CS9vAQgLGXBEBMInau3wpO0xhvzLUB0TraGYJ08rGDfBbpq5vkDFe', 'admin', NULL, 'admin', 'active', '2025-07-04 02:37:13', '2025-07-08 07:48:23'),
(2, 'chamrern', 'chamrern@gmail.com', '$2y$10$.iFJi/8wG305GsIfVeK.pe90nMZK9WZl9OKzTYp9EBEo.BECtB6jm', 'chamrern', '0967797762', 'admin', 'active', '2025-07-04 02:48:03', '2025-07-09 03:32:54'),
(3, 'staff', 'staff@gmail.com', '$2y$10$ErUu0aA6Zx18A7I8Wl8lrOl9g.vwGW/JcfMYGRZ/9FqDxaTGIfGFO', 'staff', NULL, 'cashier', 'active', '2025-07-04 02:48:36', '2025-07-08 07:52:22'),
(4, 'manager', 'manager@gmail.com', '$2y$10$b3FaHdMMEAnnRP9EGQ4LkeqrnVVnyecveJVnl6dOibAsX5St0J.KS', 'manager', NULL, 'manager', 'active', '2025-07-04 02:49:03', '2025-07-08 07:48:23'),
(10, 'customers1', 'customers1@gmail.com', '$2y$10$ljIh8gAe3mlr67fJ6zQMC.Mt5acRSAzEcCbTbD0vuV8v6QMJIjOia', 'customers1', NULL, 'customer', 'active', '2025-07-08 08:06:24', '2025-08-14 11:48:40'),
(12, 'customers2', 'customers2@gmail.com', '$2y$10$Y5p8HabNf/xaXIgBxpd0IeuKMrDarv4wSVcr6PbushQdjrk6JPyq2', 'customers2', '05454545455', 'customer', 'inactive', '2025-07-09 03:31:18', '2025-07-09 03:43:32'),
(13, 'customers3', 'chamrern3@gmail.com', '$2y$10$fc17nlBmiWQRoDwwRQ85deMcnr72Fu8DBZcp/iyvPdUhc1kFG5vm.', 'customers3', '0865546567', 'customer', 'active', '2025-08-12 03:40:54', '2025-08-12 03:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_code` varchar(20) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT 'USA',
  `tax_id` varchar(50) DEFAULT NULL,
  `payment_terms` varchar(50) DEFAULT NULL,
  `credit_limit` decimal(12,2) DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT '1',
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_code` (`vendor_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
