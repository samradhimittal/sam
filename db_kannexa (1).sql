-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2020 at 10:12 PM
-- Server version: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kannexa`
--

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1);

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
('demo22@mailinator.com', '$2y$10$klDzEHoe0DN7hMbGroZOYOuf0AhjG0W8i1p.MCzH4UAz.IJnJRkUK', '2020-07-03 13:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2' COMMENT '1- admin, 2-other user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$33XWCuuyTIyKhJVocFlx..sVT7C.EsjTorhtzrNsdv1pbVHoVdELq', '614pwn1lBG7mdKxEVnxGjPDE10bPYJuLwVm96GSo2j8KRCz6Z6CFnxRyUUpX', 1, '2020-06-24 11:45:12', '2020-06-24 11:45:12'),
(2, 'Vendor 1', 'admi1n@gmail.com', '$2y$10$CWpMPMCvW1lunepZEyqMGe08/aetmHQjD/N9WpbkD.sP/LJukufF.', 'cVsMDYVPu8Anexb1KGvJEJbtOjEZF9alol7Umrsyc0Mg3sWq3aoNFGYCYIzD', 2, '2020-07-03 05:27:59', '2020-07-03 05:27:59'),
(3, 'test', 'test@mailinator.com', '$2y$10$vuAZ3HXb4gtxilE0jLjqyeIrF0LbUgRtvFn9a1.ZE47AwsY69u4a6', NULL, 2, '2020-07-03 08:38:07', '2020-07-03 08:38:07'),
(4, 'demo', 'demo22@mailinator.com', '$2y$10$1Myq97aX8Vl7SITRJl0.cOXdV0FiruOFzg9WOJebfS2ZsGOVdrCcq', 'g7qMttZGEnrWCrMvTED77YUhx5h5kDsqMXLcRY9Crz1TNvw2hcybc8CWJRa2', 2, '2020-07-03 11:57:20', '2020-07-03 11:57:20'),
(5, 'Suresh', 'suresh.s@mailinator.com', '$2y$10$AgraSqt7iRk6J50iL.2eVujF3GYX3Cqj35r3vC1yQBud5u5.ZhIZu', 'MI5YE9uW79qRrmkbevb2E9tubdrKCwQ4d6MHbzMQqopVbSNifDY46B0du2WD', 2, '2020-07-03 12:01:23', '2020-07-03 12:01:23'),
(6, 'demo test', 'test22@mailinator.com', '$2y$10$4DJHGhemNUOvicEyERwIsuTyN4Zr0QqU4j/.PKmZ7F0oY7XjjiW9K', 'PxIpz8EI8FRSiAIrAlLXMuFGZ1QvxeV8ZAvuse1aJO4jXBNehuug5s8Mwy9r', 2, '2020-07-03 13:00:13', '2020-07-03 13:00:13'),
(7, 'Jack', 'jack@gmail.com', '$2y$10$CKN1zxqf9U1aAFyAUvicgOoIc9Q9a8RFkOnpP6QKVCZD1No6wwB62', NULL, 2, '2020-07-03 19:46:42', '2020-07-03 19:46:42');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
