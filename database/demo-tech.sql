-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 08:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo-tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'anmol', 'anmol@gmail.com', 'test message', '2020-12-20 01:30:03', '2020-12-20 01:30:03'),
(2, 'krish', 'krish@gmail.com', 'nskdf fsljd fas f', '2020-12-20 01:34:27', '2020-12-20 01:34:27'),
(3, 'aaa', 'amit@gmail.com', 'aa', '2024-01-19 02:57:34', '2024-01-19 02:57:34'),
(4, 'Tes', 'amit@gmail.com', 'demooooo', '2024-02-05 07:38:06', '2024-02-05 07:38:06'),
(5, 'Dummy', 'd@gmail.com', 'assshbh', '2024-02-05 07:39:05', '2024-02-05 07:39:05');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `section_title` varchar(256) NOT NULL,
  `data` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `section_title`, `data`, `created_at`, `updated_at`) VALUES
(8, 'home', 'second_title', 'Welcome to New Vision2', '2020-11-25 11:22:44', '2024-01-23 02:17:31'),
(9, 'home', 'second_text', '<h1>second text area heading</h1>\r\n\r\n<p>second text area</p>', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(10, 'home', 'third_icon', 'third icon', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(11, 'home', 'third_title', 'third title', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(12, 'home', 'third_text', '<p>third text area</p>', '2020-11-25 11:22:45', '2020-11-27 10:16:14'),
(13, 'home', 'forth_icon', 'Featured Carousel Items', '2020-11-25 11:22:45', '2020-12-14 12:33:14'),
(14, 'home', 'forth_text', 'fourth image title', '2020-11-25 11:22:45', '2020-11-27 10:16:15'),
(19, 'home', 'banner_image', '23012024170599605162.jpg', '2020-11-27 10:16:15', '2024-01-23 02:17:31'),
(28, 'our_company', 'second_title', 'About Our Company', '2020-12-14 11:43:03', '2024-01-23 02:18:19'),
(29, 'our_company', 'third_title', 'Our Background and Environment', '2020-12-14 11:43:03', '2024-01-23 02:18:19'),
(30, 'our_company', 'forth_title', 'Our Team Members', '2020-12-14 11:43:03', '2024-01-23 02:18:19'),
(31, 'our_company', 'banner_image', '23012024170599609994.jpg', '2020-12-14 11:45:48', '2024-01-23 02:18:19'),
(32, 'services', 'second_title', 'Our Digital Services', '2024-01-20 06:38:31', '2024-01-22 03:13:57'),
(33, 'services', 'third_title', 'Our unique approaches for you', '2024-01-20 06:38:31', '2024-01-22 03:13:57'),
(34, 'services', 'forth_title', 'Our Strategic Partners', '2024-01-20 06:38:31', '2024-01-22 03:13:57'),
(35, 'services', 'forth_desc', NULL, '2024-01-20 06:38:31', '2024-01-20 06:38:31'),
(36, 'services', 'banner_image', '22012024170591303753.jpg', '2024-01-20 06:38:31', '2024-01-22 03:13:57'),
(37, 'home', 'forth_section', NULL, '2024-01-22 03:14:07', '2024-01-23 02:17:31'),
(38, 'our_blog', 'second_title', 'Our Digital Services', '2024-01-22 05:07:47', '2024-01-23 02:19:01'),
(39, 'our_blog', 'third_title', 'Our unique approaches for you', '2024-01-22 05:07:47', '2024-01-23 02:19:01'),
(40, 'our_blog', 'forth_title', 'Our Strategic Partners', '2024-01-22 05:07:47', '2024-01-23 02:19:01'),
(41, 'our_blog', 'banner_image', '23012024170599614154.jpg', '2024-01-22 05:07:47', '2024-01-23 02:19:01');

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `page_title`, `section_title`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(6, 'home', 'second_section', 'NEW DESIGN FOR YOUR WEBSITE ff', '<p>Demo working</p>', '19012024170566479289.jpg', '2020-12-15 10:50:07', '2024-01-20 07:18:13'),
(7, 'home', 'second_section', 'MOST UNIQUE IDEA EVER MADE', '<p>Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas.&nbsp;Hover #09Faaaa</p>\r\n\r\n<p>&nbsp;</p>', '19012024170566482388.jpg', '2020-12-15 10:52:53', '2024-02-05 07:16:07'),
(8, 'home', 'second_section', 'SIMPLE TOUCH', '<p>Please tell your friends about TemplateMo website. Thank you. Title / Text #666</p>', '19012024170566487950.jpg', '2020-12-15 10:53:31', '2024-01-19 06:17:59'),
(9, 'home', 'third_section', 'TEMPLATE USAGE', '<p>You can feel free to edit and use New Vision template for your commercial websites. Title color is #333</p>', '19012024170566571723.png', '2020-12-15 10:59:48', '2024-01-19 06:31:57'),
(10, 'home', 'third_section', 'NEW VISION', '<p><a href=\"https://templatemo.com/tm-542-new-vision\" target=\"_parent\">New Vision</a>&nbsp;comes with 4 different HTML pages and provided free of charge by TemplateMo. You can add more pages if you need. Text color is #666</p>', '19012024170566547790.png', '2020-12-15 11:00:38', '2024-01-19 06:27:57'),
(11, 'home', 'third_section', 'DOWNLOAD SITES', '<p>Do not re-distribute our template ZIP file on your website. Or contact us first. Button color is #C99</p>', '19012024170566573683.png', '2020-12-15 11:01:26', '2024-01-19 06:32:16'),
(12, 'home', 'slider', 'cat post', '<p><strong>BEST</strong> HTML TEMPLATE</p>', '19012024170566581129.jpg', '2020-12-16 11:28:50', '2024-01-19 06:33:31'),
(13, 'home', 'slider', 'bird', '<p><strong>TOP</strong> CSS THEME</p>', '19012024170566578239.jpg', '2020-12-16 11:29:58', '2024-01-19 06:33:02'),
(14, 'home', 'slider', 'FLOWER', '<p><strong>BEST </strong>FLOWERS</p>', '19012024170566579589.jpg', '2020-12-16 11:30:59', '2024-01-19 06:33:15'),
(15, 'home', 'slider', 'FOREST', '<p><strong>GREAT&nbsp;</strong>FOREST THEME</p>', '19012024170566585459.jpg', '2020-12-16 11:32:10', '2024-01-19 06:34:14'),
(16, 'home', 'slider', 'DEAR', '<p><strong>BEST </strong>ANIMAL THEME COLLECTION</p>', '19012024170566586974.jpg', '2020-12-16 11:33:43', '2024-01-19 06:34:29'),
(17, 'home', 'slider', 'FLOWERS', '<p>BEST FLOOERS THEME</p>', '19012024170566588410.jpg', '2020-12-16 11:34:34', '2024-01-19 06:34:44'),
(18, 'services', 'Banner Image', 'Testing', 'assdfgfg', '19012024170565156497.png', '2024-01-19 02:36:04', '2024-01-19 02:36:04'),
(19, 'home', 'second', 'abc', '<p>sdfghjkl</p>', '19012024170566273663.jpg', '2024-01-19 05:42:16', '2024-01-19 05:42:16'),
(21, 'home', 'About Our Company dd', 'New Vision HTML Template', '<p>New Vision HTML Template is provided by TemplateMo for 100% free of charge.&nbsp;</p>', '19012024170567048244.jpg', '2024-01-19 07:51:22', '2024-01-20 07:17:43'),
(22, 'services', 'Our Digital Services', 'abc', '<p>aaaa</p>', '20012024170572977765.jpg', '2024-01-20 00:19:37', '2024-01-20 00:19:37'),
(25, 'our_company', 'second_section', 'About Our Company', '<p>New Vision HTML Template is provided by&nbsp;</p>', '20012024170575500836.jpg', '2024-01-20 07:20:08', '2024-01-20 07:20:08'),
(26, 'our_company', 'second_section', 'About Our Company', '<p>Curabitur et viverra purus, in ornare sem. Donec eu imperdiet felis, sed interdum leo. Mauris nisl mi, bibendum eu venenatis at, condimentum et dui. Proin mi enim, dapibus at metus semper, hendrerit faucibus nisi.</p>', '20012024170575573057.png', '2024-01-20 07:32:10', '2024-01-20 07:32:10'),
(27, 'our_company', 'second_section', 'About Our Company', '<p>Duis accumsan dolor feugiat dapibus ultrices. Vestibulum consectetur urna augue, in sagittis mi sodales ut. Maecenas at quam et ligula vulputate commodo. Integer tempor nec velit ut pulvinar. In hac habitasse platea dictumst.</p>', '20012024170575597478.png', '2024-01-20 07:36:14', '2024-01-20 07:36:14'),
(28, 'our_company', 'third_section', 'Our Background and Environment', '<p>Cras imperdiet in ligula sit amet fringilla. Morbi posuere mattis ornare. Nunc iaculis porta ipsum. Aliquam vehicula egestas diam auctor ornare.</p>', '20012024170575738018.jpg', '2024-01-20 07:43:57', '2024-01-20 07:59:40'),
(29, 'our_company', 'third_section', 'Our Background and Environment', '<p>Quisque sed tortor sed metus vehicula pulvinar vel dictum tortor. Nivamus eu posuere arcu. Vivamus vel urna id mi congue convallis at sed augue.</p>', '20012024170575758993.jpg', '2024-01-20 08:03:09', '2024-01-20 08:03:09'),
(36, 'our_company', 'forth_section', 'Our Team Members', '<p>aa</p>', '20012024170575869063.jpg', '2024-01-20 08:18:13', '2024-01-20 08:21:30'),
(38, 'our_company', 'banner_image', 'banners', '<p>aa</p>', '22012024170590420820.jpg', '2024-01-22 00:25:00', '2024-01-22 00:46:48'),
(39, 'our_company', 'forth_section', 'Featured Carousel Items', '<p>aasss</p>', '22012024170590503329.jpg', '2024-01-22 01:00:33', '2024-01-22 01:13:49'),
(40, 'home', 'forth_section', 'Our Team Members', '<p>aaa</p>', '', '2024-01-22 02:08:38', '2024-01-22 02:08:38'),
(41, 'services', 'second_section', 'Our Digital Services', '<p>Business Strategy</p>', '22012024170591050246.jpg', '2024-01-22 02:31:42', '2024-01-22 07:30:34'),
(42, 'services', 'second_section', 'Our Digital Services', '<p>aa</p>', '', '2024-01-22 03:10:57', '2024-01-22 03:10:57'),
(44, 'blog', 'second_section', 'Business Strategy', '<h2>a</h2>', '22012024170592886768.jpg', '2024-01-22 05:11:11', '2024-01-22 23:50:03'),
(45, 'blog', 'second_section', 'Digital Marketing', '<p>New Media</p>', '22012024170592885655.jpg', '2024-01-22 05:15:02', '2024-01-22 23:51:18'),
(46, 'blog', 'second_section', 'Social Platforms', '<p>Digital Marketing</p>', '22012024170592894483.jpg', '2024-01-22 05:27:30', '2024-01-22 23:52:00'),
(47, 'blog', 'second_section', 'New Media', '<p>Social Platforms</p>\r\n\r\n<p>&nbsp;</p>', '22012024170592889927.jpg', '2024-01-22 05:54:32', '2024-01-22 23:52:31'),
(48, 'our_company', 'third_section', 'Our unique approaches for you', '<p>aa</p>', '22012024170592471191.jpg', '2024-01-22 06:01:50', '2024-01-22 06:28:31'),
(50, 'blog', 'third_section', 'Our unique approaches for you', '<p><a href=\"https://templatemo.com/tm-542-new-vision\" target=\"_parent\">New Vision</a>&nbsp;Template is provided by TemplateMo website for 100% free of charge. You can use this CSS template for any purpose.</p>', '', '2024-01-23 00:50:47', '2024-01-23 00:50:47'),
(51, 'blog', 'third_section', 'Our unique approaches for you', '<p>Nam condimentum tortor id dui maximus, quis faucibus lacus faucibus. Sed urna est, vulputate quis efficitur et, laoreet nec mi.</p>', '', '2024-01-23 00:51:52', '2024-01-23 00:51:52'),
(52, 'blog', 'third_section', 'Our unique approaches for you', '<p>Nam condimentum tortor id dui maximus, quis faucibus lacus faucibus. Sed urna est, vulputate quis efficitur et, laoreet nec mi.</p>', '', '2024-01-23 01:22:37', '2024-01-23 01:23:07'),
(53, 'blog', 'third_section', 'Our unique approaches for you', '<p>Nam condimentum tortor id dui maximus, quis faucibus lacus faucibus. Sed urna est, vulputate quis efficitur et, laoreet nec mi.</p>', '', '2024-01-23 01:23:40', '2024-01-23 01:23:40'),
(54, 'blog', 'forth_section', 'Our Strategic Partners', '<p>aa</p>', '23012024170599313929.png', '2024-01-23 01:28:59', '2024-01-23 01:28:59'),
(55, 'blog', 'forth_section', 'standfords', '<p>a</p>', '23012024170599325952.png', '2024-01-23 01:30:59', '2024-01-23 01:30:59'),
(56, 'blog', 'forth_section', 'sale force', '<p>3</p>', '23012024170599329299.png', '2024-01-23 01:31:32', '2024-01-23 01:31:32'),
(57, 'blog', 'forth_section', 'annese', '<p>4</p>', '23012024170599332416.png', '2024-01-23 01:32:04', '2024-01-23 01:32:04'),
(58, 'blog', 'forth_section', 'itta', '<p>5</p>', '23012024170599334926.png', '2024-01-23 01:32:29', '2024-01-23 01:32:29'),
(59, 'blog', 'forth_desc', 'text', '<p>Etiam et odio ut nibh suscipit eleifend. Sed facilisis, enim nec auctor vehicula, dolor odio venenatis turpis, eu vehicula ipsum ligula a nisi.</p>', '', '2024-01-23 01:35:14', '2024-01-23 01:35:14'),
(60, 'our_company', 'slider', 'John Stone', '<p>John Stone</p>', '23012024170600065574.jpg', '2024-01-23 03:34:15', '2024-01-23 03:34:15'),
(61, 'our_company', 'slider', 'Jane Meldrum', '<p>Jane Meldrum</p>', '23012024170600070769.jpg', '2024-01-23 03:35:07', '2024-01-23 03:35:07'),
(62, 'our_company', 'slider', 'Trevor Virtue', '<p>Trevor Virtue</p>', '23012024170600075399.jpg', '2024-01-23 03:35:53', '2024-01-23 03:35:53'),
(63, 'our_company', 'slider', 'Emily Moore', '<p>Emily Moore</p>', '23012024170600082118.jpg', '2024-01-23 03:37:01', '2024-01-23 03:37:01'),
(64, 'our_company', 'slider', 'Claire Li', '<p>Claire Li</p>', '23012024170600089685.jpg', '2024-01-23 03:37:38', '2024-01-23 03:38:16');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dummy', 'amit@gmail.com', NULL, '$2y$12$OmJxlv6K.dig9o4WUkpHC.BuBXBVygT.uMcpjXIrmVv/JLPag0/AK', NULL, '2024-02-05 01:05:37', '2024-02-05 01:05:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
