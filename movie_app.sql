-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3310
-- Generation Time: Sep 04, 2022 at 09:28 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `tmdb_id`, `name`, `slug`, `poster_path`, `created_at`, `updated_at`) VALUES
(1, 1136406, 'Tom Holland', 'tom-holland', '/lVd9ffRzJGDSCL96R8E5z0yqTfc.jpg', '2022-09-04 18:02:38', '2022-09-04 18:02:38'),
(2, 75341, 'Gary Coleman', 'gary-coleman', '/77YIEd2tastsT3fjEraKOjCvgyD.jpg', '2022-09-04 18:03:33', '2022-09-04 18:03:33'),
(3, 996701, 'Miles Teller', 'miles-teller', '/cg3LW0xX6RKr8dmescxq1bepcb5.jpg', '2022-09-04 18:03:47', '2022-09-04 18:03:47'),
(4, 74568, 'Chris Hemsworth', 'chris-hemsworth', '/jpurJ9jAcLCYjgHHfYF32m3zJYm.jpg', '2022-09-04 18:03:52', '2022-09-04 18:03:52'),
(5, 136532, 'Matt Smith', 'matt-smith', '/xr2GSp8Pm6fT5VGm0I9tsWVcZ8q.jpg', '2022-09-04 18:03:57', '2022-09-04 18:03:57'),
(6, 976, 'Jason Statham', 'jason-statham', '/whNwkEQYWLFJA8ij0WyOOAD5xhQ.jpg', '2022-09-04 18:04:03', '2022-09-04 18:04:03'),
(7, 16828, 'Chris Evans', 'chris-evans', '/3bOGNsHlrswhyW79uvIHH1V43JI.jpg', '2022-09-04 18:04:08', '2022-09-04 18:04:08'),
(8, 73457, 'Chris Pratt', 'chris-pratt', '/gXKyT1YU5RWWPaE1je3ht58eUZr.jpg', '2022-09-04 18:04:16', '2022-09-04 18:04:16'),
(9, 5576, 'Val Kilmer', 'val-kilmer', '/szMi36EOoCuMYeYO9eYqRefEnKo.jpg', '2022-09-04 18:04:22', '2022-09-04 18:04:22'),
(10, 500, 'Tom Cruise', 'tom-cruise', '/8qBylBsQf4llkGrWR3qAsOtOU8O.jpg', '2022-09-04 18:04:27', '2022-09-04 18:04:27'),
(11, 13240, 'Mark Wahlberg', 'mark-wahlberg', '/bTEFpaWd7A6AZVWOqKKBWzKEUe8.jpg', '2022-09-04 18:04:32', '2022-09-04 18:04:32'),
(12, 83271, 'Glen Powell', 'glen-powell', '/o1UZnQasM49w7OIUiE9YEdS0wqg.jpg', '2022-09-04 18:04:37', '2022-09-04 18:04:37'),
(13, 2037, 'Cillian Murphy', 'cillian-murphy', '/i8dOTC0w6V274ev5iAAvo4Ahhpr.jpg', '2022-09-04 18:04:44', '2022-09-04 18:04:44'),
(14, 2524, 'Tom Hardy', 'tom-hardy', '/yVGF9FvDxTDPhGimTbZNfghpllA.jpg', '2022-09-04 18:04:51', '2022-09-04 18:04:51'),
(15, 12835, 'Vin Diesel', 'vin-diesel', '/9uxTwqB8anAiPomB6Kqm6A73VTV.jpg', '2022-09-04 18:04:57', '2022-09-04 18:04:57'),
(16, 3223, 'Robert Downey Jr.', 'robert-downey-jr', '/5qHNjhtjMD4YWH3UP0rm4tKwxCL.jpg', '2022-09-04 18:05:07', '2022-09-04 18:05:07'),
(17, 14887, 'Paddy Considine', 'paddy-considine', '/dct34uuMtkRVIT9CcGN4c61tSDF.jpg', '2022-09-04 18:05:13', '2022-09-04 18:05:13'),
(18, 16483, 'Sylvester Stallone', 'sylvester-stallone', '/qDRGPAcQoW8Wuig9bvoLpHwf1gU.jpg', '2022-09-04 18:05:18', '2022-09-04 18:05:18'),
(19, 117642, 'Jason Momoa', 'jason-momoa', '/6dEFBpZH8C8OijsynkSajQT99Pb.jpg', '2022-09-04 18:05:25', '2022-09-04 18:05:25'),
(20, 2231, 'Samuel L. Jackson', 'samuel-l-jackson', '/nCJJ3NVksYNxIzEHcyC1XziwPVj.jpg', '2022-09-04 18:05:30', '2022-09-04 18:05:30'),
(21, 19498, 'Jon Bernthal', 'jon-bernthal', '/pEDKAsy1zO9dgSeBjohqklOXRUQ.jpg', '2022-09-04 18:05:37', '2022-09-04 18:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `cast_movie`
--

CREATE TABLE `cast_movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cast_movie`
--

INSERT INTO `cast_movie` (`id`, `cast_id`, `movie_id`) VALUES
(2, 20, 17),
(3, 19, 19),
(4, 20, 19),
(5, 19, 4),
(6, 8, 18),
(7, 9, 18),
(8, 9, 11),
(9, 11, 11),
(10, 16, 11),
(11, 15, 11),
(12, 14, 4),
(13, 17, 11),
(14, 20, 4),
(15, 21, 18),
(16, 8, 16),
(17, 9, 16),
(18, 6, 16),
(19, 8, 18),
(20, 8, 21),
(21, 9, 9),
(22, 15, 9),
(23, 11, 9),
(24, 9, 21),
(25, 14, 20),
(26, 14, 10),
(27, 16, 10),
(28, 6, 10),
(29, 17, 10),
(30, 17, 20),
(31, 17, 19),
(32, 9, 20),
(33, 16, 20),
(34, 6, 19),
(35, 6, 17),
(36, 6, 4),
(37, 6, 11),
(38, 6, 18),
(39, 6, 16),
(40, 6, 7),
(41, 6, 3),
(42, 6, 5),
(43, 6, 20),
(44, 6, 13),
(45, 6, 9),
(46, 6, 9),
(47, 6, 6),
(48, 6, 21),
(49, 6, 15),
(50, 6, 8),
(51, 6, 14),
(52, 6, 2),
(53, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` bigint(20) NOT NULL,
  `season_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `episode_number` int(11) NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `visits` bigint(20) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `tmdb_id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 1, 'First Genre', 'first-genre', NULL, NULL),
(3, 2, 'Second Genre', 'second-genre', NULL, NULL),
(4, 3, 'Third Genre', 'third-genre', NULL, NULL),
(5, 4, 'Forth Genre', 'forth-genre', NULL, NULL),
(6, 5, 'Fifth Genre', 'fifth-genre', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie`
--

CREATE TABLE `genre_movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_10_30_091235_create_sessions_table', 1),
(10, '2021_11_01_205834_create_movies_table', 1),
(11, '2021_11_01_205856_create_series_table', 1),
(12, '2021_11_01_205929_create_casts_table', 1),
(13, '2021_11_01_205939_create_tags_table', 1),
(14, '2021_11_01_205954_create_seasons_table', 1),
(15, '2021_11_01_210009_create_episodes_table', 1),
(16, '2021_11_01_210027_create_genres_table', 1),
(17, '2021_11_01_210043_create_trailer_urls_table', 1),
(18, '2021_11_02_195654_create_genre_movie_table', 1),
(19, '2021_11_02_195815_create_cast_movie_table', 1),
(20, '2021_11_05_082532_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `runtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `visits` bigint(20) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(8,1) NOT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backdrop_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tmdb_id`, `title`, `release_date`, `runtime`, `lang`, `video_format`, `is_public`, `visits`, `slug`, `rating`, `poster_path`, `backdrop_path`, `overview`, `created_at`, `updated_at`) VALUES
(2, '131296', 'Thor Collection', '2022-07-06', '130', 'ar', '', 1, 2, 'thor-collection', '33.1', '/yw7gr7DhHHVTLlO8Se8uH17TDMA.jpg', '/3KL8UNKFWgIKXzLHjwY0uwgjzYl.jpg', 'After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor Odinson enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Relatively Mighty Girl Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.', NULL, NULL),
(3, '19589', 'Here Be Dragons', '2008-06-01', '40', 'en', 'HD', 1, 1, 'here-be-dragons', '6.1', '/ooWWM44hwYVpg1bLwknq1UnOLQ4.jpg', 'black', 'Most people fully accept paranormal and pseudoscientific claims without critique as they are promoted by the mass media. Here Be Dragons offers a toolbox for recognizing and understanding the dangers of pseudoscience, and appreciation for the reality-based benefits offered by real science.', '2022-09-04 16:53:45', '2022-09-04 16:55:14'),
(4, '610150', 'Dragon Ball Super: Super Hero', '2022-06-11', '99', 'ja', 'HD', 1, 1, 'dragon-ball-super-super-hero', '8.0', '/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg', '/ugS5FVfCI3RV0ZwZtBV3HAV75OX.jpg', 'The Red Ribbon Army, an evil organization that was once destroyed by Goku in the past, has been reformed by a group of people who have created new and mightier Androids, Gamma 1 and Gamma 2, and seek vengeance against Goku and his family.', '2022-09-04 16:54:36', '2022-09-04 16:54:46'),
(5, '438148', 'Minions: The Rise of Gru', '2022-06-29', '87', 'en', 'HD', 1, 1, 'minions-the-rise-of-gru', '7.7', '/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg', '/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg', 'A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.', '2022-09-04 16:55:47', '2022-09-04 17:00:30'),
(6, '756999', 'The Black Phone', '2022-06-22', '103', 'en', 'HD', 0, 1, 'the-black-phone', '7.9', '/lr11mCT85T1JanlgjMuhs9nMht4.jpg', '/AfvIjhDu9p64jKcmohS4hsPG95Q.jpg', 'Finney Blake, a shy but clever 13-year-old boy, is abducted by a sadistic killer and trapped in a soundproof basement where screaming is of little use. When a disconnected phone on the wall begins to ring, Finney discovers that he can hear the voices of the killer’s previous victims. And they are dead set on making sure that what happened to them doesn’t happen to Finney.', '2022-09-04 16:56:04', '2022-09-04 16:56:04'),
(7, '1010821', 'Groot Takes a Bath', '2022-08-10', '5', 'en', 'HD', 1, 1, 'groot-takes-a-bath', '7.2', '/sN7FJP06TsNNtK9Jr77dc25yI82.jpg', '/4bsz75kSdeVQm9u5aD87ciRpYVW.jpg', 'Everybody needs some alone time to relax and wash up, but things go quite differently when you’re a Flora Colossi toddler.', '2022-09-04 16:56:24', '2022-09-04 17:00:16'),
(8, '1010819', 'The Little Guy', '2022-08-10', '5', 'en', 'HD', 0, 1, 'the-little-guy', '7.8', '/lPzcizL8PdS2U1q0rfhlVn00b9l.jpg', '/tTrZap8lEJsdpnab5yIR3d9bedg.jpg', 'Groot discovers a miniature civilization that believes the seemingly enormous tree toddler is the hero they’ve been waiting for.', '2022-09-04 16:58:02', '2022-09-04 16:58:02'),
(9, '675353', 'Sonic the Hedgehog 2', '2022-03-30', '122', 'en', 'HD', 0, 1, 'sonic-the-hedgehog-2', '7.7', '/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', '/8wwXPG22aNMpPGuXnfm3galoxbI.jpg', 'After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.', '2022-09-04 16:58:23', '2022-09-04 16:58:23'),
(10, '508947', 'Turning Red', '2022-03-10', '100', 'en', 'HD', 0, 1, 'turning-red', '7.5', '/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg', '/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg', 'Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.', '2022-09-04 16:58:30', '2022-09-04 16:58:30'),
(11, '303857', 'Dragon Ball Z: Resurrection \'F\'', '2015-04-18', '93', 'ja', 'HD', 1, 1, 'dragon-ball-z-resurrection-f', '6.8', '/soq3AxjALdBfdPAm8H7yuMmNL5Y.jpg', '/kIgfFzjjBNgx6Tr2LCw8Zkq921s.jpg', 'One peaceful day on Earth, two remnants of Frieza\'s army named Sorbet and Tagoma arrive searching for the Dragon Balls with the aim of reviving Frieza. They succeed, and Frieza subsequently seeks revenge on the Saiyans.', '2022-09-04 16:58:36', '2022-09-04 16:59:50'),
(12, '961484', 'Last Seen Alive', '2022-05-19', '95', 'en', 'HD', 1, 1, 'last-seen-alive', '6.6', '/qvqyDj34Uivokf4qIvK4bH0m0qF.jpg', '/wbEjiLsBbLUzkrRV7WoCx2Xkjdt.jpg', 'After Will Spann\'s wife suddenly vanishes at a gas station, his desperate search to find her leads him down a dark path that forces him to run from authorities and take the law into his own hands.', '2022-09-04 16:58:42', '2022-09-04 17:00:22'),
(13, '629015', 'Shut In', '2022-03-24', '90', 'en', 'HD', 0, 1, 'shut-in', '7.1', '/b5ug4LyLQFeR6azAJyIPBQz5ur9.jpg', '/3myU9OTSvAXxFVYBDUDs9zDFF4P.jpg', 'A young single mother is held captive along with her two children by a violent ex and must plot their escape before it’s too late.', '2022-09-04 16:58:48', '2022-09-04 16:58:48'),
(14, '560057', 'The Sea Beast', '2022-06-24', '119', 'en', 'HD', 0, 1, 'the-sea-beast', '7.7', '/9Zfv4Ap1e8eKOYnZPtYaWhLkk0d.jpg', '/wUwizGzbTk5CTiKBnE4Pq1MONwD.jpg', 'The life of a legendary sea monster hunter is turned upside down when a young girl stows away on his ship.', '2022-09-04 16:58:54', '2022-09-04 16:58:54'),
(15, '459151', 'The Boss Baby: Family Business', '2021-07-01', '107', 'en', 'HD', 0, 1, 'the-boss-baby-family-business', '7.5', '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '/4GVBzwoPFkQ0SncZJQ0c73tvKjK.jpg', 'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.', '2022-09-04 16:58:59', '2022-09-04 16:58:59'),
(16, '39108', 'Dragon Ball Z: Wrath of the Dragon', '1995-07-15', '51', 'ja', 'HD', 1, 1, 'dragon-ball-z-wrath-of-the-dragon', '7.2', '/gd3argrGcs6mEHYPmnVHrP11sCG.jpg', '/Ktn3lkVHlaLpymvp7cCIPdb65g.jpg', 'The Z Warriors discover an unopenable music box and are told to open it with the Dragon Balls. The contents turn out to be a warrior named Tapion who had sealed himself inside along with a monster called Hildegarn. Goku must now perfect a new technique to defeat the evil monster.', '2022-09-04 16:59:05', '2022-09-04 17:00:06'),
(17, '18095', 'Dragon Ball GT: A Hero\'s Legacy', '1997-03-26', '45', 'ja', 'HD', 1, 1, 'dragon-ball-gt-a-heros-legacy', '6.7', '/vjqcrp7nQGUVkVWeJR3HUAj0AyR.jpg', '/sLCN5b2WYsYkWMrMMCnRHGv1VEO.jpg', 'Son Goku Jr. is the great-great-great-great-grandson of the legendary martial artist Son Goku. However, unlike his predecessor he\'s not a brave fighter. He\'s constantly picked on by school bullies, his grandmother Pan sees this and she\'s worried, but even though Goku Jr. is not a strong and powerful Saiyan, he has a kind heart, and Pan loves him. When Pan gets sick Goku Jr. realizes he must do something if he doesn\'t want to lose Pan. Then he will remember about the legends of the Dragon Balls. It was told they granted a wish to the bearer, Goku Jr. needs a magical wish more than ever.', '2022-09-04 16:59:11', '2022-09-04 16:59:46'),
(18, '575249', 'Dragon Ball Z: The Real 4-D at Super Tenkaichi Budokai', '2017-06-30', '0', 'ja', 'HD', 1, 1, 'dragon-ball-z-the-real-4-d-at-super-tenkaichi-budokai', '7.2', '/bsML7r1iijCiGjowbcUfsgtrUWH.jpg', '/n6rv1hySg2Ie0UyJENwnnJWb3no.jpg', 'Dragon Ball Z: The Real 4-D at Super Tenkaichi Budoka is a cinematic attraction at Universal Studios Japan and the successor to Dragon Ball Z: The Real 4-D. Like its predecessor, it is a new installment in the Dragon Ball series, this time primarily featuring the face off between Super Saiyan Blue Goku and Broly God.', '2022-09-04 16:59:16', '2022-09-04 16:59:53'),
(19, '689700', 'Clean', '2022-01-28', '93', 'en', 'HD', 1, 1, 'clean', '6.5', '/kRpKJstAW7DsoPAEBW2Kk1uD9Q6.jpg', '/A5OlbPn10H3E16CY8CT8fplWZy7.jpg', 'Tormented by a past life, garbage man Clean attempts a life of quiet redemption. But when his good intentions mark him a target of a local crime boss, Clean is forced to reconcile with the violence of his past.', '2022-09-04 16:59:22', '2022-09-04 16:59:42'),
(20, '675445', 'PAW Patrol: The Movie', '2021-08-09', '86', 'en', 'HD', 0, 1, 'paw-patrol-the-movie', '7.4', '/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg', '/a17F3zXnmuwqxfiDa46mtlosjrv.jpg', 'Ryder and the pups are called to Adventure City to stop Mayor Humdinger from turning the bustling metropolis into a state of chaos.', '2022-09-04 16:59:27', '2022-09-04 16:59:27'),
(21, '676701', 'Tad the Lost Explorer and the Curse of the Mummy', '2022-08-24', '89', 'es', 'HD', 0, 1, 'tad-the-lost-explorer-and-the-curse-of-the-mummy', '7.5', '/yt0CGOtKbFGR4bqLnDyB0rJeUrZ.jpg', '/piEEg5kDQyxK05V4Am8sVxFe267.jpg', 'Tad would love for his archeologist colleagues to accept him as one of their own, but he always messes everything up. Tad accidentally destroys a sarcophagus and unleashes an ancient spell endangering the lives of his friends: Mummy, Jeff and Belzoni. With everyone against him and only helped by Sara, he sets off on an adventure that will take him from Mexico to Chicago and from Paris to Egypt, in order to put an end to the curse of the Mummy.', '2022-09-04 16:59:33', '2022-09-04 16:59:33');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2022-09-04 07:59:06', '2022-09-04 07:59:06'),
(2, 'admin', 'web', '2022-09-04 07:59:10', '2022-09-04 07:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` bigint(20) NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `season_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `tmdb_id`, `serie_id`, `name`, `season_number`, `slug`, `poster_path`, `created_at`, `updated_at`) VALUES
(1, 3624, 1, 'Season 1', '1', 'season-1', '/wgfKiqzuMrFIkU1M68DDDY8kGC1.jpg', '2022-09-04 17:29:50', '2022-09-04 17:29:50'),
(2, 3625, 1, 'Season 2', '2', 'season-2', '/9xfNkPwDOqyeUvfNhs1XlWA0esP.jpg', '2022-09-04 17:29:53', '2022-09-04 17:29:53'),
(3, 3626, 1, 'Season 3', '3', 'season-3', '/5MkZjRnCKiIGn3bkXrXfndEzqOU.jpg', '2022-09-04 17:29:56', '2022-09-04 17:29:56'),
(4, 3628, 1, 'Season 4', '4', 'season-4', '/dniQ7zw3mbLJkd1U0gdFEh4b24O.jpg', '2022-09-04 17:29:58', '2022-09-04 17:29:58'),
(5, 62090, 1, 'Season 5', '5', 'season-5', '/7Q1Hy1AHxAzA2lsmzEMBvuWTX0x.jpg', '2022-09-04 17:30:00', '2022-09-04 17:30:00'),
(6, 71881, 1, 'Season 6', '6', 'season-6', '/p1udLh0gfqyZFmXBGa393gk8go5.jpg', '2022-09-04 17:30:01', '2022-09-04 17:30:01'),
(7, 81266, 1, 'Season 7', '7', 'season-7', '/oX51n32QyHeFP5kErksemJsJljL.jpg', '2022-09-04 17:30:03', '2022-09-04 17:30:03'),
(8, 107971, 1, 'Season 8', '8', 'season-8', '/50l0vWylWvucHs0xh64yBAWYTcR.jpg', '2022-09-04 17:30:05', '2022-09-04 17:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visits` bigint(20) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `tmdb_id`, `name`, `slug`, `created_year`, `poster_path`, `visits`, `created_at`, `updated_at`) VALUES
(1, 1399, 'Game of Thrones', 'game-of-thrones', '2011-04-17', '/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg', 1, '2022-09-04 17:27:24', '2022-09-04 17:27:24'),
(2, 2632, 'Once Upon a Time... Life', 'once-upon-a-time-life', '1987-09-13', '/y8gdJxzXIcaZXCusj2c2RdkO53E.jpg', 1, '2022-09-04 17:28:28', '2022-09-04 17:28:28'),
(3, 16656, 'Фитиль', 'fitil', '1962-06-04', '/dBgJKqZnmfARnN8bkaA7elWjhz9.jpg', 1, '2022-09-04 17:28:36', '2022-09-04 17:28:36'),
(4, 114419, 'Headspace Guide to Meditation', 'headspace-guide-to-meditation', '2021-01-01', '/idWdyd1jGQiR6p9F4I1UqKbzYic.jpg', 1, '2022-09-04 17:28:43', '2022-09-04 17:28:43'),
(5, 1294, 'Walking with Beasts', 'walking-with-beasts', '2001-11-15', '/c9jSdtzrALd2h2CjoktcUoSTWiK.jpg', 1, '2022-09-04 17:28:51', '2022-09-04 17:28:51'),
(6, 20785, 'Points of View', 'points-of-view', '1961-10-02', '/o8Aytnqv5rfkuOO3airAcT9bOdG.jpg', 1, '2022-09-04 17:28:58', '2022-09-04 17:28:58'),
(7, 6080, 'Once Upon a Time... Man', 'once-upon-a-time-man', '1978-09-23', '/rtKEeBmEFUVzrNLnYuMnVot6DVK.jpg', 1, '2022-09-04 17:29:04', '2022-09-04 17:29:04'),
(8, 5065, 'Once Upon a Time... The Americas', 'once-upon-a-time-the-americas', '1992-09-09', '/aH7Hs4DZ4aSf7LLRUpvAMDcGYrC.jpg', 1, '2022-09-04 17:29:10', '2022-09-04 17:29:10'),
(9, 121628, 'Headspace Guide to Sleep', 'headspace-guide-to-sleep', '2021-04-28', '/j2GiaMo878GH56c5QYV7BFXFFGP.jpg', 1, '2022-09-04 17:29:15', '2022-09-04 17:29:15'),
(10, 4213, 'Once Upon a Time... The Explorers', 'once-upon-a-time-the-explorers', '1996-12-10', '/iAByj3prSRKtFTw8FjaX6MeepBW.jpg', 1, '2022-09-04 17:29:21', '2022-09-04 17:29:21'),
(11, 16425, 'Mapping the World', 'mapping-the-world', '1990-09-01', '/kRwsYur5SF6RMGXmyxCJf4PbRsM.jpg', 1, '2022-09-04 17:29:27', '2022-09-04 17:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KTasCXFvt1WWujYomsyxjhUrVCkBsuQkyZyrEj5m', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQ1hNdHJRTDJSVXFQSTVuWG1jSE1JNWc5NlFRbXZoSU92UHFua2RISyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zZXJpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMDg5ZVFTSE1WVTZEM2g3SEZYTm8udS92R2RieWJveHBBZmx4dTdFRVYwT29LMWJxbUw3Q2EiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDA4OWVRU0hNVlU2RDNoN0hGWE5vLnUvdkdkYnlib3hwQWZseHU3RUVWME9vSzFicW1MN0NhIjt9', 1662326877);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(4, 1, 'App\\Models\\Movie'),
(4, 19, 'App\\Models\\Movie'),
(4, 17, 'App\\Models\\Movie'),
(4, 4, 'App\\Models\\Movie'),
(4, 11, 'App\\Models\\Movie'),
(4, 18, 'App\\Models\\Movie'),
(5, 16, 'App\\Models\\Movie'),
(5, 7, 'App\\Models\\Movie'),
(5, 3, 'App\\Models\\Movie'),
(5, 12, 'App\\Models\\Movie'),
(7, 4, 'App\\Models\\Movie'),
(5, 11, 'App\\Models\\Movie'),
(4, 10, 'App\\Models\\Movie');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'First-Tag', 'first-tag', '2022-09-04 09:18:05', '2022-09-04 09:18:27'),
(5, 'Second-Tag', 'second-tag', '2022-09-04 09:18:48', '2022-09-04 09:18:48'),
(6, 'Third-Tag', 'third-tag', '2022-09-04 09:19:01', '2022-09-04 09:19:01'),
(7, 'Forth-Tag', 'forth-tag', '2022-09-04 09:19:10', '2022-09-04 09:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trailer_urls`
--

CREATE TABLE `trailer_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailerable_id` int(11) NOT NULL,
  `trailerable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trailer_urls`
--

INSERT INTO `trailer_urls` (`id`, `name`, `embed_html`, `trailerable_id`, `trailerable_type`, `created_at`, `updated_at`) VALUES
(1, 'first trailer', 'Hi', 1, 'App\\Models\\Movie', '2022-09-04 11:56:42', '2022-09-04 11:56:42'),
(2, 'test', 'test test test test test ', 19, 'App\\Models\\Movie', '2022-09-04 18:07:34', '2022-09-04 18:07:34');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'M7MMAD OMAR', 'muhammadaaa727@gmail.com', NULL, '$2y$10$Gs7dnS/OGY4ooeyj3Iu7Ou0sFaRSOhjRjXWZ8Cockx120RkJZYDM2', NULL, NULL, '6VkQy2Pmm0GyMCHc71FoDpwZcnunfhUAhICjbRI5hsApH28ktzADJOlPlTRB', NULL, NULL, '2022-09-04 08:05:18', '2022-09-04 09:10:46'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$089eQSHMVU6D3h7HFXNo.u/vGdbyboxpAflxu7EEV0OoK1bqmL7Ca', NULL, NULL, NULL, NULL, NULL, '2022-09-04 11:02:35', '2022-09-04 11:02:35'),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$//CXQ7Z/rMbn9aZ.zl.24.hdCC8zLhBCuae4K1pfG7WxjsgWQeUIy', NULL, NULL, NULL, NULL, NULL, '2022-09-04 11:05:22', '2022-09-04 11:05:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casts_tmdb_id_unique` (`tmdb_id`);

--
-- Indexes for table `cast_movie`
--
ALTER TABLE `cast_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cast_movie_cast_id_foreign` (`cast_id`),
  ADD KEY `cast_movie_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `episodes_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `episodes_season_id_foreign` (`season_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_tmdb_id_unique` (`tmdb_id`),
  ADD UNIQUE KEY `genres_title_unique` (`title`);

--
-- Indexes for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_movie_genre_id_foreign` (`genre_id`),
  ADD KEY `genre_movie_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_tmdb_id_unique` (`tmdb_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seasons_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `seasons_serie_id_foreign` (`serie_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series_tmdb_id_unique` (`tmdb_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `trailer_urls`
--
ALTER TABLE `trailer_urls`
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
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cast_movie`
--
ALTER TABLE `cast_movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genre_movie`
--
ALTER TABLE `genre_movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trailer_urls`
--
ALTER TABLE `trailer_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_movie`
--
ALTER TABLE `cast_movie`
  ADD CONSTRAINT `cast_movie_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`),
  ADD CONSTRAINT `cast_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`);

--
-- Constraints for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD CONSTRAINT `genre_movie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `genre_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`);

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
