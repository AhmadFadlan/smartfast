-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 09:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartfast`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(14, NULL, 1, 'Program Profesi 1 Tahun', 'program-profesi-1-tahun', '2019-10-23 22:12:07', '2019-10-23 22:58:55'),
(15, NULL, 2, 'Program Profesi 2 Plus', 'program-profesi-2-plus', '2019-10-23 22:12:27', '2019-10-23 22:59:02'),
(16, NULL, 3, 'Short Course', 'short-course', '2019-10-23 22:12:52', '2019-10-23 22:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 0, 0, 0, 0, 0, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 11),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'file', 'image', 'File', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'tagline', 'text_area', 'Tagline', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 7),
(61, 7, 'file_category', 'select_dropdown', 'Category', 1, 1, 1, 1, 1, 1, '{\"options\":{\"Image\":\"Image\",\"Video\":\"Video\"}}', 5),
(63, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"0\":\"Tidak Dipublish\",\"1\":\"Publish\"}}', 8),
(64, 7, 'slug_title', 'text', 'Slug Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 6, 'head_title', 'text', 'Head Title', 0, 1, 1, 1, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-08 02:17:18', '2019-10-08 02:17:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-08 02:17:18', '2019-10-08 02:17:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-08 02:17:18', '2019-10-08 02:17:18'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-10-08 02:17:20', '2019-10-23 23:00:17'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-10-08 02:17:22', '2019-10-23 22:49:11'),
(7, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Models\\Slider', NULL, NULL, 'silde setting', 1, 0, '{\"order_column\":\"title\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2019-10-08 21:47:46', '2019-10-23 22:48:09');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-08 02:17:18', '2019-10-08 02:17:18'),
(2, 'main', '2019-10-08 02:21:22', '2019-10-11 00:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-08 02:17:18', '2019-10-08 02:17:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 3, '2019-10-08 02:17:19', '2019-10-23 22:33:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2019-10-08 02:17:19', '2019-10-23 22:34:04', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2019-10-08 02:17:19', '2019-10-23 22:34:04', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2019-10-08 02:17:19', '2019-10-20 20:48:50', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-10-08 02:17:19', '2019-10-08 20:52:26', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-08 02:17:19', '2019-10-08 20:52:26', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-10-08 02:17:19', '2019-10-08 20:52:26', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-10-08 02:17:19', '2019-10-08 20:52:26', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2019-10-08 02:17:19', '2019-10-20 20:48:50', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2019-10-08 02:17:20', '2019-10-24 01:51:37', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-10-08 02:17:21', '2019-10-23 22:34:09', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-10-08 02:17:22', '2019-10-23 22:34:09', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-10-08 02:17:23', '2019-10-08 20:52:27', 'voyager.hooks', NULL),
(15, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2019-10-08 02:23:12', '2019-10-08 02:25:14', NULL, ''),
(16, 2, 'Berita', '/berita', '_self', NULL, '#000000', NULL, 2, '2019-10-08 02:23:23', '2019-10-13 02:36:20', NULL, ''),
(17, 2, 'Profile', '#', '_self', NULL, '#000000', NULL, 3, '2019-10-08 02:24:22', '2019-10-13 02:36:20', NULL, ''),
(18, 2, 'Visi Dan Misi', '/visi-dan-misi', '_self', NULL, '#000000', 17, 1, '2019-10-08 02:24:56', '2019-10-17 23:06:18', NULL, ''),
(19, 2, 'Sambutan Direktur', '/sambutan-direktur', '_self', NULL, '#000000', 17, 2, '2019-10-08 02:25:06', '2019-10-17 22:00:58', NULL, ''),
(20, 2, 'Izin DISNAKER', '/izin-disnaker', '_self', NULL, '#000000', 17, 3, '2019-10-08 02:25:54', '2019-10-17 23:06:30', NULL, ''),
(23, 2, 'Photo', '/photo', '_self', NULL, '#000000', 22, 1, '2019-10-08 02:28:22', '2019-10-17 23:06:56', NULL, ''),
(24, 2, 'Video', '/video', '_self', NULL, '#000000', 22, 2, '2019-10-08 02:31:27', '2019-10-17 23:07:08', NULL, ''),
(26, 1, 'Sliders', '/admin/sliders', '_self', 'voyager-photos', '#000000', NULL, 2, '2019-10-08 20:54:43', '2019-10-20 20:48:46', NULL, ''),
(27, 2, 'Program', '#', '_self', NULL, '#000000', NULL, 5, '2019-10-11 01:22:15', '2019-10-23 23:34:03', NULL, ''),
(28, 2, 'Profesi MSP 1 Tahun', '/profesi-msp-1-tahun', '_self', NULL, '#000000', 27, 1, '2019-10-23 21:33:07', '2019-10-24 02:56:14', NULL, ''),
(29, 2, 'Profesi MSP 2 Plus', '/profesi-msp-2-plus', '_self', NULL, '#000000', 27, 2, '2019-10-23 21:34:04', '2019-10-24 02:56:28', NULL, ''),
(30, 2, 'Short Course', '/short-course', '_self', NULL, '#000000', 27, 3, '2019-10-23 22:03:35', '2019-10-23 22:03:45', NULL, ''),
(33, 2, 'Gallery', '#', '_self', NULL, '#000000', NULL, 4, '2019-10-23 23:33:05', '2019-10-23 23:34:03', NULL, ''),
(34, 2, 'Photo', '/photo', '_self', NULL, '#000000', 33, 1, '2019-10-23 23:33:24', '2019-10-23 23:33:40', NULL, ''),
(35, 2, 'Video', '/video', '_self', NULL, '#000000', 33, 2, '2019-10-23 23:33:52', '2019-10-23 23:33:58', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `head_title` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `head_title`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Head Title', 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-10-08 02:17:22', '2019-10-18 02:22:17'),
(2, 1, 'Profile', 'Visi Dan Misi', 'SMART FAST Global Education adalah perusahaan yang bergerak di bidang jasa pendidikan dan pelatihan yang berkonsentrasi pada pelatihan tata Pramugari, Tataniaga Penerbangan, Keuangan Perbankan, Perhotelan, Administrasi Bisnis.', '<p class=\"MsoNormal\" style=\"line-height: normal; text-align: center;\" align=\"center\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">COMPANY PROFILE<br />SMART FAST GLOBAL EDUCATION<br />PEKANBARU</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\" align=\"center\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">A. SELAYANG PANDANG</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SMART FAST Global Education adalah perusahaan yang bergerak di bidang jasa pendidikan dan pelatihan yang berkonsentrasi pada pelatihan tata Pramugari, Tataniaga Penerbangan, Keuangan Perbankan, Perhotelan, Administrasi Bisnis.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Outlet SMART FAST Education pertama sekali berdiri pada tanggal 7 Nopember 2008 dan memulai usaha dengan menyelenggarakan berbagai pelatihan singkat bagi masyarakat, mulai dari pelatihan teknisi, microsoft office, autocad, hingga ke pelatihan internet, website dan desain animasi.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Pada perkembangan nya program-program yang diselenggarakan SMART FAST Education ternyata sangat diminati oleh masyarakat, dan pada saat itu juga SMART FAST Education mengambil inisiatif untuk menyelenggarakan program pelatihan yang lebih berbobot, seperti program pendidikan Multi Skill Profesional 1 tahun. Motto dari SMART FAST Education adalah:&nbsp;<strong>&ldquo;Smart Future with SMART FAST Education&rdquo;</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Motto ini sesuai dengan pelaksanaan kegiatan pendidikan dan pelatihan yang SMART FAST Education selenggarakan, dimana proses belajar total mengarah ke kompetensi yang dibutuhkan oleh dunia kerja.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Dalam perjalananya dari 2011 hingga 2012, SMART FAST Education telah tumbuh berkembang menjadi Lembaga Pendidikan dan Pelatihan yang sangat diminati oleh masyarakat. Hal ini dibuktikan dengan pencapaian jumlah siswa yang melebihi ekspektasi maupun target yang telah ditetapkan. Untuk program andalan/utama yaitu Multi Skill Profesional 1 Tahun telah berjalan 2 angkatan yakni Angkatan I sebanyak 65 Orang dan Angkatan yang sedang berjalan (2012/2013) sebanyak 187 Orang.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Hal tersebut telah memacu Tim Manajemen SMART FAST Education untuk membuka outlet di wilayah lain serta berusaha mengembangkan produk ke Program Pendidikan Tinggi seperti Sekolah Tinggi ataupun Politeknik.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\"><br /><strong>B. VISI &amp; MISI</strong><br /><strong>VISI</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SMART FAST Education menjadi lembaga pendidikan dan pelatihan komputer terfavorit dan terbesar di Indonesia pada tahun 2020</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">MISI</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">1. SMART FAST Education sebagai lembaga pendidikan secara profesional menyelenggarakan pendidikan dan pelatihan bidang tata niaga penerbangan, bahasa inggris, akuntansi dan komputer dengan standard mutu internasional agar dapat menghasilkan sumberdaya manusia siap pakai dan dapat bersaing diera globalisasi.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">2. SMART FAST Education melayani pendidikan dan pelatihan tata niaga penerbangan, bahasa inggris, akuntansi dan komputer dengan menyelenggarakan program&ndash;program studi berbasis teknologi informasi yang dapat menunjang karier dan masa depan bagi siswa SMART FAST Education dan bagi seluruh lapisan masyarakat melalui jaringan outlet yang tersebar di seluruh indonesia.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">3. SMART FAST Education, menyediakan tenaga pengajar terampil, teknologi modern, sarana berkwalitas, dan lingkungan belajar yang ideal bagi pelaksanaan kegiatan akademik, sehingga terbentuk lulusan yang bermoral, terampil, inovatif dan mampu bersaing di dunia internasional.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">4. SMART FAST Education menjadi tempat untuk menuangkan prestasi, meningkatkan karier dan menjadi sarana untuk mengapai masa depan cerah bagi keluarga besar SMART FAST Education.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">5. SMART FAST Education, membangun link and match program antara sistem pendidikan SMART FAST Education dan industri dalam era globalisasi dan menjalin hubungan kerjasama yang erat antar lembaga pendidikan, lembaga pemerintahan dan non pemerintahan, baik daerah, nasional, maupun internasional.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\"><br /><strong>C. PRODUK &amp; LAYANAN</strong><br /><strong>C.1. PRODUK</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">1. Pendidikan Tinggi (On Progress)</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">2. Pendidikan Profesi/Kursus yang terbagi menjadi 3 :</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Program Multi Skill Profesional 1 Tahun (MSP-1)</span></strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">&nbsp;: Program MSP-1 diciptakan untuk menjawab tantangan kebutuhan dunia kerja diberbagai bidang antara lain : Pramugari, Avaition Security, Tataniaga Penerbangan, Keuangan Perbankan, Perhotelan, Komputer Akuntansi Perpajakan, Administrasi Bisnis Perkantoran.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Short Course</span></strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">&nbsp;: Program kursus singkat ditujukan untuk seluruh masyarakat umum mulai dari karyawan/ti, pegawai negeri, mahasiswa, pelajar dan kelompok pencari kerja untuk mendapatkan keahlian baru, meningkatkan keahlian ataupun memahirkan pendidikan/pelatihan yang telah didapatkan di Lembaga Pendidikan formal. Program kursus singkat terdiri dari : Bahasa Inggris, Komputer, Akuntansi, Perpajakan baik manual maupun komputerisasi.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">C.2. LAYANAN</span></strong></p>\r\n<ul style=\"text-align: justify;\" type=\"disc\">\r\n<li class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Layanan Account Officer</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Merupakan bagian yang memberikan layanan terhadap permasalahan dan kendala yang dialami siswa yang mungkin timbul selama proses belajar secara umum di SMART FAST Education berupa solusi dan pemecahan masalah yang tepat dan baik bagi siswa dan Lembaga.</span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Layanan Konsultasi Akademik (<em>Academic Consulting</em>)</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Selama proses belajar berlangsung, siswa bisa berkonsultasi dengan divisi akademik atau divisi BAAK untuk mendapatkan solusi terhadap kendala-kendala akademis yang dialami siswa.</span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Layanan Lowongan Kerja Dan&nbsp;<em>Carreer Center</em></span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Untuk lebih memudahkan siswa mengaplikasikan ilmu pengetahuan dan keahlian yang dimilikinya, melalui divisi Carrier Center, siswa mendapatkan informasi lowongan-lowongan kerja yang sedang dibutuhkan di dunia usaha dan industri, dan dapat disalurkan ke rekan-rekan dan partner kerja SMART FAST Education.</span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Layanan Beasiswa</span></li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">Untuk membantu biaya belajar bagi siswa berprestasi, maka kampus SMART FAST Education memberikan beasiswa kepada para siswa tersebut melalui berbagai macam events, kegiatan beasiswa SMART FAST Education dan beasiswa dari Pemerintah.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">D. GOALS</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">1. Membangun jaringan outlet di kabupaten kota provinsi<br />2. Membangun jaringan outlet di kota provinsi di Sumatera<br />3. Membangun jaringan outlet di kota provinsi di Jawa<br />4. Membangun jaringan outlet di kota provinsi di seluruh wilayah Indonesia</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">E. KULTUR PERUSAHAAN</span></strong></p>\r\n<table class=\"MsoNormalTable\" style=\"height: 202px; border-collapse: collapse; border-style: none; width: 656px;\" border=\"0\" width=\"656\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 14.25pt;\">\r\n<td style=\"width: 120px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">BePositive</span></p>\r\n</td>\r\n<td style=\"width: 14px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">:</span></p>\r\n</td>\r\n<td style=\"width: 500px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SmartFaster selalu berpikir dan berjiwa positif dalam melaksanakan tugas.</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; height: 14.25pt;\">\r\n<td style=\"width: 120px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">BeCreative</span></p>\r\n</td>\r\n<td style=\"width: 14px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">:</span></p>\r\n</td>\r\n<td style=\"width: 500px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SmartFaster selalu aktif berkreasi dan berinovasi dalam bekerja.</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2; height: 14.25pt;\">\r\n<td style=\"width: 120px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">BeTeamwork</span></p>\r\n</td>\r\n<td style=\"width: 14px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">:</span></p>\r\n</td>\r\n<td style=\"width: 500px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SmartFaster bersatu dan bekerja untuk kesuksesan bersama.</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; height: 14.25pt;\">\r\n<td style=\"width: 120px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">BeCommitment</span></p>\r\n</td>\r\n<td style=\"width: 14px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">:</span></p>\r\n</td>\r\n<td style=\"width: 500px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SmartFaster setia memperjuangkan visi dan misi lembaga.</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 4; mso-yfti-lastrow: yes; height: 14.25pt;\">\r\n<td style=\"width: 120px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">BeExcellence</span></p>\r\n</td>\r\n<td style=\"width: 14px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">:</span></p>\r\n</td>\r\n<td style=\"width: 500px; padding: 2.25pt; height: 14.25pt;\">\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">SmartFaster bekerja untuk hasil kerja lebih baik di setiap harinya.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; text-align: justify;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-language: IN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>', NULL, 'visi-dan-misi', 'visi dan misi', 'Profile', 'ACTIVE', '2019-10-08 20:30:10', '2019-10-18 02:20:33'),
(3, 1, 'Profile', 'Sambutan Direktur', 'Anda Tepat Memilih Kampus SMART FAST Global Education. Dengan program Multi Skill Professional – SMART FAST (MSP-SF) kami mengajak anda untuk mengantisipasi era Globalisasi saat ini. MSP- SF menerapkan pengajaran teori dan praktek secara seimbang dalam proses belajar mengajarnya, agar lulusan MSP-SF lebih unggul dan terampil sehingga dapat diserap oleh dunia kerja.', '<p style=\"text-align: justify;\"><!-- [if gte vml 1]><v:shapetype id=\"_x0000_t75\"\r\n coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\"\r\n filled=\"f\" stroked=\"f\">\r\n <v:stroke joinstyle=\"miter\"/>\r\n <v:formulas>\r\n  <v:f eqn=\"if lineDrawn pixelLineWidth 0\"/>\r\n  <v:f eqn=\"sum @0 1 0\"/>\r\n  <v:f eqn=\"sum 0 0 @1\"/>\r\n  <v:f eqn=\"prod @2 1 2\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelWidth\"/>\r\n  <v:f eqn=\"prod @3 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @0 0 1\"/>\r\n  <v:f eqn=\"prod @6 1 2\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelWidth\"/>\r\n  <v:f eqn=\"sum @8 21600 0\"/>\r\n  <v:f eqn=\"prod @7 21600 pixelHeight\"/>\r\n  <v:f eqn=\"sum @10 21600 0\"/>\r\n </v:formulas>\r\n <v:path o:extrusionok=\"f\" gradientshapeok=\"t\" o:connecttype=\"rect\"/>\r\n <o:lock v:ext=\"edit\" aspectratio=\"t\"/>\r\n</v:shapetype><v:shape id=\"Picture_x0020_2\" o:spid=\"_x0000_s1026\" type=\"#_x0000_t75\"\r\n alt=\"http://localhost:8000/storage/pages/October2019/p-amir-225x300.jpg\"\r\n style=\'position:absolute;left:0;text-align:left;margin-left:0;margin-top:0;\r\n width:131.25pt;height:174.75pt;z-index:1;visibility:visible;mso-wrap-style:square;\r\n mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;\r\n mso-wrap-distance-bottom:0;mso-position-horizontal:left;\r\n mso-position-horizontal-relative:text;mso-position-vertical:absolute;\r\n mso-position-vertical-relative:line\' o:allowoverlap=\"f\">\r\n <v:imagedata src=\"file:///C:\\Users\\Lenovo\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\"\r\n  o:title=\"p-amir-225x300\"/>\r\n <w:wrap type=\"square\" anchory=\"line\"/>\r\n</v:shape><![endif]--><!-- [if !vml]--><img src=\"http://localhost:8000/storage/pages/October2019/p-amir-225x300.jpg\" alt=\"\" width=\"175\" height=\"233\" align=\"left\" hspace=\"12\" /><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Verdana\',\'sans-serif\'; color: #444444;\">Anda Tepat Memilih Kampus SMART FAST Global Education. Dengan program Multi Skill Professional &ndash; SMART FAST (MSP-SF) kami mengajak anda untuk mengantisipasi era Globalisasi saat ini. MSP- SF menerapkan pengajaran teori dan praktek secara seimbang dalam proses belajar mengajarnya, agar lulusan MSP-SF lebih unggul dan terampil sehingga dapat diserap oleh dunia kerja.</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: Poppins, Arial, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #666666;\">Bersungguh-sungguh dalam pilihan ini berarti anda sudah memperoleh satu cara menuju keberhasilan dengan strategi yang cerdas-SMART dan langkah yang cepat-FAST. Karena MSP-SF sebagai Kampus REVOULUSIONER memastikan anda menjalani pendidikan Singkat dengan Program Pelatihan LifeSkill yang kami Berikan.</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: Poppins, Arial, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #666666;\">Dengan demikian alumni SMART FAST Education diharapkan dapat berhasil diusia muda, dengan skill dan keterampilan yang sesuai dengan jurusanya berikut gelar yang akan diraih akan sukses terjun kedunia Kerja.</span></p>\r\n<p style=\"margin-top: 0cm; text-align: justify;\"><strong><em><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #666666;\">Selamat Bergabung dengan SMART FAST Education</span></em></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>', 'pages\\October2019\\6kscTFSme2h8W7lq5hmb.jpg', 'sambutan-direktur', 'sambutan direktur', 'Profile', 'ACTIVE', '2019-10-08 20:33:49', '2019-10-18 02:20:24'),
(5, 1, 'Profile', 'Izin DISNAKER', 'Sertifikat Izin Dinas Tenaga Kerja Pemerintah Kota Pekanbaru', '<p>&nbsp;</p>\r\n<p><img src=\"http://localhost:8000/storage/pages/October2019/izindisnaker20181.jpg\" alt=\"\" /></p>', NULL, 'izin-disnaker', 'Sertifikat Izin Dinas Tenaga Kerja Pemerintah Kota Pekanbaru', 'izin DISNAKER', 'ACTIVE', '2019-10-18 00:06:19', '2019-10-18 02:20:14'),
(6, 1, 'Profesi MSP 1 Tahun', 'Pilot', 'Pelatihan yang diberikan secara khusus kepada para Peserta didik untuk dapat menerbangkan sebuah pesawat, baik Single Engine atau Multi Engine.  Ruang kerja seorang pilot adalah di Pesawat dibagian Cockpit dan dalam menjalankan tugasnya seorang pilot dibantu oleh Co-Pilot.  Saat ini kebutuhan PILOT didunia penerbangan masih sangat minim, untuk itu peluang kerja PILOT masih tergolong besar.', '<p><span style=\"color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><img style=\"float: left;\" src=\"http://localhost:8000/storage/pages/October2019/pilot22.jpg\" alt=\"\" width=\"214\" height=\"142\" />Pelatihan yang diberikan secara khusus kepada para Peserta didik untuk dapat menerbangkan sebuah pesawat, baik Single Engine atau Multi Engine. </span><span style=\"color: #9ea4a8; font-family: Ubuntu, sans-serif;\">Ruang kerja seorang pilot adalah di Pesawat dibagian Cockpit dan dalam menjalankan tugasnya seorang pilot dibantu oleh Co-Pilot. </span><span style=\"color: #9ea4a8; font-family: Ubuntu, sans-serif;\">Saat ini kebutuhan PILOT didunia penerbangan masih sangat minim, untuk itu peluang kerja PILOT masih tergolong besar.</span></p>', 'pages\\October2019\\dWKCjqtxSrFRQVktTPRq.jpg', 'pilot', NULL, NULL, 'ACTIVE', '2019-10-23 23:19:35', '2019-10-24 02:49:35'),
(7, 1, 'Short Course', 'Short Course', 'Short Course adalah Pembelajaran singkat yang kita sajikan untuk Pelajar, Mahasiswa atau Masyarakat Umum', '<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">Short Course adalah Pembelajaran singkat yang kita sajikan untuk Pelajar, Mahasiswa atau Masyarakat Umum</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">Computer Course</p>\r\n<ul style=\"margin: 0px 0px 20px 17px; padding: 0px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; line-height: 20px; color: #666666;\">\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Microsft Office 3 Bulan</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Microsoft Office 1 Bulan</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Teknisi Komputer</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Design Grafis</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Java</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>SPSS</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Adobe Photoshop</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>PHP-MYSQL</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>MYOB Accounting</p>\r\n</li>\r\n</ul>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">English Course</p>\r\n<ul style=\"margin: 0px 0px 20px 17px; padding: 0px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; line-height: 20px; color: #666666;\">\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>General English</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>English Conversation</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Grammar</p>\r\n</li>\r\n<li style=\"margin: 0px; padding: 0px; font: inherit; border: 0px;\">\r\n<p>Tes TOEFL</p>\r\n</li>\r\n</ul>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">Short Course Program</p>\r\n<div>A. Komputer</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Komputer Aplikasi 3 Bulan</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Komputer Aplikasi 1 Bulan</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Teknisi Komputer dan Jaringan</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Design Grafis</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Design Web</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pemrograman</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Animasi &amp; Editing Video</div>\r\n<div>B. Bahasa Inggris</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English for Beginner</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English for Elementary</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English for Adult</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English for Advance</div>\r\n<div>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;English for Business</div>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">C. Komputer Akuntansi<br />&ndash; MYOB<br />&ndash; Excel for Accounting</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">D.&nbsp; Design Grafis<br />&ndash; Adobe Photoshop + CorelDraw<br />&ndash; Adobe Indesign + Freehand<br />&ndash; AutoCad</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">E.&nbsp; Teknisi<br />&ndash; Teknisi Komputer<br />&ndash; Teknisi Printer</p>', NULL, 'short-course', NULL, NULL, 'ACTIVE', '2019-10-24 02:51:30', '2019-10-24 02:52:53'),
(8, 1, 'Profesi MSP 2 Plus', 'Profesi MSP 2 Plus', 'MSP-2 Plus adalah program lanjutan dari MSP-1 Tahun', '<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\"><strong>MSP-2 Plus adalah program lanjutan dari MSP-1 Tahun dengan Jurusan :</strong></p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">1. Keuangan Perbankan &amp; Akuntansi<br />2. Administrasi Bisnis &amp; Perkantoran<br />3. Perhotelan &amp; Pariwisata<br />4. Komputer Akuntansi &amp; Perpajakan</p>', NULL, 'profesi-msp-2-plus', NULL, NULL, 'ACTIVE', '2019-10-24 02:55:22', '2019-10-24 02:55:22'),
(9, 1, 'Profesi MSP 1 Tahun', 'Pramugari/a', 'Pramugari/a bertanggungjawab atas kemanan dan siap siaga dalam keadaan darurat sesuai dengan prosedur standar keselamatan penerbangan.', '<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666;\">Crew Cabin atau sering disebut Pramugari/a adalah staff dari perusahaan Penerbangan yang memberikan pelayanan selama penerbangan (In Flight Service). Pramugari/a bertanggungjawab atas kemanan dan siap siaga dalam keadaan darurat sesuai dengan prosedur standar keselamatan penerbangan.&nbsp; Pramugari mampu menangani tugas-tugas dibidang penerbangan khususnya pelayanan didalan cabin pesawat, mahir berkomunikasi dalam Bahasa Inggris, mahir menggunakan Komputer lintas aplikasi dan internet. Berprilaku Baik dan berpenampilan menarik.</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666; text-align: justify;\"><strong>Peluang Kerja :</strong> Menjadi Pramugari/a Professional baik di Maskapai Penerbangan Swasta maupun Pemerintah, Domestik dan International</p>', 'pages\\October2019\\vKlSAcY89b0vhsranjJR.jpg', 'pramugari', NULL, NULL, 'ACTIVE', '2019-10-24 02:58:46', '2019-10-24 02:58:46'),
(10, 1, 'Profesi MSP 1 Tahun', 'AVSEC (Aviation Security)', 'AVSEC memiliki pendidikan Khusus untuk mendapatkan keahlian dibidang pengamanan.', '<p style=\"margin: 0px 0px 15px; line-height: 1.5; color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\">AVSEC atau Aviation Security bukanlah Security pada umumnya seperti Satpam, Security Bank, Security Mall. &nbsp;Namun AVSEC memiliki pendidikan Khusus untuk mendapatkan keahlian dibidang pengamanan. &nbsp;AVSEC bisa disebut juga dengan Polisi Bandara dimana tugas dan tanggung jawabnya adalah mengamankan, melindungi juga menangkal gangguan-gangguan yang dapat membahayakan regulasi penerbangan.</span></p>\r\n<p style=\"margin: 0px 0px 15px; line-height: 1.5; color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\">AVSEC harus memiliki tanda kecakapan khusus atau disebut LISENCE/SERTIFIKAT/STKP (Surat Tanda Kecakapan Petugas)</span></p>\r\n<p style=\"margin: 0px 0px 15px; line-height: 1.5; color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\">Avsec bertugas bandara baik bandara domestik maupun International untuk penempatan Daerah Public, Daerah Tertutup dan Daerah Terbatas.</span></p>', 'pages\\October2019\\N3XLEh6k0rN26joddzJn.jpg', 'aviation-security', NULL, NULL, 'ACTIVE', '2019-10-24 02:59:53', '2019-10-24 03:00:06'),
(11, 1, 'Profesi MSP 1 Tahun', 'Tataniaga Penerbangan & Travel Bisnis', 'Mempelajari, menguasai dan  mampu mengerjakan tugas-tugas administrasi penerbangan seperti pemesanan dan pembelian tiket pesawat secara online (reservasi), perhitungan harga tiket baik domestic maupun internasional (ticketing domestic and International), administrasi pengiriman barang  melalui pesawat (cargo), Tata laksana pelayanan penumpang dan pesawat di bandara.  Memahami pengkodean dan istilah-istilah perjalanan udara.', '<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666; text-align: justify;\">Mempelajari, menguasai dan&nbsp; mampu mengerjakan tugas-tugas administrasi penerbangan seperti pemesanan dan pembelian tiket pesawat secara online (reservasi), perhitungan harga tiket baik domestic maupun internasional (ticketing domestic and International), administrasi pengiriman barang&nbsp; melalui pesawat (cargo), Tata laksana pelayanan penumpang dan pesawat di bandara.&nbsp; Memahami pengkodean dan istilah-istilah perjalanan udara. Mampu berkomunikasi dalam bahasa Asing seperti Bahasa Mandarin dan Bahasia Inggris baik aktif maupun pasif. Mahir menggunakan komputer khususnya lintas aplikasi dan Internet.</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666; text-align: justify;\"><strong>Peluang Kerja :</strong> Biro&nbsp; perjalanan&nbsp; udara, agen penjualan tiket pesawat, Bandar udara dan maskapai penerbangan seperti Garuda Indonesia, Merpati Nusantara, Batavia Air, Lion Air, Riau Airlines, dll.</p>', 'pages\\October2019\\laAdOhXBHkyAlH6mV8C0.jpg', 'tataniaga-penerbangan-dan-travel-bisnis', NULL, NULL, 'ACTIVE', '2019-10-24 03:01:32', '2019-10-24 21:37:48'),
(12, 1, 'Profesi MSP 1 Tahun', 'Komputer Akuntansi & Perpajakan', 'Mempelajari, Menguasai dan Mampu mengelola laporan akuntansi dan perpajakan baik secara manual maupun sistem komputerisasi, mampu dan mengerti ilmu perpajakan serta pengurusan pajak.', '<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666; text-align: justify;\">Mempelajari, Menguasai dan Mampu mengelola laporan akuntansi dan perpajakan baik secara manual maupun sistem komputerisasi, mampu dan mengerti ilmu perpajakan serta pengurusan pajak.&nbsp; Memahami tugas-tugas diperpajakan serta mampu membuat laporan perpajakan. Mampu berkomunikasi dalam bahasa Inggris baik aktif maupun pasif.&nbsp;&nbsp; Mahir menggunakan komputer khususnya lintas aplikasi dan Internet.</p>\r\n<p style=\"margin: 0px; line-height: 20px; padding: 0px 0px 20px; border: 0px; font-family: \'Droid Sans\', arial, serif; font-size: 12px; font-stretch: inherit; color: #666666; text-align: justify;\"><strong>Peluang Kerja :</strong> Lembaga keuangan non bank, perusahaan dagang, kantor pajak, instansi, dll.</p>', 'pages\\October2019\\jd8l90YygSvZlzYY6nsg.jpg', 'komputer-akuntansi-dan-perpajakan', NULL, NULL, 'ACTIVE', '2019-10-24 21:37:33', '2019-10-24 21:37:33'),
(13, 1, 'Profesi MSP 1 Tahun', 'Perhotelan & Pariwisata', 'Mempelajari dan mampu menangani segala jenis pekerjaan di perhotelan mulai dari Kitchen sampai kepada table setup, mampu dan mengerti ilmu pariwisata.', '<p><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Mempelajari dan mampu menangani segala jenis pekerjaan di perhotelan mulai dari Kitchen sampai kepada table setup, mampu dan mengerti ilmu pariwisata.&nbsp; Mahir mengoperasikan Komputer dalam lintas Aplikasi dan Internet.&nbsp; Mampu berkomunikasi dalam Bahasa Inggris baik pasif maupun Aktif.</span><br style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\" /><strong style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Peluang Kerja :</strong><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\"> Hotel, Caffe, restourant, usaha katering, usaha loundry,&nbsp; dll.</span></p>', 'pages\\October2019\\upTj8RUuKhIgvqTK8nre.jpg', 'perhotelan-dan-pariwisata', NULL, NULL, 'ACTIVE', '2019-10-24 21:39:11', '2019-10-24 21:39:11'),
(14, 1, 'Profesi MSP 1 Tahun', 'Keuangan Perbankan', 'Mempelajari, menguasai dan Mampu melaksanakan tugas-tugas didunia perbankan seperti pelayanan nasabah bank di customer service, teller, analisa kredit. Memahami produk-produk perbankan baik perbankan syariah maupun Perbankan konvensional.', '<p style=\"margin: 0px 0px 15px; line-height: 1.5; color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Mempelajari, menguasai dan Mampu melaksanakan tugas-tugas didunia perbankan seperti pelayanan nasabah bank di customer service, teller, analisa kredit. Memahami produk-produk perbankan baik perbankan syariah maupun Perbankan konvensional.&nbsp; Mampu bekerja pada akuntansi perbankan baik manual maupun komputerisasi. mempelajari perpajakan sehinga siap diterjunkan kedunia bidang perpajakan. Mampu berkomunikasi dalam bahasa Inggris baik aktif maupun pasif. Mahir menggunakan komputer khususnya lintas aplikasi dan Internet.</span></p>\r\n<p style=\"margin: 0px 0px 15px; line-height: 1.5; color: #9ea4a8; font-family: Ubuntu, sans-serif;\"><strong style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Peluang Kerja :</strong><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\"> Lembaga Keuangan non Bank, Bank Perkreditan Rakyat, Leasing, Koperasi, Asuransi, Pegadaian, Bank Swasta dan pemerintah seperti Bank BTN, Bank Mandiri, bank BRI, Bank Bumiputera, Bank Niaga, Bank Riau, Pengkreditan, dll.</span></p>', 'pages\\October2019\\V8082V5b6ccwUQHoA3Kz.jpg', 'keuangan-perbankan', NULL, NULL, 'ACTIVE', '2019-10-24 21:40:19', '2019-10-24 21:40:19'),
(15, 1, 'Profesi MSP 1 Tahun', 'Administrasi Bisnis & Perkantoran', 'Mempelajari, menguasai dan Mampu mengerjakan tugas-tugas administrasi perkantoran, mampu membuat notulen rapat, mampu mengatur kearsipan baik secara komputerisasi maupun manual.', '<p><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Mempelajari, menguasai dan Mampu mengerjakan tugas-tugas administrasi perkantoran, mampu membuat notulen rapat, mampu mengatur kearsipan baik secara komputerisasi maupun manual.&nbsp; Mampu membuat laporan baik manual maupun Komputerisasi.&nbsp; Memahami tugas-tugas pimpinan&nbsp; dan delegasi sub kerja perusahaan. Mampu mempresentasikan produk-produk perusahaan. Mampu berkomunikasi dalam bahasa Inggris baik aktif maupun pasif. Mahir menggunakan Komputer khususnya lintas&nbsp;&nbsp;&nbsp; aplikasi dan Internet.</span><br style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\" /><strong style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\">Peluang Kerja :</strong><span style=\"color: #666666; font-family: \'Droid Sans\', arial, serif; font-size: 12px; line-height: 20px; text-align: justify;\"> Perusahaan dagang dan Industri, perkantoran swasta dan pemerintah, lembaga keuangan, Instansi, dll.</span></p>', 'pages\\October2019\\4rNEFWOcRJaCMxinVB08.jpg', 'administrasi-bisnis-dan-perkantoran', NULL, NULL, 'ACTIVE', '2019-10-24 21:41:24', '2019-10-24 21:41:24');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(2, 'browse_bread', NULL, '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(3, 'browse_database', NULL, '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(4, 'browse_media', NULL, '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(5, 'browse_compass', NULL, '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(6, 'browse_menus', 'menus', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(7, 'read_menus', 'menus', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(8, 'edit_menus', 'menus', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(9, 'add_menus', 'menus', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(10, 'delete_menus', 'menus', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(11, 'browse_roles', 'roles', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(12, 'read_roles', 'roles', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(13, 'edit_roles', 'roles', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(14, 'add_roles', 'roles', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(15, 'delete_roles', 'roles', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(16, 'browse_users', 'users', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(17, 'read_users', 'users', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(18, 'edit_users', 'users', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(19, 'add_users', 'users', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(20, 'delete_users', 'users', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(21, 'browse_settings', 'settings', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(22, 'read_settings', 'settings', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(23, 'edit_settings', 'settings', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(24, 'add_settings', 'settings', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(25, 'delete_settings', 'settings', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(26, 'browse_categories', 'categories', '2019-10-08 02:17:20', '2019-10-08 02:17:20'),
(27, 'read_categories', 'categories', '2019-10-08 02:17:20', '2019-10-08 02:17:20'),
(28, 'edit_categories', 'categories', '2019-10-08 02:17:20', '2019-10-08 02:17:20'),
(29, 'add_categories', 'categories', '2019-10-08 02:17:20', '2019-10-08 02:17:20'),
(30, 'delete_categories', 'categories', '2019-10-08 02:17:20', '2019-10-08 02:17:20'),
(31, 'browse_posts', 'posts', '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(32, 'read_posts', 'posts', '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(33, 'edit_posts', 'posts', '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(34, 'add_posts', 'posts', '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(35, 'delete_posts', 'posts', '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(36, 'browse_pages', 'pages', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(37, 'read_pages', 'pages', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(38, 'edit_pages', 'pages', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(39, 'add_pages', 'pages', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(40, 'delete_pages', 'pages', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(41, 'browse_hooks', NULL, '2019-10-08 02:17:23', '2019-10-08 02:17:23'),
(42, 'browse_sliders', 'sliders', '2019-10-08 21:47:47', '2019-10-08 21:47:47'),
(43, 'read_sliders', 'sliders', '2019-10-08 21:47:47', '2019-10-08 21:47:47'),
(44, 'edit_sliders', 'sliders', '2019-10-08 21:47:47', '2019-10-08 21:47:47'),
(45, 'add_sliders', 'sliders', '2019-10-08 21:47:47', '2019-10-08 21:47:47'),
(46, 'delete_sliders', 'sliders', '2019-10-08 21:47:47', '2019-10-08 21:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 4),
(27, 1),
(27, 4),
(28, 1),
(28, 4),
(29, 1),
(29, 4),
(30, 1),
(30, 4),
(31, 1),
(31, 4),
(32, 1),
(32, 4),
(33, 1),
(33, 4),
(34, 1),
(34, 4),
(35, 1),
(35, 4),
(36, 1),
(36, 4),
(37, 1),
(37, 4),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(41, 1),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(2, 3, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(3, 3, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-08 02:17:21', '2019-10-08 02:17:21'),
(4, 1, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p style=\"text-align: justify;\">Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p style=\"text-align: justify;\">Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p style=\"text-align: justify;\">Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-14 04:24:00', '2019-10-18 02:24:23'),
(5, 3, NULL, 'judul', NULL, 'asdasdasdadsda', '<p>asdasdasdasasdasasd</p>', 'posts\\October2019\\brEN3YxEuTFRtsV3SekN.jpg', 'judul', 'dsde', 'asd', 'PUBLISHED', 0, '2019-10-13 09:29:50', '2019-10-13 09:29:50'),
(6, 3, NULL, 'yohoho', NULL, 'jyjjhjhj', '<p>jhjh</p>', 'posts\\October2019\\zL9BoekXGiGGRUoN6nwg.jpg', 'yohoho', NULL, NULL, 'PUBLISHED', 0, '2019-10-13 21:03:00', '2019-10-13 21:03:00'),
(7, 1, NULL, 'dsdsd', NULL, 'sdsd', '<p>sdsd</p>', 'posts\\October2019\\fcmkJORqylz0KDKhuNtK.jpg', 'dsdsd', NULL, NULL, 'PUBLISHED', 0, '2019-10-13 23:41:08', '2019-10-13 23:41:08'),
(8, 1, NULL, 'qew', NULL, 'qwe', '<p>qwe</p>', 'posts\\October2019\\FBUdA8bfmk6jbnS2ANAf.jpg', 'qew', NULL, NULL, 'PUBLISHED', 0, '2019-10-13 23:41:55', '2019-10-13 23:41:55'),
(25, 3, NULL, 'drg.', NULL, 'Qui magnam libero incidunt voluptas minima. Expedita voluptas velit aut sequi nihil dolores. Eaque fugit sint hic hic pariatur aperiam autem.', 'Voluptatem nesciunt harum eligendi laudantium nam alias. Deleniti adipisci asperiores harum odit eaque minus vero. Recusandae quia dolor debitis cupiditate qui.', 'posts/post1.jpg', 'Pandu Setya Marbun S.Ked', NULL, NULL, 'PUBLISHED', 0, '1990-04-21 08:17:22', '1995-07-25 05:20:05'),
(26, 3, NULL, 'dr.', NULL, 'Architecto a aperiam tempore amet ut maiores. Cumque earum tempora quam dignissimos sapiente temporibus. Eius facere minima ratione aliquam dolores. Aspernatur nihil sit similique ipsa.', 'Ad pariatur cumque veritatis. Dicta quasi assumenda laudantium qui. Assumenda molestiae modi exercitationem laboriosam enim.', 'posts/post1.jpg', 'Widya Yance Puspasari M.Farm', NULL, NULL, 'PUBLISHED', 0, '1977-04-13 00:26:02', '1975-01-24 02:44:10'),
(27, 3, NULL, 'Hj.', NULL, 'Ipsam laborum soluta et. Quo dolorem est quo ex tenetur architecto ea. Consectetur debitis voluptatibus soluta ducimus est autem enim.', 'Porro et vero suscipit repudiandae. Facere ex itaque alias voluptatibus quia officia voluptatem. Saepe porro aut sunt totam autem sint.', 'posts/post1.jpg', 'Rika Prastuti', NULL, NULL, 'PUBLISHED', 0, '1982-09-30 13:44:29', '2012-01-08 19:21:21'),
(28, 3, NULL, 'Hj.', NULL, 'Dolorum nisi eos quibusdam repellendus libero incidunt dignissimos libero. Voluptatibus iure eos ad libero ratione delectus quaerat.', 'Est corrupti quae rerum recusandae eum inventore dolor necessitatibus. Perferendis quaerat magnam sunt tempore iure. Labore illo placeat dolores voluptatibus qui et rerum. Est itaque sit et ut exercitationem officiis excepturi.', 'posts/post1.jpg', 'Setya Rajasa', NULL, NULL, 'PUBLISHED', 0, '1998-02-07 07:59:55', '2013-09-28 20:55:56'),
(29, 3, NULL, 'drg.', NULL, 'Rerum quia quasi optio inventore autem illum et. Eius ipsum qui facilis dolorem et ipsa. Nemo quasi recusandae non est. Reiciendis ut hic nisi omnis.', 'Doloribus officia porro a ut ut ullam nostrum. Placeat error consequuntur at qui aut expedita omnis sit. Alias laboriosam accusantium ea. Quasi minus deleniti autem occaecati nisi dolorum.', 'posts/post1.jpg', 'Martani Rajata', NULL, NULL, 'PUBLISHED', 0, '2018-07-17 00:31:46', '1981-08-28 22:23:59'),
(30, 3, NULL, 'Ir.', NULL, 'Libero cum quis qui praesentium. Perferendis eum rerum est magni et unde.', 'Neque et iure in omnis eligendi consectetur sapiente eveniet. Consequatur sed debitis hic et minus qui pariatur. Tempora officiis mollitia sed totam in voluptas.', 'posts/post1.jpg', 'Cinthia Fitriani Rahayu', NULL, NULL, 'PUBLISHED', 0, '1999-04-20 18:30:51', '1978-10-10 15:48:26'),
(31, 3, NULL, 'drg.', NULL, 'Dolorem non quis excepturi ullam perferendis qui veniam ea. Laudantium qui pariatur corrupti corporis ducimus. Aut illum et sed laudantium ipsam.', 'Ad excepturi sit dolorem maxime. Sint rerum nostrum iusto ab eum ut at. Beatae aut dolorem sint est et dicta dolores. Recusandae et magnam numquam aut excepturi id velit.', 'posts/post1.jpg', 'Hadi Darsirah Pradana S.IP', NULL, NULL, 'PUBLISHED', 0, '1987-01-19 23:31:27', '1993-10-03 21:04:12'),
(32, 3, NULL, 'dr.', NULL, 'Fugiat ipsam est eos optio perspiciatis sit aliquid. Quis ipsam quam quia rem accusamus. Rerum quasi omnis nobis nihil fugiat maiores enim deleniti. Sapiente officiis deserunt corrupti dolorem eaque perferendis voluptatem.', 'Saepe unde facere aspernatur unde excepturi excepturi. Quia sint quisquam dolor ipsum. Voluptas est sapiente sed et.', 'posts/post1.jpg', 'Jamalia Mandasari M.Ak', NULL, NULL, 'PUBLISHED', 0, '2008-07-16 21:43:59', '1989-11-04 01:58:43'),
(33, 3, NULL, 'H.', NULL, 'Asperiores ex cupiditate fugiat et quo veniam quia. Ut sint et incidunt deserunt enim harum quo. Ut quas dolorem ad qui delectus voluptatem. Placeat voluptas odio dicta quaerat voluptatem error qui.', 'Doloribus labore itaque occaecati enim non. Repudiandae ea at et sint molestias sunt. Rerum officia architecto ipsa. Laboriosam voluptas dolore quia officia dolor omnis.', 'posts/post1.jpg', 'Bakiadi Jayadi Utama', NULL, NULL, 'PUBLISHED', 0, '1989-03-28 01:16:48', '1998-09-14 22:07:52'),
(34, 3, NULL, 'Hj.', NULL, 'Nihil aut pariatur et nisi dolore. Aut et est et neque nulla saepe molestiae. Eos earum dolor repellendus dolor rerum tenetur laudantium.', 'Vel animi totam quia quis. Laudantium suscipit blanditiis eos alias maxime. Facilis rerum ullam ut quod quos rerum exercitationem. Dolorem assumenda soluta dolor at.', 'posts/post1.jpg', 'Teguh Winarno', NULL, NULL, 'PUBLISHED', 0, '1996-12-09 16:06:08', '2014-08-13 21:25:45'),
(35, 3, NULL, 'H.', NULL, 'Tenetur et itaque sit quasi sapiente eaque aut. Repellendus aut dolorem quis autem ipsam dolorem tempore. Adipisci adipisci molestiae assumenda rerum blanditiis incidunt aut.', 'Similique in illum voluptas laborum. Adipisci ut quasi et placeat possimus aspernatur quas. Aspernatur enim nihil omnis quis quas quos beatae. Omnis eaque suscipit doloremque culpa similique odio totam. In ut totam numquam blanditiis ut accusamus.', 'posts/post1.jpg', 'Rahmat Hutagalung', NULL, NULL, 'PUBLISHED', 0, '1995-10-21 13:46:16', '2002-08-13 06:06:47'),
(36, 3, NULL, 'dr.', NULL, 'Consequatur est maxime laborum assumenda. Aperiam quam et unde qui tempore. Excepturi voluptatem repudiandae aut ullam at. Cupiditate quasi consequatur qui et unde architecto.', 'Sit omnis error voluptatem odio earum et corporis. Animi praesentium ut laudantium dolorem voluptate.', 'posts/post1.jpg', 'Maida Azalea Zulaika M.Ak', NULL, NULL, 'PUBLISHED', 0, '2015-01-04 12:29:31', '2017-09-01 05:22:32'),
(37, 3, NULL, 'Ir.', NULL, 'Atque voluptates ab sit et. Officiis debitis et nostrum aut sint architecto. Porro deleniti sit et aut natus a. Voluptates omnis ut voluptas nemo dolor veritatis aliquam et.', 'Ipsam ipsam et tempore voluptatibus quia tempora. Magni aut quidem nemo voluptates consectetur nesciunt. Repudiandae ipsam laudantium sed et.', 'posts/post1.jpg', 'Jessica Pudjiastuti', NULL, NULL, 'PUBLISHED', 0, '2002-08-15 08:14:43', '1970-03-10 13:01:48'),
(38, 3, NULL, 'dr.', NULL, 'Dolores deserunt voluptatem ut ea ut omnis hic aliquid. Quisquam rerum earum sint odit veritatis quia aut. Sit sunt facere dicta ut odio.', 'Accusamus optio laudantium occaecati omnis et est aut nulla. Consectetur voluptas earum inventore quidem ea. Nam occaecati alias autem maiores qui quibusdam excepturi. Dignissimos dolor et quo sed qui optio sunt aliquam.', 'posts/post1.jpg', 'Gantar Jinawi Jailani M.Kom.', NULL, NULL, 'PUBLISHED', 0, '1996-06-18 23:44:30', '1995-09-14 15:02:03'),
(39, 3, NULL, 'Ir.', NULL, 'Autem ab provident inventore harum eos earum omnis et. Odio soluta aut nobis omnis qui veniam dignissimos. Minima omnis expedita molestiae animi voluptatem nisi.', 'Necessitatibus quam aut ea iusto cupiditate sit doloremque. Unde veniam in totam cupiditate. Alias aut et velit non qui fugit ut.', 'posts/post1.jpg', 'Taufik Hakim', NULL, NULL, 'PUBLISHED', 0, '1987-11-28 13:03:17', '1975-12-21 08:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Administrator', '2019-10-08 02:17:19', '2019-10-10 23:50:42'),
(2, 'user', 'Normal User', '2019-10-08 02:17:19', '2019-10-08 02:17:19'),
(4, 'admin site', 'Administrator', '2019-10-08 03:22:18', '2019-10-10 23:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Smart Fast', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Global Education', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2019\\qxmHULvsxch9z0X3oiHN.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Smartfast Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat Datang Di Halaman Admin Smartfast Global Education', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.email', 'Email', 'admin@smartfast.net', NULL, 'text', 8, 'Site'),
(14, 'site.phone', 'Phone Number', '(+62) 000 0000 0000', NULL, 'text', 10, 'Site'),
(15, 'site.fax', 'Fax', '(+0) 000 0000 0000', NULL, 'text', 11, 'Site'),
(17, 'site.address', 'Address', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">PEKANBARU&nbsp;:</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">Kampus I :<br />Gedung SMART FAST Global Education&nbsp;<br />Jalan HR. Soebrantas No. 41 Panam, Pekanbaru&nbsp;<br />Telp : 0761 841 6839, 0823.6712.1234</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">Kampus II :<br />Gedung Graha Pena Lantai 09<br />Jl. HR. Subrantas Km. 10,5 Panam, Pekanbaru<br />Fax : 0761 841 6838</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">JAMBI&nbsp;:&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">Gedung SMART FAST Global Education&nbsp;<br />Jl. Kompol M. Taher no. 25 Talang Banjar, Kota Jambi&nbsp;<br />Telp : 0741-32634</span></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">KANTOR PUSAT JAKARTA&nbsp;:&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">Gedung Menara BCA Grand Indonesia Lt. 50<br />Jl. MH. Thamrin No. 01 Jakarta Pusat<br />Telp : 021-235 845 85</span></p>', NULL, 'rich_text_box', 9, 'Site'),
(19, 'site.about', 'About', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">SMART FAST GLobal Education adalah Group Pendidikan yang dipayungi oleh Yayasan Pena Intelektual Indonesia&nbsp; yang bergerak di bidang jasa pendidikan dan pelatihan yaitu merupakan Pendidikan Vokasi, Pendidikan Profesi.&nbsp; Adapun Unit usahanya adalah</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">1. Program Profesi 1 Tahun dengan Jurusan Pilot, Avsec, Pramugari, Tataniaga Penerbangan &amp; Travel Bisnis, Perhotelan &amp; Usaha Perjalanan Wisata, Komputer Akuntansi &amp; Perpajakan, Keuangan &amp; Perbankan, Administrasi Bisnis &amp; Perkantoran.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">2. Kerjasama dengan Sekolah Tinggi yaitu Sekolah Tinggi Ilmu Ekonomi dengan Jurusan Managemen</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">3. Kerjasaman dengan Universitas untuk Lanjutan S2</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">4. Bimbel Pilot yaitu mempersiapkan calon-calon pilot untuk dapat diterima dan menguasai materi khusus pilot dengan bimbingan pilot professional dan dibantu alat peraga yaitu Simulator pesawat</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\', serif;\">5. Program Kursus seperti Komputer, Bahasa Inggris, Desain Grafis, Office, Perpajakan, Internet</span></p>\r\n<p><span style=\"font-family: \'Times New Roman\', serif;\">&nbsp;</span></p>', NULL, 'rich_text_box', 12, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci,
  `tagline` text COLLATE utf8mb4_unicode_ci,
  `slug_title` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `file_category` enum('Image','Video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Image',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `file`, `title`, `tagline`, `slug_title`, `slug`, `file_category`, `status`) VALUES
(1, 'sliders\\October2019\\zy89Vs2qSagVrZGPYCH1.jpg', 'WELCOME', 'TO WEBSITE SMART FAST GLOBAL EDUCATION', NULL, NULL, 'Image', '1'),
(2, 'sliders\\October2019\\clJsF0XBddOVhwnONTlb.jpg', 'STUDY TOUR', 'SMART FAST GLOBAL EDUCATION', NULL, NULL, 'Image', '1');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-08 02:17:22', '2019-10-08 02:17:22'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-08 02:17:23', '2019-10-08 02:17:23'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-08 02:17:23', '2019-10-08 02:17:23'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-08 02:17:23', '2019-10-08 02:17:23'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-08 02:17:23', '2019-10-08 02:17:23'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-08 02:17:23', '2019-10-08 02:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin Smartfast', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$UheB3pYE2QYJxKuiPwhY1.iHXjNCbCL6xJ0lsGtfJRxdVYgDu5.Y.', 'DLd24dBDVi2BwLvdVjvPwle9RcFNCsjpe6xWfvCvDDjatshKbPZqWqMC9xFq', '{\"locale\":\"id\"}', '2019-10-08 02:17:21', '2019-10-13 23:44:58'),
(3, 4, 'Admin', 'admin@smartfast.net', 'users/default.png', NULL, '$2y$10$1sLjoGGOj54OaiRCcCUKxeN9h8AupNIQsfOUgj010sUmQ4zN17ghy', NULL, '{\"locale\":\"id\"}', '2019-10-08 03:23:29', '2019-10-10 23:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
