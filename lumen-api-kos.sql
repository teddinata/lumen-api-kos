-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `kos`;
CREATE TABLE `kos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kamar_tersedia` int(11) DEFAULT NULL,
  `jumlah_kamar` int(11) DEFAULT NULL,
  `wifi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `kos` (`id`, `name`, `city`, `country`, `rating`, `price`, `photo`, `image`, `address`, `phone`, `map_url`, `kamar_tersedia`, `jumlah_kamar`, `wifi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-06 05:48:54',	'2021-03-06 05:48:54'),
(2,	'Griya Kos 1',	'Cilacap',	'Indonesia',	5,	'500.000',	'https://griyakoscilacap.com/storage/assets/room_gallery/hgO4Py7HEU50MMnX2MDsL93SVLjZbw41gbtW8KLO.jpeg',	'[\"https:\\/\\/griyakoscilacap.com\\/storage\\/assets\\/room_gallery\\/hgO4Py7HEU50MMnX2MDsL93SVLjZbw41gbtW8KLO.jpeg\",\"https:\\/\\/griyakoscilacap.com\\/storage\\/assets\\/room_gallery\\/6gACQ4vEgAWwRRdghxydIptP9NPO4Tfsb9KKHinf.jpeg\",\"https:\\/\\/griyakoscilacap.com\\/storage\\/assets\\/room_gallery\\/zUmNgTWBT2RvFIXdqKD2E94PpUXH1IW1gq0IGgFK.jpeg\"]',	'Jalan Bawean 119',	'wa.me/+6285155095022',	'https://goo.gl/maps/RGenABZdLzS3VKGw8',	2,	12,	'Yes',	NULL,	'2021-03-06 05:49:20',	'2021-03-06 05:49:20');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4,	'2021_02_26_081352_create_kos_table',	1),
(5,	'2021_03_01_144244_create_galleries_table',	1);

-- 2021-03-06 05:53:36
