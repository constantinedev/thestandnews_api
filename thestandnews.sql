-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2021 年 12 月 26 日 17:39
-- 伺服器版本： 8.0.22-0ubuntu0.20.04.2
-- PHP 版本： 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `thestandnews`
--
CREATE DATABASE IF NOT EXISTS `thestandnews` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `thestandnews`;

-- --------------------------------------------------------

--
-- 資料表結構 `authors`
--
-- 建立時間： 2021 年 12 月 25 日 21:55
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `FileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` text COLLATE utf8mb4_unicode_ci,
  `bio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `authors_objects_photo`
--
-- 建立時間： 2021 年 12 月 25 日 16:24
--

DROP TABLE IF EXISTS `authors_objects_photo`;
CREATE TABLE `authors_objects_photo` (
  `FileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `large` text COLLATE utf8mb4_unicode_ci,
  `small` text COLLATE utf8mb4_unicode_ci,
  `IMPORT_DATE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` text COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `categorys`
--
-- 建立時間： 2021 年 12 月 25 日 22:20
--

DROP TABLE IF EXISTS `categorys`;
CREATE TABLE `categorys` (
  `FileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_color` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorys_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `meta`
--
-- 建立時間： 2021 年 12 月 25 日 09:53
-- 最後更新： 2021 年 12 月 25 日 14:31
--

DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offset` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_count` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `next` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects`
--
-- 建立時間： 2021 年 12 月 25 日 09:54
-- 最後更新： 2021 年 12 月 25 日 15:00
--

DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_comments_iframe_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects_author`
--
-- 建立時間： 2021 年 12 月 25 日 09:55
-- 最後更新： 2021 年 12 月 25 日 15:27
--

DROP TABLE IF EXISTS `objects_author`;
CREATE TABLE `objects_author` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects_author_photo`
--
-- 建立時間： 2021 年 12 月 25 日 09:56
--

DROP TABLE IF EXISTS `objects_author_photo`;
CREATE TABLE `objects_author_photo` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `large` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `small` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects_categories`
--
-- 建立時間： 2021 年 12 月 25 日 09:56
-- 最後更新： 2021 年 12 月 25 日 14:16
--

DROP TABLE IF EXISTS `objects_categories`;
CREATE TABLE `objects_categories` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_color` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects_main_category`
--
-- 建立時間： 2021 年 12 月 25 日 09:56
--

DROP TABLE IF EXISTS `objects_main_category`;
CREATE TABLE `objects_main_category` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_color` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `objects_photo`
--
-- 建立時間： 2021 年 12 月 25 日 09:57
-- 最後更新： 2021 年 12 月 25 日 15:27
--

DROP TABLE IF EXISTS `objects_photo`;
CREATE TABLE `objects_photo` (
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_type` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `absolute_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_uri` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `large` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `small` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMPORT_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UPDATE_DATE` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UPDATE_TIME` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `authors_objects_photo`
--
ALTER TABLE `authors_objects_photo`
  ADD KEY `FileName_ID` (`FileName`),
  ADD KEY `KeyID_INDEX` (`key_id`);

--
-- 資料表索引 `meta`
--
ALTER TABLE `meta`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE;

--
-- 資料表索引 `objects`
--
ALTER TABLE `objects`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE;

--
-- 資料表索引 `objects_author`
--
ALTER TABLE `objects_author`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE,
  ADD KEY `KeyID_INDEX` (`key_id`) USING BTREE;

--
-- 資料表索引 `objects_author_photo`
--
ALTER TABLE `objects_author_photo`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE,
  ADD KEY `KeyID_INDEX` (`key_id`) USING BTREE;

--
-- 資料表索引 `objects_categories`
--
ALTER TABLE `objects_categories`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE,
  ADD KEY `KeyID_INDEX` (`key_id`) USING BTREE;

--
-- 資料表索引 `objects_main_category`
--
ALTER TABLE `objects_main_category`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE,
  ADD KEY `KeyID_INDEX` (`key_id`);

--
-- 資料表索引 `objects_photo`
--
ALTER TABLE `objects_photo`
  ADD KEY `FileName_INDEX` (`FileName`) USING BTREE,
  ADD KEY `KeyID_INDEX` (`key_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
