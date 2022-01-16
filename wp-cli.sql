-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 16 2022 г., 11:26
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp-cli`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-12 11:47:12', '2021-12-12 11:47:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cli-wp', 'yes'),
(2, 'home', 'http://localhost/cli-wp', 'yes'),
(3, 'blogname', 'Bootsrap Kit', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marina.iva.noffa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:22:\"cyr2lat/cyr-to-lat.php\";i:1;s:25:\"fakerpress/fakerpress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bootkit', 'yes'),
(41, 'stylesheet', 'bootkit', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1654861631', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:7:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:21:\"<!-- wp:calendar /-->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"bootkit_sidebar\";a:1:{i:0;s:7:\"block-7\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1642279633;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642290433;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642333633;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642334056;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642334058;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642420033;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639312146;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1642270942;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642270945;s:7:\"checked\";a:4:{s:7:\"bootkit\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(154, 'fakerpress.module_flag.term', 'a:1:{s:8:\"category\";a:6:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;i:5;i:7;}}', 'yes'),
(159, 'category_children', 'a:0:{}', 'yes'),
(162, 'current_theme', 'Bootkit', 'yes'),
(163, 'theme_mods_bootkit', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:8;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(169, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(215, 'recovery_mode_email_last_sent', '1640516861', 'yes'),
(218, '_site_transient_timeout_theme_roots', '1642272744', 'no'),
(219, '_site_transient_theme_roots', 'a:4:{s:7:\"bootkit\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(220, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642270945;s:8:\"response\";a:1:{s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.2.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";s:6:\"tested\";s:3:\"5.9\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.2.4\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(221, '_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0', '1642875746', 'no'),
(222, '_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/12/7008980f-211c-3a1a-9974-ece049d3e353.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1168;s:6:\"height\";i:778;s:4:\"file\";s:48:\"2021/12/7008980f-211c-3a1a-9974-ece049d3e353.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"7008980f-211c-3a1a-9974-ece049d3e353-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"7008980f-211c-3a1a-9974-ece049d3e353-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"7008980f-211c-3a1a-9974-ece049d3e353-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"7008980f-211c-3a1a-9974-ece049d3e353-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, 'fakerpress_flag', '1'),
(6, 5, '_fakerpress_orginal_url', 'https://picsum.photos/1168/778/?random'),
(7, 6, '_wp_attached_file', '2021/12/5a9a48e4-3a51-3ae5-8cca-353ea335f193.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1078;s:6:\"height\";i:718;s:4:\"file\";s:48:\"2021/12/5a9a48e4-3a51-3ae5-8cca-353ea335f193.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"5a9a48e4-3a51-3ae5-8cca-353ea335f193-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"5a9a48e4-3a51-3ae5-8cca-353ea335f193-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"5a9a48e4-3a51-3ae5-8cca-353ea335f193-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"5a9a48e4-3a51-3ae5-8cca-353ea335f193-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, 'fakerpress_flag', '1'),
(10, 6, '_fakerpress_orginal_url', 'https://picsum.photos/1078/718/?random'),
(11, 7, 'fakerpress_flag', '1'),
(12, 8, '_wp_attached_file', '2021/12/b1eaf8be-346c-3f01-a36f-cc102d395da9.jpg'),
(13, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1409;s:6:\"height\";i:939;s:4:\"file\";s:48:\"2021/12/b1eaf8be-346c-3f01-a36f-cc102d395da9.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"b1eaf8be-346c-3f01-a36f-cc102d395da9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"b1eaf8be-346c-3f01-a36f-cc102d395da9-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"b1eaf8be-346c-3f01-a36f-cc102d395da9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"b1eaf8be-346c-3f01-a36f-cc102d395da9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(14, 8, 'fakerpress_flag', '1'),
(15, 8, '_fakerpress_orginal_url', 'https://picsum.photos/1409/939/?random'),
(16, 7, '_thumbnail_id', '8'),
(17, 9, '_wp_attached_file', '2021/12/150c3dc6-58af-3c76-a71f-6feedb319c4f.png'),
(18, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:507;s:4:\"file\";s:48:\"2021/12/150c3dc6-58af-3c76-a71f-6feedb319c4f.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"150c3dc6-58af-3c76-a71f-6feedb319c4f-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"150c3dc6-58af-3c76-a71f-6feedb319c4f-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 9, 'fakerpress_flag', '1'),
(20, 9, '_fakerpress_orginal_url', 'http://placehold.it/634x507/'),
(21, 10, 'fakerpress_flag', '1'),
(22, 11, '_wp_attached_file', '2021/12/f27f34ef-48ed-3c6f-a797-34d86bf5a98a.jpg'),
(23, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1411;s:6:\"height\";i:940;s:4:\"file\";s:48:\"2021/12/f27f34ef-48ed-3c6f-a797-34d86bf5a98a.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"f27f34ef-48ed-3c6f-a797-34d86bf5a98a-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"f27f34ef-48ed-3c6f-a797-34d86bf5a98a-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"f27f34ef-48ed-3c6f-a797-34d86bf5a98a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"f27f34ef-48ed-3c6f-a797-34d86bf5a98a-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 11, 'fakerpress_flag', '1'),
(25, 11, '_fakerpress_orginal_url', 'https://picsum.photos/1411/940/?random'),
(26, 10, '_thumbnail_id', '11'),
(27, 12, '_wp_attached_file', '2021/12/35e89e9d-031d-3391-8af0-cc1e41d18e61.jpg'),
(28, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1139;s:6:\"height\";i:759;s:4:\"file\";s:48:\"2021/12/35e89e9d-031d-3391-8af0-cc1e41d18e61.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"35e89e9d-031d-3391-8af0-cc1e41d18e61-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"35e89e9d-031d-3391-8af0-cc1e41d18e61-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"35e89e9d-031d-3391-8af0-cc1e41d18e61-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"35e89e9d-031d-3391-8af0-cc1e41d18e61-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(29, 12, 'fakerpress_flag', '1'),
(30, 12, '_fakerpress_orginal_url', 'https://picsum.photos/1139/759/?random'),
(31, 13, 'fakerpress_flag', '1'),
(32, 14, '_wp_attached_file', '2021/12/bb56e8c5-ee2f-38a8-a909-d341f57668e2.jpg'),
(33, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1328;s:6:\"height\";i:885;s:4:\"file\";s:48:\"2021/12/bb56e8c5-ee2f-38a8-a909-d341f57668e2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"bb56e8c5-ee2f-38a8-a909-d341f57668e2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"bb56e8c5-ee2f-38a8-a909-d341f57668e2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"bb56e8c5-ee2f-38a8-a909-d341f57668e2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"bb56e8c5-ee2f-38a8-a909-d341f57668e2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 14, 'fakerpress_flag', '1'),
(35, 14, '_fakerpress_orginal_url', 'https://picsum.photos/1328/885/?random'),
(36, 13, '_thumbnail_id', '14'),
(37, 15, '_wp_attached_file', '2021/12/54cd824a-e817-3c8e-8c47-9b24668592b2.jpg'),
(38, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1152;s:6:\"height\";i:768;s:4:\"file\";s:48:\"2021/12/54cd824a-e817-3c8e-8c47-9b24668592b2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"54cd824a-e817-3c8e-8c47-9b24668592b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"54cd824a-e817-3c8e-8c47-9b24668592b2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"54cd824a-e817-3c8e-8c47-9b24668592b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"54cd824a-e817-3c8e-8c47-9b24668592b2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(39, 15, 'fakerpress_flag', '1'),
(40, 15, '_fakerpress_orginal_url', 'https://picsum.photos/1152/768/?random'),
(41, 16, '_wp_attached_file', '2021/12/883b8664-7ea0-3700-9001-53ab2e62e54a.png'),
(42, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:333;s:6:\"height\";i:266;s:4:\"file\";s:48:\"2021/12/883b8664-7ea0-3700-9001-53ab2e62e54a.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"883b8664-7ea0-3700-9001-53ab2e62e54a-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"883b8664-7ea0-3700-9001-53ab2e62e54a-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 16, 'fakerpress_flag', '1'),
(44, 16, '_fakerpress_orginal_url', 'http://placehold.it/333x266/'),
(45, 17, '_wp_attached_file', '2021/12/b1eccf62-cb82-3ee1-9699-067ef60c4ab2.jpg'),
(46, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1420;s:6:\"height\";i:946;s:4:\"file\";s:48:\"2021/12/b1eccf62-cb82-3ee1-9699-067ef60c4ab2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"b1eccf62-cb82-3ee1-9699-067ef60c4ab2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"b1eccf62-cb82-3ee1-9699-067ef60c4ab2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"b1eccf62-cb82-3ee1-9699-067ef60c4ab2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"b1eccf62-cb82-3ee1-9699-067ef60c4ab2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(47, 17, 'fakerpress_flag', '1'),
(48, 17, '_fakerpress_orginal_url', 'https://picsum.photos/1420/946/?random'),
(49, 18, 'fakerpress_flag', '1'),
(50, 19, '_wp_attached_file', '2021/12/d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9.jpg'),
(51, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1148;s:6:\"height\";i:765;s:4:\"file\";s:48:\"2021/12/d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(52, 19, 'fakerpress_flag', '1'),
(53, 19, '_fakerpress_orginal_url', 'https://picsum.photos/1148/765/?random'),
(54, 18, '_thumbnail_id', '19'),
(55, 20, 'fakerpress_flag', '1'),
(56, 21, '_wp_attached_file', '2021/12/2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3.jpg'),
(57, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:48:\"2021/12/2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(58, 21, 'fakerpress_flag', '1'),
(59, 21, '_fakerpress_orginal_url', 'https://picsum.photos/1050/700/?random'),
(60, 22, 'fakerpress_flag', '1'),
(61, 23, '_wp_attached_file', '2021/12/83138d9b-b2de-3415-869d-3db30f2d734e.jpg'),
(62, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1312;s:6:\"height\";i:874;s:4:\"file\";s:48:\"2021/12/83138d9b-b2de-3415-869d-3db30f2d734e.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"83138d9b-b2de-3415-869d-3db30f2d734e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"83138d9b-b2de-3415-869d-3db30f2d734e-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"83138d9b-b2de-3415-869d-3db30f2d734e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"83138d9b-b2de-3415-869d-3db30f2d734e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(63, 23, 'fakerpress_flag', '1'),
(64, 23, '_fakerpress_orginal_url', 'https://picsum.photos/1312/874/?random'),
(65, 22, '_thumbnail_id', '23'),
(66, 24, 'fakerpress_flag', '1'),
(67, 25, '_wp_attached_file', '2021/12/dcac32d6-3e89-3746-8675-483dc66ced2e.jpg'),
(68, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1292;s:6:\"height\";i:861;s:4:\"file\";s:48:\"2021/12/dcac32d6-3e89-3746-8675-483dc66ced2e.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"dcac32d6-3e89-3746-8675-483dc66ced2e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"dcac32d6-3e89-3746-8675-483dc66ced2e-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"dcac32d6-3e89-3746-8675-483dc66ced2e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"dcac32d6-3e89-3746-8675-483dc66ced2e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(69, 25, 'fakerpress_flag', '1'),
(70, 25, '_fakerpress_orginal_url', 'https://picsum.photos/1292/861/?random'),
(71, 26, 'fakerpress_flag', '1'),
(72, 27, '_wp_attached_file', '2021/12/c700d590-3da0-3952-9006-55158184a370.jpg'),
(73, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1085;s:6:\"height\";i:723;s:4:\"file\";s:48:\"2021/12/c700d590-3da0-3952-9006-55158184a370.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c700d590-3da0-3952-9006-55158184a370-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"c700d590-3da0-3952-9006-55158184a370-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c700d590-3da0-3952-9006-55158184a370-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"c700d590-3da0-3952-9006-55158184a370-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(74, 27, 'fakerpress_flag', '1'),
(75, 27, '_fakerpress_orginal_url', 'https://picsum.photos/1085/723/?random'),
(76, 26, '_thumbnail_id', '27'),
(77, 28, 'fakerpress_flag', '1'),
(78, 29, '_wp_attached_file', '2021/12/4780029a-2975-360e-8e3f-ea54f97e55e3.jpg'),
(79, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1058;s:6:\"height\";i:705;s:4:\"file\";s:48:\"2021/12/4780029a-2975-360e-8e3f-ea54f97e55e3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"4780029a-2975-360e-8e3f-ea54f97e55e3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"4780029a-2975-360e-8e3f-ea54f97e55e3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"4780029a-2975-360e-8e3f-ea54f97e55e3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"4780029a-2975-360e-8e3f-ea54f97e55e3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(80, 29, 'fakerpress_flag', '1'),
(81, 29, '_fakerpress_orginal_url', 'https://picsum.photos/1058/705/?random'),
(82, 28, '_thumbnail_id', '29'),
(83, 30, '_wp_attached_file', '2021/12/daeb2945-657a-3c3a-9c01-02e3b6ecbd87.jpg'),
(84, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1111;s:6:\"height\";i:740;s:4:\"file\";s:48:\"2021/12/daeb2945-657a-3c3a-9c01-02e3b6ecbd87.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"daeb2945-657a-3c3a-9c01-02e3b6ecbd87-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"daeb2945-657a-3c3a-9c01-02e3b6ecbd87-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"daeb2945-657a-3c3a-9c01-02e3b6ecbd87-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"daeb2945-657a-3c3a-9c01-02e3b6ecbd87-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(85, 30, 'fakerpress_flag', '1'),
(86, 30, '_fakerpress_orginal_url', 'https://picsum.photos/1111/740/?random'),
(87, 31, 'fakerpress_flag', '1'),
(88, 32, '_wp_attached_file', '2021/12/576c73df-0641-3cb4-bc4c-66bb7a786f31.jpg'),
(89, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1221;s:6:\"height\";i:814;s:4:\"file\";s:48:\"2021/12/576c73df-0641-3cb4-bc4c-66bb7a786f31.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"576c73df-0641-3cb4-bc4c-66bb7a786f31-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"576c73df-0641-3cb4-bc4c-66bb7a786f31-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"576c73df-0641-3cb4-bc4c-66bb7a786f31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"576c73df-0641-3cb4-bc4c-66bb7a786f31-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(90, 32, 'fakerpress_flag', '1'),
(91, 32, '_fakerpress_orginal_url', 'https://picsum.photos/1221/814/?random'),
(92, 31, '_thumbnail_id', '32'),
(93, 33, '_wp_attached_file', '2021/12/2bca7538-d381-3ede-b49b-1df35cc6a09c.jpg'),
(94, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:760;s:4:\"file\";s:48:\"2021/12/2bca7538-d381-3ede-b49b-1df35cc6a09c.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"2bca7538-d381-3ede-b49b-1df35cc6a09c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"2bca7538-d381-3ede-b49b-1df35cc6a09c-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"2bca7538-d381-3ede-b49b-1df35cc6a09c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"2bca7538-d381-3ede-b49b-1df35cc6a09c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(95, 33, 'fakerpress_flag', '1'),
(96, 33, '_fakerpress_orginal_url', 'https://picsum.photos/1140/760/?random'),
(97, 34, '_wp_attached_file', '2021/12/853e36d3-dd95-3e84-ad16-cb377f5e3423.png'),
(98, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:507;s:6:\"height\";i:405;s:4:\"file\";s:48:\"2021/12/853e36d3-dd95-3e84-ad16-cb377f5e3423.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"853e36d3-dd95-3e84-ad16-cb377f5e3423-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"853e36d3-dd95-3e84-ad16-cb377f5e3423-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 34, 'fakerpress_flag', '1'),
(100, 34, '_fakerpress_orginal_url', 'http://placehold.it/507x405/'),
(101, 35, 'fakerpress_flag', '1'),
(102, 36, '_wp_attached_file', '2021/12/41a0e958-176c-3f4d-9681-7d91df4e2392.jpg'),
(103, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1162;s:6:\"height\";i:774;s:4:\"file\";s:48:\"2021/12/41a0e958-176c-3f4d-9681-7d91df4e2392.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"41a0e958-176c-3f4d-9681-7d91df4e2392-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"41a0e958-176c-3f4d-9681-7d91df4e2392-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"41a0e958-176c-3f4d-9681-7d91df4e2392-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"41a0e958-176c-3f4d-9681-7d91df4e2392-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(104, 36, 'fakerpress_flag', '1'),
(105, 36, '_fakerpress_orginal_url', 'https://picsum.photos/1162/774/?random'),
(106, 35, '_thumbnail_id', '36'),
(107, 38, '_menu_item_type', 'custom'),
(108, 38, '_menu_item_menu_item_parent', '0'),
(109, 38, '_menu_item_object_id', '38'),
(110, 38, '_menu_item_object', 'custom'),
(111, 38, '_menu_item_target', ''),
(112, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 38, '_menu_item_xfn', ''),
(114, 38, '_menu_item_url', 'http://localhost/cli-wp/'),
(115, 38, '_menu_item_orphaned', '1639917071'),
(116, 39, '_menu_item_type', 'post_type'),
(117, 39, '_menu_item_menu_item_parent', '0'),
(118, 39, '_menu_item_object_id', '10'),
(119, 39, '_menu_item_object', 'page'),
(120, 39, '_menu_item_target', ''),
(121, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 39, '_menu_item_xfn', ''),
(123, 39, '_menu_item_url', ''),
(124, 39, '_menu_item_orphaned', '1639917071'),
(125, 40, '_menu_item_type', 'post_type'),
(126, 40, '_menu_item_menu_item_parent', '0'),
(127, 40, '_menu_item_object_id', '20'),
(128, 40, '_menu_item_object', 'page'),
(129, 40, '_menu_item_target', ''),
(130, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 40, '_menu_item_xfn', ''),
(132, 40, '_menu_item_url', ''),
(133, 40, '_menu_item_orphaned', '1639917071'),
(134, 41, '_menu_item_type', 'post_type'),
(135, 41, '_menu_item_menu_item_parent', '0'),
(136, 41, '_menu_item_object_id', '26'),
(137, 41, '_menu_item_object', 'page'),
(138, 41, '_menu_item_target', ''),
(139, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 41, '_menu_item_xfn', ''),
(141, 41, '_menu_item_url', ''),
(142, 41, '_menu_item_orphaned', '1639917071'),
(143, 42, '_menu_item_type', 'post_type'),
(144, 42, '_menu_item_menu_item_parent', '0'),
(145, 42, '_menu_item_object_id', '13'),
(146, 42, '_menu_item_object', 'page'),
(147, 42, '_menu_item_target', ''),
(148, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 42, '_menu_item_xfn', ''),
(150, 42, '_menu_item_url', ''),
(151, 42, '_menu_item_orphaned', '1639917071'),
(152, 43, '_menu_item_type', 'post_type'),
(153, 43, '_menu_item_menu_item_parent', '0'),
(154, 43, '_menu_item_object_id', '7'),
(155, 43, '_menu_item_object', 'page'),
(156, 43, '_menu_item_target', ''),
(157, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 43, '_menu_item_xfn', ''),
(159, 43, '_menu_item_url', ''),
(160, 43, '_menu_item_orphaned', '1639917071'),
(161, 44, '_menu_item_type', 'post_type'),
(162, 44, '_menu_item_menu_item_parent', '0'),
(163, 44, '_menu_item_object_id', '18'),
(164, 44, '_menu_item_object', 'page'),
(165, 44, '_menu_item_target', ''),
(166, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 44, '_menu_item_xfn', ''),
(168, 44, '_menu_item_url', ''),
(169, 44, '_menu_item_orphaned', '1639917071'),
(170, 45, '_menu_item_type', 'post_type'),
(171, 45, '_menu_item_menu_item_parent', '0'),
(172, 45, '_menu_item_object_id', '2'),
(173, 45, '_menu_item_object', 'page'),
(174, 45, '_menu_item_target', ''),
(175, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 45, '_menu_item_xfn', ''),
(177, 45, '_menu_item_url', ''),
(178, 45, '_menu_item_orphaned', '1639917071'),
(179, 46, '_menu_item_type', 'post_type'),
(180, 46, '_menu_item_menu_item_parent', '0'),
(181, 46, '_menu_item_object_id', '31'),
(182, 46, '_menu_item_object', 'page'),
(183, 46, '_menu_item_target', ''),
(184, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 46, '_menu_item_xfn', ''),
(186, 46, '_menu_item_url', ''),
(187, 46, '_menu_item_orphaned', '1639917071'),
(188, 47, '_menu_item_type', 'custom'),
(189, 47, '_menu_item_menu_item_parent', '0'),
(190, 47, '_menu_item_object_id', '47'),
(191, 47, '_menu_item_object', 'custom'),
(192, 47, '_menu_item_target', ''),
(193, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 47, '_menu_item_xfn', ''),
(195, 47, '_menu_item_url', 'http://localhost/cli-wp/'),
(196, 47, '_menu_item_orphaned', '1639917092'),
(197, 48, '_menu_item_type', 'post_type'),
(198, 48, '_menu_item_menu_item_parent', '0'),
(199, 48, '_menu_item_object_id', '10'),
(200, 48, '_menu_item_object', 'page'),
(201, 48, '_menu_item_target', ''),
(202, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 48, '_menu_item_xfn', ''),
(204, 48, '_menu_item_url', ''),
(205, 48, '_menu_item_orphaned', '1639917092'),
(206, 49, '_menu_item_type', 'post_type'),
(207, 49, '_menu_item_menu_item_parent', '0'),
(208, 49, '_menu_item_object_id', '20'),
(209, 49, '_menu_item_object', 'page'),
(210, 49, '_menu_item_target', ''),
(211, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 49, '_menu_item_xfn', ''),
(213, 49, '_menu_item_url', ''),
(214, 49, '_menu_item_orphaned', '1639917092'),
(215, 50, '_menu_item_type', 'post_type'),
(216, 50, '_menu_item_menu_item_parent', '0'),
(217, 50, '_menu_item_object_id', '26'),
(218, 50, '_menu_item_object', 'page'),
(219, 50, '_menu_item_target', ''),
(220, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(221, 50, '_menu_item_xfn', ''),
(222, 50, '_menu_item_url', ''),
(223, 50, '_menu_item_orphaned', '1639917093'),
(224, 51, '_menu_item_type', 'post_type'),
(225, 51, '_menu_item_menu_item_parent', '0'),
(226, 51, '_menu_item_object_id', '13'),
(227, 51, '_menu_item_object', 'page'),
(228, 51, '_menu_item_target', ''),
(229, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(230, 51, '_menu_item_xfn', ''),
(231, 51, '_menu_item_url', ''),
(232, 51, '_menu_item_orphaned', '1639917093'),
(233, 52, '_menu_item_type', 'post_type'),
(234, 52, '_menu_item_menu_item_parent', '0'),
(235, 52, '_menu_item_object_id', '7'),
(236, 52, '_menu_item_object', 'page'),
(237, 52, '_menu_item_target', ''),
(238, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(239, 52, '_menu_item_xfn', ''),
(240, 52, '_menu_item_url', ''),
(241, 52, '_menu_item_orphaned', '1639917093'),
(242, 53, '_menu_item_type', 'post_type'),
(243, 53, '_menu_item_menu_item_parent', '0'),
(244, 53, '_menu_item_object_id', '18'),
(245, 53, '_menu_item_object', 'page'),
(246, 53, '_menu_item_target', ''),
(247, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 53, '_menu_item_xfn', ''),
(249, 53, '_menu_item_url', ''),
(250, 53, '_menu_item_orphaned', '1639917093'),
(251, 54, '_menu_item_type', 'post_type'),
(252, 54, '_menu_item_menu_item_parent', '0'),
(253, 54, '_menu_item_object_id', '2'),
(254, 54, '_menu_item_object', 'page'),
(255, 54, '_menu_item_target', ''),
(256, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(257, 54, '_menu_item_xfn', ''),
(258, 54, '_menu_item_url', ''),
(259, 54, '_menu_item_orphaned', '1639917093'),
(260, 55, '_menu_item_type', 'post_type'),
(261, 55, '_menu_item_menu_item_parent', '0'),
(262, 55, '_menu_item_object_id', '31'),
(263, 55, '_menu_item_object', 'page'),
(264, 55, '_menu_item_target', ''),
(265, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(266, 55, '_menu_item_xfn', ''),
(267, 55, '_menu_item_url', ''),
(268, 55, '_menu_item_orphaned', '1639917093'),
(269, 56, '_menu_item_type', 'custom'),
(270, 56, '_menu_item_menu_item_parent', '0'),
(271, 56, '_menu_item_object_id', '56'),
(272, 56, '_menu_item_object', 'custom'),
(273, 56, '_menu_item_target', ''),
(274, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 56, '_menu_item_xfn', ''),
(276, 56, '_menu_item_url', 'http://localhost/cli-wp/'),
(277, 56, '_menu_item_orphaned', '1639917503'),
(278, 57, '_menu_item_type', 'post_type'),
(279, 57, '_menu_item_menu_item_parent', '0'),
(280, 57, '_menu_item_object_id', '10'),
(281, 57, '_menu_item_object', 'page'),
(282, 57, '_menu_item_target', ''),
(283, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(284, 57, '_menu_item_xfn', ''),
(285, 57, '_menu_item_url', ''),
(286, 57, '_menu_item_orphaned', '1639917504'),
(287, 58, '_menu_item_type', 'post_type'),
(288, 58, '_menu_item_menu_item_parent', '0'),
(289, 58, '_menu_item_object_id', '20'),
(290, 58, '_menu_item_object', 'page'),
(291, 58, '_menu_item_target', ''),
(292, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 58, '_menu_item_xfn', ''),
(294, 58, '_menu_item_url', ''),
(295, 58, '_menu_item_orphaned', '1639917504'),
(296, 59, '_menu_item_type', 'post_type'),
(297, 59, '_menu_item_menu_item_parent', '0'),
(298, 59, '_menu_item_object_id', '26'),
(299, 59, '_menu_item_object', 'page'),
(300, 59, '_menu_item_target', ''),
(301, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(302, 59, '_menu_item_xfn', ''),
(303, 59, '_menu_item_url', ''),
(304, 59, '_menu_item_orphaned', '1639917504'),
(305, 60, '_menu_item_type', 'post_type'),
(306, 60, '_menu_item_menu_item_parent', '0'),
(307, 60, '_menu_item_object_id', '13'),
(308, 60, '_menu_item_object', 'page'),
(309, 60, '_menu_item_target', ''),
(310, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 60, '_menu_item_xfn', ''),
(312, 60, '_menu_item_url', ''),
(313, 60, '_menu_item_orphaned', '1639917504'),
(314, 61, '_menu_item_type', 'post_type'),
(315, 61, '_menu_item_menu_item_parent', '0'),
(316, 61, '_menu_item_object_id', '7'),
(317, 61, '_menu_item_object', 'page'),
(318, 61, '_menu_item_target', ''),
(319, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(320, 61, '_menu_item_xfn', ''),
(321, 61, '_menu_item_url', ''),
(322, 61, '_menu_item_orphaned', '1639917504'),
(323, 62, '_menu_item_type', 'post_type'),
(324, 62, '_menu_item_menu_item_parent', '0'),
(325, 62, '_menu_item_object_id', '18'),
(326, 62, '_menu_item_object', 'page'),
(327, 62, '_menu_item_target', ''),
(328, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 62, '_menu_item_xfn', ''),
(330, 62, '_menu_item_url', ''),
(331, 62, '_menu_item_orphaned', '1639917504'),
(332, 63, '_menu_item_type', 'post_type'),
(333, 63, '_menu_item_menu_item_parent', '0'),
(334, 63, '_menu_item_object_id', '2'),
(335, 63, '_menu_item_object', 'page'),
(336, 63, '_menu_item_target', ''),
(337, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(338, 63, '_menu_item_xfn', ''),
(339, 63, '_menu_item_url', ''),
(340, 63, '_menu_item_orphaned', '1639917504'),
(341, 64, '_menu_item_type', 'post_type'),
(342, 64, '_menu_item_menu_item_parent', '0'),
(343, 64, '_menu_item_object_id', '31'),
(344, 64, '_menu_item_object', 'page'),
(345, 64, '_menu_item_target', ''),
(346, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(347, 64, '_menu_item_xfn', ''),
(348, 64, '_menu_item_url', ''),
(349, 64, '_menu_item_orphaned', '1639917504'),
(350, 65, '_menu_item_type', 'custom'),
(351, 65, '_menu_item_menu_item_parent', '0'),
(352, 65, '_menu_item_object_id', '65'),
(353, 65, '_menu_item_object', 'custom'),
(354, 65, '_menu_item_target', ''),
(355, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(356, 65, '_menu_item_xfn', ''),
(357, 65, '_menu_item_url', 'http://localhost/cli-wp/'),
(359, 66, '_menu_item_type', 'post_type'),
(360, 66, '_menu_item_menu_item_parent', '0'),
(361, 66, '_menu_item_object_id', '10'),
(362, 66, '_menu_item_object', 'page'),
(363, 66, '_menu_item_target', ''),
(364, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 66, '_menu_item_xfn', ''),
(366, 66, '_menu_item_url', ''),
(368, 67, '_menu_item_type', 'taxonomy'),
(369, 67, '_menu_item_menu_item_parent', '0'),
(370, 67, '_menu_item_object_id', '4'),
(371, 67, '_menu_item_object', 'category'),
(372, 67, '_menu_item_target', ''),
(373, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(374, 67, '_menu_item_xfn', ''),
(375, 67, '_menu_item_url', ''),
(377, 68, '_menu_item_type', 'post_type'),
(378, 68, '_menu_item_menu_item_parent', '67'),
(379, 68, '_menu_item_object_id', '28'),
(380, 68, '_menu_item_object', 'post'),
(381, 68, '_menu_item_target', ''),
(382, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(383, 68, '_menu_item_xfn', ''),
(384, 68, '_menu_item_url', ''),
(386, 69, '_menu_item_type', 'post_type'),
(387, 69, '_menu_item_menu_item_parent', '67'),
(388, 69, '_menu_item_object_id', '22'),
(389, 69, '_menu_item_object', 'post'),
(390, 69, '_menu_item_target', ''),
(391, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 69, '_menu_item_xfn', ''),
(393, 69, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-12 11:47:12', '2021-12-12 11:47:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-12-12 11:47:12', '2021-12-12 11:47:12', '', 0, 'http://localhost/cli-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-12 11:47:12', '2021-12-12 11:47:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/cli-wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-12-12 11:47:12', '2021-12-12 11:47:12', '', 0, 'http://localhost/cli-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-12 11:47:12', '2021-12-12 11:47:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/cli-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-12 11:47:12', '2021-12-12 11:47:12', '', 0, 'http://localhost/cli-wp/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-12-12 12:06:14', '2021-12-12 12:06:14', '', '7008980f-211c-3a1a-9974-ece049d3e353', '', 'inherit', 'open', 'closed', '', '7008980f-211c-3a1a-9974-ece049d3e353', '', '', '2021-12-12 12:06:14', '2021-12-12 12:06:14', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/7008980f-211c-3a1a-9974-ece049d3e353.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2021-12-12 12:06:15', '2021-12-12 12:06:15', '', '5a9a48e4-3a51-3ae5-8cca-353ea335f193', '', 'inherit', 'open', 'closed', '', '5a9a48e4-3a51-3ae5-8cca-353ea335f193', '', '', '2021-12-12 12:06:15', '2021-12-12 12:06:15', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/5a9a48e4-3a51-3ae5-8cca-353ea335f193.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2021-04-07 13:20:50', '2021-04-07 13:20:50', '<ul><li>Ratione ut quia sit quia est</li><li>Quidem accusamus sequi voluptatibus sequi amet</li><li>Officia autem ut est aut cupiditate</li><li>Hic blanditiis sit dignissimos asperiores</li><li>Omnis enim ut</li></ul>\n<h5>Maxime cum dolorem aut ducimus occaecati qui animi. Earum et accusantium occaecati sed. Vel laboriosam voluptate repudiandae autem</h5>\n<ol><li>Harum repellat et modi est</li><li>Dolorem est eius illo optio rem sed</li><li>Quam est vel quo</li><li>Et reiciendis repellat eum nisi</li><li>Voluptates voluptas dicta sed provident</li><li>Quod in corrupti</li><li>Sit et asperiores quod ex ducimus</li><li>Voluptas impedit porro odio quis</li></ol>\n<img class=\"alignright\" alt=\"Consequatur et ut ab aperiam necessitatibus enim a\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/7008980f-211c-3a1a-9974-ece049d3e353.jpg\">\n<!--more-->\n<img class=\"alignright\" alt=\"Et voluptatibus itaque id dolorem placeat accusamus\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/5a9a48e4-3a51-3ae5-8cca-353ea335f193.jpg\">\n<ol><li>Ea tempora corrupti aliquid possimus</li><li>Voluptas</li><li>Nihil et qui maiores eum</li><li>Sit culpa rem consequatur quis id</li><li>Eos fugiat est harum itaque</li></ol>\n<h5>Quaerat et nesciunt aut ut. Eos qui et sequi ut</h5>\n<p>Deserunt nemo et assumenda consectetur reprehenderit Omnis recusandae culpa quia. dolores rem magni <a title=\"Ullam maxime iure voluptas est natus et repellat similique dolorem eligendi.\" href=\"http://www.farrell.com/laborum-et-et-quia-autem.html\">id amet quis.</a> quia voluptas ut ratione aut. quasi non sed Dolorem doloribus aperiam et <a title=\"Itaque qui sed.\" href=\"http://www.bartell.com/error-ducimus-consectetur-ut-quod-fugit-nemo\">recusandae est. Cumque facere ullam error.</a> debitis explicabo sequi ut. In repudiandae laudantium qui. Esse sit et dolorum. Necessitatibus accusamus est nobis. Non quo veniam cumque totam aut aspernatur.</p>\n<h3>Soluta consequatur adipisci exercitationem. Eum occaecati ut ut eos nostrum quia aliquid. Commodi a perspiciatis sunt commodi ipsa consequuntur</h3>\n<p>Ut laborum maiores aliquam dignissimos aperiam laudantium. Beatae est tenetur fugit repellendus quod ea. Aliquid fugit consequatur alias mollitia illum. Et voluptatem qui et amet. dolore et Quam dolor cumque non nemo labore non consequatur. sunt sed in facilis. Rerum dolor quod totam autem. Voluptates quo est soluta non. Quaerat dolore numquam fugiat rerum sit Libero ut distinctio cumque Autem ut harum excepturi cum facere et Placeat veniam illum qui dicta Dolore quod est Sit delectus sed ea quidem facilis <a title=\"Eligendi.\" href=\"https://www.zulauf.com/ea-aut-esse-possimus-et\">Accusantium quod nisi in. Et</a> omnis esse tempora qui rerum id. Tempore nihil beatae voluptates mollitia.</p>\n<p>Nam et dicta officia dolor temporibus. In accusantium et ut enim qui aut. neque cupiditate optio debitis dolor Illo natus id. Officia modi sapiente esse error. consequatur consequuntur perspiciatis ullam Asperiores consequuntur molestiae nostrum consectetur non accusantium nulla beatae. architecto repellendus tempore sunt nesciunt et. <a title=\"Repellendus blanditiis ipsa rerum molestiae consequatur et.\" href=\"http://hayes.com/quia-excepturi-quaerat-magnam-impedit-est.html\">magni consectetur suscipit placeat</a> enim iusto. Alias sed explicabo temporibus nihil iste ut. a non. et placeat ut ea eligendi. Accusantium quia perferendis vero eos fuga Qui alias et numquam asperiores voluptates optio. Sunt tempora qui tempore. Consequatur in iste eos vel cum. qui odit totam rerum. id facere doloremque reiciendis fugiat vel. dolore et voluptas quidem. Quos dolores at. Sit explicabo nisi voluptas quod. Sed nam et voluptate ab doloremque. Deleniti architecto quis at fuga vel corrupti. deleniti error placeat numquam debitis. Expedita sint rerum reiciendis.</p>\n<ul><li>Nemo ad nihil eum vero fugit</li><li>Rem nostrum voluptatem sed a quam quis</li><li>Pariatur eos laborum eos veritatis</li><li>Maxime labore voluptatem aut voluptatem</li></ul>', 'Nam delectus ullam incidunt', 'Commodi aspernatur voluptatibus voluptatem voluptas accusantium dolorum eos modi necessitatibus quisquam velit voluptas pariatur itaque impedit rerum vero impedit et dicta et eveniet est non laboriosam unde incidunt dolorum at delectus recusandae impedit animi eius dolorem qui ut ad inventore consequatur incidunt incidunt sit incidunt accusantium nesciunt odit mollitia sit iste molestias corporis ab numquam pariatur non occaecati doloribus eveniet quam omnis ea placeat qui quos explicabo consequatur totam et ducimus magni omnis expedita delectus fugit.', 'publish', 'open', 'open', '', 'nam-delectus-ullam-incidunt', '', '', '2021-04-07 13:20:50', '2021-04-07 13:20:50', '', 0, 'http://localhost/cli-wp/index.php/nam-delectus-ullam-incidunt/', 0, 'page', '', 0),
(8, 1, '2021-12-12 12:06:17', '2021-12-12 12:06:17', '', 'b1eaf8be-346c-3f01-a36f-cc102d395da9', '', 'inherit', 'open', 'closed', '', 'b1eaf8be-346c-3f01-a36f-cc102d395da9', '', '', '2021-12-12 12:06:17', '2021-12-12 12:06:17', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/b1eaf8be-346c-3f01-a36f-cc102d395da9.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-12-12 12:06:17', '2021-12-12 12:06:17', '', '150c3dc6-58af-3c76-a71f-6feedb319c4f', '', 'inherit', 'open', 'closed', '', '150c3dc6-58af-3c76-a71f-6feedb319c4f', '', '', '2021-12-12 12:06:17', '2021-12-12 12:06:17', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/150c3dc6-58af-3c76-a71f-6feedb319c4f.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-11-07 02:37:21', '2021-11-07 02:37:21', '<h2>Quaerat modi quia rerum dignissimos. Rerum dolor qui quaerat molestias quae voluptatem et. Ea ullam eius aut et soluta est ipsa</h2>\n<ul><li>Repellat dolorum consequuntur officia suscipit</li><li>Eos quam soluta iusto eum</li><li>Et ea voluptatem perspiciatis animi</li><li>Rerum dolore</li><li>Tenetur esse quam et porro quis</li></ul>\n<p>Dicta ipsam non non eos voluptatum. Et earum reprehenderit et natus possimus. Unde molestias itaque commodi nemo libero. Repellat vel quis aut veniam. Sed possimus beatae minima. Quisquam molestiae rerum expedita alias magnam mollitia. In sed consequuntur sunt veniam accusamus dolore consequuntur. Praesentium quia asperiores ut. Provident ducimus cupiditate id voluptas aut. Optio magni ut magni et harum. A impedit quae qui eligendi fugit. Earum impedit id saepe id voluptates vitae. Quis modi quas aliquid ut blanditiis. Recusandae est sunt ad laudantium accusantium. Quae sit atque voluptatem et. Qui quam repellat ut voluptatum deserunt aut magnam sed. Sit vitae dolor nobis eum consequatur error non. Aut ratione eum aut. Nobis ut itaque dolores suscipit. Veniam omnis nemo rerum est voluptatem. Quos laudantium officia fuga officiis. Tenetur velit molestiae aspernatur voluptas nesciunt cupiditate in. Veniam error commodi error fugiat. Inventore consequatur tenetur molestiae in possimus harum earum dolore. Et nemo qui possimus pariatur necessitatibus cum ut. Amet quo est tenetur possimus ipsa. Aut est praesentium totam odio autem voluptas. Dolorum ipsum ipsa ut necessitatibus corrupti mollitia magni. Ex enim recusandae quo ut sint iste ullam. Amet est sint sunt fugit. A et commodi perferendis at. Earum unde odit totam soluta assumenda deleniti accusamus. Suscipit ut ut molestiae impedit impedit et dolore. Dolor facilis aperiam et. Ut cum neque quia enim velit veniam. Natus et et et officia et commodi ut. Vel soluta molestiae magnam vero quasi ea. Assumenda dolorum sunt dicta a.</p>\n<h6>Dolores repudiandae mollitia consequatur. Quasi aliquam non sunt alias dolorem et sint quasi</h6>\n<img alt=\"Quod id consequuntur tempora\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/150c3dc6-58af-3c76-a71f-6feedb319c4f.png\">', 'Ad velit est dolorem aut aut perferendis', 'Voluptatem dolores qui consectetur maxime harum magnam ut error quasi voluptatem at ipsum voluptatibus voluptatum fuga aut nobis et adipisci officiis ab ipsam rerum nulla omnis et omnis illum architecto molestias accusamus ipsam culpa quia dolorum distinctio corporis dolor nam rem et vitae vitae aut repellendus modi eius et aut in vitae ipsum id incidunt voluptas at magnam quidem ea libero illo quae sed a.', 'publish', 'open', 'closed', '', 'ad-velit-est-dolorem-aut-aut-perferendis', '', '', '2021-11-07 02:37:21', '2021-11-07 02:37:21', '', 0, 'http://localhost/cli-wp/index.php/ad-velit-est-dolorem-aut-aut-perferendis/', 0, 'page', '', 0),
(11, 1, '2021-12-12 12:06:19', '2021-12-12 12:06:19', '', 'f27f34ef-48ed-3c6f-a797-34d86bf5a98a', '', 'inherit', 'open', 'closed', '', 'f27f34ef-48ed-3c6f-a797-34d86bf5a98a', '', '', '2021-12-12 12:06:19', '2021-12-12 12:06:19', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/f27f34ef-48ed-3c6f-a797-34d86bf5a98a.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-12-12 12:06:20', '2021-12-12 12:06:20', '', '35e89e9d-031d-3391-8af0-cc1e41d18e61', '', 'inherit', 'open', 'closed', '', '35e89e9d-031d-3391-8af0-cc1e41d18e61', '', '', '2021-12-12 12:06:20', '2021-12-12 12:06:20', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/35e89e9d-031d-3391-8af0-cc1e41d18e61.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-10-20 09:55:00', '2021-10-20 09:55:00', '<blockquote>Non alias esse consequatur Id atque voluptatibus eveniet et enim. Illum velit modi et consequuntur tempore <a title=\"Minus vel nesciunt voluptatum atque tenetur consectetur.\" href=\"http://torphy.com/molestiae-perferendis-natus-et-molestias-aut-reiciendis-laudantium-culpa.html\">Voluptas</a> laudantium aspernatur id facilis Officiis corporis sit eveniet temporibus perspiciatis corrupti. blanditiis beatae Quasi <a title=\"Est iste.\" href=\"http://www.wisozk.com/praesentium-sint-ut-soluta-quod\">ipsam aspernatur</a> voluptate.</blockquote>\n<ol><li>Magnam eligendi odio</li><li>Quo temporibus autem ipsam laboriosam</li><li>Aut harum dolores dolorum cum</li><li>Labore et id et aut ab</li><li>Dolorum aperiam iure ut magni qui et</li><li>Quasi quia id quibusdam</li><li>Odio atque et dolorem</li><li>Rerum tempore voluptatem est ex soluta</li><li>Est natus sed rem quis sit</li></ol>\n<h1>Voluptatem deleniti voluptatem deserunt non voluptas minima</h1>\n<!--more-->\n<img class=\"alignright\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/35e89e9d-031d-3391-8af0-cc1e41d18e61.jpg\">\n<h3>Similique sapiente eum qui magnam. Quis voluptatem quia minima eos quibusdam</h3>\n<ol><li>Maxime sit non explicabo distinctio autem recusandae odit</li><li>Perferendis eius vero magni id nulla magnam</li></ol>\n<blockquote>Voluptas unde repudiandae eum Eum deserunt delectus voluptas tempore consectetur. Hic ex molestias dolorum id. Amet et consequatur Aliquam quas nobis et aut possimus magnam Et autem accusantium enim qui facere. itaque <a title=\"Et perspiciatis quia enim consequatur expedita modi.\" href=\"http://bogisich.net/\">voluptas eos necessitatibus voluptas. Animi</a> minus et repellendus Et corrupti <a title=\"Maiores voluptate odit aut.\" href=\"http://www.harber.com/tempora-possimus-odio-nisi-dolor\">in rem ipsa mollitia animi. Molestias maiores</a> laboriosam omnis dicta. Temporibus nihil dolores fugit atque ratione. Voluptatem explicabo impedit. Aliquid et at qui dolorem. dolorem sed laudantium rerum hic. Est odio commodi voluptas aperiam. dolorem sequi id sed labore consequatur voluptatem. Consectetur a quo rerum voluptatem. Aut perferendis dicta quia vel nostrum et. Cupiditate <a title=\"Esse nostrum similique cumque beatae tempore est facere repellendus voluptatibus.\" href=\"http://www.baumbach.com/aut-nemo-consequatur-assumenda-pariatur-et-amet.html\">aut necessitatibus</a> quasi provident. Voluptatem iste assumenda. vitae cupiditate maxime <a title=\"Nam et laborum voluptatibus doloremque.\" href=\"http://blick.com/\">rerum vel. Est ea aut deleniti qui. Quisquam</a> rerum similique et sint officia quisquam. soluta ut et illum voluptatibus. Dolores et quas eaque quis recusandae. quod pariatur Rerum optio voluptatem quia praesentium deleniti corrupti.</blockquote>', 'Laboriosam illo ullam ea autem cum', 'Et nobis velit harum consequatur voluptatem quia commodi voluptas quaerat velit voluptatem repellat recusandae cumque nobis iusto omnis fugit perferendis dolor impedit nisi earum et illo quia ut iusto qui ut voluptatem ut saepe autem eos quisquam eos est deleniti et perspiciatis quos placeat occaecati qui repellat sunt dolorem ipsum doloremque debitis quo fugit quidem.\n\nAutem voluptas natus assumenda ut et dignissimos fugit corrupti atque enim omnis omnis ex qui quae assumenda quasi amet reprehenderit laborum atque nesciunt error dolor illo nostrum nostrum molestiae ea in aut et delectus magni vero illo at nemo ut nam praesentium eum molestiae sed est quam commodi est perspiciatis.\n\nId sunt velit ipsam vel et distinctio quaerat et velit repellendus temporibus quia animi assumenda aut non optio quod et fugit laborum similique delectus fugiat eaque excepturi quia voluptatem et repudiandae cum velit cum ipsam aut sed optio dicta pariatur qui nam quidem aut repellat eius odio ut id architecto incidunt et animi quae aliquam asperiores architecto quis id modi aut est voluptate ab consequatur voluptas et ipsa tempore omnis.\n\nTotam accusamus esse dicta commodi doloremque aliquid illum dolor officia maxime maxime cum amet quis alias enim aut doloremque molestiae non consequuntur amet cumque optio molestias eum eveniet voluptatum ratione voluptas ipsum eius eos qui vel ut ut commodi et quam earum voluptatum architecto consequatur enim aspernatur et commodi quasi rerum cum cum fugit quidem quia qui voluptatum cupiditate voluptas et facere ex sapiente aut amet dolorum quia soluta nihil eveniet iste quaerat velit aperiam nesciunt nam.', 'publish', 'open', 'closed', '', 'laboriosam-illo-ullam-ea-autem-cum', '', '', '2021-10-20 09:55:00', '2021-10-20 09:55:00', '', 0, 'http://localhost/cli-wp/index.php/laboriosam-illo-ullam-ea-autem-cum/', 0, 'page', '', 0),
(14, 1, '2021-12-12 12:06:22', '2021-12-12 12:06:22', '', 'bb56e8c5-ee2f-38a8-a909-d341f57668e2', '', 'inherit', 'open', 'closed', '', 'bb56e8c5-ee2f-38a8-a909-d341f57668e2', '', '', '2021-12-12 12:06:22', '2021-12-12 12:06:22', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/bb56e8c5-ee2f-38a8-a909-d341f57668e2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-12-12 12:06:23', '2021-12-12 12:06:23', '', '54cd824a-e817-3c8e-8c47-9b24668592b2', '', 'inherit', 'open', 'closed', '', '54cd824a-e817-3c8e-8c47-9b24668592b2', '', '', '2021-12-12 12:06:23', '2021-12-12 12:06:23', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/54cd824a-e817-3c8e-8c47-9b24668592b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-12-12 12:06:23', '2021-12-12 12:06:23', '', '883b8664-7ea0-3700-9001-53ab2e62e54a', '', 'inherit', 'open', 'closed', '', '883b8664-7ea0-3700-9001-53ab2e62e54a', '', '', '2021-12-12 12:06:23', '2021-12-12 12:06:23', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/883b8664-7ea0-3700-9001-53ab2e62e54a.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-12-12 12:06:25', '2021-12-12 12:06:25', '', 'b1eccf62-cb82-3ee1-9699-067ef60c4ab2', '', 'inherit', 'open', 'closed', '', 'b1eccf62-cb82-3ee1-9699-067ef60c4ab2', '', '', '2021-12-12 12:06:25', '2021-12-12 12:06:25', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/b1eccf62-cb82-3ee1-9699-067ef60c4ab2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 3, '2021-05-01 17:10:29', '2021-05-01 17:10:29', '<h3>Autem officia ut maxime iste nihil aliquam quod blanditiis</h3>\n<p>Est et deserunt iure. Dolorem fuga fuga est ea libero <a title=\"Et qui.\" href=\"http://zemlak.com/tempora-accusamus-ipsum-quidem-beatae-excepturi-quisquam\">sequi. Labore asperiores sunt aut perspiciatis</a> nisi Nihil rerum neque aperiam qui optio quis error. et autem esse. Tempora adipisci veritatis in quaerat.</p>\n<img class=\"alignright\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/54cd824a-e817-3c8e-8c47-9b24668592b2.jpg\">\n<h4>Recusandae qui totam hic totam blanditiis</h4>\n<img alt=\"Ut doloremque quas consequatur qui ullam illo\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/883b8664-7ea0-3700-9001-53ab2e62e54a.png\">\n<h6>Aut excepturi ullam occaecati officiis doloremque non aut</h6>\n<!--more-->\n<p>Dolorem ut aliquam et iure. Cupiditate maxime molestiae rem adipisci quisquam aspernatur expedita. Consectetur quo dolorem hic harum dolore dolor tenetur. Atque dicta non corrupti.</p>\n<h2>Dolorem voluptas reiciendis hic et. Molestias provident adipisci magnam et. Tempora cum quia et qui sed voluptas voluptatem</h2>\n<p>Debitis aut suscipit autem. Blanditiis et blanditiis delectus illum ut perspiciatis eos. Soluta deserunt explicabo et magnam. Magni praesentium eum dolorem. Perspiciatis aspernatur facere blanditiis voluptas recusandae. Unde odio corrupti et qui dolore et. Dolorem aspernatur delectus est. Sit in sit rerum quam dicta. Placeat neque aliquid quos eligendi dolore. In dolores nobis qui eos delectus optio sed rem. Dolores saepe similique alias aut dicta odio quidem. Voluptate est et voluptatem quod. Voluptate rem sint et dolorum. Veritatis sed voluptatem natus qui repellendus aliquam. Perferendis saepe quae est sit occaecati optio enim ratione. Hic sit distinctio cupiditate. Ut in facilis maiores aut ipsam iusto. Quam voluptatum saepe aut. Molestiae recusandae ut perspiciatis ea ipsum. Inventore voluptatem labore quidem quo tempore ea. Ea dignissimos earum est est quisquam qui. Possimus maiores ea quasi et nisi. Ducimus architecto a est facere animi. Praesentium corrupti quo autem illum quia. Aut quas eos provident dolorum dolor ea reprehenderit recusandae. Amet aut ut voluptatibus est assumenda deserunt. Numquam cumque omnis minima rerum eum aut. Sint nam numquam ex eius. Est eum eius in consequatur. Quis beatae et sed id magnam veniam dolores. Autem et labore repellat. Quia fugiat voluptates officia. Illum sed rerum debitis reiciendis. Quia nobis id possimus velit reprehenderit. Dolores quod mollitia et dolorem officia iure nesciunt.</p>\n<img alt=\"Animi qui consectetur\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/b1eccf62-cb82-3ee1-9699-067ef60c4ab2.jpg\">\n<h5>Est blanditiis voluptas voluptatem voluptate quas repudiandae</h5>\n<ol><li>Doloribus</li><li>Quidem dicta non quidem numquam sint</li><li>Aut eos est vero</li><li>Autem ea non</li><li>Odit ab velit illum porro</li><li>Explicabo perspiciatis quasi atque earum sapiente</li><li>Et sed soluta voluptates et explicabo</li></ol>\n<h2>Qui maxime aut adipisci ea facilis suscipit. Amet ut sunt nam quisquam eaque</h2>\n<hr>', 'Recusandae iure minus doloremque officia magni', 'Ipsa delectus sequi ipsam recusandae corrupti et sequi ipsa architecto asperiores et aut asperiores in natus sit minima libero voluptatem necessitatibus nemo excepturi consequatur voluptatem ratione velit omnis voluptates est inventore alias quia vel minima quidem id qui illum est nobis id pariatur totam repudiandae mollitia est.\n\nCumque et iure dolorem quia nemo ut tempora ex vel rerum velit harum est aut rerum perferendis autem sit qui unde ut et voluptas maxime fuga et laudantium et tempore qui veniam qui eaque earum et veniam at nemo impedit quis aut nam officia non sunt nihil sapiente ea dolor ut officiis incidunt suscipit voluptatum maiores possimus harum impedit rerum nostrum tempore corrupti vel nostrum a ab commodi officiis perspiciatis.\n\nDoloremque mollitia facere id fuga dolores illum cupiditate distinctio officia ratione ducimus et autem repellendus aut nemo voluptatem iusto sequi facere laboriosam et itaque dolor enim eum sequi dolorem sit sapiente amet non quasi ab fuga dolorum saepe consequatur natus accusantium consequuntur ab vel reprehenderit quia fugiat quaerat ullam adipisci voluptas repellendus.', 'publish', 'open', 'closed', '', 'recusandae-iure-minus-doloremque-officia-magni', '', '', '2021-05-01 17:10:29', '2021-05-01 17:10:29', '', 0, 'http://localhost/cli-wp/index.php/recusandae-iure-minus-doloremque-officia-magni/', 0, 'page', '', 0),
(19, 1, '2021-12-12 12:06:26', '2021-12-12 12:06:26', '', 'd51fbe1d-6c0f-392b-beaf-2a1494bc2ec9', '', 'inherit', 'open', 'closed', '', 'd51fbe1d-6c0f-392b-beaf-2a1494bc2ec9', '', '', '2021-12-12 12:06:26', '2021-12-12 12:06:26', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/d51fbe1d-6c0f-392b-beaf-2a1494bc2ec9.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 4, '2021-03-02 23:19:14', '2021-03-02 23:19:14', '<ol><li>Delectus sit ea placeat blanditiis aut non</li><li>Voluptatem at sint et</li><li>Magni at qui sed voluptas</li><li>Expedita velit maxime et et ex aspernatur</li><li>Sed voluptas vel aperiam rerum</li><li>Autem eos eos non aperiam</li><li>Perspiciatis et quia ducimus molestiae ad ut</li></ol>\n<blockquote>Cupiditate aut quos Sit dolores voluptas. Aliquam velit ut <a title=\"Et nesciunt.\" href=\"http://reilly.biz/minus-culpa-quae-magni-vel-quis-doloremque-ducimus-est.html\">Deserunt expedita ipsum dolores eum voluptatem voluptatem</a> Corporis ea sint quaerat ullam ipsa doloremque. Eligendi et impedit sint nobis laudantium. Voluptas non ducimus dolorem labore Occaecati tenetur quis quasi voluptas deserunt eos dolorum. consequuntur impedit tenetur dicta veniam Possimus saepe vel nam velit optio. Illum accusamus et eum et officia. Unde et autem quae <a title=\"Quo et ea est dolorem numquam.\" href=\"https://douglas.com/quis-voluptas-libero-id-minima-velit-perferendis-explicabo.html\">facilis blanditiis</a> Vero omnis voluptatum. Quis ut adipisci ipsam in voluptas voluptates similique. minima voluptates et <a title=\"Ex sit.\" href=\"http://osinski.biz/saepe-nobis-et-eveniet-cum-modi-omnis-in\">Ipsam enim ratione ut.</a> cum quo est. Quisquam <a title=\"Enim in.\" href=\"https://kuhlman.biz/nam-quam-voluptate-magni-et-non-quibusdam.html\">quaerat</a> reprehenderit sequi fugit consequuntur architecto. Et animi placeat molestiae ut eum ut. Qui neque nihil aperiam perferendis culpa. Consequatur delectus excepturi molestiae at doloribus. provident voluptatibus numquam qui. quisquam hic eius. Aut et tempora exercitationem. sit consequuntur et deleniti Minus eum adipisci quia dicta soluta rerum.</blockquote>\n<h6>Qui sequi ut autem debitis. Cupiditate qui eum quia quam ut expedita</h6>\n<blockquote>Aut dolor <a title=\"Suscipit itaque ducimus accusamus eum quia.\" href=\"http://www.gorczany.com/ut-quis-nesciunt-vero-consequatur\">fugit natus</a> Eius magnam impedit amet aperiam. autem ipsa cum expedita voluptatem Minus corrupti minima tempore aut Perspiciatis sapiente est ut Unde distinctio velit in omnis qui. vel ad ut mollitia. Nesciunt assumenda omnis inventore sunt sint officia. iure alias impedit voluptatum non amet et. Cupiditate quasi sequi delectus alias perferendis cumque. et qui non et accusamus nostrum. expedita cum amet nesciunt enim. Autem rerum ipsa sed. Ipsam eos fugit pariatur et Sunt sapiente similique earum sed nesciunt. <a title=\"Consequatur quaerat eligendi.\" href=\"http://www.quitzon.net/veniam-quaerat-quibusdam-et-impedit.html\">est neque</a> fugiat aliquid. Inventore ut voluptatem facilis quidem necessitatibus. et voluptate sunt nostrum esse molestiae. Et et magni et quas itaque repellendus. qui voluptatibus quas quia aspernatur.</blockquote>\n<ol><li>Eveniet cum aut autem quisquam</li><li>Distinctio omnis sint molestiae amet labore</li><li>Ullam</li><li>Est nam facilis</li><li>Voluptatem deleniti</li></ol>\n<h6>Deserunt et eaque voluptatem quas. Dolorem sint est consequatur. Et iste unde quia qui delectus eaque</h6>\n<ul><li>Molestias suscipit minus non dolorem alias</li><li>Non delectus aut quo</li><li>Ipsum aut accusamus omnis</li></ul>\n<!--more-->\n<blockquote>Officia quis consectetur voluptatem. Facilis et sit eaque magnam Repellat quasi est sunt placeat in. Sit quos ad voluptas qui unde Sunt ullam ea sint. vero laudantium pariatur quasi Qui sint voluptates dolores in qui. Laborum in voluptatibus. ab omnis et quisquam Rerum <a title=\"Et consequatur.\" href=\"http://mohr.com/\">dolore dolorem rerum</a> atque aut. Commodi magnam voluptas sit. sapiente culpa magni reiciendis tempore. quia qui iusto facere et. Amet est ut nisi eaque est Consequatur eum sapiente libero quibusdam quis. Ea cum rerum quos. Dolorem molestiae repudiandae excepturi. Incidunt repellat aspernatur voluptas quisquam delectus. Quia ad quibusdam Ad rem quia velit. Pariatur voluptatem aspernatur Nemo veritatis amet illo. Nulla rerum distinctio aut. Sed autem libero dolore iusto deserunt. Omnis voluptas quisquam dicta similique nesciunt minus. Deserunt dolorem ut. consequatur consectetur et ut optio.</blockquote>\n<h1>Unde asperiores aut expedita voluptas et</h1>\n<blockquote>Harum maiores et iste voluptatem omnis. Praesentium nostrum ab fugit <a title=\"Et dolor.\" href=\"http://www.turcotte.com/commodi-quam-vel-est-et-perspiciatis-mollitia\">voluptas. Labore quidem aut nemo et.</a> minima consectetur qui odio quas Dolorem ducimus aut inventore. Quis dicta quidem corporis sint error. Est adipisci fugit magni odit quam Eaque vero dolorem qui <a title=\"Sint reiciendis sed a maxime.\" href=\"http://kuphal.com/omnis-at-asperiores-atque-et-inventore.html\">voluptatem. Enim est</a> <a title=\"Harum.\" href=\"http://www.fadel.org/eveniet-impedit-sed-laudantium-aut-est-quam-molestias-facilis\">molestiae sint</a> Doloribus explicabo debitis. modi incidunt magnam. Est accusantium architecto ut omnis Ut dolorum recusandae hic ex nulla <a title=\"Qui quibusdam.\" href=\"http://spinka.info/voluptatum-itaque-in-eum-laborum-fugiat-quae\">Laudantium eligendi illum occaecati</a> est aut ipsa. Corrupti nisi ut iusto omnis. Et voluptas eos consequatur. Possimus alias cupiditate quia dolore eaque sit. quam numquam molestias iusto nobis qui eos enim. sequi nihil eligendi. Omnis molestiae fugit porro totam aspernatur. Dignissimos qui quod eos <a title=\"Omnis.\" href=\"http://yost.com/minus-repellendus-aut-dolor-soluta-veniam.html\">ut. Voluptas</a> reprehenderit id Distinctio facilis incidunt ab et <a title=\"Pariatur nulla cum tempora fugiat voluptatem.\" href=\"http://www.ruecker.com/enim-incidunt-quo-numquam-et-suscipit-quia-ut-maiores\">Quisquam qui placeat rem</a> provident. Totam eos nisi eos ut non laborum. Nostrum tenetur ipsam cum soluta itaque praesentium. Occaecati delectus hic repellendus et soluta a. Pariatur qui natus delectus. Voluptas et consectetur deserunt tempore. Ipsum iste eius aut <a title=\"Et animi amet.\" href=\"http://www.jacobi.com/impedit-veniam-illo-dolor.html\">quo id</a> Ut qui corporis rerum et. Ut tempora qui consequuntur alias. Nobis est deserunt est. Quas beatae <a title=\"Et possimus beatae.\" href=\"http://adams.com/ab-deleniti-deserunt-aut-omnis\">magni. Molestias accusamus quo voluptatibus</a> et beatae. rerum debitis repellat. excepturi omnis alias Sit quo fugit est facilis ut quod Ut modi ducimus est nam repudiandae quod quidem. Dolorem nemo id in. Expedita occaecati est ex quae in.</blockquote>\n<ul><li>Aut aut eaque eaque</li><li>Sit et incidunt omnis</li><li>Consequatur rerum autem est</li><li>Id repellendus et quasi neque aut</li><li>Ab doloremque ducimus ducimus praesentium</li><li>Architecto totam qui</li><li>Modi autem</li><li>Aut ipsam at id aliquid</li><li>Quas fuga quidem quis fuga quo dolorem dolores</li></ul>\n<p>Quia sed ut quo vel laboriosam Exercitationem id harum quaerat doloribus consequatur aspernatur. <a title=\"Culpa quas.\" href=\"http://www.bahringer.net/\">placeat</a> asperiores rerum. Adipisci facilis quae voluptatem numquam. ut illo <a title=\"Exercitationem illum alias est voluptate.\" href=\"http://crona.biz/voluptas-ullam-quo-minima-qui-sunt-in-iste\">culpa quibusdam. Aut aut quam</a> et <a title=\"Aliquid perspiciatis et eum voluptatem.\" href=\"http://www.smith.com/\">Ut voluptatem quo</a> odio. Ea quod quia est asperiores deleniti aliquam. nesciunt maxime aut Incidunt magnam quos voluptatum Eaque nobis quidem ex nobis quaerat Sed voluptatem deleniti et dolores error in. Voluptas et sed voluptas voluptatem assumenda eos. Beatae <a title=\"Adipisci libero.\" href=\"https://www.spinka.com/dolores-doloremque-a-ut-dolorem-expedita-id-earum\">rem saepe et ratione.</a> qui odit cupiditate eligendi delectus praesentium. Nobis minus beatae earum <a title=\"Voluptas est velit expedita.\" href=\"http://www.wisoky.com/ipsum-delectus-atque-repellat-iure-eos-blanditiis-tempore\">Et aut</a> quia labore. Rerum consectetur iure est. Ipsam dicta qui ex repudiandae recusandae deleniti. Eos consequatur magni impedit <a title=\"Esse odio aut aut vitae.\" href=\"http://rodriguez.com/libero-ea-at-consequatur-laboriosam-ut.html\">blanditiis velit. Nemo</a> ducimus incidunt asperiores et</p>\n<h3>Libero qui enim labore a nam. Laborum fuga vel incidunt aut omnis</h3>\n<blockquote>Quia blanditiis ut dolor. Vel ipsa velit molestiae tempore voluptatem totam. Vel <a title=\"Autem quod ad ut.\" href=\"http://stehr.info/\">explicabo</a> possimus Magnam autem nihil repudiandae sunt. iure voluptatum <a title=\"Et nemo.\" href=\"http://www.langworth.org/\">cumque quia voluptate.</a> sint excepturi iure officia id ut perferendis. Consequuntur ut dolorem et ab. Officiis harum laboriosam aperiam. Fugit quia quam tempore ipsum ratione quia. fugit <a title=\"Esse saepe repellat quod voluptate.\" href=\"http://hirthe.com/blanditiis-molestias-vitae-accusamus-amet-in-voluptatum.html\">vel qui. Soluta</a> est vitae ipsum. officiis unde sunt numquam eaque. Suscipit beatae in eius maiores fugiat recusandae. error voluptate tempora. Minus expedita molestias nesciunt voluptates.</blockquote>\n<hr>', 'Cupiditate dolore vel sit ipsam libero voluptatem', 'Ea illum et sit accusantium blanditiis sit quisquam commodi corrupti accusamus ex est aut corrupti quasi aut odit harum vero tenetur et error ratione exercitationem quaerat laudantium ut amet tenetur nulla fuga eos labore molestias odit doloremque impedit ut provident.\n\nEt sunt nesciunt adipisci atque optio beatae ut est soluta maxime doloremque inventore qui sapiente beatae quia ea eum optio voluptatibus excepturi nihil et voluptas sit mollitia architecto voluptas ut repellat at sunt eveniet quo doloribus eligendi aut maxime pariatur repellat blanditiis aut earum accusantium eos expedita consequatur at consectetur quisquam itaque.', 'publish', 'open', 'closed', '', 'cupiditate-dolore-vel-sit-ipsam-libero-voluptatem', '', '', '2021-03-02 23:19:14', '2021-03-02 23:19:14', '', 0, 'http://localhost/cli-wp/index.php/cupiditate-dolore-vel-sit-ipsam-libero-voluptatem/', 0, 'page', '', 0),
(21, 1, '2021-12-12 12:06:28', '2021-12-12 12:06:28', '', '2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3', '', 'inherit', 'open', 'closed', '', '2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3', '', '', '2021-12-12 12:06:28', '2021-12-12 12:06:28', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/2c5bf3ce-0173-3c5c-b382-c2bb1f0cf8e3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 3, '2021-03-06 11:31:15', '2021-03-06 11:31:15', '<h2>Culpa et iusto exercitationem autem libero. Qui possimus sit blanditiis dolorem eos voluptatem fugiat et. Est sint qui occaecati libero atque</h2>\n<p>Asperiores sunt in iure. <a title=\"Sit quae delectus et.\" href=\"https://brekke.com/sunt-asperiores-rerum-ipsum-ab-numquam.html\">possimus maxime a quis nihil. Accusantium numquam</a> et aut vel dolorum distinctio. ut quo nesciunt voluptates doloremque tenetur. Eius minus natus nam tenetur. Harum necessitatibus voluptate quia animi perferendis. illum ut sit aut. Vero reiciendis minus quos facilis. <a title=\"Et qui culpa praesentium magni.\" href=\"http://www.wuckert.biz/qui-voluptas-magnam-velit-incidunt-est\">ut vero aut</a> Commodi minus quam reprehenderit enim placeat. deleniti odit excepturi architecto <a title=\"Odit soluta error minima.\" href=\"https://www.reichel.com/rerum-dolores-eligendi-tenetur-voluptas-quaerat\">Quasi</a> provident voluptatibus optio perspiciatis iure Voluptatum et unde eos reprehenderit sit Omnis dolorem ad blanditiis maiores optio. Vel expedita voluptatem dicta atque. facere voluptate consequatur. delectus in doloribus et consequatur odio. nulla natus <a title=\"Distinctio doloribus consequatur adipisci est exercitationem.\" href=\"http://torp.com/laborum-ex-consequatur-numquam-et-ut-unde-consectetur-est\">consequatur</a></p>\n<h6>Omnis quam quidem animi consequatur cumque non et. Nisi voluptas possimus illo sit saepe occaecati accusantium. Sequi voluptatibus impedit veniam</h6>\n<hr>\n<h5>Quo et rerum qui culpa sequi. Maiores qui facilis id</h5>\n<!--more-->\n<blockquote>Quo suscipit aut perferendis atque neque. Voluptas rem doloremque incidunt ratione aperiam vel aut quas. Atque voluptas quaerat eius harum nemo sint natus. In sed eos in placeat sequi molestiae nihil ut. Quas in qui esse quo a iure eius sint. Ut facilis voluptatibus sit aliquid. Aut praesentium rem reiciendis tempore fuga dolorem corporis enim. Ratione eveniet distinctio ab quo ut ut ab rerum. Ad eius autem expedita nulla sunt.</blockquote>\n<ul><li>Sequi eos id consequuntur itaque</li><li>Illum sint</li><li>Natus et quis ut hic</li><li>Earum aperiam</li><li>Consequuntur quia</li><li>Voluptas natus dolorem incidunt</li></ul>', 'Molestias sed aut animi sunt quia doloremque', '', 'publish', 'open', 'open', '', 'molestias-sed-aut-animi-sunt-quia-doloremque', '', '', '2021-03-06 11:31:15', '2021-03-06 11:31:15', '', 0, 'http://localhost/cli-wp/index.php/2021/03/06/molestias-sed-aut-animi-sunt-quia-doloremque/', 0, 'post', '', 0),
(23, 1, '2021-12-12 12:06:29', '2021-12-12 12:06:29', '', '83138d9b-b2de-3415-869d-3db30f2d734e', '', 'inherit', 'open', 'closed', '', '83138d9b-b2de-3415-869d-3db30f2d734e', '', '', '2021-12-12 12:06:29', '2021-12-12 12:06:29', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/83138d9b-b2de-3415-869d-3db30f2d734e.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 4, '2021-01-17 05:36:37', '2021-01-17 05:36:37', '<h5>Voluptatem quaerat magni sit quo aut</h5>\n<ol><li>Doloribus illum</li><li>Quo ut cum modi porro</li><li>Voluptas ab quia ea</li><li>Qui mollitia molestiae eum</li><li>Placeat rerum dolores quam id</li><li>Aliquam amet dolore nostrum officiis</li></ol>\n<blockquote>Sint exercitationem possimus aperiam ut eos quo. ut ut doloremque. Dolore explicabo consequuntur nisi et. Qui maiores reiciendis eius illo. Qui consequatur aut et Accusamus laboriosam numquam. Dolorum velit dolor totam. magni perferendis necessitatibus. Alias nesciunt illum magnam libero quae vitae. Dolorum doloribus quas qui ea. Recusandae ut porro repellendus et minus rerum. Nam earum quis. Quos recusandae velit. et labore necessitatibus perferendis cum. Voluptate quod distinctio quos natus. <a title=\"Est voluptatem.\" href=\"http://adams.org/hic-consectetur-esse-numquam-dolore\">quas praesentium ducimus</a> velit veritatis. Cum eum similique soluta. Occaecati iure ut. velit officia atque. Aliquid pariatur modi dolorum Ratione et quia quidem earum est. Unde ex molestias id. Est enim velit dolores. Nihil aliquam consequatur fugiat. Natus eveniet ipsa ratione qui aut aut.</blockquote>\n<!--more-->\n<blockquote>Qui error voluptatem laborum porro. Quo qui <a title=\"Animi labore optio voluptatum.\" href=\"http://www.klocko.com/ut-quis-qui-corporis-placeat\">qui voluptatem</a> Reprehenderit molestiae quidem ratione sint ut. porro nulla non maiores animi. Assumenda eligendi facilis odit hic ducimus. sint saepe doloremque. Ut aliquam illum omnis. vitae soluta incidunt <a title=\"Ipsa consequatur repellat aut voluptatem ipsum eum.\" href=\"http://satterfield.com/eius-dolore-similique-magni\">est</a> eligendi. Dolores est et officiis consequuntur quia eum ea. voluptas voluptatum atque eos dicta. Dignissimos quo voluptatibus accusantium. sequi sed commodi labore doloribus Ea <a title=\"Quidem et sed occaecati dolores et reprehenderit facilis.\" href=\"http://www.stehr.com/beatae-a-eos-modi-est-necessitatibus-qui.html\">placeat quisquam molestiae quas.</a> quam deleniti reiciendis. odit voluptatem et. Vitae unde voluptatem <a title=\"Consectetur voluptas quos doloremque.\" href=\"http://howe.biz/\">voluptatem id. Facere</a> pariatur debitis totam atque Quo sapiente rerum saepe.</blockquote>\n<ul><li>Dolore quo laudantium</li><li>Tempora repellendus porro voluptatibus qui</li><li>Id at voluptatem temporibus quae voluptates et nulla</li><li>Quae magnam maiores voluptate ratione officia commodi</li></ul>', 'Est mollitia sequi eum necessitatibus officiis et', 'Ut vel consequatur in expedita cumque laudantium perspiciatis dolore architecto quis qui quisquam aut dolores nemo non voluptate eaque suscipit laborum vel doloribus sapiente repellat et suscipit est nam esse corrupti et.', 'publish', 'open', 'closed', '', 'est-mollitia-sequi-eum-necessitatibus-officiis-et', '', '', '2021-01-17 05:36:37', '2021-01-17 05:36:37', '', 0, 'http://localhost/cli-wp/index.php/2021/01/17/est-mollitia-sequi-eum-necessitatibus-officiis-et/', 0, 'post', '', 0),
(25, 1, '2021-12-12 12:06:30', '2021-12-12 12:06:30', '', 'dcac32d6-3e89-3746-8675-483dc66ced2e', '', 'inherit', 'open', 'closed', '', 'dcac32d6-3e89-3746-8675-483dc66ced2e', '', '', '2021-12-12 12:06:30', '2021-12-12 12:06:30', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/dcac32d6-3e89-3746-8675-483dc66ced2e.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(26, 3, '2021-01-10 08:52:50', '2021-01-10 08:52:50', '<h5>Architecto cumque voluptatem blanditiis temporibus. Amet rerum aut eos consequatur</h5>\n<ol><li>Et laboriosam nam fugiat quo</li><li>Mollitia aut nam magni est non dolorem</li><li>Doloribus neque</li><li>Voluptates velit sit quibusdam adipisci earum</li></ol>\n<h2>Iusto placeat temporibus perferendis quia debitis asperiores</h2>\n<p>Quod quos eveniet pariatur saepe similique. Aut pariatur eum impedit laboriosam ipsam. et commodi est Sint sint nemo <a title=\"Non recusandae.\" href=\"http://hessel.biz/deserunt-nobis-rerum-eligendi-ipsa\">Sit sit quia quo voluptatem</a></p>\n<hr>\n<hr>\n<!--more-->\n<h5>Deserunt voluptatibus est quaerat voluptates nesciunt aut occaecati. Totam aliquam et molestias laboriosam est aut expedita. Quisquam porro quibusdam perspiciatis iusto ullam</h5>\n<p>At et quo eum occaecati nesciunt consequuntur. Non doloribus esse atque porro laudantium. In dolorum velit voluptas qui. Doloribus repellat tempore nemo ut a. Illum qui recusandae dolor. Ipsum eos rerum quas molestias aut provident. Eum sed commodi voluptatibus et. Et ea sed sed. Distinctio eum odio doloribus. Nihil tempore inventore ea dolores delectus omnis non. Ea in iure eveniet soluta voluptas magni. Voluptas ab non similique error consequatur quibusdam quis sed. Facilis nisi accusamus hic qui aut. Sequi mollitia nemo rerum corrupti nobis. Sed autem molestiae omnis distinctio et. Nemo soluta libero et qui et voluptatem. Ipsa voluptatum vero corporis cupiditate architecto qui reprehenderit et. Ut hic illum provident et enim qui culpa. Ut iste assumenda officiis quisquam vel. Molestiae et est rerum dolorem nihil. Ut minima quae dolorem. Quibusdam inventore voluptas et commodi. Voluptates aut numquam error vitae aliquam. Magni amet omnis et amet illum explicabo. Delectus animi autem esse perferendis nihil quia. Temporibus aut asperiores ut beatae illum quaerat velit. Provident laudantium a excepturi libero. Tempore porro porro perferendis eveniet modi ut. Quos voluptas at ipsam repellendus. Nemo fugiat voluptatem quis cum cumque non. Blanditiis suscipit autem exercitationem molestiae minus cumque veniam quo.</p>\n<h2>Voluptatem pariatur aut accusantium. Impedit maxime iste est iusto et voluptas voluptas dolorum</h2>\n<blockquote><a title=\"In quibusdam possimus nobis.\" href=\"http://davis.com/incidunt-ut-nisi-reprehenderit-qui-et-at-provident\">Praesentium est molestiae</a> velit sed delectus. esse rem placeat consequatur omnis. Sit molestiae sint ut. Et quaerat eaque quo rem Ut voluptatibus laborum rerum eius corrupti voluptatibus. Aut aperiam occaecati ratione. Nihil sint cumque et fugiat dolorem. Tempore <a title=\"Quas explicabo.\" href=\"https://www.heathcote.biz/nesciunt-earum-facilis-cupiditate-blanditiis-cupiditate-dicta-sed-suscipit\">adipisci nulla eveniet</a> corrupti. occaecati et rerum officia quidem qui illum. fugit quibusdam ut qui odit facilis. Illo sed vitae vel. Dolor dolorem sed nulla. Illo excepturi odio mollitia architecto. voluptatem nobis cum quaerat in. fuga aliquid nemo dicta Enim ullam inventore eos aut ea. accusantium ullam porro accusamus. Hic dolorem fugiat vel repellendus assumenda. Autem maxime assumenda explicabo repudiandae placeat quia. Expedita vel <a title=\"Eligendi.\" href=\"https://www.welch.info/provident-non-voluptatem-eos-quos-enim-molestias\">alias qui quo natus. Hic accusantium</a> fuga. Ex aut ut nobis. Vitae at facilis culpa in. Voluptatem minima consequatur odio et. ut et rerum impedit repellat. non et et officia commodi eos <a title=\"Dolorum ea exercitationem quibusdam.\" href=\"http://www.ortiz.com/minima-assumenda-dolores-corporis-fugiat\">Laboriosam magni reiciendis</a> itaque non. Qui suscipit eaque quisquam autem. Quisquam ratione laborum <a title=\"Eius aliquam provident enim.\" href=\"https://www.wisoky.biz/quo-ullam-nihil-dolor-non-accusantium\">delectus. Nam</a> ut mollitia quis. Praesentium adipisci dolor Eveniet suscipit ipsum fugit perferendis sit. Commodi pariatur quam ipsum quidem adipisci. Ut magni molestias. Et temporibus vitae fugiat.</blockquote>\n<ul><li>Impedit sit est qui debitis</li><li>Ut ratione omnis consequatur qui</li><li>Error accusamus et</li><li>Repellendus cum facere fugit</li><li>Repellendus sit quia quia</li><li>Asperiores quia</li><li>Rerum nisi</li></ul>\n<h2>Voluptas iste quas ut ut. Fugiat omnis quo hic suscipit error velit eum iste. Aperiam dolorum nihil consequatur et ut nemo</h2>\n<blockquote>Distinctio dolores <a title=\"Soluta blanditiis expedita dicta.\" href=\"http://www.vonrueden.info/\">dicta debitis consequatur</a> Voluptatibus aut a nostrum qui sit. dolores qui odio quidem a Quaerat rem culpa laborum. Sunt et eaque provident voluptatem distinctio quisquam. in temporibus architecto omnis aspernatur. Eligendi excepturi perferendis Libero eum sunt et veniam. Id et adipisci voluptate Perferendis facere distinctio quos. Et quaerat mollitia iure Similique velit sit natus voluptatem. Ut perspiciatis aut quas est officia officia. Sunt voluptatem excepturi dolor tempora</blockquote>\n<h4>Nobis magnam amet enim quaerat</h4>\n<ul><li>Deleniti tempora id et odio</li><li>Qui dolores dolorem quia</li></ul>', 'Eaque dolore necessitatibus voluptatum aut earum molestiae', 'Tempore ex beatae deserunt sunt eos ut ut dolorem voluptatum doloribus consequatur ea eum dolores sit minus non omnis autem qui doloremque iusto hic nobis est voluptatem in amet accusantium ad praesentium et numquam ratione beatae quia non qui saepe sint libero ad.\n\nAssumenda sapiente ut esse ratione est voluptatem rerum natus sint iste ullam voluptatem est suscipit eaque explicabo aut voluptates beatae nobis dolore repellat facilis tempora nesciunt et cum nostrum dolores qui ut eaque quae sunt cum ullam dolorem rerum molestiae dolor sit impedit quis nemo ea omnis quia voluptates non ea voluptate ut hic cum ullam adipisci est doloremque dolorem quasi non voluptas.', 'publish', 'open', 'open', '', 'eaque-dolore-necessitatibus-voluptatum-aut-earum-molestiae', '', '', '2021-01-10 08:52:50', '2021-01-10 08:52:50', '', 0, 'http://localhost/cli-wp/index.php/eaque-dolore-necessitatibus-voluptatum-aut-earum-molestiae/', 0, 'page', '', 0),
(27, 1, '2021-12-12 12:06:32', '2021-12-12 12:06:32', '', 'c700d590-3da0-3952-9006-55158184a370', '', 'inherit', 'open', 'closed', '', 'c700d590-3da0-3952-9006-55158184a370', '', '', '2021-12-12 12:06:32', '2021-12-12 12:06:32', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/c700d590-3da0-3952-9006-55158184a370.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 2, '2021-06-25 11:26:39', '2021-06-25 11:26:39', '<blockquote>Quia dolores culpa sed alias <a title=\"Tempora qui soluta.\" href=\"http://stamm.com/\">ut. Ad ut accusantium explicabo</a> in ut. repellat tempore ab Et adipisci dolorem facere assumenda ut totam. Ullam consequuntur ipsam quo <a title=\"Quod quod in.\" href=\"http://www.ledner.biz/iure-neque-quas-inventore-eius-aut-delectus-accusamus.html\">dolorem</a> Cum quia voluptate consequatur dolorem doloribus. eum voluptas praesentium tempore esse. nisi quo doloribus voluptas dolore. Voluptatum officiis dolor eius quia corporis. <a title=\"Suscipit est accusamus.\" href=\"http://www.marks.net/est-recusandae-in-in-ut\">sint</a> nemo et. quo beatae rerum aut. Odio enim <a title=\"Ut necessitatibus consectetur impedit perferendis.\" href=\"https://nolan.com/natus-distinctio-porro-voluptatem-consequatur.html\">fuga consequuntur dolorum</a> Corporis ea dignissimos in qui dolore quia. Nesciunt voluptate assumenda voluptas aut. Provident at vel excepturi facilis amet <a title=\"Soluta dolor.\" href=\"https://greenfelder.com/qui-dignissimos-repudiandae-deleniti.html\">Molestias quis eligendi cupiditate et</a> est incidunt.</blockquote>\n<h2>Laudantium dignissimos dolore dolorum laboriosam non. Id id dignissimos qui. Modi voluptatem odit dignissimos alias</h2>\n<ol><li>Quibusdam laborum</li><li>Et sint et ut ab eos recusandae dolore</li><li>Veniam nemo quo repudiandae</li></ol>\n<!--more-->\n<blockquote>Et eos et ullam dolor distinctio. <a title=\"Qui placeat saepe voluptatem velit voluptates et magni et sed.\" href=\"http://strosin.com/in-distinctio-recusandae-dolor-aut-qui-aut-voluptatem.html\">assumenda explicabo qui et commodi eos odio. Mollitia consectetur</a> atque deleniti quos sint. voluptatem sed <a title=\"Numquam quis.\" href=\"http://mccullough.com/et-quae-ipsam-nihil-perferendis-incidunt\">sint voluptatem animi. Ut exercitationem consequatur non</a> ratione. Illum <a title=\"Placeat vitae praesentium.\" href=\"https://senger.com/est-non-qui-accusamus-atque.html\">iure aspernatur explicabo</a> Architecto <a title=\"Aliquam non.\" href=\"http://www.boehm.com/aut-quod-sint-voluptatem-voluptatem-asperiores-harum-voluptatem\">eos ut occaecati consectetur error voluptatem</a> Aliquid aliquid modi illum debitis Veniam asperiores et. In ut fugiat accusantium. Cumque qui <a title=\"Et sunt qui tenetur accusantium qui.\" href=\"http://www.graham.com/\">voluptas vel.</a> quod neque enim <a title=\"Fugiat tenetur.\" href=\"https://schmeler.com/atque-consectetur-voluptas-expedita-aut-dignissimos-libero.html\">et. Rerum</a> provident sunt deleniti velit cupiditate. Voluptas id molestiae iure dolor quos.</blockquote>\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/83138d9b-b2de-3415-869d-3db30f2d734e.jpg\">\n<h2>Accusamus rem molestias consequatur. Ea explicabo alias expedita iste repellendus</h2>\n<hr>\n<h1>Et eos et eligendi qui. In aperiam ea quo quo. Et et nam distinctio vero atque id. Laboriosam eos aut ut molestiae</h1>\n<blockquote>Libero et tempore temporibus. Libero in ut <a title=\"Officia est quia.\" href=\"http://www.prohaska.com/consequatur-voluptates-ea-mollitia.html\">impedit sequi. Corporis</a> minus suscipit. ipsam et rem dolor Nobis et soluta sed. Nobis voluptatem vel eum vel Ea qui quisquam esse impedit ut. eius reiciendis aperiam qui quisquam est. Unde nobis omnis nulla quibusdam. Esse veniam et ad. Blanditiis qui adipisci voluptate reprehenderit. voluptas delectus Debitis mollitia non iure quia et. qui itaque quod corporis cumque adipisci. Esse numquam non facere soluta. in tempora sapiente nobis occaecati neque. eaque dolores placeat aut est. Cum temporibus quia sint Voluptate et esse quibusdam sint eos. Sint explicabo est molestiae aut eaque qui. non suscipit asperiores in dolor. Esse est vero consequatur dicta impedit. sed doloribus minima quia et. veritatis molestiae aliquid aut perferendis id. Deserunt rerum officiis occaecati ea quas. Eos esse repellendus aperiam temporibus. Dignissimos velit debitis veritatis. Sed veniam quo illum sit nostrum. Provident aliquam reiciendis et qui qui. Id sapiente blanditiis omnis omnis. culpa architecto architecto ea. Non dolores nam. Et eius labore cupiditate officia. aut sapiente quo a molestiae. Vero nisi dolores ipsam occaecati voluptates dolor. Et vel doloribus totam molestiae. Est rerum corporis vero id. ut pariatur id labore a</blockquote>', 'Ipsum facilis quam aut soluta sint', '', 'publish', 'open', 'open', '', 'ipsum-facilis-quam-aut-soluta-sint', '', '', '2021-06-25 11:26:39', '2021-06-25 11:26:39', '', 0, 'http://localhost/cli-wp/index.php/2021/06/25/ipsum-facilis-quam-aut-soluta-sint/', 0, 'post', '', 0),
(29, 1, '2021-12-12 12:06:34', '2021-12-12 12:06:34', '', '4780029a-2975-360e-8e3f-ea54f97e55e3', '', 'inherit', 'open', 'closed', '', '4780029a-2975-360e-8e3f-ea54f97e55e3', '', '', '2021-12-12 12:06:34', '2021-12-12 12:06:34', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/4780029a-2975-360e-8e3f-ea54f97e55e3.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2021-12-12 12:06:35', '2021-12-12 12:06:35', '', 'daeb2945-657a-3c3a-9c01-02e3b6ecbd87', '', 'inherit', 'open', 'closed', '', 'daeb2945-657a-3c3a-9c01-02e3b6ecbd87', '', '', '2021-12-12 12:06:35', '2021-12-12 12:06:35', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/daeb2945-657a-3c3a-9c01-02e3b6ecbd87.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 4, '2021-08-27 19:45:10', '2021-08-27 19:45:10', '<ul><li>Vel fugiat iusto ut sed eos dolorem</li><li>Vero eveniet sit voluptatibus enim</li><li>Eos sed repellat eos</li><li>Sint molestiae est minima vitae illum</li><li>Ipsum laborum officia</li><li>Vitae sed sed distinctio</li></ul>\n<img class=\"alignleft\" alt=\"Consequatur optio at cum quisquam in\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/daeb2945-657a-3c3a-9c01-02e3b6ecbd87.jpg\">\n<!--more-->\n<p><a title=\"Dolor quis.\" href=\"http://www.berge.com/ipsum-dolore-sed-maiores-commodi-nisi-in-impedit-ratione\"><a title=\"Ducimus sed.\" href=\"https://conn.com/earum-repellendus-rem-tempore-saepe.html\"><a title=\"Quaerat at et consequatur nostrum.\" href=\"http://www.ankunding.com/et-rerum-corporis-tenetur-quia-ut-et-recusandae\"><a title=\"Ratione dolor quae minus.\" href=\"http://okon.com/deleniti-eos-quam-a-qui-quibusdam.html\"><a title=\"Ratione nihil possimus harum alias aut nemo rerum harum et.\" href=\"http://parker.com/commodi-quasi-iusto-sed-ipsam-dolorem-vel.html\"><a title=\"Ea qui cumque.\" href=\"http://koepp.com/ducimus-et-ratione-et-magni-quisquam.html\"><a title=\"Eum optio voluptas quaerat.\" href=\"http://jacobson.info/voluptatem-est-soluta-dignissimos-mollitia\"><a title=\"Eum sunt rem officia ipsum eligendi natus est commodi.\" href=\"http://www.orn.com/possimus-aspernatur-sed-autem-laboriosam-dicta\">Possimus omnis</a></a></a></a></a></a></a></a> qui minima. illo consequuntur eum vitae qui culpa dolorum possimus. praesentium quasi debitis est corporis. maiores natus earum incidunt qui velit.</p>\n<hr>\n<ul><li>Et saepe vel non laboriosam in voluptas enim</li><li>Et enim nostrum eaque voluptatum</li><li>Non ut eligendi cupiditate consectetur vitae</li><li>Sunt distinctio impedit quia non</li><li>Sed libero quia minima necessitatibus</li><li>Adipisci ipsum consequatur et officiis</li></ul>', 'Voluptatem quaerat officia sunt excepturi eveniet', '', 'publish', 'open', 'closed', '', 'voluptatem-quaerat-officia-sunt-excepturi-eveniet', '', '', '2021-08-27 19:45:10', '2021-08-27 19:45:10', '', 0, 'http://localhost/cli-wp/index.php/voluptatem-quaerat-officia-sunt-excepturi-eveniet/', 0, 'page', '', 0),
(32, 1, '2021-12-12 12:06:36', '2021-12-12 12:06:36', '', '576c73df-0641-3cb4-bc4c-66bb7a786f31', '', 'inherit', 'open', 'closed', '', '576c73df-0641-3cb4-bc4c-66bb7a786f31', '', '', '2021-12-12 12:06:36', '2021-12-12 12:06:36', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/576c73df-0641-3cb4-bc4c-66bb7a786f31.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2021-12-12 12:06:38', '2021-12-12 12:06:38', '', '2bca7538-d381-3ede-b49b-1df35cc6a09c', '', 'inherit', 'open', 'closed', '', '2bca7538-d381-3ede-b49b-1df35cc6a09c', '', '', '2021-12-12 12:06:38', '2021-12-12 12:06:38', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/2bca7538-d381-3ede-b49b-1df35cc6a09c.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2021-12-12 12:06:39', '2021-12-12 12:06:39', '', '853e36d3-dd95-3e84-ad16-cb377f5e3423', '', 'inherit', 'open', 'closed', '', '853e36d3-dd95-3e84-ad16-cb377f5e3423', '', '', '2021-12-12 12:06:39', '2021-12-12 12:06:39', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/853e36d3-dd95-3e84-ad16-cb377f5e3423.png', 0, 'attachment', 'image/png', 0),
(35, 2, '2021-01-06 07:39:21', '2021-01-06 07:39:21', '<h6>Repellat facilis placeat et. Quisquam dolorem soluta corporis molestiae soluta nam provident. Perspiciatis voluptates aut ut. Et et debitis in odio illo quo</h6>\n<p><a title=\"Quis blanditiis id.\" href=\"http://bailey.info/\">Vel veniam reprehenderit enim eum</a> Ut error adipisci molestias. Eum fuga excepturi ut fuga dignissimos temporibus. commodi nihil velit doloremque velit fugit quia Occaecati at est voluptate accusantium <a title=\"Quaerat officiis.\" href=\"http://gusikowski.com/\">Nihil quae provident et</a> vero sit. Rem possimus <a title=\"Voluptatum sunt deleniti quos expedita.\" href=\"http://kuhlman.com/suscipit-a-provident-iste-quibusdam\">sit id. Pariatur eveniet</a> alias accusantium. Quam magnam porro unde sunt aut. Qui soluta tempore esse ad et maxime. Qui earum cupiditate <a title=\"Itaque corporis asperiores maiores laboriosam.\" href=\"http://www.funk.com/\">nam doloremque consectetur quis. Quas provident quo assumenda</a> ducimus quasi.</p>\n<h1>Minima rerum aliquid tenetur est sunt iste. Qui est quo rem dicta. Qui assumenda sed laudantium magnam. Laborum eveniet placeat sunt error molestiae magni</h1>\n<p>Sint <a title=\"Recusandae aliquam.\" href=\"https://www.kunze.com/est-quo-maxime-enim-quo-voluptas\">quibusdam vitae. Veritatis</a> consequuntur harum accusantium Rerum animi vel <a title=\"Commodi sed dolore reiciendis.\" href=\"http://hansen.org/illo-consequuntur-incidunt-eos-sapiente-laborum.html\"><a title=\"Reprehenderit dolore.\" href=\"http://www.ruecker.com/\">Ut</a></a> ut nostrum Quam blanditiis fugiat <a title=\"Consequatur sit et saepe facilis est et.\" href=\"http://klein.com/sed-architecto-error-beatae-dolor-omnis-optio-et\">excepturi voluptas</a> <a title=\"Dolorem quaerat.\" href=\"http://mueller.com/a-atque-quia-sequi-dolorem-et\">ad. Facilis voluptatem</a> cumque velit sed libero aperiam. Nostrum quia sed rerum <a title=\"Similique neque.\" href=\"http://www.hagenes.biz/eum-fugiat-quod-dolores-debitis-magni.html\">quisquam explicabo.</a> eligendi <a title=\"Quia est.\" href=\"http://www.streich.com/deleniti-ut-qui-velit-assumenda.html\">aut assumenda adipisci</a> sit. Omnis facere quo. Velit non atque atque.</p>\n<!--more-->\n<ol><li>Eum sequi enim dignissimos</li><li>Eos tenetur est expedita in</li><li>Et fugiat</li><li>Id at velit nam</li></ol>\n<h4>Sit exercitationem nemo non voluptatem mollitia quia sed. Quia eum odio aperiam ipsam aliquam. Numquam suscipit commodi sunt delectus</h4>\n<img class=\"alignright\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/2bca7538-d381-3ede-b49b-1df35cc6a09c.jpg\">\n<img alt=\"Et unde autem perferendis aut illum ex minus\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/853e36d3-dd95-3e84-ad16-cb377f5e3423.png\">\n<h3>Reiciendis eaque ex aut voluptatem. Quas et ut quidem ipsa nihil. Ullam qui veritatis eos ratione soluta. Veritatis neque nihil occaecati deserunt facere voluptatem</h3>\n<hr>\n<hr>\n<blockquote>Maxime veniam id. quae accusamus architecto suscipit libero. <a title=\"Recusandae labore quo fuga.\" href=\"http://hermann.info/\">iusto suscipit odio nemo</a> Corporis maiores architecto doloremque maiores. Dolore tenetur aut Beatae impedit alias aut natus. nobis reprehenderit in. aut minus. Ea perferendis voluptates dolores. quis ea explicabo maxime eaque id. Quasi corrupti voluptas omnis placeat vero. sit doloribus maxime quam ut voluptates. Suscipit atque ut qui. labore omnis libero. Quas veritatis accusantium. Qui perferendis <a title=\"Accusamus numquam mollitia omnis necessitatibus labore eum architecto.\" href=\"http://www.nicolas.com/voluptatem-sed-voluptate-est-dignissimos-nisi-perspiciatis.html\">praesentium enim</a> Assumenda tenetur ad perferendis quisquam. Velit dolorem sapiente nihil numquam soluta. Molestiae totam est et. A et atque quam a harum modi. quaerat porro voluptatem Dolor nam aut inventore perspiciatis perferendis. Doloremque praesentium odit blanditiis dolorum laborum Fuga quaerat quia ex. eos consequatur qui dolor quibusdam.</blockquote>', 'Recusandae est consequuntur eveniet maiores minima tempora', 'Rerum est nisi nihil consectetur repudiandae aut distinctio est quia ut ea vero reiciendis optio perferendis soluta ut ipsa alias vero aut nesciunt rem voluptates et totam doloribus qui unde neque eos molestiae sunt in aut occaecati et molestias dicta voluptas accusamus laudantium sed porro porro rerum autem in possimus dolore officia laudantium vero non quia quia.\n\nItaque asperiores doloribus dolor deserunt possimus porro blanditiis iste modi omnis perferendis commodi ratione in nobis voluptatem ipsum a dignissimos odit cupiditate doloribus quasi quis fugit optio praesentium ducimus dolorem quibusdam sequi qui molestiae corporis hic doloribus velit voluptas ex corrupti delectus autem.', 'publish', 'open', 'open', '', 'recusandae-est-consequuntur-eveniet-maiores-minima-tempora', '', '', '2021-01-06 07:39:21', '2021-01-06 07:39:21', '', 0, 'http://localhost/cli-wp/index.php/2021/01/06/recusandae-est-consequuntur-eveniet-maiores-minima-tempora/', 0, 'post', '', 0),
(36, 1, '2021-12-12 12:06:41', '2021-12-12 12:06:41', '', '41a0e958-176c-3f4d-9681-7d91df4e2392', '', 'inherit', 'open', 'closed', '', '41a0e958-176c-3f4d-9681-7d91df4e2392', '', '', '2021-12-12 12:06:41', '2021-12-12 12:06:41', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/41a0e958-176c-3f4d-9681-7d91df4e2392.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2021-12-19 12:31:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2021-12-19 12:31:32', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2021-12-19 12:31:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2021-12-19 12:31:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2021-12-19 12:31:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2021-12-19 12:31:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2021-12-19 12:31:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2021-12-19 12:31:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2021-12-19 12:31:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2021-12-19 12:31:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2021-12-19 12:38:23', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2021-12-19 12:38:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2021-12-19 12:38:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 12:38:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2021-12-19 12:41:29', '2021-12-19 12:39:53', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-12-19 12:41:29', '2021-12-19 12:41:29', '', 0, 'http://localhost/cli-wp/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2021-12-19 12:41:29', '2021-12-19 12:39:53', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-12-19 12:41:29', '2021-12-19 12:41:29', '', 0, 'http://localhost/cli-wp/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2021-12-19 12:41:29', '2021-12-19 12:39:53', 'Eius voluptatibus assumenda aliquid necessitatibus quia modi molestias praesentium voluptatem tempore ea non quam ullam voluptates', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-12-19 12:41:29', '2021-12-19 12:41:29', '', 0, 'http://localhost/cli-wp/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2021-12-19 12:41:29', '2021-12-19 12:39:53', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-12-19 12:41:29', '2021-12-19 12:41:29', '', 0, 'http://localhost/cli-wp/?p=68', 4, 'nav_menu_item', '', 0),
(69, 1, '2021-12-19 12:41:29', '2021-12-19 12:39:53', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-12-19 12:41:29', '2021-12-19 12:41:29', '', 0, 'http://localhost/cli-wp/?p=69', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Facilis facilis facilis autem', 'facilis-facilis-facilis-autem', 0),
(3, 'Animi aperiam sequi', 'animi-aperiam-sequi', 0),
(4, 'Sit vero amet atque voluptas', 'sit-vero-amet-atque-voluptas', 0),
(5, 'Quod iure laborum delectus voluptate', 'quod-iure-laborum-delectus-voluptate', 0),
(6, 'Eos totam nemo quidem animi eligendi quod cupiditate', 'eos-totam-nemo-quidem-animi-eligendi-quod-cupiditate', 0),
(7, 'Et quidem sit velit et possimus fugit et dolorem', 'et-quidem-sit-velit-et-possimus-fugit-et-dolorem', 0),
(8, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(7, 3, 0),
(7, 5, 0),
(7, 7, 0),
(10, 1, 0),
(10, 2, 0),
(10, 5, 0),
(10, 7, 0),
(13, 3, 0),
(13, 4, 0),
(13, 6, 0),
(13, 7, 0),
(20, 2, 0),
(20, 3, 0),
(20, 5, 0),
(20, 7, 0),
(22, 4, 0),
(24, 1, 0),
(24, 4, 0),
(26, 1, 0),
(26, 2, 0),
(26, 3, 0),
(26, 6, 0),
(28, 3, 0),
(28, 4, 0),
(28, 7, 0),
(31, 1, 0),
(35, 3, 0),
(35, 4, 0),
(35, 5, 0),
(65, 8, 0),
(66, 8, 0),
(67, 8, 0),
(68, 8, 0),
(69, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', 'Vitae quod autem neque enim quia est ea in architecto rem maiores deleniti optio commodi id dolores quidem ducimus sapiente officiis dolorem', 0, 0),
(3, 3, 'category', 'Magnam dolorem laudantium nihil ex quasi sit earum sunt corrupti et eveniet reiciendis tempore consequatur aut ut deserunt voluptatem ex quaerat qui harum reprehenderit in aut dignissimos cupiditate sit ipsa architecto temporibus error qui repellendus perferendis maxime rem aut et', 0, 2),
(4, 4, 'category', 'Eius voluptatibus assumenda aliquid necessitatibus quia modi molestias praesentium voluptatem tempore ea non quam ullam voluptates', 0, 4),
(5, 5, 'category', 'Alias error nam rem qui ut est debitis a quia id quisquam quasi assumenda a nulla odio non omnis est praesentium facere harum deleniti velit non iusto maiores officiis repellendus rem iusto maxime a suscipit fuga', 0, 1),
(6, 6, 'category', 'Corporis autem velit dolorem dolores fugit dolore aut soluta beatae non voluptas consequuntur nihil dicta distinctio asperiores', 0, 0),
(7, 7, 'category', 'Sit eum quo et aut neque adipisci dolorem aspernatur deleniti placeat reprehenderit et vero molestiae culpa tempora in et enim hic ut ipsam dolorem ullam qui sint repudiandae aliquam voluptatibus beatae aut non repellat ipsum accusamus est nisi', 0, 1),
(8, 8, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"50912d3ffc0f254fc60eaea0dc47978832ba1a64b8b52c04e330610d5b13ccb7\";a:4:{s:10:\"expiration\";i:1641121707;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1639912107;}s:64:\"99bc86ca4777f45dc67a3ca038d0a4fb191e5818daca5e2b5304e533ff4bc450\";a:4:{s:10:\"expiration\";i:1640688118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640515318;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '70'),
(18, 2, 'nickname', 'pearline.mcdermott'),
(19, 2, 'first_name', 'Brigitte'),
(20, 2, 'last_name', 'Stroman'),
(21, 2, 'description', 'Ducimus molestiae quibusdam enim architecto maxime. Aut reprehenderit est non similique quis. Dolores animi non tenetur aut cumque. Corporis sequi placeat quis tenetur accusantium sit hic.\r\n\r\nQuia repellendus sunt laudantium consectetur laboriosam ipsam sunt. Eligendi ab iste maxime et ea suscipit vel vero. Repellat velit mollitia ipsum voluptatum saepe quaerat itaque.\r\n\r\nUt temporibus est consequatur id molestiae voluptas. Illum eos in est ex modi consequuntur. Qui est dolores consequatur dolores voluptates. Vitae dolorem et rerum nostrum.\r\n\r\nIusto repellendus natus aspernatur voluptatem non. Qui dolorem dolorum possimus possimus. Est veniam ut delectus omnis aut nisi tempore omnis. Ex facere reiciendis totam dolore quis. Vel repellat possimus accusamus non voluptatem facere praesentium asperiores.\r\n\r\nDeleniti quos animi animi qui consectetur beatae. Aut dolore adipisci tenetur accusamus. Beatae praesentium perferendis ea beatae quae.'),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(30, 2, 'wp_user_level', '2'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 2, 'fakerpress_flag', '1'),
(33, 3, 'nickname', 'windler.shaun'),
(34, 3, 'first_name', 'Vivian'),
(35, 3, 'last_name', 'Hilpert'),
(36, 3, 'description', 'Nesciunt autem esse adipisci rem voluptatem. Rem dolores in quis perferendis illo. Minima qui et earum autem quibusdam corporis corporis. Perspiciatis repellat esse praesentium voluptatum sequi aut voluptates ut.'),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(45, 3, 'wp_user_level', '2'),
(46, 3, 'dismissed_wp_pointers', ''),
(47, 3, 'fakerpress_flag', '1'),
(48, 4, 'nickname', 'kshlerin.loma'),
(49, 4, 'first_name', 'Augusta'),
(50, 4, 'last_name', 'Barrows'),
(51, 4, 'description', 'Ut saepe velit enim sapiente eligendi atque impedit. Quod eveniet aut est commodi et officia nesciunt. Est quis sit rerum odio qui hic.\r\n\r\nAliquam molestiae autem vel ut animi officiis et. Officia tempore rerum qui ut et aut aut. Ipsam doloribus laboriosam est molestias quia sunt. Doloribus eos qui neque labore velit quod exercitationem.'),
(52, 4, 'rich_editing', 'true'),
(53, 4, 'syntax_highlighting', 'true'),
(54, 4, 'comment_shortcuts', 'false'),
(55, 4, 'admin_color', 'fresh'),
(56, 4, 'use_ssl', '0'),
(57, 4, 'show_admin_bar_front', 'true'),
(58, 4, 'locale', ''),
(59, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(60, 4, 'wp_user_level', '2'),
(61, 4, 'dismissed_wp_pointers', ''),
(62, 4, 'fakerpress_flag', '1'),
(63, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(64, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(65, 1, 'nav_menu_recently_edited', '8');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BnqhOLiVFc1h1YjNk.AySY5dQVb9EM.', 'admin', 'marina.iva.noffa@gmail.com', 'http://localhost/cli-wp', '2021-12-12 11:47:12', '', 0, 'admin'),
(2, 'ffisher', '$P$BQLldjfjdwtUDDzdY4YVxbH0mHxQdO/', 'armstrong-nils', 'oschoen@example.net', 'http://medhurst.com/enim-deleniti-nihil-sit-rerum-consectetur-atque.html', '2021-12-11 15:34:28', '', 0, 'Harvey'),
(3, 'vandervort.raphaelle', '$P$BpR1XQnA/OVawJpZFB35y/p0TO0yta.', 'nstokes', 'odietrich@example.org', 'http://nikolaus.net/sapiente-eum-omnis-quo-ullam-est-quaerat.html', '2021-12-12 03:16:17', '', 0, 'Tevin'),
(4, 'mckenzie.gail', '$P$BKDZr5uPtYJuE.jozqVFbSRihYlqm80', 'denesik-ova', 'shanny.batz@example.net', 'https://www.batz.com/ut-maiores-ex-et-quibusdam-quia-est', '2021-12-11 06:03:29', '', 0, 'Antonietta');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
