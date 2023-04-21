-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 10:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_17_191528_create_tasks_table', 1),
(6, '2023_04_17_191547_create_status_table', 1),
(7, '2023_04_17_192104_create_user_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', '06fb4dd2609602e1aaa489abc972c61c5c6487bd2555a3a67bc24f33607475a4', '[\"*\"]', NULL, NULL, '2023-04-17 17:18:35', '2023-04-17 17:18:35'),
(2, 'App\\Models\\User', 1, 'authToken', '82d959df9e34c1ec84329b48cc410026e17b41d2c6a2a9fbd9c9ab88209ab5c9', '[\"*\"]', '2023-04-17 17:47:34', NULL, '2023-04-17 17:24:08', '2023-04-17 17:47:34'),
(3, 'App\\Models\\User', 1, 'authToken', '6c4f7209823576ef921331e8d99fc6c5383ecb5ee216052ab9e289f9c53d5e31', '[\"*\"]', '2023-04-17 18:59:23', NULL, '2023-04-17 18:01:48', '2023-04-17 18:59:23'),
(4, 'App\\Models\\User', 1, 'authToken', 'b7ef62b36608c064205a75f352de337fe7af0bc96f0f259ecb1e029bac5c1d34', '[\"*\"]', NULL, NULL, '2023-04-20 20:39:27', '2023-04-20 20:39:27'),
(5, 'App\\Models\\User', 1, 'authToken', '1b5b66177546d1b46a2e16a46d4a7b23deba6940c2c9b7d2daa45160b2245fb5', '[\"*\"]', NULL, NULL, '2023-04-20 20:39:42', '2023-04-20 20:39:42'),
(6, 'App\\Models\\User', 1, 'authToken', '4413f1b0398fca28d3690666e039bdb7b4a6671265a0a2208e37fd300e1ed895', '[\"*\"]', NULL, NULL, '2023-04-20 20:39:43', '2023-04-20 20:39:43'),
(7, 'App\\Models\\User', 1, 'authToken', '1feadeafeebb66a86ac20303f2ac392f268ae2eed18e0c023307c4a3f580cac4', '[\"*\"]', NULL, NULL, '2023-04-20 20:39:44', '2023-04-20 20:39:44'),
(8, 'App\\Models\\User', 1, 'authToken', 'b48eb3fa1bd26d9fe543f2a3c9210e6ddad56d14f8c79226be21c62c5eef69f5', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:48', '2023-04-20 20:42:48'),
(9, 'App\\Models\\User', 1, 'authToken', 'ae57a02aac212504ec4b347a4f339dbb4e4f1e42c38e2fc6da2c4898df13a0a3', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:49', '2023-04-20 20:42:49'),
(10, 'App\\Models\\User', 1, 'authToken', 'c51bcb2f22e2b4e2b3a7a3c78c2d32da82077ba2827456be51be1a2350bd18c6', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:50', '2023-04-20 20:42:50'),
(11, 'App\\Models\\User', 1, 'authToken', 'fae446e9772f8ed9aa36d8430dbf5c50839a0a5b1a0de134e64d14c300460092', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:51', '2023-04-20 20:42:51'),
(12, 'App\\Models\\User', 1, 'authToken', '71700128429e65ecd69c2cff273f779d177eff6b304b080fd81b13624c5d9983', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:51', '2023-04-20 20:42:51'),
(13, 'App\\Models\\User', 1, 'authToken', '1f0d0a4b8d30bcc3dc5f053b09d5b04c45161b7e3ab0fb98b9e9ee4f3f0eaafb', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:52', '2023-04-20 20:42:52'),
(14, 'App\\Models\\User', 1, 'authToken', '53f31fcd4002e6f3a73200dfccd615d3e66d52ade63b578388045b1f891d2830', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:53', '2023-04-20 20:42:53'),
(15, 'App\\Models\\User', 1, 'authToken', '6784a91996131a87f384cfaaf0475d93accc24f46e20a3f495f4913e47fa3034', '[\"*\"]', NULL, NULL, '2023-04-20 20:42:58', '2023-04-20 20:42:58'),
(16, 'App\\Models\\User', 1, 'authToken', '377ff5f0d532c59530b15f70863bed548d7dfa45ecf02b30d42110d35dbfd037', '[\"*\"]', NULL, NULL, '2023-04-20 20:50:07', '2023-04-20 20:50:07'),
(17, 'App\\Models\\User', 1, 'authToken', '623e88e7247b9a28fcf756b27f82c18b3124f1b80c4a412ad9e33f083d12748a', '[\"*\"]', NULL, NULL, '2023-04-20 20:50:08', '2023-04-20 20:50:08'),
(18, 'App\\Models\\User', 1, 'authToken', '6bd2b50ac6acee8a283d5662eb401c7f862068467c8d32c3110fe98a1773813f', '[\"*\"]', NULL, NULL, '2023-04-20 20:50:46', '2023-04-20 20:50:46'),
(19, 'App\\Models\\User', 1, 'authToken', '8168c85ce37a1c44e48bc3664d2df8e4d7a01650849f49469bd23ef869948b04', '[\"*\"]', NULL, NULL, '2023-04-20 20:57:38', '2023-04-20 20:57:38'),
(20, 'App\\Models\\User', 1, 'authToken', 'dd771430cbcc2c5c88a11884dfa8858b779a15fd5ff3a33806bccf4d29742531', '[\"*\"]', NULL, NULL, '2023-04-20 20:58:45', '2023-04-20 20:58:45'),
(21, 'App\\Models\\User', 1, 'authToken', '440a1230f54db96d6b95f7352f5e4fa5ed079cfa761951dd15e424a787930251', '[\"*\"]', NULL, NULL, '2023-04-20 21:13:05', '2023-04-20 21:13:05'),
(22, 'App\\Models\\User', 1, 'authToken', '82dc16c7a1cf1c51dbf9d40b1cebaeed2fd0247eec5a8e5dd9c3c5d5c9ef01a6', '[\"*\"]', NULL, NULL, '2023-04-20 21:13:07', '2023-04-20 21:13:07'),
(23, 'App\\Models\\User', 1, 'authToken', '517ebbb0770616ffcdb534762342feabea89ce0fb4e40959b28cf42d8415394f', '[\"*\"]', NULL, NULL, '2023-04-20 21:13:35', '2023-04-20 21:13:35'),
(24, 'App\\Models\\User', 1, 'authToken', '3494b4900b9b580bbaecadc3c10d986cf444b16daf365c54cbe34a88b225dbae', '[\"*\"]', NULL, NULL, '2023-04-20 21:14:05', '2023-04-20 21:14:05'),
(25, 'App\\Models\\User', 1, 'authToken', '117fc942f4861fb326f514c6d9f3c02f8f94fb0012fc1473a9d1081f22606698', '[\"*\"]', NULL, NULL, '2023-04-20 21:14:18', '2023-04-20 21:14:18'),
(26, 'App\\Models\\User', 1, 'authToken', '51bf452f675c07e8e5d441cb8447656682a1aaa8b354e783ac6a69abd9bf5d9d', '[\"*\"]', NULL, NULL, '2023-04-20 21:14:20', '2023-04-20 21:14:20'),
(27, 'App\\Models\\User', 1, 'authToken', 'e5779ece1e19122393696e821c7f72345733382e287a7332206ac347ff1d25b7', '[\"*\"]', NULL, NULL, '2023-04-20 21:14:30', '2023-04-20 21:14:30'),
(28, 'App\\Models\\User', 1, 'authToken', '925a9c12b20a89289ce98cb06e957a0434cee80652e88c9293fb7e2df8ea4381', '[\"*\"]', NULL, NULL, '2023-04-20 21:14:57', '2023-04-20 21:14:57'),
(29, 'App\\Models\\User', 1, 'authToken', '8b62cad0e8d06ee50f7760a44256fcc2afd9d02c93c7b77215441bc050ee1b9b', '[\"*\"]', NULL, NULL, '2023-04-20 21:16:27', '2023-04-20 21:16:27'),
(30, 'App\\Models\\User', 1, 'authToken', 'fa039ab160473ead7ffb595b6b706cb5d6314713f4622d80a9e4b68fcedc4411', '[\"*\"]', NULL, NULL, '2023-04-20 21:17:02', '2023-04-20 21:17:02'),
(31, 'App\\Models\\User', 1, 'authToken', '8c2e869558bda7c86d5b7923c105baf00f9490b9f5f245686c7810f17c0335d9', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:21', '2023-04-20 21:59:21'),
(32, 'App\\Models\\User', 1, 'authToken', '71e2d6ab7f05d6a83e3be925818fc325cf8c41bb0019eb13538ea2fbc00c73bb', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:23', '2023-04-20 21:59:23'),
(33, 'App\\Models\\User', 1, 'authToken', 'd9130ef6591822536d3ede24d0f74ed1c34c799ee1fbf2af2d3f291630c69730', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:23', '2023-04-20 21:59:23'),
(34, 'App\\Models\\User', 1, 'authToken', '79cce12dbb26ab8e6b81467dafd52cc7972862c256372a6a5ba71faed6faed63', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:24', '2023-04-20 21:59:24'),
(35, 'App\\Models\\User', 1, 'authToken', 'a7ac0063d56100cee01597295c4991121834da717a3904545afc342913e54318', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:24', '2023-04-20 21:59:24'),
(36, 'App\\Models\\User', 1, 'authToken', '2a5c2457c4cb49d4cf541f480e8f528050a84a09169619fdef8395e1e9d9a8c5', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:25', '2023-04-20 21:59:25'),
(37, 'App\\Models\\User', 1, 'authToken', '3d7fcbb8320e3a58f966ac0b04e4634eb74deeebffb84fc61fa18535d0a029a2', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:25', '2023-04-20 21:59:25'),
(38, 'App\\Models\\User', 1, 'authToken', 'b1fb6a28111db4a8fe62ff19fb5c4fe73be47eae74f4220a752157926e882cee', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:25', '2023-04-20 21:59:25'),
(39, 'App\\Models\\User', 1, 'authToken', 'cd2118ce740ab7c122b2b6a0dea205792ca04f7ee0c5126e9c4b9b786d1e35fe', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:26', '2023-04-20 21:59:26'),
(40, 'App\\Models\\User', 1, 'authToken', 'e8098d64ba286afedf452ea1338b6a971a7e0098e48fd13ca08043f6bead84ad', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:26', '2023-04-20 21:59:26'),
(41, 'App\\Models\\User', 1, 'authToken', '5d97e57bd919df81d705a28341ab8716c99f3a9a3d07e45bfeefaa10a4f4f33e', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:26', '2023-04-20 21:59:26'),
(42, 'App\\Models\\User', 1, 'authToken', '4887d9140229d40e52c682be7e4260044100c83ddf1c80ab0e5a5894e6b04bd1', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:39', '2023-04-20 21:59:39'),
(43, 'App\\Models\\User', 1, 'authToken', 'fdd23386c41f461d3eb1fa34202a23ca9a11023804d9aafdae52a3362fcac207', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:41', '2023-04-20 21:59:41'),
(44, 'App\\Models\\User', 1, 'authToken', '76ca8a2fc16e1eb0d007582d63d22f20614cfb69da7abeafa0fd6dbaa7516f78', '[\"*\"]', NULL, NULL, '2023-04-20 21:59:42', '2023-04-20 21:59:42'),
(45, 'App\\Models\\User', 1, 'authToken', 'e315fa4fc0b921f88b06065c21cd62e27f80babc920bcf1ee172af5c2e13ec5a', '[\"*\"]', NULL, NULL, '2023-04-20 22:00:16', '2023-04-20 22:00:16'),
(46, 'App\\Models\\User', 1, 'authToken', 'cdb0c05611d81be0cc8d580f87b2e79d45342955a5dca407f0972d2e3f52b6e2', '[\"*\"]', NULL, NULL, '2023-04-20 22:00:41', '2023-04-20 22:00:41'),
(47, 'App\\Models\\User', 1, 'authToken', '8714b33466b2cdc491bf89e8beaa2951a02c3da613485e13f276f8a421a91a90', '[\"*\"]', NULL, NULL, '2023-04-20 22:01:14', '2023-04-20 22:01:14'),
(48, 'App\\Models\\User', 1, 'authToken', '890ea4185de3326d0dd773c67296ba1e994af774fea4c3a936c97044f4c19183', '[\"*\"]', NULL, NULL, '2023-04-20 22:01:33', '2023-04-20 22:01:33'),
(49, 'App\\Models\\User', 1, 'authToken', 'a2fb7b8e8ba14887209cc28f8588488b8c4b0a4c3fd6d756c5c38be6c2744193', '[\"*\"]', NULL, NULL, '2023-04-20 22:03:28', '2023-04-20 22:03:28'),
(50, 'App\\Models\\User', 1, 'authToken', '0e6e132f45bf5af5002d1626501a221b86930ba0110570de32a3d90508ba8856', '[\"*\"]', NULL, NULL, '2023-04-20 22:03:48', '2023-04-20 22:03:48'),
(51, 'App\\Models\\User', 1, 'authToken', '8950ce049f94b107ce5cfdbe446c1c2f5ee0bfa7b13f85a8efc24ef49b15c816', '[\"*\"]', '2023-04-21 17:20:31', NULL, '2023-04-20 22:04:16', '2023-04-21 17:20:31'),
(52, 'App\\Models\\User', 1, 'authToken', 'c66d071e0e7cb329cffa3d8624bc059a62c0d967d39e5eaecaf873bbf189207b', '[\"*\"]', '2023-04-21 14:00:25', NULL, '2023-04-21 14:00:20', '2023-04-21 14:00:25'),
(53, 'App\\Models\\User', 1, 'authToken', 'e1f099c37281e5d78f2ef8fff014b2ae43b53ab380b244e688bacf2e3622f483', '[\"*\"]', NULL, NULL, '2023-04-21 14:00:23', '2023-04-21 14:00:23'),
(54, 'App\\Models\\User', 1, 'authToken', 'f56fb18983456ebf5a9a8dba8ab7a57e9c8287f88bd35c85648d48f5f60a2810', '[\"*\"]', '2023-04-21 17:15:49', NULL, '2023-04-21 14:03:13', '2023-04-21 17:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pending', '2023-04-17 18:50:06', '2023-04-17 18:50:06', NULL),
(3, 'completed', '2023-04-21 09:52:57', '2023-04-21 09:54:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `due_date`, `description`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'task 2', '2023-04-23', 'Description', 1, '2023-04-17 18:47:09', '2023-04-17 18:47:09', NULL),
(3, 'New Task', '2023-04-20', 'Task Description', 1, '2023-04-21 10:47:04', '2023-04-21 10:52:22', NULL),
(4, 'Test 3', '2023-03-28', 'Description', 3, '2023-04-21 15:09:05', '2023-04-21 15:56:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$/w7sLf/P/1hFDABRBhSCyeMhsuydLiAZX8mn/o9covmR0k2yP6iY2', NULL, '2023-04-17 17:05:34', '2023-04-17 17:05:34', NULL),
(2, 'test user', 'testuser@gmail.com', '$2y$10$aTUEYom7AigbwD58KuVX2uJRqFHzinj7/KyMAVdm9c8QzwvHgR5Y2', NULL, '2023-04-17 18:05:00', '2023-04-17 18:05:00', NULL),
(7, 'New User', 'nuser@gmail.com', '$2y$10$AlHaTwdxxf4zFF0D/HfDweRDJFTR1vKTbG2530uBpL9QUPgWoRBxO', NULL, '2023-04-21 09:19:13', '2023-04-21 09:19:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

CREATE TABLE `user_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`id`, `user_id`, `status_id`, `task_id`, `start_time`, `end_time`, `due_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 7, 3, 4, '18:56:00', '18:56:00', '2023-04-21', '2023-04-21 15:56:45', '2023-04-21 15:56:45', NULL),
(5, 2, 3, 4, '18:56:00', '18:56:00', '2023-04-21', '2023-04-21 15:56:45', '2023-04-21 15:56:45', NULL),
(6, 1, 3, 4, '18:56:00', '18:56:00', '2023-04-21', '2023-04-21 15:56:45', '2023-04-21 15:56:45', NULL),
(7, 2, 1, 3, '18:56:00', '18:56:00', '2023-04-21', '2023-04-21 15:56:53', '2023-04-21 15:56:53', NULL),
(8, 7, 1, 3, '18:56:00', '18:56:00', '2023-04-21', '2023-04-21 15:56:53', '2023-04-21 15:56:53', NULL),
(9, 7, 3, 2, '18:57:00', '18:57:00', '2023-04-21', '2023-04-21 15:57:01', '2023-04-21 16:23:01', NULL),
(10, 1, 1, 2, '18:57:00', '18:57:00', '2023-04-21', '2023-04-21 15:57:01', '2023-04-21 15:57:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_tasks`
--
ALTER TABLE `user_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
