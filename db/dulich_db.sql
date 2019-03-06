-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 02:22 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulich_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `title_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: là bài viết, 1: là dịch vụ, 2: là team'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `is_deleted`, `title_vi`, `title_en`, `description_vi`, `description_en`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`, `type`) VALUES
(31, '4906c24784e2f171cd5dee2fe29ee5b1.jpg', 0, 'Bài viết mới', 'Bài viết mới', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:46:15', 'administrator', '2019-01-08 21:46:15', 'administrator', 0),
(35, 'b452227bc549b04fc4bcfbcabb4f75ff.jpg', 0, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:47:08', 'administrator', '2019-01-08 21:47:08', 'administrator', 1),
(36, '555bf713da9de1da179277cec6d51615.jpg', 0, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:46:59', 'administrator', '2019-01-08 21:46:59', 'administrator', 1),
(38, '61873acf2095cf8775412496bc1b3279.jpg', 0, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:47:27', 'administrator', '2019-01-08 21:47:27', 'administrator', 2),
(39, '45f0d6d2fa8f4f839e5f388938748ddb.jpg', 0, 'Bài viết mới 1', 'Bài viết mới 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:46:29', 'administrator', '2019-01-08 21:46:29', 'administrator', 0),
(40, '16a08b90aca39ec4ace09a53b5d044eb.jpg', 0, 'Bài viết mới 2', 'Bài viết mới 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:46:41', 'administrator', '2019-01-08 21:46:41', 'administrator', 0),
(41, '7aa276ffdbda761aba45a34f322f24d3.jpg', 0, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 21:47:15', 'administrator', '2019-01-08 21:47:15', 'administrator', 1),
(42, 'dd5927562f777beb647fb7709980df6d.jpg', 0, 'Banner', 'Banner', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, '2019-01-08 22:42:21', 'administrator', '2019-01-08 22:42:21', 'administrator', 3);

-- --------------------------------------------------------

--
-- Table structure for table `about_lang`
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
-- Dumping data for table `about_lang`
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
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text,
  `is_active` tinyint(1) DEFAULT '0',
  `url` text,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `title_vi` varchar(250) NOT NULL,
  `title_en` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description_vi` text NOT NULL,
  `description_en` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
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
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `avatar`, `image`, `region_id`, `province_id`, `author`, `nationality`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `slug`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, '5a05da3d0397f4db34165f1a2a16469e.jpg', '[\"5a05da3d0397f4db34165f1a2a16469e.jpg\"]', 2, 2, 'Jimmy', 'Tây Ba Nha', 'Tiêu đề 1', 'Title 1', '', '', '', '', 'tieu-de-1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, 1, 0, '2018-12-24 06:30:40', 'administrator', '2018-12-24 06:30:40', 'administrator'),
(8, '52f4622836d4d439549e5c21f7049453.jpg', '[\"52f4622836d4d439549e5c21f7049453.jpg\"]', 2, 2, 'Jimmy', 'Tây Ba Nha', 'Tiêu đề 2', 'Title 2', '', '', '', '', 'tieu-de-2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 0, 1, 0, '2018-12-24 06:31:08', 'administrator', '2018-12-24 06:31:08', 'administrator'),
(9, '7738a8f2b654edb2f2094502514d590d.jpg', '[\"7738a8f2b654edb2f2094502514d590d.jpg\",\"d6f6eb7bb74224e3e2da0d0a7652b7ad.jpg\"]', 2, 2, 'Jimmy', 'Tây Ba Nha', 'Tiêu đề 3', 'Title 3', '', '', '', '', 'tieu-de-3', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, 0, 0, '2019-01-19 21:09:17', 'administrator', '2019-01-19 21:09:17', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
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
-- Dumping data for table `comment`
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
-- Table structure for table `config_contact`
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
-- Dumping data for table `config_contact`
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
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `body_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(4) NOT NULL,
  `cuisine_category_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `image`, `avatar`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `slug`, `is_top`, `cuisine_category_id`, `province_id`, `region_id`) VALUES
(8, '[\"ca1161da75067971b411721fae90f28d.jpg\"]', 'ca1161da75067971b411721fae90f28d.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 0, 0, '2018-12-21 23:17:44', 'administrator', '2018-12-21 23:17:44', 'administrator', 'banh-chung', 1, 4, 0, 2),
(9, '[\"c7dd720afaff0e33d0051a8fdb6f2757.jpg\"]', 'c7dd720afaff0e33d0051a8fdb6f2757.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 0, 0, '2018-12-21 23:29:24', 'administrator', '2018-12-21 23:29:24', 'administrator', 'banh-chung-1', 1, 4, 0, 2),
(10, '[\"02f5bc5d66443053b3446c7b491efd8d.jpg\"]', '02f5bc5d66443053b3446c7b491efd8d.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:29:31', 'administrator', '2018-12-21 23:29:31', 'administrator', 'banh-chung-2', 1, 4, 0, 2),
(11, '[\"82ec3700cb99a2c1991bff8dffec3969.jpg\"]', '82ec3700cb99a2c1991bff8dffec3969.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:29:38', 'administrator', '2018-12-21 23:29:38', 'administrator', 'banh-chung-3', 1, 4, 0, 2),
(12, '[\"8afef203413d783318411ae8e42d7d7f.jpg\"]', '8afef203413d783318411ae8e42d7d7f.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:31:52', 'administrator', '2018-12-21 23:31:52', 'administrator', 'banh-chung-4', 0, 3, 0, 2),
(13, '[\"94ff0390bc0394b3af447f34a3d21f17.jpg\"]', '94ff0390bc0394b3af447f34a3d21f17.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:32:00', 'administrator', '2018-12-21 23:32:00', 'administrator', 'banh-chung-5', 0, 3, 0, 2),
(14, '[\"c8ea0723e70e59c2b2e5c1b105da5e19.jpg\"]', 'c8ea0723e70e59c2b2e5c1b105da5e19.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:32:06', 'administrator', '2018-12-21 23:32:06', 'administrator', 'banh-chung-6', 0, 3, 0, 2),
(15, '[\"0a2faf3127cef67d0b2b0f0607865d7d.jpg\"]', '0a2faf3127cef67d0b2b0f0607865d7d.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:32:13', 'administrator', '2018-12-21 23:32:13', 'administrator', 'banh-chung-7', 0, 3, 0, 2),
(16, '[\"5643ea9ddc89884606b55c47d44b996b.jpg\"]', '5643ea9ddc89884606b55c47d44b996b.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:33:21', 'administrator', '2018-12-21 23:33:21', 'administrator', 'banh-chung-8', 0, 1, 0, 2),
(17, '[\"eea53ed3ae50a9e64ada4a8d17d62372.jpg\"]', 'eea53ed3ae50a9e64ada4a8d17d62372.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:33:27', 'administrator', '2018-12-21 23:33:27', 'administrator', 'banh-chung-9', 0, 1, 0, 2),
(18, '[\"ddba11700324dfa51ec3dd5b68f4ba59.jpg\"]', 'ddba11700324dfa51ec3dd5b68f4ba59.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:36:26', 'administrator', '2018-12-21 23:36:26', 'administrator', 'banh-chung-10', 0, 1, 0, 2),
(19, '[\"da8c01cb86db7342837a0d160c958c0c.jpg\"]', 'da8c01cb86db7342837a0d160c958c0c.jpg', 'Bánh Chưng', 'Chung cake', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2018-12-21 23:36:34', 'administrator', '2018-12-21 23:36:34', 'administrator', 'banh-chung-11', 0, 1, 0, 2),
(20, '[\"e93c1ccec663d1dfaa6d57eaf1fd7153.jpg\"]', 'e93c1ccec663d1dfaa6d57eaf1fd7153.jpg', 'Bánh chưng', 'Bánh chưng', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2019-02-20 23:24:52', 'administrator', '2019-02-20 23:24:52', 'administrator', 'banh-chung-12', 0, 4, 3, 2),
(21, '[\"d090280304fee5b9852dccd5104386d8.jpg\",\"f517799cdfb4d118eee937af982dc1a9.jpg\"]', 'f517799cdfb4d118eee937af982dc1a9.jpg', 'Bánh chưng', 'Bánh chưng', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', '', 1, 0, '2019-02-20 22:48:36', 'administrator', '2019-02-20 22:48:36', 'administrator', 'banh-chung-13', 0, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_category`
--

CREATE TABLE `cuisine_category` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cuisine_category`
--

INSERT INTO `cuisine_category` (`id`, `image`, `slug`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_active`) VALUES
(1, 'a75563dcde36524530d22c96ea267256.jpg', 'tim-an', 'Tìm ăn', 'Find Dinning', '', '', '', '', 'Tìm ăn', 'Find Dinning', '2018-12-21 22:23:00', 'administrator', '2018-12-21 22:23:00', 'administrator', 0, 1),
(3, '7e9f66e325ef48cf4837dff4d6af99fe.jpg', 'am-thuc-truyen-thong', ' Ẩm thực truyền thống', 'Traditional Cuisine', '', '', '', '', '\r\nẨm thực truyền thống', 'Traditional Cuisine', '2018-12-21 22:21:05', 'administrator', '2018-12-21 22:21:05', 'administrator', 0, 1),
(4, '3016593d1bcc1048717cfaee72ebc621.jpg', 'thuc-an-duong-pho', 'Thức ăn đường phố', 'Street Foods', '', '', '', '', 'Thức ăn đường phố', 'Street Foods', '2018-12-21 22:25:35', 'administrator', '2018-12-21 22:25:35', 'administrator', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `body_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(4) NOT NULL DEFAULT '0',
  `is_pinned` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `avatar`, `image`, `region_id`, `province_id`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `slug`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_pinned`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, '3be6813730d8d9c87568986453f254e9.jpg', '[\"772b1cb226da755c526424c52f020955.jpg\",\"f5487e6932ae5ecb0b8c41c1591644d6.jpg\",\"3be6813730d8d9c87568986453f254e9.jpg\"]', 2, 2, 'Test 1', 'Test', '', '', '', '', 'test-1', 'Test', 'Test', 'Test', 'Test', 1, 0, 1, 0, '2019-02-21 23:24:54', 'administrator', '2019-02-21 23:24:54', 'administrator'),
(2, 'f9d3f77bfdfb5d53555a452f8ffd3578.jpg', '[\"f9d3f77bfdfb5d53555a452f8ffd3578.jpg\",\"933ec8b3dfe1380cc11180da6edd5806.jpg\"]', 2, 2, 'destination mod', 'destination mod', '', '', '', '', 'destination-mod', 'destination mod', 'destination mod', 'destination mod', 'destination mod', 0, 1, 1, 0, '2019-02-21 23:25:47', 'administrator', '2019-02-21 23:25:47', 'administrator'),
(3, 'e97c443b5617e538ae2f87dc35af3745.jpg', '[\"e97c443b5617e538ae2f87dc35af3745.jpg\",\"6c799e140701f78ea3929f418b9a23cb.jpg\"]', 2, 2, 'destination mod 1', 'destination mod 1', '', '', '', '', 'destination-mod-1', 'destination mod', 'destination mod', '<img src=\"http://localhost/dulich/source/photo-1504674900247-0877df9cc836.jpg?1545241338988\" alt=\"photo-1504674900247-0877df9cc836\" />destination mod', 'destination mod', 0, 0, 1, 0, '2019-02-21 23:25:36', 'administrator', '2019-02-21 23:25:36', 'administrator'),
(4, '73e759c77e66319113c41aaf6f7ba560.jpg', '[\"73e759c77e66319113c41aaf6f7ba560.jpg\"]', 3, 4, 'Nghệ An 1', 'Nghệ An 1', '', '', '', '', 'nghe-an-1', 'Nghệ An 1', 'Nghệ An 1', 'Nghệ An 1', 'Nghệ An 1', 0, 0, 1, 0, '2018-12-20 20:44:37', 'administrator', '2018-12-20 20:44:37', 'administrator'),
(5, '46202e91479fc5d5d375c42cd0ef0020.jpg', '[\"46202e91479fc5d5d375c42cd0ef0020.jpg\"]', 3, 4, 'Nghệ An 2', 'Nghệ An 2', '', '', '', '', 'nghe-an-2', 'Nghệ An 2', 'Nghệ An 2', 'Nghệ An 2', 'Nghệ An 2', 0, 1, 1, 0, '2019-02-21 23:26:40', 'administrator', '2019-02-21 23:26:40', 'administrator'),
(6, '0f0c32eeb3b56b45f8199f161662ff9b.jpg', '[\"0f0c32eeb3b56b45f8199f161662ff9b.jpg\"]', 3, 4, 'Nghệ An 3', 'Nghệ An 3', '', '', '', '', 'nghe-an-3', 'Nghệ An 3', 'Nghệ An 3', 'Nghệ An 3', 'Nghệ An 3', 0, 0, 1, 0, '2018-12-20 20:46:05', 'administrator', '2018-12-20 20:46:05', 'administrator'),
(7, '22dad28a023bf2157e91a1d0a43672a4.jpg', '[\"22dad28a023bf2157e91a1d0a43672a4.jpg\"]', 4, 6, 'Hồ Chí Minh 1', 'Hồ Chí Minh 1', '', '', '', '', 'ho-chi-minh-1', 'Hồ Chí Minh 1', 'Hồ Chí Minh 1', 'Hồ Ch&iacute; Minh 1', 'Hồ Ch&iacute; Minh 1', 0, 0, 1, 0, '2018-12-20 20:46:35', 'administrator', '2018-12-20 20:46:35', 'administrator'),
(8, '802c7f21c7be78083d3329ffb327aeb8.jpg', '[\"802c7f21c7be78083d3329ffb327aeb8.jpg\"]', 4, 6, 'Hồ Chí Minh 2', 'Hồ Chí Minh 2', '', '', '', '', 'ho-chi-minh-2', 'Hồ Chí Minh 2', 'Hồ Chí Minh 2', 'Hồ Ch&iacute; Minh 2', 'Hồ Ch&iacute; Minh 2', 0, 0, 1, 0, '2018-12-20 20:46:58', 'administrator', '2018-12-20 20:46:58', 'administrator'),
(9, 'aff48ba1c30a022076fbb3496308fb68.jpg', '[\"aff48ba1c30a022076fbb3496308fb68.jpg\"]', 4, 7, 'Hồ Chí Minh 3', 'Hồ Chí Minh 3', '', '', '', '', 'ho-chi-minh-3', 'Hồ Chí Minh 3', 'Hồ Chí Minh 3', 'Hồ Ch&iacute; Minh 3', 'Hồ Ch&iacute; Minh 3', 0, 0, 1, 0, '2018-12-20 20:47:29', 'administrator', '2018-12-20 20:47:29', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
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
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `image`, `region_id`, `province_id`, `author`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `date_start`, `date_end`, `slug`) VALUES
(8, 'f1a29e0df9d32b839f4b5ec8750c356b.jpg', 4, 0, '', 'Lễ hội Đền Cao Lỗ Vương ngày 10 - tháng 3 ở làng Tiểu Than', 'Lễ hội Đền Cao Lỗ Vương ngày 10 - tháng 3 ở làng Tiểu Than', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 20:57:04', 'administrator', '2018-12-20 20:57:04', 'administrator', '2018-12-20 00:00:00', '2018-12-20 23:59:59', 'le-hoi-den-cao-lo-vuong-ngay-10---thang-3-o-lang-tieu-than'),
(9, '99a24f6abdc3730fc7c164379b3b7052.jpg', 4, 2, '', 'Lễ hội Đền Tam Phủ xã Cao Đức, huyện Gia Bình', 'Lễ hội Đền Tam Phủ xã Cao Đức, huyện Gia Bình', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 20:59:21', 'administrator', '2018-12-20 20:59:21', 'administrator', '2018-12-20 00:00:00', '2018-12-20 23:59:59', 'le-hoi-den-tam-phu-xa-cao-duc-huyen-gia-binh'),
(10, '733ce399bd8231573d4a0b37901a8fd6.jpg', 4, 2, '', 'Lễ hội Đình Châm Khê ngày 4 - tháng tám (âm)', 'Lễ hội Đình Châm Khê ngày 4 - tháng tám (âm)', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 20:58:57', 'administrator', '2018-12-20 20:58:57', 'administrator', '2018-12-20 00:00:00', '2018-12-20 23:59:59', 'le-hoi-dinh-cham-khe-ngay-4---thang-tam-am'),
(11, '595a471fa99c33427f728d16d9f16b2e.jpg', 4, 7, '', 'Lễ hội đền Bà Đen (Tây Ninh)', 'Lễ hội đền Bà Đen (Tây Ninh)', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 21:06:55', 'administrator', '2018-12-20 21:06:55', 'administrator', '2018-12-20 00:00:00', '2018-12-21 23:59:59', 'le-hoi-den-ba-den-tay-ninh'),
(12, 'ed37cc09e51251e92fc5f9b524a4f93b.jpg', 4, 7, '', 'Lễ hội miếu Bà Thiên Hậu (Bình Dương)', 'Lễ hội miếu Bà Thiên Hậu (Bình Dương)', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 21:08:00', 'administrator', '2018-12-20 21:08:00', 'administrator', '2018-12-20 00:00:00', '2018-12-21 23:59:59', 'le-hoi-mieu-ba-thien-hau-binh-duong'),
(13, '0c52a53136d8fa0be158ba7bec9b0225.jpg', 4, 7, '', 'Lễ hội Vía Bà (Bình Định)', 'Lễ hội Vía Bà (Bình Định)', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-20 21:07:45', 'administrator', '2018-12-20 21:07:45', 'administrator', '2018-12-20 00:00:00', '2018-12-21 23:59:59', 'le-hoi-via-ba-binh-dinh'),
(14, 'ca7d68cbf8d944fc3435b830d2ba12c2.jpg', 2, 5, '', 'Lễ hội đền Vua Mai (Nghệ An)', 'Festival 10', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-24 05:55:59', 'administrator', '2018-12-24 05:55:59', 'administrator', '2018-12-20 00:00:00', '2018-12-21 23:59:59', 'le-hoi-den-vua-mai-nghe-an'),
(15, '47c66da81ef19579f8a1a3343d554e1e.jpg', 2, 5, '', 'Lễ hội cầu Ngư (Huế)', 'Festival 9', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-24 05:55:35', 'administrator', '2018-12-24 05:55:35', 'administrator', '2018-12-18 00:00:00', '2018-12-21 23:59:59', 'le-hoi-cau-ngu-hue'),
(16, '0b881fa7997c2509f5a1b03b52abebd6.jpg', 2, 5, '', 'Lễ hội Vía Bà (Bình Định)', 'Festival 8', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 0, '2018-12-24 05:55:16', 'administrator', '2018-12-24 05:55:16', 'administrator', '2018-12-18 00:00:00', '2018-12-21 23:59:59', 'le-hoi-via-ba-binh-dinh-2');
INSERT INTO `events` (`id`, `image`, `region_id`, `province_id`, `author`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `body_vi`, `body_en`, `is_top`, `is_active`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `date_start`, `date_end`, `slug`) VALUES
(17, '8e65c9cf23230ee17c5c655cededc584.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 7', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:54:54', 'administrator', '2018-12-24 05:54:54', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do'),
(18, '6a0fc5f3172959595e46081425d9290f.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 6', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:54:22', 'administrator', '2018-12-24 05:54:22', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do-1'),
(19, '91e0eb71b9748277031badd91aeaad12.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 5', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:54:00', 'administrator', '2018-12-24 05:54:00', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do-2'),
(20, '131c953b1582613914463e5878d3fd38.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 4', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:53:36', 'administrator', '2018-12-24 05:53:36', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do-3'),
(21, 'f90f8ab762f43704f7caf2ea3ce45239.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 3', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:53:11', 'administrator', '2018-12-24 05:53:11', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do-4'),
(22, '8fe040d061c346ea427189fd89b4b3c4.jpg', 2, 2, '', 'Lễ hội gì đó', 'Festival 2', '', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 0, 1, 0, '2018-12-24 05:52:43', 'administrator', '2018-12-24 05:52:43', 'administrator', '2018-12-23 00:00:00', '2018-12-23 23:59:59', 'le-hoi-gi-do-5'),
(23, 'aec98cb4204a54f5b2ad038809f03ba3.jpg', 2, 2, '', 'Le Hoi moi', 'Festival 1', '', '', '', '', 'Le Hoi moi', 'Festival 1', 'Le Hoi moi', 'Festival 1', 0, 1, 0, '2018-12-24 05:50:40', 'administrator', '2018-12-24 05:50:40', 'administrator', '2018-12-24 00:00:00', '2018-12-25 23:59:59', 'le-hoi-moi');

-- --------------------------------------------------------

--
-- Table structure for table `features`
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
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `vi`, `en`, `is_deleted`, `icon`, `content_vi`, `content_en`) VALUES
(1, 'Chống Nước', 'Waterproof', 0, 'fa fa-tint', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(2, 'Chống Xước', ' Scratch Resistant', 0, 'fa fa-ban', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(3, 'Giảm Tiếng Ồn', 'Noise Reduction', 0, 'fa fa-assistive-listening-systems', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'manager', 'General Manager'),
(3, 'mod', 'General Mod'),
(4, 'members', 'General Members');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
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
-- Dumping data for table `menu`
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
-- Table structure for table `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_lang`
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
-- Table structure for table `order`
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
-- Table structure for table `post`
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
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `templates_id`, `slug`, `avatar`, `image`, `data`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(24, 10, 8, 'no-den-tu-dau-1', '', '8a2cef4944e609d619b2213a787767af.png', '{\"chon_moi\":[\"1\"],\"gioi_tinh\":\"1\",\"chon_nhieu_anh_moi\":[\"19a30b528767d93fcd9c8e2fa9e6203b.png\",\"2b14c0d6b3569099b818cdac0ba05e62.jpg\"]}', '2018-09-26 11:07:22', 'administrator', '2018-09-26 11:07:22', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
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
-- Dumping data for table `post_category`
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
-- Table structure for table `post_category_lang`
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
-- Dumping data for table `post_category_lang`
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
-- Table structure for table `post_lang`
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
-- Dumping data for table `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `data_lang`, `language`, `metakeywords`, `metadescription`) VALUES
(45, 24, 'Nó đến từ đâu? 1', 'Trái ngược với niềm tin phổ biến, Lorem Ipsum không đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, làm cho nó hơn 2000 tuổi.', '<p>Tr&aacute;i ngược với niềm tin phổ biến, Lorem Ipsum kh&ocirc;ng đơn giản l&agrave; văn bản ngẫu nhi&ecirc;n. N&oacute; c&oacute; nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, l&agrave;m cho n&oacute; hơn 2000 tuổi. Richard McClintock, một gi&aacute;o sư người Latinh tại trường đại học Hampden-Sydney ở Virginia, đ&atilde; t&igrave;m kiếm một trong những từ ngữ, từ ngữ Lorem Ipsum, v&agrave; th&ocirc;ng qua c&aacute;c tr&iacute;ch dẫn của từ trong văn học cổ điển, đ&atilde; kh&aacute;m ph&aacute; ra nguồn kh&ocirc;ng thể giải th&iacute;ch được. Lorem Ipsum xuất ph&aacute;t từ c&aacute;c phần 1.10.32 v&agrave; 1.10.33 của \"de Finibus Bonorum v&agrave; Malorum\" (C&otilde;i T&agrave; &aacute;c v&agrave; &Aacute;c ma) của Cicero, được viết v&agrave;o năm 45 TCN. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết về l&yacute; thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. D&ograve;ng đầu ti&ecirc;n của Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", xuất ph&aacute;t từ một d&ograve;ng trong phần 1.10.32.1</p>', '{}', 'vi', '', ''),
(46, 24, 'ádasdsad', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '{}', 'en', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `templates_id`, `data`, `slug`, `avatar`, `image`, `trademark_id`, `features`, `price`, `color`, `common`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`, `type`, `total_rating`, `count_rating`, `file`) VALUES
(62, 27, 22, '[]', 'san-pham-1', '', 'CP-1-270x320.jpg', 4, '[\"1\"]', '[\"1000\",\"900\"]', '[\"1\",\"2\"]', '{\"color\":[\"1\",\"2\"],\"price_color\":[\"1000\",\"900\"],\"promotion_color\":[\"\",\"\"],\"quantity\":[\"1000\",\"1000\"],\"img_color\":[[\"CP-1-270x3201.jpg\"],[\"CP-1-270x3202.jpg\"]],\"img_activated\":[\"\",\"\"],\"promotion_check\":[\"false\",\"false\"]}', '2018-10-05 16:27:54', 'minhminh', '2018-10-05 16:27:54', 'minhminh', 0, 0, 0, 152, 33, NULL),
(63, 26, 22, '[]', 'san-pham-2', '', 'czl_11789117-270x320.jpg', 3, '[\"3\"]', '[\"1800\",\"1500\"]', '[\"3\",\"1\"]', '{\"color\":[\"3\",\"1\"],\"price_color\":[\"2000\",\"1800\"],\"promotion_color\":[\"1800\",\"1500\"],\"quantity\":[\"1000\",\"1000\"],\"img_color\":[[\"czl_11789117-270x3201.jpg\"],[\"czl_11789117-270x3202.jpg\"]],\"img_activated\":[\"\",\"\"],\"promotion_check\":[\"true\",\"true\"]}', '2018-10-05 16:09:55', 'minhminh', '2018-10-05 16:09:55', 'minhminh', 0, 0, 0, 110, 23, NULL),
(64, 25, 22, '[]', 'san-pham-3', '', 'images.jpg', 2, '[\"1\",\"2\"]', '[\"2700\",\"2600\",\"2800\"]', '[\"1\",\"2\",\"3\"]', '{\"color\":[\"1\",\"2\",\"3\"],\"price_color\":[\"3000\",\"2900\",\"2800\"],\"promotion_color\":[\"2700\",\"2600\",\"2750\"],\"quantity\":[\"100\",\"100\",\"100\"],\"img_color\":[[\"images1.jpg\"],[\"images2.jpg\"],[\"czl_11779847-270x320.jpg\"]],\"img_activated\":[\"\",\"\",\"\"],\"promotion_check\":[\"true\",\"true\",\"false\"]}', '2018-10-09 10:26:53', 'administrator', '2018-10-09 10:26:53', 'administrator', 0, 0, 0, 130, 29, 'phan-thich-chuc-nang-website-gioi-thieu-viec-lam-934.docx');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
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
-- Dumping data for table `product_category`
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
-- Table structure for table `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_lang`
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
-- Table structure for table `product_lang`
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
-- Dumping data for table `product_lang`
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
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `region_id` int(11) NOT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `avatar`, `image`, `region_id`, `title_vi`, `slug`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_active`, `sort`) VALUES
(2, 'ddc683add83e8a25886d85e8d95fab2c.jpg', '[\"013502ad2f6908770aa5b52cde15c4cf.jpg\",\"bc165e7474be64fa0b79546aaaec7b33.jpg\",\"39ff5d25dca93d0e14db61f1a646813c.jpg\",\"ddc683add83e8a25886d85e8d95fab2c.jpg\",\"61a4235fa7795c01e7071de9a0aad359.jpg\",\"220be9eeba41c48d7482b1d6120de914.jpg\"]', 2, 'Hà Nội', 'ha-noi', 'Ha Noi EN', '', '', '', '', 'Hà Nội', 'Ha Noi EN', '2018-12-24 06:59:20', 'administrator', '2018-12-24 06:59:20', 'administrator', 0, 1, 1),
(3, '930ed55df5e294dd7cca009b89debbfe.jpg', '[\"7101576d650c755f144044f7b99af2a8.jpg\",\"6fe33cd7112f7c67174bf309df243929.jpg\",\"4f883c1487e791f4b19c8f402765c3b7.jpg\",\"0f39261de7661e52b853b673210374bf.jpg\",\"54acd857368b9b6a13ef8937f17ef73c.jpg\",\"930ed55df5e294dd7cca009b89debbfe.jpg\"]', 2, 'Thái Nguyên', 'thai-nguyen', 'Thái Nguyên', '', '', '', '', 'Thái Nguyên', 'Thái Nguyên', '2018-12-24 06:59:02', 'administrator', '2018-12-24 06:59:02', 'administrator', 0, 1, 2),
(4, '5565b86c0d43b7fb8ea691f90ca8d6ef.jpg', '[\"c3b2581d1634ef64b33fcedc465a272a.jpg\",\"b65d82d0e1c17fc31a9689fd6bc9849e.jpg\",\"0a9c8f7143724ce37f23db441dd0026c.jpg\",\"96742e688c62d489dc5a19e812628fe4.jpg\",\"5565b86c0d43b7fb8ea691f90ca8d6ef.jpg\",\"c041ff7a17196e705063b00bdb884b18.jpg\"]', 3, 'Thanh hóa', 'thanh-hoa', 'Thanh hóa', '', '', '', '', 'Thanh hóa', 'Thanh hóa', '2018-12-24 06:58:48', 'administrator', '2018-12-24 06:58:48', 'administrator', 0, 1, 2),
(5, 'ddc43dbc042dd52426050a0dea2cc864.jpg', '[\"e933f8aa3cef9e388e6bb6c53cc4a3e8.jpg\",\"1f50edf5c3cea3c4aaef56015aafe2a1.jpg\",\"ddc43dbc042dd52426050a0dea2cc864.jpg\",\"82fba57c3fcc5ef7ea8f9310ab79d9fc.jpg\",\"3d4d1b90e2b967108526c3316c95e300.jpg\",\"7d2c3500690e340b174ec681f9ccfc3b.jpg\"]', 3, 'Nghệ an', 'nghe-an', 'Nghệ an', '', '', '', '', 'Nghệ an', 'Nghệ an', '2018-12-27 20:16:38', 'administrator', '2018-12-27 20:16:38', 'administrator', 0, 1, 1),
(6, '1650aee2e250c34d3496d1c835ce4ee5.jpg', '[\"1650aee2e250c34d3496d1c835ce4ee5.jpg\",\"9b6cec5e1d66f2b5d340b78bf22581bd.jpg\",\"796646b971644bad4ded475144c208c8.jpg\",\"6a50624adfc231a62bbc662838181a09.jpg\",\"b70c3a51ce1186febc363bb858caf01c.jpg\",\"6dd8bd98c8a7427c4f45fa9eccb1e004.jpg\"]', 4, 'Đà nẵng', 'da-nang', 'Đà nẵng', '', '', '', '', 'Đà nẵng', 'Đà nẵng', '2018-12-24 06:58:13', 'administrator', '2018-12-24 06:58:13', 'administrator', 0, 1, 1),
(7, 'eb145b0f05c41fd002a7900d22174919.jpg', '[\"605236f15f59398e95ba3df7d2bed01d.jpg\",\"eb145b0f05c41fd002a7900d22174919.jpg\",\"f03ca445a68d16d1d4418eab1e3dbc37.jpg\",\"a85ad45e26a587920b129acb5273b28e.jpg\",\"44e83287a0b1e61089b59c44dbc28325.jpg\",\"9cc9e6e8086a8e3ef740458fa500d4d9.jpg\"]', 4, 'Ninh Thuận', 'ninh-thuan', 'Ninh Thuận', '', '', '', '', 'Ninh Thuận', 'Ninh Thuận', '2018-12-24 06:57:42', 'administrator', '2018-12-24 06:57:42', 'administrator', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
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
-- Dumping data for table `quotation`
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
-- Table structure for table `recruitment`
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
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `status`, `description_image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 1, '', '2017-08-23 04:50:12', 'administrator', '2017-10-20 14:19:15', 'administrator', 1),
(2, 0, 'car4.jpeg', '2017-08-23 04:51:48', 'administrator', '2017-10-09 23:32:28', 'administrator', 1),
(3, 1, '', '2017-11-01 11:45:13', 'administrator', '2017-11-30 09:10:41', 'administrator', 0),
(4, 1, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', '2017-11-30 09:24:37', 'administrator', '2017-11-30 09:24:37', 'administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_lang`
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
-- Dumping data for table `recruitment_lang`
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
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `img_cuisine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_blog` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_homepage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `metadescription_en` text COLLATE utf8_unicode_ci NOT NULL,
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
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `avatar`, `image`, `img_cuisine`, `img_event`, `img_blog`, `img_destination`, `img_homepage`, `slug`, `title_vi`, `title_en`, `metakeywords_vi`, `metakeywords_en`, `metadescription_vi`, `metadescription_en`, `description_vi`, `description_en`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_active`) VALUES
(2, 'fd151c9af616cb5a47d960fdf1a56d44.jpg', '[\"fd151c9af616cb5a47d960fdf1a56d44.jpg\",\"9aead6789239998cbab8bb4b01b30b36.jpg\",\"22cc10a8d630c643367a1774123e519b.jpg\",\"eaaf2e5dd9ca6fac290fe1eb664063d2.jpg\"]', '9aead6789239998cbab8bb4b01b30b36.jpg', 'eaaf2e5dd9ca6fac290fe1eb664063d2.jpg', '22cc10a8d630c643367a1774123e519b.jpg', 'fd151c9af616cb5a47d960fdf1a56d44.jpg', 'eaaf2e5dd9ca6fac290fe1eb664063d2.jpg', 'mien-bac', 'Miền Bắc', 'North', '', '', '', '', 'Miền Bắc', 'Miền Bắc', '2019-02-21 00:52:23', 'administrator', '2019-02-21 00:52:23', 'administrator', 0, 1),
(3, '737e5d0de8732780b3c8a950d76d66a5.jpg', '[\"737e5d0de8732780b3c8a950d76d66a5.jpg\"]', '737e5d0de8732780b3c8a950d76d66a5.jpg', '737e5d0de8732780b3c8a950d76d66a5.jpg', '737e5d0de8732780b3c8a950d76d66a5.jpg', '737e5d0de8732780b3c8a950d76d66a5.jpg', '737e5d0de8732780b3c8a950d76d66a5.jpg', 'mien-trung', 'Miền Trung', 'Middle', '', '', '', '', 'Miền Trung', 'Miền Trung', '2018-12-24 05:43:40', 'administrator', '2018-12-24 05:43:40', 'administrator', 0, 1),
(4, '030d46db2ac4d176c09996f1951d7c4a.jpg', '[\"030d46db2ac4d176c09996f1951d7c4a.jpg\",\"6f225ff5abdd3cf83e4fe4689a3ce252.jpg\",\"87e4bb3e63f7a247ddbe2d0d2e3cd262.jpg\"]', '030d46db2ac4d176c09996f1951d7c4a.jpg', '030d46db2ac4d176c09996f1951d7c4a.jpg', '030d46db2ac4d176c09996f1951d7c4a.jpg', '030d46db2ac4d176c09996f1951d7c4a.jpg', '030d46db2ac4d176c09996f1951d7c4a.jpg', 'mien-nam', 'Miền Nam', 'South', 'Miền Nam', 'South', 'Miền Nam', 'South', 'Miền Nam', 'South of Vietnam', '2019-03-06 13:04:58', 'administrator', '2019-03-06 13:04:58', 'administrator', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('01thr06ur7284hm5l585jvlfv1etqbjj', '::1', 1550677075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637373037353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('0c5ecm2rit2p70cm5nnh9bapbil8f5t1', '::1', 1550682123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638323132333b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('0f01gitiav2krblgh50fo7cjubnenee0', '::1', 1551515585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531353538353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('1h1oojadve3i8ksddcq2op79910rv3dp', '::1', 1551804896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830343839363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('1nguthnjnrffba780dbhm0c2ti1eob2h', '::1', 1551803014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830333031343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('266ao1pldgt6un4tri3umgat669gie99', '::1', 1550759902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303735393930303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('2ns312feke685l87ijk6qis15pm1ba48', '::1', 1551804121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830343132313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('2sbb7mad5viuuar2fs4quc1n6mpno9t7', '::1', 1550765971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736353937313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('37c2tmo1nhh2b60s6l6in1stgpl5e1tf', '::1', 1551498280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313439383238303b),
('39cc8cup31nmdk7bgsrdeg6m3if4a173', '::1', 1551873139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313837333133393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383532323130223b6c6173745f636865636b7c693a313535313837323938363b),
('3btb2mfq30rio83ugrjd9rdnoge8to2j', '::1', 1551802340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830323334303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('3sebqe3u63192etj01vjjdsvrn95ul6b', '::1', 1550673712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637333731323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('3vacbu8q8hljfviomev0pm6rlmtg4in5', '::1', 1550762709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736323730393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('48e2eshhkf4bmdts7g4575cl7fkqor9o', '::1', 1551876220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313837363232303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383532323130223b6c6173745f636865636b7c693a313535313837323938363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4ggunhn95kba9vi1odmg146sosi3hppl', '::1', 1551500433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530303433333b),
('4mjdc9m8j2rg5dsfckoef305bb5ssnm4', '::1', 1550674548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637343534383b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('4pt8t46vq3gbhapolgkosutata0ahb42', '::1', 1551802676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830323637363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('4vu6chemmimh2j0s0g0cjdb5387hf5rg', '::1', 1550763778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736333737383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('5r05hc967ecl3akrv5o6t3n7eoulegi5', '::1', 1551022661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313032323636303b),
('6b3eklip2n473jfq61b8n12fg93pit7f', '::1', 1550760307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736303330373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('6b7177s3sbju4v0no5nc6s9lajsd1m2v', '::1', 1551805709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830353730393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('6k5qrn753ahbnsse8e36ivmjnpgmijvh', '::1', 1550686058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638353935393b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('6utbedd8cejmn6qgctctla7ng0iphsrh', '::1', 1551525492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353439303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('7mhjk4n4gq9cicj70kufkulhaihernqt', '::1', 1550680845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638303834353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('7rnfsl7njjmjl34i07s5qdkbeeh8fo01', '::1', 1550679404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637393430343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('7v52g728b8cep6kc4vp9srf6k702v5vp', '::1', 1550675701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637353730313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('8bj6p1e106dr46hebcm8dho3shnj842i', '::1', 1551499276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313439393237363b),
('8n4hl8jo8fdontkj02io6incs3hkc4mb', '::1', 1551500435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530303433333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8p88sndvq0dlg1nsvli6d0o5u31huv7o', '::1', 1550684600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638343630303b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('99gp9idm7b1opf2hdgfvmvs92j9ohlpr', '::1', 1550683578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638333537383b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('9p9767nsudvhb4d8krvc8lnl8g24ipkv', '::1', 1550685037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638353033373b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('af72fcj07bh975ugkg252mv87nraapaj', '::1', 1551441988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313434313932383b),
('agvg82st29305bu9al6nsfaj2esmuqpo', '::1', 1550675362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637353336323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('ajqssn6129cg6n1ptek2ojcjdfesv89p', '::1', 1551807011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830373031313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('b0f43oj9udh1qsftac66521lbork1on3', '::1', 1550672441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637323434313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('b1ord53manpokroo5hufimqlol28fpqs', '::1', 1550764459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736343435393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('b2vsvr5mfj47ufbmo2s50uanhs943cc2', '::1', 1551521896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532313839363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('bhaq3sap6me24fs6oj8be2v754uafom2', '::1', 1550685354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638353335343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('bmfbp6748teiqmn9lt7098gf0m8kjfv4', '::1', 1550676063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637363036333b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('br8p0gl6lor5h64qpjdduko6nrkemma3', '::1', 1550683958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638333935383b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('bts4se172qjbvet5mvh53g5tha0mcppt', '::1', 1550761117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736313131373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('c2sjiouoepcf8apmomeo3d8s81gi2kp5', '::1', 1551441928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313434313932383b),
('cctkfc7r8a1dltudniqle3n9i6fv2f8f', '::1', 1551519883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531393838333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('d3pude15ngngeoukqeqtdc2j7pnr5sht', '::1', 1551852302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313835323230323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383030303834223b6c6173745f636865636b7c693a313535313835323231303b),
('d49gja2slu168ga6gldap9ivf0122skj', '::1', 1550680095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638303039353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('da8lre5cho9tql5ud86mlgpnq2rg9f1f', '::1', 1551873766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313837333736363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383532323130223b6c6173745f636865636b7c693a313535313837323938363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dg8nf31hck6p1elfkij5rerk6sgngod2', '::1', 1550676612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637363631323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('dj8lkdfosbh1ntfa3fkndn1rf1ujtvu7', '::1', 1550677405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637373430353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('dpr1c2bu388k2jtjkpa066eg4g4a31pc', '::1', 1551359438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313335393433383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f0g00ib2ig62d86ff59fauaspesf426v', '::1', 1551876304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313837363232303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383532323130223b6c6173745f636865636b7c693a313535313837323938363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f4ie6pmpmgsd1mp3aokc3rebsab53uj2', '::1', 1550677709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637373730393b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('f73kp1pm9k110ng1eveou75dh37t914o', '::1', 1551803803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830333830333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('f7q1gqu9234bganj0gkg860r1c0eurbb', '::1', 1550672139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637323133393b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('f8kvs6rchdq1kiddr0q8p0apmv6lebi2', '::1', 1550685959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638353935393b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('fjrc89g78fcdi49nl39h90i5nvcjp2af', '::1', 1550763036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736333033363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ftc7205v22vk1h74e4g5bujlmtblbeo4', '::1', 1551807403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830373430333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('g50bdt435810vvt5oi4tfalk1ock1fv2', '::1', 1551800323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830303332333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('g6p1ubf25bu9194973jttcp4ck4nhdhe', '::1', 1550673076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637333037363b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('g8vdfjineu3el1b6qgfd069ar0o2irea', '::1', 1551803322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830333332323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('gfkidi0090ec5oj0mjk3hjqin03e125i', '::1', 1551806381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830363338313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('gk9svdt031dakuugpnsdr8k4a9632dd6', '::1', 1551801131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830313133313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('h2frfvjbb2t0c763lpskog91c6rfkdta', '::1', 1551519237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531393233373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b6d6573736167657c733a33333a223c703ec490c4836e67207875e1baa574207468c3a06e682063c3b46e673c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('hlk86c8rtkjvmrb7edl37tmb0md5evc4', '::1', 1550760635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736303633353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('hne2114958urv308kh05ob2ls0pd03an', '::1', 1550761520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736313532303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('i4jupq53j8sum7dip8473qk62ab68brh', '::1', 1551806039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830363033393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('imejikh7omuftopllj8ua68781cicb2t', '::1', 1550675001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637353030313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('isob243gctoojvor6r01ett9u8u1ibuf', '::1', 1551520242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532303234323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('itrnie1b8t56293ek3iu74kjs9cna1kp', '::1', 1550685657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638353635373b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('jdnghhh9nc3p680rltpu8vun55u1kp3b', '::1', 1550764151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736343135313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('jvu2tsh1a7nho4tghrgmh92hm1tmh4u6', '::1', 1551497266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313439373236363b),
('k02soe1tqubp3uc7hglul9c2b5rjboi0', '::1', 1550681796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638313739363b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('kl92gmeskt4aa45jhk172od5irq3od15', '::1', 1550681200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638313230303b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('l9cps539uadbq7d3tlqk0bj2he6crgv2', '::1', 1550683100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638333130303b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('m1q718q6r8ealap2c71aabonvlj56u2d', '::1', 1551441514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313434313531343b),
('m58sak3lut9pm468anh2cqpjmutaau2b', '::1', 1550766288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736363238383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('m7583p6ssd52iirhnrgku5gd7fvan7ft', '::1', 1550763467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736333436373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('maps6vqmad06rm1o74ktc0u42c37lemq', '::1', 1551802013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830323031333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('mf49ss7hgdq728mlsq87lkk7ueq2l5ch', '::1', 1551498888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313439383838383b),
('mm3if4dnsnbi4fpqbvuql6nr3b29qebc', '::1', 1550766557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736363238383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('mt7mcvgag6pmpclugdql55n1tii1pham', '::1', 1550671493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637313439303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('n0jfrcq48cqpcpav7tf125kqdurb5mi9', '::1', 1551801704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830313730343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('ng881go6553so364oh4bqp28sopalsre', '::1', 1550678151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637383135313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('o5b8uju9g3bca3che1he1mhb44v3vri6', '::1', 1550682743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638323734333b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('ou882h4k0r3o01o5i3qng0h48mjt8nif', '::1', 1550765112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736353131323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('p8t6dllviaqbu42a33ta3mmcnh9vmgdm', '::1', 1551497658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313439373635383b),
('pb8fh2q52rb9l7f9hovqri2s0m4c9bcu', '::1', 1550679765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637393736353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('q41ur2soq4cmdf0jrjtbdhhr8q13mt9b', '::1', 1550673400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637333430303b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('qrm44dnni05914trgd7m6opb9e87pnpu', '::1', 1551807409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830373430333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('qtc91kr7412aokb01mk40hv0arf70sqh', '::1', 1550674215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637343231353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('quq2nbglc03b7t45h64nrc9bplf8b5rs', '::1', 1551525490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353439303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('r009gh83lbh0i88r1bgjlrf88kkebvek', '::1', 1551873451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313837333435313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531383532323130223b6c6173745f636865636b7c693a313535313837323938363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r273623i19e6m20uauj7fbrjtp78sjah', '::1', 1550678461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637383436313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('r42l7kshntsip4o7j240oe49svfboeru', '::1', 1550765667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736353636373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('s2090khpsp68g8a45uh0gs36bo6idhco', '::1', 1550762220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736323232303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('sacqp6rh408ja6sccatmggushurgq3gf', '::1', 1550672743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637323734333b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('sd7pm7vqhk8h79fjdan2tlj4vcvm61g5', '::1', 1551804450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830343435303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('sg6ctqilbpi90sbj83bk7acgb5kpo039', '::1', 1550761821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303736313832313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('skam40obadrlfsfs5qaa71odkto2avlg', '::1', 1551805372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313830353337323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531353134343737223b6c6173745f636865636b7c693a313535313830303038343b),
('tasugc7b7n8jdu7j9gqfs7bfk7hmdghk', '::1', 1550757445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303735373434353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530363731353031223b6c6173745f636865636b7c693a313535303735373034303b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('tcm4r9sbb5brs8be8nu16gj7bn7kqkbv', '::1', 1550679093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303637393039333b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('tgvqh904fehlpb9uti42js1kptvhtm0s', '::1', 1550680536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638303533363b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('u7onktggagbj3bb2u07cpmgepghql0vd', '::1', 1551515077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531353037373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353531303232363636223b6c6173745f636865636b7c693a313535313531343437373b),
('uet2220ffcn6pqjthom7s9crh4ogp17v', '::1', 1551022697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313032323636313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353530373537303430223b6c6173745f636865636b7c693a313535313032323636363b),
('uj2kb1ckqb76kusq42u4mopcvq41rufu', '::1', 1550684272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303638343237323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437393036343534223b6c6173745f636865636b7c693a313535303637313530313b),
('vgsdrdtb24tc2ami2ah2cc5rd74gv759', '::1', 1551359444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313335393433383b6c616e67416262726576696174696f6e7c733a323a227669223b);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
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
-- Dumping data for table `templates`
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
-- Table structure for table `trademark`
--

CREATE TABLE `trademark` (
  `id` int(11) NOT NULL,
  `vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trademark`
--

INSERT INTO `trademark` (`id`, `vi`, `en`, `product_category_id`, `is_deleted`) VALUES
(2, 'Thuong Hieu 1', 'Trademark 1', 25, 0),
(3, 'Thương Hiệu 2', 'Trademark 2', 26, 0),
(4, 'Thuong Hieu In Ear', 'Thuong Hieu In Ear', 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `address`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', 'BUMp1pq2ekBvrRG06JIJoe67d856dc3e7495c51d', 1551441719, NULL, 1268889823, 1551872986, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
(24, '::1', 'manager', '$2y$08$Gmo0nTVxyx5aNIm3jduvaeyJDZEL4GkrBzbS7XwvGoVoLWqvHT81S', NULL, 'manager@manager.com', NULL, NULL, NULL, NULL, 1544965434, NULL, 1, 'Minh', 'Trường', NULL, NULL, NULL),
(25, '::1', 'manager1', '$2y$08$P9TgIWXlotKU7bFpHjwkeezBG29mc9kFP.CefX8UPJ.N09DiB7uZ.', NULL, 'manager1@manager.com', NULL, NULL, NULL, NULL, 1544965475, NULL, 1, 'Minh', 'Minh', NULL, NULL, NULL),
(26, '::1', 'mod', '$2y$08$zY2Mi2asgCa3BMqFE7AoAONl3xj3Y/EptWdbwl0qdLhtxcOMKdCQy', NULL, 'mod@mod.com', NULL, NULL, NULL, NULL, 1544965531, 1545224891, 1, 'Minh', 'MinhMod', NULL, NULL, NULL),
(27, '::1', 'minhtruong', '$2y$08$nC9VD/o7Y2vNAKZh7IHSKeL0q2gFD.tYoXDyfHl6EAQej1wB/am1G', NULL, 'http.mt.html@gmail.com', NULL, 'hOZe82ijwCjmvtsJ2BG.muc91e1f6b1d81f5ef7f', 1545061367, NULL, 1545060376, NULL, 1, 'Minh', 'Trường', NULL, NULL, NULL),
(28, '::1', 'modmod', '$2y$08$.xyBML8PCdZwOEwCzLnFi.oUWp.tJXJM04ti/8RD201uGpbHIgyEi', NULL, 'nguyenquyen18011996@gmail.com', NULL, 'vVPwCAX6jGB8DDy5V-wAWu07ae83a276fa39dd4d', 1551441986, NULL, 1545235689, 1545235700, 1, 'mod', 'mod', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(25, 24, 2),
(26, 25, 2),
(27, 26, 3),
(28, 27, 3),
(29, 28, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_contact`
--
ALTER TABLE `config_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine_category`
--
ALTER TABLE `cuisine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Indexes for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`product_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trademark`
--
ALTER TABLE `trademark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `config_contact`
--
ALTER TABLE `config_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cuisine_category`
--
ALTER TABLE `cuisine_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `trademark`
--
ALTER TABLE `trademark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `menu_lang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
