-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 05:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_19_173440_create_projects_table', 1),
(6, '2024_12_19_173756_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\User', 1, 'admin-token', 'fb6068d86c956bb05b2a06fc61cd39ee7cd7bc9de48f29c3934187c2fd39c690', '[\"*\"]', '2024-12-19 13:27:20', NULL, '2024-12-19 13:03:57', '2024-12-19 13:27:20'),
(5, 'App\\Models\\User', 1, 'admin-token', '65aad00c24668e38cd47bc2087aeeba816111b5edf324f5089c04b1c4f73dde2', '[\"*\"]', NULL, NULL, '2024-12-21 10:50:33', '2024-12-21 10:50:33'),
(6, 'App\\Models\\User', 1, 'admin-token', '476298c3547f34dac9c85bd4d4fb15f36d2d5a35304edf9498b2c041899b10d8', '[\"*\"]', NULL, NULL, '2024-12-21 10:51:30', '2024-12-21 10:51:30'),
(7, 'App\\Models\\User', 1, 'admin-token', '1d0c63c5c613277e8d7a6ca7ab0b06c44676066efa8e8c1a46ff52718a7a68d5', '[\"*\"]', NULL, NULL, '2024-12-21 10:55:42', '2024-12-21 10:55:42'),
(8, 'App\\Models\\User', 1, 'admin-token', 'bb6de36f04f7ef688bdc52b7f3b5bd69d70e0fb1ceef041663b74cafe25bd2b2', '[\"*\"]', NULL, NULL, '2024-12-21 11:07:07', '2024-12-21 11:07:07'),
(9, 'App\\Models\\User', 1, 'admin-token', '1bb0a83db2000f54b3ec3f2d4e8a846d9c659dbaf145c58d2c2993edde7eeddd', '[\"*\"]', NULL, NULL, '2024-12-21 11:07:44', '2024-12-21 11:07:44'),
(10, 'App\\Models\\User', 1, 'admin-token', 'f9c19cf744d31273dfe4180b97f46e29de505756e4d4587d66781dd7ca8a7b71', '[\"*\"]', NULL, NULL, '2024-12-21 11:13:15', '2024-12-21 11:13:15'),
(11, 'App\\Models\\User', 1, 'admin-token', 'e1e16e3143fbfdb542bb52b29079af2f2d92cafab17e67de29fae3cd9189d10b', '[\"*\"]', NULL, NULL, '2024-12-21 11:14:00', '2024-12-21 11:14:00'),
(12, 'App\\Models\\User', 1, 'admin-token', '20375e1b3c8dea00572bf29b060e37a51754ccebed4aed437d28c53f87cfcf9d', '[\"*\"]', NULL, NULL, '2024-12-21 11:36:01', '2024-12-21 11:36:01'),
(13, 'App\\Models\\User', 1, 'admin-token', '426751f731874ebb3cb3181e6b13ba06d80da9f6e9b8352e40bd90c3153d8b0a', '[\"*\"]', NULL, NULL, '2024-12-21 11:36:03', '2024-12-21 11:36:03'),
(14, 'App\\Models\\User', 1, 'admin-token', '6325fec55e9c568fe35399de7ca3b26abdd33ba89f0cc574c184a21dd4328f7b', '[\"*\"]', NULL, NULL, '2024-12-21 11:36:10', '2024-12-21 11:36:10'),
(15, 'App\\Models\\User', 1, 'admin-token', '2db7a33e55524fb17f4609f6fcdcb1be5adc8bb2f11b0db61957e09223cce18a', '[\"*\"]', NULL, NULL, '2024-12-21 11:39:52', '2024-12-21 11:39:52'),
(16, 'App\\Models\\User', 1, 'admin-token', 'ffe7105edf917e572d7f6e61afb6f312b15e1bf98f176f7f4379ad2771e5edfc', '[\"*\"]', NULL, NULL, '2024-12-21 11:50:26', '2024-12-21 11:50:26'),
(17, 'App\\Models\\User', 1, 'admin-token', '5d02ae8dd248a44ca5f81f447c1d1f42a4cdf67531f6119f0aefcc17c2b96d15', '[\"*\"]', NULL, NULL, '2024-12-21 11:50:46', '2024-12-21 11:50:46'),
(18, 'App\\Models\\User', 1, 'admin-token', '3ccfd94e3e791143bc4331ca5918493632eb3f3f5d3d9c67e04bbbf0619d41d0', '[\"*\"]', NULL, NULL, '2024-12-21 11:50:52', '2024-12-21 11:50:52'),
(19, 'App\\Models\\User', 1, 'admin-token', '6a52c1542379b494e9172c12500b123ebc7894f141f72c4c329220529ecc21a0', '[\"*\"]', NULL, NULL, '2024-12-21 12:01:48', '2024-12-21 12:01:48'),
(20, 'App\\Models\\User', 1, 'admin-token', '008361a63aece155f6e6e4e3f68638a673ab5fb5ab83d4e0adbbd3e8891f97d5', '[\"*\"]', NULL, NULL, '2024-12-21 13:04:47', '2024-12-21 13:04:47'),
(21, 'App\\Models\\User', 1, 'admin-token', '9606084bf49fedbb95640f6938368c7ec35e3dcb62289f4ef4e7b1b70724c692', '[\"*\"]', NULL, NULL, '2024-12-21 13:04:48', '2024-12-21 13:04:48'),
(22, 'App\\Models\\User', 1, 'admin-token', '47d3e6697225ed069c95e54a61244967e93da70fb7323ec202a7642bb5ffc957', '[\"*\"]', NULL, NULL, '2024-12-21 13:04:57', '2024-12-21 13:04:57'),
(23, 'App\\Models\\User', 1, 'admin-token', '9b938be3c0dec407dcdb558f200663bb6c351698025b980ae26e11e96b836571', '[\"*\"]', '2024-12-21 14:50:38', NULL, '2024-12-21 13:05:37', '2024-12-21 14:50:38'),
(24, 'App\\Models\\User', 1, 'admin-token', 'b53889bb4456fcbe555b045fa75c5a7d8b3caa2869a3452431d6860aa0fc669e', '[\"*\"]', NULL, NULL, '2024-12-21 14:49:51', '2024-12-21 14:49:51'),
(25, 'App\\Models\\User', 1, 'admin-token', 'a80209ea7ce5e0cb830785f6aa869857c6ae64d796919262dbf7aecdb7aeea1b', '[\"*\"]', '2024-12-22 05:00:26', NULL, '2024-12-22 04:45:36', '2024-12-22 05:00:26'),
(26, 'App\\Models\\User', 1, 'admin-token', 'd7a89cd01a783b92fae9ab66e34bc96adbd3a9a15ef6dc20e2346e74b7eef5f7', '[\"*\"]', '2024-12-22 05:55:37', NULL, '2024-12-22 05:01:31', '2024-12-22 05:55:37'),
(27, 'App\\Models\\User', 1, 'admin-token', '8e14d655e26828bd6e2c4a35884bf0f7f825cf52732ace33558dd377dac0c383', '[\"*\"]', NULL, NULL, '2024-12-22 07:17:41', '2024-12-22 07:17:41'),
(28, 'App\\Models\\User', 1, 'admin-token', 'e805d91831f47af04f60f80392950a8f1cd9272304b020f3c81792fc2c198ca5', '[\"*\"]', NULL, NULL, '2024-12-22 07:48:56', '2024-12-22 07:48:56'),
(29, 'App\\Models\\User', 1, 'admin-token', '0f60e35a7a239352a3bb8a0b2db5824ab4ca86ef670b5c1b9c3548c86271b0c5', '[\"*\"]', '2024-12-22 09:16:32', NULL, '2024-12-22 07:49:04', '2024-12-22 09:16:32'),
(30, 'App\\Models\\User', 1, 'admin-token', '6d81b9ebbbf3042a8690aa603620379fdeb6142a7a4127d1ea52ffd7ad82d3a7', '[\"*\"]', NULL, NULL, '2024-12-22 09:20:15', '2024-12-22 09:20:15'),
(31, 'App\\Models\\User', 1, 'admin-token', '88be2cc388c797f729e39e78901cbdb1fd915b8cdd533fddb88a61648c7b4e5d', '[\"*\"]', '2024-12-22 09:20:36', NULL, '2024-12-22 09:20:28', '2024-12-22 09:20:36'),
(32, 'App\\Models\\User', 1, 'admin-token', 'd983bda46e0cd92753923c65070c66340e3e41564278b89cc347c3b7170ebd0d', '[\"*\"]', NULL, NULL, '2024-12-22 09:20:43', '2024-12-22 09:20:43'),
(33, 'App\\Models\\User', 1, 'admin-token', '28f1563931090516f51aaa69da22bdf94c19ae5c2b17b46f1c02cf5f2b378e04', '[\"*\"]', '2024-12-22 09:22:39', NULL, '2024-12-22 09:22:20', '2024-12-22 09:22:39'),
(34, 'App\\Models\\User', 1, 'admin-token', '0b01b8b5a5cd300bfbdbba87963811f630cf9a5b70349b8fafc18888e7d30289', '[\"*\"]', '2024-12-22 09:29:08', NULL, '2024-12-22 09:23:25', '2024-12-22 09:29:08'),
(35, 'App\\Models\\User', 1, 'admin-token', '98ce9aee1d604a71e2051a7ba99430f1b0749da0da899e8be80f5274eaa2ef3e', '[\"*\"]', NULL, NULL, '2024-12-22 09:29:35', '2024-12-22 09:29:35'),
(36, 'App\\Models\\User', 1, 'admin-token', 'd918227ee8896166a20fd74e134a5a18211a8df92a80f1ab58aa5b4c87742d8d', '[\"*\"]', NULL, NULL, '2024-12-22 09:30:01', '2024-12-22 09:30:01'),
(37, 'App\\Models\\User', 1, 'admin-token', '69109fccaf7fa622ed885396426e3237556416d9e9ed41a44b41807004e46dd0', '[\"*\"]', '2024-12-22 09:50:27', NULL, '2024-12-22 09:33:30', '2024-12-22 09:50:27'),
(38, 'App\\Models\\User', 1, 'admin-token', '85b55b3f56373fd492722942f2a9b1d762ff61b22990d27ec0a04b6ef89b5941', '[\"*\"]', '2024-12-22 09:55:21', NULL, '2024-12-22 09:55:12', '2024-12-22 09:55:21'),
(39, 'App\\Models\\User', 1, 'admin-token', '479304681cc907eabd37b26b4a98cffa94abc338b647670dccbc5c67848ca28d', '[\"*\"]', NULL, NULL, '2024-12-22 10:04:49', '2024-12-22 10:04:49'),
(40, 'App\\Models\\User', 1, 'admin-token', '041bf5c3936c632638e03d7d725378d2043d550ffa3004e61c499e2084707e7e', '[\"*\"]', '2024-12-22 10:08:11', NULL, '2024-12-22 10:08:00', '2024-12-22 10:08:11'),
(41, 'App\\Models\\User', 1, 'admin-token', '664554a8845895aa53ef851368d1414db88b8c18837aade85e11bd40e58025eb', '[\"*\"]', '2024-12-22 10:11:31', NULL, '2024-12-22 10:11:15', '2024-12-22 10:11:31'),
(42, 'App\\Models\\User', 1, 'admin-token', '524431c7c6fbf544009107983f99e205e06fd54d189d9053d308a3e650209fd7', '[\"*\"]', NULL, NULL, '2024-12-22 10:17:39', '2024-12-22 10:17:39'),
(43, 'App\\Models\\User', 1, 'admin-token', 'ba5f6967e3855d7520a861a88d5d3a775bc2b669aa6e695065566a4c5e2c9a83', '[\"*\"]', NULL, NULL, '2024-12-22 10:17:51', '2024-12-22 10:17:51'),
(44, 'App\\Models\\User', 1, 'admin-token', '36f52982af7cb9e7592598c99a298c9e1bd22d9f6fe694f1073c7988f585f31f', '[\"*\"]', NULL, NULL, '2024-12-22 10:20:01', '2024-12-22 10:20:01'),
(45, 'App\\Models\\User', 1, 'admin-token', 'e09aaabcb596a0bd406c585ba43d3f3ea7a321ec3fd87f3e357be15a9ea3e3ec', '[\"*\"]', NULL, NULL, '2024-12-22 10:20:10', '2024-12-22 10:20:10'),
(46, 'App\\Models\\User', 1, 'admin-token', 'e76920e42472f0b96eae4e612896f3e087b1bd52f78b038a1b55a3d088f26811', '[\"*\"]', NULL, NULL, '2024-12-22 10:20:50', '2024-12-22 10:20:50'),
(47, 'App\\Models\\User', 1, 'admin-token', '0c62f73e1c28197d97db03d5676c3831f05dc3d9512691832cae49e6a32b68fa', '[\"*\"]', NULL, NULL, '2024-12-22 10:20:57', '2024-12-22 10:20:57'),
(48, 'App\\Models\\User', 1, 'admin-token', '8a9852c91a9c1901bd5bff301025aeb66bd048367a5ab4eaac35ef426169ea62', '[\"*\"]', NULL, NULL, '2024-12-22 10:21:59', '2024-12-22 10:21:59'),
(49, 'App\\Models\\User', 1, 'admin-token', '19b6c3ddbaac8252e22633867037ac219942ff9a78e6376106e46c5df1efdeb1', '[\"*\"]', NULL, NULL, '2024-12-22 10:22:05', '2024-12-22 10:22:05'),
(50, 'App\\Models\\User', 1, 'admin-token', '8533447b2b0fedf9dc15edf75dabbe9f7ce2af9ec5adc360a5f0458f42c49797', '[\"*\"]', NULL, NULL, '2024-12-22 10:22:23', '2024-12-22 10:22:23'),
(51, 'App\\Models\\User', 1, 'admin-token', '3344f7c637f3b3fcbc94658115afd3a7e048a47d97254c165009311d0fed85ff', '[\"*\"]', NULL, NULL, '2024-12-22 10:22:37', '2024-12-22 10:22:37'),
(52, 'App\\Models\\User', 1, 'admin-token', '58f4904fa800e0cd137ba32d82a94604a0e9641ba6775d88d3e5b01eaf1ad504', '[\"*\"]', NULL, NULL, '2024-12-22 10:28:40', '2024-12-22 10:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT current_timestamp(),
  `end_date` date DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `end_date`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Project Alpha', 'Description for Project Alpha', '2024-12-20', '2024-12-20', NULL, NULL, '2024-12-19 13:24:47', '2024-12-19 13:24:47', NULL),
(9, 'New Project', 'Description', '2024-12-22', '2024-12-22', NULL, NULL, '2024-12-21 14:18:17', '2024-12-21 14:18:17', NULL),
(12, 'New project 2 update', 'Descriptor sdfgsd', '2024-12-22', '2024-12-22', NULL, NULL, '2024-12-21 14:46:04', '2024-12-21 14:49:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `estimate_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `order`, `project_id`, `start_date`, `due_date`, `estimate_time`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Project Alpha', 'Description for Project Alpha', 0, 4, NULL, '2024-12-20', NULL, 1, NULL, NULL, '2024-12-22 05:55:37', '2024-12-22 05:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Azam Ali', 'azamalibd808@gmail.com', NULL, '$2y$10$ymjYZXhb5v5nMl0D1eKKieeHSF8OiZtepjGrV8eQ9zoxIG9UBePwy', 'admin', NULL, '2024-12-19 12:01:49', '2024-12-19 12:01:49');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
