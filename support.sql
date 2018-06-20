-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 20. Jun 2018 um 02:36
-- Server-Version: 5.7.22-0ubuntu0.16.04.1
-- PHP-Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `support`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `docs`
--

CREATE TABLE `docs` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iframelink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `docs`
--

INSERT INTO `docs` (`id`, `description`, `iframelink`, `access`, `created_at`, `updated_at`) VALUES
(1, 'Leitfaden Banzeiten', '<iframe style=\"display:block;width:100%; height: 100vh;\" src=\"https://docs.google.com/spreadsheets/d/e/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM/pubhtml?widget=true&amp;headers=false\"></iframe>', 'Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe', '2018-05-17 15:56:22', '2018-05-17 22:00:14'),
(2, 'Leitfaden Einbürgerung', '<iframe style=\"display:block;width:100%; height: 100vh;\" src=\"https://docs.google.com/document/d/e/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk/pub?embedded=true\"></iframe>', 'Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe', '2018-05-17 16:48:24', '2018-05-17 21:59:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataold` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `datanew` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `model`, `action`, `dataold`, `datanew`, `created_at`, `updated_at`) VALUES
(43, 7, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Whitelist\",\"casetype\":\"Support\",\"supporter\":\"Jan Lahmer\",\"spieler\":\"Max Mustermann\",\"scn\":\"MasterMaxMuster\",\"geschehen\":\"<p>Dies ist ein Beispiel f&uuml;r einen Supportfall<\\/p>\",\"Beweise\":\"<p>Hier werden Links zu Videos und Screenshots gesammelt<\\/p>\",\"Entscheidung\":\"<p>Entscheidungen werden hier<\\/p>\",\"done\":\"YES\",\"updated_at\":\"2018-05-12 15:26:42\",\"created_at\":\"2018-05-12 15:26:42\",\"id\":8}', '2018-05-12 13:26:42', '2018-05-12 13:26:42'),
(44, 7, 'USER', 'CREATE', '-', '{\"name\":\"Jack Collins\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"updated_at\":\"2018-05-12 17:31:48\",\"created_at\":\"2018-05-12 17:31:48\",\"id\":8}', '2018-05-12 15:31:48', '2018-05-12 15:31:48'),
(45, 8, 'USERS', 'SELFEDIT', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '2018-05-12 15:38:29', '2018-05-12 15:38:29'),
(46, 7, 'USER', 'CREATE', '-', '{\"name\":\"Max Mustermann\",\"position_id\":\"5\",\"email\":\"max@mustermann.de\",\"updated_at\":\"2018-05-12 17:40:29\",\"created_at\":\"2018-05-12 17:40:29\",\"id\":9}', '2018-05-12 15:40:29', '2018-05-12 15:40:29'),
(47, 7, 'USER', 'DELETE', '{\"id\":9,\"name\":\"Max Mustermann\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"max@mustermann.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:40:29\",\"updated_at\":\"2018-05-12 17:40:29\"}', '-', '2018-05-12 15:42:09', '2018-05-12 15:42:09'),
(48, 8, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Sonstiges\",\"casetype\":\"Support\",\"supporter\":\"Jack Collins\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"updated_at\":\"2018-05-12 18:02:15\",\"created_at\":\"2018-05-12 18:02:15\",\"id\":9}', '2018-05-12 16:02:15', '2018-05-12 16:02:15'),
(49, 8, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"NO\",\"updated_at\":\"2018-05-12 18:03:07\",\"created_at\":\"2018-05-12 18:03:07\",\"id\":10}', '2018-05-12 16:03:07', '2018-05-12 16:03:07'),
(50, 8, 'SUPPORTCASES', 'EDIT', '{\"id\":10,\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-12 18:03:07\",\"updated_at\":\"2018-05-12 18:03:33\"}', '{\"id\":10,\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-12 18:03:07\",\"updated_at\":\"2018-05-12 18:03:33\"}', '2018-05-12 16:03:33', '2018-05-12 16:03:33'),
(51, 8, 'POSITION', 'CREATE', '-', '{\"position\":\"Supporter Probe\",\"position_description\":\"Ist Probe Supporter und in der Probezeit als Supporter\",\"updated_at\":\"2018-05-12 18:06:53\",\"created_at\":\"2018-05-12 18:06:53\",\"id\":10}', '2018-05-12 16:06:53', '2018-05-12 16:06:53'),
(52, 7, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Whitelist\",\"casetype\":\"Support\",\"supporter\":\"Jan Lahmer\",\"spieler\":\"Test\",\"scn\":null,\"geschehen\":\"<p>Test<\\/p>\",\"Beweise\":\"<p><\\/p>\",\"Entscheidung\":\"<p><\\/p>\",\"done\":\"YES\",\"updated_at\":\"2018-05-12 18:16:29\",\"created_at\":\"2018-05-12 18:16:29\",\"id\":11}', '2018-05-12 16:16:29', '2018-05-12 16:16:29'),
(53, 8, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"Hans Peter\",\"scn\":null,\"geschehen\":\"<p>Test<\\/p>\",\"Beweise\":\"<p><\\/p>\",\"Entscheidung\":\"<p>Test<\\/p>\",\"done\":\"NO\",\"updated_at\":\"2018-05-12 18:28:58\",\"created_at\":\"2018-05-12 18:28:58\",\"id\":12}', '2018-05-12 16:28:58', '2018-05-12 16:28:58'),
(54, 8, 'SUPPORTCASES', 'EDIT', '{\"id\":12,\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"Hans Peter\",\"scn\":\"Hans Peter\",\"geschehen\":\"<p>Test<\\/p>\",\"Beweise\":\"<p><\\/p>\",\"Entscheidung\":\"<p>Test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-12 18:28:58\",\"updated_at\":\"2018-05-12 18:29:42\"}', '{\"id\":12,\"type\":\"Sonstiges\",\"casetype\":\"Projektleitung\",\"supporter\":\"Jack Collins\",\"spieler\":\"Hans Peter\",\"scn\":\"Hans Peter\",\"geschehen\":\"<p>Test<\\/p>\",\"Beweise\":\"<p><\\/p>\",\"Entscheidung\":\"<p>Test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-12 18:28:58\",\"updated_at\":\"2018-05-12 18:29:42\"}', '2018-05-12 16:29:42', '2018-05-12 16:29:42'),
(55, 8, 'USER', 'CREATE', '-', '{\"name\":\"Ron\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"updated_at\":\"2018-05-12 19:32:37\",\"created_at\":\"2018-05-12 19:32:37\",\"id\":10}', '2018-05-12 17:32:37', '2018-05-12 17:32:37'),
(56, 10, 'USERS', 'SELFEDIT', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '2018-05-12 17:33:54', '2018-05-12 17:33:54'),
(57, 10, 'USERS', 'EDIT', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '2018-05-12 17:43:02', '2018-05-12 17:43:02'),
(58, 8, 'USER', 'CREATE', '-', '{\"name\":\"Keko\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"updated_at\":\"2018-05-12 20:06:23\",\"created_at\":\"2018-05-12 20:06:23\",\"id\":11}', '2018-05-12 18:06:23', '2018-05-12 18:06:23'),
(59, 11, 'USERS', 'SELFEDIT', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 20:06:23\",\"updated_at\":\"2018-05-12 20:07:58\"}', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 20:06:23\",\"updated_at\":\"2018-05-12 20:07:58\"}', '2018-05-12 18:07:58', '2018-05-12 18:07:58'),
(60, 10, 'USER', 'CREATE', '-', '{\"name\":\"Steffi\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"updated_at\":\"2018-05-12 23:04:51\",\"created_at\":\"2018-05-12 23:04:51\",\"id\":12}', '2018-05-12 21:04:51', '2018-05-12 21:04:51'),
(61, 10, 'USER', 'CREATE', '-', '{\"name\":\"Skully\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"updated_at\":\"2018-05-12 23:05:27\",\"created_at\":\"2018-05-12 23:05:27\",\"id\":13}', '2018-05-12 21:05:27', '2018-05-12 21:05:27'),
(62, 10, 'USERS', 'EDIT', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:06:24\"}', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:06:24\"}', '2018-05-12 21:06:24', '2018-05-12 21:06:24'),
(63, 12, 'USERS', 'SELFEDIT', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:08:57\"}', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:08:57\"}', '2018-05-12 21:08:57', '2018-05-12 21:08:57'),
(64, 13, 'USERS', 'SELFEDIT', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:05:27\",\"updated_at\":\"2018-05-12 23:09:35\"}', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:05:27\",\"updated_at\":\"2018-05-12 23:09:35\"}', '2018-05-12 21:09:35', '2018-05-12 21:09:35'),
(65, 8, 'USER', 'CREATE', '-', '{\"name\":\"MaRvZ\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"updated_at\":\"2018-05-13 11:55:31\",\"created_at\":\"2018-05-13 11:55:31\",\"id\":14}', '2018-05-13 09:55:31', '2018-05-13 09:55:31'),
(66, 8, 'USER', 'CREATE', '-', '{\"name\":\"Luca\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"updated_at\":\"2018-05-13 11:56:29\",\"created_at\":\"2018-05-13 11:56:29\",\"id\":15}', '2018-05-13 09:56:29', '2018-05-13 09:56:29'),
(67, 14, 'USERS', 'SELFEDIT', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '2018-05-13 09:58:07', '2018-05-13 09:58:07'),
(68, 15, 'USERS', 'SELFEDIT', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 11:58:46\"}', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 11:58:46\"}', '2018-05-13 09:58:46', '2018-05-13 09:58:46'),
(69, 7, 'POSITION', 'EDIT', '{\"id\":2,\"position\":\"Projektleitung\",\"position_description\":\"Ist die Spitze des Projektes und k\\u00fcmmert sich darum, dass alles l\\u00e4uft.\",\"priority\":\"10000\",\"created_at\":\"2018-05-12 14:29:54\",\"updated_at\":\"2018-05-13 13:26:54\"}', '{\"id\":2,\"position\":\"Projektleitung\",\"position_description\":\"Ist die Spitze des Projektes und k\\u00fcmmert sich darum, dass alles l\\u00e4uft.\",\"priority\":\"10000\",\"created_at\":\"2018-05-12 14:29:54\",\"updated_at\":\"2018-05-13 13:26:54\"}', '2018-05-13 11:26:54', '2018-05-13 11:26:54'),
(70, 7, 'POSITION', 'EDIT', '{\"id\":4,\"position\":\"Administration\",\"position_description\":\"Spricht stellvertretend f\\u00fcr die Projektleitung und ist deren rechte Hand.\",\"priority\":\"9000\",\"created_at\":\"2018-05-12 14:34:31\",\"updated_at\":\"2018-05-13 13:27:03\"}', '{\"id\":4,\"position\":\"Administration\",\"position_description\":\"Spricht stellvertretend f\\u00fcr die Projektleitung und ist deren rechte Hand.\",\"priority\":\"9000\",\"created_at\":\"2018-05-12 14:34:31\",\"updated_at\":\"2018-05-13 13:27:03\"}', '2018-05-13 11:27:03', '2018-05-13 11:27:03'),
(71, 7, 'POSITION', 'EDIT', '{\"id\":7,\"position\":\"Entwicklungsleitung\",\"position_description\":\"Koordinieren die Entwickler und planen neue Features.\",\"priority\":\"8000\",\"created_at\":\"2018-05-12 14:37:41\",\"updated_at\":\"2018-05-13 13:27:22\"}', '{\"id\":7,\"position\":\"Entwicklungsleitung\",\"position_description\":\"Koordinieren die Entwickler und planen neue Features.\",\"priority\":\"8000\",\"created_at\":\"2018-05-12 14:37:41\",\"updated_at\":\"2018-05-13 13:27:22\"}', '2018-05-13 11:27:22', '2018-05-13 11:27:22'),
(72, 7, 'POSITION', 'EDIT', '{\"id\":6,\"position\":\"Entwickler\",\"position_description\":\"K\\u00fcmmern sich um neue Features f\\u00fcr die Server und beheben bestehende Fehler.\",\"priority\":\"7000\",\"created_at\":\"2018-05-12 14:36:40\",\"updated_at\":\"2018-05-13 13:27:31\"}', '{\"id\":6,\"position\":\"Entwickler\",\"position_description\":\"K\\u00fcmmern sich um neue Features f\\u00fcr die Server und beheben bestehende Fehler.\",\"priority\":\"7000\",\"created_at\":\"2018-05-12 14:36:40\",\"updated_at\":\"2018-05-13 13:27:31\"}', '2018-05-13 11:27:31', '2018-05-13 11:27:31'),
(73, 7, 'POSITION', 'EDIT', '{\"id\":5,\"position\":\"Webentwickler\",\"position_description\":\"K\\u00fcmmern sich um alle Websites von Paradise Life und um das Support Backend.\",\"priority\":\"7000\",\"created_at\":\"2018-05-12 14:35:45\",\"updated_at\":\"2018-05-13 13:27:40\"}', '{\"id\":5,\"position\":\"Webentwickler\",\"position_description\":\"K\\u00fcmmern sich um alle Websites von Paradise Life und um das Support Backend.\",\"priority\":\"7000\",\"created_at\":\"2018-05-12 14:35:45\",\"updated_at\":\"2018-05-13 13:27:40\"}', '2018-05-13 11:27:40', '2018-05-13 11:27:40'),
(74, 7, 'POSITION', 'EDIT', '{\"id\":8,\"position\":\"Supportleitung\",\"position_description\":\"Leiten den Support und sind die Instanz zwischen Support und Administration bei Problemen und Beschwerden.\",\"priority\":\"6000\",\"created_at\":\"2018-05-12 14:38:19\",\"updated_at\":\"2018-05-13 13:27:53\"}', '{\"id\":8,\"position\":\"Supportleitung\",\"position_description\":\"Leiten den Support und sind die Instanz zwischen Support und Administration bei Problemen und Beschwerden.\",\"priority\":\"6000\",\"created_at\":\"2018-05-12 14:38:19\",\"updated_at\":\"2018-05-13 13:27:53\"}', '2018-05-13 11:27:53', '2018-05-13 11:27:53'),
(75, 7, 'POSITION', 'EDIT', '{\"id\":9,\"position\":\"Supporter\",\"position_description\":\"K\\u00fcmmern sich um Anliegen von Spielern.\",\"priority\":\"5000\",\"created_at\":\"2018-05-12 14:38:32\",\"updated_at\":\"2018-05-13 13:28:03\"}', '{\"id\":9,\"position\":\"Supporter\",\"position_description\":\"K\\u00fcmmern sich um Anliegen von Spielern.\",\"priority\":\"5000\",\"created_at\":\"2018-05-12 14:38:32\",\"updated_at\":\"2018-05-13 13:28:03\"}', '2018-05-13 11:28:03', '2018-05-13 11:28:03'),
(76, 7, 'POSITION', 'EDIT', '{\"id\":10,\"position\":\"Supporter Probe\",\"position_description\":\"Ist Probe Supporter und in der Probezeit als Supporter\",\"priority\":\"5000\",\"created_at\":\"2018-05-12 18:06:53\",\"updated_at\":\"2018-05-13 13:28:09\"}', '{\"id\":10,\"position\":\"Supporter Probe\",\"position_description\":\"Ist Probe Supporter und in der Probezeit als Supporter\",\"priority\":\"5000\",\"created_at\":\"2018-05-12 18:06:53\",\"updated_at\":\"2018-05-13 13:28:09\"}', '2018-05-13 11:28:09', '2018-05-13 11:28:09'),
(77, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:31:51\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:31:51\"}', '2018-05-13 11:31:51', '2018-05-13 11:31:51'),
(78, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:34:12\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:34:12\"}', '2018-05-13 11:34:12', '2018-05-13 11:34:12'),
(79, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:36:36\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:36:36\"}', '2018-05-13 11:36:36', '2018-05-13 11:36:36'),
(80, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 11:37:18', '2018-05-13 11:37:18'),
(81, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 11:44:09', '2018-05-13 11:44:09'),
(82, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 11:44:30', '2018-05-13 11:44:30'),
(83, 7, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"LOCKED\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:04:26\"}', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"LOCKED\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:04:26\"}', '2018-05-13 12:04:26', '2018-05-13 12:04:26'),
(84, 7, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:05:39\"}', '{\"id\":15,\"name\":\"Luca\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:05:39\"}', '2018-05-13 12:05:39', '2018-05-13 12:05:39'),
(85, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 12:41:51', '2018-05-13 12:41:51'),
(86, 15, 'USERS', 'SELFEDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '2018-05-13 12:49:26', '2018-05-13 12:49:26'),
(87, 7, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"PL Sitzung\",\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"updated_at\":\"2018-05-13 15:15:51\",\"created_at\":\"2018-05-13 15:15:51\",\"id\":1}', '2018-05-13 13:15:51', '2018-05-13 13:15:51'),
(88, 7, 'PAD', 'EDIT', '{\"id\":1,\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"NO\",\"created_at\":\"2018-05-13 15:15:51\",\"updated_at\":\"2018-05-13 15:17:26\"}', '{\"id\":1,\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"NO\",\"created_at\":\"2018-05-13 15:15:51\",\"updated_at\":\"2018-05-13 15:17:26\"}', '2018-05-13 13:17:26', '2018-05-13 13:17:26'),
(89, 7, 'PAD', 'EDIT', '{\"id\":1,\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 15:15:51\",\"updated_at\":\"2018-05-13 15:18:39\"}', '{\"id\":1,\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 15:15:51\",\"updated_at\":\"2018-05-13 15:18:39\"}', '2018-05-13 13:18:39', '2018-05-13 13:18:39'),
(90, 7, 'PAD', 'DELETE', '{\"id\":1,\"slug\":\"3c05eb9a1eab99df863e4431bef47771\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 15:15:51\",\"updated_at\":\"2018-05-13 15:18:39\"}', '-', '2018-05-13 13:30:54', '2018-05-13 13:30:54'),
(91, 7, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"PL Sitzung 13.05.2018\",\"slug\":\"c643292b5b193f920a14239012e33770\",\"updated_at\":\"2018-05-13 15:31:03\",\"created_at\":\"2018-05-13 15:31:03\",\"id\":2}', '2018-05-13 13:31:03', '2018-05-13 13:31:03'),
(92, 7, 'PAD', 'DELETE', '{\"id\":2,\"slug\":\"c643292b5b193f920a14239012e33770\",\"type\":\"projektleitung\",\"title\":\"PL Sitzung 13.05.2018\",\"done\":\"NO\",\"created_at\":\"2018-05-13 15:31:03\",\"updated_at\":\"2018-05-13 15:31:03\"}', '-', '2018-05-13 13:31:58', '2018-05-13 13:31:58'),
(93, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 13:34:34', '2018-05-13 13:34:34'),
(94, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 13:35:28', '2018-05-13 13:35:28'),
(95, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 13:35:32', '2018-05-13 13:35:32'),
(96, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-13 13:36:38', '2018-05-13 13:36:38'),
(97, 7, 'USERS', 'EDIT', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '2018-05-13 13:38:07', '2018-05-13 13:38:07'),
(98, 7, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Beispielpad\",\"slug\":\"7547bbeff387af4c2c9c2ae63fcef16f\",\"updated_at\":\"2018-05-13 15:39:06\",\"created_at\":\"2018-05-13 15:39:06\",\"id\":3}', '2018-05-13 13:39:06', '2018-05-13 13:39:06'),
(99, 7, 'USERS', 'EDIT', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:32:37\",\"updated_at\":\"2018-05-12 19:33:53\"}', '2018-05-13 14:04:44', '2018-05-13 14:04:44'),
(100, 10, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Team Besprechung vom 13.05.2018\",\"slug\":\"9dfc7fe6e50cc6c7be2be455cac41de0\",\"updated_at\":\"2018-05-13 16:07:52\",\"created_at\":\"2018-05-13 16:07:52\",\"id\":4}', '2018-05-13 14:07:52', '2018-05-13 14:07:52'),
(101, 10, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '2018-05-13 14:20:45', '2018-05-13 14:20:45'),
(102, 10, 'USERS', 'EDIT', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '2018-05-13 14:21:02', '2018-05-13 14:21:02'),
(103, 7, 'USERS', 'EDIT', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 20:06:23\",\"updated_at\":\"2018-05-12 20:07:58\"}', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 20:06:23\",\"updated_at\":\"2018-05-12 20:07:58\"}', '2018-05-13 14:22:17', '2018-05-13 14:22:17'),
(104, 7, 'USERS', 'EDIT', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:08:57\"}', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:04:51\",\"updated_at\":\"2018-05-12 23:08:57\"}', '2018-05-13 14:22:32', '2018-05-13 14:22:32'),
(105, 7, 'USERS', 'EDIT', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:05:27\",\"updated_at\":\"2018-05-12 23:09:35\"}', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 23:05:27\",\"updated_at\":\"2018-05-12 23:09:35\"}', '2018-05-13 14:22:44', '2018-05-13 14:22:44'),
(106, 7, 'USERS', 'EDIT', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:55:31\",\"updated_at\":\"2018-05-13 11:58:07\"}', '2018-05-13 14:22:59', '2018-05-13 14:22:59'),
(107, 7, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '2018-05-13 14:23:09', '2018-05-13 14:23:09'),
(108, 7, 'PAD', 'DELETE', '{\"id\":3,\"slug\":\"7547bbeff387af4c2c9c2ae63fcef16f\",\"type\":\"projektleitung\",\"title\":\"Beispielpad\",\"done\":\"NO\",\"created_at\":\"2018-05-13 15:39:06\",\"updated_at\":\"2018-05-13 15:39:06\"}', '-', '2018-05-13 14:41:32', '2018-05-13 14:41:32'),
(109, 14, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 11:56:29\",\"updated_at\":\"2018-05-13 14:49:26\"}', '2018-05-13 14:49:32', '2018-05-13 14:49:32'),
(110, 14, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Whitelist\",\"casetype\":\"Entwickler\",\"supporter\":\"MaRvZ\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"NO\",\"updated_at\":\"2018-05-13 16:50:10\",\"created_at\":\"2018-05-13 16:50:10\",\"id\":13}', '2018-05-13 14:50:10', '2018-05-13 14:50:10'),
(111, 14, 'SUPPORTCASES', 'EDIT', '{\"id\":13,\"type\":\"Whitelist\",\"casetype\":\"Entwickler\",\"supporter\":\"MaRvZ\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-13 16:50:10\",\"updated_at\":\"2018-05-13 16:50:26\"}', '{\"id\":13,\"type\":\"Whitelist\",\"casetype\":\"Entwickler\",\"supporter\":\"MaRvZ\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"created_at\":\"2018-05-13 16:50:10\",\"updated_at\":\"2018-05-13 16:50:26\"}', '2018-05-13 14:50:26', '2018-05-13 14:50:26'),
(112, 7, 'PAD', 'CREATE', '-', '{\"type\":\"entwicklung\",\"done\":\"NO\",\"title\":\"Entwicklung des ACP (W\\u00fcnsche & aktueller Stand)\",\"slug\":\"72aa5a70f3d87c5a46eb68dd40bcb21f\",\"updated_at\":\"2018-05-13 17:31:57\",\"created_at\":\"2018-05-13 17:31:57\",\"id\":5}', '2018-05-13 15:31:57', '2018-05-13 15:31:57'),
(113, 10, 'USER', 'CREATE', '-', '{\"name\":\"Gin\",\"position_id\":\"5\",\"email\":\"alex97.chb@gmail.com\",\"updated_at\":\"2018-05-13 19:10:43\",\"created_at\":\"2018-05-13 19:10:43\",\"id\":16}', '2018-05-13 17:10:43', '2018-05-13 17:10:43'),
(114, 7, 'USERS', 'EDIT', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 19:10:43\",\"updated_at\":\"2018-05-13 19:18:48\"}', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 19:10:43\",\"updated_at\":\"2018-05-13 19:18:48\"}', '2018-05-13 17:18:48', '2018-05-13 17:18:48'),
(115, 8, 'PAD', 'EDIT', '{\"id\":4,\"slug\":\"9dfc7fe6e50cc6c7be2be455cac41de0\",\"type\":\"projektleitung\",\"title\":\"Team Besprechung vom 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 16:07:52\",\"updated_at\":\"2018-05-14 12:34:38\"}', '{\"id\":4,\"slug\":\"9dfc7fe6e50cc6c7be2be455cac41de0\",\"type\":\"projektleitung\",\"title\":\"Team Besprechung vom 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 16:07:52\",\"updated_at\":\"2018-05-14 12:34:38\"}', '2018-05-14 10:34:38', '2018-05-14 10:34:38'),
(116, 8, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Projektbesprechung 13.04.2018\",\"slug\":\"9a0913b72dc98819ac36a5407b315ddc\",\"updated_at\":\"2018-05-14 18:31:07\",\"created_at\":\"2018-05-14 18:31:07\",\"id\":6}', '2018-05-14 16:31:07', '2018-05-14 16:31:07'),
(117, 8, 'PAD', 'EDIT', '{\"id\":6,\"slug\":\"9a0913b72dc98819ac36a5407b315ddc\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 13.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:07\",\"updated_at\":\"2018-05-14 18:31:31\"}', '{\"id\":6,\"slug\":\"9a0913b72dc98819ac36a5407b315ddc\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 13.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:07\",\"updated_at\":\"2018-05-14 18:31:31\"}', '2018-05-14 16:31:31', '2018-05-14 16:31:31'),
(118, 8, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Projektbesprechung 20.04.2018\",\"slug\":\"179830ddade4da98b542389a2b1654b3\",\"updated_at\":\"2018-05-14 18:31:49\",\"created_at\":\"2018-05-14 18:31:49\",\"id\":7}', '2018-05-14 16:31:49', '2018-05-14 16:31:49'),
(119, 8, 'PAD', 'EDIT', '{\"id\":7,\"slug\":\"179830ddade4da98b542389a2b1654b3\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:49\",\"updated_at\":\"2018-05-14 18:32:49\"}', '{\"id\":7,\"slug\":\"179830ddade4da98b542389a2b1654b3\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:49\",\"updated_at\":\"2018-05-14 18:32:49\"}', '2018-05-14 16:32:49', '2018-05-14 16:32:49'),
(120, 8, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Projektbesprechung 27.04.2018\",\"slug\":\"5c79cbbcded21aef8c3de7f44840f915\",\"updated_at\":\"2018-05-14 18:33:08\",\"created_at\":\"2018-05-14 18:33:08\",\"id\":8}', '2018-05-14 16:33:08', '2018-05-14 16:33:08'),
(121, 8, 'PAD', 'EDIT', '{\"id\":8,\"slug\":\"5c79cbbcded21aef8c3de7f44840f915\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 27.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:33:08\",\"updated_at\":\"2018-05-14 18:33:47\"}', '{\"id\":8,\"slug\":\"5c79cbbcded21aef8c3de7f44840f915\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 27.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:33:08\",\"updated_at\":\"2018-05-14 18:33:47\"}', '2018-05-14 16:33:47', '2018-05-14 16:33:47'),
(122, 8, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Projektbesprechung 04.05.2018\",\"slug\":\"995a67eeffc0bf28a3e85dc2fbffde1c\",\"updated_at\":\"2018-05-14 18:34:07\",\"created_at\":\"2018-05-14 18:34:07\",\"id\":9}', '2018-05-14 16:34:07', '2018-05-14 16:34:07'),
(123, 8, 'PAD', 'EDIT', '{\"id\":9,\"slug\":\"995a67eeffc0bf28a3e85dc2fbffde1c\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 04.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:34:07\",\"updated_at\":\"2018-05-14 18:34:44\"}', '{\"id\":9,\"slug\":\"995a67eeffc0bf28a3e85dc2fbffde1c\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 04.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:34:07\",\"updated_at\":\"2018-05-14 18:34:44\"}', '2018-05-14 16:34:44', '2018-05-14 16:34:44'),
(124, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-13 13:37:18\"}', '2018-05-14 21:32:49', '2018-05-14 21:32:49'),
(125, 7, 'WATCHLIST', 'CREATE', '-', '{\"supporter\":\"Jan Lahmer\",\"spieler\":\"Max MusterMann\",\"forumname\":\"Max MusterMann\",\"von\":\"2018.05.14 23:41\",\"bis\":\"2018-05-28 00:00\",\"supportfallid\":\"8\",\"updated_at\":\"2018-05-14 23:41:52\",\"created_at\":\"2018-05-14 23:41:52\",\"id\":1}', '2018-05-14 21:41:52', '2018-05-14 21:41:52'),
(126, 7, 'WATCHLIST', 'CREATE', '-', '{\"supporter\":\"Jan Lahmer\",\"spieler\":\"Maria Musterfrau\",\"forumname\":\"Maria Musterfrau\",\"von\":\"2018.05.14 23:45\",\"bis\":\"2018-05-28 00:00\",\"supportfallid\":\"8\",\"updated_at\":\"2018-05-14 23:46:13\",\"created_at\":\"2018-05-14 23:46:13\",\"id\":2}', '2018-05-14 21:46:13', '2018-05-14 21:46:13'),
(127, 8, 'USERS', 'EDIT', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-05-12 17:38:29\"}', '2018-05-14 22:56:46', '2018-05-14 22:56:46'),
(128, 8, 'USER', 'CREATE', '-', '{\"name\":\"Teddy\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"updated_at\":\"2018-05-15 12:26:04\",\"created_at\":\"2018-05-15 12:26:04\",\"id\":17}', '2018-05-15 10:26:05', '2018-05-15 10:26:05'),
(129, 16, 'USERS', 'SELFEDIT', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 19:10:43\",\"updated_at\":\"2018-05-15 12:27:13\"}', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 19:10:43\",\"updated_at\":\"2018-05-15 12:27:13\"}', '2018-05-15 10:27:13', '2018-05-15 10:27:13'),
(130, 17, 'USERS', 'SELFEDIT', '{\"id\":17,\"name\":\"Teddy\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-15 12:26:04\",\"updated_at\":\"2018-05-15 12:27:48\"}', '{\"id\":17,\"name\":\"Teddy\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-15 12:26:04\",\"updated_at\":\"2018-05-15 12:27:48\"}', '2018-05-15 10:27:48', '2018-05-15 10:27:48'),
(131, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-13 12:37:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-13 12:37:18\"}', '2018-05-17 12:12:31', '2018-05-17 12:12:31'),
(132, 7, 'DOCS', 'CREATE', '-', '{\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"updated_at\":\"2018-05-17 16:56:22\",\"created_at\":\"2018-05-17 16:56:22\",\"id\":1}', '2018-05-17 15:56:22', '2018-05-17 15:56:22'),
(133, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\", , , , , , , \",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:12:39\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\", , , , , , , \",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:12:39\"}', '2018-05-17 16:12:39', '2018-05-17 16:12:39'),
(134, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"Leitfaden Banzeiten\",\"access\":\", \",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:13:17\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"Leitfaden Banzeiten\",\"access\":\", \",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:13:17\"}', '2018-05-17 16:13:18', '2018-05-17 16:13:18'),
(135, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"Leitfaden Banzeiten\",\"access\":\"Projektleitung\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:14:28\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"Leitfaden Banzeiten\",\"access\":\"Projektleitung\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:14:28\"}', '2018-05-17 16:14:28', '2018-05-17 16:14:28'),
(136, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:15:03\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:15:03\"}', '2018-05-17 16:15:03', '2018-05-17 16:15:03'),
(137, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:15:51\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:15:51\"}', '2018-05-17 16:15:51', '2018-05-17 16:15:51'),
(138, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:46:42\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:46:42\"}', '2018-05-17 16:46:42', '2018-05-17 16:46:42'),
(139, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 1vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:47:07\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 1vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:47:07\"}', '2018-05-17 16:47:07', '2018-05-17 16:47:07'),
(140, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:47:18\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:47:18\"}', '2018-05-17 16:47:18', '2018-05-17 16:47:18'),
(141, 7, 'DOCS', 'CREATE', '-', '{\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"updated_at\":\"2018-05-17 17:48:24\",\"created_at\":\"2018-05-17 17:48:24\",\"id\":2}', '2018-05-17 16:48:24', '2018-05-17 16:48:24');
INSERT INTO `logs` (`id`, `user_id`, `model`, `action`, `dataold`, `datanew`, `created_at`, `updated_at`) VALUES
(142, 7, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 17:48:54\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 17:48:54\"}', '2018-05-17 16:48:54', '2018-05-17 16:48:54'),
(143, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:50:45\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 17:50:45\"}', '2018-05-17 16:50:45', '2018-05-17 16:50:45'),
(144, 7, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 17:50:53\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 17:50:53\"}', '2018-05-17 16:50:53', '2018-05-17 16:50:53'),
(145, 7, 'USERS', 'EDIT', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 16:31:48\",\"updated_at\":\"2018-05-12 16:38:29\"}', '{\"id\":8,\"name\":\"Jack Collins\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 16:31:48\",\"updated_at\":\"2018-05-12 16:38:29\"}', '2018-05-17 16:54:09', '2018-05-17 16:54:09'),
(146, 8, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:52:42\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:52:42\"}', '2018-05-17 21:52:42', '2018-05-17 21:52:42'),
(147, 7, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:52:42\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:52:42\"}', '2018-05-17 21:54:22', '2018-05-17 21:54:22'),
(148, 8, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 22:54:30\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 22:54:30\"}', '2018-05-17 21:54:30', '2018-05-17 21:54:30'),
(149, 7, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 22:54:36\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&headers=false%22%3E\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 22:54:36\"}', '2018-05-17 21:54:36', '2018-05-17 21:54:36'),
(150, 7, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:55:00\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true%22%3E<\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:55:00\"}', '2018-05-17 21:55:00', '2018-05-17 21:55:00'),
(151, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-17 22:56:13\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-17 22:56:13\"}', '2018-05-17 21:56:13', '2018-05-17 21:56:13'),
(152, 7, 'USERS', 'EDIT', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-17 22:57:18\"}', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 13:51:52\",\"updated_at\":\"2018-05-17 22:57:18\"}', '2018-05-17 21:57:18', '2018-05-17 21:57:18'),
(153, 8, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '2018-05-17 21:59:21', '2018-05-17 21:59:21'),
(154, 8, 'DOCS', 'EDIT', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 23:00:14\"}', '{\"id\":1,\"description\":\"Leitfaden Banzeiten\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/spreadsheets\\/d\\/e\\/2PACX-1vTItS50rt0rfWTAJIOAVJNau1fLZX4iG0hJgswuXWhAfNVeO5k6-N_IQV-Y_Pswm87CfARl7JfUaltM\\/pubhtml?widget=true&amp;headers=false\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 16:56:22\",\"updated_at\":\"2018-05-17 23:00:14\"}', '2018-05-17 22:00:14', '2018-05-17 22:00:14'),
(155, 8, 'USERS', 'EDIT', '{\"id\":17,\"name\":\"Teddy\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-15 11:26:04\",\"updated_at\":\"2018-05-15 11:27:48\"}', '{\"id\":17,\"name\":\"Teddy\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-15 11:26:04\",\"updated_at\":\"2018-05-15 11:27:48\"}', '2018-05-17 22:02:20', '2018-05-17 22:02:20'),
(156, 8, 'USERS', 'EDIT', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 18:10:43\",\"updated_at\":\"2018-05-15 11:27:13\"}', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 18:10:43\",\"updated_at\":\"2018-05-15 11:27:13\"}', '2018-05-17 22:02:29', '2018-05-17 22:02:29'),
(157, 8, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:56:29\",\"updated_at\":\"2018-05-13 13:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:56:29\",\"updated_at\":\"2018-05-13 13:49:26\"}', '2018-05-17 22:02:39', '2018-05-17 22:02:39'),
(158, 8, 'USERS', 'EDIT', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:55:31\",\"updated_at\":\"2018-05-13 10:58:07\"}', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:55:31\",\"updated_at\":\"2018-05-13 10:58:07\"}', '2018-05-17 22:02:51', '2018-05-17 22:02:51'),
(159, 8, 'USERS', 'EDIT', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:05:27\",\"updated_at\":\"2018-05-12 22:09:35\"}', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:05:27\",\"updated_at\":\"2018-05-12 22:09:35\"}', '2018-05-17 22:03:04', '2018-05-17 22:03:04'),
(160, 8, 'USERS', 'EDIT', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:04:51\",\"updated_at\":\"2018-05-12 22:08:57\"}', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:04:51\",\"updated_at\":\"2018-05-12 22:08:57\"}', '2018-05-17 22:03:14', '2018-05-17 22:03:14'),
(161, 8, 'USERS', 'EDIT', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:06:23\",\"updated_at\":\"2018-05-12 19:07:58\"}', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 19:06:23\",\"updated_at\":\"2018-05-12 19:07:58\"}', '2018-05-17 22:03:24', '2018-05-17 22:03:24'),
(162, 8, 'USERS', 'EDIT', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 18:32:37\",\"updated_at\":\"2018-05-12 18:33:53\"}', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 18:32:37\",\"updated_at\":\"2018-05-12 18:33:53\"}', '2018-05-17 22:03:35', '2018-05-17 22:03:35'),
(163, 8, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '2018-05-17 22:10:38', '2018-05-17 22:10:38'),
(164, 16, 'PAD', 'CREATE', '-', '{\"type\":\"projektleitung\",\"done\":\"NO\",\"title\":\"Projektbesprechung 20.05.18\",\"slug\":\"cdcbabe12c340e57ac33906a92ca8719\",\"updated_at\":\"2018-05-17 23:10:45\",\"created_at\":\"2018-05-17 23:10:45\",\"id\":10}', '2018-05-17 22:10:45', '2018-05-17 22:10:45'),
(165, 16, 'PAD', 'EDIT', '{\"id\":10,\"slug\":\"cdcbabe12c340e57ac33906a92ca8719\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.05.18\",\"done\":\"NO\",\"created_at\":\"2018-05-17 23:10:45\",\"updated_at\":\"2018-05-17 23:10:45\"}', '{\"id\":10,\"slug\":\"cdcbabe12c340e57ac33906a92ca8719\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.05.18\",\"done\":\"NO\",\"created_at\":\"2018-05-17 23:10:45\",\"updated_at\":\"2018-05-17 23:10:45\"}', '2018-05-17 22:10:56', '2018-05-17 22:10:56'),
(166, 8, 'USERS', 'EDIT', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 18:32:37\",\"updated_at\":\"2018-05-12 18:33:53\"}', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 18:32:37\",\"updated_at\":\"2018-05-12 18:33:53\"}', '2018-05-17 22:11:01', '2018-05-17 22:11:01'),
(167, 8, 'USERS', 'EDIT', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:04:51\",\"updated_at\":\"2018-05-12 22:08:57\"}', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:04:51\",\"updated_at\":\"2018-05-12 22:08:57\"}', '2018-05-17 22:11:19', '2018-05-17 22:11:19'),
(168, 8, 'USERS', 'EDIT', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:05:27\",\"updated_at\":\"2018-05-12 22:09:35\"}', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:05:27\",\"updated_at\":\"2018-05-12 22:09:35\"}', '2018-05-17 22:11:34', '2018-05-17 22:11:34'),
(169, 8, 'USERS', 'EDIT', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:55:31\",\"updated_at\":\"2018-05-13 10:58:07\"}', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:55:31\",\"updated_at\":\"2018-05-13 10:58:07\"}', '2018-05-17 22:12:22', '2018-05-17 22:12:22'),
(170, 8, 'USERS', 'EDIT', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:56:29\",\"updated_at\":\"2018-05-13 13:49:26\"}', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:56:29\",\"updated_at\":\"2018-05-13 13:49:26\"}', '2018-05-17 22:12:51', '2018-05-17 22:12:51'),
(171, 8, 'USERS', 'EDIT', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 18:10:43\",\"updated_at\":\"2018-05-15 11:27:13\"}', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 18:10:43\",\"updated_at\":\"2018-05-15 11:27:13\"}', '2018-05-17 22:13:07', '2018-05-17 22:13:07'),
(172, 8, 'DOCS', 'EDIT', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '{\"id\":2,\"description\":\"Leitfaden Einb\\u00fcrgerung\",\"iframelink\":\"<iframe style=\\\"display:block;width:100%; height: 100vh;\\\" src=\\\"https:\\/\\/docs.google.com\\/document\\/d\\/e\\/2PACX-1vSs6dbs-FJc4LP2JLYAl6ulTXqy6_ymK37aCgPm3S0ZVhcleAeRxm6ru3OEusgaWQ_0rcdL_YBsPTlk\\/pub?embedded=true\\\"><\\/iframe>\",\"access\":\"Projektleitung, Administration, Webentwickler, Entwickler, Entwicklungsleitung, Supportleitung, Supporter, Supporter Probe\",\"created_at\":\"2018-05-17 17:48:24\",\"updated_at\":\"2018-05-17 22:59:21\"}', '2018-05-17 22:13:48', '2018-05-17 22:13:48'),
(173, 8, 'USER', 'DELETE', '{\"id\":14,\"name\":\"MaRvZ\",\"telefonnummer\":\"\",\"position_id\":\"7\",\"email\":\"marvin@nolimits-gaming.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:55:31\",\"updated_at\":\"2018-05-13 10:58:07\"}', '-', '2018-05-18 00:26:54', '2018-05-18 00:26:54'),
(174, 8, 'USER', 'DELETE', '{\"id\":10,\"name\":\"Ron\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"ron.-kunze@t-online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 18:32:37\",\"updated_at\":\"2018-05-12 18:33:53\"}', '-', '2018-05-18 00:27:54', '2018-05-18 00:27:54'),
(175, 8, 'USER', 'DELETE', '{\"id\":12,\"name\":\"Steffi\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"steffi-r.1995@web.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:04:51\",\"updated_at\":\"2018-05-12 22:08:57\"}', '-', '2018-05-18 00:28:01', '2018-05-18 00:28:01'),
(176, 8, 'USER', 'DELETE', '{\"id\":13,\"name\":\"Skully\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"kaiser-robert1@gmx.net\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 22:05:27\",\"updated_at\":\"2018-05-12 22:09:35\"}', '-', '2018-05-18 00:32:26', '2018-05-18 00:32:26'),
(177, 8, 'USER', 'DELETE', '{\"id\":15,\"name\":\"Luca00711\",\"telefonnummer\":\"\",\"position_id\":\"6\",\"email\":\"Luca2005.chr@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 10:56:29\",\"updated_at\":\"2018-05-13 13:49:26\"}', '-', '2018-05-18 00:32:30', '2018-05-18 00:32:30'),
(178, 8, 'USER', 'DELETE', '{\"id\":16,\"name\":\"Gin\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"alex97.chb@gmail.com\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-13 18:10:43\",\"updated_at\":\"2018-05-15 11:27:13\"}', '-', '2018-05-18 00:32:35', '2018-05-18 00:32:35'),
(179, 8, 'USER', 'DELETE', '{\"id\":17,\"name\":\"Teddy\",\"telefonnummer\":\"\",\"position_id\":\"8\",\"email\":\"m.huebscher@online.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-15 11:26:04\",\"updated_at\":\"2018-05-15 11:27:48\"}', '-', '2018-05-18 00:32:39', '2018-05-18 00:32:39'),
(180, 8, 'PAD', 'DELETE', '{\"id\":10,\"slug\":\"cdcbabe12c340e57ac33906a92ca8719\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.05.18\",\"done\":\"NO\",\"created_at\":\"2018-05-17 23:10:45\",\"updated_at\":\"2018-05-17 23:10:45\"}', '-', '2018-05-19 21:28:26', '2018-05-19 21:28:26'),
(181, 8, 'PAD', 'DELETE', '{\"id\":9,\"slug\":\"995a67eeffc0bf28a3e85dc2fbffde1c\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 04.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:34:07\",\"updated_at\":\"2018-05-14 18:34:44\"}', '-', '2018-05-19 21:28:33', '2018-05-19 21:28:33'),
(182, 8, 'PAD', 'DELETE', '{\"id\":8,\"slug\":\"5c79cbbcded21aef8c3de7f44840f915\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 27.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:33:08\",\"updated_at\":\"2018-05-14 18:33:47\"}', '-', '2018-05-19 21:28:36', '2018-05-19 21:28:36'),
(183, 8, 'PAD', 'DELETE', '{\"id\":7,\"slug\":\"179830ddade4da98b542389a2b1654b3\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 20.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:49\",\"updated_at\":\"2018-05-14 18:32:49\"}', '-', '2018-05-19 21:28:39', '2018-05-19 21:28:39'),
(184, 8, 'PAD', 'DELETE', '{\"id\":6,\"slug\":\"9a0913b72dc98819ac36a5407b315ddc\",\"type\":\"projektleitung\",\"title\":\"Projektbesprechung 13.04.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-14 18:31:07\",\"updated_at\":\"2018-05-14 18:31:31\"}', '-', '2018-05-19 21:28:41', '2018-05-19 21:28:41'),
(185, 8, 'PAD', 'DELETE', '{\"id\":4,\"slug\":\"9dfc7fe6e50cc6c7be2be455cac41de0\",\"type\":\"projektleitung\",\"title\":\"Team Besprechung vom 13.05.2018\",\"done\":\"YES\",\"created_at\":\"2018-05-13 16:07:52\",\"updated_at\":\"2018-05-14 12:34:38\"}', '-', '2018-05-19 21:28:44', '2018-05-19 21:28:44'),
(186, 8, 'USER', 'CREATE', '-', '{\"name\":\"testbenutzer\",\"position_id\":\"10\",\"email\":\"test@test.de\",\"updated_at\":\"2018-05-21 20:58:41\",\"created_at\":\"2018-05-21 20:58:41\",\"id\":18}', '2018-05-21 19:58:41', '2018-05-21 19:58:41'),
(187, 8, 'USER', 'CREATE', '-', '{\"name\":\"Petrus Miller\",\"position_id\":\"4\",\"email\":\"petrus@petrus.de\",\"updated_at\":\"2018-05-22 01:37:50\",\"created_at\":\"2018-05-22 01:37:50\",\"id\":19}', '2018-05-22 00:37:50', '2018-05-22 00:37:50'),
(188, 8, 'USER', 'DELETE', '{\"id\":19,\"name\":\"Petrus Miller\",\"telefonnummer\":\"\",\"position_id\":\"4\",\"email\":\"petrus@petrus.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-22 02:37:50\",\"updated_at\":\"2018-05-22 02:37:50\"}', '-', '2018-05-23 12:34:02', '2018-05-23 12:34:02'),
(189, 8, 'SUPPORTCASES', 'CREATE', '-', '{\"type\":\"Whitelist\",\"casetype\":\"Support\",\"supporter\":\"Jack Collins\",\"spieler\":\"test\",\"scn\":\"test\",\"geschehen\":\"<p>test<\\/p>\",\"Beweise\":\"<p>test<\\/p>\",\"Entscheidung\":\"<p>test<\\/p>\",\"done\":\"YES\",\"updated_at\":\"2018-05-25 16:00:46\",\"created_at\":\"2018-05-25 16:00:46\",\"id\":14}', '2018-05-25 14:00:46', '2018-05-25 14:00:46'),
(190, 8, 'USER', 'CREATE', '-', '{\"name\":\"ScriptOase\",\"position_id\":\"2\",\"email\":\"scriptoase@scriptoase.de\",\"updated_at\":\"2018-06-14 22:41:24\",\"created_at\":\"2018-06-14 22:41:24\",\"id\":20}', '2018-06-14 20:41:24', '2018-06-14 20:41:24'),
(191, 8, 'USER', 'DELETE', '{\"id\":7,\"name\":\"Jan Lahmer\",\"telefonnummer\":\"\",\"position_id\":\"5\",\"email\":\"jan@lahmer.eu\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 14:51:52\",\"updated_at\":\"2018-05-17 23:57:18\"}', '-', '2018-06-14 20:49:59', '2018-06-14 20:49:59'),
(192, 8, 'USER', 'DELETE', '{\"id\":11,\"name\":\"Keko\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"S-Geiser@unitybox.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 20:06:23\",\"updated_at\":\"2018-05-12 20:07:58\"}', '-', '2018-06-14 20:50:03', '2018-06-14 20:50:03'),
(193, 8, 'USER', 'DELETE', '{\"id\":20,\"name\":\"ScriptOase\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"scriptoase@scriptoase.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-06-14 22:41:24\",\"updated_at\":\"2018-06-14 22:41:24\"}', '-', '2018-06-20 00:35:32', '2018-06-20 00:35:32'),
(194, 8, 'USER', 'DELETE', '{\"id\":18,\"name\":\"testbenutzer\",\"telefonnummer\":\"\",\"position_id\":\"10\",\"email\":\"test@test.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-21 21:58:41\",\"updated_at\":\"2018-05-21 21:58:41\"}', '-', '2018-06-20 00:35:35', '2018-06-20 00:35:35'),
(195, 8, 'USERS', 'EDIT', '{\"id\":8,\"name\":\"Admin\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-06-20 02:36:00\"}', '{\"id\":8,\"name\":\"Admin\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"gamer2505@gmx.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-06-20 02:36:00\"}', '2018-06-20 00:36:00', '2018-06-20 00:36:00'),
(196, 8, 'USERS', 'EDIT', '{\"id\":8,\"name\":\"Admin\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"test1234@paradise-life.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-06-20 02:36:14\"}', '{\"id\":8,\"name\":\"Admin\",\"telefonnummer\":\"\",\"position_id\":\"2\",\"email\":\"test1234@paradise-life.de\",\"account_status\":\"FREE\",\"created_at\":\"2018-05-12 17:31:48\",\"updated_at\":\"2018-06-20 02:36:14\"}', '2018-06-20 00:36:14', '2018-06-20 00:36:14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_05_09_230416_create_permission_tables', 1),
(11, '2018_05_10_091353_create_positions_table', 1),
(13, '2018_05_10_160212_create_supportcases_table', 2),
(15, '2018_05_12_112451_create_logs_table', 3),
(16, '2018_05_17_124913_create_docs_table', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(5) UNSIGNED NOT NULL,
  `model_id` int(5) UNSIGNED NOT NULL,
  `model_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_id`, `model_type`) VALUES
(1, 8, 'App\\User'),
(2, 8, 'App\\User'),
(3, 8, 'App\\User'),
(4, 8, 'App\\User'),
(5, 8, 'App\\User'),
(6, 8, 'App\\User'),
(7, 8, 'App\\User'),
(8, 8, 'App\\User'),
(9, 8, 'App\\User'),
(10, 8, 'App\\User'),
(11, 8, 'App\\User'),
(12, 8, 'App\\User'),
(13, 8, 'App\\User'),
(14, 8, 'App\\User'),
(15, 8, 'App\\User'),
(16, 8, 'App\\User'),
(17, 8, 'App\\User'),
(18, 8, 'App\\User'),
(19, 8, 'App\\User'),
(20, 8, 'App\\User'),
(21, 8, 'App\\User'),
(22, 8, 'App\\User'),
(23, 8, 'App\\User'),
(24, 8, 'App\\User'),
(25, 8, 'App\\User'),
(26, 8, 'App\\User'),
(27, 8, 'App\\User'),
(28, 8, 'App\\User');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(5) UNSIGNED NOT NULL,
  `model_id` int(5) UNSIGNED NOT NULL,
  `model_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pads`
--

CREATE TABLE `pads` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `type` enum('support','projektleitung','entwicklung') NOT NULL,
  `title` varchar(255) NOT NULL,
  `done` enum('YES','NO') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `pads`
--

INSERT INTO `pads` (`id`, `slug`, `type`, `title`, `done`, `created_at`, `updated_at`) VALUES
(5, '72aa5a70f3d87c5a46eb68dd40bcb21f', 'entwicklung', 'Entwicklung des ACP (Wünsche & aktueller Stand)', 'NO', '2018-05-13 17:31:57', '2018-05-13 17:31:57');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jan@lahmer.eu', '$2y$10$3UFcBL91HWxPCYfqfgIZLOUapgfJ8KJy.QReLTuU1RegvSjIf9kN.', '2018-05-12 15:34:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Supportfall lesen', 'web', '2018-05-12 09:20:32', '2018-05-12 09:20:32'),
(2, 'Supportfall bearbeiten', 'web', '2018-05-12 09:20:32', '2018-05-12 09:20:32'),
(3, 'Supportfall löschen', 'web', '2018-05-12 09:20:32', '2018-05-12 09:20:32'),
(4, 'Supportfall erstellen', 'web', '2018-05-12 09:20:32', '2018-05-12 09:20:32'),
(5, 'Log lesen', 'web', '2018-05-12 10:03:09', '2018-05-12 10:03:09'),
(6, 'Benutzerverwaltung lesen', 'web', '2018-05-12 10:20:43', '2018-05-12 10:20:43'),
(7, 'Benutzerverwaltung bearbeiten', 'web', '2018-05-12 10:20:43', '2018-05-12 10:20:43'),
(8, 'Benutzerverwaltung löschen', 'web', '2018-05-12 10:20:43', '2018-05-12 10:20:43'),
(9, 'Benutzerverwaltung erstellen', 'web', '2018-05-12 10:20:43', '2018-05-12 10:20:43'),
(10, 'Position lesen', 'web', '2018-05-12 12:24:12', '2018-05-12 12:24:12'),
(11, 'Position bearbeiten', 'web', '2018-05-12 12:24:12', '2018-05-12 12:24:12'),
(12, 'Position löschen', 'web', '2018-05-12 12:24:12', '2018-05-12 12:24:12'),
(13, 'Position erstellen', 'web', '2018-05-12 12:24:12', '2018-05-12 12:24:12'),
(14, 'Pad lesen', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(15, 'Pad bearbeiten', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(16, 'Pad löschen', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(17, 'Pad erstellen', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(18, 'Pad Support', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(19, 'Pad Projektleitung', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(20, 'Pad Entwicklung', 'web', '2018-05-13 12:41:29', '2018-05-13 12:41:29'),
(21, 'Watchlist lesen', 'web', '2018-05-14 21:07:00', '2018-05-14 21:07:00'),
(22, 'Watchlist bearbeiten', 'web', '2018-05-14 21:07:00', '2018-05-14 21:07:00'),
(23, 'Watchlist löschen', 'web', '2018-05-14 21:07:00', '2018-05-14 21:07:00'),
(24, 'Watchlist erstellen', 'web', '2018-05-14 21:07:00', '2018-05-14 21:07:00'),
(25, 'Docs lesen', 'web', '2018-05-17 12:09:29', '2018-05-17 12:09:29'),
(26, 'Docs bearbeiten', 'web', '2018-05-17 12:09:29', '2018-05-17 12:09:29'),
(27, 'Docs löschen', 'web', '2018-05-17 12:09:29', '2018-05-17 12:09:29'),
(28, 'Docs erstellen', 'web', '2018-05-17 12:09:29', '2018-05-17 12:09:29');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `positions`
--

INSERT INTO `positions` (`id`, `position`, `position_description`, `priority`, `created_at`, `updated_at`) VALUES
(2, 'Projektleitung', 'Ist die Spitze des Projektes und kümmert sich darum, dass alles läuft.', 10000, '2018-05-12 12:29:54', '2018-05-13 11:26:54'),
(4, 'Administration', 'Spricht stellvertretend für die Projektleitung und ist deren rechte Hand.', 9000, '2018-05-12 12:34:31', '2018-05-13 11:27:03'),
(5, 'Webentwickler', 'Kümmern sich um alle Websites von Paradise Life und um das Support Backend.', 7000, '2018-05-12 12:35:45', '2018-05-13 11:27:40'),
(6, 'Entwickler', 'Kümmern sich um neue Features für die Server und beheben bestehende Fehler.', 7000, '2018-05-12 12:36:40', '2018-05-13 11:27:31'),
(7, 'Entwicklungsleitung', 'Koordinieren die Entwickler und planen neue Features.', 8000, '2018-05-12 12:37:41', '2018-05-13 11:27:22'),
(8, 'Supportleitung', 'Leiten den Support und sind die Instanz zwischen Support und Administration bei Problemen und Beschwerden.', 6000, '2018-05-12 12:38:19', '2018-05-13 11:27:53'),
(9, 'Supporter', 'Kümmern sich um Anliegen von Spielern.', 5000, '2018-05-12 12:38:32', '2018-05-13 11:28:03'),
(10, 'Supporter Probe', 'Ist Probe Supporter und in der Probezeit als Supporter', 5000, '2018-05-12 16:06:53', '2018-05-13 11:28:09');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `supportcases`
--

CREATE TABLE `supportcases` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sonstiges',
  `casetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Support',
  `supporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spieler` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geschehen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Beweise` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Entscheidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `supportcases`
--

INSERT INTO `supportcases` (`id`, `type`, `casetype`, `supporter`, `spieler`, `scn`, `geschehen`, `Beweise`, `Entscheidung`, `done`, `created_at`, `updated_at`) VALUES
(8, 'Whitelist', 'Support', 'Jan Lahmer', 'Max Mustermann', 'MasterMaxMuster', '<p>Dies ist ein Beispiel f&uuml;r einen Supportfall</p>', '<p>Hier werden Links zu Videos und Screenshots gesammelt</p>', '<p>Entscheidungen werden hier</p>', 'YES', '2018-05-12 13:26:42', '2018-05-12 13:26:42'),
(9, 'Sonstiges', 'Support', 'Jack Collins', 'test', 'test', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'YES', '2018-05-12 16:02:15', '2018-05-12 16:02:15'),
(10, 'Sonstiges', 'Projektleitung', 'Jack Collins', 'test', 'test', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'YES', '2018-05-12 16:03:07', '2018-05-12 16:03:33'),
(11, 'Whitelist', 'Support', 'Jan Lahmer', 'Test', NULL, '<p>Test</p>', '<p></p>', '<p></p>', 'YES', '2018-05-12 16:16:29', '2018-05-12 16:16:29'),
(12, 'Sonstiges', 'Projektleitung', 'Jack Collins', 'Hans Peter', 'Hans Peter', '<p>Test</p>', '<p></p>', '<p>Test</p>', 'YES', '2018-05-12 16:28:58', '2018-05-12 16:29:42'),
(13, 'Whitelist', 'Entwickler', 'MaRvZ', 'test', 'test', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'YES', '2018-05-13 14:50:10', '2018-05-13 14:50:26'),
(14, 'Whitelist', 'Support', 'Jack Collins', 'test', 'test', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'YES', '2018-05-25 14:00:46', '2018-05-25 14:00:46');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonnummer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_status` enum('LOCKED','FREE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FREE',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `telefonnummer`, `position_id`, `email`, `account_status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Admin', '', '2', 'test1234@paradise-life.de', 'FREE', '$2y$10$XBiFTh4UHXBmubiFreuO1ut67/Ua2RZMiaMbADoh.zYufKya0XKFu', 'glBncSk1d7TPUupLlAsiXbzIXwMa1QhE6bKLPoe42N49wcnCmy5F3UXYXTUy', '2018-05-12 15:31:48', '2018-06-20 00:36:14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `watchlists`
--

CREATE TABLE `watchlists` (
  `id` int(11) NOT NULL,
  `supporter` varchar(255) NOT NULL,
  `spieler` varchar(100) NOT NULL,
  `forumname` varchar(100) NOT NULL,
  `von` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bis` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supportfallid` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `watchlists`
--

INSERT INTO `watchlists` (`id`, `supporter`, `spieler`, `forumname`, `von`, `bis`, `supportfallid`, `created_at`, `updated_at`) VALUES
(1, 'Jan Lahmer', 'Max MusterMann', 'Max MusterMann', '2018-05-14 23:41:00', '2018-05-28 00:00:00', 8, '2018-05-14 23:41:52', '2018-05-14 23:43:46'),
(2, 'Jan Lahmer', 'Maria Musterfrau', 'Maria Musterfrau', '2018-05-14 23:45:00', '2018-05-28 00:00:00', 8, '2018-05-14 23:46:13', '2018-05-14 23:46:13');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indizes für die Tabelle `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indizes für die Tabelle `pads`
--
ALTER TABLE `pads`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indizes für die Tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indizes für die Tabelle `supportcases`
--
ALTER TABLE `supportcases`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indizes für die Tabelle `watchlists`
--
ALTER TABLE `watchlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `pads`
--
ALTER TABLE `pads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT für Tabelle `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `supportcases`
--
ALTER TABLE `supportcases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `watchlists`
--
ALTER TABLE `watchlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
