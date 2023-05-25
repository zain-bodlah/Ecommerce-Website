-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 07:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'deserunt fuga', 'deserunt-fuga', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(2, 'voluptas nulla', 'voluptas-nulla', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(3, 'praesentium ex', 'praesentium-ex', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(4, 'autem consequatur', 'autem-consequatur', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(5, 'itaque non', 'itaque-non', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(6, 'debitis rerum', 'debitis-rerum', '2021-05-26 06:58:25', '2021-05-26 06:58:25'),
(10, 'new category', 'new-category', '2021-06-05 04:02:58', '2021-06-05 04:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Zain Ahmad', 'zain@example.com', '0123456789', 'Text Message', '2021-06-15 01:07:03', '2021-06-15 01:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(2, 'OFF100', 'fixed', '100.00', '1000.00', '2021-06-08 04:32:06', '2021-06-09 12:17:39', '2021-06-10'),
(4, 'OFF20P', 'percent', '20.00', '1200.00', '2021-06-08 06:07:40', '2021-06-08 06:07:40', '2021-06-08'),
(5, 'OFF30P', 'percent', '30.00', '1300.00', '2021-06-08 06:52:45', '2021-06-08 06:52:45', '2021-06-12');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5', 8, '2021-06-02 10:56:13', '2021-06-02 07:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(7, 'First slide title', 'First slide subtitle', '300', 'http://localhost:8000/shop', '1622626916.jpg', 1, '2021-06-02 04:41:56', '2021-06-02 04:41:56'),
(8, 'Second slide title', 'Second slide subtitle', '250', 'http://localhost:8000/shop', '1622626968.jpg', 1, '2021-06-02 04:42:48', '2021-06-02 07:13:31'),
(9, 'Third slide title', 'Third slide subtitle', '200', 'http://localhost:8000/shop', '1622626999.jpg', 1, '2021-06-02 04:43:19', '2021-06-02 04:43:19');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_26_081832_create_sessions_table', 1),
(7, '2021_05_26_110938_create_categories_table', 2),
(8, '2021_05_26_111053_create_products_table', 2),
(9, '2021_06_01_091710_create_home_sliders_table', 3),
(10, '2021_06_02_105011_create_home_categories_table', 4),
(11, '2021_06_03_072141_create_sales_table', 5),
(12, '2021_06_04_055925_create_sales_table', 6),
(13, '2021_06_08_072545_create_coupons_table', 7),
(14, '2021_06_08_113451_add_expiry_date_to_coupons_table', 8),
(15, '2021_06_09_175111_create_orders_table', 9),
(16, '2021_06_09_175434_create_order_items_table', 9),
(17, '2021_06_09_175512_create_shippings_table', 9),
(18, '2021_06_09_175534_create_transactions_table', 9),
(19, '2021_06_13_171158_add_delivered_canceled_date_to_orders_table', 10),
(20, '2021_06_14_061915_create_reviews_table', 11),
(21, '2021_06_14_062522_add_rstatus_to_order_items_table', 11),
(22, '2021_06_14_115100_create_contacts_table', 12),
(23, '2021_06_18_073403_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 2, '305.00', '0.00', '64.05', '369.05', 'Zain', 'Ahmad', '0123456789', 'zain@example.com', 'testline1', 'testline2', 'Multan', 'Punjab', 'Pakistan', '66000', 'canceled', 0, '2021-06-12 05:15:36', '2021-06-13 13:00:17', '2021-06-13', '2021-06-13'),
(2, 2, '92.00', '0.00', '19.32', '111.32', 'Zain', 'Ahmad', '0123456789', 'zain@example.com', 'testline1', 'testline2', 'Multan', 'Punjab', 'Pakistan', '66000', 'canceled', 0, '2021-06-14 01:15:27', '2021-06-14 01:17:50', NULL, '2021-06-14'),
(3, 2, '87.00', '0.00', '18.27', '105.27', 'Zain', 'Ahmad', '0123456789', 'zain@example.com', 'testline1', 'testline2', 'Multan', 'Punjab', 'Pakistan', '66000', 'delivered', 0, '2021-06-14 02:08:01', '2021-06-14 02:08:34', '2021-06-14', NULL),
(4, 2, '120.00', '40.00', '27.00', '107.00', 'Zain', 'Ahmad', '1234567', 'zain@email.com', 'testline1', 'testline2', 'Multan', 'Punjab', 'Pakistan', '66000', 'delivered', 0, '2021-06-22 01:57:01', '2021-06-22 01:57:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(1, 9, 1, '305.00', 1, '2021-06-12 05:15:37', '2021-06-12 05:15:37', 0),
(2, 2, 2, '92.00', 1, '2021-06-14 01:15:27', '2021-06-14 01:15:27', 0),
(3, 5, 3, '87.00', 1, '2021-06-14 02:08:01', '2021-06-14 02:41:03', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'MyProject', 'bbbfe7972b690c9ce0e5e93db259392fc2e8d80971002c0001d7bc1edfa07f22', '[\"*\"]', NULL, '2021-06-22 01:18:38', '2021-06-22 01:18:38'),
(2, 'App\\Models\\User', 2, 'MyProject', '63ac5e52f35ac0e703ec4980e9b8668dbe9f12a9eb06bd08db7d537753ce3f0e', '[\"*\"]', NULL, '2021-06-22 01:29:17', '2021-06-22 01:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'exercitationem ullam adipisci quia', 'exercitationem-ullam-adipisci-quia', 'Culpa voluptas quaerat expedita explicabo sint. Vel mollitia nobis quidem molestiae harum. Ut illum inventore saepe autem nihil non.', 'Est molestiae in voluptate neque laborum. Unde labore corporis consequatur consequatur voluptas. Eius non accusantium inventore aliquid repudiandae occaecati. Autem dolores fugit perferendis quia. Optio facere voluptatibus sit laborum. Consequuntur eius et est. Et et reiciendis totam reiciendis ut.', '443.00', '400.00', 'DIGI336', 'instock', 0, 187, 'digital_3.jpg', NULL, 5, '2021-05-26 06:58:26', '2021-06-03 01:55:16'),
(2, 'in omnis molestiae distinctio', 'in-omnis-molestiae-distinctio', 'Dolorum est beatae quod ipsam accusamus velit labore. Est nihil aut repudiandae expedita odio quia. Culpa qui officia est veniam at.', 'Dicta voluptatem aliquid corrupti labore quisquam esse beatae. Consequatur provident dolorem sed eligendi numquam. Error doloribus occaecati ea error eum aut officiis. Ipsum nemo ut excepturi aut. Autem quae dolore eius quis dignissimos. Consequatur atque dolorem voluptatem hic sint. A quia ut quisquam non. Molestias iste repellendus voluptatem ut quis quasi. Fuga nesciunt quam aliquid. Et quam possimus id mollitia ut quod sed. Molestias beatae iusto quia non ad in iusto odio.', '92.00', '85.00', 'DIGI442', 'instock', 0, 170, 'digital_16.jpg', NULL, 4, '2021-05-26 06:58:26', '2021-06-03 01:57:00'),
(3, 'animi adipisci expedita sit', 'animi-adipisci-expedita-sit', 'Quaerat ipsa ut quod voluptatum facilis. Ipsum blanditiis in itaque recusandae beatae. Deleniti laboriosam exercitationem atque odio. Odit necessitatibus dolorem temporibus id.', 'Nam iure distinctio aliquam asperiores. Commodi qui quis officia non excepturi. In suscipit illum autem ullam molestiae delectus dolores voluptatum. Repellat voluptas qui accusantium. Itaque itaque dolores distinctio vitae et. Veritatis inventore et nesciunt mollitia tempore et. Cumque rem assumenda quis natus. Nulla rem qui cupiditate voluptates asperiores vero veniam dignissimos. Ut molestiae dolorum cupiditate impedit maiores placeat.', '306.00', '290.00', 'DIGI329', 'instock', 0, 112, 'digital_15.jpg', NULL, 1, '2021-05-26 06:58:26', '2021-06-03 01:56:13'),
(4, 'ratione eius aspernatur eius', 'ratione-eius-aspernatur-eius', 'Nesciunt sint qui quia beatae animi nesciunt in. Fugit architecto voluptatem consequatur possimus expedita ad esse. Architecto sint ea sint quo possimus rerum quis.', 'Amet voluptatem laudantium quo autem. Omnis et minima molestiae atque reprehenderit dolore nulla. Quidem ut ex incidunt repellendus deleniti exercitationem pariatur. Et qui in voluptatem facilis vero non excepturi. Rerum quod velit unde quia et. Aut aspernatur qui voluptatem beatae omnis neque. Dolorem ad aliquid eos facere quis. Ea eum hic quasi omnis inventore cum. Et repellendus facilis dolorem.', '356.00', '330.00', 'DIGI278', 'instock', 0, 156, 'digital_17.jpg', NULL, 4, '2021-05-26 06:58:26', '2021-06-03 01:57:16'),
(5, 'eius aut quaerat et', 'eius-aut-quaerat-et', 'Dolorem minima sit dolore quia et rerum provident. Minima ea autem consequatur rem qui nam. Incidunt suscipit optio repellat soluta cum nobis labore. Ut et sapiente pariatur quaerat.', 'Possimus et rerum quia veritatis ut esse nihil. Illum quo itaque fugit. Incidunt id recusandae eum et. Quis deleniti corporis sed deserunt assumenda quia qui molestiae. Aspernatur saepe soluta neque rerum. Optio rerum illum dolores voluptatem. Sequi laborum iure eaque. Consequuntur dolor debitis cumque autem et. Voluptatem quas ratione perspiciatis. Quo laudantium voluptatibus maxime excepturi facilis blanditiis. Quo autem nobis nesciunt omnis optio.', '87.00', '80.00', 'DIGI200', 'instock', 0, 166, 'digital_13.jpg', NULL, 4, '2021-05-26 06:58:26', '2021-06-03 01:57:45'),
(6, 'et explicabo mollitia praesentium', 'et-explicabo-mollitia-praesentium', 'Commodi consequuntur est hic nobis excepturi inventore consequatur. Dolor eos harum repellendus dolorem. Quibusdam animi consequuntur maiores quos. Possimus aut adipisci quaerat odio et.', 'Totam qui nobis non. Doloremque ex pariatur animi eos est quia rerum. Non ipsum et officia. Illum voluptatum ut consequatur placeat qui nihil. Nihil ipsam voluptas doloremque debitis eveniet amet. Atque voluptatem libero consequatur. Veritatis laudantium quaerat fugit quia non nihil fuga. Voluptatum aut sunt cupiditate odit ex consequatur. Qui tenetur eligendi culpa sapiente est minus dignissimos. Ipsam incidunt assumenda omnis dicta.', '64.00', NULL, 'DIGI133', 'instock', 0, 110, 'digital_18.jpg', NULL, 5, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(7, 'dignissimos laboriosam sit quis', 'dignissimos-laboriosam-sit-quis', 'Omnis nostrum consequatur eveniet ut molestiae laborum voluptas. Perferendis voluptatibus ut ut. Ipsum vel possimus corrupti qui aut consectetur.', 'Recusandae sit in magni sit. Debitis voluptatum cupiditate sequi aspernatur. Veniam dolorum cupiditate soluta aut dolorem. Quia quia non tenetur. Facilis officiis vitae occaecati cum. Recusandae voluptatem est maiores aliquid veniam magnam quo culpa. Maiores blanditiis voluptates voluptas ut aut omnis. Sint inventore ratione quo quia animi. Sunt saepe hic et rem nam et.', '122.00', NULL, 'DIGI332', 'instock', 0, 189, 'digital_10.jpg', NULL, 1, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(8, 'velit et aut tenetur', 'velit-et-aut-tenetur', 'Voluptatibus quisquam voluptates qui doloremque tempore consequuntur. Tempore qui laudantium laboriosam. Quaerat reiciendis sed cumque et tenetur atque. Error excepturi voluptas nesciunt sed.', 'Velit praesentium id temporibus quis dolor ex tempora. Voluptas pariatur soluta illo. Quisquam dignissimos et ipsa numquam. Qui sequi deserunt officiis ipsum nihil doloribus. Dolores dolor ex asperiores et. Aut ea porro commodi quae quia aspernatur consequuntur. Inventore beatae aut blanditiis odit. Deserunt dicta eum eius iure deserunt esse totam. Tenetur voluptatem dolor recusandae commodi eum voluptas quo sit.', '428.00', NULL, 'DIGI446', 'instock', 0, 197, 'digital_22.jpg', NULL, 4, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(9, 'laudantium pariatur ut eos', 'laudantium-pariatur-ut-eos', 'Magnam libero veritatis velit. Non sit quisquam voluptates molestias. Quisquam in libero laborum beatae quasi voluptas aut. Itaque autem fugiat blanditiis.', 'Debitis ab qui eveniet consequatur. Omnis vel illo officia et. Deleniti id ratione veniam fugit qui magnam. Beatae soluta beatae corporis dolores est. Occaecati veritatis tenetur nisi libero odit nam. Repellat nam sequi corrupti animi iure occaecati et. Neque dolorem temporibus debitis. Quisquam deleniti molestias tenetur cupiditate.', '305.00', NULL, 'DIGI420', 'instock', 0, 155, 'digital_5.jpg', NULL, 5, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(10, 'doloribus nam labore fugiat', 'doloribus-nam-labore-fugiat', 'Rem assumenda qui veritatis a est. Quia voluptatem praesentium corrupti impedit. Aspernatur eius sed officiis corporis vero. Vero quos nihil sit dolorum incidunt.', 'Aut explicabo voluptatem eaque velit aut maiores qui. Vitae tempora itaque minima dolore delectus. Quo commodi saepe quis temporibus autem totam sunt. Vero ipsam quis et ea non. Enim ut et modi molestiae ea error non. Necessitatibus tempore quo eos qui. Ut suscipit ut rem provident aut praesentium perferendis. Est et sed harum dignissimos rerum eos odio. Doloribus in vel quia consectetur.', '231.00', NULL, 'DIGI338', 'instock', 0, 120, 'digital_2.jpg', NULL, 1, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(11, 'facere id ducimus architecto', 'facere-id-ducimus-architecto', 'Quaerat est eveniet rerum adipisci dignissimos voluptatem voluptatem fugit. Et enim laudantium autem rerum possimus vel. Soluta sit placeat eaque quidem eum esse recusandae.', 'Sit est quasi temporibus molestiae. Id eveniet dolor nemo inventore dolores porro. Repellat quasi sunt sequi et corrupti enim. Velit minus vitae perspiciatis accusamus veniam temporibus numquam. Alias quia quisquam quia repellendus minus mollitia quaerat. Corrupti optio qui est. Fuga corporis voluptatem modi. Nihil libero omnis sapiente minima.', '330.00', NULL, 'DIGI167', 'instock', 0, 156, 'digital_9.jpg', NULL, 4, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(12, 'aut fugit eligendi quo', 'aut-fugit-eligendi-quo', 'Quis sit doloribus minima voluptas. Facere quibusdam modi tempora non laboriosam. Quidem omnis vitae expedita excepturi aliquid.', 'Totam itaque totam velit vitae nam. Qui aut corporis quasi quo. Non repellendus qui omnis culpa. Dolore quae ad possimus. Occaecati illo et fugit sit. Cupiditate ratione modi fuga sit. Qui impedit et ab sed veritatis ea. Aspernatur est veniam veritatis eligendi. Deleniti et odio architecto dolores. Voluptatem facere ipsa ullam dolorem dolorem. Error ut est aut nam ut dolorem.', '57.00', NULL, 'DIGI287', 'instock', 0, 190, 'digital_21.jpg', NULL, 5, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(13, 'aut nihil reiciendis nemo', 'aut-nihil-reiciendis-nemo', 'Nam mollitia error atque amet nihil consequuntur. Rerum et rerum minus quam. Soluta sunt et labore porro sapiente dolores molestias.', 'Officiis eum laboriosam temporibus qui. Non quibusdam id et officiis quae voluptas ut officiis. Vero deserunt rerum est voluptas assumenda. Qui qui necessitatibus laboriosam voluptatem sapiente non id. Odit harum dicta nam odio voluptas. Ut quasi maxime incidunt quo quia. Accusantium non repellendus quis est sunt eius. Aut est repellat quae dolores inventore. Enim doloribus iste voluptatem iusto placeat. Itaque est consequatur ipsum consequatur dolor quae. Quisquam ea aut id nisi ab et velit.', '394.00', NULL, 'DIGI117', 'instock', 0, 185, 'digital_4.jpg', NULL, 1, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(14, 'culpa sapiente facilis labore', 'culpa-sapiente-facilis-labore', 'Fugit eos ut est. Nihil amet voluptatem similique quidem ab cum aut eos.', 'Quo et enim error. Dolor tempore dolor voluptatem qui dolorum. Tenetur accusantium provident dolorum aut vero et. Magni eos eum iste totam accusamus sunt. Dignissimos dolorem est quam quaerat. Dignissimos et nobis qui vel suscipit. Nihil laborum error aut doloribus. Et earum repellendus aperiam explicabo. Omnis enim in ad eum temporibus aspernatur eius. Culpa sit aut minus dignissimos quis. Sint aut quis eius iure repellat.', '235.00', NULL, 'DIGI313', 'instock', 0, 136, 'digital_14.jpg', NULL, 3, '2021-05-26 06:58:26', '2021-05-26 06:58:26'),
(15, 'magnam eaque atque corrupti', 'magnam-eaque-atque-corrupti', 'In sint impedit et veniam ipsum. Doloremque quidem qui exercitationem laborum enim. Ea voluptatem et ut consequatur reiciendis eos ea non. Aut voluptas eos repellat ut voluptatibus ut in.', 'Consequatur occaecati occaecati voluptates ex tempora aspernatur voluptatem. Neque sunt in non officiis quis consequuntur iusto. Ut soluta omnis itaque velit deleniti dignissimos id. Ut dignissimos corrupti perferendis deleniti voluptatem labore unde. Repellendus voluptatem laboriosam distinctio labore assumenda dicta. Dolores delectus dignissimos nesciunt veniam dolor sed. Tempore molestias rerum consectetur explicabo possimus maxime. Hic voluptates voluptatum et officia rerum.', '148.00', NULL, 'DIGI443', 'instock', 0, 112, 'digital_19.jpg', NULL, 2, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(16, 'voluptatum ea ut est', 'voluptatum-ea-ut-est', 'Magni quo quidem perferendis quisquam eum. Aut qui qui at architecto. Harum dolorem in et. Eveniet tempore facere reiciendis quod error. Sed distinctio consequatur et earum magnam deleniti a.', 'Veniam illum quia non quos molestiae sunt optio quaerat. Voluptas ut dignissimos facilis commodi accusamus doloribus eos. Omnis et quo omnis architecto corporis reiciendis. Incidunt excepturi aut dolores laudantium. Odio cum cumque est facilis rem. Placeat eaque et veniam magnam ipsa quidem. Aliquid sunt voluptatum dolor ut aut. Rerum maxime iste non ut assumenda accusantium laborum. Impedit illum ut non id.', '444.00', NULL, 'DIGI469', 'instock', 0, 197, 'digital_12.jpg', NULL, 5, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(17, 'eius ipsam praesentium natus', 'eius-ipsam-praesentium-natus', 'Qui reiciendis et incidunt qui et possimus quam tenetur. Nihil autem illo nostrum velit voluptate provident.', 'Tempora ipsa magnam illum rerum aut aperiam. Laborum dicta dolor quo placeat ipsam. Recusandae et quibusdam est. Dolorum laudantium molestiae aperiam aut. Eveniet dolores quis neque quas. Nihil est necessitatibus et minima aspernatur placeat eum. Ut sed quidem beatae voluptatem doloremque doloribus. Accusamus iure autem libero non voluptatibus quo dignissimos aut. Incidunt veritatis sapiente aut quis sed enim. Et fugit in repellat rerum error numquam quos.', '377.00', NULL, 'DIGI156', 'instock', 0, 197, 'digital_1.jpg', NULL, 5, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(18, 'natus libero quis est', 'natus-libero-quis-est', 'Dolor velit voluptatem quia illo et. Consequatur quisquam qui blanditiis voluptas ut. Culpa illo et ut temporibus aliquam repellat odit.', 'Ratione qui alias mollitia et exercitationem libero. Minima architecto commodi iure ad. Autem tempora velit ex sint et quibusdam quam. Enim a et blanditiis modi velit reiciendis dolores. Et quis illum quas sunt debitis nihil. Saepe optio quis enim. Veniam quisquam at aut ipsam. Laboriosam eius voluptate beatae doloribus. Enim delectus dolores corrupti minus assumenda ex. Non velit quisquam vero unde qui dignissimos.', '463.00', NULL, 'DIGI471', 'instock', 0, 144, 'digital_11.jpg', NULL, 4, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(19, 'vero neque natus similique', 'vero-neque-natus-similique', 'Exercitationem incidunt fugiat dignissimos aut atque deleniti voluptas. Quia impedit esse architecto corporis facere nemo. Vero quia et dolorem saepe.', 'Fugiat occaecati et tempora ad consectetur tenetur. Sed aut velit et ut quas fugiat. Magni cumque nemo illo ut pariatur. Soluta nam dolorum laborum cum est molestias ipsum. Esse deserunt placeat aut vel. Suscipit beatae et facere voluptatum nisi et. Occaecati modi dolorem possimus vitae maiores ea. Soluta et maxime amet totam dolorum voluptate. Asperiores praesentium quo consequuntur mollitia. In exercitationem sapiente quo et quod aut aspernatur. Dolor est delectus in qui.', '474.00', NULL, 'DIGI478', 'instock', 0, 103, 'digital_8.jpg', NULL, 3, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(20, 'debitis sit maxime quaerat', 'debitis-sit-maxime-quaerat', 'Sed rerum omnis et ratione. Et totam recusandae voluptas earum tempora dolores. Eum ullam architecto error repudiandae nulla nemo occaecati. Adipisci id nemo quae nesciunt.', 'Doloremque amet id consequuntur quas. Est porro officia eligendi cum ipsum officiis corrupti. Et quis ex velit soluta eum eos quas blanditiis. Est et eligendi sed dolores vero aut. Odio eaque magni in rerum dolorum nisi doloribus. Ducimus natus modi corrupti ea qui. Rerum debitis porro temporibus. Eum sed ipsum id deleniti at.', '32.00', NULL, 'DIGI339', 'instock', 0, 195, 'digital_7.jpg', NULL, 4, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(21, 'vero placeat sit omnis', 'vero-placeat-sit-omnis', 'Voluptatem vero ut ullam tempore pariatur est. Voluptates ea optio consequatur dolorem facilis ullam dignissimos. Necessitatibus sit aut nostrum repellat.', 'Voluptatibus quis deserunt ad eius quidem deserunt impedit. Et qui minima occaecati. Beatae eaque reprehenderit sunt qui dolore quo. Incidunt et fugit libero qui eius beatae. Sit autem quia nam est consequatur ut incidunt ut. Eos blanditiis dolores id suscipit minima. Et quidem saepe quia. Labore minima autem et. Earum nesciunt illum possimus itaque in soluta quo.', '241.00', NULL, 'DIGI369', 'instock', 0, 158, 'digital_6.jpg', NULL, 3, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(22, 'cum consequatur dolorem et', 'cum-consequatur-dolorem-et', 'Doloribus veritatis dolor esse voluptas. Sunt alias qui incidunt. Excepturi ut facere provident et. Commodi autem vero et sed.', 'Ad quia laborum tenetur consequuntur. Ea repellat maxime voluptate aut sit quia. Soluta incidunt non reiciendis ipsa. Qui non pariatur praesentium dolorem deleniti molestiae vel aut. In voluptatem et sit quia. Alias consequatur omnis at ut. Et vero fugit minima fuga reiciendis saepe. Sapiente quia excepturi aut et adipisci aut. Omnis dolorum voluptas possimus sit. Ipsum qui sed velit et. Delectus incidunt nobis et accusamus. Vel suscipit et nostrum.', '83.00', NULL, 'DIGI431', 'instock', 0, 139, 'digital_20.jpg', NULL, 5, '2021-05-26 06:58:27', '2021-05-26 06:58:27'),
(23, 'Cannon Camera Updated', 'cannon-camera-updated', 'ddbb', 'fjvksvbv v sv', '350.00', NULL, 'CAN-01', 'instock', 0, 50, '1622537346.jpg', NULL, 3, '2021-06-01 02:38:47', '2021-06-01 03:49:06'),
(26, 'Lenovo Laptop', 'lenovo-laptop', 'lenovo laptop', 'lenovo premium latop for developers', '500.00', NULL, 'LN-01', 'instock', 0, 70, '1622628589.jpg', NULL, 5, '2021-06-02 05:09:49', '2021-06-02 05:09:49'),
(27, 'Mobile Phone', 'mobile-phone', '<p><strong>Model:</strong> Y21</p>\n<p><strong>Company:</strong> Vivo</p>', '<h4><strong>Product Specifications:</strong></h4>\n<p><strong>Mobile Information</strong></p>\n<p><strong>OS:</strong> 11</p>\n<p><strong>RAM:</strong> 4 GB</p>\n<p><strong>ROM:</strong> 64 GB</p>\n<p><strong>Camera:</strong> 32 pixels main camera</p>\n<p><strong>CPU:</strong> Octacore</p>', '140.00', '120.00', 'VM-01', 'instock', 0, 100, '1622886662.jpg', NULL, 3, '2021-06-05 04:51:02', '2021-06-05 04:51:02'),
(28, 'New Product 1', 'new-product-1', '<p>HP Elitebook</p>', '<p>HP Elitebook Laptop</p>', '300.00', '280.00', 'HP-02', 'instock', 0, 50, '1624428944.jpg', ',16244289450.jpg,16244289451.jpg', 3, '2021-06-23 01:15:45', '2021-06-23 01:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Nice product', 3, '2021-06-14 02:41:03', '2021-06-14 02:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-06-07 11:59:00', 0, NULL, '2021-06-05 04:53:39');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('foKSTZAbws3gpMRe0SacZfUMjfHv8ZHgGH4VBxFk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXhQTXdUVlZFYW1ob3BsSFV5cWNOalMwUWo1ek8wOXBwbzU5RFp2TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1625550919),
('ugkjFVUze8TaQu7jf85928WjS6qbTi2NyvG3NBuZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTFnbkt3VDZZWDFhQkFYUW90N3psNjF2a2YxVXJBd2VNWnh0UGtlZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1626609326),
('VNtH4hNv6nziePCJdLGxZYbvHEa5oE8CbQsrP8o4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWc1aVlxS2xTc3lnZUdVdWNteTJnb2J5RFBXWWlHWnpZMDduR0c5bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW1lcmNlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1626609219);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'zain@example.com', '123456789', '1234567890', 'Multan, Punjab, Pakistan', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d220732.6737445845!2d71.33457030553124!3d30.181478581001134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x393b315778dea7d9%3A0xbad72fc74e55d42f!2sMultan%2C%20Punjab%2C%20Pakistan!5e0!3m2!1sen!2s!4v1624008994857!5m2!1sen!2s', '#', '#', '#', '#', '#', '2021-06-18 04:22:20', '2021-07-06 00:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'cod', 'pending', '2021-06-12 05:15:37', '2021-06-12 05:15:37'),
(2, 2, 2, 'cod', 'pending', '2021-06-14 01:15:27', '2021-06-14 01:15:27'),
(3, 2, 3, 'cod', 'pending', '2021-06-14 02:08:01', '2021-06-14 02:08:01');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$0PWkFs49CQ23B8boC0HwIu3j7QdHIEa0kiDOyNqo0SIGbUsP7KP4K', NULL, NULL, 'R1vwmzQZ1BBxDjRByILFSfTlLPgZuyZOKAr5ZlAd1QaFbHsbgi3NfhZcZokv', NULL, NULL, 'ADM', '2021-05-26 04:18:53', '2021-05-26 04:18:53'),
(2, 'User', 'user@user.com', NULL, '$2y$10$Q0iVVT3TtGvIXLLH47XDhuFk.1rYZ8X1XUp09N9IE6NWU7eeXupm.', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-26 04:20:14', '2021-06-14 06:48:20'),
(3, 'User 1', 'user1@user.com', NULL, '$2y$10$.S4QkJeU4/LhNqoWOxmLX.4Vh0JMJ9GfpptWYqnJBPyEBM/ZPsSMS', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-26 06:06:16', '2021-05-26 06:06:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
