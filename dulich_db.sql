-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2018 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulich_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `image`, `is_deleted`, `facebook`, `instagram`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(28, 'team-1.jpg', 0, '', '', '2018-02-10 04:28:14', 'administrator', '2018-02-10 04:28:14', 'administrator'),
(29, 'team-2.jpg', 0, '', '', '2018-02-10 04:29:37', 'administrator', '2018-02-10 04:29:37', 'administrator'),
(30, 'team-3.jpg', 0, '', '', '2018-02-10 04:30:54', 'administrator', '2018-02-10 04:30:54', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `name`, `slug`, `position`, `description`, `language`) VALUES
(33, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(34, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"1111111Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'hu'),
(35, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(36, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Séf', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu'),
(37, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Pastry Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(38, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Cukrász', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text,
  `is_actived` tinyint(1) DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `is_actived`, `text`, `url`, `created_at`, `created_by`, `modified_at`, `modified_by`, `is_deleted`) VALUES
(22, 'cover_1.jpg', 1, 'Tiêu đề slide_1', 'http://thienlocxuan.com.vn/physic', '2017-11-10 15:18:34', 'administrator', '2017-11-10 15:18:34', 'administrator', 0),
(23, 'slide_3.jpg', 1, 'Tiêu đề slide_2', '', '2017-11-10 15:19:51', 'administrator', '2017-11-10 15:19:51', 'administrator', 0),
(24, 'slide_31.jpg', 0, 'Tiêu đề slide_3', '', '2017-11-10 15:39:34', 'administrator', '2017-11-10 15:39:34', 'administrator', 0),
(27, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', 0, '', '123123', '2017-12-05 09:44:53', 'administrator', '2017-12-05 09:44:53', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `body_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(4) DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `avatar`, `image`, `region_id`, `province_id`, `author`, `title_vi`, `title_en`, `slug`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 'ecd375e0ded369eac30ea3d3e330d280.jpg', '[\"ecd375e0ded369eac30ea3d3e330d280.jpg\",\"7740fc16b43d012a18490affc2a028a3.jpg\",\"69fe36283dd030457cd32982edd9510a.png\",\"756d08156a2580127fec88905d702860.jpg\",\"3bb01eeab99e80330fb76e160fe7d894.jpg\",\"6578726afa81d04daad382c6564e94e1.jpg\",\"98e101a55feccb3ef65a952cb99028bc.jpg\"]', 2, 2, 'Author', 'Test 4', 'Test 1', 'test-4', 'Test', 'Test', 'Test', 'Test', 1, 0, 0, '2018-12-16 01:00:23', 'administrator', '2018-12-16 01:00:23', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_activated` tinyint(1) NOT NULL,
  `rating` decimal(11,1) DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `user_id`, `content`, `ip_address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`, `rating`) VALUES
(86, 63, 3, 'abc', '', '2018-10-08 11:27:31', '', '2018-10-08 11:27:31', '', 0, 0, '5.0'),
(87, 64, 3, 'test', '', '2018-10-08 15:54:29', '', '2018-10-08 15:54:29', '', 0, 0, '5.0'),
(88, 64, 4, 'abc<br />\nabc', '', '2018-10-08 20:54:23', '', '2018-10-08 20:54:23', '', 0, 0, '5.0'),
(89, 64, 4, 'no no no', '', '2018-10-08 20:56:34', '', '2018-10-08 20:56:34', '', 0, 0, '4.0'),
(90, 64, 4, 'abc<br />\nabc<br />\nabc', '', '2018-10-08 21:36:40', '', '2018-10-08 21:36:40', '', 0, 0, '4.0'),
(91, 64, 4, 'a', '', '2018-10-08 21:36:48', '', '2018-10-08 21:36:48', '', 0, 0, '4.0'),
(92, 64, 4, 'abcd<br />\n1234<br />\n5678', '', '2018-10-08 21:37:16', '', '2018-10-08 21:37:16', '', 0, 0, '2.0'),
(93, 64, 4, 'abc', '', '2018-10-09 10:09:08', '', '2018-10-09 10:09:08', '', 0, 0, '3.0'),
(94, 64, 4, 'qweqwe', '', '2018-10-09 10:10:29', '', '2018-10-09 10:10:29', '', 0, 0, '2.0'),
(95, 64, 4, 'asdasd', '', '2018-10-09 10:11:29', '', '2018-10-09 10:11:29', '', 0, 0, '1.5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_contact`
--

CREATE TABLE `config_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_send_mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_contact`
--

INSERT INTO `config_contact` (`id`, `title`, `data`, `config_send_mail`, `is_activated`, `is_deleted`) VALUES
(1, 'Cấu hình số 1', '{\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"Nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean\",\"type\":\"text\",\"required\":\"Vui l\\u00f2ng nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean c\\u1ee7a b\\u1ea1n\"},\"ngay_sinh\":{\"title\":\"Ng\\u00e0y sinh\",\"description\":\"Ch\\u1ecdn ng\\u00e0y sinh\",\"type\":\"date\"},\"gioi_tinh\":{\"title\":\"Gi\\u1edbi t\\u00ednh\",\"description\":\"Ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"type\":\"radio\",\"choice\":[\"Nam\",\" N\\u1eef \",\"Gi\\u1edbi t\\u00ednh kh\\u00e1c\"],\"required\":\"Vui l\\u00f2ng ch\\u1ecdn gi\\u1edbi t\\u00ednh c\\u1ee7a b\\u1ea1n\"},\"so_thich\":{\"title\":\"S\\u1edf th\\u00edch\",\"description\":\"Ch\\u1ecdn c\\u00e1c s\\u1edf th\\u00edch c\\u1ee7a b\\u1ea1n\",\"type\":\"checkbox\",\"choice\":[\"\\u0102n u\\u1ed1ng\",\"\\u0110i ch\\u01a1i\",\" Xem phim\",\" Du l\\u1ecbch\",\" Ca h\\u00e1t\"]}}', '{\"to_email\":\"12quyen12@gmail.com\",\"cc_email\":\"01quyen01@gmail.com,quyen.nguyen@matocreative.vn\",\"description_email\":\"Ch\\u00e0o b\\u1ea1n\",\"body\":\"<p><strong>Th&ocirc;ng tin c\\u01a1 b\\u1ea3n:<\\/strong><\\/p>\\r\\n<table style=\\\"width: 541px;\\\">\\r\\n<tbody>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>H\\u1ecd v&agrave; t&ecirc;n<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {ho_va_ten}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>Ng&agrave;y sinh<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {ngay_sinh}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>Gi\\u1edbi t&iacute;nh<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {gioi_tinh}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>S\\u1edf th&iacute;ch<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {so_thich}<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\"}', 0, 0),
(2, 'Cấu hình số 2', '{\"so_thich\":{\"title\":\"S\\u1edf th\\u00edch\",\"description\":\"Ch\\u1ecdn s\\u1edf th\\u00edch\",\"type\":\"select\",\"choice\":[\"\\u00c2m nh\\u1ea1c\",\" Xem phim\",\" \\u0102n u\\u1ed1ng\",\" Du l\\u1ecbch\",\" Nh\\u1ea3y m\\u00faa\"],\"select_multiple\":\"true\"},\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"Nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean \",\"type\":\"text\",\"required\":\"Vui long nh\\u1eadp h\\u1ecd t\\u00ean c\\u1ee7a b\\u1ea1n\"},\"gioi_tinh\":{\"title\":\"Gi\\u1edbi t\\u00ednh\",\"description\":\"Ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"type\":\"select\",\"choice\":[\"Nam\",\"N\\u1eef\",\"Gi\\u1edbi t\\u00ednh kh\\u00e1c\"]}}', '', 0, 0),
(3, 'Cấu hình 3', '{\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"type\":\"text\"},\"gioi_tinh\":{\"title\":\"GI\\u1edbi t\\u00ednh\",\"description\":\"GI\\u1edbi t\\u00ednh\",\"type\":\"text\"},\"ngay_sinh\":{\"title\":\"Ngay sinh\",\"description\":\"Ngay sinh\",\"type\":\"date\"}}', '{\"to_email\":\"01quyen01@gmail.com\",\"cc_email\":\"012quyen012@gmail.com\",\"body\":\"<p><strong>H\\u1ecd v&agrave; t&ecirc;n:<\\/strong>&nbsp;{ho_va_ten}<\\/p>\\r\\n<p><strong>Gi\\u1edbi t&iacute;nh:<\\/strong>&nbsp;{gioi_tinh}<\\/p>\\r\\n<p><strong>Ng&agrave;y sinh: <\\/strong>{ngay_sinh}<\\/p>\"}', 0, 0),
(4, 'Cấu hình mail mới nhất', 'false', '{\"to_email\":\"12quyen12@gmail.com\",\"cc_email\":\"01quyen01@gmali.com\",\"description_email\":{\"vi\":\"M\\u00f4 t\\u1ea3 Email\",\"en\":\"Description email\"},\"body\":{\"vi\":\"<p><strong>Th&ocirc;ng tin:<\\/strong><\\/p>\\n<table style=\\\"width: 264px;\\\">\\n<tbody>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 70px; height: 13px;\\\">H\\u1ecd v&agrave; t&ecirc;n<\\/td>\\n<td style=\\\"width: 208px; height: 13px;\\\">:&nbsp;{ho_va_ten}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 70px; height: 13px;\\\">Ng&agrave;y sinh<\\/td>\\n<td style=\\\"width: 208px; height: 13px;\\\">:&nbsp;{ngay_sinh}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 70px; height: 13px;\\\">Gi\\u1edbi t&iacute;nh<\\/td>\\n<td style=\\\"width: 208px; height: 13px;\\\">:&nbsp;{gioi_tinh}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 70px; height: 13px;\\\">S\\u1edf th&iacute;ch<\\/td>\\n<td style=\\\"width: 208px; height: 13px;\\\">:&nbsp;{so_thich}<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\",\"en\":\"<p><strong>Info:<\\/strong><\\/p>\\n<table style=\\\"width: 223px;\\\">\\n<tbody>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 134px; height: 13px;\\\">First and last name<\\/td>\\n<td style=\\\"width: 103px; height: 13px;\\\">:{ho_va_ten}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 134px; height: 13px;\\\">Birthday<\\/td>\\n<td style=\\\"width: 103px; height: 13px;\\\">:{ngay_sinh}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 134px; height: 13px;\\\">Sex<\\/td>\\n<td style=\\\"width: 103px; height: 13px;\\\">:{gioi_tinh}<\\/td>\\n<\\/tr>\\n<tr style=\\\"height: 13px;\\\">\\n<td style=\\\"width: 134px; height: 13px;\\\">Hobby<\\/td>\\n<td style=\\\"width: 103px; height: 13px;\\\">:{so_thich}<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}}', 0, 0),
(5, 'Cấu hình 5', '{\"ho_va_ten\":{\"type\":\"text\",\"title\":{\"vi\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"en\":\"First and last name\"},\"description\":{\"vi\":\"Nh\\u1eadp H\\u1ecd v\\u00e0 t\\u00ean\",\"en\":\"Insert First and last name\"}}}', '{\"to_email\":\"12quyen12@gmail.com\",\"cc_email\":\"01quyen01@gmail.com\",\"description_email\":{\"vi\":\"G\\u1eedi mail\",\"en\":\"Send mail\"},\"body\":{\"vi\":\"<p>H\\u1ecd v&agrave; t&ecirc;n:{ho_va_ten}<\\/p>\",\"en\":\"<p>Fisrt and last name:&nbsp;{ho_va_ten}<\\/p>\"}}', 0, 0),
(6, 'Cấu hình ok', '{\"ho_va_ten\":{\"type\":\"text\",\"title\":{\"vi\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"en\":\"First and last name\"},\"description\":{\"vi\":\"Nh\\u1eadp H\\u1ecd v\\u00e0 t\\u00ean\",\"en\":\"Insert First and last name\"},\"required\":{\"vi\":\"Vui l\\u00f2ng nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean\",\"en\":\"Please insert name\"}},\"gioi_tinh\":{\"type\":\"radio\",\"title\":{\"vi\":\"Gi\\u1edbi t\\u00ednh\",\"en\":\"Sex\"},\"description\":{\"vi\":\"Ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"en\":\"Select sex\"},\"choice\":{\"vi\":[\"Nam\",\" N\\u1eef\",\"V\\u00f4 Gi\\u1edbi\"],\"en\":[\"Male\",\"Female\",\"Boundless\"]},\"required\":{\"vi\":\"Vui l\\u00f2ng ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"en\":\"Please select the sex\"}},\"ngay_sinh\":{\"type\":\"date\",\"title\":{\"vi\":\"Ng\\u00e0y sinh\",\"en\":\"Birthday\"},\"description\":{\"vi\":\"Ch\\u1ecdn ng\\u00e0y sinh\",\"en\":\"Select birthday\"}}}', '{\"to_email\":\"12quyen12@gmail.com\",\"cc_email\":\"01quyen01@gmail.com\",\"description_email\":{\"vi\":\"G\\u1eedi mail\",\"en\":\"Send mail\"},\"body\":{\"vi\":\"<p>H\\u1ecd v&agrave; t&ecirc;n:&nbsp;{ho_va_ten}<\\/p>\\n<p>Gi\\u1edbi t&iacute;nh:&nbsp;{gioi_tinh}<\\/p>\\n<p>Ng&agrave;y sinh:&nbsp;{ngay_sinh}<\\/p>\",\"en\":\"<p>First and last name:&nbsp;{ho_va_ten}<\\/p>\\n<p>Sex:&nbsp;{gioi_tinh}<\\/p>\\n<p>Birthday:&nbsp;{ngay_sinh}<\\/p>\"}}', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `body_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `image`, `region_id`, `province_id`, `author`, `title_vi`, `title_en`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `date_start`, `date_end`, `slug`) VALUES
(1, '\"\"', 2, 2, '', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 0, 0, 1, '2018-12-16 23:22:44', 'administrator', '2018-12-16 23:22:44', 'administrator', '2018-12-01 00:00:00', '2018-12-01 23:59:59', 'tuyen-dung-2'),
(2, '\"\"', 2, 2, '', 'Tuyển dụng 2', '2222222222', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 0, 0, 1, '2018-12-16 23:30:47', 'administrator', '2018-12-16 23:30:47', 'administrator', '2018-12-16 00:00:00', '2018-12-16 23:59:59', 'tuyen-dung-2-1'),
(3, 'de1d8b6bd2daba56febfe3efa79dfa7a.jpg', 2, 2, '', 'Tuyển dụng 2', '2222222222', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 'Tuyển dụng 2', 1, 0, 0, '2018-12-17 00:30:45', 'administrator', '2018-12-17 00:30:45', 'administrator', '2018-12-16 00:00:00', '2018-12-17 23:59:59', 'tuyen-dung-2-2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `vi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `features`
--

INSERT INTO `features` (`id`, `vi`, `en`, `is_deleted`, `icon`, `content_vi`, `content_en`) VALUES
(1, 'Chống Nước', 'Waterproof', 0, 'fa fa-tint', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(2, 'Chống Xước', ' Scratch Resistant', 0, 'fa fa-ban', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(3, 'Giảm Tiếng Ồn', 'Noise Reduction', 0, 'fa fa-assistive-listening-systems', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'manager', 'General Manager'),
(3, 'mod_create', 'General Mod Create'),
(4, 'members', 'General Members'),
(5, 'mod_update', 'General Mod Update');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `check_menu_children` int(11) NOT NULL DEFAULT '0' COMMENT '0 : nochildrenmenu; 1 : childrenmenue',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_post` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `sort`, `parent_id`, `url`, `slug`, `is_activated`, `is_deleted`, `check_menu_children`, `created_at`, `created_by`, `updated_at`, `updated_by`, `slug_post`) VALUES
(20, 1, 0, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-08-31 16:19:47', 'administrator', '2018-08-31 16:19:47', 'administrator', ''),
(21, 0, 20, 'http://localhost/adminMato/nhom/ao-ngan', 'nhom/ao-ngan', 0, 0, 0, '2018-08-31 16:19:19', 'administrator', '2018-08-31 16:19:19', 'administrator', ''),
(22, 4, 0, 'http://localhost/adminMato/nhom/ao-so-mi-dai', 'nhom/ao-so-mi-dai', 1, 0, 0, '2018-09-04 14:24:57', 'administrator', '2018-09-04 14:24:57', 'administrator', ''),
(23, 0, 20, 'http://localhost/adminMato/nhom/ao-thun-nu', 'nhom/ao-thun-nu', 0, 1, 0, '2018-08-31 10:30:30', 'administrator', '2018-08-31 10:30:30', 'administrator', ''),
(24, 0, 20, 'http://localhost/adminMato/nhom/thoi-trang-nu', 'nhom/thoi-trang-nu', 0, 1, 0, '2018-08-31 10:45:28', 'administrator', '2018-08-31 10:45:28', 'administrator', ''),
(25, 0, 21, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-08-31 16:21:17', 'administrator', '2018-08-31 16:21:17', 'administrator', ''),
(26, 0, 22, 'http://localhost/adminMato/nhom/thoi-trang-nu', 'nhom/thoi-trang-nu', 1, 0, 0, '2018-09-04 14:24:57', 'administrator', '2018-09-04 14:24:57', 'administrator', ''),
(27, 5, 0, 'http://localhost/adminMato/san-pham/test-moi', 'nhom/thoi-trang-nu', 0, 0, 0, '2018-09-11 11:41:29', 'administrator', '2018-09-11 11:41:29', 'administrator', 'san-pham/test-moi'),
(29, 0, 25, 'http://localhost/adminMato/danh-muc/bai-viet', 'danh-muc/bai-viet', 0, 0, 0, '2018-09-01 16:07:48', 'administrator', '2018-09-01 16:07:48', 'administrator', ''),
(30, 3, 0, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-09-04 09:59:34', 'administrator', '2018-09-04 09:59:34', 'administrator', ''),
(31, 0, 30, '', '', 0, 0, 0, '2018-09-04 10:42:26', 'administrator', '2018-09-04 10:42:26', 'administrator', ''),
(32, 2, 0, 'http://localhost/adminMato/bai-viet/ve-chung-toi', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-09-04 13:04:17', 'administrator', '2018-09-04 13:04:17', 'administrator', 'bai-viet/ve-chung-toi'),
(33, 0, 20, '', '', 0, 0, 0, '2018-09-11 17:52:27', 'administrator', '2018-09-11 17:52:27', 'administrator', ''),
(34, 0, 33, '', '', 0, 0, 0, '2018-09-11 18:07:59', 'administrator', '2018-09-11 18:07:59', 'administrator', ''),
(35, 0, 25, '', '', 0, 0, 0, '2018-09-12 08:59:28', 'administrator', '2018-09-12 08:59:28', 'administrator', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `menu_id`, `title`, `language`) VALUES
(39, 20, 'Test one', 'vi'),
(40, 20, 'Test one', 'en'),
(41, 21, 'Con test one', 'vi'),
(42, 21, 'Con test one', 'en'),
(43, 22, 'qwe', 'vi'),
(44, 22, 'qwe', 'en'),
(45, 23, 'Con thứ 2 test one', 'vi'),
(46, 23, 'Con thứ 2 test one', 'en'),
(47, 24, 'aaaaaaaaaaa', 'vi'),
(48, 24, 'sssssssssss', 'en'),
(49, 25, 'Con của con test one', 'vi'),
(50, 25, 'Con của con test one', 'en'),
(51, 26, 'con qưe', 'vi'),
(52, 26, 'con qưe', 'en'),
(53, 27, 'ewqa', 'vi'),
(54, 27, 'ewqa', 'en'),
(57, 29, 'chắt nè', 'vi'),
(58, 29, 'chắt nè', 'en'),
(59, 30, 'Hom nay', 'vi'),
(60, 30, 'Hom nay', 'en'),
(61, 31, 'aaaaaaaaaaaas', 'vi'),
(62, 31, 'ssssssssssss', 'en'),
(63, 32, 's', 'vi'),
(64, 32, 'a', 'en'),
(65, 33, 'Menu con mới ok', 'vi'),
(66, 33, 'Menu con mới ok1', 'en'),
(67, 34, 'Con của menu mới', 'vi'),
(68, 34, 'Con của menu mới', 'en'),
(69, 35, 'chắt nữa nè', 'vi'),
(70, 35, 'chắt nữa nè', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: pending; 1: ongoing; 2: complete; 99: cancel',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_people` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `templates_id`, `slug`, `avatar`, `image`, `data`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(24, 10, 8, 'no-den-tu-dau-1', '', '8a2cef4944e609d619b2213a787767af.png', '{\"chon_moi\":[\"1\"],\"gioi_tinh\":\"1\",\"chon_nhieu_anh_moi\":[\"19a30b528767d93fcd9c8e2fa9e6203b.png\",\"2b14c0d6b3569099b818cdac0ba05e62.jpg\"]}', '2018-09-26 11:07:22', 'administrator', '2018-09-26 11:07:22', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(10, 'gioi-thieu', 0, '', 'c0dd72b64f149162b0df35c8f2f9b268.jpg', 1, 1, 0, 0, '2018-05-31 09:55:30', 'administrator', '2018-05-31 09:55:30', 'administrator'),
(11, 'bai-viet', 0, '', 'c2fed6179764933953dfe940dff09c4d.jpg', 2, 0, 0, 0, '2018-05-31 11:47:41', 'Nguyễn', '2018-05-31 11:47:41', 'Nguyễn'),
(12, 'tin-tuc-1', 11, '', '8872e5ba979bff2f4d7cc32ef236cefe.jpg', NULL, 0, 0, 0, '2018-05-30 15:31:30', 'administrator', '2018-05-30 15:31:30', 'administrator'),
(13, 'tuyen-dung', 11, '', '60a469b791c625fdc783767bdc648b18.jpg', NULL, 0, 0, 0, '2018-05-30 15:31:41', 'administrator', '2018-05-30 15:31:41', 'administrator'),
(14, 'con-tuyen-dung', 13, '', NULL, NULL, 0, 0, 1, '2018-05-21 16:04:28', 'administrator', '2018-05-21 16:04:28', 'administrator'),
(15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 14, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:06:11', 'administrator', '2018-05-30 12:06:11', 'administrator'),
(16, 'asdasdasdasdasd', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:21:30', 'administrator', '2018-05-30 12:21:30', 'administrator'),
(17, 'asdasdasdasdasd-1', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:44:55', 'administrator', '2018-05-30 12:44:55', 'administrator'),
(18, 'asdasdasdasdasd-2', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:45:31', 'administrator', '2018-05-30 12:45:31', 'administrator'),
(19, 'qqqqqqqqqqqqqqq', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 14:05:04', 'administrator', '2018-05-30 14:05:04', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `language`, `metakeywords`, `metadescription`) VALUES
(19, 10, '  Giới thiệu', 'vi', ' Mowis', '  Mowis'),
(20, 10, 'About  ', 'en', ' new', ' new'),
(21, 11, '  Bài viết', 'vi', ' Danh muc mới', ' bài viết mới12'),
(22, 11, 'BLog  ', 'en', ' ', ' '),
(23, 12, '   Tin tức 1', 'vi', '', ''),
(24, 12, 'News   ', 'en', '', ''),
(25, 13, ' Tuyển dụng', 'vi', '', ''),
(26, 13, 'Recruitment ', 'en', '', ''),
(27, 14, 'COn tuyen dung', 'vi', '', ''),
(28, 14, 'COn tuyen dung', 'en', '', ''),
(29, 15, ' aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'vi', '', ''),
(30, 15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa ', 'en', '', ''),
(31, 16, 'asdasdasdasdasd', 'vi', '', ''),
(32, 16, 'asdasdasdasdasd', 'en', '', ''),
(33, 17, 'asdasdasdasdasd', 'vi', '', ''),
(34, 17, 'asdasdasdasdasd', 'en', '', ''),
(35, 18, 'asdasdasdasdasd', 'vi', '', ''),
(36, 18, 'asdasdasdasdasd', 'en', '', ''),
(37, 19, 'qqqqqqqqqqqqqqq', 'vi', '', ''),
(38, 19, 'qqqqqqqqqqqqqqq', 'en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `data_lang`, `language`, `metakeywords`, `metadescription`) VALUES
(45, 24, 'Nó đến từ đâu? 1', 'Trái ngược với niềm tin phổ biến, Lorem Ipsum không đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, làm cho nó hơn 2000 tuổi.', '<p>Tr&aacute;i ngược với niềm tin phổ biến, Lorem Ipsum kh&ocirc;ng đơn giản l&agrave; văn bản ngẫu nhi&ecirc;n. N&oacute; c&oacute; nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, l&agrave;m cho n&oacute; hơn 2000 tuổi. Richard McClintock, một gi&aacute;o sư người Latinh tại trường đại học Hampden-Sydney ở Virginia, đ&atilde; t&igrave;m kiếm một trong những từ ngữ, từ ngữ Lorem Ipsum, v&agrave; th&ocirc;ng qua c&aacute;c tr&iacute;ch dẫn của từ trong văn học cổ điển, đ&atilde; kh&aacute;m ph&aacute; ra nguồn kh&ocirc;ng thể giải th&iacute;ch được. Lorem Ipsum xuất ph&aacute;t từ c&aacute;c phần 1.10.32 v&agrave; 1.10.33 của \"de Finibus Bonorum v&agrave; Malorum\" (C&otilde;i T&agrave; &aacute;c v&agrave; &Aacute;c ma) của Cicero, được viết v&agrave;o năm 45 TCN. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết về l&yacute; thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. D&ograve;ng đầu ti&ecirc;n của Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", xuất ph&aacute;t từ một d&ograve;ng trong phần 1.10.32.1</p>', '{}', 'vi', '', ''),
(46, 24, 'ádasdsad', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '{}', 'en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trademark_id` int(11) NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `common` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `type` tinyint(4) DEFAULT '0',
  `total_rating` int(11) DEFAULT '0',
  `count_rating` int(11) DEFAULT '0',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `templates_id`, `data`, `slug`, `avatar`, `image`, `trademark_id`, `features`, `price`, `color`, `common`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`, `type`, `total_rating`, `count_rating`, `file`) VALUES
(62, 27, 22, '[]', 'san-pham-1', '', 'CP-1-270x320.jpg', 4, '[\"1\"]', '[\"1000\",\"900\"]', '[\"1\",\"2\"]', '{\"color\":[\"1\",\"2\"],\"price_color\":[\"1000\",\"900\"],\"promotion_color\":[\"\",\"\"],\"quantity\":[\"1000\",\"1000\"],\"img_color\":[[\"CP-1-270x3201.jpg\"],[\"CP-1-270x3202.jpg\"]],\"img_activated\":[\"\",\"\"],\"promotion_check\":[\"false\",\"false\"]}', '2018-10-05 16:27:54', 'minhminh', '2018-10-05 16:27:54', 'minhminh', 0, 0, 0, 152, 33, NULL),
(63, 26, 22, '[]', 'san-pham-2', '', 'czl_11789117-270x320.jpg', 3, '[\"3\"]', '[\"1800\",\"1500\"]', '[\"3\",\"1\"]', '{\"color\":[\"3\",\"1\"],\"price_color\":[\"2000\",\"1800\"],\"promotion_color\":[\"1800\",\"1500\"],\"quantity\":[\"1000\",\"1000\"],\"img_color\":[[\"czl_11789117-270x3201.jpg\"],[\"czl_11789117-270x3202.jpg\"]],\"img_activated\":[\"\",\"\"],\"promotion_check\":[\"true\",\"true\"]}', '2018-10-05 16:09:55', 'minhminh', '2018-10-05 16:09:55', 'minhminh', 0, 0, 0, 110, 23, NULL),
(64, 25, 22, '[]', 'san-pham-3', '', 'images.jpg', 2, '[\"1\",\"2\"]', '[\"2700\",\"2600\",\"2800\"]', '[\"1\",\"2\",\"3\"]', '{\"color\":[\"1\",\"2\",\"3\"],\"price_color\":[\"3000\",\"2900\",\"2800\"],\"promotion_color\":[\"2700\",\"2600\",\"2750\"],\"quantity\":[\"100\",\"100\",\"100\"],\"img_color\":[[\"images1.jpg\"],[\"images2.jpg\"],[\"czl_11779847-270x320.jpg\"]],\"img_activated\":[\"\",\"\",\"\"],\"promotion_check\":[\"true\",\"true\",\"false\"]}', '2018-10-09 10:26:53', 'administrator', '2018-10-09 10:26:53', 'administrator', 0, 0, 0, 130, 29, 'phan-thich-chuc-nang-website-gioi-thieu-viec-lam-934.docx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(23, 'speakers', 0, 0, '2018-10-05 15:12:55', 'administrator', '2018-10-05 15:12:55', 'administrator', '', '1.jpg', NULL, 0),
(24, 'headphones', 0, 0, '2018-10-05 15:14:07', 'administrator', '2018-10-05 15:14:07', 'administrator', '', '3096360_underneath_the_tree-wallpaper-1920x1080.jpg', NULL, 0),
(25, 'danh-muc-1', 23, 0, '2018-10-05 15:17:34', 'administrator', '2018-10-05 15:17:34', 'administrator', '', 'a93f276dac1e660046d9f6201cb68701.jpg', NULL, 0),
(26, 'danh-muc-2', 23, 0, '2018-10-05 15:18:18', 'administrator', '2018-10-05 15:18:18', 'administrator', '', 'photo-1428515613728-6b4607e44363.jpg', NULL, 0),
(27, 'in-ear', 24, 0, '2018-10-05 15:19:06', 'administrator', '2018-10-05 15:19:06', 'administrator', '', 'photo-1468071174046-657d9d351a40.jpg', NULL, 0),
(28, 'over-ear', 24, 0, '2018-10-05 15:19:30', 'administrator', '2018-10-05 15:19:30', 'administrator', '', 'czl_11789117-270x320.jpg', NULL, 0),
(29, 'accessories', 0, 0, '2018-10-05 15:20:10', 'administrator', '2018-10-05 15:20:10', 'administrator', '', 'a93f276dac1e660046d9f6201cb68701.jpg', NULL, 0),
(30, 'cable', 29, 0, '2018-10-05 15:20:44', 'administrator', '2018-10-05 15:20:44', 'administrator', '', 'photo-1498092590708-048e0e2f46d7.jpg', NULL, 0),
(31, 'ampli', 29, 0, '2018-10-05 15:20:58', 'administrator', '2018-10-05 15:20:58', 'administrator', '', 'photo-1530652939501-242d51dfeee4.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `language`) VALUES
(89, 23, 'Speakers', 'vi'),
(90, 23, 'Speakers', 'en'),
(91, 24, 'Headphones', 'vi'),
(92, 24, 'Headphones ', 'en'),
(93, 25, 'Danh muc 1', 'vi'),
(94, 25, 'Danh muc 1', 'en'),
(95, 26, 'danh muc 2', 'vi'),
(96, 26, 'danh muc 2', 'en'),
(97, 27, 'In-ear', 'vi'),
(98, 27, 'In-ear', 'en'),
(99, 28, 'Over-ear', 'vi'),
(100, 28, 'Over-ear', 'en'),
(101, 29, 'Accessories', 'vi'),
(102, 29, 'Accessories', 'en'),
(103, 30, 'Cable', 'vi'),
(104, 30, 'Cable', 'en'),
(105, 31, 'Ampli', 'vi'),
(106, 31, 'Ampli', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_lang`
--

CREATE TABLE `product_lang` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `data_lang`, `language`) VALUES
(121, 62, 'sản phâm 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'vi'),
(122, 62, 'product 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'en'),
(123, 63, 'sản phẩm 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'vi'),
(124, 63, 'product 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'en'),
(125, 64, 'sản phẩm 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"100\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'vi'),
(126, 64, 'product 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '{\"kich_thuoc\":\"100\",\"chi_tiet\":\"\",\"phu_kien\":\"\"}', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `region_id` int(11) NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `avatar`, `image`, `region_id`, `title_vi`, `slug`, `title_en`, `description_vi`, `description_en`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_active`) VALUES
(2, 'd939ec87c8b72f2c924f609c86a1c8f8.jpg', '[\"d939ec87c8b72f2c924f609c86a1c8f8.jpg\",\"aa67081470343b12bbf52e5d730e4c41.png\"]', 2, 'Hà Nội', 'ha-noi', 'Hà Nội', 'Hà Nội', 'Hà Nội', '2018-12-15 17:22:24', 'administrator', '2018-12-15 17:22:24', 'administrator', 0, 0),
(3, 'd3c9a575c08c172a5552b07ecc3c2d91.jpg', '[\"d3c9a575c08c172a5552b07ecc3c2d91.jpg\",\"29170a434e7a7d03d275792464e79e8a.jpg\"]', 2, 'Thái Nguyên', 'thai-nguyen', 'Thái Nguyên', 'Thái Nguyên', 'Thái Nguyên', '2018-12-15 17:21:40', 'administrator', '2018-12-15 17:21:40', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Pending; 1: Approve; 2: Reject',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `quotation`
--

INSERT INTO `quotation` (`id`, `name`, `email`, `phone`, `content`, `image`, `created_at`, `status`, `is_deleted`) VALUES
(1, 'An Nguyen', 'vinhan16sep@gmail.com', '1234567777', 'asdasd', 'driver-license.jpg', NULL, 1, 0),
(2, 'lương quốc hưng', 'annv86vn@gmail.com', '0916595514', 'Mình muốn xin báo giá', 'cover.JPG', NULL, 1, 0),
(3, 'Hưng', 'leka.249@gmail.com', '+84916595514', 'nvbnvcbncvbncbvn', 'slide_2.jpg', NULL, 2, 0),
(4, 'Hưng', 'leka.249@gmail.com', '+84916595514', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget metus ultrices, lacinia orci ut, ultricies quam. Mauris pulvinar gravida risus, id pellentesque erat sagittis id. Duis rhoncus ut nisi vel laoreet. Nunc felis est, interdum vel viverra eget, venenatis id elit. Duis nec mauris malesuada, porttitor leo quis, hendrerit augue. Donec quam leo, iaculis eu odio nec, pulvinar ultrices enim. Aliquam erat volutpat. Cras at tristique risus. Nunc nulla tortor, ultrices vitae odio vitae, sagittis suscipit orci. Suspendisse faucibus tincidunt quam. Mauris suscipit lacinia arcu non ornare. Integer ut interdum massa, in ultrices metus.\r\n\r\nProin sit amet elit sit amet sapien dignissim suscipit. Quisque semper blandit ipsum ac bibendum. Aliquam vel mauris bibendum, commodo urna sit amet, interdum nibh. Nullam vitae sollicitudin nunc. Sed dui tortor, suscipit sed placerat tristique, laoreet quis odio. Pellentesque sit amet sapien tincidunt, condimentum lorem a, auctor velit. Donec molestie diam sed ex dapibus, eget maximus risus imperdiet. Vestibulum vel pharetra velit. Aliquam molestie congue pretium. Integer vehicula tellus purus, vitae varius dui pulvinar at. Maecenas non velit eu felis porta blandit.\r\n\r\nAliquam tincidunt ex non nunc vulputate condimentum in ac libero. Nullam sit amet eros imperdiet nunc eleifend sodales. Nunc accumsan quam sed ipsum finibus egestas. Mauris ut ante risus. Suspendisse sagittis nibh lobortis velit luctus malesuada at eget augue. Mauris ac sollicitudin ex, sit amet elementum justo. Suspendisse potenti. Curabitur gravida at dolor sed dignissim. Nam posuere sed nulla et euismod. Phasellus pellentesque nec leo commodo iaculis.\r\n\r\nIn volutpat, lectus vel consectetur varius, orci nulla posuere odio, sit amet luctus neque dolor vitae enim. Etiam vel est ac enim porttitor euismod. Nullam sed ligula felis. Maecenas nec maximus nulla. Phasellus lacinia non quam vel viverra. Nulla interdum sit amet dolor sollicitudin vehicula. Ut pellentesque a libero vel maximus. Fusce dignissim leo nec nibh maximus, quis tempor elit vehicula. Nam nec risus urna.', 'stock-photo-maccha-green-tea-566368306.jpg', NULL, 1, 0),
(5, 'Phạm Anh Lân', '123123', '35634753678568', '2131231231', '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', NULL, 1, 0),
(6, 'an nguyen', 'admin@admin.com', '1234567777', 'ád', 'Get-Fired-Up-Foods-Glossy.jpg', NULL, 0, 0),
(7, 'Phạm Anh Lân', 'abc@gmail.com', '65496319498', 'adsafgsa ãcvafg', '2017-Porsche-Panamera-Turbo-front-three-quarter-031.jpg', NULL, 0, 0),
(8, 'Test name', 'testemail@email.com', '1234567777', 'Test content', '123.jpg', NULL, 0, 0),
(9, 'an nguyen', 'admin@admin.com', '1234567777', 'asd', '333.jpg', NULL, 0, 0),
(10, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a.jpg', NULL, 0, 0),
(11, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1).jpg', NULL, 0, 0),
(12, 'asd', 'admin@admin.com', '1234567777', '', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1)1.jpg', NULL, 0, 0),
(13, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1)2.jpg', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `description_image` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `status`, `description_image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 1, '', '2017-08-23 04:50:12', 'administrator', '2017-10-20 14:19:15', 'administrator', 1),
(2, 0, 'car4.jpeg', '2017-08-23 04:51:48', 'administrator', '2017-10-09 23:32:28', 'administrator', 1),
(3, 1, '', '2017-11-01 11:45:13', 'administrator', '2017-11-30 09:10:41', 'administrator', 0),
(4, 1, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', '2017-11-30 09:24:37', 'administrator', '2017-11-30 09:24:37', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment_lang`
--

CREATE TABLE `recruitment_lang` (
  `id` int(11) NOT NULL,
  `recruitment_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `recruitment_lang`
--

INSERT INTO `recruitment_lang` (`id`, `recruitment_id`, `title`, `description`, `content`, `language`) VALUES
(7, 1, 'abc', 'tuyen dung 1', '<p>tuyen dung 1</p>', 'vi'),
(8, 1, 'def', 'recruitment 1', '<p>recruitment 1</p>', 'en'),
(9, 2, 'tuyen dung 2', 'tuyen dung 2', '<p>tuyen dung 2</p>', 'vi'),
(10, 2, 'recruitment 2', 'recruitment 2', '<p>recruitment 2</p>', 'en'),
(11, 3, 'Tuyển dụng', 'àfsdafgsjhgasdhFDAFJHAHaFHadfhgjmfghmm svbng', '<p>sadfasdgsdf</p>', 'vi'),
(12, 3, 'recuitment', 'ádafghdafh', '<p>hfsjhdjgh</p>', 'en'),
(13, 4, '1235312456', '564561256', '<p>267265364</p>', 'vi'),
(14, 4, '35624', '2513451235', '<p>356874784678</p>', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `region`
--

INSERT INTO `region` (`id`, `avatar`, `image`, `slug`, `title_vi`, `title_en`, `description_vi`, `description_en`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_active`) VALUES
(2, 'c2b5b5e03850ba7cd149a728c946b79a.jpg', '[\"c2b5b5e03850ba7cd149a728c946b79a.jpg\",\"f2e04236c0ca75eb237c29baccf41a7c.jpg\",\"0dd8ab59e40fcf92b9b45fef6d94f016.png\",\"16a6c465a44974bee5139e19a159112d.jpg\"]', 'mien-bac', 'Miền Bắc', 'Miền Bắc', 'Miền Bắc', 'Miền Bắc', '2018-12-15 20:43:02', 'administrator', '2018-12-15 20:43:02', 'administrator', 0, 0),
(3, 'dc46977dc144da4d49e816b94f8b914e.jpg', '[\"dc46977dc144da4d49e816b94f8b914e.jpg\"]', 'mien-trung', 'Miền Trung', 'Miền Trung', 'Miền Trung', 'Miền Trung', '2018-12-15 20:42:38', 'administrator', '2018-12-15 20:42:38', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('05j3icrhgf55v0k4t4uots65rln6uh4v', '::1', 1544882935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838323933353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('0lcst22md667bcjq7628giimjihr07hs', '::1', 1544864834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836343833343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('0ldng3jbaot5i7ucnql5pprppd444q7r', '::1', 1544897910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343839373832393b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383032383233223b6c6173745f636865636b7c693a313534343839373833353b6d6573736167655f6572726f727c733a34323a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad70223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('1fibpg6dl58brrrgi4tocf7elpvt1ov9', '::1', 1544981260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343938313236303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('1gk19tk01t53hkv16qo9rb485qaol3h5', '::1', 1544977364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937373336343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('1ka4981qsqro04dl2ej17jcncndelnb4', '::1', 1544965582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936353538323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('1llessnsevo8hoaqdsjjod55fvddaf25', '::1', 1544876659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837363635393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('1s3gi4ef824fvbf5minfj7fl4k9ovi0d', '::1', 1544867219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836373231393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('1s75hk4ccc1tbpek9959glk1u76e7hne', '::1', 1544882632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838323633323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('2gc53ei3604a165ackni4gtpt3stutap', '::1', 1544866279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836363237393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('2t0iikd1fp6d1n9p6jsmrf9u3b5r606l', '::1', 1544980280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343938303238303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('2u9qh9l13msaa0d3bma24g2rm0q9781u', '::1', 1544967472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936373437323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('2v81qjt2h1e1bklj9k1fd4j3oe48dh11', '::1', 1544865606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836353630363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('3ls792r4f9jbq9kpiuch8u7flo94lmqo', '::1', 1544877749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837373734393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('4p4adugv1eaarf5fofdu19dbdiiel7eo', '::1', 1544864027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836343032373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('4rkdlc6son19og0232mavvreduljtd1l', '::1', 1544871574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837313537343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('5boguc8kthgji4af9p9bgi3b0apqr5gu', '::1', 1544960964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936303934313b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b6d6573736167655f6572726f727c733a34323a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad70223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('6530dgr103acs7ca19dao7g8r8qd77b3', '::1', 1544863294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836333239343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('6l1he6os2l39c0j6i9504vb06u7244fh', '::1', 1544865174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836353137343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('73mufhh4u6vlg5c9nhf221m7o2v28bcp', '::1', 1544970104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937303130343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('7cfbuf2ubjorddnkoq9ajkj2rpffb100', '::1', 1544876210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837363231303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('7q4a3g3g90unkdep81p5n7mrrudohv7r', '::1', 1544869058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836393035383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('7qsduekiv7umo09iq23p71guon4b6snu', '::1', 1544878589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837383538393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('7via5kebm0hvg8278ea069ikvniu266u', '::1', 1544969418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936393431383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('8l5bcnn1vsvmkqerh2nuktlp9oe5t2t3', '::1', 1544968743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936383734333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('ahqb1ub8g6knfkof7idie9j71gh3mi0m', '::1', 1544880612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838303631323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('ajjed3sdc2c8dpf67gajdc82jf2k43me', '::1', 1544880928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838303932383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('b4g98jivdmnd6aaunfalspn3dhcfl33k', '::1', 1544978430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937383433303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('bfh9elj1gn5p5tvnsdrkumpna8eqqql1', '::1', 1544966001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936363030313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('cgkfcbsttkl6thdsshb0ekdfqr90n6am', '::1', 1544971356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937313135373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('ci3052t8vllgptkbn6b92ftvh3jrak2b', '::1', 1544863675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836333637353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('cn3907sb3j7lf7un0e4deoq1qjcq95ps', '::1', 1544870628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837303632383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('coovi0s9rqo3l1frk61pe3sg602ne2s0', '::1', 1544978731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937383733313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('csf59apb6amih9fs30oftd0rpvtkdsut', '::1', 1544980715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343938303731353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('dit24vc79qdh7voh03ile3o65fbor0go', '::1', 1544881860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838313836303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('fasq3garrorlsli3o6359mrtos2bmmui', '::1', 1544960567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936303536373b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b6d6573736167655f6572726f727c733a37353a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad7020686179207468e1bbb163206869e1bb876e207468616f2074c3a163206ec3a079223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('fjhijlglrbarc0cerd1kpbb5tqb9lo2k', '::1', 1544960941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936303934313b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b6d6573736167655f6572726f727c733a34323a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad70223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('frtevjlc9dnlumvr5qg9lrjon0rrtb8p', '::1', 1544885887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838353838373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('i1j5e08kf2ku42h0j0345m5sbokfnvds', '::1', 1544968351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936383335313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('i44la3natjjb9emp0t7s3qo27gu1ccop', '::1', 1544966437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936363433373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('i4r10t46rti18lpc37r5l2oop68ert3n', '::1', 1544892224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343839323232343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('icjec165b9fmc2499ilptmtvfiu7c966', '::1', 1544877028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837373032383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('ifo4j565o09g3bu9qo9agfsg6g2bjcpb', '::1', 1544977693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937373639333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('ik1fi94iig3cvs1qt3gjb7pfupv4j9ut', '::1', 1544967980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936373938303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('ikqjb74gko4traedc2ils4tk08anp8b4', '::1', 1544864342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836343334323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('j3o54klckoe36d5t1161likqj0nmttdv', '::1', 1544981793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343938313739333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('jmpui34ujrqbco51j0v0qjlcle0lsfgq', '::1', 1544884151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838343135313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('k5n8lmid8ms3jbmaflh78eka792e1s5g', '::1', 1544884527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838343532373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('k6vm220qptq5og4euaafrpgo6sh48dj0', '::1', 1544960053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936303035333b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b6d6573736167655f6572726f727c733a37353a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad7020686179207468e1bbb163206869e1bb876e207468616f2074c3a163206ec3a079223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('ldf1m0f89fs5332shdj8h20tkfddrrs1', '::1', 1544969106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936393130363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('ljencefss3gpoqem19gkgfis9qha5d89', '::1', 1544981793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343938313739333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('mj5gcnohb3gmck2kun9f9c54l265nj84', '::1', 1544881539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838313533393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('mjpdck5ttu1tp0hhpda6jdkmtkn7h9j9', '::1', 1544891915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343839313931353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('ms65louv44mavgigp7lptueulassho57', '::1', 1544967092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936373039323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('n2k6a4hrf3tp80vo348o3ff8c830ku1i', '::1', 1544878280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837383238303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('n3jukotlt0bc51ha0q5tnhltm21knpb9', '::1', 1544885393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838353339333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('naa2pulsbjoa312dc6ud95npq26dvdsh', '::1', 1544881236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838313233363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('o1q4pjvemkgmtfg5ipu9aobdqnvbqkmf', '::1', 1544969789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343936393738393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('o7391ggcsedr7lu3ss6l646mal7cv786', '::1', 1544870196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837303139363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('o7j5hnh0m3lgt2lpf4jtd7jo9hrn3bb2', '::1', 1544868007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836383030373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('o977c2bmj1tg0id98tvjt818lrv1bat6', '::1', 1544959659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343935393635393b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b6d6573736167655f6572726f727c733a37353a2254c3a069206b686fe1baa36e206b68c3b46e672063c3b320717579e1bb816e20747275792063e1baad7020686179207468e1bbb163206869e1bb876e207468616f2074c3a163206ec3a079223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('oe3s74s1iqvaa1ug27ro4jjqbig57ge9', '::1', 1544970666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937303636363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('oeg4qiisccf87rla4le1hkp3d6au2lh4', '::1', 1544979033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937393033333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('oj23apluv8etrnpqbkgufctspcr7urut', '::1', 1544979974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937393937343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434393633383434223b6c6173745f636865636b7c693a313534343937363832383b),
('on1s03ru2imal35atm8pt9fiffcus9kq', '::1', 1544869527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836393532373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('ovh1pab0b59i48sckearnensk16lesrj', '::1', 1544877381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837373338313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('p7552k94fos0k2v5us311ltlqebn1e35', '::1', 1544882175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838323137353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('qe4uemlmkpebk7l76tlg6e4epodg783a', '::1', 1544880306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838303330363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('qgusje7lh7kp9eho6sqef1ll9k9hesd3', '::1', 1544971157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937313135373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383632383232223b6c6173745f636865636b7c693a313534343936333834343b),
('qk7vd2o43ghlkatd3m0b31k6qhanqbei', '::1', 1544883426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838333432363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('sfr5qa7rmhva9co68t1hrq39r0ju7ple', '::1', 1544866586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836363538363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('spmv98798modgbo59d6cphbi4a5o9ojl', '::1', 1544885003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343838353030333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226e6577223b7d),
('st7vecj5lper0qd4etfa06c6skgp95o7', '::1', 1544865907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836353930373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('tbj17v8dn7hcev2h47ss257j2e292ida', '::1', 1544866909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836363930393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('th0u7utkl250au2dt10h951he4urrqgm', '::1', 1544867669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836373636393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('tqdstksrofaunmqh1jcupv3tdb5csu83', '::1', 1544959149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343935393134393b6964656e746974797c733a31353a226d696e68407472756f6e672e636f6d223b656d61696c7c733a31353a226d696e68407472756f6e672e636f6d223b757365725f69647c733a323a223230223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383937383335223b6c6173745f636865636b7c693a313534343935383835393b),
('v2481067vunc6at0h5smks72brpv7707', '::1', 1544870938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837303933383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('vamckfg90l8esb7ut698td86qbjoemo0', '::1', 1544875677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837353637373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('vc8qk6r7fdjqloag9eqrps488t2lub9t', '::1', 1544868757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836383735373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b6d6573736167655f6572726f727c733a35323a22c49075c3b4692066696c6520696d616765207068e1baa369206cc3a0206a7067207c206a706567207c20706e67207c2067696621223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('vppv6mi4uqglod99lqu35phno9lrr0r4', '::1', 1544871243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343837313234333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b),
('vqpss4ahuu2m3td4j33tcdocmjo69gb4', '::1', 1544896769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343839363736393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434383034303331223b6c6173745f636865636b7c693a313534343836323832323b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `type`, `title`, `data`, `is_activated`, `is_deleted`) VALUES
(8, 1, 'Cấu hình mới', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"chon_nhieu_anh_moi\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn nhi\\u1ec1u \\u1ea3nh moi\",\"en\":\"Image Multiple\"},\"check_multiple\":\"true\"},\"chon_moi\":{\"description\":\"\",\"type\":\"checkbox\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn m\\u1edbi\",\"en\":\"Ch\\u1ecdn m\\u1edbi1\"},\"choice\":{\"vi\":[\"\\u00c2m nh\\u1ea1c1\",\"\\u0110\\u00e0n1\"],\"en\":[\"nhac1\",\"dan1\"]}},\"gioi_tinh\":{\"description\":\"\",\"type\":\"radio\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u1edbi t\\u00ednh\",\"en\":\"Sex\"},\"choice\":{\"vi\":[\"Nam\",\"N\\u1eef\",\"V\\u00f4 gi\\u1edbi\"],\"en\":[\"Male\",\"Female\",\"Boundless\"]},\"required\":\"\"}}', 0, 0),
(9, 1, 'Cấu hình mới 1', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"gioi_tinh\":{\"description\":\"\",\"type\":\"radio\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u1edbi t\\u00ednh\",\"en\":\"Sex\"},\"choice\":{\"vi\":[\"Nam\",\"N\\u1eef\",\"V\\u00f4 gi\\u1edbi\"],\"en\":[\"Male\",\"Female\",\"Boundless\"]},\"required\":\"\"},\"chon_nhieu_anh\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn nhi\\u1ec1u \\u1ea3nh\",\"en\":\"Image Multiple\"},\"check_multiple\":\"true\"}}', 0, 0),
(10, 2, 'Cấu hình product', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"hinh_anh\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}}}', 0, 0),
(11, 2, 'a', 'false', 0, 1),
(12, 2, 'a', 'false', 0, 0),
(13, 2, 'as', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"quantity\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"S\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Quantity\"}},\"price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1\",\"en\":\"Price\"}}}', 0, 0),
(14, 2, 'aaa', 'false', 0, 0),
(15, 2, 'aaaaaaaaaa', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"quantity\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"S\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Quantity\"}},\"price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1\",\"en\":\"Price\"}},\"aaaaaaaaaaa\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"aaaaaaaaaaa\",\"en\":\"qqqqqqqqqqq\"}}}', 0, 0),
(16, 2, 'ffffffffff', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"quantity\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"S\\u1ed1 l\\u01b0\\u1ee3ng\",\"en\":\"Quantity\"}},\"price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1\",\"en\":\"Price\"}}}', 0, 0),
(17, 2, 'Test', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"quantity\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"price\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"}}', 0, 0),
(18, 2, 'Tesst them', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"trademark\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"features\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"}}', 0, 0),
(19, 2, 'Test mới', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"trademark\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"features\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"},\"common_price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1 chung\",\"en\":\"Common price\"}}}', 0, 1),
(20, 2, 'Test mới', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"trademark\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"features\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"},\"common_price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1 chung cho s\\u1ea3n ph\\u1ea9m (\\u0111\\u01a1n v\\u1ecb VND)\",\"en\":\"Common price\"}}}', 0, 0),
(21, 2, 'a', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"trademark\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"features\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"},\"common_price\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u00e1 chung cho s\\u1ea3n ph\\u1ea9m (\\u0111\\u01a1n v\\u1ecb VND)\",\"en\":\"Common price\"}}}', 0, 0),
(22, 2, 'Cấu hình mới product', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"trademark\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\",\"en\":\"Trademark\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"features\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"T\\u00ednh n\\u0103ng\",\"en\":\"Features\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"check_multiple\":\"true\"},\"kich_thuoc\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"K\\u00edch th\\u01b0\\u1edbc\",\"en\":\"Size\"}},\"chi_tiet\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Chi ti\\u1ebft\",\"en\":\"Detail\"}},\"phu_kien\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ph\\u1ee5 ki\\u1ec7n\",\"en\":\"Accessories\"}}}', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trademark`
--

CREATE TABLE `trademark` (
  `id` int(11) NOT NULL,
  `vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trademark`
--

INSERT INTO `trademark` (`id`, `vi`, `en`, `product_category_id`, `is_deleted`) VALUES
(2, 'Thuong Hieu 1', 'Trademark 1', 25, 0),
(3, 'Thương Hiệu 2', 'Trademark 2', 26, 0),
(4, 'Thuong Hieu In Ear', 'Thuong Hieu In Ear', 27, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `address`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1544976828, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
(18, '::1', 'Minh', '$2y$08$d33ToIMN6nUEyZzgjbU0LuYsnGigsXP3gWbcytoF9.a2T3ujYXwDq', NULL, 'minh@minh.com', NULL, NULL, NULL, NULL, 1544705005, 1544705762, 1, 'Minh', 'Minh', NULL, NULL, NULL),
(20, '::1', 'Minh', '$2y$08$9LEO8vT/k9qc7QiFx.aRseBsRQ.TJCx6zkroai3vCWyh34Tq4ipZ2', NULL, 'minh@truong.com', NULL, NULL, NULL, NULL, 1544705472, 1544958859, 1, 'Minh', 'Truong', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(21, 20, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`product_id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trademark`
--
ALTER TABLE `trademark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `trademark`
--
ALTER TABLE `trademark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `menu_lang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
