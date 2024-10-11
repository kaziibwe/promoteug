-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2024 at 09:11 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buildug`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alfredkaziibwe19@gmail.com', 'alfredkaziibwe19@gmail.com', NULL, '$2y$12$bTkWPMby.zghRdxj2P2Pue.kBDvxxCxgbOusBX301z7Bg6mZdOHCa', NULL, NULL, NULL),
(2, 'Kansiime Alfred', 'alfa10@gmail.com', NULL, '$2y$12$.R5IGuzZe1pI5VPOjj.GuuOWxZ63JiXCFSoPI5/HK36xamS6SS/7m', NULL, '2024-09-19 09:58:47', '2024-09-19 09:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `featured`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Northern', 'images/GEZOFVXM4pPetWDo81ZNnd805y6pcje6IMeHTURA.png', 'no', 'yes', NULL, '2024-09-19 11:17:05'),
(3, 'East', 'images/41MdzMxSlSWbmthpVzVngym5iTT0cY0fI0VeTfFn.png', 'yes', 'yes', '2024-08-29 01:04:31', '2024-08-29 01:04:31'),
(4, 'West', 'images/41MdzMxSlSWbmthpVzVngym5iTT0cY0fI0VeTfFn.png', 'yes', 'yes', '2024-08-29 14:15:52', '2024-08-29 19:26:25'),
(8, 'central', 'images/41MdzMxSlSWbmthpVzVngym5iTT0cY0fI0VeTfFn.png', 'yes', 'yes', '2024-09-14 19:01:13', '2024-09-14 19:01:13'),
(9, 'west', '/tmp/phpimages/41MdzMxSlSWbmthpVzVngym5iTT0cY0fI0VeTfFn.png6yN2VL', NULL, NULL, '2024-09-19 10:20:11', '2024-09-19 10:20:11'),
(10, 'easter', 'images/41MdzMxSlSWbmthpVzVngym5iTT0cY0fI0VeTfFn.png', NULL, NULL, '2024-09-19 10:22:58', '2024-09-19 10:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_18_144936_create_admins_table', 1),
(6, '2024_08_06_072616_create_attendances_table', 1),
(7, '2024_08_26_220549_create_buyers_table', 1),
(8, '2024_08_26_220601_create_sellers_table', 1),
(9, '2024_08_26_220636_create_categories_table', 1),
(10, '2024_08_26_220655_create_sub_categories_table', 1),
(11, '2024_08_26_223752_create_auctions_table', 1),
(12, '2024_08_26_223818_create_auction_times_table', 1),
(13, '2024_08_26_223844_create_equipment_categories_table', 1),
(14, '2024_09_01_215829_create_sub_categories', 2),
(15, '2024_09_03_133503_create_auctions', 3),
(16, '2024_09_03_133512_create_auction_times', 3),
(17, '2024_09_03_133516_create_equipment_categories', 3),
(18, '2024_09_04_131518_create_vendors_table', 4),
(19, '2024_09_04_193141_create_auction_types_table', 5),
(20, '2024_09_04_194820_create_auction_times', 5),
(21, '2024_09_04_194846_create_equipment_categories', 5),
(22, '2024_09_12_215438_create_products_table', 6),
(23, '2024_09_13_075441_create_parts', 6),
(24, '2024_09_13_075511_create_product_gallaries_table', 6),
(25, '2024_09_13_075531_create_part_gallaries_table', 6),
(26, '2024_09_14_121357_create_wallets_table', 7),
(27, '2024_09_14_121435_create_bought_items_table', 7),
(28, '2024_09_14_121510_create_auction_activities_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `asset_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dimension` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `equipmentcategory_id` bigint UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `auctiontype_id` bigint DEFAULT NULL,
  `vendor_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `general`, `asset_type`, `function`, `dimension`, `equipmentcategory_id`, `subcategory_id`, `auctiontype_id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 'Northern', 'images/hRKCB4Lar0EAV9nOs9IbtCJ3vyMSJJVe9RWTLCdG.png', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'vima mama', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 1, 1, 1, 1, '2024-09-13 17:34:34', '2024-09-19 10:48:14'),
(2, 'albert albert', 'images/ouSR28tjA0icE5VN6dC52ZiCG6pTroOi5GFO5wFq.png', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'vima', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 1, 1, 1, 2, '2024-09-13 18:09:40', '2024-09-13 18:09:40'),
(3, 'kaziibwe Alfred', 'images/ouSR28tjA0icE5VN6dC52ZiCG6pTroOi5GFO5wFq.png', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'vima', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 2, 1, 1, 2, '2024-09-13 18:13:20', '2024-09-13 18:13:20'),
(5, 'Murungi Martha', 'images/ouSR28tjA0icE5VN6dC52ZiCG6pTroOi5GFO5wFq.png', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'vima', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'how can i  fetch  the category after ansd when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 1, 1, 1, 1, '2024-09-13 20:54:27', '2024-09-13 20:54:27'),
(6, 'jami', 'images/JGDDhTJ7cRpSEDWiak01sv75jSE9AYgG35Gn106E.png', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'vima mama', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and whe', 'how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it how can i  fetch  the category after and when i category ti get me it', 1, 1, 1, 1, '2024-09-14 15:15:48', '2024-09-14 15:15:48'),
(7, 'Northern', 'images/BombOJJG0lfLFc2VBBHWUflTyA1N4dRTV3PPTnlq.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-09-19 11:07:28', '2024-09-19 11:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallaries`
--

CREATE TABLE `product_gallaries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallaries`
--

INSERT INTO `product_gallaries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'images/WIdMZTFyCtbwC6VUEaGXiIbKrWEbmYd2OoCzLbOl.png', 1, '2024-09-13 22:32:33', '2024-09-13 22:41:39'),
(3, 'images/yRnSaz7pw8GRciuwAT1ukufOwLILS2sMsvrQUkEN.jpg', 5, '2024-09-13 22:33:01', '2024-09-13 22:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `image`, `featured`, `active`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Northern', 'images/MKs0jmr0x1SJ8rBaJQwLF2ZvFOb8sPlM003gMTrd.png', 'yes', 'no', 1, '2024-09-02 02:38:42', '2024-09-19 10:47:42'),
(2, 'Compators', 'images/jmHru0WirTQZ6FlMMCytGV5LRIXeuwIbMOPy30E2.png', 'yes', 'yes', 1, '2024-09-02 02:42:27', '2024-09-03 16:15:00'),
(4, 'Asphalt Plants', 'images/JpTgMIGJnMuUyRlYfD2mbWQh0H4DAyw77dJSsfvf.png', 'yes', 'yes', 1, '2024-09-03 19:24:47', '2024-09-03 19:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_transaction` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_balance` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `last_transaction`, `image`, `account_balance`, `remember_token`, `created_at`, `updated_at`, `location`, `country`, `organisation`, `organisation_phone`, `organisation_email`, `organisation_name`) VALUES
(1, 'user@gmail.com', 'user@gmail.com', '', NULL, '$2y$12$FoxES7e92qun.Ty.NWD45eEpcLFM5utuG04Hn38R5blZRAhI6miFK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Admin 2', 'admin@gmail.com', '', NULL, '$2y$12$tcTLj7FdwK8pSzvTgpSKS.ZDjeyKgnzkVfCK.XpmWK1gpecfTRBF6', NULL, NULL, NULL, NULL, '2024-09-14 15:49:02', '2024-09-14 15:49:02', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Jami', 'Jami@gmail.com', '078564566', NULL, '$2y$12$6SvhW9i4ozooLj79uY9g7.XmWA3GyMcw8Pmlti5en9cRPwxw7SslS', 100000, NULL, 250000, NULL, '2024-09-14 15:49:32', '2024-09-17 20:04:57', 'Nakawa', 'Uganda', 'Cognosphere', '08678765567', 'cogno@gmail.com', 'cognosphere'),
(4, 'jami g', 'jami100@gmail.com', '', NULL, '$2y$12$2CsdZytXTxEZ09ALhWS0eumHHjwSpg1Zaj4vpvJWhn1u0TzhEc4Ka', NULL, NULL, NULL, NULL, '2024-09-15 01:26:12', '2024-09-15 01:26:12', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'kaziibwe Alfred', 'alfredkaziibwe19@gmail.com', '', NULL, '$2y$12$81d5wlj2obvK7DIhjPFRq.T4PvkPJnRHPqHkIN6IwsQObWnaIY/Ui', NULL, NULL, NULL, NULL, '2024-09-15 01:28:23', '2024-09-15 01:28:23', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'godson', 'marthakarungi90@gmail.com', '', NULL, '$2y$12$Et0mbbKzeLp7WrXKtiCGg.fuKSrQm5p1i8moLxbggGxKE2dNJXCLe', NULL, NULL, NULL, NULL, '2024-09-15 01:30:41', '2024-09-15 01:30:41', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Kansiime Alfred', 'jajal@gmail.com', '', NULL, '$2y$12$uodohJ.BAHtVoypUnBKTXOCCuY83F.ZOOWk7NEf6pp9iQkhkjnUZy', NULL, NULL, NULL, NULL, '2024-09-15 01:31:56', '2024-09-19 09:57:03', 'Nakawa', NULL, NULL, NULL, NULL, NULL),
(8, 'reserve', 'alfredkaziibwe@gmail.com', '', NULL, '$2y$12$du/54fnFcJC50irToZKUtuSqEcFUvN2etuDtWmvzH3EHniBkJsw2G', NULL, NULL, NULL, NULL, '2024-09-15 01:37:23', '2024-09-15 01:37:23', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'jamiy', 'jam@gmail.com', '', NULL, '$2y$12$4engH8sawS./GUCAlnSKZuXZSB7l5evZTTBN.QhqkcCzEDtmxH7ue', NULL, NULL, NULL, NULL, '2024-09-16 11:36:16', '2024-09-16 11:36:16', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'reserve', 'ericbongomin1@gmail.com', '', NULL, '$2y$12$B5qwmA0Wtkm3z6WEKMoyPOyKIuEkxDL/3ga4sZUQginthv2kXYpcG', NULL, NULL, NULL, NULL, '2024-09-16 11:39:54', '2024-09-16 11:39:54', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'kaziibwe Alfred', 'alfredkaziibwe4@gmail.com', '', NULL, '$2y$12$pYFGSOPFd0i0C.Pqa.wbNeyAjBOpT6N6grYvsYl6wjdixD7HkmTL6', NULL, NULL, NULL, NULL, '2024-09-16 11:41:28', '2024-09-16 11:41:28', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'qwwerty', 'alfredkaziibwe00@gmail.com', '', NULL, '$2y$12$WQT0swr2y08Uyw31W0l0Z.z0YcY0HeG/UI5NLKYNDuGL5C65JWz/a', NULL, NULL, NULL, NULL, '2024-09-16 11:57:25', '2024-09-16 11:57:25', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'food-order', 'jai@gmail.com', '', NULL, '$2y$12$Jiyk6emXVjWKAGK01noaE.a6NDapYFgPYfW4La1FZDGbj.lKCgJCa', NULL, NULL, NULL, NULL, '2024-09-16 12:01:21', '2024-09-16 12:01:21', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'kaziibwe Alfred', 'alfredkaziib@gmail.com', '', NULL, '$2y$12$tkQQYZflteY/uwCxyDhugO3SEshHsk9PY8Wu/g2We3YiQIwhaHCd2', NULL, NULL, NULL, NULL, '2024-09-16 12:04:03', '2024-09-16 12:04:03', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'kaziibwe Alfred', 'emmymorga@gmail.com', '', NULL, '$2y$12$fmXDIWOWddGKnXQyjWAb6uyJMj.NiTZiOLlMZvA8QvmGx9d8VxpyW', NULL, NULL, NULL, NULL, '2024-09-16 12:05:09', '2024-09-16 12:05:09', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'kaziibwe Alfred', 'alfred@gmail.com', '', NULL, '$2y$12$KAKwBfnpNFNPINNgC.yKQuTaXt6H2NAAEFcu75UZguU8lscmPZfMK', NULL, NULL, NULL, NULL, '2024-09-16 12:08:54', '2024-09-16 12:08:54', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'milla', 'milla@gmail.com', NULL, NULL, '$2y$12$2kiN0NMSS3CMSdEzO41MletmrKgu6MEASL9221kX1s9HuCHr5zmWq', NULL, NULL, NULL, NULL, '2024-09-19 09:36:34', '2024-09-19 09:36:34', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Kansiime Alfred', 'alfa@gmail.com', NULL, NULL, '$2y$12$NwebGdh/ojABYYxenVZLW.VjCbMtREjASsTksIGXfXnLen4XgTp4.', NULL, NULL, NULL, NULL, '2024-09-19 09:42:22', '2024-09-19 09:42:22', 'kampala', NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_equipmentcategory_id_foreign` (`equipmentcategory_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_gallaries_product_id_foreign` (`product_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_equipmentcategory_id_foreign` FOREIGN KEY (`equipmentcategory_id`) REFERENCES `equipment_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  ADD CONSTRAINT `product_gallaries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
