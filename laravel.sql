-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 01:04 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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
(5, '2023_05_05_101109_create_pacijents_table', 1),
(6, '2023_05_05_101133_create_terapijas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pacijents`
--

CREATE TABLE `pacijents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ime_roditelja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmbg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pacijents`
--

INSERT INTO `pacijents` (`id`, `ime`, `ime_roditelja`, `prezime`, `jmbg`, `telefon`, `created_at`, `updated_at`) VALUES
(1, 'Drake', 'Moises', 'Kilback', '8702752606925', '+1.740.952.0587', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(2, 'Joe', 'Adaline', 'Gaylord', '6554680432194', '636-206-7584', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(3, 'Nestor', 'Rafaela', 'Schimmel', '4177974071005', '+1-956-785-7238', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(4, 'Claudie', 'Emmie', 'Schuster', '0795501879931', '507.830.5915', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(5, 'Shayna', 'Kacie', 'Maggio', '6778037222414', '+1.484.961.3528', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(6, 'Lewis', 'Ocie', 'Kemmer', '7815202531881', '323-460-9384', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(7, 'Alexie', 'Elva', 'Marquardt', '9004343792163', '1-754-633-4445', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(8, 'Deion', 'Domenick', 'Schroeder', '1734444319376', '+1 (276) 802-9446', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(9, 'Merlin', 'Emie', 'Christiansen', '0174155168552', '(316) 396-0984', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(10, 'Dee', 'Daryl', 'Dooley', '7227143916072', '1-640-256-4707', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(11, 'Abe', 'Brittany', 'Jast', '2570471261628', '1-385-645-7257', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(12, 'Alessandra', 'Laurel', 'Wisoky', '0139987214421', '(406) 821-1869', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(13, 'Alexandria', 'Alessia', 'Sauer', '7612728404214', '+1-585-777-1084', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(14, 'Joan', 'Assunta', 'Runolfsdottir', '5690213176209', '+1 (214) 256-3540', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(15, 'Cary', 'Jerod', 'Weissnat', '6558125694321', '607-717-4724', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(16, 'Jane', 'Graham', 'Sipes', '0045290213739', '+1 (603) 337-5771', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(17, 'Silas', 'Einar', 'Stroman', '6475261023295', '+1-308-563-4964', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(18, 'Marcella', 'Tania', 'Ziemann', '0663756486786', '+1-332-407-4220', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(19, 'Arlie', 'Raphaelle', 'Nitzsche', '6547743477564', '+1.864.431.0200', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(20, 'Genesis', 'Crystel', 'Cremin', '5585843771377', '+1-269-514-3137', '2023-05-08 19:00:15', '2023-05-08 19:00:15');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 4, 'auth_token', '7888613d1051929b5edfb1041bceabb966bc7fbf71a66f48ecd797b3f87193ce', '[\"*\"]', NULL, NULL, '2023-05-08 20:41:25', '2023-05-08 20:41:25'),
(4, 'App\\Models\\User', 4, 'auth_token', 'cffc800ce48680a387ce4a61b78b36eacdcbf208fdaec1dd7beab52635ff2a57', '[\"*\"]', NULL, NULL, '2023-05-08 20:41:51', '2023-05-08 20:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `terapijas`
--

CREATE TABLE `terapijas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pacijent_id` bigint(20) UNSIGNED NOT NULL,
  `naziv_leka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacin_primene` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_preuzimanja` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terapijas`
--

INSERT INTO `terapijas` (`id`, `pacijent_id`, `naziv_leka`, `nacin_primene`, `status`, `datum_preuzimanja`, `created_at`, `updated_at`) VALUES
(1, 5, 'Kilback-Bradtke', 'Dolor non illum magnam ratione ut velit nostrum.', 'preuzet', '2021-08-06 06:21:44', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(2, 14, 'Barrows, Hansen and Hills', 'Voluptatem dolor consectetur qui voluptas aliquam optio.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(3, 1, 'Hickle, Brakus and Wunsch', 'Nihil et atque dolore maiores impedit recusandae ut vero.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(4, 11, 'Senger-Fahey', 'Deleniti soluta veniam architecto sed tenetur fuga.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(5, 15, 'Lakin-Mraz', 'Illo reprehenderit voluptas aut molestias aut totam nobis quae.', 'preuzet', '2014-06-15 00:29:26', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(6, 9, 'Smitham-Huel', 'Non aliquid quo tempore occaecati repudiandae ipsa velit eaque illo facilis quod omnis.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(7, 5, 'Morar and Sons', 'Est veritatis ut repudiandae assumenda sunt quo architecto blanditiis.', 'preuzet', '2022-03-02 18:27:04', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(8, 14, 'Robel-Yundt', 'Cumque facilis dolor debitis eaque necessitatibus in velit.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(9, 7, 'Boyer, Crona and Ankunding', 'Qui animi necessitatibus cupiditate sint animi libero placeat suscipit occaecati est nemo est.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(10, 9, 'Hane Ltd', 'Aperiam nisi numquam beatae natus repellendus illo explicabo itaque.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(11, 7, 'Senger, Kub and Rodriguez', 'Illum quasi dicta consequatur aut quidem eum ab est.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(12, 3, 'Greenfelder-Wolff', 'Alias ipsa dignissimos iure totam quam explicabo non aut deserunt.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(13, 7, 'McDermott, Koch and Klocko', 'Id molestiae eum blanditiis impedit repudiandae iure ex.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(14, 2, 'Shields, Bernier and Borer', 'Vel incidunt ut mollitia dolorum cupiditate voluptatum qui eaque totam at id eos aspernatur.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(15, 4, 'Rath LLC', 'Quis et amet et quibusdam ipsam reiciendis et voluptatem sed omnis error omnis.', 'preuzet', '2015-02-26 08:35:10', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(16, 14, 'Feil, Spencer and Kassulke', 'Quam nulla quasi sit consequatur velit sunt aut ut consequatur atque omnis doloremque sed.', 'preuzet', '2022-07-23 20:35:44', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(17, 1, 'Klein PLC', 'Magni est quia tempore doloremque blanditiis corporis rerum repellat.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(18, 19, 'Beahan and Sons', 'Incidunt distinctio voluptatem praesentium doloribus sint temporibus in temporibus molestiae sint.', 'preuzet', '2013-05-10 07:32:45', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(19, 7, 'Hoeger, Wolf and Mills', 'Fugit earum quis omnis mollitia sequi incidunt laboriosam molestiae corporis itaque repellat qui perferendis.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(20, 17, 'Kuhn, Moen and Koch', 'Magni tempora nam et cum dolor voluptas fugiat tempora pariatur.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(21, 8, 'Bogan LLC', 'Laborum molestiae at dolorum enim quis necessitatibus eligendi.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(22, 4, 'Hane-Emard', 'Reiciendis eaque rerum blanditiis officia ut delectus sapiente in dolorem.', 'preuzet', '2020-02-04 13:58:22', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(23, 17, 'Keebler Ltd', 'Sed fugiat magnam doloribus sed et non aliquid sit magni error nihil voluptatum minus.', 'preuzet', '2020-01-18 12:24:24', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(24, 11, 'Borer-Rogahn', 'Laboriosam alias et dolor non molestiae voluptatem.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(25, 14, 'Herman and Sons', 'Aut alias aut quasi quos repudiandae aliquid ut eaque repellat porro aut.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(26, 7, 'Aufderhar-O\'Conner', 'Distinctio unde tempore doloribus voluptatem similique et vel occaecati nostrum non consequatur.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(27, 13, 'Kuhlman-Borer', 'Voluptatem voluptates et deserunt perferendis exercitationem commodi id nam.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(28, 18, 'Blanda-Cole', 'Et non optio debitis deserunt repellendus corrupti sint qui libero.', 'preuzet', '2018-07-02 21:15:47', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(29, 18, 'Dickinson, Pollich and Glover', 'Iste rem atque natus laborum et laborum ducimus harum voluptatem harum.', 'preuzet', '2020-04-03 18:27:26', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(30, 17, 'O\'Keefe Group', 'Consectetur incidunt rerum molestias rerum assumenda assumenda dolorem ut labore et velit vero.', 'preuzet', '2023-01-28 06:02:23', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(31, 12, 'Schiller and Sons', 'Et eligendi odit vero voluptate error et sed voluptates officiis.', 'preuzet', '2020-03-24 02:51:10', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(32, 11, 'Hansen, Rowe and Davis', 'Delectus suscipit incidunt perferendis quidem voluptatum et ea velit aut aperiam qui.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(33, 8, 'Okuneva PLC', 'Quo in neque repellendus et sunt quo doloribus est.', 'preuzet', '2016-09-28 15:47:52', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(34, 7, 'Ortiz-Ullrich', 'Quod iure est quo assumenda voluptas natus qui aut laborum vero accusamus aut cum architecto.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(35, 6, 'Spinka, Yost and Hackett', 'Cumque aut molestias ut fugit laboriosam illum animi hic enim fugit.', 'preuzet', '2013-05-16 13:49:08', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(36, 10, 'Hudson-Bradtke', 'Repudiandae repellat nihil sint rerum aliquid ea et consectetur harum laboriosam possimus et.', 'preuzet', '2020-04-19 19:52:45', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(37, 9, 'Wyman, Hansen and Stanton', 'Qui atque magnam architecto eius molestiae itaque quo sit qui officiis officiis optio et.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(38, 13, 'Brekke-Satterfield', 'Odit qui sit quia repellendus vitae tempora voluptas et rerum iusto dicta eum illum.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(39, 5, 'Kertzmann LLC', 'Temporibus impedit ut quos natus dolor iusto voluptatem quae ut fuga.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(40, 8, 'Marks-Watsica', 'Et sed qui modi ex esse delectus eum voluptatum nesciunt quia consectetur.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(41, 4, 'Predovic, Davis and Beer', 'Occaecati quae impedit voluptatem laboriosam veniam eligendi qui dolores possimus.', 'preuzet', '2016-12-26 14:57:42', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(42, 10, 'Schaden Group', 'Enim temporibus consequuntur voluptatem maxime accusamus molestiae esse iure odit quia natus.', 'preuzet', '2013-05-11 02:55:37', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(43, 18, 'Fay and Sons', 'Ipsam qui quos impedit enim doloremque mollitia non mollitia eum perspiciatis voluptatibus sit est.', 'preuzet', '2022-06-05 07:37:58', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(44, 14, 'Hickle, O\'Hara and Kuphal', 'Aliquid quibusdam et ut fuga labore sint.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(45, 5, 'Runolfsson Group', 'Sit voluptatem non rerum iure adipisci debitis est.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(46, 5, 'Bailey-Kling', 'Eos architecto ut doloribus consequatur ratione aliquid cupiditate natus laudantium.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(47, 13, 'Jast-Krajcik', 'Et voluptate quae veniam minus eos accusamus vel voluptatem natus cupiditate laborum ab.', 'preuzet', '2021-10-21 20:13:33', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(48, 20, 'Leuschke Group', 'Inventore similique aliquam voluptatem neque illo eum laborum unde ipsam vel saepe fuga nihil.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(49, 20, 'Hayes Group', 'Amet autem sed enim cum eum commodi explicabo.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(50, 5, 'Stark, Spinka and Tromp', 'Voluptatem fugiat quam quae iure sint nostrum.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(51, 16, 'Heller-Schowalter', 'Quasi porro quasi enim eum asperiores numquam fugit id non atque eaque.', 'preuzet', '2018-01-05 03:59:14', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(52, 20, 'Bauch Group', 'Dolor porro est dolores et culpa veritatis et et.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(53, 5, 'Hoeger, White and Botsford', 'Temporibus minima vero sit ut necessitatibus fuga ipsa officia recusandae.', 'preuzet', '2015-12-26 14:26:23', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(54, 1, 'Pacocha, Murray and Wiza', 'Rerum eos delectus rerum harum et cum perspiciatis facilis et a iure vel.', 'preuzet', '2021-12-31 07:48:38', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(55, 9, 'Goodwin, Cummings and Toy', 'Quia excepturi tenetur consequatur eos non non sunt accusamus nam atque minus.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(56, 16, 'Larkin-Torphy', 'Voluptas molestiae quis ducimus est quam aut non rerum est officia nesciunt.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(57, 8, 'Beatty, Miller and Johnson', 'Voluptatibus est accusantium quia perferendis distinctio vero vero libero natus eius.', 'preuzet', '2013-12-19 16:35:34', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(58, 15, 'Hamill, Kilback and Hodkiewicz', 'Odio officia architecto voluptatem eos reiciendis enim.', 'preuzet', '2019-04-14 11:26:29', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(59, 9, 'Swift LLC', 'Nostrum ipsum et omnis nemo vitae optio ducimus sunt officia.', 'preuzet', '2019-10-29 01:30:17', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(60, 8, 'Vandervort, Murazik and Dickens', 'Ipsum at et et qui nisi saepe distinctio.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(61, 2, 'Jenkins, Johnson and Rodriguez', 'Voluptatem voluptatibus ut optio quod ut commodi iure voluptatem delectus laborum aperiam aut.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(62, 19, 'Heidenreich-Littel', 'Numquam eum suscipit ab dignissimos laborum dolores quisquam.', 'preuzet', '2020-01-18 13:49:38', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(63, 10, 'Roberts-Hermiston', 'Incidunt officiis omnis rem repellendus occaecati harum sit placeat molestias cumque et dolore velit.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(64, 1, 'Mayert, Walter and Balistreri', 'Facilis eaque nihil nostrum dolorem inventore aut eum possimus totam.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(65, 1, 'Berge, Tremblay and Carroll', 'Est eveniet doloremque doloribus ipsa repellendus pariatur voluptatem.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(66, 16, 'Jenkins, Raynor and Schmidt', 'Aliquid ducimus mollitia labore ut doloremque sit ad vel reiciendis tempore eius.', 'preuzet', '2014-05-14 19:39:48', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(67, 10, 'Haley Group', 'Aut voluptatibus placeat quis doloremque iure ut cum maiores qui omnis dolorem.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(68, 4, 'Fadel, Feeney and Weimann', 'Vitae doloribus cumque sunt quo ratione qui delectus non qui mollitia quo ex.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(69, 19, 'Gislason, Cummerata and Parker', 'Sed exercitationem quis quos soluta sint labore.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(70, 8, 'Bradtke-Mann', 'Doloribus laboriosam magnam est cumque modi aut perspiciatis facere ipsam est maiores vero fugit.', 'preuzet', '2020-10-14 05:12:19', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(71, 5, 'West Group', 'Accusamus ad nulla et tenetur quae nostrum quasi illum reprehenderit rerum voluptatem.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(72, 19, 'Veum, Christiansen and Monahan', 'Quidem similique saepe quidem sed consequatur delectus minus reprehenderit vel blanditiis et et.', 'na cekanju', NULL, '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(73, 1, 'Pacocha, Crist and Haley', 'Neque rerum in ut mollitia occaecati enim quod quas eveniet eius ut.', 'preuzet', '2021-01-28 13:37:25', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(74, 15, 'Kilback Ltd', 'Id qui aut soluta consequuntur est perspiciatis.', 'preuzet', '2019-08-26 19:16:07', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(75, 12, 'Schultz, Robel and Nader', 'Perferendis hic animi maiores eos reprehenderit temporibus vel ut id soluta eligendi voluptas.', 'preuzet', '2015-07-08 16:20:32', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(76, 15, 'Swift, Wiegand and Ryan', 'Voluptates esse illo quis at dolorum sapiente a aut sunt.', 'preuzet', '2017-07-13 08:14:41', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(77, 19, 'Hermann-Boehm', 'Sunt quae autem suscipit sapiente rerum voluptas cumque reiciendis aut quis esse totam odio.', 'preuzet', '2013-09-28 09:13:34', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(78, 19, 'Mraz-Larkin', 'Tempora nihil delectus odio et dolorem et consequatur odit nostrum aut libero rem veniam.', 'preuzet', '2018-03-03 19:10:27', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(79, 20, 'Collins and Sons', 'In et atque accusamus consequatur qui iusto exercitationem quis veniam veniam.', 'preuzet', '2013-08-28 17:47:28', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(80, 5, 'Stiedemann, Witting and Walter', 'Quis harum consequatur quidem numquam officia eum.', 'preuzet', '2017-06-19 12:00:01', '2023-05-08 19:00:15', '2023-05-08 19:00:15');

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
(1, 'Valerie Parker', 'retta65@example.net', '2023-05-08 19:00:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mG9W1P9DDM', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(2, 'Connor Fisher', 'becker.dejuan@example.org', '2023-05-08 19:00:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J0cu8x9EdC', '2023-05-08 19:00:15', '2023-05-08 19:00:15'),
(3, 'Jelena Todic', 'ena@gmail.com', NULL, '$2y$10$CcoW4wK9xi6g4HjCoJ15xORf2.FOWkV6X2JCUZL1XWz3oAGLXRXgu', NULL, '2023-05-08 19:04:38', '2023-05-08 19:04:38'),
(4, 'Milica Mihailovic', 'milica@gmail.com', NULL, '$2y$10$XrjhHvKRc23TEuN2Z.1/8.Jolying21nqRqB5Lqjc6zRjL6u12YXO', NULL, '2023-05-08 20:41:25', '2023-05-08 20:41:25');

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
-- Indexes for table `pacijents`
--
ALTER TABLE `pacijents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `terapijas`
--
ALTER TABLE `terapijas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terapijas_pacijent_id_foreign` (`pacijent_id`);

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
-- AUTO_INCREMENT for table `pacijents`
--
ALTER TABLE `pacijents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terapijas`
--
ALTER TABLE `terapijas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `terapijas`
--
ALTER TABLE `terapijas`
  ADD CONSTRAINT `terapijas_pacijent_id_foreign` FOREIGN KEY (`pacijent_id`) REFERENCES `pacijents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
