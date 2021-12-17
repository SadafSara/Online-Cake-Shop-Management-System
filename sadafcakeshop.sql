-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 04:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sadafcakeshop`
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
(5, '2021_12_15_133447_create_sessions_table', 2),
(6, '2021_12_16_123718_create_orders_table', 3),
(7, '2021_12_16_124818_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_bill` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bkash_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkash_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_bill`, `total_item`, `name`, `address`, `phone_num`, `method`, `bkash_name`, `bkash_num`, `cart`, `created_at`, `updated_at`) VALUES
(2, 13, 6200, 5, 'Zara', 'Flat#103, House #83, Road#8/A, Dhanmondi, Dhaka', '016847793', 'Bkash', 'Zara', '01680738832', '\"O:15:\\\"App\\\\Models\\\\cart\\\":32:{s:5:\\\"items\\\";a:2:{i:2;a:3:{s:3:\\\"qty\\\";i:1;s:5:\\\"price\\\";i:2200;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:2;s:5:\\\"title\\\";s:10:\\\"Mango Cake\\\";s:11:\\\"description\\\";s:169:\\\"This delicious and moist mango cake is bursting with fresh mango flavor. It has layer after layer of mangos and cream. It doesn\\u2019t get much better than this mango cake!\\\";s:5:\\\"price\\\";i:2200;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:2;s:5:\\\"title\\\";s:10:\\\"Mango Cake\\\";s:11:\\\"description\\\";s:169:\\\"This delicious and moist mango cake is bursting with fresh mango flavor. It has layer after layer of mangos and cream. It doesn\\u2019t get much better than this mango cake!\\\";s:5:\\\"price\\\";i:2200;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}i:5;a:3:{s:3:\\\"qty\\\";i:2;s:5:\\\"price\\\";i:4000;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:5;s:5:\\\"title\\\";s:11:\\\"Coffee Cake\\\";s:11:\\\"description\\\";s:163:\\\"This is a double layer cake with a sweet, cinnamon-infused flavor and streusel top made from flour, butter, and sugar. Perfect for all the coffee lovers out there!\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:5;s:5:\\\"title\\\";s:11:\\\"Coffee Cake\\\";s:11:\\\"description\\\";s:163:\\\"This is a double layer cake with a sweet, cinnamon-infused flavor and streusel top made from flour, butter, and sugar. Perfect for all the coffee lovers out there!\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:8:\\\"totalqty\\\";i:5;s:10:\\\"totalprice\\\";i:6200;s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\"', '2021-12-16 08:34:36', '2021-12-16 08:34:36'),
(3, 11, 4500, 2, 'Sara', 'mirpur', '01927485628', 'Cash', NULL, NULL, '\"O:15:\\\"App\\\\Models\\\\cart\\\":32:{s:5:\\\"items\\\";a:2:{i:3;a:3:{s:3:\\\"qty\\\";i:1;s:5:\\\"price\\\";i:2500;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}i:5;a:3:{s:3:\\\"qty\\\";i:1;s:5:\\\"price\\\";i:2000;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:5;s:5:\\\"title\\\";s:11:\\\"Coffee Cake\\\";s:11:\\\"description\\\";s:163:\\\"This is a double layer cake with a sweet, cinnamon-infused flavor and streusel top made from flour, butter, and sugar. Perfect for all the coffee lovers out there!\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:5;s:5:\\\"title\\\";s:11:\\\"Coffee Cake\\\";s:11:\\\"description\\\";s:163:\\\"This is a double layer cake with a sweet, cinnamon-infused flavor and streusel top made from flour, butter, and sugar. Perfect for all the coffee lovers out there!\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:8:\\\"totalqty\\\";i:2;s:10:\\\"totalprice\\\";i:4500;s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\"', '2021-12-16 08:37:55', '2021-12-16 08:37:55'),
(4, 11, 2500, 1, 'Ahmed', 'dhanmondi', '01927485628', 'Cash', NULL, NULL, '\"O:15:\\\"App\\\\Models\\\\cart\\\":32:{s:5:\\\"items\\\";a:1:{i:3;a:3:{s:3:\\\"qty\\\";i:1;s:5:\\\"price\\\";i:2500;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:8:\\\"totalqty\\\";i:1;s:10:\\\"totalprice\\\";i:2500;s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\"', '2021-12-16 08:54:23', '2021-12-16 08:54:23'),
(5, 14, 7000, 5, 'Salma Khatun', 'Flat#245, House #767, Road#7/A, Dhanmondi', '82743826481', 'Bkash', 'Salma Khatun', '76127812124', '\"O:15:\\\"App\\\\Models\\\\cart\\\":32:{s:5:\\\"items\\\";a:2:{i:3;a:3:{s:3:\\\"qty\\\";i:2;s:5:\\\"price\\\";i:5000;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:3;s:5:\\\"title\\\";s:26:\\\"Dark Chocolate Mousse Cake\\\";s:11:\\\"description\\\";s:133:\\\"This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.\\\";s:5:\\\"price\\\";i:2500;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}i:1;a:3:{s:3:\\\"qty\\\";i:1;s:5:\\\"price\\\";i:2000;s:4:\\\"item\\\";O:18:\\\"App\\\\Models\\\\Product\\\":29:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:5:\\\"title\\\";i:1;s:11:\\\"description\\\";i:2;s:5:\\\"price\\\";i:3;s:6:\\\"weight\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"products\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:7:{s:2:\\\"id\\\";i:1;s:5:\\\"title\\\";s:17:\\\"Black Forest Cake\\\";s:11:\\\"description\\\";s:168:\\\"This gorgeous Black Forest Cake is made of rich chocolate cake layers with fresh cherries, dark chocolate shavings, cherry liqueur, and a simple whipped cream frosting.\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:7:{s:2:\\\"id\\\";i:1;s:5:\\\"title\\\";s:17:\\\"Black Forest Cake\\\";s:11:\\\"description\\\";s:168:\\\"This gorgeous Black Forest Cake is made of rich chocolate cake layers with fresh cherries, dark chocolate shavings, cherry liqueur, and a simple whipped cream frosting.\\\";s:5:\\\"price\\\";i:2000;s:6:\\\"weight\\\";d:2;s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:8:\\\"totalqty\\\";i:5;s:10:\\\"totalprice\\\";i:7000;s:13:\\\"\\u0000*\\u0000connection\\\";N;s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:0;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000original\\\";a:0:{}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\"', '2021-12-17 09:00:51', '2021-12-17 09:00:51');

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
('ahmed.sadaf@hotmail.com', '$2y$10$QIyqht6czm/PdUW4RixDl.jbIF/RAdM2rQx/yOrNPigZ89sXnJ6eq', '2021-12-14 15:34:37');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'Black Forest Cake', 'This gorgeous Black Forest Cake is made of rich chocolate cake layers with fresh cherries, dark chocolate shavings, cherry liqueur, and a simple whipped cream frosting.', 2000, 2.00, NULL, NULL),
(2, 'Mango Cake', 'This delicious and moist mango cake is bursting with fresh mango flavor. It has layer after layer of mangos and cream. It doesn’t get much better than this mango cake!', 2200, 2.00, NULL, NULL),
(3, 'Dark Chocolate Mousse Cake', 'This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.', 2500, 2.00, NULL, NULL),
(4, 'White Forest Cake', 'This white forest cake is a new twist on the classic European cake. It has layers of vanilla sponge cake which are filled with sour cherries, white chocolate cream and plenty of Kirschwasser.', 2000, 2.00, NULL, NULL),
(5, 'Coffee Cake', 'This is a double layer cake with a sweet, cinnamon-infused flavor and streusel top made from flour, butter, and sugar. Perfect for all the coffee lovers out there!', 2000, 2.00, NULL, NULL),
(6, 'Rainbow Cake', 'This is a delicious, bright and multi-layered Rainbow Cake with vanilla buttercream frosting, a pink-colored white chocolate drip and so many rainbow sprinkles! A perfect cake to cheer anyone up !', 2300, 2.00, NULL, NULL),
(7, 'Strawberry Cake', 'This delicious and moist cake is bursting with fresh strawberry flavor. It has layer after layer of strawberries and buttercream. It doesn’t get much better than this tempting cake!', 2400, 2.00, NULL, NULL),
(8, 'Classic Vanilla Cake', 'This classic vanilla cake consists of fluffy vanilla cake layers with a silky vanilla buttercream and loads of mouthwatering white chocolate. The perfect cake for any occasion!', 1800, 2.00, NULL, NULL),
(9, 'Red Velvet Cake', 'This is gorgeous red velvet cake is like a cross between a vanilla and chocolate cake with a very subtle tang from buttermilk and it is generously smothered in a fluffy cream cheese frosting.', 2200, 2.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 'Harun-or-Rashid', 'sara@gmail.com', NULL, '$2y$10$Jigy.GQRXeypeOUgx/qmK.IDaNSaHyOB8svluB9egvsXo.03/s.VW', NULL, '2021-12-16 04:40:38', '2021-12-16 04:40:38'),
(13, 'Zara', 'zara@hotmail.com', NULL, '$2y$10$7dOW1fnX/BTmIqfBTq2FjOpKiBAcAnqfwkO1Y6GlLsAGKoadCgMXa', NULL, '2021-12-16 08:32:20', '2021-12-16 08:32:20'),
(14, 'Salma Khatun', 'salma.khatun@yahoo.com', NULL, '$2y$10$UlUKcE9C/M..38BIAYALv.Za3425xBN4NX0g3r4Sz2yCoNpkjF2SS', NULL, '2021-12-17 08:57:58', '2021-12-17 08:57:58');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
