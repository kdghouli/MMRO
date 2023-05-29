-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 mai 2023 à 22:27
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mmrdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `name`, `site`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Marrakech', 'CBGS', 'M210', NULL, NULL),
(2, 'Beni Mellal', 'CBGS', 'M220', NULL, NULL),
(3, 'Essaouira', 'CBGS', 'M230', NULL, NULL),
(4, 'Safi', 'CBGS', 'M240', NULL, NULL),
(5, 'Sidi Bennour', 'CBGS', 'M250', NULL, NULL),
(6, 'Khouribga', 'CBGS', 'M260', NULL, NULL),
(7, 'El Kelaa', 'CBGS', 'M270', NULL, NULL),
(8, 'Ouarzazate', 'CBGS', 'M280', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cartegrises`
--

CREATE TABLE `cartegrises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cartegrise` date NOT NULL,
  `Observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'camion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'voiture', NULL, NULL),
(3, 'vélomoteur', NULL, NULL),
(4, 'chariot élèvateur', NULL, NULL),
(5, 'autre', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `circulations`
--

CREATE TABLE `circulations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `circulation` date NOT NULL,
  `Observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `statu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kilometrage` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `active`, `created_at`, `updated_at`, `vhl_id`, `statu_id`, `kilometrage`) VALUES
(1, 'pb de voiture', 1, '2023-04-20 15:14:54', '2023-05-22 12:51:18', 3, 3, 0),
(4, 'dsfsdfsdfds', 1, '2023-01-22 14:15:00', '2023-05-22 12:51:18', 68, 4, 0),
(5, '\"salam ya sahbi\"', 1, '2023-04-05 22:01:50', '2023-05-22 12:51:18', 3, 3, 0),
(6, '\"salam ya sahbi 2\"', 1, '2023-04-05 22:05:13', '2023-05-22 12:51:18', 3, 2, 0),
(7, 'salam ya sahbi 2', 1, '2023-04-05 22:05:30', '2023-05-22 12:51:18', 3, 2, 0),
(8, 'sdsdfsd', 1, '2023-04-05 22:17:49', '2023-05-22 12:51:18', 3, 2, 0),
(9, 'dghouli khalid', 1, '2023-04-05 22:19:42', '2023-05-22 12:51:18', 3, 2, 0),
(11, 'yassine', 1, '2023-04-05 22:35:57', '2023-05-22 12:51:18', 3, 2, 0),
(12, 'Ibrahim', 1, '2023-04-05 22:56:36', '2023-05-22 12:51:18', 10, 4, 0),
(13, 'sdasdasd', 1, '2023-04-05 23:29:53', '2023-05-22 12:51:18', 3, 2, 0),
(14, 'sdasdasd', 1, '2023-04-05 23:30:03', '2023-05-22 12:51:18', 3, 3, 0),
(15, 'xxxxxxxxxxxxxxxxxxxxxxx', 1, '2023-04-05 23:40:10', '2023-05-22 12:51:18', 79, 3, 0),
(16, 'sssss', 0, '2023-04-05 23:43:27', '2023-05-22 12:51:18', 6, 4, 0),
(17, 'fffff', 1, '2023-04-05 23:47:28', '2023-05-22 12:51:18', 19, 1, 0),
(18, 'rrrrr', 1, '2023-04-05 23:52:27', '2023-05-22 12:51:18', 7, 3, 0),
(19, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 1, '2023-04-05 23:55:43', '2023-05-22 12:51:18', 21, 2, 0),
(20, 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 1, '2023-04-05 23:59:15', '2023-05-22 12:51:18', 64, 2, 0),
(21, 'sadasdasdasdasdsaddddddsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 1, '2023-04-06 00:01:12', '2023-05-22 12:51:18', 64, 3, 0),
(22, 'asdasdasd', 0, '2023-04-06 00:01:58', '2023-05-22 12:51:18', 23, 4, 0),
(23, 'ddddddddddddddddddddddddddddddd', 1, '2023-04-06 00:06:00', '2023-05-22 12:51:18', 66, 2, 0),
(24, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 1, '2023-04-06 00:07:20', '2023-05-22 12:51:18', 55, 1, 0),
(25, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 1, '2023-04-06 00:08:25', '2023-05-22 12:51:18', 64, 2, 0),
(26, 'ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 0, '2023-04-06 00:14:47', '2023-05-22 12:51:18', 99, 1, 0),
(27, 'ppppppppppppppppppppppppppppppp', 1, '2023-04-06 00:17:12', '2023-05-22 12:51:18', 85, 1, 0),
(28, 'dsgfdfgfg', 1, '2023-04-06 00:19:31', '2023-05-22 12:51:18', 11, 2, 0),
(29, 'ssdsdssssss', 1, '2023-04-06 17:14:08', '2023-05-22 12:51:18', 81, 2, 0),
(30, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 1, '2023-04-06 17:32:33', '2023-05-22 12:51:18', 55, 2, 0),
(31, 'sadasdas', 1, '2023-04-06 21:43:23', '2023-05-22 12:51:18', 73, 2, 0),
(32, 'asdadadasd', 1, '2023-04-06 21:48:03', '2023-05-22 12:51:18', 245, 2, 0),
(33, 'sdsdadsd', 0, '2023-04-09 12:46:46', '2023-05-22 12:51:18', 3, 2, 0),
(34, 'sadasd', 1, '2023-04-12 23:00:39', '2023-05-22 12:51:18', 6, 2, 0),
(35, 'asdasdas', 1, '2023-04-12 23:01:09', '2023-05-22 12:51:18', 7, 2, 0),
(36, 'fsdfsdfsdf', 1, '2023-04-14 22:09:30', '2023-05-22 12:51:18', 6, 2, 0),
(37, 'kjkjkjkjkjkj', 1, '2023-04-27 16:37:37', '2023-05-22 12:51:18', 3, 2, 0),
(38, 'lkjlkj', 1, '2023-04-27 16:38:40', '2023-05-22 12:51:18', 7, 2, 0),
(39, 'daba', 1, '2023-04-27 16:39:30', '2023-05-22 12:51:18', 7, 4, 0),
(40, 'kkkjjjjjjjj', 1, '2023-04-27 16:53:11', '2023-05-22 12:51:18', 63, 3, 0),
(41, 'besoin de vidange', 1, '2023-05-04 21:09:06', '2023-05-22 12:51:18', 9, 2, 0),
(42, 'test adaptation', 1, '2023-05-04 21:15:47', '2023-05-22 12:51:18', 7, 2, 0),
(43, 'dghouli khalid', 1, '2023-05-06 09:55:31', '2023-05-22 12:51:18', 51, 5, 0),
(44, 'dghoulik', 1, '2023-05-10 17:35:19', '2023-05-22 12:51:18', 18, 2, 565656),
(45, 'ccccccc', 1, '2023-05-10 17:46:25', '2023-05-22 12:51:18', 3, 5, 32323232),
(46, 'xcxcxcxcxc', 1, '2023-05-10 17:57:29', '2023-05-22 12:51:18', 12, 1, 9696969),
(47, 'rein skdjs', 1, '2023-05-10 17:58:48', '2023-05-22 12:51:18', 12, 1, 9999),
(48, 'sdfsdfsd', 1, '2023-05-11 17:26:56', '2023-05-22 12:51:18', 3, 5, 565656),
(49, 'dfgdfgdfg', 1, '2023-05-11 17:48:33', '2023-05-22 12:51:18', 3, 5, 5555),
(50, 'test 27/08/2023', 1, '2023-05-27 20:11:04', '2023-05-27 20:11:04', 12, 3, 999999999999),
(51, 'accidentteeeeeeee', 1, '2023-05-27 20:29:14', '2023-05-27 20:29:14', 3, 5, 98989898),
(52, 'sdfsdfsdf', 1, '2023-05-27 20:30:58', '2023-05-27 20:30:58', 91, 4, 999999999);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intitules`
--

CREATE TABLE `intitules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` tinyint(1) NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intitules`
--

INSERT INTO `intitules` (`id`, `name`, `location`, `service`, `ville`, `adresse`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Eccbc-SCBG', 0, 'mmr', 'Casablanca', 'Casablanca', 'Hafad + Imane', NULL, NULL),
(2, 'Eccbc-CBGS', 0, 'mmr', 'Marrakech', 'Marrakech', 'dghouli', NULL, NULL),
(3, 'Eccbc-CBGN', 0, 'mmr', 'Fes', 'Fes', 'Mansouri', NULL, NULL),
(4, 'Eccbc-COBOMI', 0, 'mmr', 'Casablanca', 'Casablanca', 'Hafad + imane', NULL, NULL),
(5, 'Chaabi LLD', 1, '', 'Casablanca', '', '', NULL, NULL),
(6, 'BM rental ', 1, '', 'Casablanca', '', '', NULL, NULL),
(7, 'Espace Location', 1, '', 'Casablanca', '', '', NULL, NULL),
(8, 'AJ Manutention', 1, '', 'Casablanca', '', '', NULL, NULL),
(9, 'Ste Lagouassem', 1, '', 'Casablanca', '', '', NULL, NULL),
(10, 'Trans Optiflux', 1, '', 'Casablanca', '', '', NULL, NULL),
(11, 'ALD', 1, '', 'Casablanca', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `kilometrages`
--

CREATE TABLE `kilometrages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kilometrage` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `kilometrages`
--

INSERT INTO `kilometrages` (`id`, `kilometrage`, `date`, `observation`, `created_at`, `updated_at`, `vhl_id`) VALUES
(1, 9999, '2023-05-10', 'rein skdjs', '2023-05-10 17:58:49', '2023-05-10 17:58:49', 12),
(2, 565656, '2023-05-11', 'sdfsdfsd', '2023-05-11 17:26:57', '2023-05-11 17:26:57', 3),
(3, 5555, '2023-05-11', 'dfgdfgdfg', '2023-05-11 17:48:34', '2023-05-11 17:48:34', 3),
(4, 999999999999, '2023-05-27', 'test 27/08/2023', '2023-05-27 20:11:04', '2023-05-27 20:11:04', 12),
(5, 98989898, '2023-05-27', 'accidentteeeeeeee', '2023-05-27 20:29:14', '2023-05-27 20:29:14', 3),
(6, 999999999, '2023-05-27', 'sdfsdfsdf', '2023-05-27 20:30:58', '2023-05-27 20:30:58', 91);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2023_03_19_200518_create_vhls_table', 1),
(4, '2023_03_25_105803_create_agences_table', 2),
(5, '2023_03_25_110825_create_intitules_table', 2),
(6, '2023_03_25_110904_create_comments_table', 2),
(7, '2023_03_25_110926_create_status_table', 2),
(8, '2023_03_25_111354_create_categories_table', 2),
(9, '2023_03_25_124816_add_column_vhls_foreign_id', 3),
(10, '2023_03_25_131355_add_column_comments__foreign_id', 3),
(11, '2023_03_25_133104_add_column_vhls_foreing_id', 4),
(12, '2023_03_25_142717_add_column_vhl_utilisateur', 5),
(13, '2023_04_08_125949_create_kilometrages_table', 6),
(14, '2023_04_08_130440_add_row_in_table', 6),
(15, '2023_04_26_183255_create_visites_table', 7),
(16, '2023_04_26_183355_create_circulations_table', 7),
(17, '2023_04_26_183423_create_cartegrises_table', 7),
(18, '2023_04_26_183523_create_tachygraphes_table', 7),
(19, '2023_04_27_193943_add_column_image_to_visites', 8),
(20, '2023_05_08_185456_add_kilometrage_to_comments', 9),
(21, '2023_05_13_134018_add_column_to_vhls', 10);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'RAS', NULL, NULL),
(2, 'En Panne', NULL, NULL),
(3, 'En Reparation', NULL, NULL),
(4, 'Problème des papiers', NULL, NULL),
(5, 'Accidentée', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tachygraphes`
--

CREATE TABLE `tachygraphes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tchygraphe` date NOT NULL,
  `Observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
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

-- --------------------------------------------------------

--
-- Structure de la table `vhls`
--

CREATE TABLE `vhls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricule` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_mc` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `intitule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `statu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilisateur` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vhls`
--

INSERT INTO `vhls` (`id`, `matricule`, `marque`, `date_mc`, `deleted_at`, `created_at`, `updated_at`, `agence_id`, `categorie_id`, `intitule_id`, `statu_id`, `utilisateur`, `type`, `chassis`) VALUES
(3, '16565-B-7', 'FUSO', '2019-04-18', NULL, NULL, '2023-05-28 18:26:48', 2, 1, 10, 1, 'agence', NULL, NULL),
(4, '17124-B-7', 'MITSUBI', '2019-04-25', NULL, NULL, '2023-05-28 18:26:59', 7, 1, 10, 1, 'agence', NULL, NULL),
(5, '31935-D-8', 'IVECO', '2019-12-13', NULL, NULL, '2023-05-28 18:27:07', 6, 1, 9, 1, 'agence', NULL, NULL),
(6, '31940-D-8', 'IVECO', '2019-12-13', NULL, NULL, '2023-05-28 18:27:16', 7, 1, 9, 1, 'agence', NULL, NULL),
(7, '32093-A-26', 'Mitsubishi', '2004-06-30', NULL, NULL, '2023-05-28 18:29:27', 1, 1, 2, 1, 'agence', NULL, NULL),
(8, '32724-A-13', 'MITSUBISHI', '2013-03-04', NULL, NULL, '2023-05-28 18:28:09', 2, 1, 1, 1, 'agence', NULL, NULL),
(9, '33248-A-13', 'MITSUBI', '2013-04-15', NULL, NULL, '2023-05-28 18:29:51', 4, 1, 1, 1, 'agence', NULL, NULL),
(10, '33250-A-13', 'MITSUBISHI', '2013-05-14', NULL, NULL, '2023-05-28 18:27:27', 2, 1, 1, 1, 'agence', NULL, NULL),
(11, '3543-A-26', 'Isuzu', '2000-05-05', NULL, NULL, '2023-05-28 18:28:52', 6, 1, 2, 1, 'agence', NULL, NULL),
(12, '3544-A-26', 'ISUZU', '2000-05-05', NULL, NULL, '2023-05-28 18:29:36', 6, 1, 2, 1, 'agence', NULL, NULL),
(13, '3555-A-26', 'ISUZU', '2000-05-05', NULL, NULL, '2023-05-28 18:29:44', 2, 1, 2, 1, 'agence', NULL, NULL),
(14, '3946-A-26', 'MITSUBISHI', '2000-06-13', NULL, NULL, '2023-05-28 18:28:43', 4, 1, 2, 1, 'agence', NULL, NULL),
(15, '3947-A-26', 'MITSUBICHI FK', '2000-06-13', NULL, NULL, NULL, 7, 1, 2, 1, 'agence', NULL, NULL),
(16, '4001-A-7', 'ISUZU', '2000-06-05', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(17, '56169-E-6', 'MITSUBICHI', '2019-07-13', NULL, NULL, NULL, 2, 1, 6, 1, 'agence', NULL, NULL),
(18, '56172-E-6', 'FUSO', '2019-07-13', NULL, NULL, '2023-05-28 18:30:00', 4, 1, 6, 1, 'agence', NULL, NULL),
(19, '56405-E-6', 'FUSO', '2019-07-02', NULL, NULL, '2023-05-28 18:29:19', 2, 1, 6, 1, 'agence', NULL, NULL),
(20, '56407-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 4, 1, 6, 1, 'agence', NULL, NULL),
(21, '56408-E-6', 'FUSO', '2019-07-02', NULL, NULL, '2023-05-28 18:29:01', 4, 1, 6, 1, 'agence', NULL, NULL),
(22, '56409-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 2, 1, 6, 1, 'agence', NULL, NULL),
(23, '5951-A-6', 'RENAULT ', '2000-03-22', NULL, NULL, NULL, 6, 1, 4, 1, 'agence', NULL, NULL),
(24, '59749-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, '2023-05-28 18:28:01', 8, 1, 5, 1, 'agence', NULL, NULL),
(25, '59750-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence', NULL, NULL),
(26, '59751-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence', NULL, NULL),
(27, '59752-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence', NULL, NULL),
(28, '59753-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence', NULL, NULL),
(29, '59754-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence', NULL, NULL),
(30, '59755-E-6', 'MITSUBI', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence', NULL, NULL),
(31, '60368-A-13', 'TRAIPORTEUR', '0000-00-00', NULL, NULL, NULL, 5, 1, 1, 1, 'agence', NULL, NULL),
(32, '60370-A-13', 'TRAIPORTEUR', '0000-00-00', NULL, NULL, NULL, 5, 1, 1, 1, 'agence', NULL, NULL),
(33, '60539-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence', NULL, NULL),
(34, '60540-E-6', 'MITSUBISHI', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence', NULL, NULL),
(35, '60541-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence', NULL, NULL),
(36, '60542-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence', NULL, NULL),
(37, '60543-E-6', 'Mitsub', '2019-09-23', NULL, NULL, NULL, 6, 1, 5, 1, 'agence', NULL, NULL),
(38, '60544-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence', NULL, NULL),
(39, '6443-A-7', 'RENAULT', '2000-09-20', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(40, '6658-A-2', 'RENAULT', '1998-06-23', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(41, '71131-A-26', 'Mitsubishi', '2009-04-21', NULL, NULL, NULL, 2, 1, 2, 1, 'agence', NULL, NULL),
(42, '81080-B-8', 'MITSUBICHI ', '2014-06-09', NULL, NULL, NULL, 2, 1, 9, 1, 'agence', NULL, NULL),
(43, '84690-B-8', 'MITSUBISHI', '2018-02-19', NULL, NULL, NULL, 2, 1, 9, 1, 'agence', NULL, NULL),
(44, '84705-A-26', 'Isuzu', '1998-07-21', NULL, NULL, NULL, 2, 1, 2, 1, 'agence', NULL, NULL),
(45, '85241-B-8', 'MITSUBISHI', '2014-06-09', NULL, NULL, NULL, 2, 1, 9, 1, 'agence', NULL, NULL),
(46, '85251-B-8', 'ISUZU', '2014-06-09', NULL, NULL, NULL, 8, 1, 9, 1, 'agence', NULL, NULL),
(47, '85253-B-8', 'ISUZU', '2014-06-09', NULL, NULL, NULL, 4, 1, 9, 1, 'agence', NULL, NULL),
(48, '85260-B-8', 'MITSUBISHI', '2014-06-09', NULL, NULL, NULL, 6, 1, 9, 1, 'agence', NULL, NULL),
(49, '86064-B-8', 'MITSUBICHI ', '2014-08-05', NULL, NULL, NULL, 2, 1, 9, 1, 'agence', NULL, NULL),
(50, '86253-B-8', 'ISUZU', '2014-08-09', NULL, NULL, NULL, 4, 1, 9, 1, 'agence', NULL, NULL),
(51, '86255-B-8', 'ISUZU', '2014-08-09', NULL, NULL, '2023-05-28 18:29:11', 6, 1, 9, 1, 'agence', NULL, NULL),
(52, '86567-B-8', 'ISUZU', '2014-09-02', NULL, NULL, NULL, 2, 1, 9, 1, 'agence', NULL, NULL),
(53, '88265-A-8', 'RENAULT ', '2003-03-13', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(54, '88274-A-8', 'RENAULT ', '2003-03-13', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(55, '92333-B-26', 'Mitsubishi', '1997-01-15', NULL, NULL, NULL, 1, 1, 2, 1, 'agence', NULL, NULL),
(56, '9978-A-13', 'RENAULT ', '2005-06-20', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(57, '13720-A-40', 'RENAULT', '1996-05-06', NULL, NULL, NULL, 6, 1, 1, 1, 'agence', NULL, NULL),
(58, '42581-A-15', 'MAN', '0000-00-00', NULL, NULL, NULL, 6, 1, 3, 1, 'agence', NULL, NULL),
(59, '17079-B-72', 'DACIA/301', '2019-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'JAMAL BOUNAHR ', NULL, NULL),
(60, '232-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'LAHCEN ACHOUR', NULL, NULL),
(62, '26902-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 4, 2, 7, 1, 'YOUNESS HAMLI', NULL, NULL),
(63, '26903-B-6', 'DACIA ', '2020-01-01', NULL, NULL, NULL, 3, 2, 7, 1, 'ELMILOUDI ABDELHAK', NULL, NULL),
(64, '26905-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'MOURAD ABBOU', NULL, NULL),
(65, '26906-B-6', 'DACIA', '2020-01-01', NULL, NULL, NULL, 2, 2, 7, 1, 'ANEJAR RACHID', NULL, NULL),
(66, '27135-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ALI BICHER HATTABOU', NULL, NULL),
(67, '31577-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'JADIR ABDELATIF', NULL, NULL),
(68, '31578-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'JAMAL MOHAMED', NULL, NULL),
(69, '31587-T-6', 'CITROEN', '2022-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'HASSAN MLY MEHZI', NULL, NULL),
(70, '31588-D-6', 'CITROEN', '2022-01-01', NULL, NULL, NULL, 4, 2, 5, 1, 'GLABI SOUFIANE', NULL, NULL),
(71, '31589-T-6', 'CITROEN ', '0000-00-00', NULL, NULL, NULL, 1, 2, 5, 1, 'MUSTAPHA BENKAARACH', NULL, NULL),
(72, '31590-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'BOURIDA MOHAMED', NULL, NULL),
(73, '31591-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'MISSI MOHAMED ', NULL, NULL),
(74, '31592-T-6', 'FIAT', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'HAMID BADDOU', NULL, NULL),
(75, '31593-T-6', 'CITROEN BERLINGO', '2022-01-01', NULL, NULL, NULL, 3, 2, 5, 1, 'BYJAOUANE MOHAMMED', NULL, NULL),
(76, '31594-T-6', 'FIAT ', '0000-00-00', NULL, NULL, NULL, 6, 2, 5, 1, 'EL GHARS RACHID', NULL, NULL),
(77, '31595-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'IDRISSI MOHAMED', NULL, NULL),
(78, '31596-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'REDOUANE JAMAL', NULL, NULL),
(79, '31599-T-6', 'FIAT', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'RABIA BAIBY', NULL, NULL),
(80, '31606-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'LAHKIM ZAKARIA ', NULL, NULL),
(81, '44355-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ACHRAF EZZABDI ', NULL, NULL),
(82, '44356-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'RAFIK AIT EL BEZ ', NULL, NULL),
(83, '44359-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ETTAZY ABDERRAHIM ', NULL, NULL),
(84, '44361-B-7', 'FIAT', '2022-01-01', NULL, NULL, NULL, 5, 2, 7, 1, 'SAISSI HASSAN', NULL, NULL),
(85, '47682-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 4, 2, 11, 1, 'SOBTI LAKBIR', NULL, NULL),
(86, '47681-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 1, 2, 11, 1, 'OUGGAG MUSTAPHA', NULL, NULL),
(87, '47689-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 6, 2, 11, 1, 'ABOUZAID HICHAM', NULL, NULL),
(88, '55534-e-6', 'PEUGEOT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'EL MAHDAOUY ABDELFATTAH ', NULL, NULL),
(89, '55536-E-6', 'PEUGEOT', '0000-00-00', NULL, NULL, NULL, 1, 2, 5, 1, 'MOHAMD TIMOULAL', NULL, NULL),
(90, '55951-E-6', 'PEUGEOT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'TIJANI MOHAMED', NULL, NULL),
(91, '57364-E-6', 'DACIA', '2019-01-01', NULL, NULL, '2023-05-28 18:30:09', 6, 2, 6, 1, 'ELBASRI HICHAM', NULL, NULL),
(92, '57365-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'ZOUINI SALEH', NULL, NULL),
(93, '57366-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'KARBOUAI YOUNESS', NULL, NULL),
(94, '57367-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'DRAI AZIZ', NULL, NULL),
(95, '57368-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'HOUMINI MOHAMED', NULL, NULL),
(96, '57369-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 4, 2, 6, 1, 'MAAROUF ABDELGHANI', NULL, NULL),
(97, '57370-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MOSSADEQ ANAS', NULL, NULL),
(98, '57371-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'LHOUCINE AIT DAOUD', NULL, NULL),
(99, '57374-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'EL KAILANI KHALID', NULL, NULL),
(100, '57408-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 6, 2, 6, 1, 'IDRISSI ABDELLATIF', NULL, NULL),
(101, '57910-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'KHADMAOUI NOUREDDINE', NULL, NULL),
(102, '58362-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'HAMID EL MANDOUR', NULL, NULL),
(103, '58378-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MOHAMED AMINE TLEMCENY', NULL, NULL),
(104, '59019-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'LAZSIRI AZIZ', NULL, NULL),
(105, '59020-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 7, 2, 6, 1, 'BENSGHIR DRISS', NULL, NULL),
(106, '59021-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'YASSINE HAMIDA', NULL, NULL),
(107, '59022-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'DAOUI YOUNESS', NULL, NULL),
(108, '6008-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'AJDAR MUSTAPHA', NULL, NULL),
(109, '6010-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'GHOUBY SMAIL', NULL, NULL),
(110, '61336-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'BENAKA LAHCEN', NULL, NULL),
(111, '61337-E-6', 'FIAT ', '2019-01-01', NULL, NULL, NULL, 6, 2, 6, 1, 'BOUSSELAM MUSTAPHA', NULL, NULL),
(112, '61338-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MJID LAHJILI', NULL, NULL),
(113, '61339-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'MOUJIB MOHAMED', NULL, NULL),
(114, '61340-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'ABBOUD EL MOSTAPHA', NULL, NULL),
(115, '761-T-6', 'DACIA ', '2021-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'ISMAIL AITSGHIR ', NULL, NULL),
(116, '762-T-6', 'DACIA', '2021-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'EL HOUARI SAID', NULL, NULL),
(117, '78975-E-6', 'VOLGSWAGEN', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SOUANI ABDERRAHMAN', NULL, NULL),
(118, '79623-E-6', 'PEUGEOT', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'med boulahcen', NULL, NULL),
(119, '83683-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'NAFAA HAMID', NULL, NULL),
(120, '83684-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 2, 2, 5, 1, 'AQUABA JAMAL', NULL, NULL),
(121, '83685-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'EL BAOUI HASSAN', NULL, NULL),
(122, '83686-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SOUHDI MUSTAPHA', NULL, NULL),
(123, '83687-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 4, 2, 5, 1, 'EL GOUNTARI HICHAM', NULL, NULL),
(124, '83688-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 3, 2, 5, 1, 'ABDELLAH DEBANI', NULL, NULL),
(125, '83939-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'BOUZROUD OMAR', NULL, NULL),
(126, '83940-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SADIK ABDELAZIZ', NULL, NULL),
(127, '83941-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'DEMHOUL HAMID', NULL, NULL),
(128, '84415-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'TOUAMI RACHID', NULL, NULL),
(129, '85-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'YOUSSEF ABDEDDINE', NULL, NULL),
(130, '85048-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'ABDERRAHIM SEMLALY', NULL, NULL),
(131, '85154-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 6, 2, 5, 1, 'JALAL KAMAL', NULL, NULL),
(132, '85155-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 2, 2, 5, 1, 'HOUSNI MUSTAPHA', NULL, NULL),
(133, '251659707', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'DEBIANI MOHAMED', NULL, NULL),
(134, '251659708', 'Kymco', '2022-11-11', NULL, NULL, NULL, 7, 3, 5, 1, 'BELKHADEM AHMED', NULL, NULL),
(135, '251659711', 'Kymco', '2022-11-11', NULL, NULL, NULL, 8, 3, 5, 1, 'lahcen belhou', NULL, NULL),
(136, '251659713', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'Dahibi Mehdi', NULL, NULL),
(137, '251659716', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'BABAZIA ADIL', NULL, NULL),
(138, '6-023097', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Ibrahim', NULL, NULL),
(139, '6-023105', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Nassihi', NULL, NULL),
(140, '6-023110', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahraifi Abdellah', NULL, NULL),
(141, '6-023112', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Rafiq Mohamed', NULL, NULL),
(142, '6-023114', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Youness', NULL, NULL),
(143, '6-023115', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech', NULL, NULL),
(144, '6-023121', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Naji Mohamed', NULL, NULL),
(145, '6-023122', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech', NULL, NULL),
(146, '6-023124', 'Kymco', '2018-07-12', NULL, NULL, NULL, 6, 3, 5, 1, 'Bouqssid Abde Rrazak', NULL, NULL),
(147, '6-023128', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Ferdaouss Hicham', NULL, NULL),
(148, '6-023131', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Ben Aami Mustapha ', NULL, NULL),
(149, '6-023132', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Ichanti Lahoucine', NULL, NULL),
(150, '6-023135', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Lahlou Abdelfattah', NULL, NULL),
(151, '6-023137', 'Kymco', '2018-07-12', NULL, NULL, NULL, 6, 3, 5, 1, 'Afqir Abdelaziz', NULL, NULL),
(152, '6-023141', 'Kymco', '2018-07-12', NULL, NULL, NULL, 5, 3, 5, 1, 'Sobti Jamal', NULL, NULL),
(153, '6-023146', 'Kymco', '2018-07-12', NULL, NULL, NULL, 3, 3, 5, 1, 'Hafid Benfilali', NULL, NULL),
(154, '6-023157', 'Kymco', '2018-07-12', NULL, NULL, NULL, 2, 3, 5, 1, 'El Makhfi Najib', NULL, NULL),
(155, '6-023162', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Sergali Jamal', NULL, NULL),
(156, '6-023163', 'Kymco', '2019-02-06', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech', NULL, NULL),
(157, '6-023167', 'Kymco', '2018-07-12', NULL, NULL, NULL, 7, 3, 5, 1, 'Baoui Fouad', NULL, NULL),
(158, '6-023169', 'Kymco', '2018-07-12', NULL, NULL, NULL, 2, 3, 5, 1, 'Hilal Al Moutalib', NULL, NULL),
(159, '6-023173', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Elrhars Rachid', NULL, NULL),
(160, '6-023213', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hannouri El Houssein', NULL, NULL),
(161, '6-023215', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Aadani Mohamed', NULL, NULL),
(162, '6-023223', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'EL BIARI SAID 02-02-2021', NULL, NULL),
(163, '6-023225', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Minaoui Hassan', NULL, NULL),
(164, '6-023226', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Souhdi Mhamed', NULL, NULL),
(165, '6-023230', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Laouini Abdeaziz', NULL, NULL),
(166, '6-023245', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Boukiri Mohamed', NULL, NULL),
(167, '6-023368', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech Accidente', NULL, NULL),
(168, '6-023369', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Rachid Joudar', NULL, NULL),
(169, '6-023372', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Chouib Abdelghani', NULL, NULL),
(170, '6-023380', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Mehdi Sraidi', NULL, NULL),
(171, '6-023390', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Babazia ', NULL, NULL),
(172, '6-023392', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Defyami Rachid ', NULL, NULL),
(173, '6-023394', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'El Basry Mly Kassem', NULL, NULL),
(174, '6-023396', 'Kymco', '2018-12-26', NULL, NULL, NULL, 3, 3, 5, 1, 'El bouchra Mohamed', NULL, NULL),
(175, '6-023397', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Hassan Mly Mehzi', NULL, NULL),
(176, '6-023404', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Debyani Mohamed', NULL, NULL),
(177, '6-023405', 'Kymco', '2018-09-28', NULL, NULL, NULL, 1, 3, 5, 1, 'Bouchouka Issam', NULL, NULL),
(178, '6-023408', 'Kymco', '2018-07-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Aazouzi Mohamed ', NULL, NULL),
(179, '6-023410', 'Kymco', '2018-07-24', NULL, NULL, NULL, 6, 3, 5, 1, 'El Ghazi Imyass', NULL, NULL),
(180, '6-023412', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Charqaoui Ahmed', NULL, NULL),
(181, '6-023414', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Yahsine Taha', NULL, NULL),
(182, '6-023422', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Hicham Zerbane ', NULL, NULL),
(183, '6-023424', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'El Moumni Mouhamed', NULL, NULL),
(184, '6-023426', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'El Ourguie Mouhamed', NULL, NULL),
(185, '6-023430', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Ezzebdi Rachid', NULL, NULL),
(186, '6-023449', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Moulay Essaid Sarsar', NULL, NULL),
(187, '6-023452', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Youssef Lmhadi', NULL, NULL),
(188, '6-023459', 'Kymco', '2018-07-24', NULL, NULL, NULL, 1, 3, 5, 1, 'abdelaziz Ait Oulaid', NULL, NULL),
(189, '6-024912', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Kricha Salaheddine', NULL, NULL),
(190, '6-024913', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Dahibi Mehdi', NULL, NULL),
(191, '6-031480', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Jalal Bouloujour', NULL, NULL),
(192, '6-031483', 'Kymco', '2019-08-01', NULL, NULL, NULL, 2, 3, 5, 1, 'Ben Bah Omar', NULL, NULL),
(193, '6-031489', 'Kymco', '2019-08-01', NULL, NULL, NULL, 5, 3, 5, 1, 'El Idrissi Ayoub', NULL, NULL),
(194, '6-031490', 'Kymco', '2019-08-01', NULL, NULL, NULL, 4, 3, 5, 1, 'Redouane El Maazouzi', NULL, NULL),
(195, '6-031495', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Ouzal abdelghani', NULL, NULL),
(196, '6-031500', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Soufiane Ait Oufkir', NULL, NULL),
(197, '6-031505', 'Kymco', '2019-08-01', NULL, NULL, NULL, 2, 3, 5, 1, 'El Koudi Hafid', NULL, NULL),
(198, '6-031510', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahcen El Khalifi', NULL, NULL),
(199, '6-031517', 'Kymco', '2019-11-01', NULL, NULL, NULL, 7, 3, 5, 1, 'AHMED BEL KHADME', NULL, NULL),
(200, '6-031523', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Youssef Diani', NULL, NULL),
(201, '6-031533', 'Kymco', '2019-08-01', NULL, NULL, NULL, 4, 3, 5, 1, 'Barrad Zakaria', NULL, NULL),
(202, '6-031539', 'Kymco', '2019-11-01', NULL, NULL, NULL, 8, 3, 5, 1, 'Lahcen Belhou', NULL, NULL),
(203, '6-031540', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Benqraach Adil', NULL, NULL),
(204, '6-031549', 'Kymco', '2019-08-01', NULL, NULL, NULL, 6, 3, 5, 1, 'KRICHA SALAH', NULL, NULL),
(205, '6-038602', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'AGHRIB LAHCEN', NULL, NULL),
(206, '6-038603', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'Saghni Fouad', NULL, NULL),
(207, '6-038610', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'IDDAR MUSTAPHA', NULL, NULL),
(208, '6-038616', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'BEN ALLAL IMAD', NULL, NULL),
(209, '6-038619', 'Kymco', '2020-08-07', NULL, NULL, NULL, 5, 3, 5, 1, 'AZIZ ESSALMI', NULL, NULL),
(210, '6-038620', 'Kymco', '2020-08-25', NULL, NULL, NULL, 3, 3, 5, 1, 'AYOUB RACHIQ', NULL, NULL),
(211, '6-038622', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'Manqouri Hicham', NULL, NULL),
(212, '6-038623', 'Kymco', '2020-08-25', NULL, NULL, NULL, 4, 3, 5, 1, 'ZOUKAL AMINE', NULL, NULL),
(213, '6-038624', 'Kymco', '2020-08-25', NULL, NULL, NULL, 3, 3, 5, 1, 'LAAOUINI MED', NULL, NULL),
(214, '6-038625', 'Kymco', '2020-08-25', NULL, NULL, NULL, 8, 3, 5, 1, 'OUDDOU BRAHIM', NULL, NULL),
(215, '6-038626', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'Tarfaoui Bader', NULL, NULL),
(216, '6-046809', 'Kymco', '2021-10-02', NULL, NULL, NULL, 1, 3, 5, 1, 'sridi 2023', NULL, NULL),
(217, '6-049078', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'ZAKARIA BERRAD ', NULL, NULL),
(218, '6-049080', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'NAJI MOHAMMED', NULL, NULL),
(219, '6-049082', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Youness', NULL, NULL),
(220, '6-049083', 'Kymco', '0000-00-00', NULL, NULL, '2023-05-28 18:31:04', 5, 3, 5, 1, 'Sobti Jamal', NULL, NULL),
(221, '6-049084', 'Kymco', '2021-09-13', NULL, NULL, '2023-05-28 18:30:43', 1, 3, 5, 1, 'Soufiane Ait Oufkir', NULL, NULL),
(222, '6-049088', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Minaoui Hassan', NULL, NULL),
(223, '6-049091', 'Kymco', '2021-09-15', NULL, NULL, '2023-05-28 18:31:26', 2, 3, 5, 1, 'HILAL A MOUTALIB', NULL, NULL),
(224, '6-049096', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'LAHLOU ABDELFETTAH', NULL, NULL),
(225, '6-049100', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hannouri El Houssein', NULL, NULL),
(226, '6-049101', 'Kymco', '2021-09-15', NULL, NULL, NULL, 2, 3, 5, 1, 'EL MAKHFI NAJIB', NULL, NULL),
(227, '6-049103', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'El Ourguie Mouhamed', NULL, NULL),
(228, '6-049107', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Boukiri Mohamed', NULL, NULL),
(229, '6-049110', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'El Ghazi Ilyass', NULL, NULL),
(230, '6-049119', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Souhdi Mhamed', NULL, NULL),
(231, '6-049120', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Laouini Abdeaziz', NULL, NULL),
(232, '6-049121', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'Bouqssid Abde Rrazak', NULL, NULL),
(233, '6-049122', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahraifi Abdellah', NULL, NULL),
(234, '6-049123', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Ben Aami Mustapha ', NULL, NULL),
(235, '6-049124', 'Kymco', '2021-09-13', NULL, NULL, NULL, 3, 3, 5, 1, 'EL BOUCHRA MED', NULL, NULL),
(236, '6-049128', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Aadani Mohamed', NULL, NULL),
(237, '6-049130', 'Kymco', '2021-09-13', NULL, NULL, NULL, 7, 3, 5, 1, 'Baoui Fouad', NULL, NULL),
(238, '6-049132', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Mehdi Sraidi', NULL, NULL),
(239, '6-049133', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Moulay Essaid Sarsar', NULL, NULL),
(240, '6-049134', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Ibrahim', NULL, NULL),
(241, '6-049135', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Nassihi', NULL, NULL),
(242, '6-049142', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'El Basry Mly Kassem', NULL, NULL),
(243, '6-049138', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'Afqir Abdelaziz', NULL, NULL),
(244, '6-049146', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'EL BIARI SAID', NULL, NULL),
(245, '6-049150', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Charqaoui Ahmed', NULL, NULL),
(246, '6-049167', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Aazouzi Mohamed ', NULL, NULL),
(247, '6-049151', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Rachid Joudar', NULL, NULL),
(248, '6-049156', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'CHAACHOUAA ABDELAZIZE', NULL, NULL),
(249, '6-049158', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'RAFIQ MOHAMMED ', NULL, NULL),
(250, '6-049176', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Ichanti Lahoucine', NULL, NULL),
(251, '6-049170', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'FIRDAOUS HICHAM', NULL, NULL),
(252, '6-049761', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Hassan Mly Mehzi', NULL, NULL),
(253, '6-049764', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'El Moumni Mouhamed', NULL, NULL),
(254, '6-049774', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Youssef Lmhadi', NULL, NULL),
(255, '6-049780', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'SALIM ABDE RRAHIM', NULL, NULL),
(256, '6-049802', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'GUENNANI AYOUB', NULL, NULL),
(257, '6-049805', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'EZZEBDI RACHID', NULL, NULL),
(258, '6-049807', 'Kymco', '0000-00-00', NULL, NULL, NULL, 3, 3, 5, 1, 'HASSAN AHOUJEGAL ', NULL, NULL),
(259, '6-055548', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'non affect?\r\n260', NULL, NULL),
(261, '6-055562', 'Kymco', '2022-08-24', NULL, NULL, NULL, 2, 3, 5, 1, 'RAKKAB OSSAMA', NULL, NULL),
(262, '6-055563', 'Kymco', '2022-08-24', NULL, NULL, NULL, 2, 3, 5, 1, 'EL KODI HAFID', NULL, NULL),
(263, '6-055564', 'Kymco', '2022-08-24', NULL, NULL, NULL, 6, 3, 5, 1, 'non affect?\r\n264', NULL, NULL),
(265, '6-055566', 'Kymco', '2022-08-24', NULL, NULL, NULL, 7, 3, 5, 1, 'Touami Rachid', NULL, NULL),
(266, '6-055567', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Benqraach Adil', NULL, NULL),
(267, '6-055568', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Defyami Rachid ', NULL, NULL),
(268, '6-055569', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Jalal Bouloujour', NULL, NULL),
(269, '6-055570', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Chouib Abdelghani', NULL, NULL),
(270, '6-055571', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahcen El Khalifi', NULL, NULL),
(271, '6-055572', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Hicham Zerbane ', NULL, NULL),
(272, '6-055573', 'Kymco', '2022-08-24', NULL, NULL, NULL, 4, 3, 5, 1, 'TAHA YAHCINE', NULL, NULL),
(273, '6-055574', 'Kymco', '2022-08-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Redouane El Maazouzi', NULL, NULL),
(274, '6-055578', 'Kymco', '2022-08-24', NULL, NULL, NULL, 5, 3, 5, 1, 'SAISSI HASSANI ISMAIL', NULL, NULL),
(275, '33333', '33333', NULL, NULL, '2023-04-13 22:31:31', '2023-04-13 22:31:31', 1, 5, 1, 1, 'agence', NULL, NULL),
(276, 'dghouli 888', 'khalid', '2022-02-02', NULL, '2023-04-13 22:35:58', '2023-04-15 09:03:44', 1, 5, 1, 2, 'Al Hamdo Llillah', NULL, NULL),
(277, 'abderrahman', 'dghouli', '2022-01-01', NULL, '2023-04-13 22:46:40', '2023-04-13 22:46:40', 6, 5, 8, 2, 'houda agrach', NULL, NULL),
(278, 'assia', 'dghouli', '2022-02-02', NULL, '2023-04-13 22:51:25', '2023-04-13 22:51:25', 8, 5, 6, 4, 'houda agrach', NULL, NULL),
(279, 'ibrahim', 'dghouli', '2023-02-13', NULL, '2023-04-13 23:00:05', '2023-04-13 23:00:05', 2, 5, 2, 3, 'houda agrach', NULL, NULL),
(280, 'dddd', 'dddd', '2023-04-13', NULL, '2023-04-13 23:02:53', '2023-04-13 23:02:53', 2, 5, 5, 2, 'ddddd', NULL, NULL),
(281, 'khalid 666655', 'dghouli', '2023-04-05', NULL, '2023-04-14 17:41:52', '2023-04-18 18:17:35', 1, 5, 1, 1, 'dddd', NULL, NULL),
(282, 'MS 219', 'Toyota', '2012-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '02-8FDL25\n', '8FDL25-31760\n'),
(283, 'MS 220', 'Toyota', '2012-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '02-8FDL25\n', '8FDL25-31757\n'),
(284, 'MS 223', 'Toyota', '2012-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '02-8FDL25\n', '8FDL25-31755\n'),
(285, 'MS 224', 'Toyota', '2017-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-66980\n'),
(286, 'MS 306', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '62-8FD25\n', '8FD25-83386\n'),
(287, 'MS 310', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-83455\n'),
(288, 'MS 312', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84326\n'),
(289, 'MS 314', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84359\n'),
(290, 'MS 315', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84266\n'),
(291, 'MS 316', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84267\n'),
(292, 'MS 319', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84311\n'),
(293, 'MS 320', 'Toyota', '2022-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84293\n'),
(294, 'MS 321', 'Toyota', '2022-01-01', NULL, NULL, '2023-05-28 18:30:53', 1, 4, 8, 1, 'Usine', '608FD25\n', '608FD25-84157\n'),
(295, 'MS 278', 'TCM Electrique', '2019-01-01', NULL, NULL, '2023-05-28 18:30:29', 1, 4, 8, 1, 'Usine', 'FB25-8\n', '7P442057\n'),
(296, 'MS 279', 'Toyota Electrique', '2012-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', '8FBEKT16\n', '8FBEKT16-11323\n'),
(297, 'MS 217', 'Toyota', '2015-01-01', NULL, NULL, NULL, 1, 4, 8, 1, 'Usine', 'FDZN25\r\n', 'FDZN25-23634\r\n\r\n'),
(298, 'dsfsdf', 'sdfsdfsd', '2023-05-10', NULL, '2023-05-20 06:21:20', '2023-05-28 18:30:19', 1, 2, 4, 1, 'dsfsdfsdfdf', NULL, NULL),
(299, 'khalid', 'dghouli', '2023-02-13', NULL, '2023-05-28 15:05:04', '2023-05-28 15:05:04', 1, 2, 5, 1, 'khalid dghouli', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

CREATE TABLE `visites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visite` date NOT NULL,
  `observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visites`
--

INSERT INTO `visites` (`id`, `visite`, `observation`, `created_at`, `updated_at`, `vhl_id`, `image`) VALUES
(1, '2023-04-29', 'pb de phare secours', NULL, NULL, 18, ''),
(3, '2023-04-27', 'sadasfsdfffdfdf', '2023-04-29 15:08:31', '2023-04-29 15:08:31', 30, NULL),
(4, '2023-04-28', 'ssdfsdfsdf', '2023-04-29 15:10:15', '2023-04-29 15:10:15', 40, NULL),
(5, '2023-04-18', 'dfdfdfdf', '2023-04-29 15:14:01', '2023-04-29 15:14:01', 34, NULL),
(6, '2023-04-18', 'dfdfdfdfcxvcx', '2023-04-29 15:14:18', '2023-04-29 15:14:18', 34, NULL),
(7, '2023-04-26', 'sdadadsd', '2023-04-29 16:56:55', '2023-04-29 16:56:55', 15, NULL),
(8, '2023-04-26', 'sdadadsd', '2023-04-29 16:57:37', '2023-04-29 16:57:37', 15, NULL),
(9, '2023-04-25', 'sdfsfdf', '2023-04-29 17:02:52', '2023-04-29 17:02:52', 33, NULL),
(10, '2023-04-25', 'ssssss', '2023-04-29 17:16:28', '2023-04-29 17:16:28', 33, 'C:\\xampp\\tmp\\phpCCDA.tmp'),
(11, '2023-04-07', 'dsfsdfsfsdf', '2023-04-29 17:17:15', '2023-04-29 17:17:15', 24, 'C:\\xampp\\tmp\\php85CB.tmp'),
(12, '2023-04-25', 'sddfsdf', '2023-04-29 17:18:51', '2023-04-29 17:18:51', 12, 'C:\\xampp\\tmp\\phpFC6E.tmp'),
(13, '2023-04-18', 'dddddd', '2023-04-29 17:35:32', '2023-04-29 17:35:32', 15, 'C:\\xampp\\tmp\\php440E.tmp'),
(14, '2023-04-19', 'dddddd', '2023-04-29 17:37:43', '2023-04-29 17:37:43', 18, 'C:\\xampp\\tmp\\php425F.tmp'),
(15, '2023-04-04', 'www', '2023-04-29 17:38:58', '2023-04-29 17:38:58', 33, 'C:\\xampp\\tmp\\php6814.tmp'),
(16, '2023-05-03', 'dddd', '2023-04-29 17:39:49', '2023-04-29 17:39:49', 24, 'C:\\xampp\\tmp\\php3047.tmp'),
(17, '2023-04-05', 'ddfdf', '2023-04-29 18:08:46', '2023-04-29 18:08:46', 30, 'imago/9c7p8ISS369cPq9ohMmyEzjJXpM6Fn7eGuICf5aR.jpg'),
(18, '2023-04-20', 'sdsdsds', '2023-04-29 18:10:56', '2023-04-29 18:10:56', 38, 'imago/Rh30ggQbiGJLkLi4fdBQJHXHgQ3BWlbjpfu1gclH.png'),
(19, '2023-04-26', 'sdsdsds', '2023-04-29 18:11:33', '2023-04-29 18:11:33', 38, 'imago/SLn7d1xQ9tvTZWI5WAgLlI3YaFbAI81350RKEX3u.xml'),
(20, '2023-05-24', 'sdfsdfsdfsdfsdf', '2023-05-01 06:39:08', '2023-05-01 06:39:08', 30, 'imago/mZGSbaUOK1H5E1oXzcJCky2usHpKQsQEQRhTe8Kw.jpg'),
(21, '2023-05-25', 'nkjbmnbnmb', '2023-05-01 06:41:48', '2023-05-01 06:41:48', 27, 'imago/3K70EyNOKD3vhKxvOhNwfks1zje7LgLmjlK5fCG1.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cartegrises`
--
ALTER TABLE `cartegrises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartegrises_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `circulations`
--
ALTER TABLE `circulations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `circulations_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_vhl_id_foreign` (`vhl_id`),
  ADD KEY `comments_statu_id_foreign` (`statu_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `intitules`
--
ALTER TABLE `intitules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kilometrages_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tachygraphes`
--
ALTER TABLE `tachygraphes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tachygraphes_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vhls_agence_id_foreign` (`agence_id`),
  ADD KEY `vhls_categorie_id_foreign` (`categorie_id`),
  ADD KEY `vhls_intitule_id_foreign` (`intitule_id`),
  ADD KEY `vhls_statu_id_foreign` (`statu_id`);

--
-- Index pour la table `visites`
--
ALTER TABLE `visites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visites_vhl_id_foreign` (`vhl_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cartegrises`
--
ALTER TABLE `cartegrises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `circulations`
--
ALTER TABLE `circulations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `intitules`
--
ALTER TABLE `intitules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tachygraphes`
--
ALTER TABLE `tachygraphes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vhls`
--
ALTER TABLE `vhls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT pour la table `visites`
--
ALTER TABLE `visites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cartegrises`
--
ALTER TABLE `cartegrises`
  ADD CONSTRAINT `cartegrises_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `circulations`
--
ALTER TABLE `circulations`
  ADD CONSTRAINT `circulations_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_statu_id_foreign` FOREIGN KEY (`statu_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  ADD CONSTRAINT `kilometrages_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tachygraphes`
--
ALTER TABLE `tachygraphes`
  ADD CONSTRAINT `tachygraphes_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD CONSTRAINT `vhls_agence_id_foreign` FOREIGN KEY (`agence_id`) REFERENCES `agences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_intitule_id_foreign` FOREIGN KEY (`intitule_id`) REFERENCES `intitules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_statu_id_foreign` FOREIGN KEY (`statu_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `visites`
--
ALTER TABLE `visites`
  ADD CONSTRAINT `visites_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
