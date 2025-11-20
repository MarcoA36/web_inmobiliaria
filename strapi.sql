-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2025 a las 17:13:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `strapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abouts_cmps`
--

CREATE TABLE `abouts_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'd5fd3iw9dgs31bwl2dn0ikkj', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:47.848000', '2025-11-10 04:11:47.848000', '2025-11-10 04:11:47.849000', NULL, NULL, NULL),
(2, 'hvo8j5wknyu94m6fmz5wqjhm', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:48.649000', '2025-11-10 04:11:48.649000', '2025-11-10 04:11:48.650000', NULL, NULL, NULL),
(3, 'oup4jeny5cmcltr7hjhq2xzh', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:48.743000', '2025-11-10 04:11:48.743000', '2025-11-10 04:11:48.743000', NULL, NULL, NULL),
(4, 'lnp5b1ej9wx42hvlwn3zfecd', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:48.765000', '2025-11-10 04:11:48.765000', '2025-11-10 04:11:48.765000', NULL, NULL, NULL),
(5, 'abt5tyfrwvljj80phr0i3gw1', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:48.900000', '2025-11-10 04:11:48.900000', '2025-11-10 04:11:48.901000', NULL, NULL, NULL),
(6, 'fu73eb7syh3w5rcrm3tp89b8', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:49.062000', '2025-11-10 04:11:49.062000', '2025-11-10 04:11:49.063000', NULL, NULL, NULL),
(7, 'tfphv2p9v1hxo898dmeaqv58', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:49.401000', '2025-11-10 04:11:49.401000', '2025-11-10 04:11:49.401000', NULL, NULL, NULL),
(8, 'slxlnt6gfqc9impdlla8yush', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:49.449000', '2025-11-10 04:11:49.449000', '2025-11-10 04:11:49.450000', NULL, NULL, NULL),
(9, 'l2bzptruff4ccy22hmunldf9', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:49.497000', '2025-11-10 04:11:49.497000', '2025-11-10 04:11:49.498000', NULL, NULL, NULL),
(10, 'jsb8zekrxwhvrmlqh2rypeev', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:50.250000', '2025-11-10 04:11:50.250000', '2025-11-10 04:11:50.251000', NULL, NULL, NULL),
(11, 'h0ap6n3vf7od5i63eyxvonc7', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:50.277000', '2025-11-10 04:11:50.277000', '2025-11-10 04:11:50.277000', NULL, NULL, NULL),
(12, 'po9l4ky3di0bf1oya8bwaunu', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:50.321000', '2025-11-10 04:11:50.321000', '2025-11-10 04:11:50.322000', NULL, NULL, NULL),
(13, 's45h7ldwy1h9rqfu2k5bwuqi', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:50.338000', '2025-11-10 04:11:50.338000', '2025-11-10 04:11:50.339000', NULL, NULL, NULL),
(14, 'ijx8b02bagl7emua77luh4js', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:50.358000', '2025-11-10 04:11:50.358000', '2025-11-10 04:11:50.360000', NULL, NULL, NULL),
(15, 'r3fjjk70ndb2s5qgy90o8mb6', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:50.385000', '2025-11-10 04:11:50.385000', '2025-11-10 04:11:50.386000', NULL, NULL, NULL),
(16, 'z50nbhn1guce043tgpyha424', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2025-11-10 04:11:50.400000', '2025-11-10 04:11:50.400000', '2025-11-10 04:11:50.400000', NULL, NULL, NULL),
(17, 'azuppig4lrqtxr7cm5o8ogdh', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2025-11-10 04:11:50.421000', '2025-11-10 04:11:50.421000', '2025-11-10 04:11:50.421000', NULL, NULL, NULL),
(18, 'jml0r0v7aa3zps001z8x6kga', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2025-11-10 04:11:50.440000', '2025-11-10 04:11:50.440000', '2025-11-10 04:11:50.441000', NULL, NULL, NULL),
(19, 'scrpe022l9pmhtfo25ji33l2', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2025-11-10 04:11:50.476000', '2025-11-10 04:11:50.476000', '2025-11-10 04:11:50.477000', NULL, NULL, NULL),
(20, 'xq7t1i2kl81v22abdyd87ozx', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2025-11-10 04:11:50.494000', '2025-11-10 04:11:50.494000', '2025-11-10 04:11:50.495000', NULL, NULL, NULL),
(21, 'ixfcmzb9lsxc44znh51mdnu2', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2025-11-10 04:11:50.562000', '2025-11-10 04:11:50.562000', '2025-11-10 04:11:50.563000', NULL, NULL, NULL),
(22, 'awrsreieu86t916h31m3fqeh', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2025-11-10 04:11:50.601000', '2025-11-10 04:11:50.601000', '2025-11-10 04:11:50.601000', NULL, NULL, NULL),
(23, 'h40aphi5wjcdjqzl76o51lz4', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2025-11-10 04:11:50.620000', '2025-11-10 04:11:50.620000', '2025-11-10 04:11:50.621000', NULL, NULL, NULL),
(24, 'oumknftoq0gj2gy9eslgrw02', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2025-11-10 04:11:50.638000', '2025-11-10 04:11:50.638000', '2025-11-10 04:11:50.638000', NULL, NULL, NULL),
(25, 'tx1imqmyklbukb95gf7vaurv', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2025-11-10 04:11:50.656000', '2025-11-10 04:11:50.656000', '2025-11-10 04:11:50.656000', NULL, NULL, NULL),
(26, 'i4ir3e0cxb3221e6pnkbdt64', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.675000', '2025-11-10 04:11:50.675000', '2025-11-10 04:11:50.675000', NULL, NULL, NULL),
(27, 'sellweh04li767zu7lhyrguc', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.699000', '2025-11-10 04:11:50.699000', '2025-11-10 04:11:50.699000', NULL, NULL, NULL),
(28, 'sh7h0fyubukrfvqeo51n859b', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.718000', '2025-11-10 04:11:50.718000', '2025-11-10 04:11:50.718000', NULL, NULL, NULL),
(29, 'lwb2gwsqgshyjqwqxquvjwld', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.739000', '2025-11-10 04:11:50.739000', '2025-11-10 04:11:50.740000', NULL, NULL, NULL),
(30, 'wuctlig5p18mowqf66kiv4vk', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.806000', '2025-11-10 04:11:50.806000', '2025-11-10 04:11:50.806000', NULL, NULL, NULL),
(31, 'c8um5n46ncsll2eedol86kv0', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-11-10 04:11:50.833000', '2025-11-10 04:11:50.833000', '2025-11-10 04:11:50.834000', NULL, NULL, NULL),
(32, 'bm0c03fgjqn1v26uj8mbrnku', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.888000', '2025-11-10 04:11:50.888000', '2025-11-10 04:11:50.888000', NULL, NULL, NULL),
(33, 'tegij9hrbwblb66syy7zn2pq', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.918000', '2025-11-10 04:11:50.918000', '2025-11-10 04:11:50.919000', NULL, NULL, NULL),
(34, 'kqqljbanp0p3e3nxexqnpz1j', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.938000', '2025-11-10 04:11:50.938000', '2025-11-10 04:11:50.938000', NULL, NULL, NULL),
(35, 'mme9w6xwq1sp6wqao09kc4ji', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.964000', '2025-11-10 04:11:50.964000', '2025-11-10 04:11:50.964000', NULL, NULL, NULL),
(36, 'h7w64ex7ihmyr8gct4luvh9l', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.983000', '2025-11-10 04:11:50.983000', '2025-11-10 04:11:50.983000', NULL, NULL, NULL),
(37, 'oihzo0fwuj76d5iie1103ti7', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:50.997000', '2025-11-10 04:11:50.997000', '2025-11-10 04:11:50.998000', NULL, NULL, NULL),
(38, 'xsbfk79oin5vmueevkbfv8z7', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.014000', '2025-11-10 04:11:51.014000', '2025-11-10 04:11:51.015000', NULL, NULL, NULL),
(39, 'kj55xxtj9g32nvvdd49k7isk', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.030000', '2025-11-10 04:11:51.030000', '2025-11-10 04:11:51.030000', NULL, NULL, NULL),
(40, 'z0cm1skt35ec4kc805htk6j0', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.042000', '2025-11-10 04:11:51.042000', '2025-11-10 04:11:51.042000', NULL, NULL, NULL),
(41, 'ctq2v8klx2ve9cqzmlxka8yp', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.058000', '2025-11-10 04:11:51.058000', '2025-11-10 04:11:51.059000', NULL, NULL, NULL),
(42, 'asyl7y1qlegg4k9bmxckgozz', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.073000', '2025-11-10 04:11:51.073000', '2025-11-10 04:11:51.073000', NULL, NULL, NULL),
(43, 'or2xc4ol8urg34myf7h0cwzr', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.092000', '2025-11-10 04:11:51.092000', '2025-11-10 04:11:51.092000', NULL, NULL, NULL),
(44, 'baf5cgshse05w92y6oawhnzd', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.107000', '2025-11-10 04:11:51.107000', '2025-11-10 04:11:51.107000', NULL, NULL, NULL),
(45, 'q5kbq4dslv0isaub2qyp2zer', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.119000', '2025-11-10 04:11:51.119000', '2025-11-10 04:11:51.119000', NULL, NULL, NULL),
(46, 'pmktyxscz3r7wl9y63upnp6a', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.131000', '2025-11-10 04:11:51.131000', '2025-11-10 04:11:51.132000', NULL, NULL, NULL),
(47, 'mc5uecq8wfuwflshvvc93fpq', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.150000', '2025-11-10 04:11:51.150000', '2025-11-10 04:11:51.151000', NULL, NULL, NULL),
(48, 'jz0931y9jdw3fquv09rfvhrn', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.163000', '2025-11-10 04:11:51.163000', '2025-11-10 04:11:51.163000', NULL, NULL, NULL),
(49, 'hmzw4z1sqhy3n1e5b1wwcj7t', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.175000', '2025-11-10 04:11:51.175000', '2025-11-10 04:11:51.175000', NULL, NULL, NULL),
(50, 'kp2ecu0tqiq2ca3odl9s6un3', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.189000', '2025-11-10 04:11:51.189000', '2025-11-10 04:11:51.189000', NULL, NULL, NULL),
(51, 'qvhcci3ioclhuvxy6meg414m', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.233000', '2025-11-10 04:11:51.233000', '2025-11-10 04:11:51.234000', NULL, NULL, NULL),
(52, 'cri0axm8r9znk5bv9drgabx7', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.249000', '2025-11-10 04:11:51.249000', '2025-11-10 04:11:51.249000', NULL, NULL, NULL),
(53, 'wu5ma5z9i2f3hn6x3a5ipg0t', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.264000', '2025-11-10 04:11:51.264000', '2025-11-10 04:11:51.264000', NULL, NULL, NULL),
(54, 'tze6n8rilg7i8milehxnu7yb', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.283000', '2025-11-10 04:11:51.283000', '2025-11-10 04:11:51.284000', NULL, NULL, NULL),
(55, 'p9a05yk19augdc2m6an5qpdn', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2025-11-10 04:11:51.298000', '2025-11-10 04:11:51.298000', '2025-11-10 04:11:51.298000', NULL, NULL, NULL),
(56, 'fo2jrmrydsbkz1jw1lbh03yb', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.313000', '2025-11-10 04:11:51.313000', '2025-11-10 04:11:51.314000', NULL, NULL, NULL),
(57, 'xvadbry2pxkruga3jhq9nwgg', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.325000', '2025-11-10 04:11:51.325000', '2025-11-10 04:11:51.326000', NULL, NULL, NULL),
(58, 'zip72ddewqvzu1sjbh8ek0am', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-11-10 04:11:51.451000', '2025-11-10 04:11:51.451000', '2025-11-10 04:11:51.452000', NULL, NULL, NULL),
(59, 'k7vbdanm3j4hg7bt68ut9snh', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.472000', '2025-11-10 04:11:51.472000', '2025-11-10 04:11:51.472000', NULL, NULL, NULL),
(60, 't9utxim8hglbl467h1742419', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.486000', '2025-11-10 04:11:51.486000', '2025-11-10 04:11:51.486000', NULL, NULL, NULL),
(61, 'd00nlioocej969hsx7vz40cv', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:51.498000', '2025-11-10 04:11:51.498000', '2025-11-10 04:11:51.499000', NULL, NULL, NULL),
(62, 'wjfnluk5ufyt7mggiltmktwx', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:51.509000', '2025-11-10 04:11:51.509000', '2025-11-10 04:11:51.509000', NULL, NULL, NULL),
(63, 'pktmigwka33g9xmg0wkcuhuk', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:51.521000', '2025-11-10 04:11:51.521000', '2025-11-10 04:11:51.521000', NULL, NULL, NULL),
(64, 'jgz02k5cv7l6oz4um3lgyei8', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-11-10 04:11:51.536000', '2025-11-10 04:11:51.536000', '2025-11-10 04:11:51.536000', NULL, NULL, NULL),
(65, 'iuto6bnj5aynfut5k1t8p8f4', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.552000', '2025-11-10 04:11:51.552000', '2025-11-10 04:11:51.552000', NULL, NULL, NULL),
(66, 'gjtq1tjbfr0jxr109znhtfqu', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.564000', '2025-11-10 04:11:51.564000', '2025-11-10 04:11:51.564000', NULL, NULL, NULL),
(67, 'w8liibjxshf4k4rgnocjavf5', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:51.575000', '2025-11-10 04:11:51.575000', '2025-11-10 04:11:51.576000', NULL, NULL, NULL),
(68, 'ha8sscfwzvcw79lnlho6sa0x', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:51.588000', '2025-11-10 04:11:51.588000', '2025-11-10 04:11:51.588000', NULL, NULL, NULL),
(69, 'qfzopf9z67n2ogtwp9sdzw0l', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:51.599000', '2025-11-10 04:11:51.599000', '2025-11-10 04:11:51.599000', NULL, NULL, NULL),
(70, 'bd5m3467gyj86w0hr6wvx092', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-11-10 04:11:51.611000', '2025-11-10 04:11:51.611000', '2025-11-10 04:11:51.611000', NULL, NULL, NULL),
(71, 'oacand37npf83j4yfa9n861q', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.626000', '2025-11-10 04:11:51.626000', '2025-11-10 04:11:51.626000', NULL, NULL, NULL),
(72, 'ualxptb8fcmnfmzf876fhamk', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2025-11-10 04:11:51.641000', '2025-11-10 04:11:51.641000', '2025-11-10 04:11:51.641000', NULL, NULL, NULL),
(73, 'rx6so7x2bdr9ra6935212dj2', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2025-11-10 04:11:51.653000', '2025-11-10 04:11:51.653000', '2025-11-10 04:11:51.653000', NULL, NULL, NULL),
(74, 's3gexxbdv63xz6h3r8rnknop', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2025-11-10 04:11:51.666000', '2025-11-10 04:11:51.666000', '2025-11-10 04:11:51.666000', NULL, NULL, NULL),
(75, 'bfhhlfyrn8w8adiviu5bpbut', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2025-11-10 04:11:51.677000', '2025-11-10 04:11:51.677000', '2025-11-10 04:11:51.678000', NULL, NULL, NULL),
(76, 'al0oaxerlgsi0g2eshgfbans', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2025-11-10 04:11:51.693000', '2025-11-10 04:11:51.693000', '2025-11-10 04:11:51.693000', NULL, NULL, NULL),
(77, 'aqpl156ixcenexpza3m5e6lc', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2025-11-10 04:11:51.707000', '2025-11-10 04:11:51.707000', '2025-11-10 04:11:51.707000', NULL, NULL, NULL),
(78, 'xfdzcc7os9w9qztwrr8q8pzg', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2025-11-10 04:11:51.720000', '2025-11-10 04:11:51.720000', '2025-11-10 04:11:51.721000', NULL, NULL, NULL),
(79, 'hmewud0dki9n1adyelpz4lmt', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2025-11-10 04:11:51.734000', '2025-11-10 04:11:51.734000', '2025-11-10 04:11:51.735000', NULL, NULL, NULL),
(80, 'bd40yxp43du189c5oa07pnnh', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2025-11-10 04:11:51.747000', '2025-11-10 04:11:51.747000', '2025-11-10 04:11:51.748000', NULL, NULL, NULL),
(81, 'cbnqwf8nq1s1dpi18afjylpc', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2025-11-10 04:11:51.759000', '2025-11-10 04:11:51.759000', '2025-11-10 04:11:51.759000', NULL, NULL, NULL),
(82, 'c57aeeyyt2tljrgo8n930359', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2025-11-10 04:11:51.769000', '2025-11-10 04:11:51.769000', '2025-11-10 04:11:51.770000', NULL, NULL, NULL),
(83, 're643jm8re8r0r4u6xm0wkbj', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2025-11-10 04:11:51.784000', '2025-11-10 04:11:51.784000', '2025-11-10 04:11:51.784000', NULL, NULL, NULL),
(84, 'ikmyunakkm2cjoaaflsueba0', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2025-11-10 04:11:51.797000', '2025-11-10 04:11:51.797000', '2025-11-10 04:11:51.797000', NULL, NULL, NULL),
(85, 'yl5xyw7yc0tl6nr02hto1m34', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2025-11-10 04:11:51.814000', '2025-11-10 04:11:51.814000', '2025-11-10 04:11:51.814000', NULL, NULL, NULL),
(86, 'at0wz5kk6ixit7eig75zbmey', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2025-11-10 04:11:51.824000', '2025-11-10 04:11:51.824000', '2025-11-10 04:11:51.825000', NULL, NULL, NULL),
(87, 'fb7w07msbcncg52iylpwtmi1', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2025-11-10 04:11:51.837000', '2025-11-10 04:11:51.837000', '2025-11-10 04:11:51.837000', NULL, NULL, NULL),
(88, 'burs5w0ebhpazqn3qkuri4ad', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.848000', '2025-11-10 04:11:51.848000', '2025-11-10 04:11:51.848000', NULL, NULL, NULL),
(89, 'ara6kduz3bvszbvny7ry48y0', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.859000', '2025-11-10 04:11:51.859000', '2025-11-10 04:11:51.859000', NULL, NULL, NULL),
(90, 'i7y5jh7jsttiguysn7rdb60p', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.870000', '2025-11-10 04:11:51.870000', '2025-11-10 04:11:51.870000', NULL, NULL, NULL),
(91, 'sjq5d2qxivhsa5ffn84pnhxn', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.887000', '2025-11-10 04:11:51.887000', '2025-11-10 04:11:51.887000', NULL, NULL, NULL),
(92, 'uuxj0yd2lucyx75q01zeye19', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.899000', '2025-11-10 04:11:51.899000', '2025-11-10 04:11:51.900000', NULL, NULL, NULL),
(93, 'tzmqheto09jmomx6u9rkhtbo', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.937000', '2025-11-10 04:11:51.937000', '2025-11-10 04:11:51.938000', NULL, NULL, NULL),
(94, 'q33qy39airzkfuevp1yjss6j', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.960000', '2025-11-10 04:11:51.960000', '2025-11-10 04:11:51.961000', NULL, NULL, NULL),
(95, 'pqlbfnimz8ybeiw0qg9hslfg', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.977000', '2025-11-10 04:11:51.977000', '2025-11-10 04:11:51.978000', NULL, NULL, NULL),
(96, 'bzyf4jy54v3v53xvmj85lyk7', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2025-11-10 04:11:51.990000', '2025-11-10 04:11:51.990000', '2025-11-10 04:11:51.991000', NULL, NULL, NULL),
(97, 'zhh9lenm6s288q1v1qbt1vec', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.002000', '2025-11-10 04:11:52.002000', '2025-11-10 04:11:52.003000', NULL, NULL, NULL),
(98, 'ajvgpfrtptt1whkcitb6imyx', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.019000', '2025-11-10 04:11:52.019000', '2025-11-10 04:11:52.019000', NULL, NULL, NULL),
(99, 'xbvfslgxhq6too14fpqmorv4', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.033000', '2025-11-10 04:11:52.033000', '2025-11-10 04:11:52.033000', NULL, NULL, NULL),
(100, 'i9r34j5k0907nrhk8hnad4do', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.077000', '2025-11-10 04:11:52.077000', '2025-11-10 04:11:52.077000', NULL, NULL, NULL),
(101, 'ui5phuzsv9ai738qw0n5lvyi', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.102000', '2025-11-10 04:11:52.102000', '2025-11-10 04:11:52.102000', NULL, NULL, NULL),
(102, 'mngizj8ezcnf6jh1e68ta1ou', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.120000', '2025-11-10 04:11:52.120000', '2025-11-10 04:11:52.121000', NULL, NULL, NULL),
(103, 't7thpz0vah7z4ip6t8ajax9a', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.134000', '2025-11-10 04:11:52.134000', '2025-11-10 04:11:52.134000', NULL, NULL, NULL),
(104, 'b4813yg9qnqwky44d3bgohkh', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.148000', '2025-11-10 04:11:52.148000', '2025-11-10 04:11:52.148000', NULL, NULL, NULL),
(105, 'sadt6i3bpic5dytj6esf1lj6', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.159000', '2025-11-10 04:11:52.159000', '2025-11-10 04:11:52.160000', NULL, NULL, NULL),
(106, 'kkh00y61hr1pkue2dg1bns44', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.170000', '2025-11-10 04:11:52.170000', '2025-11-10 04:11:52.171000', NULL, NULL, NULL),
(107, 'qod2inxia7ke2hr9xrw0sf54', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.183000', '2025-11-10 04:11:52.183000', '2025-11-10 04:11:52.183000', NULL, NULL, NULL),
(108, 'y9xhvwp8yqlxio1mlgjss19j', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.194000', '2025-11-10 04:11:52.194000', '2025-11-10 04:11:52.194000', NULL, NULL, NULL),
(109, 'rnzfr4qj1fqlda7nontei32q', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.208000', '2025-11-10 04:11:52.208000', '2025-11-10 04:11:52.208000', NULL, NULL, NULL),
(110, 'xzyail71wrpmm44xvfwqzt8i', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.221000', '2025-11-10 04:11:52.221000', '2025-11-10 04:11:52.222000', NULL, NULL, NULL),
(111, 'bmjlnbx2pm3ceetgwlbebm6g', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.236000', '2025-11-10 04:11:52.236000', '2025-11-10 04:11:52.236000', NULL, NULL, NULL),
(112, 's0ldoplpjj28c8as1ku04e3h', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.254000', '2025-11-10 04:11:52.254000', '2025-11-10 04:11:52.257000', NULL, NULL, NULL),
(113, 'ikqg341oe2gwn4nzdkev5v0e', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.275000', '2025-11-10 04:11:52.275000', '2025-11-10 04:11:52.276000', NULL, NULL, NULL),
(114, 'rjiq36df9b4s2b8ieit254zv', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.299000', '2025-11-10 04:11:52.299000', '2025-11-10 04:11:52.300000', NULL, NULL, NULL),
(115, 'tkm2voshmibemj787ezjxlub', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.316000', '2025-11-10 04:11:52.316000', '2025-11-10 04:11:52.317000', NULL, NULL, NULL),
(116, 'n5v9l3ve16r7bcu58skco76s', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.328000', '2025-11-10 04:11:52.328000', '2025-11-10 04:11:52.328000', NULL, NULL, NULL),
(117, 'x8qf1i83cnhqqfzbxeoocpy4', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.341000', '2025-11-10 04:11:52.341000', '2025-11-10 04:11:52.341000', NULL, NULL, NULL),
(118, 'tq0gy9cbry833ma0tthhbfn9', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.358000', '2025-11-10 04:11:52.358000', '2025-11-10 04:11:52.358000', NULL, NULL, NULL),
(119, 'd8oylibisoqzh0b1rlunf367', 'admin::users.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.371000', '2025-11-10 04:11:52.371000', '2025-11-10 04:11:52.372000', NULL, NULL, NULL),
(120, 'rme96ez6x7lanc9ws772h0ie', 'admin::users.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.385000', '2025-11-10 04:11:52.385000', '2025-11-10 04:11:52.385000', NULL, NULL, NULL),
(121, 'j83ydl94qq7tce20djsihkct', 'admin::users.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.397000', '2025-11-10 04:11:52.397000', '2025-11-10 04:11:52.398000', NULL, NULL, NULL),
(122, 'cc7ioh91h2x1spxmk6iv4tgo', 'admin::users.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.409000', '2025-11-10 04:11:52.409000', '2025-11-10 04:11:52.410000', NULL, NULL, NULL),
(123, 'jal8g45v5eeh8yun5shc87dk', 'admin::roles.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.421000', '2025-11-10 04:11:52.421000', '2025-11-10 04:11:52.421000', NULL, NULL, NULL),
(124, 'g3hx8zeet2hge9no04zevhor', 'admin::roles.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.436000', '2025-11-10 04:11:52.436000', '2025-11-10 04:11:52.436000', NULL, NULL, NULL),
(125, 'wo22igyezwcs9g4un5digfai', 'admin::roles.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.450000', '2025-11-10 04:11:52.450000', '2025-11-10 04:11:52.450000', NULL, NULL, NULL),
(126, 'azenzlmt93gem03nnvtan4rb', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.461000', '2025-11-10 04:11:52.461000', '2025-11-10 04:11:52.462000', NULL, NULL, NULL),
(127, 'emqlt378j1wfc6bvzur66l0o', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.475000', '2025-11-10 04:11:52.475000', '2025-11-10 04:11:52.475000', NULL, NULL, NULL),
(128, 'p39lutpmm11sbpggmje9c0cl', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.489000', '2025-11-10 04:11:52.489000', '2025-11-10 04:11:52.489000', NULL, NULL, NULL),
(129, 'ckv6zvwedptfmiu165i7a6h0', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.503000', '2025-11-10 04:11:52.503000', '2025-11-10 04:11:52.503000', NULL, NULL, NULL),
(130, 's90ov58w8u6q0od67fw0wyuz', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.519000', '2025-11-10 04:11:52.519000', '2025-11-10 04:11:52.519000', NULL, NULL, NULL),
(131, 'q1031xxm4roppry1zrgn18rt', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.531000', '2025-11-10 04:11:52.531000', '2025-11-10 04:11:52.532000', NULL, NULL, NULL),
(132, 'ezt6wzd34h9t2zrti12mmnxj', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.542000', '2025-11-10 04:11:52.542000', '2025-11-10 04:11:52.542000', NULL, NULL, NULL),
(133, 'yu0iicd92g7y9uvz0e7wts6u', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.554000', '2025-11-10 04:11:52.554000', '2025-11-10 04:11:52.554000', NULL, NULL, NULL),
(134, 'q80cwklj6aap3jcwnclexpk0', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.565000', '2025-11-10 04:11:52.565000', '2025-11-10 04:11:52.565000', NULL, NULL, NULL),
(135, 'k1q8dfmw3qvj76x5c4qhmtmq', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.576000', '2025-11-10 04:11:52.576000', '2025-11-10 04:11:52.577000', NULL, NULL, NULL),
(136, 'xu5r3bygyb99hh8z3x1gyxao', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.590000', '2025-11-10 04:11:52.590000', '2025-11-10 04:11:52.591000', NULL, NULL, NULL),
(137, 'nwcm2j97dsd6b3an1y1spd45', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.607000', '2025-11-10 04:11:52.607000', '2025-11-10 04:11:52.607000', NULL, NULL, NULL),
(138, 'j9hl91bbs555vtf6cxv8i2el', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.619000', '2025-11-10 04:11:52.619000', '2025-11-10 04:11:52.619000', NULL, NULL, NULL),
(139, 'ly8uwd1fxyomrgwztv5rauk6', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.633000', '2025-11-10 04:11:52.633000', '2025-11-10 04:11:52.633000', NULL, NULL, NULL),
(140, 'b0p3pa9jdxnbss4xfm13ddx8', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2025-11-10 04:11:52.647000', '2025-11-10 04:11:52.647000', '2025-11-10 04:11:52.648000', NULL, NULL, NULL),
(144, 'lzhccgylr78ip5fiohz62mgm', 'plugin::content-manager.explorer.delete', '{}', 'api::home.home', '{}', '[]', '2025-11-11 12:28:49.057000', '2025-11-11 12:28:49.057000', '2025-11-11 12:28:49.058000', NULL, NULL, NULL),
(145, 'urycs1ypd1tpn30q0m3lcpej', 'plugin::content-manager.explorer.publish', '{}', 'api::home.home', '{}', '[]', '2025-11-11 12:28:49.080000', '2025-11-11 12:28:49.080000', '2025-11-11 12:28:49.080000', NULL, NULL, NULL),
(151, 'itcjqfowpjh7cwypucosl3vc', 'plugin::content-manager.explorer.create', '{}', 'api::home.home', '{\"fields\":[\"title\",\"subtitle\",\"image\"]}', '[]', '2025-11-12 02:16:07.264000', '2025-11-12 02:16:07.264000', '2025-11-12 02:16:07.266000', NULL, NULL, NULL),
(152, 'ndriasp23ateyn3umy9067ry', 'plugin::content-manager.explorer.read', '{}', 'api::home.home', '{\"fields\":[\"title\",\"subtitle\",\"image\"]}', '[]', '2025-11-12 02:16:07.310000', '2025-11-12 02:16:07.310000', '2025-11-12 02:16:07.311000', NULL, NULL, NULL),
(153, 'qimj0zyyijbyecgi37ps12cu', 'plugin::content-manager.explorer.update', '{}', 'api::home.home', '{\"fields\":[\"title\",\"subtitle\",\"image\"]}', '[]', '2025-11-12 02:16:07.340000', '2025-11-12 02:16:07.340000', '2025-11-12 02:16:07.341000', NULL, NULL, NULL),
(157, 'dleunrjt29lrqyzkm4ib52b5', 'plugin::content-manager.explorer.delete', '{}', 'api::property.property', '{\"locales\":[\"en\",\"es-419\"]}', '[]', '2025-11-12 13:27:48.010000', '2025-11-12 13:27:48.010000', '2025-11-12 13:27:48.011000', NULL, NULL, NULL),
(158, 'usu5g218y8ki6xbkny1kd70y', 'plugin::content-manager.explorer.publish', '{}', 'api::property.property', '{\"locales\":[\"en\",\"es-419\"]}', '[]', '2025-11-12 13:27:48.037000', '2025-11-12 13:27:48.037000', '2025-11-12 13:27:48.038000', NULL, NULL, NULL),
(159, 'yjvyr074u0exyr6eimyj8nid', 'plugin::content-manager.explorer.create', '{}', 'api::property.property', '{\"fields\":[\"title\",\"slug\",\"type\",\"address\",\"city\",\"price\",\"description\",\"images\",\"featured\",\"bedrooms\",\"bathrooms\",\"area\"],\"locales\":[\"en\",\"es-419\"]}', '[]', '2025-11-16 15:59:28.489000', '2025-11-16 15:59:28.489000', '2025-11-16 15:59:28.491000', NULL, NULL, NULL),
(160, 'm1r7w2cas4y24v6scdsdvz4c', 'plugin::content-manager.explorer.read', '{}', 'api::property.property', '{\"fields\":[\"title\",\"slug\",\"type\",\"address\",\"city\",\"price\",\"description\",\"images\",\"featured\",\"bedrooms\",\"bathrooms\",\"area\"],\"locales\":[\"en\",\"es-419\"]}', '[]', '2025-11-16 15:59:28.523000', '2025-11-16 15:59:28.523000', '2025-11-16 15:59:28.524000', NULL, NULL, NULL),
(161, 'qh9y6j0aepw185cen40bc1ab', 'plugin::content-manager.explorer.update', '{}', 'api::property.property', '{\"fields\":[\"title\",\"slug\",\"type\",\"address\",\"city\",\"price\",\"description\",\"images\",\"featured\",\"bedrooms\",\"bathrooms\",\"area\"],\"locales\":[\"en\",\"es-419\"]}', '[]', '2025-11-16 15:59:28.546000', '2025-11-16 15:59:28.546000', '2025-11-16 15:59:28.547000', NULL, NULL, NULL),
(165, 'z1lutsqvm5oqva1y61hub3p7', 'plugin::content-manager.explorer.delete', '{}', 'api::contact-message.contact-message', '{}', '[]', '2025-11-16 23:15:25.570000', '2025-11-16 23:15:25.570000', '2025-11-16 23:15:25.571000', NULL, NULL, NULL),
(166, 'x9rpa16v4be0tg3s67fyitmm', 'plugin::content-manager.explorer.publish', '{}', 'api::contact-message.contact-message', '{}', '[]', '2025-11-16 23:15:25.606000', '2025-11-16 23:15:25.606000', '2025-11-16 23:15:25.607000', NULL, NULL, NULL),
(173, 'fjx7turuuobhcfdyytix3pdt', 'plugin::content-manager.explorer.create', '{}', 'api::contact-message.contact-message', '{\"fields\":[\"name\",\"email\",\"phone\",\"message\"]}', '[]', '2025-11-17 12:49:04.145000', '2025-11-17 12:49:04.145000', '2025-11-17 12:49:04.147000', NULL, NULL, NULL),
(174, 's8xd5x1r98vbshtc976x557k', 'plugin::content-manager.explorer.read', '{}', 'api::contact-message.contact-message', '{\"fields\":[\"name\",\"email\",\"phone\",\"message\"]}', '[]', '2025-11-17 12:49:04.180000', '2025-11-17 12:49:04.180000', '2025-11-17 12:49:04.181000', NULL, NULL, NULL),
(175, 'kul0tsxkb89y63aqx3sue5tg', 'plugin::content-manager.explorer.update', '{}', 'api::contact-message.contact-message', '{\"fields\":[\"name\",\"email\",\"phone\",\"message\"]}', '[]', '2025-11-17 12:49:04.220000', '2025-11-17 12:49:04.220000', '2025-11-17 12:49:04.221000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(11, 11, 2, 11),
(12, 12, 2, 12),
(13, 13, 2, 13),
(14, 14, 2, 14),
(15, 15, 2, 15),
(16, 16, 2, 16),
(17, 17, 2, 17),
(18, 18, 2, 18),
(19, 19, 2, 19),
(20, 20, 2, 20),
(21, 21, 2, 21),
(22, 22, 2, 22),
(23, 23, 2, 23),
(24, 24, 2, 24),
(25, 25, 2, 25),
(26, 26, 2, 26),
(27, 27, 2, 27),
(28, 28, 2, 28),
(29, 29, 2, 29),
(30, 30, 2, 30),
(31, 31, 2, 31),
(32, 32, 3, 1),
(33, 33, 3, 2),
(34, 34, 3, 3),
(35, 35, 3, 4),
(36, 36, 3, 5),
(37, 37, 3, 6),
(38, 38, 3, 7),
(39, 39, 3, 8),
(40, 40, 3, 9),
(41, 41, 3, 10),
(42, 42, 3, 11),
(43, 43, 3, 12),
(44, 44, 3, 13),
(45, 45, 3, 14),
(46, 46, 3, 15),
(47, 47, 3, 16),
(48, 48, 3, 17),
(49, 49, 3, 18),
(50, 50, 3, 19),
(51, 51, 3, 20),
(52, 52, 3, 21),
(53, 53, 3, 22),
(54, 54, 3, 23),
(55, 55, 3, 24),
(56, 56, 3, 25),
(57, 57, 3, 26),
(58, 58, 1, 1),
(59, 59, 1, 2),
(60, 60, 1, 3),
(61, 61, 1, 4),
(62, 62, 1, 5),
(63, 63, 1, 6),
(64, 64, 1, 7),
(65, 65, 1, 8),
(66, 66, 1, 9),
(67, 67, 1, 10),
(68, 68, 1, 11),
(69, 69, 1, 12),
(70, 70, 1, 13),
(71, 71, 1, 14),
(72, 72, 1, 15),
(73, 73, 1, 16),
(74, 74, 1, 17),
(75, 75, 1, 18),
(76, 76, 1, 19),
(77, 77, 1, 20),
(78, 78, 1, 21),
(79, 79, 1, 22),
(80, 80, 1, 23),
(81, 81, 1, 24),
(82, 82, 1, 25),
(83, 83, 1, 26),
(84, 84, 1, 27),
(85, 85, 1, 28),
(86, 86, 1, 29),
(87, 87, 1, 30),
(88, 88, 1, 31),
(89, 89, 1, 32),
(90, 90, 1, 33),
(91, 91, 1, 34),
(92, 92, 1, 35),
(93, 93, 1, 36),
(94, 94, 1, 37),
(95, 95, 1, 38),
(96, 96, 1, 39),
(97, 97, 1, 40),
(98, 98, 1, 41),
(99, 99, 1, 42),
(100, 100, 1, 43),
(101, 101, 1, 44),
(102, 102, 1, 45),
(103, 103, 1, 46),
(104, 104, 1, 47),
(105, 105, 1, 48),
(106, 106, 1, 49),
(107, 107, 1, 50),
(108, 108, 1, 51),
(109, 109, 1, 52),
(110, 110, 1, 53),
(111, 111, 1, 54),
(112, 112, 1, 55),
(113, 113, 1, 56),
(114, 114, 1, 57),
(115, 115, 1, 58),
(116, 116, 1, 59),
(117, 117, 1, 60),
(118, 118, 1, 61),
(119, 119, 1, 62),
(120, 120, 1, 63),
(121, 121, 1, 64),
(122, 122, 1, 65),
(123, 123, 1, 66),
(124, 124, 1, 67),
(125, 125, 1, 68),
(126, 126, 1, 69),
(127, 127, 1, 70),
(128, 128, 1, 71),
(129, 129, 1, 72),
(130, 130, 1, 73),
(131, 131, 1, 74),
(132, 132, 1, 75),
(133, 133, 1, 76),
(134, 134, 1, 77),
(135, 135, 1, 78),
(136, 136, 1, 79),
(137, 137, 1, 80),
(138, 138, 1, 81),
(139, 139, 1, 82),
(140, 140, 1, 83),
(144, 144, 1, 87),
(145, 145, 1, 88),
(151, 151, 1, 89),
(152, 152, 1, 90),
(153, 153, 1, 91),
(157, 157, 1, 95),
(158, 158, 1, 96),
(159, 159, 1, 97),
(160, 160, 1, 98),
(161, 161, 1, 99),
(165, 165, 1, 103),
(166, 166, 1, 104),
(173, 173, 1, 105),
(174, 174, 1, 106),
(175, 175, 1, 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'uolsxvs3lt2nhfgtjhgqbvgh', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2025-11-10 04:11:47.717000', '2025-11-10 04:11:47.717000', '2025-11-10 04:11:47.718000', NULL, NULL, NULL),
(2, 'xw32th97rqeopd20hsc2lcnw', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2025-11-10 04:11:47.769000', '2025-11-11 13:17:07.937000', '2025-11-10 04:11:47.769000', NULL, NULL, NULL),
(3, 'j4jzwp4ybohz2qngv0595bui', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2025-11-10 04:11:47.800000', '2025-11-11 13:16:52.218000', '2025-11-10 04:11:47.800000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'i7yydjkp532j6ws28g9zksmr', 'Marco', 'Amaolo', NULL, 'marco_95_5@yahoo.com', '$2a$10$JZS5cTNTQXWQFYKspuB42.ZtZ2sXdo5YGMbd9GBHhTIaqcy8KpTMK', NULL, NULL, 1, 0, NULL, '2025-11-10 04:13:44.684000', '2025-11-10 04:13:44.684000', '2025-11-10 04:13:44.685000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_author_lnk`
--

CREATE TABLE `articles_author_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_category_lnk`
--

CREATE TABLE `articles_category_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_cmps`
--

CREATE TABLE `articles_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_shared_media`
--

CREATE TABLE `components_shared_media` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_shared_quotes`
--

CREATE TABLE `components_shared_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_shared_rich_texts`
--

CREATE TABLE `components_shared_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `components_shared_sliders`
--

CREATE TABLE `components_shared_sliders` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `document_id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `message`) VALUES
(5, 'h38ppun5hvv96tc2r1v891z3', 'Marco Amaolo', 'marco_95_5@yahoo.com', '02284656640', '2025-11-17 12:49:59.258000', '2025-11-17 12:49:59.258000', NULL, NULL, NULL, NULL, 'Hola como estas? queria saber mas informacion de la propiedad de barrio jardin'),
(6, 'h38ppun5hvv96tc2r1v891z3', 'Marco Amaolo', 'marco_95_5@yahoo.com', '02284656640', '2025-11-17 12:49:59.258000', '2025-11-17 12:49:59.258000', '2025-11-17 12:49:59.285000', NULL, NULL, NULL, 'Hola como estas? queria saber mas informacion de la propiedad de barrio jardin'),
(7, 'g4n2ozhdu6upejho7b9oulmy', 'Marco Amaolo', 'marco_95_5@yahoo.com', '02284656640', '2025-11-17 13:00:06.499000', '2025-11-17 13:00:06.499000', NULL, NULL, NULL, NULL, 'holaaa'),
(8, 'g4n2ozhdu6upejho7b9oulmy', 'Marco Amaolo', 'marco_95_5@yahoo.com', '02284656640', '2025-11-17 13:00:06.499000', '2025-11-17 13:00:06.499000', '2025-11-17 13:00:06.507000', NULL, NULL, NULL, 'holaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'eymjnvahv98vnlcfc1xgz1bl', 'inmobiliaria-image.jpg', NULL, NULL, 1280, 976, '{\"thumbnail\":{\"name\":\"thumbnail_inmobiliaria-image.jpg\",\"hash\":\"thumbnail_inmobiliaria_image_cfe4ba4835\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":205,\"height\":156,\"size\":7.86,\"sizeInBytes\":7863,\"url\":\"/uploads/thumbnail_inmobiliaria_image_cfe4ba4835.jpg\"},\"small\":{\"name\":\"small_inmobiliaria-image.jpg\",\"hash\":\"small_inmobiliaria_image_cfe4ba4835\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":381,\"size\":42.97,\"sizeInBytes\":42973,\"url\":\"/uploads/small_inmobiliaria_image_cfe4ba4835.jpg\"},\"medium\":{\"name\":\"medium_inmobiliaria-image.jpg\",\"hash\":\"medium_inmobiliaria_image_cfe4ba4835\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":572,\"size\":99.47,\"sizeInBytes\":99472,\"url\":\"/uploads/medium_inmobiliaria_image_cfe4ba4835.jpg\"},\"large\":{\"name\":\"large_inmobiliaria-image.jpg\",\"hash\":\"large_inmobiliaria_image_cfe4ba4835\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":763,\"size\":179.32,\"sizeInBytes\":179322,\"url\":\"/uploads/large_inmobiliaria_image_cfe4ba4835.jpg\"}}', 'inmobiliaria_image_cfe4ba4835', '.jpg', 'image/jpeg', 286.52, '/uploads/inmobiliaria_image_cfe4ba4835.jpg', NULL, 'local', NULL, '/', '2025-11-12 11:39:46.277000', '2025-11-13 02:16:04.499000', '2025-11-12 11:39:46.292000', 1, 1, NULL),
(2, 'u7tyswsj39zknla7xe2fa9wm', 'inmobiliaria-image.jpg', NULL, NULL, 1280, 976, '{\"thumbnail\":{\"name\":\"thumbnail_inmobiliaria-image.jpg\",\"hash\":\"thumbnail_inmobiliaria_image_f2220ef4e4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":205,\"height\":156,\"size\":7.86,\"sizeInBytes\":7863,\"url\":\"/uploads/thumbnail_inmobiliaria_image_f2220ef4e4.jpg\"},\"small\":{\"name\":\"small_inmobiliaria-image.jpg\",\"hash\":\"small_inmobiliaria_image_f2220ef4e4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":381,\"size\":42.97,\"sizeInBytes\":42973,\"url\":\"/uploads/small_inmobiliaria_image_f2220ef4e4.jpg\"},\"medium\":{\"name\":\"medium_inmobiliaria-image.jpg\",\"hash\":\"medium_inmobiliaria_image_f2220ef4e4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":572,\"size\":99.47,\"sizeInBytes\":99472,\"url\":\"/uploads/medium_inmobiliaria_image_f2220ef4e4.jpg\"},\"large\":{\"name\":\"large_inmobiliaria-image.jpg\",\"hash\":\"large_inmobiliaria_image_f2220ef4e4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":763,\"size\":179.32,\"sizeInBytes\":179322,\"url\":\"/uploads/large_inmobiliaria_image_f2220ef4e4.jpg\"}}', 'inmobiliaria_image_f2220ef4e4', '.jpg', 'image/jpeg', 286.52, '/uploads/inmobiliaria_image_f2220ef4e4.jpg', NULL, 'local', NULL, '/', '2025-11-13 02:16:22.558000', '2025-11-13 02:16:22.558000', '2025-11-13 02:16:22.558000', 1, 1, NULL),
(3, 'g3pnp1bdxic5erdysmtlm4qx', 'depto1.webp', NULL, NULL, 835, 467, '{\"thumbnail\":{\"name\":\"thumbnail_depto1.webp\",\"hash\":\"thumbnail_depto1_0c0df4d4f8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":137,\"size\":9.91,\"sizeInBytes\":9914,\"url\":\"/uploads/thumbnail_depto1_0c0df4d4f8.webp\"},\"medium\":{\"name\":\"medium_depto1.webp\",\"hash\":\"medium_depto1_0c0df4d4f8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":419,\"size\":50.63,\"sizeInBytes\":50628,\"url\":\"/uploads/medium_depto1_0c0df4d4f8.webp\"},\"small\":{\"name\":\"small_depto1.webp\",\"hash\":\"small_depto1_0c0df4d4f8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":280,\"size\":30.16,\"sizeInBytes\":30156,\"url\":\"/uploads/small_depto1_0c0df4d4f8.webp\"}}', 'depto1_0c0df4d4f8', '.webp', 'image/webp', 66.22, '/uploads/depto1_0c0df4d4f8.webp', NULL, 'local', NULL, '/', '2025-11-13 11:23:18.195000', '2025-11-13 11:23:18.195000', '2025-11-13 11:23:18.195000', 1, 1, NULL),
(4, 't9uemzm0qu7xe22v38312v4d', 'depto3.webp', NULL, NULL, 835, 467, '{\"thumbnail\":{\"name\":\"thumbnail_depto3.webp\",\"hash\":\"thumbnail_depto3_a5de31f9cc\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":137,\"size\":5.44,\"sizeInBytes\":5444,\"url\":\"/uploads/thumbnail_depto3_a5de31f9cc.webp\"},\"medium\":{\"name\":\"medium_depto3.webp\",\"hash\":\"medium_depto3_a5de31f9cc\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":419,\"size\":21.72,\"sizeInBytes\":21722,\"url\":\"/uploads/medium_depto3_a5de31f9cc.webp\"},\"small\":{\"name\":\"small_depto3.webp\",\"hash\":\"small_depto3_a5de31f9cc\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":280,\"size\":13.71,\"sizeInBytes\":13712,\"url\":\"/uploads/small_depto3_a5de31f9cc.webp\"}}', 'depto3_a5de31f9cc', '.webp', 'image/webp', 28.21, '/uploads/depto3_a5de31f9cc.webp', NULL, 'local', NULL, '/', '2025-11-13 11:23:18.265000', '2025-11-13 11:23:18.265000', '2025-11-13 11:23:18.266000', 1, 1, NULL),
(5, 'mu9b7bgywo3fv10exf0gmxfr', 'depto2.webp', NULL, NULL, 835, 467, '{\"thumbnail\":{\"name\":\"thumbnail_depto2.webp\",\"hash\":\"thumbnail_depto2_42dc55e412\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":137,\"size\":6.22,\"sizeInBytes\":6224,\"url\":\"/uploads/thumbnail_depto2_42dc55e412.webp\"},\"medium\":{\"name\":\"medium_depto2.webp\",\"hash\":\"medium_depto2_42dc55e412\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":419,\"size\":35.11,\"sizeInBytes\":35108,\"url\":\"/uploads/medium_depto2_42dc55e412.webp\"},\"small\":{\"name\":\"small_depto2.webp\",\"hash\":\"small_depto2_42dc55e412\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":280,\"size\":20,\"sizeInBytes\":20004,\"url\":\"/uploads/small_depto2_42dc55e412.webp\"}}', 'depto2_42dc55e412', '.webp', 'image/webp', 52.16, '/uploads/depto2_42dc55e412.webp', NULL, 'local', NULL, '/', '2025-11-13 11:23:18.324000', '2025-11-13 11:23:18.324000', '2025-11-13 11:23:18.325000', 1, 1, NULL),
(6, 'xkuu1abnypi7kn03xk9p8fjh', '3-casa-b.jpg', NULL, NULL, 1280, 853, '{\"thumbnail\":{\"name\":\"thumbnail_3-casa-b.jpg\",\"hash\":\"thumbnail_3_casa_b_ddd094333f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":7.6,\"sizeInBytes\":7597,\"url\":\"/uploads/thumbnail_3_casa_b_ddd094333f.jpg\"},\"medium\":{\"name\":\"medium_3-casa-b.jpg\",\"hash\":\"medium_3_casa_b_ddd094333f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":500,\"size\":55.56,\"sizeInBytes\":55561,\"url\":\"/uploads/medium_3_casa_b_ddd094333f.jpg\"},\"small\":{\"name\":\"small_3-casa-b.jpg\",\"hash\":\"small_3_casa_b_ddd094333f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":333,\"size\":27.03,\"sizeInBytes\":27034,\"url\":\"/uploads/small_3_casa_b_ddd094333f.jpg\"},\"large\":{\"name\":\"large_3-casa-b.jpg\",\"hash\":\"large_3_casa_b_ddd094333f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":666,\"size\":94.28,\"sizeInBytes\":94279,\"url\":\"/uploads/large_3_casa_b_ddd094333f.jpg\"}}', '3_casa_b_ddd094333f', '.jpg', 'image/jpeg', 148.26, '/uploads/3_casa_b_ddd094333f.jpg', NULL, 'local', NULL, '/', '2025-11-16 12:50:21.575000', '2025-11-16 12:50:21.575000', '2025-11-16 12:50:21.576000', 1, 1, NULL),
(7, 'vn70rlxdqvas4mvkvjps33y1', '3-casa-a.jpg', NULL, NULL, 1280, 848, '{\"thumbnail\":{\"name\":\"thumbnail_3-casa-a.jpg\",\"hash\":\"thumbnail_3_casa_a_d84f8a58cf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":235,\"height\":156,\"size\":8.05,\"sizeInBytes\":8046,\"url\":\"/uploads/thumbnail_3_casa_a_d84f8a58cf.jpg\"},\"medium\":{\"name\":\"medium_3-casa-a.jpg\",\"hash\":\"medium_3_casa_a_d84f8a58cf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":497,\"size\":58.43,\"sizeInBytes\":58431,\"url\":\"/uploads/medium_3_casa_a_d84f8a58cf.jpg\"},\"small\":{\"name\":\"small_3-casa-a.jpg\",\"hash\":\"small_3_casa_a_d84f8a58cf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":331,\"size\":28.98,\"sizeInBytes\":28982,\"url\":\"/uploads/small_3_casa_a_d84f8a58cf.jpg\"},\"large\":{\"name\":\"large_3-casa-a.jpg\",\"hash\":\"large_3_casa_a_d84f8a58cf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":663,\"size\":94.78,\"sizeInBytes\":94783,\"url\":\"/uploads/large_3_casa_a_d84f8a58cf.jpg\"}}', '3_casa_a_d84f8a58cf', '.jpg', 'image/jpeg', 142.24, '/uploads/3_casa_a_d84f8a58cf.jpg', NULL, 'local', NULL, '/', '2025-11-16 12:50:21.658000', '2025-11-16 12:50:21.658000', '2025-11-16 12:50:21.659000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files_related_mph`
--

INSERT INTO `files_related_mph` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'api::home.home', 'image', 1),
(2, 1, 5, 'api::home.home', 'image', 1),
(33, 6, 10, 'api::property.property', 'images', 1),
(34, 7, 10, 'api::property.property', 'images', 2),
(35, 6, 13, 'api::property.property', 'images', 1),
(36, 7, 13, 'api::property.property', 'images', 2),
(37, 3, 4, 'api::property.property', 'images', 1),
(38, 4, 4, 'api::property.property', 'images', 2),
(39, 5, 4, 'api::property.property', 'images', 3),
(40, 3, 14, 'api::property.property', 'images', 1),
(41, 4, 14, 'api::property.property', 'images', 2),
(42, 5, 14, 'api::property.property', 'images', 3),
(43, 2, 1, 'api::property.property', 'images', 1),
(44, 2, 15, 'api::property.property', 'images', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `globals_cmps`
--

CREATE TABLE `globals_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `homes`
--

CREATE TABLE `homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `homes`
--

INSERT INTO `homes` (`id`, `document_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `title`, `subtitle`) VALUES
(1, 'piblia1ocmorypuemz1k0248', '2025-11-11 12:33:37.552000', '2025-11-12 11:39:52.044000', NULL, 1, 1, NULL, 'Encuentra tu alquiler aqui!!!', 'Tu proximo hogar te esta esperando. daleee'),
(5, 'piblia1ocmorypuemz1k0248', '2025-11-11 12:33:37.552000', '2025-11-12 11:39:52.044000', '2025-11-12 11:39:52.134000', 1, 1, NULL, 'Encuentra tu alquiler aqui!!!', 'Tu proximo hogar te esta esperando. daleee');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'n0oyh0hk70o6o83mvleoix5q', 'English (en)', 'en', '2025-11-10 04:11:46.766000', '2025-11-10 04:11:46.766000', '2025-11-10 04:11:46.767000', NULL, NULL, NULL),
(2, 'q8turdthq4tujcwo1k102s98', 'Spanish (Latin America) (es-419)', 'es-419', '2025-11-11 12:37:14.805000', '2025-11-11 12:37:14.805000', '2025-11-11 12:37:14.806000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `bedrooms` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `properties`
--

INSERT INTO `properties` (`id`, `document_id`, `title`, `slug`, `type`, `address`, `city`, `price`, `description`, `featured`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `bedrooms`, `bathrooms`, `area`) VALUES
(1, 'idciabo6orur6bpqxm3btj8s', 'Depto 2 habitaciones', 'depto-bj', 'Alquiler', 'barrio jardin', 'olavarria', 320000, '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"El departamento tien vista a la calle grimaldi. En optimas condiciones\"}]}]', NULL, '2025-11-13 02:07:12.246000', '2025-11-16 17:19:00.644000', NULL, 1, 1, 'en', 2, 2, 350),
(4, 'stimhduu7wzbo51gxtj9dctz', 'Depto 1 habitacion', 'depto-barros1627', 'Alquiler', 'Barros 1627', 'Olavarria', 300000, '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"El depto esta en perfectas condiciones. ubicado a metros de avenida ituzaingo.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"cuenta con lavadero y una luminosa terraza.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Se aceptan mascotas medianas.\"}]}]', NULL, '2025-11-13 11:22:45.721000', '2025-11-16 17:18:37.401000', NULL, 1, 1, 'en', 1, 1, 150),
(10, 'ussxjgagq15d8ruxl1q20tcq', 'Casa 2 hab zona centrica', NULL, 'Alquiler', 'Belgrano 3050', 'Olavarria', 399997, '[{\"type\":\"heading\",\"children\":[{\"type\":\"text\",\"text\":\"Casa centrica de dos habitaciones. 5to piso\"}],\"level\":2},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Comedor y cocina vista a la calle\",\"bold\":true,\"italic\":true}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]', NULL, '2025-11-16 12:50:38.985000', '2025-11-16 17:18:16.024000', NULL, 1, 1, 'en', 2, 1, 200),
(13, 'ussxjgagq15d8ruxl1q20tcq', 'Casa 2 hab zona centrica', NULL, 'Alquiler', 'Belgrano 3050', 'Olavarria', 399997, '[{\"type\":\"heading\",\"children\":[{\"type\":\"text\",\"text\":\"Casa centrica de dos habitaciones. 5to piso\"}],\"level\":2},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Comedor y cocina vista a la calle\",\"bold\":true,\"italic\":true}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"\"}]}]', NULL, '2025-11-16 12:50:38.985000', '2025-11-16 17:18:16.024000', '2025-11-16 17:18:16.106000', 1, 1, 'en', 2, 1, 200),
(14, 'stimhduu7wzbo51gxtj9dctz', 'Depto 1 habitacion', 'depto-barros1627', 'Alquiler', 'Barros 1627', 'Olavarria', 300000, '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"El depto esta en perfectas condiciones. ubicado a metros de avenida ituzaingo.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"cuenta con lavadero y una luminosa terraza.\"}]},{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Se aceptan mascotas medianas.\"}]}]', NULL, '2025-11-13 11:22:45.721000', '2025-11-16 17:18:37.401000', '2025-11-16 17:18:37.468000', 1, 1, 'en', 1, 1, 150),
(15, 'idciabo6orur6bpqxm3btj8s', 'Depto 2 habitaciones', 'depto-bj', 'Alquiler', 'barrio jardin', 'olavarria', 320000, '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"El departamento tien vista a la calle grimaldi. En optimas condiciones\"}]}]', NULL, '2025-11-13 02:07:12.246000', '2025-11-16 17:19:00.644000', '2025-11-16 17:19:00.700000', 1, 1, 'en', 2, 2, 350);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_ai_localization_jobs`
--

CREATE TABLE `strapi_ai_localization_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) NOT NULL,
  `source_locale` varchar(255) NOT NULL,
  `target_locales` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`target_locales`)),
  `status` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `encrypted_key` longtext DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `document_id`, `name`, `description`, `type`, `access_key`, `encrypted_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'f2zh3rmc5s871i3z7b05531q', 'Read Only', 'A default API token with read-only permissions, only used for accessing resources', 'read-only', '5a6f90d3c9bd337fdca8315b57c2f0f14ffb1ec501c79c795b09a7b181b3269452e36939a7af2873bcd748caf3bd5ef627c6bb86f1d66d013b0030dec3fd599b', 'v1:e6c472cb39a2536be90e32261e81cd45:476108b34ed932e2202eba5c06985be70ae133e9eb65a05c36698869317b389ea4ec189d3a31ae6dc30c8c1c3dad7be279c4fbefbf43797e3c869cde24548fa12c18e0b82c0c48807dd00855f90045dffbfa78e4db1baf6ca934c6faa178008b6ec5c6f333cbe9b7fe2ff964dbf2b0d74f282a7a948551eeeef89f9901dc783361371c6747e177c29d18920db16dc6f259a4dd3e723acc6c0fda3c6e069079e89a45dbd0f5df6d6c262f298eca0e8c28408bbd2a71d28b13a10f51651ab86809818d2ba5ec73906ac2ec51374897c2be783db9a3832ea9de564d93f016558c78a98d320a60e41779570de4db49f5d264edce459a0b9e7c7a77e2fb5fa3352d7d:6d9b8839346021b5361a39fd0aae483f', NULL, NULL, NULL, '2025-11-10 04:11:52.879000', '2025-11-10 04:11:52.879000', '2025-11-10 04:11:52.880000', NULL, NULL, NULL),
(2, 'zc1mm3m90rfxcil6je65ruds', 'Full Access', 'A default API token with full access permissions, used for accessing or modifying resources', 'full-access', '4a6a2b0a1536e44aa4c57719e173d71c19cf229dbb526e4b5165e23817506c4304ef380500befedc02f41cbb7fff36c54069e5063de99b0d9b2bafa0280e69e4', 'v1:26348c51f11fa7242c814b65f10f16fb:9125b18c621ec9cb67ff5cb3a03966fa49b4546c5a266d1de7880b35f5faa356b9abcf5612171a25f036dbefea1964c41c541757b2b8af5ab8c6112588ccd5bc17ebdd9518be215c64e01fc09dcb87ce60786458343e3574e4e080e025c8bc8cc3efd9c89d9c94554f9ddad842ff68f5bd4d23a770e8528ffb7d385d2950fa8cd78f00c7e34ae961569e8b3dcf7aebaa48895ef3b43e8b38f4580a38f43be0557e7aa0c85e9bd07bba62daa2517bb27179f0dcb7a832cbd514d575e8c4055846d9d22ffb8c68f8bd2236c8391f021fccf606f0fd4d96031afd6016b16a46b63d5963e3a154c48b5e4c468c6e1ea49207eb68e27327d3d7477754226986e3dc6c:e8810281c1fffcde60c726d860861996', NULL, NULL, NULL, '2025-11-10 04:11:52.896000', '2025-11-10 04:11:52.896000', '2025-11-10 04:11:52.897000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_unidirectional-join-table-repair-ran', 'true', 'boolean', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::about.about\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"abouts\"}}},\"apiName\":\"about\",\"globalId\":\"About\",\"uid\":\"api::about.about\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"singleType\"},\"modelName\":\"about\",\"actions\":{},\"lifecycles\":{}},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\",\"maxLength\":80},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"articles\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"articles\"}}},\"apiName\":\"article\",\"globalId\":\"Article\",\"uid\":\"api::article.article\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\",\"maxLength\":80},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"articles\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"collectionType\"},\"modelName\":\"article\",\"actions\":{},\"lifecycles\":{}},\"api::author.author\":{\"kind\":\"collectionType\",\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::author.author\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"authors\"}}},\"apiName\":\"author\",\"globalId\":\"Author\",\"uid\":\"api::author.author\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"}},\"kind\":\"collectionType\"},\"modelName\":\"author\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"description\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"categories\"}}},\"apiName\":\"category\",\"globalId\":\"Category\",\"uid\":\"api::category.category\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"description\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelName\":\"category\",\"actions\":{},\"lifecycles\":{}},\"api::contact-message.contact-message\":{\"kind\":\"collectionType\",\"collectionName\":\"contact_messages\",\"info\":{\"singularName\":\"contact-message\",\"pluralName\":\"contact-messages\",\"displayName\":\"contact-message\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"text\"},\"email\":{\"type\":\"email\",\"required\":true},\"phone\":{\"type\":\"string\"},\"message\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::contact-message.contact-message\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"contact_messages\"}}},\"apiName\":\"contact-message\",\"globalId\":\"ContactMessage\",\"uid\":\"api::contact-message.contact-message\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"contact_messages\",\"info\":{\"singularName\":\"contact-message\",\"pluralName\":\"contact-messages\",\"displayName\":\"contact-message\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"text\"},\"email\":{\"type\":\"email\",\"required\":true},\"phone\":{\"type\":\"string\"},\"message\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelName\":\"contact-message\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"globals\"}}},\"apiName\":\"global\",\"globalId\":\"Global\",\"uid\":\"api::global.global\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelName\":\"global\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"singleType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::home.home\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"homes\"}}},\"apiName\":\"home\",\"globalId\":\"Home\",\"uid\":\"api::home.home\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]}},\"kind\":\"singleType\"},\"modelName\":\"home\",\"actions\":{},\"lifecycles\":{}},\"api::property.property\":{\"kind\":\"collectionType\",\"collectionName\":\"properties\",\"info\":{\"singularName\":\"property\",\"pluralName\":\"properties\",\"displayName\":\"property\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"type\":{\"type\":\"enumeration\",\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"enum\":[\"Alquiler\",\"Venta\"]},\"address\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"city\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"price\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"blocks\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"images\":{\"type\":\"media\",\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"multiple\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"featured\":{\"type\":\"boolean\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bedrooms\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bathrooms\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"area\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::property.property\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"properties\"}}},\"apiName\":\"property\",\"globalId\":\"Property\",\"uid\":\"api::property.property\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"properties\",\"info\":{\"singularName\":\"property\",\"pluralName\":\"properties\",\"displayName\":\"property\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"type\":\"uid\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"type\":{\"type\":\"enumeration\",\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"enum\":[\"Alquiler\",\"Venta\"]},\"address\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"city\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"price\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"description\":{\"type\":\"blocks\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"images\":{\"type\":\"media\",\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"multiple\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"featured\":{\"type\":\"boolean\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bedrooms\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"bathrooms\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"area\":{\"type\":\"integer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"collectionType\"},\"modelName\":\"property\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"encryptedKey\":{\"type\":\"text\",\"minLength\":1,\"configurable\":false,\"required\":false,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"encryptedKey\":{\"type\":\"text\",\"minLength\":1,\"configurable\":false,\"required\":false,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"},\"admin::session\":{\"collectionName\":\"strapi_sessions\",\"info\":{\"name\":\"Session\",\"description\":\"Session Manager storage\",\"singularName\":\"session\",\"pluralName\":\"sessions\",\"displayName\":\"Session\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"userId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"sessionId\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"childId\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"deviceId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"origin\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"expiresAt\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"absoluteExpiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"private\":true,\"searchable\":false},\"status\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"type\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::session\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_sessions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminSession\",\"uid\":\"admin::session\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_sessions\",\"info\":{\"name\":\"Session\",\"description\":\"Session Manager storage\",\"singularName\":\"session\",\"pluralName\":\"sessions\",\"displayName\":\"Session\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false},\"i18n\":{\"localized\":false}},\"attributes\":{\"userId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"sessionId\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"childId\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"deviceId\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"origin\":{\"type\":\"string\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"expiresAt\":{\"type\":\"datetime\",\"required\":true,\"configurable\":false,\"private\":true,\"searchable\":false},\"absoluteExpiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"private\":true,\"searchable\":false},\"status\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"type\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"session\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(3, 'plugin_content_manager_configuration_components::shared.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"documentId\",\"defaultSortBy\":\"documentId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"files\"],\"edit\":[[{\"name\":\"files\",\"size\":6}]]},\"uid\":\"shared.slider\",\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_components::shared.media', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"documentId\",\"defaultSortBy\":\"documentId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"file\":{\"edit\":{\"label\":\"file\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"file\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"file\"],\"edit\":[[{\"name\":\"file\",\"size\":6}]]},\"uid\":\"shared.media\",\"isComponent\":true}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_components::shared.rich-text', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"documentId\",\"defaultSortBy\":\"documentId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"body\",\"size\":12}]]},\"uid\":\"shared.rich-text\",\"isComponent\":true}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_components::shared.quote', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"body\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"body\",\"size\":6}]]},\"uid\":\"shared.quote\",\"isComponent\":true}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::api::about.about', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::about.about\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::api::article.article', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"cover\":{\"edit\":{\"label\":\"cover\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cover\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"slug\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"cover\",\"size\":6}],[{\"name\":\"author\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::article.article\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::api::author.author', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"avatar\",\"email\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"articles\",\"size\":6}]]},\"uid\":\"api::author.author\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"articles\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"siteDescription\":{\"edit\":{\"label\":\"siteDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteDescription\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"defaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSeo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"favicon\",\"siteDescription\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"siteDescription\",\"size\":6}],[{\"name\":\"defaultSeo\",\"size\":12}]]},\"uid\":\"api::global.global\"}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::admin::session', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"userId\",\"defaultSortBy\":\"userId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"sessionId\":{\"edit\":{\"label\":\"sessionId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sessionId\",\"searchable\":true,\"sortable\":true}},\"childId\":{\"edit\":{\"label\":\"childId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"childId\",\"searchable\":true,\"sortable\":true}},\"deviceId\":{\"edit\":{\"label\":\"deviceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deviceId\",\"searchable\":true,\"sortable\":true}},\"origin\":{\"edit\":{\"label\":\"origin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"origin\",\"searchable\":true,\"sortable\":true}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"absoluteExpiresAt\":{\"edit\":{\"label\":\"absoluteExpiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"absoluteExpiresAt\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"userId\",\"sessionId\",\"childId\"],\"edit\":[[{\"name\":\"userId\",\"size\":6},{\"name\":\"sessionId\",\"size\":6}],[{\"name\":\"childId\",\"size\":6},{\"name\":\"deviceId\",\"size\":6}],[{\"name\":\"origin\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"absoluteExpiresAt\",\"size\":6},{\"name\":\"status\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]},\"uid\":\"admin::session\"}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"encryptedKey\":{\"edit\":{\"label\":\"encryptedKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"encryptedKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"encryptedKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(23, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"stageRequiredToPublish\":{\"edit\":{\"label\":\"stageRequiredToPublish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stageRequiredToPublish\",\"searchable\":true,\"sortable\":true}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"stageRequiredToPublish\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"stageRequiredToPublish\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(31, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false,\"aiMetadata\":true}', 'object', NULL, NULL),
(32, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(33, 'plugin_upload_metrics', '{\"weeklySchedule\":\"1 12 4 * * 1\",\"lastWeeklyUpdate\":1763381432245}', 'object', NULL, NULL),
(34, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(35, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(36, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(37, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(38, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::home.home', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"documentId\",\"defaultSortBy\":\"documentId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"api::home.home\"}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::property.property', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"featured\":{\"edit\":{\"label\":\"featured\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"featured\",\"searchable\":true,\"sortable\":true}},\"bedrooms\":{\"edit\":{\"label\":\"bedrooms\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bedrooms\",\"searchable\":true,\"sortable\":true}},\"bathrooms\":{\"edit\":{\"label\":\"bathrooms\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bathrooms\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"type\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"city\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"images\",\"size\":6},{\"name\":\"featured\",\"size\":4}],[{\"name\":\"bedrooms\",\"size\":4},{\"name\":\"bathrooms\",\"size\":4},{\"name\":\"area\",\"size\":4}]]},\"uid\":\"api::property.property\"}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::api::contact-message.contact-message', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"phone\",\"defaultSortBy\":\"phone\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"message\":{\"edit\":{\"label\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"message\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}},\"documentId\":{\"edit\":{},\"list\":{\"label\":\"documentId\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"phone\",\"email\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"phone\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"message\",\"size\":6}]]},\"uid\":\"api::contact-message.contact-message\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(8, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"abouts_cmps\",\"indexes\":[{\"name\":\"abouts_field_idx\",\"columns\":[\"field\"]},{\"name\":\"abouts_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"abouts_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"abouts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"abouts\",\"indexes\":[{\"name\":\"abouts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"articles_cmps\",\"indexes\":[{\"name\":\"articles_field_idx\",\"columns\":[\"field\"]},{\"name\":\"articles_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"articles_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles\",\"indexes\":[{\"name\":\"articles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"authors\",\"indexes\":[{\"name\":\"authors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"contact_messages\",\"indexes\":[{\"name\":\"contact_messages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"contact_messages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"contact_messages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"contact_messages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"contact_messages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"message\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"globals_cmps\",\"indexes\":[{\"name\":\"globals_field_idx\",\"columns\":[\"field\"]},{\"name\":\"globals_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"globals_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"homes\",\"indexes\":[{\"name\":\"homes_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"homes_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"homes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"homes_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"homes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subtitle\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"properties\",\"indexes\":[{\"name\":\"properties_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"properties_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"properties_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"properties_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"properties_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"city\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"featured\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"bedrooms\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"bathrooms\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"area\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"encrypted_key\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_sessions\",\"indexes\":[{\"name\":\"strapi_sessions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_sessions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_sessions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_sessions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_sessions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"session_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"child_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"device_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"origin\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"absolute_expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_sliders\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_shared_seos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_rich_texts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_quotes\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_media\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_ai_localization_jobs\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"source_locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"target_locales\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_uq\",\"columns\":[\"workflow_id\",\"workflow_stage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_author_lnk\",\"indexes\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"]},{\"name\":\"articles_author_lnk_uq\",\"columns\":[\"article_id\",\"author_id\"],\"type\":\"unique\"},{\"name\":\"articles_author_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"authors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"author_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_category_lnk\",\"indexes\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"]},{\"name\":\"articles_category_lnk_uq\",\"columns\":[\"article_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"articles_category_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2025-11-17 12:48:59', 'b63e33f4e2da54030df45cae91958e1a0bc6cda872b078e1aeab2181bf127951');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2025-11-10 04:11:23'),
(2, '5.0.0-02-created-document-id', '2025-11-10 04:11:23'),
(3, '5.0.0-03-created-locale', '2025-11-10 04:11:25'),
(4, '5.0.0-04-created-published-at', '2025-11-10 04:11:25'),
(5, '5.0.0-05-drop-slug-fields-index', '2025-11-10 04:11:25'),
(6, 'core::5.0.0-discard-drafts', '2025-11-10 04:11:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_sessions`
--

CREATE TABLE `strapi_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `child_id` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `absolute_expires_at` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_sessions`
--

INSERT INTO `strapi_sessions` (`id`, `document_id`, `user_id`, `session_id`, `child_id`, `device_id`, `origin`, `expires_at`, `absolute_expires_at`, `status`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'a6evla22tbnban3zahrpktbk', '1', 'a403bdb66bf1ae0c03a7bf1100658b51', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-10 06:13:44.733000', '2025-12-10 04:13:44.733000', 'active', 'session', '2025-11-10 04:13:44.733000', '2025-11-10 04:13:44.733000', '2025-11-10 04:13:44.734000', NULL, NULL, NULL),
(2, 'm4ofpkxoz6umnppn05xzk4dd', '1', '93fe3f188e79919347afed85d639da5f', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-10 14:21:51.483000', '2025-12-10 12:21:51.483000', 'active', 'session', '2025-11-10 12:21:51.484000', '2025-11-10 12:21:51.484000', '2025-11-10 12:21:51.484000', NULL, NULL, NULL),
(3, 'sb34n3oyqzy5h9t4y3ze5gov', '1', '540639cb05ba755e27c5f3f4bf3d90a6', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-11 01:54:08.561000', '2025-12-10 23:54:08.561000', 'active', 'session', '2025-11-10 23:54:08.562000', '2025-11-10 23:54:08.562000', '2025-11-10 23:54:08.565000', NULL, NULL, NULL),
(4, 'y8czlxwexa3ewscjeleiozyu', '1', '40e49068dc0d6b775125d9a62af6c6ef', 'd275cb286e4c49d1a6cd8655d3f7ca3f', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-11 13:24:09.935000', '2025-12-11 11:24:09.935000', 'rotated', 'session', '2025-11-11 11:24:09.935000', '2025-11-11 12:07:25.600000', '2025-11-11 11:24:09.936000', NULL, NULL, NULL),
(5, 'oi2pd56n05xl7k2viezu2aqc', '1', 'd275cb286e4c49d1a6cd8655d3f7ca3f', '7410c1c0f05011bfa321d8f08c547e5c', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-11 14:07:25.560000', '2025-12-11 11:24:09.935000', 'rotated', 'session', '2025-11-11 12:07:25.560000', '2025-11-11 13:13:15.434000', '2025-11-11 12:07:25.563000', NULL, NULL, NULL),
(6, 'uywx1odgmmejl6vgrmz5dxqk', '1', '7410c1c0f05011bfa321d8f08c547e5c', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-11 15:13:15.405000', '2025-12-11 11:24:09.935000', 'active', 'session', '2025-11-11 13:13:15.406000', '2025-11-11 13:13:15.406000', '2025-11-11 13:13:15.407000', NULL, NULL, NULL),
(7, 'mhxyyxr1vrmoyk87slorl72z', '1', 'abdcace0be4e1d06ec1fea2a33a220e2', 'dc61d5d5e86cd95eb1cf6c7616a5f994', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 03:02:47.184000', '2025-12-12 01:02:47.184000', 'rotated', 'session', '2025-11-12 01:02:47.185000', '2025-11-12 01:50:25.379000', '2025-11-12 01:02:47.188000', NULL, NULL, NULL),
(8, 'xzes6a3p4jicntjlkkc1h8dq', '1', 'dc61d5d5e86cd95eb1cf6c7616a5f994', 'b86aecfa5227089edebf7d8750e4e7c0', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 03:50:25.344000', '2025-12-12 01:02:47.184000', 'rotated', 'session', '2025-11-12 01:50:25.345000', '2025-11-12 02:26:06.745000', '2025-11-12 01:50:25.349000', NULL, NULL, NULL),
(9, 'gtxtftv51yka1bphuh9f2h70', '1', 'b86aecfa5227089edebf7d8750e4e7c0', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 04:26:06.710000', '2025-12-12 01:02:47.184000', 'active', 'session', '2025-11-12 02:26:06.711000', '2025-11-12 02:26:06.711000', '2025-11-12 02:26:06.715000', NULL, NULL, NULL),
(10, 'k5ymo14fc9e7ymtzke0d6xae', '1', '3a4dc36328e55f2ec5fb0e6932e6121e', 'a1819c4aaa4010e40e7fb35e6fbef728', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 13:36:03.491000', '2025-12-12 11:36:03.491000', 'rotated', 'session', '2025-11-12 11:36:03.492000', '2025-11-12 13:18:53.900000', '2025-11-12 11:36:03.495000', NULL, NULL, NULL),
(11, 'r3xa81np8izyhsocir0xdp0t', '1', 'a1819c4aaa4010e40e7fb35e6fbef728', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 15:18:53.857000', '2025-12-12 11:36:03.491000', 'active', 'session', '2025-11-12 13:18:53.858000', '2025-11-12 13:18:53.858000', '2025-11-12 13:18:53.859000', NULL, NULL, NULL),
(12, 's6i4d26t3t4pqrhgz22kqb1a', '1', '2e749fb86d8ed759989a06fc50a8f131', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-12 23:42:56.686000', '2025-12-12 21:42:56.686000', 'active', 'session', '2025-11-12 21:42:56.687000', '2025-11-12 21:42:56.687000', '2025-11-12 21:42:56.687000', NULL, NULL, NULL),
(13, 'cj4tf3pmo23we4hdwpo6dz85', '1', 'a895a39c88c61e2491612f235cf4a493', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-13 04:04:59.324000', '2025-12-13 02:04:59.324000', 'active', 'session', '2025-11-13 02:04:59.324000', '2025-11-13 02:04:59.324000', '2025-11-13 02:04:59.325000', NULL, NULL, NULL),
(14, 'h1qic4qv3tkofm5koxqiepyg', '1', '8a7c2d035fa3a7f1c75e573679adb366', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-13 13:20:35.747000', '2025-12-13 11:20:35.747000', 'active', 'session', '2025-11-13 11:20:35.747000', '2025-11-13 11:20:35.747000', '2025-11-13 11:20:35.747000', NULL, NULL, NULL),
(15, 'af86vbn13l7y6lshiazwlu8i', '1', '765f6d279a358a72489cee786529db77', '93b7ec4d845a0046018db30ce3b6913f', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-13 15:36:32.135000', '2025-12-13 13:36:32.135000', 'rotated', 'session', '2025-11-13 13:36:32.135000', '2025-11-13 15:27:42.899000', '2025-11-13 13:36:32.135000', NULL, NULL, NULL),
(16, 'vnlgzrn033fxp6t0ijz7a9tw', '1', '93b7ec4d845a0046018db30ce3b6913f', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-13 17:27:42.876000', '2025-12-13 13:36:32.135000', 'active', 'session', '2025-11-13 15:27:42.876000', '2025-11-13 15:27:42.876000', '2025-11-13 15:27:42.877000', NULL, NULL, NULL),
(17, 'f4orfycbbbqwhdrolkexi74c', '1', '9697d052667b3b532be625aa1da2c741', 'c029692ab45ea307be228e4fbd68167b', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 03:43:31.216000', '2025-12-16 01:43:31.216000', 'rotated', 'session', '2025-11-16 01:43:31.217000', '2025-11-16 02:44:11.953000', '2025-11-16 01:43:31.219000', NULL, NULL, NULL),
(18, 'o6co11bc8y0wuzi2zrqedtvp', '1', 'c029692ab45ea307be228e4fbd68167b', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 04:44:11.909000', '2025-12-16 01:43:31.216000', 'active', 'session', '2025-11-16 02:44:11.909000', '2025-11-16 02:44:11.909000', '2025-11-16 02:44:11.916000', NULL, NULL, NULL),
(19, 'y1r4nedyf2u7owvmc3dzxxld', '1', 'a60d3b70aa485b999cc7a298c83dce68', 'e84e348258bcd93ab2278203b0718a5b', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 14:10:51.882000', '2025-12-16 12:10:51.882000', 'rotated', 'session', '2025-11-16 12:10:51.882000', '2025-11-16 12:44:27.498000', '2025-11-16 12:10:51.883000', NULL, NULL, NULL),
(20, 'd5tboqgf51seubjl0asnif72', '1', 'e84e348258bcd93ab2278203b0718a5b', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 14:44:27.415000', '2025-12-16 12:10:51.882000', 'active', 'session', '2025-11-16 12:44:27.416000', '2025-11-16 12:44:27.416000', '2025-11-16 12:44:27.417000', NULL, NULL, NULL),
(21, 'ikq4xzw5xh8twl5loaybnu5d', '1', '3659250bce89d7b489fee6ad32605f19', '94b4b757285e0ef10db93ba59d3bcfea', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 17:32:33.359000', '2025-12-16 15:32:33.359000', 'rotated', 'session', '2025-11-16 15:32:33.359000', '2025-11-16 17:17:21.074000', '2025-11-16 15:32:33.360000', NULL, NULL, NULL),
(22, 'ubd5loja6gtkw85hb3lczvxc', '1', '94b4b757285e0ef10db93ba59d3bcfea', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-16 19:17:21.044000', '2025-12-16 15:32:33.359000', 'active', 'session', '2025-11-16 17:17:21.045000', '2025-11-16 17:17:21.045000', '2025-11-16 17:17:21.048000', NULL, NULL, NULL),
(23, 'ugh51dm65nda91c3nmxkpygw', '1', '8c77a42b30c37579e844827e0af243be', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-17 01:09:20.487000', '2025-12-16 23:09:20.487000', 'active', 'session', '2025-11-16 23:09:20.487000', '2025-11-16 23:09:20.487000', '2025-11-16 23:09:20.488000', NULL, NULL, NULL),
(24, 'pyy19qi5gg6cjqnbz6n7oh8b', '1', 'c71cb8c8069b2aa46a473a856fe3afe3', 'da92d9e55ff178a394d91f21fdeec472', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-17 11:52:47.221000', '2025-12-17 09:52:47.221000', 'rotated', 'session', '2025-11-17 09:52:47.221000', '2025-11-17 11:26:40.463000', '2025-11-17 09:52:47.222000', NULL, NULL, NULL),
(25, 'bi5ucuv2oqpujdvuwn96g975', '1', 'da92d9e55ff178a394d91f21fdeec472', '00a2536e6c6dee27b6bc049fcc1b9b55', 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-17 13:26:40.442000', '2025-12-17 09:52:47.221000', 'rotated', 'session', '2025-11-17 11:26:40.442000', '2025-11-17 12:40:29.107000', '2025-11-17 11:26:40.448000', NULL, NULL, NULL),
(26, 'pvt9tk4t8wowcxrjfks47byr', '1', '00a2536e6c6dee27b6bc049fcc1b9b55', NULL, 'b598f4b0-c548-4850-8e57-ef471709351a', 'admin', '2025-11-17 14:40:29.070000', '2025-12-17 09:52:47.221000', 'active', 'session', '2025-11-17 12:40:29.071000', '2025-11-17 12:40:29.071000', '2025-11-17 12:40:29.075000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_workflows_stage_required_to_publish_lnk`
--

CREATE TABLE `strapi_workflows_stage_required_to_publish_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'rpmada4c3ig28ff8ko10m4ab', 'plugin::users-permissions.user.me', '2025-11-10 04:11:47.167000', '2025-11-10 04:11:47.167000', '2025-11-10 04:11:47.168000', NULL, NULL, NULL),
(2, 'vvzxk8qb96qyna72owiucd82', 'plugin::users-permissions.auth.changePassword', '2025-11-10 04:11:47.167000', '2025-11-10 04:11:47.167000', '2025-11-10 04:11:47.172000', NULL, NULL, NULL),
(3, 'l1iwhw1bv9wv8awitm1li1qv', 'plugin::users-permissions.auth.callback', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', NULL, NULL, NULL),
(4, 'f4rklc7hd76mar3lvly2mppe', 'plugin::users-permissions.auth.connect', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.268000', NULL, NULL, NULL),
(5, 'y735ngt1pxtq1yxisnbfgz2s', 'plugin::users-permissions.auth.sendEmailConfirmation', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.272000', NULL, NULL, NULL),
(6, 'anh5n97ku5n0pkzj2w4qt1do', 'plugin::users-permissions.auth.emailConfirmation', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.269000', NULL, NULL, NULL),
(7, 'ae489jdpbe7y3aiw77d3o5xp', 'plugin::users-permissions.auth.register', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.269000', NULL, NULL, NULL),
(8, 'ekwo8azpr8vwse165x6awxbe', 'plugin::users-permissions.auth.forgotPassword', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.268000', NULL, NULL, NULL),
(9, 'z5ocazduzvyskitug694iwvp', 'plugin::users-permissions.auth.resetPassword', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.267000', '2025-11-10 04:11:47.268000', NULL, NULL, NULL),
(10, 'd9yacblh2whf4r2yoqpg7z3l', 'api::home.home.find', '2025-11-12 01:59:28.949000', '2025-11-12 01:59:28.949000', '2025-11-12 01:59:28.951000', NULL, NULL, NULL),
(11, 'pk65a85a9ey6jxpkrs51w51d', 'api::property.property.findOne', '2025-11-12 13:28:47.873000', '2025-11-12 13:28:47.873000', '2025-11-12 13:28:47.874000', NULL, NULL, NULL),
(12, 'abwjd9cp78njb8t6ounnanmr', 'api::property.property.find', '2025-11-12 13:28:47.872000', '2025-11-12 13:28:47.872000', '2025-11-12 13:28:47.873000', NULL, NULL, NULL),
(13, 'fdqzg2ihsbmyu08kkn2tigd3', 'api::contact-message.contact-message.find', '2025-11-16 23:17:25.815000', '2025-11-16 23:17:25.815000', '2025-11-16 23:17:25.816000', NULL, NULL, NULL),
(14, 'did2m9na3z9ng2ktc95hsuwr', 'api::contact-message.contact-message.findOne', '2025-11-16 23:17:25.815000', '2025-11-16 23:17:25.815000', '2025-11-16 23:17:25.817000', NULL, NULL, NULL),
(15, 'i9lqhvzbuai01lxeigownvuu', 'api::contact-message.contact-message.create', '2025-11-17 11:26:55.020000', '2025-11-17 11:26:55.020000', '2025-11-17 11:26:55.021000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 5, 2, 1),
(4, 3, 2, 1),
(5, 8, 2, 2),
(6, 7, 2, 3),
(7, 6, 2, 3),
(8, 4, 2, 4),
(9, 9, 2, 4),
(10, 10, 2, 5),
(11, 12, 2, 6),
(12, 11, 2, 6),
(13, 13, 2, 7),
(14, 14, 2, 7),
(15, 15, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'paqzj63rx72bfa6jj33o577w', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2025-11-10 04:11:47.109000', '2025-11-10 04:11:47.109000', '2025-11-10 04:11:47.110000', NULL, NULL, NULL),
(2, 'wjozwmpn12c4kqn8a81nauhr', 'Public', 'Default role given to unauthenticated user.', 'public', '2025-11-10 04:11:47.134000', '2025-11-17 11:26:55.009000', '2025-11-10 04:11:47.135000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `abouts_created_by_id_fk` (`created_by_id`),
  ADD KEY `abouts_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abouts_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `abouts_field_idx` (`field`),
  ADD KEY `abouts_component_type_idx` (`component_type`),
  ADD KEY `abouts_entity_fk` (`entity_id`);

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `articles_created_by_id_fk` (`created_by_id`),
  ADD KEY `articles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_author_lnk_uq` (`article_id`,`author_id`),
  ADD KEY `articles_author_lnk_fk` (`article_id`),
  ADD KEY `articles_author_lnk_ifk` (`author_id`),
  ADD KEY `articles_author_lnk_oifk` (`article_ord`);

--
-- Indices de la tabla `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_category_lnk_uq` (`article_id`,`category_id`),
  ADD KEY `articles_category_lnk_fk` (`article_id`),
  ADD KEY `articles_category_lnk_ifk` (`category_id`),
  ADD KEY `articles_category_lnk_oifk` (`article_ord`);

--
-- Indices de la tabla `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `articles_field_idx` (`field`),
  ADD KEY `articles_component_type_idx` (`component_type`),
  ADD KEY `articles_entity_fk` (`entity_id`);

--
-- Indices de la tabla `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `authors_created_by_id_fk` (`created_by_id`),
  ADD KEY `authors_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `components_shared_media`
--
ALTER TABLE `components_shared_media`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `contact_messages_created_by_id_fk` (`created_by_id`),
  ADD KEY `contact_messages_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Indices de la tabla `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Indices de la tabla `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `globals_created_by_id_fk` (`created_by_id`),
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `globals_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `globals_field_idx` (`field`),
  ADD KEY `globals_component_type_idx` (`component_type`),
  ADD KEY `globals_entity_fk` (`entity_id`);

--
-- Indices de la tabla `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homes_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `homes_created_by_id_fk` (`created_by_id`),
  ADD KEY `homes_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `properties_created_by_id_fk` (`created_by_id`),
  ADD KEY `properties_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_ai_localization_jobs`
--
ALTER TABLE `strapi_ai_localization_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Indices de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Indices de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Indices de la tabla `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_sessions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_sessions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_sessions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Indices de la tabla `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Indices de la tabla `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stage_required_to_publish_lnk_uq` (`workflow_id`,`workflow_stage_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_fk` (`workflow_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_ifk` (`workflow_stage_id`);

--
-- Indices de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Indices de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indices de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles_cmps`
--
ALTER TABLE `articles_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_shared_media`
--
ALTER TABLE `components_shared_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `globals_cmps`
--
ALTER TABLE `globals_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `strapi_ai_localization_jobs`
--
ALTER TABLE `strapi_ai_localization_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD CONSTRAINT `articles_author_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_author_lnk_ifk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD CONSTRAINT `articles_category_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_category_lnk_ifk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD CONSTRAINT `articles_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `authors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD CONSTRAINT `contact_messages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contact_messages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `properties_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_sessions`
--
ALTER TABLE `strapi_sessions`
  ADD CONSTRAINT `strapi_sessions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_sessions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_fk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_ifk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
