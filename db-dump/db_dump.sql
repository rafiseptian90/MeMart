-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2020 at 03:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_memart`
--

-- --------------------------------------------------------

--
-- Table structure for table `criteria_others`
--

CREATE TABLE `criteria_others` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteria_others`
--

INSERT INTO `criteria_others` (`id`, `type`, `score`, `created_at`, `updated_at`) VALUES
(1, 'Korban Bencana', 1.00, '2019-12-27 21:22:25', '2019-12-27 21:22:25'),
(2, 'Kelainan Fisik', 0.70, '2019-12-27 21:22:25', '2019-12-27 21:22:25'),
(3, 'Normal', 0.50, '2019-12-27 21:22:25', '2019-12-27 21:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_parents`
--

CREATE TABLE `criteria_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteria_parents`
--

INSERT INTO `criteria_parents` (`id`, `type`, `score`, `created_at`, `updated_at`) VALUES
(1, 'Yatim Piatu', 1.00, '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(2, 'Yatim', 0.70, '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(3, 'Piatu', 0.50, '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(4, 'Lengkap', 0.30, '2019-12-27 21:22:24', '2019-12-27 21:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_parent_incomes`
--

CREATE TABLE `criteria_parent_incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteria_parent_incomes`
--

INSERT INTO `criteria_parent_incomes` (`id`, `amount`, `score`, `created_at`, `updated_at`) VALUES
(1, '< Rp.500.000', 1.00, '2019-12-27 21:22:25', '2019-12-27 21:22:25'),
(2, 'Rp.500.000 - Rp.1.000.000', 0.70, '2019-12-27 21:22:25', '2019-12-27 21:22:25'),
(3, 'Rp.1.000.000 - Rp.3.000.000', 0.50, '2019-12-27 21:22:25', '2019-12-27 21:22:25'),
(4, '> Rp.3.000.000', 0.30, '2019-12-27 21:22:25', '2019-12-27 21:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 1, '{}', 2),
(24, 4, 'nis', 'number', 'NIS', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:students,nis\",\"messages\":{\"required\":\"This attribute field is a must.\",\"unique\":\"This NIS already taken\"}}}', 4),
(25, 4, 'fullname', 'text', 'Fullname', 1, 1, 1, 1, 1, 1, '{}', 5),
(26, 4, 'room_id', 'text', 'Room Id', 1, 0, 0, 1, 1, 1, '{}', 3),
(27, 4, 'no_phone', 'number', 'No Phone', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:12|unique:students,no_phone\",\"messages\":{\"required\":\"This attribute field is a must.\",\"max\":\"This attribute field maximum :max.\",\"unique\":\"This phone number already taken\"}}}', 7),
(28, 4, 'gender', 'select_dropdown', 'Gender', 1, 1, 1, 1, 1, 1, '{\"options\":{\"L\":\"Laki-Laki\",\"P\":\"Perempuan\"}}', 8),
(29, 4, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 9),
(30, 4, 'status', 'select_dropdown', 'Status', 1, 1, 1, 0, 0, 1, '{\"default\":0,\"options\":{\"0\":\"Normal\",\"1\":\"Reseller\"}}', 10),
(31, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(32, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(33, 4, 'student_belongsto_room_relationship', 'relationship', 'Class', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Room\",\"table\":\"rooms\",\"type\":\"belongsTo\",\"column\":\"room_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(39, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'score', 'number', 'Score', 1, 1, 1, 1, 1, 1, '{\"step\":0.1,\"min\":0,\"max\":1,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(42, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(43, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(44, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 7, 'score', 'number', 'Score', 1, 1, 1, 1, 1, 1, '{\"step\":0.1,\"min\":0,\"max\":1,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(47, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(48, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(49, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 8, 'score', 'number', 'Score', 1, 1, 1, 1, 1, 1, '{\"step\":0.1,\"min\":0,\"max\":1,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(52, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(53, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(54, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 9, 'score', 'number', 'Score', 1, 1, 1, 1, 1, 1, '{\"step\":0.1,\"min\":0,\"max\":1,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(57, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(58, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(59, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2),
(61, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(62, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(63, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 11, 'student_id', 'text', 'Student Id', 1, 0, 0, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:student_criterias,student_id\",\"messages\":{\"unique\":\"This student already exists!\"}}}', 2),
(65, 11, 'criteria_parent_id', 'text', 'Criteria Parent Id', 1, 0, 0, 1, 1, 1, '{}', 4),
(66, 11, 'criteria_parent_income_id', 'text', 'Criteria Parent Income Id', 1, 0, 0, 1, 1, 1, '{}', 6),
(67, 11, 'criteria_other_id', 'text', 'Criteria Other Id', 1, 0, 0, 1, 1, 1, '{}', 8),
(68, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(69, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(70, 11, 'student_criteria_belongsto_student_relationship', 'relationship', 'Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"fullname\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(71, 11, 'student_criteria_belongsto_criteria_parent_relationship', 'relationship', 'Completeness of Parents', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CriteriaParent\",\"table\":\"criteria_parents\",\"type\":\"belongsTo\",\"column\":\"criteria_parent_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(72, 11, 'student_criteria_belongsto_criteria_parent_income_relationship', 'relationship', 'Parent Income per Month', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CriteriaParentIncome\",\"table\":\"criteria_parent_incomes\",\"type\":\"belongsTo\",\"column\":\"criteria_parent_income_id\",\"key\":\"id\",\"label\":\"amount\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(74, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(75, 13, 'student_id', 'text', 'Student Id', 1, 0, 0, 1, 1, 1, '{}', 4),
(76, 13, 'profit_id', 'text', 'Profit Id', 1, 0, 0, 1, 1, 1, '{}', 6),
(77, 13, 'periode', 'date', 'Periode', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2),
(78, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(79, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(80, 13, 'profit_student_belongsto_student_relationship', 'relationship', 'Student Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"fullname\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(81, 13, 'profit_student_belongsto_profit_relationship', 'relationship', 'Profit per Week', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Profit\",\"table\":\"profits\",\"type\":\"belongsTo\",\"column\":\"profit_id\",\"key\":\"id\",\"label\":\"value\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(82, 13, 'detail_profit', 'number', 'Detail Profit (Rp)', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 7),
(83, 11, 'student_criteria_belongsto_criteria_other_relationship', 'relationship', 'Other', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CriteriaOther\",\"table\":\"criteria_others\",\"type\":\"belongsTo\",\"column\":\"criteria_other_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"criteria_others\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(84, 8, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2),
(85, 6, 'amount', 'text', 'Amount (Rp)', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2),
(86, 7, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2),
(87, 9, 'amount', 'text', 'Amount (Rp)', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(4, 'students', 'students', 'Student', 'Students', 'voyager-people', 'App\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:15:55', '2020-01-17 14:55:51'),
(6, 'criteria_parent_incomes', 'criteria-parent-incomes', 'Parent Income', 'Parent Incomes', 'voyager-dollar', 'App\\CriteriaParentIncome', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:54:45', '2020-11-12 05:36:13'),
(7, 'criteria_parents', 'criteria-parents', 'Parent', 'Parents', 'voyager-people', 'App\\CriteriaParent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:56:52', '2020-11-12 05:36:43'),
(8, 'criteria_others', 'criteria-others', 'Other', 'Others', 'voyager-dot-3', 'App\\CriteriaOther', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:57:29', '2020-11-12 05:26:15'),
(9, 'profits', 'profits', 'Profit', 'Profits', 'voyager-dollar', 'App\\Profit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:58:25', '2020-11-12 05:44:38'),
(10, 'rooms', 'rooms', 'Class', 'Class', 'voyager-logbook', 'App\\Room', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:59:32', '2020-11-12 05:41:32'),
(11, 'student_criterias', 'student-criterias', 'Student Criteria', 'Student Criteria', 'voyager-file-text', 'App\\StudentCriteria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 08:31:37', '2020-11-12 05:40:25'),
(13, 'profit_student', 'profit-student', 'Profit Student', 'Profit Students', 'voyager-dollar', 'App\\ProfitStudent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-29 22:54:04', '2020-11-12 05:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-27 21:20:58', '2019-12-27 21:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-27 21:20:58', '2019-12-27 21:20:58', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2019-12-27 21:20:58', '2019-12-29 22:56:41', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-27 21:20:58', '2019-12-27 21:20:58', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-27 21:20:58', '2019-12-27 21:20:58', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-12-27 21:20:58', '2019-12-29 22:56:41', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-27 21:20:58', '2019-12-28 05:51:11', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-27 21:20:58', '2019-12-28 05:51:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-27 21:20:58', '2019-12-28 05:51:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-27 21:20:58', '2019-12-28 05:51:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-12-27 21:20:58', '2019-12-29 22:56:41', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-12-27 21:20:59', '2019-12-28 05:51:11', 'voyager.hooks', NULL),
(12, 1, 'Students', '', '_self', 'voyager-people', NULL, NULL, 4, '2019-12-28 02:15:56', '2020-01-01 05:22:44', 'voyager.students.index', NULL),
(14, 1, 'Parent Incomes', '', '_self', 'voyager-dollar', NULL, 19, 3, '2019-12-28 02:54:45', '2019-12-28 05:51:52', 'voyager.criteria-parent-incomes.index', NULL),
(15, 1, 'Parents', '', '_self', 'voyager-people', NULL, 19, 2, '2019-12-28 02:56:52', '2019-12-28 05:51:52', 'voyager.criteria-parents.index', NULL),
(16, 1, 'Others', '', '_self', 'voyager-dot-3', NULL, 19, 4, '2019-12-28 02:57:29', '2019-12-28 05:52:09', 'voyager.criteria-others.index', NULL),
(17, 1, 'Profits', '', '_self', 'voyager-dollar', NULL, 19, 1, '2019-12-28 02:58:26', '2019-12-28 05:51:52', 'voyager.profits.index', NULL),
(18, 1, 'Class', '', '_self', 'voyager-logbook', NULL, NULL, 7, '2019-12-28 02:59:33', '2019-12-29 22:56:41', 'voyager.rooms.index', NULL),
(19, 1, 'Reseller Criteria', '', '_self', 'voyager-logbook', '#000000', NULL, 8, '2019-12-28 05:50:55', '2020-01-17 14:15:16', NULL, ''),
(20, 1, 'Student Criteria', '', '_self', 'voyager-file-text', '#000000', NULL, 6, '2019-12-28 08:31:37', '2020-11-12 05:32:53', 'voyager.student-criterias.index', 'null'),
(21, 1, 'Profit Students', '', '_self', 'voyager-dollar', NULL, NULL, 5, '2019-12-29 22:54:05', '2020-11-12 05:32:53', 'voyager.profit-student.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_12_27_035300_create_rooms_table', 1),
(23, '2019_12_27_035346_create_profits_table', 1),
(24, '2019_12_27_035444_create_criteria_parents_table', 1),
(25, '2019_12_27_035718_create_criteria_parent_incomes_table', 1),
(26, '2019_12_27_040053_create_criteria_others_table', 1),
(27, '2019_12_27_040201_create_students_table', 1),
(28, '2019_12_27_040332_create_profit_student', 1),
(29, '2019_12_27_074604_create_student_criterias_table', 1),
(30, '2020_01_01_120833_create_field_detail_profit', 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(2, 'browse_bread', NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(3, 'browse_database', NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(4, 'browse_media', NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(5, 'browse_compass', NULL, '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(6, 'browse_menus', 'menus', '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(7, 'read_menus', 'menus', '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(8, 'edit_menus', 'menus', '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(9, 'add_menus', 'menus', '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(10, 'delete_menus', 'menus', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(11, 'browse_roles', 'roles', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(12, 'read_roles', 'roles', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(13, 'edit_roles', 'roles', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(14, 'add_roles', 'roles', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(15, 'delete_roles', 'roles', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(16, 'browse_users', 'users', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(17, 'read_users', 'users', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(18, 'edit_users', 'users', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(19, 'add_users', 'users', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(20, 'delete_users', 'users', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(21, 'browse_settings', 'settings', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(22, 'read_settings', 'settings', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(23, 'edit_settings', 'settings', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(24, 'add_settings', 'settings', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(25, 'delete_settings', 'settings', '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(26, 'browse_hooks', NULL, '2019-12-27 21:20:59', '2019-12-27 21:20:59'),
(27, 'browse_students', 'students', '2019-12-28 02:15:56', '2019-12-28 02:15:56'),
(28, 'read_students', 'students', '2019-12-28 02:15:56', '2019-12-28 02:15:56'),
(29, 'edit_students', 'students', '2019-12-28 02:15:56', '2019-12-28 02:15:56'),
(30, 'add_students', 'students', '2019-12-28 02:15:56', '2019-12-28 02:15:56'),
(31, 'delete_students', 'students', '2019-12-28 02:15:56', '2019-12-28 02:15:56'),
(37, 'browse_criteria_parent_incomes', 'criteria_parent_incomes', '2019-12-28 02:54:45', '2019-12-28 02:54:45'),
(38, 'read_criteria_parent_incomes', 'criteria_parent_incomes', '2019-12-28 02:54:45', '2019-12-28 02:54:45'),
(39, 'edit_criteria_parent_incomes', 'criteria_parent_incomes', '2019-12-28 02:54:45', '2019-12-28 02:54:45'),
(40, 'add_criteria_parent_incomes', 'criteria_parent_incomes', '2019-12-28 02:54:45', '2019-12-28 02:54:45'),
(41, 'delete_criteria_parent_incomes', 'criteria_parent_incomes', '2019-12-28 02:54:45', '2019-12-28 02:54:45'),
(42, 'browse_criteria_parents', 'criteria_parents', '2019-12-28 02:56:52', '2019-12-28 02:56:52'),
(43, 'read_criteria_parents', 'criteria_parents', '2019-12-28 02:56:52', '2019-12-28 02:56:52'),
(44, 'edit_criteria_parents', 'criteria_parents', '2019-12-28 02:56:52', '2019-12-28 02:56:52'),
(45, 'add_criteria_parents', 'criteria_parents', '2019-12-28 02:56:52', '2019-12-28 02:56:52'),
(46, 'delete_criteria_parents', 'criteria_parents', '2019-12-28 02:56:52', '2019-12-28 02:56:52'),
(47, 'browse_criteria_others', 'criteria_others', '2019-12-28 02:57:29', '2019-12-28 02:57:29'),
(48, 'read_criteria_others', 'criteria_others', '2019-12-28 02:57:29', '2019-12-28 02:57:29'),
(49, 'edit_criteria_others', 'criteria_others', '2019-12-28 02:57:29', '2019-12-28 02:57:29'),
(50, 'add_criteria_others', 'criteria_others', '2019-12-28 02:57:29', '2019-12-28 02:57:29'),
(51, 'delete_criteria_others', 'criteria_others', '2019-12-28 02:57:29', '2019-12-28 02:57:29'),
(52, 'browse_profits', 'profits', '2019-12-28 02:58:26', '2019-12-28 02:58:26'),
(53, 'read_profits', 'profits', '2019-12-28 02:58:26', '2019-12-28 02:58:26'),
(54, 'edit_profits', 'profits', '2019-12-28 02:58:26', '2019-12-28 02:58:26'),
(55, 'add_profits', 'profits', '2019-12-28 02:58:26', '2019-12-28 02:58:26'),
(56, 'delete_profits', 'profits', '2019-12-28 02:58:26', '2019-12-28 02:58:26'),
(57, 'browse_rooms', 'rooms', '2019-12-28 02:59:33', '2019-12-28 02:59:33'),
(58, 'read_rooms', 'rooms', '2019-12-28 02:59:33', '2019-12-28 02:59:33'),
(59, 'edit_rooms', 'rooms', '2019-12-28 02:59:33', '2019-12-28 02:59:33'),
(60, 'add_rooms', 'rooms', '2019-12-28 02:59:33', '2019-12-28 02:59:33'),
(61, 'delete_rooms', 'rooms', '2019-12-28 02:59:33', '2019-12-28 02:59:33'),
(62, 'browse_student_criterias', 'student_criterias', '2019-12-28 08:31:37', '2019-12-28 08:31:37'),
(63, 'read_student_criterias', 'student_criterias', '2019-12-28 08:31:37', '2019-12-28 08:31:37'),
(64, 'edit_student_criterias', 'student_criterias', '2019-12-28 08:31:37', '2019-12-28 08:31:37'),
(65, 'add_student_criterias', 'student_criterias', '2019-12-28 08:31:37', '2019-12-28 08:31:37'),
(66, 'delete_student_criterias', 'student_criterias', '2019-12-28 08:31:37', '2019-12-28 08:31:37'),
(67, 'browse_profit_student', 'profit_student', '2019-12-29 22:54:04', '2019-12-29 22:54:04'),
(68, 'read_profit_student', 'profit_student', '2019-12-29 22:54:04', '2019-12-29 22:54:04'),
(69, 'edit_profit_student', 'profit_student', '2019-12-29 22:54:04', '2019-12-29 22:54:04'),
(70, 'add_profit_student', 'profit_student', '2019-12-29 22:54:04', '2019-12-29 22:54:04'),
(71, 'delete_profit_student', 'profit_student', '2019-12-29 22:54:04', '2019-12-29 22:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(27, 4),
(28, 1),
(28, 3),
(28, 4),
(29, 1),
(29, 3),
(29, 4),
(30, 1),
(30, 3),
(30, 4),
(31, 1),
(31, 3),
(31, 4),
(37, 1),
(37, 3),
(37, 4),
(38, 1),
(38, 3),
(38, 4),
(39, 1),
(39, 3),
(39, 4),
(40, 1),
(40, 3),
(40, 4),
(41, 1),
(41, 3),
(41, 4),
(42, 1),
(42, 3),
(42, 4),
(43, 1),
(43, 3),
(43, 4),
(44, 1),
(44, 3),
(44, 4),
(45, 1),
(45, 3),
(45, 4),
(46, 1),
(46, 3),
(46, 4),
(47, 1),
(47, 3),
(47, 4),
(48, 1),
(48, 3),
(48, 4),
(49, 1),
(49, 3),
(49, 4),
(50, 1),
(50, 3),
(50, 4),
(51, 1),
(51, 3),
(51, 4),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 3),
(53, 4),
(54, 1),
(54, 3),
(54, 4),
(55, 1),
(55, 3),
(55, 4),
(56, 1),
(56, 3),
(56, 4),
(57, 1),
(57, 3),
(57, 4),
(58, 1),
(58, 3),
(58, 4),
(59, 1),
(59, 3),
(59, 4),
(60, 1),
(60, 3),
(60, 4),
(61, 1),
(61, 3),
(61, 4),
(62, 1),
(62, 3),
(62, 4),
(63, 1),
(63, 3),
(63, 4),
(64, 1),
(64, 3),
(64, 4),
(65, 1),
(65, 3),
(65, 4),
(66, 1),
(66, 3),
(66, 4),
(67, 1),
(67, 3),
(67, 4),
(68, 1),
(68, 3),
(68, 4),
(69, 1),
(69, 3),
(69, 4),
(70, 1),
(70, 3),
(70, 4),
(71, 1),
(71, 3),
(71, 4);

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`id`, `amount`, `score`, `created_at`, `updated_at`) VALUES
(1, '< Rp.100.000', 0.50, '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(2, '>= Rp.100.000', 1.00, '2019-12-27 21:22:00', '2019-12-30 20:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `profit_student`
--

CREATE TABLE `profit_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `profit_id` int(10) UNSIGNED NOT NULL,
  `periode` date NOT NULL,
  `detail_profit` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profit_student`
--

INSERT INTO `profit_student` (`id`, `student_id`, `profit_id`, `periode`, `detail_profit`, `created_at`, `updated_at`) VALUES
(1, 8, 2, '2020-01-17', 120000, '2020-01-17 13:32:43', '2020-01-17 13:32:43'),
(2, 9, 1, '2020-01-17', 80000, '2020-01-17 13:36:13', '2020-01-17 13:36:13'),
(3, 10, 2, '2020-01-17', 130000, '2020-01-17 15:02:57', '2020-01-17 15:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-27 21:20:58', '2019-12-27 21:20:58'),
(3, 'operator', 'Operator', '2019-12-28 03:02:09', '2019-12-28 03:02:09'),
(4, 'manager', 'Manager', '2019-12-28 03:02:53', '2019-12-28 03:02:53'),
(5, 'student', 'Student', '2019-12-28 03:03:30', '2019-12-28 03:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'XII RPL I', '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(2, 'XII RPL II', '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(3, 'XII TKJ I', '2019-12-27 21:22:24', '2019-12-27 21:22:24'),
(4, 'XII TKJ II', '2019-12-27 21:22:24', '2019-12-27 21:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'MeMart', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Aplikasi Monitoring Reseller SMK Negeri I Subang', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\January2020\\fvovrvat5Zw4YDAPsg0E.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'MeMart', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Aplikasi Monitoring Reseller SMK Negeri I Subang', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `no_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `nis`, `fullname`, `room_id`, `no_phone`, `gender`, `address`, `status`, `created_at`, `updated_at`) VALUES
(8, 9, '11500645', 'Rina Angraeni', 1, '087834532345', 'P', 'Jln. Supratman No.35', 1, '2020-01-17 13:27:02', '2020-01-17 13:53:33'),
(9, 10, '77400364', 'Novan Alfian', 2, '089423431234', 'L', 'Jln. Ahmad Yani No.32', 1, '2020-01-17 13:30:00', '2020-01-17 14:34:16'),
(10, 11, '11700474', 'John Doe', 2, '087834566565', 'L', 'Jln. Ahmad Yani No.37', 1, '2020-01-17 15:01:32', '2020-01-17 15:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `student_criterias`
--

CREATE TABLE `student_criterias` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `criteria_parent_id` int(10) UNSIGNED NOT NULL,
  `criteria_parent_income_id` int(10) UNSIGNED NOT NULL,
  `criteria_other_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_criterias`
--

INSERT INTO `student_criterias` (`id`, `student_id`, `criteria_parent_id`, `criteria_parent_income_id`, `criteria_other_id`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 2, 1, '2020-01-17 13:30:00', '2020-01-17 14:32:54'),
(2, 9, 4, 4, 3, '2020-01-17 13:32:09', '2020-01-17 13:32:09'),
(3, 10, 4, 3, 3, '2020-01-17 15:02:12', '2020-01-17 15:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'user', 'admin@admin.com', 'users/default.png', '$2y$10$Fjsatr/eoyDVQ3ti4VWH.e8kk0DoUkp1J9DFj.SJQyNwgfzVLQYuK', '6IDe94O0cgSfUdGXYCztTfcJfjHkwEzNijiMq0Pu9zsURwJ3sLlgQ7fUWvjO', NULL, '2019-12-28 02:12:12', '2019-12-28 02:12:12'),
(3, 4, 'Manager', 'user', 'manager@manager.com', 'users/default.png', '$2y$10$DRbdY2lKphlUs049MekYReoIZQnEqf403sa0STUp57IwmlAMVh/FK', 'z7u5OdRwwjbgBgA41RKswoRRdN4lKMQwo2nko8gbnW3gKLDBoTceSGUERKjN', '{\"locale\":\"en\"}', '2019-12-28 03:10:34', '2019-12-28 03:10:34'),
(5, 3, 'Operator', 'user', 'operator@operator.com', 'users/default.png', '$2y$10$9ILpSHR0sLgyk4YfolqjVesOJo6IxsHUprZrL9KsKkC/taL6XcFKK', 'tMoQzaXfl60vOLq9hGZHuXFHILXeEkMt0BoajecuNmE3CfyXYQ3vMKn3M3Oh', '{\"locale\":\"en\"}', '2019-12-28 08:44:26', '2019-12-28 08:44:26'),
(9, 5, 'Rina Angraeni', '11500645', NULL, 'users/default.png', '$2y$10$mg5IkiSK2AGtTLYdzvjLu.8NHjcG9ytZW.J1YbQFO6AWfCNmkITrq', 'Rd3pCQ4XksLBXwx77T1ESZfcRsuXaBsYDRMtSI04PeADoO86MHWeGdNuYVpz', NULL, '2020-01-17 13:53:33', '2020-01-17 13:53:33'),
(10, 5, 'Novan Alfian', '77400364', NULL, 'users/default.png', '$2y$10$uJx/YvPgND7nUMhIjBH.4e3AA7iM6P3N1LpvipCFx4DU5W9JnpSem', NULL, NULL, '2020-01-17 13:55:05', '2020-01-17 13:55:05'),
(11, 5, 'John Doe', '11700474', NULL, 'users/default.png', '$2y$10$35Z5uag9NUC0lX2pNnv1iuiOMxFqhuq5Gx8mK2ZtvMyicQInRoQ3O', NULL, NULL, '2020-01-17 15:03:52', '2020-01-17 15:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criteria_others`
--
ALTER TABLE `criteria_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_parents`
--
ALTER TABLE `criteria_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_parent_incomes`
--
ALTER TABLE `criteria_parent_incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profit_student`
--
ALTER TABLE `profit_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profit_student_student_id_foreign` (`student_id`),
  ADD KEY `profit_student_profit_id_foreign` (`profit_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_room_id_foreign` (`room_id`);

--
-- Indexes for table `student_criterias`
--
ALTER TABLE `student_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_criterias_student_id_foreign` (`student_id`),
  ADD KEY `student_criterias_criteria_parent_id_foreign` (`criteria_parent_id`),
  ADD KEY `student_criterias_criteria_parent_income_id_foreign` (`criteria_parent_income_id`),
  ADD KEY `student_criterias_criteria_other_id_foreign` (`criteria_other_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criteria_others`
--
ALTER TABLE `criteria_others`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `criteria_parents`
--
ALTER TABLE `criteria_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `criteria_parent_incomes`
--
ALTER TABLE `criteria_parent_incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profit_student`
--
ALTER TABLE `profit_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_criterias`
--
ALTER TABLE `student_criterias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profit_student`
--
ALTER TABLE `profit_student`
  ADD CONSTRAINT `profit_student_profit_id_foreign` FOREIGN KEY (`profit_id`) REFERENCES `profits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profit_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_criterias`
--
ALTER TABLE `student_criterias`
  ADD CONSTRAINT `student_criterias_criteria_other_id_foreign` FOREIGN KEY (`criteria_other_id`) REFERENCES `criteria_others` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_criterias_criteria_parent_id_foreign` FOREIGN KEY (`criteria_parent_id`) REFERENCES `criteria_parents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_criterias_criteria_parent_income_id_foreign` FOREIGN KEY (`criteria_parent_income_id`) REFERENCES `criteria_parent_incomes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_criterias_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
