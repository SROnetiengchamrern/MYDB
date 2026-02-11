-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2026 at 02:58 AM
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
-- Database: `iportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `project_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_seo`
--

DROP TABLE IF EXISTS `setting_seo`;
CREATE TABLE IF NOT EXISTS `setting_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text,
  `og_image` varchar(255) DEFAULT NULL,
  `twitter_card` varchar(50) DEFAULT NULL,
  `twitter_title` varchar(255) DEFAULT NULL,
  `twitter_description` text,
  `twitter_image` varchar(255) DEFAULT NULL,
  `canonical_url` varchar(255) DEFAULT NULL,
  `robots_meta` varchar(100) DEFAULT 'index,follow',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_seo`
--

INSERT INTO `setting_seo` (`id`, `page_title`, `meta_description`, `meta_keywords`, `og_title`, `og_description`, `og_image`, `twitter_card`, `twitter_title`, `twitter_description`, `twitter_image`, `canonical_url`, `robots_meta`, `created_at`, `updated_at`) VALUES
(1, 'My Portfolio - Professional Web Developer', 'Professional web developer portfolio showcasing my skills, projects, and experience in web development, design, and programming.', 'web developer, portfolio, web design, programming, frontend developer, backend developer, full stack developer, PHP, JavaScript, HTML, CSS', 'My Portfolio - Professional Web Developer', 'Professional web developer portfolio showcasing my skills, projects, and experience in web development, design, and programming.', 'assets/images/portfolio-og.jpg', 'summary_large_image', 'My Portfolio - Professional Web Developer', 'Professional web developer portfolio showcasing my skills, projects, and experience in web development, design, and programming.', 'assets/images/portfolio-twitter.jpg', 'https://chamrern.infinityfreeapp.com/', 'index,follow', '2025-06-12 12:09:55', '2025-06-12 12:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  `description` text,
  `category` varchar(100) DEFAULT NULL,
  `proficiency_level` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `description`, `category`, `proficiency_level`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'CSS', 'CSS', 'CSS', '86', 'uploads/Screenshot_6.png', '2025-03-17 04:37:37', '2025-03-17 04:37:37'),
(2, 'HTML', 'HTML', 'HTML', '100', 'uploads/w800.png', '2025-03-17 04:50:20', '2025-03-17 04:50:20'),
(3, 'JAVA', 'JAVA', 'JAVA', '59', '', '2025-03-17 04:53:57', '2025-03-17 04:53:57'),
(4, 'PYTHON', 'PYTHON', 'PYTHON', '79', 'uploads/w800.png', '2025-03-17 04:54:27', '2025-03-17 04:54:27'),
(5, 'PYTHON', 'PYTHON', 'PYTHON', '79', 'uploads/w800.png', '2025-03-17 04:55:50', '2025-03-17 04:55:50'),
(6, 'C#', 'C#', 'C#', '87', 'uploads/Screenshot_6.png', '2025-03-17 04:56:14', '2025-03-17 04:56:14'),
(7, 'CSS5', 'CSS5', 'CSS5', '88', 'uploads/w800 (1).png', '2025-03-17 07:46:25', '2025-03-17 07:46:25'),
(8, 'CSS6', 'CSS6', 'CSS6', '100', '', '2025-03-17 07:48:24', '2025-03-17 07:48:24'),
(9, 'CSS6', 'CSS6', 'CSS6', '100', '', '2025-03-17 07:50:09', '2025-03-17 07:50:09'),
(10, 'CSS7', 'CSS7', 'CSS7', '79', '', '2025-03-17 07:51:22', '2025-03-17 07:51:22'),
(11, 'HTML3', 'HTML3', 'HTML3', '71', '', '2025-03-17 07:55:59', '2025-03-17 07:55:59'),
(12, 'HTML7', 'HTML7', 'HTML7', '50', '', '2025-03-17 07:58:33', '2025-03-17 07:58:33'),
(13, 'JAVA1', 'JAVA1', 'JAVA1', '50', 'uploads/w800.png', '2025-03-17 08:02:53', '2025-03-17 08:02:53'),
(14, 'HTML4', 'HTML4', 'HTML4', '50', '', '2025-03-17 08:05:33', '2025-03-17 08:05:33'),
(15, 'HTML6', 'HTML6', 'HTML6', '50', '', '2025-03-17 08:06:52', '2025-03-17 08:06:52'),
(16, 'PYTHON4', 'PYTHON4', 'PYTHON4', '50', '', '2025-03-17 08:07:39', '2025-03-17 08:07:39'),
(17, 'HTML32', 'HTML32', 'HTML32', '70', '', '2025-03-17 08:16:24', '2025-03-17 08:16:24'),
(18, 'JAVA35', 'JAVA35', 'JAVA35', '50', '', '2025-03-17 08:17:36', '2025-03-17 08:17:36'),
(19, 'JAVA35', 'JAVA35', 'JAVA35', '50', '', '2025-03-17 08:19:00', '2025-03-17 08:19:00'),
(20, 'JAVA35', 'JAVA35', 'JAVA35', '50', '', '2025-03-17 08:19:51', '2025-03-17 08:19:51'),
(21, 'PYTHON35', 'PYTHON35', 'PYTHON35', '50', '', '2025-03-17 08:20:00', '2025-03-17 08:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `platform`, `url`, `icon`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(12, 'Email', 'mailto:tiengchamrern2@gmail.com', 'fas fa-envelope', 4, 1, '2025-06-12 12:23:22', '2025-06-12 12:23:22'),
(11, 'Telegram', 'https://t.me/TienG_ChamrerN', 'fab fa-telegram', 3, 1, '2025-06-12 12:23:22', '2025-06-12 12:23:22'),
(10, 'Facebook', 'https://www.facebook.com/profile.php?id=61552667695284&mibextid=kFxxJD', 'fab fa-facebook-f', 2, 1, '2025-06-12 12:23:22', '2025-06-12 12:23:22'),
(9, 'WhatsApp', 'https://wa.me/967797762', 'fab fa-whatsapp', 1, 1, '2025-06-12 12:23:22', '2025-06-12 12:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Chamrern', 'chamrern@gmail.com', '$2y$10$2y7C6Lf7XIjRS24Ok6Vic.lKW7ureyhxB5Srxcez1ILZIqjWsqFB6', 'user', '2025-02-04 10:10:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
