-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 09:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cl1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DevMarketer', '\Zadmin@admin.com', NULL, '$2y$10$4Fi.kCpSRh0ZqX4I2gSje.LKp3xyiekGLULvkv7jHkcE22xVUNmtq', NULL, '2020-03-04 10:09:32', '2020-03-04 10:09:32');

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
(4, '2020_02_19_131730_create_posts_table', 1),
(5, '2020_02_20_230127_add_user_id_to_posts', 2),
(6, '2020_02_27_114048_add_cover_image_to_posts', 3),
(7, '2020_03_02_124318_create_admins_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@test.com', '$2y$10$F8FmlhyKo9225xLPidzJ2u6e3IQmvtMf85HI.lc8smgBvlDHOWlJ6', '2020-03-09 07:37:18'),
('ropbravine@gmail.com', '$2y$10$RcWC1kg8CxCXLredYF0CJ.IoQdWO53BjKMjH1Po4VvBtyjy3BT1RW', '2021-04-15 07:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(11, 'allano', 'man u', '2020-02-27 16:46:18', '2020-02-27 16:46:18', 3, 'noimage.jpg'),
(12, 'hi there its me', 'hi', '2020-02-27 17:07:55', '2020-02-27 17:07:55', 3, 'noimage.jpg'),
(14, 'this is the perfect post', 'helooolloo', '2020-02-28 05:20:31', '2020-02-28 05:20:31', 3, 'battle-197727_1920_1582878031.jpg'),
(15, 'this is the first post', 'woihujnka', '2020-02-28 06:09:06', '2020-02-28 06:09:06', 3, 'war-1822769_1920_1582880946.jpg'),
(16, 'BBI corona', 'hello delilah', '2020-02-29 08:18:50', '2020-02-29 08:18:50', 3, 'East Africas Capital Nairobi City  photo gallery  JamiiForums ... - Copy_1582975129.jpg'),
(17, 'hi ron', 'ersdtfygukhjln;mjhugctyuyfigohkj;knbjhvguhkjlhj;mnbkvjhcg jnkl,jvcghvkjl', '2020-03-03 04:06:17', '2020-03-03 04:06:17', 3, 'East Africas Capital Nairobi City  photo gallery  JamiiForums ... - Copy_1583219177.jpg'),
(18, 'hi  lala', 'dfzgfhjkvnmhjkiyutcvhjklhgvhutygvhcjgfcgtgcghtgjhfyuv', '2020-03-08 08:49:26', '2020-03-08 08:49:26', 3, 'ak8HGK_1583668166.jpg'),
(19, 'tfyugijokpl;\'.', 'hbjnkmlp[;[]p[dopmkdskmmkmr', '2020-09-09 10:20:28', '2020-09-09 10:20:28', 4, 'noimage.jpg');

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
(1, 'Bravine', 'ropbravine@gmail.com', NULL, '$2y$10$KJQyzck.Da/Ij/7WiJ200uT55QIZuYSr/T0o.C08ucQ37czG8qVly', NULL, '2020-02-20 19:42:13', '2020-02-20 19:42:13'),
(2, 'solo', 'solo@gmail.com', NULL, '$2y$10$vzcbw0Q9iTsg63XzjcqOqO7fwa30esrL4icJKaBQkgMpim.2Pu6JO', NULL, '2020-02-21 08:06:53', '2020-02-21 08:06:53'),
(3, 'rop', 'test@test.com', NULL, '$2y$10$/my6NuzmLLbeH.wGF45sXummICpLHsP0/3W91TvSzVgRSFVl7hMfq', NULL, '2020-02-26 14:54:20', '2020-02-26 14:54:20'),
(4, 'amos', 'gregorykipz42@gmail.com', NULL, '$2y$10$VLDrCcoES1oz7tFmmFQB1ubOVc9ws0jo0v1q.X.Rz4Dt9Uej1DMgi', NULL, '2020-09-09 10:19:51', '2020-09-09 10:19:51'),
(5, 'sj', 'register@gmail.com', NULL, '$2y$10$zrURtYOGl2ObwaaUM3EkE.ZnrdVFM2L8z45fc87IK.dU1yBoNbqFC', NULL, '2021-04-28 04:21:13', '2021-04-28 04:21:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
