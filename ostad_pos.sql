-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 08:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ostad_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Dell', 2, '2025-03-21 11:30:48', '2025-03-21 11:30:48'),
(5, 'HP', 2, '2025-03-21 11:32:00', '2025-03-21 11:32:00'),
(6, 'A4Tech', 2, '2025-03-21 11:32:10', '2025-03-21 11:32:10'),
(7, 'Gigabyte', 2, '2025-03-21 11:32:16', '2025-03-21 11:32:16'),
(9, 'HP', 1, '2025-03-26 00:25:34', '2025-03-26 00:25:34'),
(10, 'Malik Pollard', 1, '2025-03-26 00:25:39', '2025-03-26 00:25:39'),
(11, 'Aristotle Barker', 1, '2025-03-26 00:25:43', '2025-03-26 00:25:43'),
(12, 'Rhiannon Pena', 1, '2025-03-26 00:25:49', '2025-03-26 00:25:49'),
(13, 'Jerry Campbell', 1, '2025-03-26 00:25:53', '2025-03-26 00:25:53'),
(14, 'Lyle Joyner', 1, '2025-03-26 00:26:02', '2025-03-26 00:26:02'),
(15, 'Eric Reese', 1, '2025-03-26 00:26:17', '2025-03-26 00:26:17'),
(16, 'Chase Bowman', 1, '2025-03-26 00:26:56', '2025-03-26 00:26:56'),
(17, 'Cody Gay', 4, '2025-04-06 00:24:55', '2025-04-06 00:24:55'),
(18, 'Piper Ellison', 4, '2025-04-06 00:24:59', '2025-04-06 00:24:59'),
(19, 'Fleur Blackburn', 4, '2025-04-06 00:25:03', '2025-04-06 00:25:03'),
(20, 'Hayden Blair', 4, '2025-04-06 00:25:10', '2025-04-06 00:25:10'),
(21, 'Tashya Hopkins', 4, '2025-04-06 00:25:16', '2025-04-06 00:25:16'),
(22, 'Fredericka Mcknight', 4, '2025-04-06 00:25:21', '2025-04-06 00:25:21'),
(23, 'Madeline Mathews', 4, '2025-04-06 00:28:20', '2025-04-06 00:28:20'),
(24, 'Rhonda Howell', 5, '2025-04-06 00:50:36', '2025-04-06 00:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ila Alvarado', 'wejixysedu@mailinator.com', '+1 (287) 786-5745', 1, '2025-03-26 00:28:27', '2025-03-26 00:28:27'),
(2, 'Clare Pittman', 'gyrovux@mailinator.com', '+1 (187) 881-1639', 1, '2025-03-26 00:28:31', '2025-03-26 00:28:31'),
(3, 'Nadine Pennington', 'zututi@mailinator.com', '+1 (465) 182-6076', 4, '2025-04-06 00:25:28', '2025-04-06 00:25:28'),
(4, 'Signe Alston', 'diref@mailinator.com', '+1 (288) 352-9003', 4, '2025-04-06 00:25:32', '2025-04-06 00:25:32'),
(5, 'Warren Ellis', 'tovo@mailinator.com', '+1 (364) 534-5154', 4, '2025-04-06 00:25:36', '2025-04-06 00:25:36'),
(6, 'Randall Fowler', 'nyjus@mailinator.com', '+1 (742) 343-7341', 4, '2025-04-06 00:25:41', '2025-04-06 00:25:41'),
(7, 'Tyler Kirkland', 'pyle@mailinator.com', '+1 (934) 698-1172', 4, '2025-04-06 00:25:47', '2025-04-06 00:25:47'),
(8, 'Summer Hurst', 'kosagyru@mailinator.com', '+1 (171) 899-3949', 4, '2025-04-06 00:28:53', '2025-04-06 00:28:53'),
(9, 'Evan Hurley', 'vadetu@mailinator.com', '+1 (465) 714-7671', 5, '2025-04-06 00:51:12', '2025-04-06 00:51:12');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `payable` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `discount`, `vat`, `payable`, `user_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '1585', '221.9', '0', '1363.1', 4, 3, '2025-04-06 00:29:23', '2025-04-06 00:29:23'),
(2, '8616', '8740', '0', '-124', 4, 6, '2025-04-06 00:30:13', '2025-04-06 00:30:13'),
(3, '2464', '15', '0', '2449', 5, 9, '2025-04-06 00:52:28', '2025-04-06 00:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) NOT NULL,
  `sale_price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 4, '1', '768', '2025-04-06 00:29:23', '2025-04-06 00:29:23'),
(2, 1, 14, 4, '1', '351', '2025-04-06 00:29:23', '2025-04-06 00:29:23'),
(3, 1, 16, 4, '1', '466', '2025-04-06 00:29:23', '2025-04-06 00:29:23'),
(4, 2, 13, 4, '19', '177', '2025-04-06 00:30:13', '2025-04-06 00:30:13'),
(5, 2, 14, 4, '7', '351', '2025-04-06 00:30:14', '2025-04-06 00:30:14'),
(6, 2, 16, 4, '6', '466', '2025-04-06 00:30:14', '2025-04-06 00:30:14'),
(7, 3, 17, 5, '9', '152', '2025-04-06 00:52:29', '2025-04-06 00:52:29'),
(8, 3, 18, 5, '8', '137', '2025-04-06 00:52:32', '2025-04-06 00:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_15_180113_create_customers_table', 1),
(5, '2025_03_15_185629_create_categories_table', 1),
(6, '2025_03_15_185633_create_products_table', 1),
(7, '2025_03_15_185635_create_invoices_table', 1),
(8, '2025_03_15_190116_create_invoice_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `unit`, `image`, `created_at`, `updated_at`) VALUES
(7, 2, 6, 'Lenovo 12', '125000', '69', 'uploads/1742584838.png', '2025-03-21 13:20:38', '2025-03-21 13:20:38'),
(8, 1, 10, 'Maxine Brady', '330', '99', 'uploads/1742970435.png', '2025-03-26 00:27:15', '2025-03-26 00:27:15'),
(9, 1, 9, 'Curran Lawrence', '777', '11', NULL, '2025-03-26 00:27:28', '2025-03-26 00:27:28'),
(10, 1, 12, 'Iliana Ellison', '570', '51', NULL, '2025-03-26 00:27:36', '2025-03-26 00:27:36'),
(11, 1, 14, 'Thaddeus Sampson', '629', '92', NULL, '2025-03-26 00:28:00', '2025-03-26 00:28:00'),
(12, 4, 18, 'Alden Maynard', '768', '69', 'uploads/1743920777.png', '2025-04-06 00:26:17', '2025-04-06 00:29:23'),
(13, 4, 19, 'Clio Beasley', '177', '0', NULL, '2025-04-06 00:26:23', '2025-04-06 00:30:13'),
(14, 4, 19, 'Igor Forbes', '351', '18', NULL, '2025-04-06 00:26:29', '2025-04-06 00:30:14'),
(15, 4, 17, 'Maggie Short', '640', '95', NULL, '2025-04-06 00:26:35', '2025-04-06 00:26:35'),
(16, 4, 17, 'Noah Hayes', '466', '59', NULL, '2025-04-06 00:29:05', '2025-04-06 00:30:14'),
(17, 5, 24, 'September Ellis', '152', '82', 'uploads/1743922292.png', '2025-04-06 00:51:33', '2025-04-06 00:52:30'),
(18, 5, 24, 'Miranda Merrill', '137', '73', NULL, '2025-04-06 00:51:51', '2025-04-06 00:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UZKDTMHkS87ob7Fcy7A7DslwvbboMEZsErg2Aeno', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieldVTFlmVFRwZ2dSTGhZeW8yZjdrTlR2Z29PQkY1b0xCR2xJWXl5OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9JbnZvaWNlTGlzdFBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743922439);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `otp`, `password`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '0', '1111', '1234567890', NULL, '2025-03-21 10:49:34', '2025-03-21 10:49:34'),
(2, 'Amar Tanvir', 'amar56s390043@gmail.com', NULL, '0', '1234s', '01234568890', NULL, '2025-03-21 10:59:54', '2025-03-21 10:59:54'),
(3, 'Beau Simpson', 'bovizox@mailinator.com', NULL, '0', 'Pa$$w0rd!', 'Beatae quam sunt dis', NULL, '2025-04-06 00:24:08', '2025-04-06 00:24:08'),
(4, 'Tanvir', 'tanvir@gmail.net', NULL, '0', '0000', '01893806327', NULL, '2025-04-06 00:24:40', '2025-04-06 00:30:30'),
(5, 'Nash Hester', 'hello@admin.com', NULL, '0', '1234', '0123456792', NULL, '2025-04-06 00:49:47', '2025-04-06 00:53:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
