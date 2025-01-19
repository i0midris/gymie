-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2025 at 07:39 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymie`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int UNSIGNED NOT NULL,
  `model_id` int UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_03_07_055231_create_media_table', 1),
('2018_03_07_055231_create_mst_enquiries_table', 1),
('2018_03_07_055231_create_mst_expenses_categories_table', 1),
('2018_03_07_055231_create_mst_members_table', 1),
('2018_03_07_055231_create_mst_plans_table', 1),
('2018_03_07_055231_create_mst_services_table', 1),
('2018_03_07_055231_create_mst_sms_events_table', 1),
('2018_03_07_055231_create_mst_sms_triggers_table', 1),
('2018_03_07_055231_create_mst_users_table', 1),
('2018_03_07_055231_create_password_resets_table', 1),
('2018_03_07_055231_create_permission_role_table', 1),
('2018_03_07_055231_create_permissions_table', 1),
('2018_03_07_055231_create_role_user_table', 1),
('2018_03_07_055231_create_roles_table', 1),
('2018_03_07_055231_create_trn_access_log_table', 1),
('2018_03_07_055231_create_trn_cheque_details_table', 1),
('2018_03_07_055231_create_trn_enquiry_followups_table', 1),
('2018_03_07_055231_create_trn_expenses_table', 1),
('2018_03_07_055231_create_trn_invoice_details_table', 1),
('2018_03_07_055231_create_trn_invoice_table', 1),
('2018_03_07_055231_create_trn_payment_details_table', 1),
('2018_03_07_055231_create_trn_settings_table', 1),
('2018_03_07_055231_create_trn_sms_log_table', 1),
('2018_03_07_055231_create_trn_subscriptions_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_enquiries_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_expenses_categories_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_members_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_plans_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_services_table', 1),
('2018_03_07_055232_add_foreign_keys_to_mst_sms_events_table', 1),
('2018_03_07_055232_add_foreign_keys_to_permission_role_table', 1),
('2018_03_07_055232_add_foreign_keys_to_role_user_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_access_log_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_cheque_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_enquiry_followups_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_expenses_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_invoice_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_invoice_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_payment_details_table', 1),
('2018_03_07_055232_add_foreign_keys_to_trn_subscriptions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_enquiries`
--

CREATE TABLE `mst_enquiries` (
  `id` int UNSIGNED NOT NULL COMMENT 'Unique record ID',
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Lost , 1 = Lead  , 2 =Member',
  `contact` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pin_code` int NOT NULL,
  `occupation` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `start_by` date NOT NULL,
  `interested_in` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `aim` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_expenses_categories`
--

CREATE TABLE `mst_expenses_categories` (
  `id` int NOT NULL COMMENT 'Unique Record Id for system',
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'category name',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_members`
--

CREATE TABLE `mst_members` (
  `id` int NOT NULL COMMENT 'Unique Record Id for system',
  `member_code` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unique member id for reference',
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s name',
  `photo` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s photo',
  `DOB` date NOT NULL COMMENT 'member''s date of birth',
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s email id',
  `address` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s address',
  `status` tinyint(1) NOT NULL COMMENT '0 for inactive , 1 for active',
  `proof_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'name of the proof provided by member',
  `proof_photo` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'photo of the proof',
  `gender` char(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s gender',
  `contact` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'member''s contact number',
  `emergency_contact` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `health_issues` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pin_code` int NOT NULL,
  `occupation` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `aim` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mst_members`
--

INSERT INTO `mst_members` (`id`, `member_code`, `name`, `photo`, `DOB`, `email`, `address`, `status`, `proof_name`, `proof_photo`, `gender`, `contact`, `emergency_contact`, `health_issues`, `pin_code`, `occupation`, `aim`, `source`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'GY1', 'me ', '', '2021-06-01', 'me@gmail.com', 'sana\'a', 1, '0', '', 'm', '777111777', '0', '0', 200200, '0', '0', '0', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(2, 'GY2', 'عبده', '', '2000-02-16', 'abdu@gmail.com', 'sana\'a', 1, '0', '', 'm', '9655255', '0', '0', 2, '0', '0', '0', '2025-01-18 21:00:00', '2025-01-18 21:00:00', 1, 1),
(3, 'GY3', 'meawww nn', '', '2000-02-16', 'meaw@gmail.com', 'sana\'a', 1, '3', '', 'm', '965525555', '00001', '0111', 3, '0', '0', '0', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(4, 'GY4', 'meawwww', '', '2000-02-16', 'meaww@gmail.com', 'sana\'a', 1, '04', '', 'm', '965525544', '0', '0', 4, '0', '0', '0', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(5, 'GY5', 'iam', '', '2000-02-17', 'iam@gmail.com', 'sana\'a', 0, '0', '', 'm', '965525562', '0', '0', 5, '0', '0', '0', '2025-01-16 21:00:00', '2025-01-18 19:06:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_plans`
--

CREATE TABLE `mst_plans` (
  `id` int NOT NULL COMMENT 'Unique Record Id for system',
  `plan_code` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Unique plan id for reference',
  `service_id` int NOT NULL,
  `plan_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'name of the plan',
  `plan_details` text COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'plan details',
  `days` int NOT NULL COMMENT 'duration of the plans in days',
  `amount` int NOT NULL COMMENT 'amount to charge for the plan',
  `status` tinyint(1) NOT NULL COMMENT '0 for inactive , 1 for active',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mst_plans`
--

INSERT INTO `mst_plans` (`id`, `plan_code`, `service_id`, `plan_name`, `plan_details`, `days`, `amount`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, '1', 1, 'daily ', '1 day ', 1, 100, 1, '2025-01-18 20:18:47', '2025-01-18 20:18:47', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_services`
--

CREATE TABLE `mst_services` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mst_services`
--

INSERT INTO `mst_services` (`id`, `name`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'gym', 'gym ', '2025-01-18 20:18:25', '2025-01-18 20:18:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_sms_events`
--

CREATE TABLE `mst_sms_events` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(140) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `send_to` int NOT NULL COMMENT '0 = active members , 1 = inactive members , 2= lead enquiries , 3 = lost enquiries',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_sms_triggers`
--

CREATE TABLE `mst_sms_triggers` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mst_sms_triggers`
--

INSERT INTO `mst_sms_triggers` (`id`, `name`, `alias`, `message`, `status`, `updated_at`) VALUES
(1, 'Member admission (Paid)', 'member_admission_with_paid_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u against your invoice no. %s has been received. Thank you and we hope to see you in action soon. Good day!', 0, '2025-01-18 23:14:49'),
(2, 'Member admission (Partial)', 'member_admission_with_partial_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u against your invoice no. %s has been received. Outstanding payment to be cleared is Rs %u .Thank you!', 0, '2025-01-18 23:14:49'),
(3, 'Member admission (Unpaid)', 'member_admission_with_unpaid_invoice', 'Hi %s , Welcome to %s . Your payment of Rs %u is pending against your invoice no. %s . Thank you!', 0, '2025-01-18 23:14:49'),
(4, 'Enquiry placement', 'enquiry_placement', 'Hi %s , Thank you for your enquiry with %s . We would love to hear from you soon. Good day!', 0, '2025-01-18 23:14:49'),
(5, 'Followup', 'followup', 'Hi %s , This is regarding the inquiry you placed at %s . Let us know by when would you like to get started? Good day!', 0, '2025-01-18 23:14:49'),
(6, 'Subscription renewal (Paid)', 'subscription_renewal_with_paid_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u against your invoice no. %s  has been received. Thank you!', 0, '2025-01-18 23:14:49'),
(7, 'Subscription renewal (Partial)', 'subscription_renewal_with_partial_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u against your invoice no. %s has been received. Outstanding payment to be cleared is Rs %u . Thank you!', 0, '2025-01-18 23:14:49'),
(8, 'Subscription renewal (Unpaid)', 'subscription_renewal_with_unpaid_invoice', 'Hi %s , Your subscription has been renewed successfully. Your payment of Rs %u is pending against your invoice no. %s . Thank you!', 0, '2025-01-18 23:14:49'),
(9, 'Subscription expiring', 'subscription_expiring', 'Hi %s ,  Last few days to renew your gym subscription. Kindly renew it before %s . Thank you!', 0, '2025-01-18 23:14:49'),
(10, 'Subscription expired', 'subscription_expired', 'Hi %s , Your gym subscription has been expired on %s . Kindly renew it soon!', 0, '2025-01-18 23:14:49'),
(11, 'Payment recieved', 'payment_recieved', 'Hi %s , Your payment of Rs %u  has been received against your invoice no. %s . Thank you!', 0, '2025-01-18 23:14:49'),
(12, 'Pending invoice', 'pending_invoice', 'Hi %s , Your payment of Rs %u is still pending against your invoice no. %s . Kindly clear it soon!', 0, '2025-01-18 23:14:49'),
(13, 'Expense alertexpense_alert', 'expense_alert', 'Hi , You have an expense lined up for%s of Rs %u on %s . Thank you!', 0, '2025-01-18 23:14:49'),
(14, 'Member birthday wishes', 'member_birthday', 'Hi %s , Team %s wishes you a very Happy birthday :) Enjoy your day!Payment with cheque', 0, '2025-01-18 23:14:49'),
(15, 'Payment with cheque', 'payment_with_cheque', 'Hi %s , your cheque of Rs %u with cheque no. %u has been recieved against your invoice no. %s . Regards %s .', 0, '2025-01-18 23:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `mst_users`
--

CREATE TABLE `mst_users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mst_users`
--

INSERT INTO `mst_users` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gymie', 'admin@gymie.in', '$2y$10$jDiZCG2nfObv8I9E3kuPi.Pl0NEmiHwKq/hCFYQwdySHH3kqaIKmW', 1, 'WP1bbk6dMMKWA2TkTpEzB2L6lzrDv9B1kEHPRVO33YJIeJZnGSy8ehPh2YMU', '2025-01-18 20:14:49', '2025-01-18 20:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group_key`, `created_at`, `updated_at`) VALUES
(1, 'manage-gymie', 'Manage Gymie', '', 'Global', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(2, 'view-dashboard-quick-stats', 'View quick stats on dashboard', '', 'Dashboard', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(3, 'view-dashboard-charts', 'View charts on dashboard', '', 'Dashboard', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(4, 'view-dashboard-members-tab', 'View members tab on dashboard', '', 'Dashboard', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(5, 'view-dashboard-enquiries-tab', 'View enquiries tab on dashboard', '', 'Dashboard', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(6, 'add-member', 'Add member', '', 'Members', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(7, 'view-member', 'View member details', '', 'Members', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(8, 'edit-member', 'Edit member details', '', 'Members', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(9, 'delete-member', 'Delete member', '', 'Members', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(10, 'add-plan', 'Add plans', '', 'Plans', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(11, 'view-plan', 'View plan details', '', 'Plans', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(12, 'edit-plan', 'Edit plan details', '', 'Plans', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(13, 'delete-plan', 'Delete plans', '', 'Plans', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(14, 'add-subscription', 'Add subscription', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(15, 'edit-subscription', 'Edit subscription details', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(16, 'renew-subscription', 'Renew subscription', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(17, 'view-invoice', 'View invoice', '', 'Invoices', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(18, 'add-payment', 'Add payments', '', 'Payments', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(19, 'view-subscription', 'View subscription details', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(20, 'view-payment', 'View payment details', '', 'Payments', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(21, 'edit-payment', 'Edit payment details', '', 'Payments', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(22, 'manage-members', 'Manage members', '', 'Members', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(23, 'manage-plans', 'Manage plans', '', 'Plans', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(24, 'manage-subscriptions', 'Manage subscriptions', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(25, 'manage-invoices', 'Manage invoices', '', 'Invoices', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(26, 'manage-payments', 'Manage payments', '', 'Payments', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(27, 'manage-users', 'Manage users', '', 'Users', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(28, 'add-enquiry', 'Add enquiry', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(29, 'view-enquiry', 'View enquiry details', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(30, 'edit-enquiry', 'Edit enquiry details', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(31, 'add-enquiry-followup', 'Add enquiry followup', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(32, 'edit-enquiry-followup', 'Edit enquiry followup', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(33, 'transfer-enquiry', 'Transfer enquiry', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(34, 'manage-enquiries', 'Manage enquiries', '', 'Enquiries', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(35, 'add-expense', 'Add expense', '', 'Expenses', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(36, 'view-expense', 'View expense details', '', 'Expenses', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(37, 'edit-expense', 'Edit expense details', '', 'Expenses', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(38, 'manage-expenses', 'Manage expenses', '', 'Expenses', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(39, 'add-expenseCategory', 'Add expense category', '', 'Expense Categories', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(40, 'view-expenseCategory', 'View expense categories', '', 'Expense Categories', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(41, 'edit-expenseCategory', 'Edit expense category details', '', 'Expense Categories', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(42, 'delete-expenseCategory', 'Delete expense category', '', 'Expense Categories', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(43, 'manage-expenseCategories', 'Manage expense categories', '', 'Expense Categories', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(44, 'manage-settings', 'Manage settings', '', 'Global', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(45, 'cancel-subscription', 'Cancel subscription', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(46, 'manage-services', 'Manage services', '', 'Services', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(47, 'add-service', 'Add services', '', 'Services', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(48, 'edit-service', 'Edit service details', '', 'Services', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(49, 'view-service', 'View service details', '', 'Services', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(50, 'manage-sms', 'Manage SMS', '', 'SMS', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(51, 'pagehead-stats', 'View pagehead counts', '', 'Global', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(52, 'view-dashboard-expense-tab', 'View expenses tab on dashboard', '', 'Dashboard', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(53, 'print-invoice', 'Print invoices', '', 'Invoices', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(54, 'delete-invoice', 'Delete invoices', '', 'Invoices', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(55, 'delete-subscription', 'Delete subscriptions', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(56, 'delete-payment', 'Delete payment transactions', '', 'Payments', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(57, 'delete-expense', 'Delete expense details', '', 'Expenses', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(58, 'delete-service', 'Delete Service details', '', 'Services', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(59, 'add-discount', 'Add discount on a invoice', '', 'Invoices', '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(60, 'change-subscription', 'Upgrade or downgrade a subscription', '', 'Subscriptions', '2025-01-18 20:14:49', '2025-01-18 20:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(36, 3),
(40, 3),
(45, 3),
(54, 3),
(55, 3),
(56, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Gymie', NULL, NULL, '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(2, 'Admin', NULL, NULL, '2025-01-18 20:14:49', '2025-01-18 20:14:49'),
(3, 'Manager', NULL, NULL, '2025-01-18 20:14:49', '2025-01-18 20:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trn_access_log`
--

CREATE TABLE `trn_access_log` (
  `id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `action` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `record` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_cheque_details`
--

CREATE TABLE `trn_cheque_details` (
  `id` int NOT NULL,
  `payment_id` int NOT NULL,
  `number` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = recieved , 1 = deposited , 2 = cleared , 3 = bounced',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_enquiry_followups`
--

CREATE TABLE `trn_enquiry_followups` (
  `id` int UNSIGNED NOT NULL,
  `enquiry_id` int UNSIGNED NOT NULL,
  `followup_by` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `outcome` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Pending , 1 = Done',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_expenses`
--

CREATE TABLE `trn_expenses` (
  `id` int NOT NULL COMMENT 'Unique Record Id for system',
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'name of the expense',
  `category_id` int NOT NULL COMMENT 'name of the category of expense',
  `amount` int NOT NULL COMMENT 'expense amount',
  `due_date` date NOT NULL COMMENT 'Due Date for the expense created',
  `repeat` tinyint(1) NOT NULL COMMENT '0 = never repeat , 1 = every day , 2 = every week , 3 = every month , 4 = every year',
  `paid` tinyint(1) NOT NULL COMMENT '0 = false , 1 = true i.e. paid',
  `note` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_invoice`
--

CREATE TABLE `trn_invoice` (
  `id` int NOT NULL COMMENT 'Unique Record Id for system',
  `member_id` int NOT NULL COMMENT 'links to unique record id of mst_members',
  `total` int NOT NULL COMMENT 'total fees/amount generated',
  `pending_amount` int NOT NULL COMMENT 'pending amount',
  `note` text COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'note regarding payments',
  `status` tinyint(1) NOT NULL COMMENT '0 = Unpaid, 1 = Paid,  2 = Partial 3 = overpaid',
  `invoice_number` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'number of the inovice/reciept',
  `discount_percent` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_amount` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_note` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `tax` int NOT NULL,
  `additional_fees` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trn_invoice`
--

INSERT INTO `trn_invoice` (`id`, `member_id`, `total`, `pending_amount`, `note`, `status`, `invoice_number`, `discount_percent`, `discount_amount`, `discount_note`, `created_at`, `updated_at`, `created_by`, `updated_by`, `tax`, `additional_fees`) VALUES
(1, 1, 118, 18, ' ', 2, 'GY1', '0', '0', '', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 18, 0),
(2, 1, 100, 0, ' ', 1, 'GY2', '0', '0', '', '2025-01-18 18:23:04', '2025-01-18 18:23:04', 1, 1, 0, NULL),
(3, 2, 100, 0, ' ', 1, 'GY3', '0', '0', '', '2025-01-18 21:00:00', '2025-01-18 21:00:00', 1, 1, 0, 0),
(4, 3, 100, 0, ' ', 1, 'GY4', '0', '0', '', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 0, 0),
(5, 4, 100, 0, ' ', 1, 'GY5', '0', '0', '', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 0, 0),
(6, 5, 100, 0, ' ', 1, 'GY6', '0', '0', '', '2025-01-16 21:00:00', '2025-01-16 21:00:00', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trn_invoice_details`
--

CREATE TABLE `trn_invoice_details` (
  `id` int NOT NULL,
  `invoice_id` int NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `item_amount` int NOT NULL COMMENT 'amount of the items',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `plan_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trn_invoice_details`
--

INSERT INTO `trn_invoice_details` (`id`, `invoice_id`, `item_amount`, `created_at`, `updated_at`, `created_by`, `updated_by`, `plan_id`) VALUES
(1, 1, 100, '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 2),
(2, 2, 100, '2025-01-18 18:23:04', '2025-01-18 18:23:04', 1, 1, 2),
(3, 3, 100, '2025-01-18 21:00:00', '2025-01-18 21:00:00', 1, 1, 2),
(4, 4, 100, '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 2),
(5, 5, 100, '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1, 2),
(6, 6, 100, '2025-01-16 21:00:00', '2025-01-16 21:00:00', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trn_payment_details`
--

CREATE TABLE `trn_payment_details` (
  `id` int NOT NULL,
  `invoice_id` int NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `payment_amount` int NOT NULL COMMENT 'amount of transaction being done',
  `mode` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '1 = Cash , 0 = Cheque',
  `note` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'misc. note',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trn_payment_details`
--

INSERT INTO `trn_payment_details` (`id`, `invoice_id`, `payment_amount`, `mode`, `note`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 100, '1', ' ', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(2, 2, 100, '1', ' ', '2025-01-18 18:23:04', '2025-01-18 18:23:04', 1, 1),
(3, 3, 100, '1', ' ', '2025-01-18 21:00:00', '2025-01-18 21:00:00', 1, 1),
(4, 4, 100, '1', ' ', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(5, 5, 100, '1', ' ', '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(6, 6, 100, '1', ' ', '2025-01-16 21:00:00', '2025-01-16 21:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trn_settings`
--

CREATE TABLE `trn_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trn_settings`
--

INSERT INTO `trn_settings` (`id`, `key`, `value`, `updated_at`) VALUES
(1, 'financial_start', '2025-01-01', '2025-01-18 22:00:19'),
(2, 'financial_end', '2025-12-31', '2025-01-18 22:00:19'),
(3, 'gym_logo', 'gym_logo.jpg', '2025-01-18 21:42:01'),
(4, 'gym_name', 'AlbseetFit', '2025-01-18 22:00:19'),
(5, 'gym_address_1', '', '2025-01-18 22:00:19'),
(6, 'gym_address_2', '', '2025-01-18 22:00:19'),
(7, 'invoice_prefix', 'GY', '2025-01-18 22:00:19'),
(8, 'invoice_last_number', '6', '2025-01-18 22:02:49'),
(9, 'invoice_name_type', 'gym_name', '2025-01-18 22:00:19'),
(10, 'invoice_number_mode', '1', '2025-01-18 22:00:19'),
(11, 'member_prefix', 'GY', '2025-01-18 22:00:19'),
(12, 'member_last_number', '5', '2025-01-18 22:02:49'),
(13, 'member_number_mode', '1', '2025-01-18 22:00:19'),
(14, 'last_membership_check', '', '2025-01-18 23:14:48'),
(15, 'admission_fee', '0', '2025-01-18 22:00:19'),
(16, 'taxes', '0', '2025-01-18 22:00:19'),
(17, 'sms_api_key', '', '2025-01-18 23:14:48'),
(18, 'sms_sender_id', '', '2025-01-18 23:14:48'),
(19, 'sms', '0', '2025-01-18 22:00:19'),
(20, 'primary_contact', '8672686758', '2025-01-18 22:00:19'),
(21, 'discounts', '5,10,15,20,25', '2025-01-18 22:00:19'),
(22, 'sms_balance', '0', '2025-01-18 23:14:48'),
(23, 'sms_request', '0', '2025-01-18 22:00:19'),
(24, 'sender_id_list', '', '2025-01-18 23:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `trn_sms_log`
--

CREATE TABLE `trn_sms_log` (
  `id` int NOT NULL,
  `number` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shoot_id` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NA',
  `send_time` datetime NOT NULL,
  `sender_id` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_subscriptions`
--

CREATE TABLE `trn_subscriptions` (
  `id` int NOT NULL,
  `member_id` int NOT NULL COMMENT 'links to unique record id of mst_members',
  `invoice_id` int NOT NULL COMMENT 'links to unique record id of trn_invoice',
  `plan_id` int NOT NULL COMMENT 'links to unique record if of mst_plans',
  `start_date` date NOT NULL COMMENT 'start date of subscription',
  `end_date` date NOT NULL COMMENT 'end date of subscription',
  `status` tinyint(1) NOT NULL COMMENT '0 = expired, 1 = ongoing, 2 = renewed, 3 = canceled',
  `is_renewal` tinyint(1) NOT NULL COMMENT '0= false , 1=true',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trn_subscriptions`
--

INSERT INTO `trn_subscriptions` (`id`, `member_id`, `invoice_id`, `plan_id`, `start_date`, `end_date`, `status`, `is_renewal`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, 2, '2025-01-17', '2025-01-17', 2, 0, '2025-01-16 21:00:00', '2025-01-18 18:23:04', 1, 1),
(2, 1, 2, 2, '2025-01-18', '2025-01-18', 1, 1, '2025-01-18 18:23:04', '2025-01-18 18:23:04', 1, 1),
(3, 2, 3, 2, '2025-01-17', '2025-01-17', 1, 0, '2025-01-16 21:00:00', '2025-01-16 21:00:00', 1, 1),
(4, 3, 4, 2, '2025-01-18', '2025-01-18', 1, 0, '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(5, 4, 5, 2, '2025-01-18', '2025-01-18', 1, 0, '2025-01-17 21:00:00', '2025-01-17 21:00:00', 1, 1),
(6, 5, 6, 2, '2025-01-17', '2025-01-17', 3, 0, '2025-01-16 21:00:00', '2025-01-18 19:06:15', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_enquiries_mst_staff_1` (`created_by`),
  ADD KEY `FK_mst_enquiries_mst_staff_2` (`updated_by`);

--
-- Indexes for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_expenses_categories_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_expenses_categories_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_members`
--
ALTER TABLE `mst_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_id` (`member_code`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD KEY `FK_mst_members_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_members_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_plans`
--
ALTER TABLE `mst_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_id` (`plan_code`),
  ADD KEY `FK_mst_plans_mst_services` (`service_id`),
  ADD KEY `FK_mst_plans_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_plans_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_services`
--
ALTER TABLE `mst_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_services_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_services_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mst_sms_events_mst_users_1` (`created_by`),
  ADD KEY `FK_mst_sms_events_mst_users_2` (`updated_by`);

--
-- Indexes for table `mst_sms_triggers`
--
ALTER TABLE `mst_sms_triggers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_users`
--
ALTER TABLE `mst_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_activities_mst_users_1` (`user_id`);

--
-- Indexes for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_cheque_details_trn_payment_details` (`payment_id`),
  ADD KEY `FK_trn_cheque_details_mst_users` (`created_by`),
  ADD KEY `FK_trn_cheque_details_mst_users_2` (`updated_by`);

--
-- Indexes for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_enquiry_followups_mst_enquiries_1` (`enquiry_id`),
  ADD KEY `FK_trn_enquiry_followups_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_enquiry_followups_mst_staff_3` (`updated_by`);

--
-- Indexes for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_expenses_mst_expenses_categories_1` (`category_id`),
  ADD KEY `FK_trn_expenses_mst_users_2` (`created_by`),
  ADD KEY `FK_trn_expenses_mst_users_3` (`updated_by`);

--
-- Indexes for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_invoice_mst_members_1` (`member_id`),
  ADD KEY `FK_trn_payments_mst_users_3` (`created_by`),
  ADD KEY `FK_trn_payments_mst_users_4` (`updated_by`);

--
-- Indexes for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_invoice_details_trn_invoice_1` (`invoice_id`),
  ADD KEY `FK_trn_invoice_details_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_invoice_details_mst_staff_3` (`updated_by`),
  ADD KEY `trn_invoice_details_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_payment_details_1` (`invoice_id`),
  ADD KEY `FK_trn_payment_details_mst_staff_2` (`created_by`),
  ADD KEY `FK_trn_payment_details_mst_staff_3` (`updated_by`);

--
-- Indexes for table `trn_settings`
--
ALTER TABLE `trn_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `trn_sms_log`
--
ALTER TABLE `trn_sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_trn_subscriptions_mst_members_1` (`member_id`),
  ADD KEY `FK_trn_subscriptions_trn_invoice` (`invoice_id`),
  ADD KEY `FK_trn_subscriptions_mst_plans_2` (`plan_id`),
  ADD KEY `FK_trn_subscriptions_mst_staff_3` (`created_by`),
  ADD KEY `FK_trn_subscriptions_mst_staff_4` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID';

--
-- AUTO_INCREMENT for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `mst_members`
--
ALTER TABLE `mst_members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_plans`
--
ALTER TABLE `mst_plans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_services`
--
ALTER TABLE `mst_services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_sms_triggers`
--
ALTER TABLE `mst_sms_triggers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_users`
--
ALTER TABLE `mst_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system';

--
-- AUTO_INCREMENT for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Record Id for system', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trn_settings`
--
ALTER TABLE `trn_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `trn_sms_log`
--
ALTER TABLE `trn_sms_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_enquiries`
--
ALTER TABLE `mst_enquiries`
  ADD CONSTRAINT `FK_mst_enquiries_mst_staff_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_enquiries_mst_staff_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mst_expenses_categories`
--
ALTER TABLE `mst_expenses_categories`
  ADD CONSTRAINT `FK_mst_expenses_categories_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_expenses_categories_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON UPDATE RESTRICT;

--
-- Constraints for table `mst_members`
--
ALTER TABLE `mst_members`
  ADD CONSTRAINT `FK_mst_members_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_members_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mst_plans`
--
ALTER TABLE `mst_plans`
  ADD CONSTRAINT `FK_mst_plans_mst_services` FOREIGN KEY (`service_id`) REFERENCES `mst_services` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_plans_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_plans_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mst_services`
--
ALTER TABLE `mst_services`
  ADD CONSTRAINT `FK_mst_services_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_services_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mst_sms_events`
--
ALTER TABLE `mst_sms_events`
  ADD CONSTRAINT `FK_mst_sms_events_mst_users_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_mst_sms_events_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `mst_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trn_access_log`
--
ALTER TABLE `trn_access_log`
  ADD CONSTRAINT `FK_trn_activities_mst_users_1` FOREIGN KEY (`user_id`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_cheque_details`
--
ALTER TABLE `trn_cheque_details`
  ADD CONSTRAINT `FK_trn_cheque_details_mst_users` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_cheque_details_mst_users_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_cheque_details_trn_payment_details` FOREIGN KEY (`payment_id`) REFERENCES `trn_payment_details` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_enquiry_followups`
--
ALTER TABLE `trn_enquiry_followups`
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_enquiries_1` FOREIGN KEY (`enquiry_id`) REFERENCES `mst_enquiries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_enquiry_followups_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_expenses`
--
ALTER TABLE `trn_expenses`
  ADD CONSTRAINT `FK_trn_expenses_mst_expenses_categories_1` FOREIGN KEY (`category_id`) REFERENCES `mst_expenses_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_expenses_mst_users_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_expenses_mst_users_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_invoice`
--
ALTER TABLE `trn_invoice`
  ADD CONSTRAINT `FK_trn_invoice_mst_members_1` FOREIGN KEY (`member_id`) REFERENCES `mst_members` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_invoice_mst_staff_1` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_invoice_mst_staff_2` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_invoice_details`
--
ALTER TABLE `trn_invoice_details`
  ADD CONSTRAINT `FK_trn_invoice_details_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_invoice_details_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_invoice_details_trn_invoice_1` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `trn_invoice_details_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `mst_plans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_payment_details`
--
ALTER TABLE `trn_payment_details`
  ADD CONSTRAINT `FK_trn_payment_details_1` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_payment_details_mst_staff_2` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_payment_details_mst_staff_3` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trn_subscriptions`
--
ALTER TABLE `trn_subscriptions`
  ADD CONSTRAINT `FK_trn_subscriptions_mst_members_1` FOREIGN KEY (`member_id`) REFERENCES `mst_members` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_subscriptions_mst_plans_2` FOREIGN KEY (`plan_id`) REFERENCES `mst_plans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_subscriptions_mst_staff_3` FOREIGN KEY (`created_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_subscriptions_mst_staff_4` FOREIGN KEY (`updated_by`) REFERENCES `mst_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_trn_subscriptions_trn_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `trn_invoice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
