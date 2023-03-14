-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 02:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-portfolio`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_10_124510_create_skills_table', 2),
(6, '2023_02_10_124527_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `skill_id`, `name`, `image`, `project_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chat Bot', 'projects/JvzK42Klp4A3FzO211P7bZasAiL7Ll5OC4bBSjZQ.png', 'https://github.com/hsmyv/Chatbot', '2023-02-10 10:13:44', '2023-02-17 03:04:32'),
(3, 3, 'Ecommerce', 'projects/xJeXTqDTJofoiKCSn37eJARoJZ1AhCmYcJUXTTMi.png', 'https://github.com/hsmyv/PHP-Ecommerce', '2023-02-13 03:54:38', '2023-02-17 03:05:16'),
(4, 7, 'Education', 'projects/QV2OYP1nVZskRfXinHchDHJNygm8TGz6CVgVGeNx.png', 'https://github.com/hsmyv/Laravel-Education', '2023-02-13 04:19:48', '2023-02-17 03:06:35'),
(7, 6, 'Employees Management System', 'projects/bvXD23fHflgpqDsdfva3IcbO2jAjR6VamLgx8FZY.png', 'https://github.com/hsmyv/Laravel-Employees-Management-System-with-VueJS', '2023-02-15 03:25:53', '2023-02-17 03:37:48'),
(8, 10, 'Horror Building', 'projects/1gvvofJ3Ivb3slWUy3LFDBYJmogS7mE1mRrtJLnW.png', 'https://github.com/hsmyv/3dsMax-HorrorBuilding', '2023-02-15 03:26:32', '2023-02-17 03:09:32'),
(9, 9, 'Zombie Pursuit', 'projects/Zt9aF7ZpMvkJxmSXaMqKr9X5pZw9Lrr28yEGJNo3.png', 'https://github.com/hsmyv/Unity3D-ZombiePursuit', '2023-02-15 03:26:59', '2023-02-17 03:11:02'),
(10, 11, 'Casino Game', 'projects/6yWidjXmqCNFLdapG9MlJ714MGOag1GqNAAY2dTj.png', 'https://github.com/hsmyv/C-CasinoGame', '2023-02-15 03:27:36', '2023-02-17 03:11:32'),
(11, 9, 'Escape From Haunted House', 'projects/Ma0oO3dIKYVGkQfLJAyfDfe0X5ipO44T5eR0V8m5.png', 'https://github.com/hsmyv/Unity3d-EscapeFromHauntedHouse', '2023-02-15 03:28:11', '2023-02-17 03:12:08'),
(13, 3, 'Simple E-commerce', 'projects/vCXtSnBSDfQJT6yOx5mc6VHGOLsGFOmpUJuhYhVy.png', 'https://github.com/hsmyv/PHP-Simple-Ecommerce', '2023-02-15 03:29:05', '2023-02-17 03:13:20'),
(14, 3, 'PHP-MVC', 'projects/FMydZ6cTmucsCes8FhpaFhWP938odeF6pUjjxTvF.png', 'https://github.com/hsmyv/PHP-MVC', '2023-02-17 03:14:42', '2023-02-17 03:14:42'),
(15, 7, 'Dynamic Warehouse V2', 'projects/bS721j9oMCbLL9C41EGLT2foJScRLlO2vdm1QluK.png', 'https://github.com/hsmyv/Laravel-Dynamic-Warehouse-v2', '2023-02-17 03:15:38', '2023-02-17 03:15:38'),
(16, 7, 'E-commerce', 'projects/9YBq9nyjjAkQMShbzZvtt3KGOy5ZDSoduG4NxiPj.png', 'https://github.com/hsmyv/Laravel-Ecommerce', '2023-02-17 03:16:28', '2023-02-17 03:16:28'),
(17, 7, 'Short Link', 'projects/kWciVSBMkh9wx85TnTQZWeaojwsoSftWqpRMvuB4.png', 'https://github.com/hsmyv/Laravel-Short-link', '2023-02-17 03:17:21', '2023-02-17 03:17:21'),
(18, 7, 'MMCard', 'projects/kdANY1AdQ4VimSXzW6AfKk2kEVfZyabbefLp2MS3.png', 'https://github.com/hsmyv/Laravel-MMCard', '2023-02-17 03:17:58', '2023-02-17 03:17:58'),
(19, 7, 'RealTime Chat', 'projects/wksqKjFbcYdCYFcHATphs54IXHNMGLFn5ZPOglgt.png', 'https://github.com/hsmyv/Laravel-Realtime-Chat', '2023-02-17 03:18:30', '2023-02-17 03:18:30'),
(20, 7, 'Application Management API', 'projects/DgZp7Fomss9AkVv329dIsB47HBhuwKuQ7e5uKk86.png', 'https://github.com/hsmyv/Laravel-ApplicationManagementAPI', '2023-02-17 03:19:12', '2023-02-17 03:19:12'),
(21, 7, 'Portfolio API', 'projects/d2S0zBiOS1TdvqkdZZrmwOBigKENnyelTp1LBXIT.png', 'https://github.com/hsmyv/Laravel-PortfolioAPI', '2023-02-17 03:20:08', '2023-02-17 03:20:08'),
(22, 7, 'CRUD API V1', 'projects/VdHJLh9P4pbhT64Dxcydirqfm1X1v5eWiUjJok4s.png', 'https://github.com/hsmyv/Laravel-CRUD-API-V1', '2023-02-17 03:20:37', '2023-02-17 03:20:37'),
(23, 7, 'Warehouse API', 'projects/taUCA2aBMKohj5cutBvSznBUBMmvlgQ3C1FmWDPd.png', 'https://github.com/hsmyv/Laravel-API_Warehouse', '2023-02-17 03:20:58', '2023-02-17 03:20:58'),
(24, 7, 'Blog', 'projects/dAO8CyON411zCOW3z5kqx1xu9GnnqcLNF7g0kwnJ.png', 'https://github.com/hsmyv/Laravel-Blog', '2023-02-17 03:21:24', '2023-02-17 03:21:24'),
(25, 8, 'CRUD API', 'projects/HHim2cuejUH4y8XSQNDH3ECU8c6fCq2Rg6sCsDfe.png', 'https://github.com/hsmyv/GO-CRUD_API', '2023-02-17 03:24:57', '2023-02-17 03:24:57'),
(26, 8, 'Age Bot', 'projects/U4SVJh5vRTiDfxtS4HKTEyvQ649RXRlVdDKr1F3u.png', 'https://github.com/hsmyv/Go-AgeBot', '2023-02-17 03:25:25', '2023-02-17 03:25:25'),
(27, 8, 'CRM', 'projects/V9nN5DGOjJM2LVXZNcB6u9woI5xDILn6wy0Semcx.png', 'https://github.com/hsmyv/Go-Fiber-CRM', '2023-02-17 03:26:26', '2023-02-17 03:26:26'),
(28, 8, 'Warehouse', 'projects/1onBHqISI9WJoEo9XYKcHtjVKv7us5KNRqplBQU6.png', 'https://github.com/hsmyv/Go-Warehouse', '2023-02-17 03:26:53', '2023-02-17 03:26:53'),
(29, 8, 'Blockchain', 'projects/hR99qNxVbpZpyfQOzvTmaNVd4Vqz3Al2bPNBqffL.png', 'https://github.com/hsmyv/Go-Blockchain', '2023-02-17 03:27:23', '2023-02-17 03:27:23'),
(30, 11, 'Supermarket Billing System', 'projects/pmf2FJgY0q4V3Ts5J9ZzCJfz3B198Xa1GoS4Vlvh.png', 'https://github.com/hsmyv/C-SupermarketBillingSystem', '2023-02-17 03:28:12', '2023-02-17 03:28:12'),
(31, 11, 'Authentication', 'projects/HddgKyWRVxJ2NfJiYo7DzW8vPhzD7WGtEf7qP0hC.png', 'https://github.com/hsmyv/C-Authentication', '2023-02-17 03:28:38', '2023-02-17 03:28:57'),
(32, 11, 'Simple Clock', 'projects/JiCn3M3KoDDOcC9jZ6ebd8BSDGyOTt0gOlnSucBT.png', 'https://github.com/hsmyv/C-SimpleClock', '2023-02-17 03:29:35', '2023-02-17 03:29:35'),
(33, 6, 'Portfolio', 'projects/RFKgI2eSkyt4ilk3ZPre36p6iosOn4Cb0aFQ93PL.png', 'https://github.com/hsmyv/Vuejs-portfolio-laravel-inertiaJs', '2023-02-17 03:38:39', '2023-02-17 03:43:21'),
(34, 14, 'Simple Modern App', 'projects/PFROSG6cQJzEErHPyrZS6ESepa9Sot3VmvZFIDgB.png', 'https://github.com/hsmyv/Inertiajs-Simple-ModernApp', '2023-02-17 03:39:58', '2023-02-17 03:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript', 'skills/dxmsX9CzNDV51HbNzIuCzFNkMLAoto9evJYgaXEy.png', '2023-02-10 09:52:31', '2023-02-14 07:40:07'),
(3, 'PHP', 'skills/sKTiQfT36ZwjqspAp4VxDj1UHMLmaj9GRpaToBMl.png', '2023-02-13 03:34:32', '2023-02-14 07:34:40'),
(6, 'VueJS', 'skills/zTeqHP3O68FAkUjn0xNEoebe35M3vLs3hpQOQm0w.png', '2023-02-14 04:14:30', '2023-02-17 03:35:02'),
(7, 'Laravel', 'skills/kwt2KoFoNlN7al5QMtbig2TKXyuxDW4ZnvcNSlpy.png', '2023-02-14 04:14:46', '2023-02-14 04:14:46'),
(8, 'Golang', 'skills/3nM4PYQauxXSF9Y70jsyhC89qXsC784TF3uCaSIq.png', '2023-02-14 04:15:58', '2023-02-17 03:24:13'),
(9, 'Unity', 'skills/cvv4afCmIYuzCOqc5vwA99u0j677c5bHK0RjcSiy.png', '2023-02-14 07:36:09', '2023-02-14 07:38:56'),
(10, '3ds Max', 'skills/h81PyNoxnxuNNYl3rWYIosGAteItO0k7KGfLU2aC.png', '2023-02-14 07:41:07', '2023-02-14 07:41:34'),
(11, 'C++', 'skills/FzSniDKFvCbG3XjPcTs7bL2rFgvYkp1CgWKOSwB8.png', '2023-02-14 07:42:39', '2023-02-14 07:42:58'),
(14, 'InertiaJS', 'skills/YG0KoowbTyIuyaT775sh01mVmSvFgeOqT2PDbjii.png', '2023-02-17 03:39:21', '2023-02-17 03:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hasan', 'hsmusayev@gmail.com', NULL, '$2y$10$6UPbFS1mCyEHNiG7RzSq9.juccsZFjcaeZGKIkSzp1V/HTatDo/1u', NULL, '2023-02-10 09:04:12', '2023-02-10 09:04:12');

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
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
