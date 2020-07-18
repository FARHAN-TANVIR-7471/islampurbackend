-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 05:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user test', '01589665478', NULL, 'user.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 10:04:13', '2020-06-03 10:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_quantity`, `ip_address`, `created_at`, `updated_at`) VALUES
(46, NULL, 7, 1, '127.0.0.1', '2020-07-04 05:10:33', '2020-07-04 05:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'New add', 'email@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-05-21 08:44:30', '2020-05-21 08:44:30'),
(2, 'New add', 'email@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-05-21 08:44:54', '2020-05-21 08:44:54'),
(3, 'New add 3', 'email@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-05-21 08:48:16', '2020-05-21 08:48:16'),
(4, 'Farhan Tanvir', 'f@gmil.com', '01856993214', 'rvrv vfrev vrevre vrevrev', '2020-05-21 12:15:23', '2020-05-21 12:15:23'),
(5, 'New add 4', 'email@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-05-21 12:19:15', '2020-05-21 12:19:15'),
(6, 'Farhan Tanvir', 'farhan@gmail.com', '01856993214', 'hello test', '2020-05-21 12:20:16', '2020-05-21 12:20:16'),
(7, 'New add 5', 'el@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-05-21 14:23:10', '2020-05-21 14:23:10'),
(8, 'New add 5', 'el@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-06-03 09:34:54', '2020-06-03 09:34:54'),
(9, 'New add 5', 'el@gmail.com', '0185623658', 'djrhguei kdfjbui', '2020-06-14 01:29:34', '2020-06-14 01:29:34'),
(10, 'Islampur test', 'islampur@gmail.com', '023659887456', 'islampur test', '2020-06-30 03:12:32', '2020-06-30 03:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_02_130005_create_products_table', 2),
(5, '2020_04_02_130250_create_reviews_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2020_04_26_201727_create_product_types_table', 4),
(12, '2020_04_27_075430_add_name_to_product_types_table', 5),
(13, '2020_05_03_234628_create_carts_table', 6),
(14, '2020_05_04_231225_create_orders_table', 7),
(15, '2020_05_04_231522_create_order_items_table', 7),
(16, '2020_05_21_115753_create_contacts_table', 8),
(17, '2020_06_03_151841_create_admin_table', 9),
(18, '2020_06_03_152513_create_admin_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1262d48cd55ebc001a8b55604b68d58caaa20dd13bd85b6081c5562b5fe2c038f29961e92f5359c2', 1, 1, NULL, '[]', 0, '2020-05-03 09:15:17', '2020-05-03 09:15:17', '2021-05-03 15:15:17'),
('1ad2f62dc3fd7da1271c032231202d93a5c9b9b717d3659a218e6afc2e6ae821231d2bdd0c447c24', 2, 2, NULL, '[]', 0, '2020-04-15 05:23:26', '2020-04-15 05:23:26', '2021-04-15 11:23:26'),
('37f746e95da8eb9cc56f96b8541fea68785264884651400e058d3077b5a0cc575bb5f89aa7d7bfeb', 1, 1, NULL, '[]', 0, '2020-05-06 06:02:20', '2020-05-06 06:02:20', '2021-05-06 12:02:20'),
('44c7e1e16f2b39a615e81b24eda67ac10f2af70fdb248cd2383e92ac62a3068109cb94520eea84eb', 1, 1, NULL, '[]', 0, '2020-05-10 06:19:00', '2020-05-10 06:19:00', '2021-05-10 12:19:00'),
('680417750d30a52ff047399954c700eb117d1c759723e3026e36d06fa0a4a0d2cf93cfaaa851fff5', 1, 1, NULL, '[]', 0, '2020-05-03 08:21:59', '2020-05-03 08:21:59', '2021-05-03 14:21:59'),
('709d1ba87e3d21d98a9919a713cd896fc094081bbdf82805b3843174a98ea1e61e290bd41f0ca7aa', 2, 2, NULL, '[]', 0, '2020-04-15 05:09:35', '2020-04-15 05:09:35', '2021-04-15 11:09:35'),
('c0a020750b287ceacc19aefe8be186372a12dfcc434fc2d4ba3115693679aa996f735f93aa692d76', 1, 1, NULL, '[]', 0, '2020-05-09 08:44:10', '2020-05-09 08:44:10', '2021-05-09 14:44:10'),
('cf81019d379efd95bc6ca6498e7a31ba755cdb70bc02bbbdd118021301f8f9118dea1636b95ffa6d', 2, 2, NULL, '[]', 0, '2020-05-03 07:57:20', '2020-05-03 07:57:20', '2021-05-03 13:57:20'),
('dee950c064fc9850265793d8456c34763f79dba0a42f97d87d5071f3a7ac4e3e6683658ff69dc264', 2, 2, NULL, '[]', 0, '2020-05-03 08:11:00', '2020-05-03 08:11:00', '2021-05-03 14:11:00'),
('e2406ed4254b2b52657fe1e24bf7d752baef050ce7546ec94424d2c12553d3cbd253bf664c28de2e', 1, 1, NULL, '[]', 0, '2020-04-15 06:16:43', '2020-04-15 06:16:43', '2021-04-15 12:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vXdF6x5o4ZqKkSiAuJwTvNMYihjUaoUSCEozifIp', 'http://localhost', 0, 1, 0, '2020-04-15 01:31:09', '2020-04-15 01:31:09'),
(2, NULL, 'Laravel Password Grant Client', 'NQYH2WPpRm6ofdmHwMieOcnqaRR4cdqVIAwX3iTr', 'http://localhost', 0, 1, 0, '2020-04-15 01:31:10', '2020-04-15 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-15 01:31:10', '2020-04-15 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('12f3a76fe03d155a587daa91237280e83fd5c4ff74ffbcfb4971906b3720c6bbcdee08cc4ffb9511', '680417750d30a52ff047399954c700eb117d1c759723e3026e36d06fa0a4a0d2cf93cfaaa851fff5', 0, '2021-05-03 14:21:59'),
('4ebe7054f1efb173d5351d9e862bf84c13d3c5a11e7315b3d54d96cee9738a1fdeb267b8b4781386', '44c7e1e16f2b39a615e81b24eda67ac10f2af70fdb248cd2383e92ac62a3068109cb94520eea84eb', 0, '2021-05-10 12:19:00'),
('61577cb20670d6ef174cadc9abbf7cc5f704cfa699e23c33d2b8bcf526dccd010436f93a850965cd', '37f746e95da8eb9cc56f96b8541fea68785264884651400e058d3077b5a0cc575bb5f89aa7d7bfeb', 0, '2021-05-06 12:02:21'),
('777ac761bd839505a67539e6bdc250af30adc188e8c0436b715f593ce616ed401e4607e5efcd9aee', '1262d48cd55ebc001a8b55604b68d58caaa20dd13bd85b6081c5562b5fe2c038f29961e92f5359c2', 0, '2021-05-03 15:15:17'),
('7c51ddcfba83d42b9075fb1d74a93b0ffeb7387b6566b44bc9afb6ef5a81d2145b0b9d2c3c313021', 'dee950c064fc9850265793d8456c34763f79dba0a42f97d87d5071f3a7ac4e3e6683658ff69dc264', 0, '2021-05-03 14:11:00'),
('9b0359c6ad104dbcd80e118a7919a81fc8cb276bf7f92dbb85a76cf5f63d58d4e6afd4e3e9a68077', '1ad2f62dc3fd7da1271c032231202d93a5c9b9b717d3659a218e6afc2e6ae821231d2bdd0c447c24', 0, '2021-04-15 11:23:26'),
('c34d104de13c12c1e345dd1f39872057b88ac3479b577ca179a0a76134527a2f04df4de3c77ce22c', 'e2406ed4254b2b52657fe1e24bf7d752baef050ce7546ec94424d2c12553d3cbd253bf664c28de2e', 0, '2021-04-15 12:16:43'),
('dbd3873683cb7a8a299837ff209a756526669fb20e5eda21463bf8d8aa06cb9e0a58a67de39e4e4b', 'c0a020750b287ceacc19aefe8be186372a12dfcc434fc2d4ba3115693679aa996f735f93aa692d76', 0, '2021-05-09 14:44:10'),
('e1e0a5c38c4944697be4a2be2755891c0f7eaba7b99374ea357fab42b5d625466aed632874113838', '709d1ba87e3d21d98a9919a713cd896fc094081bbdf82805b3843174a98ea1e61e290bd41f0ca7aa', 0, '2021-04-15 11:09:36'),
('f4428c330b7a72ca4c22a5e2758352e9714e22b0537acfade18fc41594aa1b417ab5a8bce2c0621b', 'cf81019d379efd95bc6ca6498e7a31ba755cdb70bc02bbbdd118021301f8f9118dea1636b95ffa6d', 0, '2021-05-03 13:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Farhan', 'farhan@gmail.com', '0187500123', 'jhihoi', '2020-05-05 02:21:10', '2020-05-05 02:21:10'),
(2, NULL, 'Farhan', 'farhan@gmail.com', '05464848', 'Noakhali Bangladesh', '2020-05-05 02:27:07', '2020-05-05 02:27:07'),
(3, NULL, 'Kh Sohel', 'sohel@gmail.com', '22868266', 'msbregu birg', '2020-05-05 03:47:53', '2020-05-05 03:47:53'),
(4, NULL, 'Korim shak', 'korim@gmail.com', '0125698523', 'Dhaka Bangladesh', '2020-05-08 13:55:02', '2020-05-08 13:55:02'),
(5, NULL, 'Eram Talukder', 'eram@gmail.com', '215875632145', 'Tangail dalduyar, Dhaka', '2020-05-13 12:50:19', '2020-05-13 12:50:19'),
(6, NULL, 'tet', 'gg@gmail.com', '0214536895', 'Dhaka', '2020-05-18 02:41:49', '2020-05-18 02:41:49'),
(7, NULL, 'postman', 'poetman@gmail.com', '1236598654', 'Dhaka', '2020-05-19 08:40:26', '2020-05-19 08:40:26'),
(8, NULL, 'postman', 'poetman@gmail.com', '1236598654', 'Dhaka', '2020-06-14 01:26:36', '2020-06-14 01:26:36'),
(9, NULL, 'islampur test', 'islampur@gmail.com', '02145887456', 'dhaka bangladesh', '2020-06-28 09:12:21', '2020-06-28 09:12:21'),
(10, 1, 'Farhan Test', 'farhan.tanvir199720@gmail.com', '01875001213', '92/b Indira Rooad, Dhaka 1209', '2020-07-02 04:42:35', '2020-07-02 04:42:35'),
(11, 1, 'Farhan Final Test', 'farhan@gmail.com', '03256998754', '92/B, Indira Road, Dhaka', '2020-07-02 05:02:59', '2020-07-02 05:02:59'),
(12, 14, 'Farhan 14', 'farhan@gmail.com', '02154875463', '45/B, Dhanmondi 8, Dhaka', '2020-07-02 06:47:17', '2020-07-02 06:47:17'),
(13, NULL, 'Nayem', 'nayem@gmail.com', '01259887453', 'Dhaka', '2020-07-04 04:52:56', '2020-07-04 04:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `ip_address`, `user_id`, `product_id`, `order_id`, `product_quantity`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', NULL, 56, 1, 3, 1200.00, '2020-05-05 02:21:10', '2020-05-05 02:21:10'),
(2, '127.0.0.1', NULL, 55, 2, 1, 160.00, '2020-05-05 02:27:07', '2020-05-05 02:27:07'),
(3, '127.0.0.1', NULL, 56, 2, 5, 2000.00, '2020-05-05 02:27:07', '2020-05-05 02:27:07'),
(4, '127.0.0.1', NULL, 56, 3, 4, 1600.00, '2020-05-05 03:47:53', '2020-05-05 03:47:53'),
(5, '127.0.0.1', NULL, 13, 3, 1, 198.00, '2020-05-05 03:47:53', '2020-05-05 03:47:53'),
(6, '127.0.0.1', NULL, 54, 4, 1, 95.00, '2020-05-08 13:55:02', '2020-05-08 13:55:02'),
(7, '127.0.0.1', NULL, 1, 4, 1, 716.00, '2020-05-08 13:55:02', '2020-05-08 13:55:02'),
(8, '127.0.0.1', NULL, 48, 4, 1, 701.00, '2020-05-08 13:55:03', '2020-05-08 13:55:03'),
(9, '127.0.0.1', NULL, 57, 5, 2, 1600.00, '2020-05-13 12:50:20', '2020-05-13 12:50:20'),
(10, '127.0.0.1', NULL, 54, 6, 1, 95.00, '2020-05-18 02:41:49', '2020-05-18 02:41:49'),
(11, '127.0.0.1', NULL, 61, 6, 1, 16.00, '2020-05-18 02:41:50', '2020-05-18 02:41:50'),
(12, '127.0.0.1', NULL, 47, 6, 1, 283.00, '2020-05-18 02:41:50', '2020-05-18 02:41:50'),
(13, '127.0.0.1', NULL, 57, 6, 1, 800.00, '2020-05-18 02:41:50', '2020-05-18 02:41:50'),
(14, '127.0.0.1', NULL, 65, 6, 1, 95.00, '2020-05-18 02:41:50', '2020-05-18 02:41:50'),
(15, '127.0.0.1', NULL, 65, 7, 2, 190.00, '2020-05-19 08:40:26', '2020-05-19 08:40:26'),
(16, '127.0.0.1', NULL, 63, 7, 1, 16.00, '2020-05-19 08:40:26', '2020-05-19 08:40:26'),
(17, '127.0.0.1', NULL, 1, 7, 1, 716.00, '2020-05-19 08:40:26', '2020-05-19 08:40:26'),
(18, '127.0.0.1', NULL, 1, 7, 1, 716.00, '2020-05-19 08:40:26', '2020-05-19 08:40:26'),
(19, '127.0.0.1', NULL, 7, 9, 1, 123.00, '2020-06-28 09:12:21', '2020-06-28 09:12:21'),
(20, '127.0.0.1', NULL, 73, 9, 1, 950.00, '2020-06-28 09:12:21', '2020-06-28 09:12:21'),
(21, '127.0.0.1', 1, 65, 10, 2, 190.00, '2020-07-02 04:42:35', '2020-07-02 04:42:35'),
(22, '127.0.0.1', 1, 71, 10, 3, 2847.00, '2020-07-02 04:42:35', '2020-07-02 04:42:35'),
(23, '127.0.0.1', 1, 9, 11, 2, 766.00, '2020-07-02 05:02:59', '2020-07-02 05:02:59'),
(24, '127.0.0.1', 1, 65, 11, 3, 285.00, '2020-07-02 05:02:59', '2020-07-02 05:02:59'),
(25, '127.0.0.1', 14, 65, 12, 3, 285.00, '2020-07-02 06:47:17', '2020-07-02 06:47:17'),
(26, '127.0.0.1', 14, 9, 12, 2, 766.00, '2020-07-02 06:47:17', '2020-07-02 06:47:17'),
(27, '127.0.0.1', 14, 7, 12, 2, 246.00, '2020-07-02 06:47:17', '2020-07-02 06:47:17'),
(28, '127.0.0.1', 14, 6, 12, 2, 610.00, '2020-07-02 06:47:17', '2020-07-02 06:47:17'),
(29, '127.0.0.1', NULL, 73, 13, 1, 950.00, '2020-07-04 04:52:56', '2020-07-04 04:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `custom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `gender_id`, `product_type_id`, `custom`, `number`, `size`, `description`, `image`, `color`, `trend`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Update repellendus', 754, 5, 1, 2, 'yes', 20, 'M', 'Placeat aut autem voluptatibus.', '/images/pm11.jpg', 'LightCoral', 'no', 'active', '2020-04-02 09:45:21', '2020-06-23 06:25:27'),
(2, 'AV vel', 500, 17, 1, 1, 'yes', 8, 'S', 'Et vel vel est ea et. Suscipit optio quam qui beatae.', '/images/pm9.jpg', 'LightSeaGreen', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-23 08:18:38'),
(3, 'AV est', 901, 25, 2, 1, 'yes', 8, 'M', 'Ut ipsa minima eius ut eum occaecati. Est harum eos ipsam voluptas alias accusamus et.', '/images/pm3.jpg', 'ForestGreen', 'no', 'active', '2020-04-02 09:45:21', '2020-06-23 07:18:44'),
(4, 'ABC harum', 1000, 15, 2, 2, 'yes', 10, 'S', 'Nulla officiis blanditiis dolor optio vel quod praesentium rerum.', '/images/pm3.jpg', 'LightPink', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-23 08:13:58'),
(5, 'perferendis', 427, 29, 1, 1, 'yes', 1, 'M', 'Commodi quidem nihil ea voluptatibus a. Voluptate eveniet odit autem porro. Nostrum blanditiis aliquam iure hic et recusandae. Voluptas harum et id voluptatum magnam repellendus.', '/images/pm3.jpg', 'Azure', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-24 02:54:34'),
(6, 'laborum', 355, 14, 2, 1, 'no', 3, 'M', 'Pariatur a alias nesciunt sit quo ad. Eveniet quaerat dignissimos nulla id. Deleniti perferendis sapiente aut rem laboriosam quo.', '/images/mff1.jpg', 'MistyRose', 'no', 'active', '2020-04-02 09:45:21', '2020-06-24 02:55:19'),
(7, 'ducimus', 140, 12, 1, 1, 'yes', 9, 'M', 'Molestiae dolor recusandae laudantium totam nostrum.', '/images/pt5.jpg', 'DarkSeaGreen', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-28 01:38:26'),
(8, 'quidem', 817, 19, 1, 1, 'yes', 9, 'M', 'Sed et consequuntur quaerat sequi magni tempore exercitationem.', '/images/pm3.jpg', 'Khaki', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-24 02:56:19'),
(9, 'eum', 485, 21, 1, 1, 'yes', 9, 'M', 'Consequatur soluta quis quia commodi ut ut sit quaerat. Eius praesentium vel est voluptatem aspernatur.', '/images/pm11.jpg', 'MediumBlue', 'no', 'active', '2020-04-02 09:45:21', '2020-06-28 01:38:11'),
(10, 'ABC', 503, 24, 1, 1, 'yes', 3, 'XXL', 'Itaque culpa odio occaecati placeat doloremque sapiente.', '/images/pm3.jpg', 'CornflowerBlue', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-23 07:15:43'),
(27, 'Update Test', 307, 24, 1, 1, 'yes', 10, 'X', 'Aut et cumque voluptas recusandae', '/images/pm3.jpg', 'LemonChiffon', 'yes', 'active', '2020-04-02 09:45:21', '2020-06-23 06:17:29'),
(32, 'quae', 859, 12, 1, 1, 'yes', 8, 'X', 'In ea iure non vel. Et praesentium facilis quis quia aut nostrum itaque. Tempora natus est et tempore. Maiores et quae earum repellat consequatur voluptatum aut.', '/images/pm9.jpg', 'Lime', 'no', 'active', '2020-04-02 09:45:21', '2020-06-28 01:37:46'),
(33, 'dolorum', 521, 25, 1, 6, 'yes', 10, 'X', 'Nihil sint nisi consequatur consequuntur quia sit eum. Corporis ea dolorem aperiam debitis accusamus porro. Impedit eum sint incidunt. Voluptatibus quia tempore ex aperiam corrupti officiis qui. Qui omnis alias dolores voluptates itaque et ut.', '/images/pt4.jpg', 'Thistle', 'no', 'active', '2020-04-02 09:45:21', '2020-06-24 03:07:59'),
(57, 'Boy Shart', 1000, 20, 1, 1, 'Yes', 10, 'XXL', 'The description', '/images/pb6.jpg', 'Black', 'yes', 'active', '2020-05-08 10:42:59', '2020-05-08 13:52:01'),
(58, 'Man Shart', 150, 5, 1, 1, 'yes', 10, 'XL', 'The description field is required The description field is required', '/images/pm3.jpg', 'ABCD Black', 'yes', 'active', '2020-05-08 12:43:40', '2020-06-24 03:02:15'),
(61, 'Test', 20, 20, 1, 2, 'yes', 20, 'M', ',mkbmrtm mbrt dberb fbd', '/images/pm1.jpg', 'Black', 'yes', 'active', '2020-05-11 07:50:28', '2020-05-11 07:50:28'),
(64, 'Saree', 1500, 20, 2, 8, 'no', 20, 'M', 'sdvbejhbe bbhriugir brheiryg', '/images/pf8.jpg', 'Black', 'yes', 'active', '2020-05-11 09:54:00', '2020-05-11 09:54:00'),
(65, 'Online Test A', 100, 5, 2, 1, 'Yes', 10, 'XL', 'The description field is required The description field is required', '/images/pb6.jpg', 'Test color', 'yes', 'active', '2020-05-14 12:52:09', '2020-05-14 12:52:09'),
(71, 'Online TestB', 999, 5, 1, 1, 'Yes', 10, 'XL', 'The description field is required The description field is required', '/images/pb6.jpg', 'Test color', 'yes', 'active', '2020-06-14 01:29:13', '2020-06-23 03:19:45'),
(73, 'Islampur test', 1000, 5, 2, 8, 'yes', 20, 'M', 'islamput test', '/images/sahaj-shoppers-women-27s-saree-500x500.jpg', 'Black', 'yes', 'active', '2020-06-28 02:15:01', '2020-06-28 02:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `created_at`, `name`, `updated_at`) VALUES
(1, '2020-04-26 20:46:02', '', NULL),
(2, NULL, 'shart', NULL),
(3, NULL, 'pant', NULL),
(4, '2020-04-26 18:00:00', 't-shirt', NULL),
(5, '2020-04-27 07:49:25', 'Shart C', '2020-04-27 07:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(2, 32, 'Eryn Stoltenberg', 'Shannon Dickinson', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(5, 1, 'Dr. Claudia Bahringer DVM', 'Dr. Jarret Lemke', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(9, 7, 'Ms. Patience Ortiz IV', 'Dr. Georgette Rodriguez', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(12, 7, 'Trever Goyette', 'Mrs. Prudence Cormier', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(13, 7, 'Scottie Schuster', 'Patrick Ledner', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(18, 27, 'Meagan Casper', 'Miss Ellen Mosciski', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(23, 32, 'Mrs. Bessie Hessel DDS', 'Mrs. Jermaine Dooley Sr.', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(27, 1, 'Reva Cremin MD', 'London Gorczany', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(30, 2, 'Julianne Braun', 'Edwin Yundt', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(33, 9, 'Dax Heathcote', 'Lurline Welch', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(35, 8, 'Clark Oberbrunner', 'Dr. Nettie Morissette DVM', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(36, 6, 'Prof. Cody D\'Amore I', 'Caesar Bergnaum DVM', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(38, 10, 'Camryn Predovic', 'Agustina Williamson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(40, 5, 'Tom Effertz MD', 'Leila Hoeger Jr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(44, 32, 'Clint Langworth', 'Joannie Hudson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(52, 3, 'Nikki Denesik Jr.', 'Daphney Pacocha', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(64, 5, 'Patrick Von', 'Marianne Wiegand', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(68, 2, 'Jennifer Hamill', 'Ole Fay', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(70, 4, 'Mr. Levi White', 'Mrs. Janis Mueller DVM', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(72, 32, 'Armando Metz', 'Mr. Grant Corwin', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(75, 1, 'Mario Bergnaum', 'Joseph Greenfelder', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(78, 2, 'Mercedes Schmeler', 'Prof. Van Okuneva II', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(87, 32, 'Toney Schiller', 'Braeden Schamberger', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(98, 4, 'Jacinthe Cole', 'Charley Schuppe', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(100, 2, 'Mrs. Myriam Goyette', 'Dr. Jodie Rogahn IV', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(102, 4, 'Carmella Sporer', 'Tate O\'Keefe IV', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(108, 33, 'Rashad Crist', 'Kale Weissnat', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(109, 6, 'Aniya Okuneva I', 'Hulda Wilkinson', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(111, 10, 'Dr. Ambrose Raynor III', 'Coby Gerlach', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(118, 10, 'Ms. Liana Ziemann', 'Ms. Margarett Hane Jr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(122, 6, 'Fidel Waelchi Sr.', 'Neoma Becker', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(128, 8, 'Pearl Wisozk', 'Orie Keebler', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(131, 32, 'Destiny Deckow', 'Christine Kris', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(132, 27, 'Luciano Buckridge', 'Demetrius Barrows', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(135, 10, 'Aletha Thompson', 'Prof. Savion Greenfelder', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(139, 2, 'Yasmin Schroeder', 'Shane Ferry', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(142, 1, 'Dr. Imani Tromp II', 'Retha Johnston', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(146, 33, 'Samara Boyle III', 'Garnet Blick', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(150, 33, 'Lucile Gutkowski', 'Janie Zemlak', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(152, 9, 'Dr. Nathen Thompson PhD', 'Emmie Lubowitz', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(156, 5, 'Krista Rau', 'Hailie Hintz', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(157, 8, 'Weldon Doyle', 'Mrs. Missouri Kshlerin III', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(162, 33, 'Verona Quitzon', 'Keenan Hahn IV', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(164, 6, 'Dr. Timmy Huel I', 'Jovani Zieme III', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(173, 7, 'Justina Krajcik', 'Tito DuBuque', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(177, 5, 'Cecilia Huel', 'Colton Lemke', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(179, 2, 'Odell Kuphal', 'Maci Maggio', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(181, 32, 'Magnolia Wilderman', 'Maurine Thiel', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(183, 8, 'Claudine Homenick IV', 'Prof. Maximillia Klocko IV', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(184, 1, 'Dr. Dave Anderson', 'Mr. Lambert Herzog', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(185, 27, 'Brook Goldner', 'Rebeca Heller', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(196, 33, 'Antonia Ziemann Jr.', 'Ursula Zboncak', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(197, 5, 'Lucinda Miller', 'Hassie Halvorson', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(198, 33, 'Lavonne Carroll Sr.', 'Dr. Archibald Moen', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(199, 10, 'Hyman Sporer', 'Enoch Olson', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(204, 6, 'Bertrand Feil MD', 'Dolly Lebsack Sr.', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(205, 5, 'Kaylin Keeling', 'Francisco Fisher', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(208, 33, 'Ola Reichert', 'Mrs. Adrianna Cremin I', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(216, 32, 'Adella Littel', 'Halie Bechtelar', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(218, 1, 'Julia Haag DDS', 'Dayana Stamm', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(220, 7, 'Elyssa Spencer', 'Lauryn Torphy', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(222, 33, 'Chanel Bauch', 'Grover Boyer', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(223, 10, 'Kavon Mraz', 'Ronaldo Zulauf', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(224, 10, 'Buford Nienow', 'Trycia Roob', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(239, 8, 'Ms. Antonietta Kunze II', 'Raegan Bergstrom', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(240, 33, 'Estella Brekke', 'Wilber Balistreri', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(244, 8, 'Payton Wuckert DVM', 'Rogers Bernier DVM', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(249, 32, 'Melvina Aufderhar', 'Claudine Strosin V', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(252, 1, 'Leonardo Howell', 'Bertrand Hammes', 1, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(253, 7, 'Prof. Tavares Hudson Sr.', 'Regan Ondricka', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(257, 10, 'Justen Deckow', 'Piper Rice', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(260, 6, 'Lauriane Wilkinson', 'Tillman Harris PhD', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(262, 5, 'Prof. Elissa Bechtelar DVM', 'Diamond Koepp', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(264, 3, 'Mrs. Rahsaan Kessler', 'Tommie Stamm', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(269, 7, 'Dr. Ressie Little', 'Janice Lemke', 5, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(271, 6, 'Gardner Daugherty PhD', 'Deborah Wiza', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(273, 4, 'Dominique Auer', 'Carli Waelchi', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(275, 2, 'Telly Crooks', 'Mrs. Isabella Gutkowski', 0, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(289, 7, 'Houston Von', 'Isabell Cassin', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(295, 32, 'Ezequiel Howe PhD', 'Grace Haag', 4, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(296, 9, 'Mrs. Cassandre Roberts DDS', 'Sydnie Kiehn', 2, '2020-04-02 09:45:22', '2020-04-02 09:45:22'),
(299, 1, 'Dr. Marie Rath II', 'Mariane Mohr', 3, '2020-04-02 09:45:22', '2020-04-02 09:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '01875001213', 'admin', 'admin@gmail.com', NULL, '$2y$10$TmhjAEn/1AD9BQf8CyxrYO0Oqb01qQU4FthwCM7lmcd4dtkz1mi9K', NULL, '2020-04-02 06:37:07', '2020-04-02 06:37:07'),
(2, 'user', '01840838735', NULL, 'user@gmail.com', NULL, '$2y$10$xwXxghm4l51YAD5Zoq0tm.pa/oCP7AbP3wuyzCdF34Q5cYMwspnTm', NULL, '2020-04-02 06:39:25', '2020-04-02 06:39:25'),
(3, 'user test', '01589665478', NULL, 'user.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 09:57:34', '2020-06-03 09:57:34'),
(5, 'user test vbg', '01589665478', NULL, 'sduser.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 10:07:12', '2020-06-03 10:07:12'),
(7, 'user test vbg', '01589665478', NULL, 'suser.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 10:08:28', '2020-06-03 10:08:28'),
(8, 'abc', '01589665478', NULL, 'abc.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 22:50:39', '2020-06-03 22:50:39'),
(9, 'abcd', '01589665478', NULL, 'abcd.test@gmail.com', NULL, '12345678', NULL, '2020-06-03 22:51:41', '2020-06-03 22:51:41'),
(10, 'abcde', '01589665478', NULL, 'abcde.test@gmail.com', NULL, '$2y$10$FRuLXTMaGNpJiPnd9mlDP.7yy4fC1pGkIDY7lu3tyFZKmxMA8yN0a', NULL, '2020-06-04 02:38:51', '2020-06-04 02:38:51'),
(11, 'font end test', '01259886325', NULL, 'fontend@gmail.com', NULL, '$2y$10$0BLyzuXtYp/y7BOuqmvzdOeV6Iw9R3/2j/ECBYO1BR1iA97gTIzha', NULL, '2020-06-04 08:00:02', '2020-06-04 08:00:02'),
(13, 'abcdef', '01589665478', NULL, 'abcdef.test@gmail.com', NULL, '$2y$10$K3s7THflq4IOHqVfA9fQreihv2dE8DtrlLG2IfCh4yZJr8BST/0eS', NULL, '2020-06-14 01:25:37', '2020-06-14 01:25:37'),
(14, 'Farhan Tanvir', '01875000000', NULL, 'farhan@gmail.com', NULL, '$2y$10$W2Zz7nHciUALB4xf8lvl/uXsHEPMUNeWYB6IJyURMqFMSS2tz3gE2', NULL, '2020-06-27 10:08:48', '2020-06-27 10:08:48'),
(16, 'Ccc', '0158996547', NULL, 'c@gmail.com', NULL, '$2y$10$Q8io8JmhEKmwmpHzDyEr.uXIRswxv43njbwzE2HQvXZ4PKQOYicDO', NULL, '2020-07-02 00:52:09', '2020-07-02 00:52:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
