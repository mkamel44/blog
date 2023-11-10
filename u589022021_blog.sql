-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2023 at 11:13 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u589022021_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$C5xix9ms0wX8g2.Z3Ol3Ju.kqQGw4dYld4JYum/9m8PKODp.Ii.cK', '9999999999', 1, '2023-07-28 03:52:47', '2023-11-10 10:55:21'),
(4, 'Editor', 'editor@example.com', '$2y$10$qwUPiLAq0WaNjImWjrhJneB44FrGeFyp02ElK9Hkn6j8CE82dhRSO', '123456789', 1, '2023-11-10 10:24:40', '2023-11-10 10:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, NULL, NULL),
(4, 7, 3, NULL, NULL),
(6, 3, 3, NULL, NULL),
(10, 1, 5, NULL, NULL),
(11, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 'category 1', '2017-06-26 04:47:23', '2023-11-09 18:43:25'),
(2, 'Category 2', 'category 2', '2017-06-26 04:47:29', '2023-11-09 18:43:45'),
(4, 'test', 'test', '2023-11-09 20:05:05', '2023-11-09 20:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2017-06-26 04:54:20', '2017-06-26 04:54:20'),
(2, 2, '2017-07-01 03:44:45', '2017-07-01 03:44:45'),
(161, 1, '2017-07-04 05:14:04', '2017-07-04 05:14:04'),
(162, 1, '2017-07-04 05:14:24', '2017-07-04 05:14:24'),
(163, 1, '2017-07-04 05:14:41', '2017-07-04 05:14:41'),
(164, 2, '2017-07-04 05:14:56', '2017-07-04 05:14:56'),
(165, 1, '2017-07-04 05:15:30', '2017-07-04 05:15:30'),
(166, 2, '2017-07-04 05:15:49', '2017-07-04 05:15:49'),
(167, 2, '2017-07-04 05:16:46', '2017-07-04 05:16:46'),
(168, 2, '2017-07-04 05:17:01', '2017-07-04 05:17:01'),
(169, 2, '2017-07-04 05:17:20', '2017-07-04 05:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(24, 3, 170, '2017-08-04 03:24:28', '2017-08-04 03:24:28'),
(25, 3, 169, '2017-08-04 03:24:30', '2017-08-04 03:24:30'),
(26, 3, 167, '2017-08-04 03:24:33', '2017-08-04 03:24:33'),
(27, 2, 169, '2017-08-04 03:25:02', '2017-08-04 03:25:02'),
(28, 2, 170, '2017-08-04 03:25:24', '2017-08-04 03:25:24'),
(29, 2, 168, '2017-08-04 03:25:26', '2017-08-04 03:25:26'),
(31, 2, 166, '2017-08-04 03:25:28', '2017-08-04 03:25:28'),
(32, 2, 164, '2017-08-04 03:25:32', '2017-08-04 03:25:32'),
(33, 2, 163, '2017-08-04 03:25:34', '2017-08-04 03:25:34'),
(41, 4, 169, '2023-11-10 08:39:57', '2023-11-10 08:39:57'),
(42, 5, 2, '2023-11-10 10:31:28', '2023-11-10 10:31:28'),
(44, 4, 2, '2023-11-10 10:43:24', '2023-11-10 10:43:24');

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2017_06_19_070344_create_posts_table', 1),
(34, '2017_06_19_070731_create_tags_table', 1),
(35, '2017_06_19_070801_create_categories_table', 1),
(36, '2017_06_19_070824_create_category_posts_table', 1),
(37, '2017_06_19_070923_create_post_tags_table', 1),
(38, '2017_06_19_071000_create_admins_table', 1),
(39, '2017_06_19_071103_create_roles_table', 1),
(40, '2017_06_19_071125_create_admin_roles_table', 1),
(41, '2017_07_22_070234_create_permissions_table', 2),
(42, '2017_08_04_055752_likes', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `for` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(4, 'Post-Create', 'post', '2017-07-22 05:21:37', '2017-07-22 05:21:37'),
(5, 'Post-update', 'post', '2017-07-22 05:22:27', '2017-07-22 05:22:27'),
(6, 'Post-Delete', 'post', '2017-07-22 05:22:40', '2017-07-22 05:22:40'),
(10, 'Post-Publish', 'post', '2017-07-22 05:23:51', '2017-07-22 05:23:51'),
(11, 'Tag-CRUD', 'other', '2017-07-22 05:24:12', '2017-07-22 05:24:12'),
(12, 'Category-CRUD', 'other', '2017-07-22 05:24:20', '2017-07-22 05:24:20'),
(13, 'Admin-CRUD', 'other', '2023-11-10 10:48:06', '2023-11-10 10:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(3, 6),
(3, 10),
(4, 4),
(4, 5),
(4, 11),
(4, 12),
(5, 4),
(5, 9),
(5, 12),
(1, 6),
(1, 4),
(1, 12),
(1, 5),
(1, 10),
(5, 5),
(5, 6),
(5, 10),
(5, 7),
(5, 8),
(5, 11),
(5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `created_at`, `updated_at`) VALUES
(2, 'This is first title', 'subtitle', 'ajax', '<p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center &mdash; an equal earth which all men occupy as equals. The airman&#39;s earth, if free men make it, will be truly round: a globe in practice, not in theory.</p>\r\n\r\n<p>Science cuts two ways, of course; its products can be used for both good and evil. But there&#39;s no turning back from science. The early warnings about technological dangers also come from science.</p>\r\n\r\n<p>What was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.</p>\r\n\r\n<p>A Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That&#39;s how I felt seeing the Earth for the first time. I could not help but love and cherish her.</p>\r\n\r\n<p>For those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-css\"> p {color :red;} </code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>The Final Frontier</h2>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<p>There can be no thought of finishing for &lsquo;aiming for the stars.&rsquo; Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.</p>\r\n\r\n<blockquote>The dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.</blockquote>\r\n\r\n<p>Spaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.</p>\r\n\r\n<h2>Reaching for the Stars</h2>\r\n\r\n<p>As we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.</p>\r\n\r\n<p><a href=\"http://localhost:8000/post#\"><img alt=\"\" src=\"http://localhost:8000/img/post-sample-image.jpg\" /></a>To go places and do things that have never been done before &ndash; that&rsquo;s what living is all about.</p>\r\n\r\n<p>Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.</p>\r\n\r\n<p>As I stand out here in the wonders of the unknown at Hadley, I sort of realize there&rsquo;s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.</p>\r\n\r\n<p>Placeholder text by&nbsp;<a href=\"http://spaceipsum.com/\">Space Ipsum</a>. Photographs by&nbsp;<a href=\"https://www.flickr.com/photos/nasacommons/\">NASA on The Commons</a>.</p>', 1, NULL, 'public/O3R4eP4aVHeEIUPBAI4kROs2T86pWFfByzYhcoLi.jpeg', '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(161, 'This is second', 'second', 'second', '<p>this is second</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(162, 'this is third', 'third', 'third', '<p>this is thrid</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(163, 'this is fourth', 'fourth', 'fourth', '<p>this is fourth</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(164, 'this is fifth', 'fifth', 'fifth', '<p>this is fifth</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(165, 'this is sixth', 'sixth', 'sixth', '<p>this is sixth</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(166, 'this is seventh', 'seventh', 'seventh', '<p>this is seventh</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(167, 'this is eighth', 'eighth', 'eighth', '<p>this is eighth</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(168, 'this is ninth', 'ninth', 'ninth', '<p>this is ninth</p>', 1, NULL, NULL, '2023-11-10 09:03:03', '2023-11-10 09:03:03'),
(169, 'this is tenth', 'tenth', 'tenth', '<p>this is tenth</p>', 1, NULL, 'public/ddPbyMEkUBJHXmf3iCUbyu53oXIhwPwBGwfvl1Go.jpeg', '2023-11-10 09:03:03', '2023-11-10 09:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2017-06-26 04:54:20', '2017-06-26 04:54:20'),
(2, 1, '2017-07-01 03:46:36', '2017-07-01 03:46:36'),
(161, 1, '2017-07-04 05:14:04', '2017-07-04 05:14:04'),
(162, 2, '2017-07-04 05:14:24', '2017-07-04 05:14:24'),
(163, 1, '2017-07-04 05:14:41', '2017-07-04 05:14:41'),
(164, 1, '2017-07-04 05:14:56', '2017-07-04 05:14:56'),
(165, 1, '2017-07-04 05:15:30', '2017-07-04 05:15:30'),
(166, 2, '2017-07-04 05:15:49', '2017-07-04 05:15:49'),
(167, 1, '2017-07-04 05:16:46', '2017-07-04 05:16:46'),
(168, 2, '2017-07-04 05:17:01', '2017-07-04 05:17:01'),
(169, 1, '2017-07-04 05:17:20', '2017-07-04 05:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editors', '2017-07-21 05:17:13', '2017-07-21 05:27:48'),
(3, 'Publisher', '2017-07-21 05:28:33', '2017-07-21 05:28:33'),
(4, 'Writer', '2017-07-21 05:28:38', '2017-07-21 05:28:38'),
(5, 'Admin', '2023-11-10 06:42:44', '2023-11-10 06:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'master', 'master', '2017-06-26 04:47:05', '2017-06-26 04:47:05'),
(2, 'master1', 'master1', '2017-06-26 04:47:12', '2017-06-26 04:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Mohamad Kamel', 'mkamel0538@gmail.com', '$2y$10$g3pVz/9WPd3xAu1RAwVQ4uu48u9ZJWEkfPBt0VPvtUzARUxFHoVbO', '9Cap4prQoszcMYSkcNGGJT5qDMNsdcPmJTvIaWaR481MlddBuiPUQv98742E', '2023-11-09 17:22:32', '2023-11-10 10:42:54'),
(5, 'Mkamel', 'mhmaadkamel@gmail.com', '$2y$10$8wQFtpQejJEdl8OMYxImdeVMaKf4pgCSLozAXNJYMdOPx9JcqRznq', 'prvhkhzTq33mnKlOJ0bL55bt6evjENaBTikOTiJxW5AW1vpqY0RfG8buXml0', '2023-11-10 10:31:05', '2023-11-10 10:31:05');

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
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
