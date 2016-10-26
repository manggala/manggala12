-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2016 at 02:12 PM
-- Server version: 10.0.27-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gemarseh_medokanAYU`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_achievment`
--

CREATE TABLE IF NOT EXISTS `ms_achievment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ms_achievment`
--

INSERT INTO `ms_achievment` (`id`, `name`) VALUES
(1, '*1st Winner 2015 February – contest '),
(2, '*2nd Winner 2015 February – contest '),
(3, 'Group Unit Machine Sales ');

-- --------------------------------------------------------

--
-- Table structure for table `ms_categories`
--

CREATE TABLE IF NOT EXISTS `ms_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `ms_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ms_categories`
--

INSERT INTO `ms_categories` (`id`, `title`, `parent_id`, `description`, `ms_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Berita', 0, 'kategori artikel berita/news gemarsehati', 1, '2015-04-14 07:38:21', '2016-02-16 21:20:53'),
(2, 'Event', 0, 'kategori artikel yang bersifat informasi detail tentang event gemar sehati\r\n', 1, '2015-04-14 07:38:21', '2016-02-16 21:21:18'),
(3, 'Company', 0, 'kategori artikel yg merupakan artikel tentang komunitas, seperti about us, visi, misi dll', 0, '2015-04-18 15:20:13', '2016-02-16 21:22:05'),
(5, 'Download', 0, 'Berisi post tentang link download aplikasi', 0, '2016-01-19 02:54:43', '2016-01-19 02:54:43'),
(7, 'Testimoni', 0, 'Testimoni pengguna', 0, '2016-01-21 07:35:35', '2016-01-21 07:35:35'),
(8, 'Kelebihan', 0, '4 kelebihan dari gemarsehati/kangen water', 0, '2016-01-21 20:32:32', '2016-01-21 20:48:48'),
(9, 'Sekilas', 0, 'Sekilas ttg gemarsehati', 0, '2016-01-21 20:48:33', '2016-01-21 20:48:33'),
(12, 'Testimoni Bisnis', 0, 'testimoni mitra dari sisi manfaat bisnis', 0, '2016-02-01 06:22:47', '2016-02-01 06:22:47'),
(13, 'Testimoni Kesehatan', 0, 'testimoni mitra dari sisi manfaat kesehatan', 0, '2016-02-01 06:23:21', '2016-02-01 06:23:21'),
(14, 'Edukasi', 0, 'kategori edukasi kangenwater', 0, '2016-02-01 20:21:25', '2016-02-01 20:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `ms_cities`
--

CREATE TABLE IF NOT EXISTS `ms_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ms_province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ms_province_id` (`ms_province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=502 ;

--
-- Dumping data for table `ms_cities`
--

INSERT INTO `ms_cities` (`id`, `code`, `name`, `ms_province_id`) VALUES
(1, NULL, 'Aceh Barat', 21),
(2, NULL, 'Aceh Barat Daya', 21),
(3, NULL, 'Aceh Besar', 21),
(4, NULL, 'Aceh Jaya', 21),
(5, NULL, 'Aceh Selatan', 21),
(6, NULL, 'Aceh Singkil', 21),
(7, NULL, 'Aceh Tamiang', 21),
(8, NULL, 'Aceh Tengah', 21),
(9, NULL, 'Aceh Tenggara', 21),
(10, NULL, 'Aceh Timur', 21),
(11, NULL, 'Aceh Utara', 21),
(12, NULL, 'Agam', 32),
(13, NULL, 'Alor', 23),
(14, NULL, 'Ambon', 19),
(15, NULL, 'Asahan', 34),
(16, NULL, 'Asmat', 24),
(17, NULL, 'Badung', 1),
(18, NULL, 'Balangan', 13),
(19, NULL, 'Balikpapan', 15),
(20, NULL, 'Banda Aceh', 21),
(21, NULL, 'Bandar Lampung', 18),
(22, NULL, 'Bandung', 9),
(24, NULL, 'Bandung Barat', 9),
(25, NULL, 'Banggai', 29),
(26, NULL, 'Banggai Kepulauan', 29),
(27, NULL, 'Bangka', 2),
(28, NULL, 'Bangka Barat', 2),
(29, NULL, 'Bangka Selatan', 2),
(30, NULL, 'Bangka Tengah', 2),
(31, NULL, 'Bangkalan', 11),
(32, NULL, 'Bangli', 1),
(33, NULL, 'Banjar', 13),
(35, NULL, 'Banjarbaru', 13),
(36, NULL, 'Banjarmasin', 13),
(37, NULL, 'Banjarnegara', 10),
(38, NULL, 'Bantaeng', 28),
(39, NULL, 'Bantul', 5),
(40, NULL, 'Banyuasin', 33),
(41, NULL, 'Banyumas', 10),
(42, NULL, 'Banyuwangi', 11),
(43, NULL, 'Barito Kuala', 13),
(44, NULL, 'Barito Selatan', 14),
(45, NULL, 'Barito Timur', 14),
(46, NULL, 'Barito Utara', 14),
(47, NULL, 'Barru', 28),
(48, NULL, 'Batam', 17),
(49, NULL, 'Batang', 10),
(50, NULL, 'Batang Hari', 8),
(51, NULL, 'Batu', 11),
(52, NULL, 'Batu Bara', 34),
(53, NULL, 'Bau-Bau', 30),
(54, NULL, 'Bekasi', 9),
(56, NULL, 'Belitung', 2),
(57, NULL, 'Belitung Timur', 2),
(58, NULL, 'Belu', 23),
(59, NULL, 'Bener Meriah', 21),
(60, NULL, 'Bengkalis', 26),
(61, NULL, 'Bengkayang', 12),
(62, NULL, 'Bengkulu', 4),
(63, NULL, 'Bengkulu Selatan', 4),
(64, NULL, 'Bengkulu Tengah', 4),
(65, NULL, 'Bengkulu Utara', 4),
(66, NULL, 'Berau', 15),
(67, NULL, 'Biak Numfor', 24),
(68, NULL, 'Bima', 22),
(70, NULL, 'Binjai', 34),
(71, NULL, 'Bintan', 17),
(72, NULL, 'Bireuen', 21),
(73, NULL, 'Bitung', 31),
(74, NULL, 'Blitar', 11),
(76, NULL, 'Blora', 10),
(77, NULL, 'Boalemo', 7),
(79, NULL, 'Bogor', 9),
(80, NULL, 'Bojonegoro', 11),
(81, NULL, 'Bolaang Mongondow (Bolmong)', 31),
(82, NULL, 'Bolaang Mongondow Selatan', 31),
(83, NULL, 'Bolaang Mongondow Timur', 31),
(84, NULL, 'Bolaang Mongondow Utara', 31),
(85, NULL, 'Bombana', 30),
(86, NULL, 'Bondowoso', 11),
(87, NULL, 'Bone', 28),
(88, NULL, 'Bone Bolango', 7),
(89, NULL, 'Bontang', 15),
(90, NULL, 'Boven Digoel', 24),
(91, NULL, 'Boyolali', 10),
(92, NULL, 'Brebes', 10),
(93, NULL, 'Bukittinggi', 32),
(94, NULL, 'Buleleng', 1),
(95, NULL, 'Bulukumba', 28),
(96, NULL, 'Bulungan (Bulongan)', 16),
(97, NULL, 'Bungo', 8),
(98, NULL, 'Buol', 29),
(99, NULL, 'Buru', 19),
(100, NULL, 'Buru Selatan', 19),
(101, NULL, 'Buton', 30),
(102, NULL, 'Buton Utara', 30),
(103, NULL, 'Ciamis', 9),
(104, NULL, 'Cianjur', 9),
(105, NULL, 'Cilacap', 10),
(106, NULL, 'Cilegon', 3),
(107, NULL, 'Cimahi', 9),
(108, NULL, 'Cirebon', 9),
(110, NULL, 'Dairi', 34),
(111, NULL, 'Deiyai (Deliyai)', 24),
(112, NULL, 'Deli Serdang', 34),
(113, NULL, 'Demak', 10),
(114, NULL, 'Denpasar', 1),
(115, NULL, 'Depok', 9),
(116, NULL, 'Dharmasraya', 32),
(117, NULL, 'Dogiyai', 24),
(118, NULL, 'Dompu', 22),
(119, NULL, 'Donggala', 29),
(120, NULL, 'Dumai', 26),
(121, NULL, 'Empat Lawang', 33),
(122, NULL, 'Ende', 23),
(123, NULL, 'Enrekang', 28),
(124, NULL, 'Fakfak', 25),
(125, NULL, 'Flores Timur', 23),
(126, NULL, 'Garut', 9),
(127, NULL, 'Gayo Lues', 21),
(128, NULL, 'Gianyar', 1),
(129, NULL, 'Gorontalo', 7),
(131, NULL, 'Gorontalo Utara', 7),
(132, NULL, 'Gowa', 28),
(133, NULL, 'Gresik', 11),
(134, NULL, 'Grobogan', 10),
(135, NULL, 'Gunung Kidul', 5),
(136, NULL, 'Gunung Mas', 14),
(137, NULL, 'Gunungsitoli', 34),
(138, NULL, 'Halmahera Barat', 20),
(139, NULL, 'Halmahera Selatan', 20),
(140, NULL, 'Halmahera Tengah', 20),
(141, NULL, 'Halmahera Timur', 20),
(142, NULL, 'Halmahera Utara', 20),
(143, NULL, 'Hulu Sungai Selatan', 13),
(144, NULL, 'Hulu Sungai Tengah', 13),
(145, NULL, 'Hulu Sungai Utara', 13),
(146, NULL, 'Humbang Hasundutan', 34),
(147, NULL, 'Indragiri Hilir', 26),
(148, NULL, 'Indragiri Hulu', 26),
(149, NULL, 'Indramayu', 9),
(150, NULL, 'Intan Jaya', 24),
(151, NULL, 'Jakarta Barat', 6),
(152, NULL, 'Jakarta Pusat', 6),
(153, NULL, 'Jakarta Selatan', 6),
(154, NULL, 'Jakarta Timur', 6),
(155, NULL, 'Jakarta Utara', 6),
(156, NULL, 'Jambi', 8),
(157, NULL, 'Jayapura', 24),
(159, NULL, 'Jayawijaya', 24),
(160, NULL, 'Jember', 11),
(161, NULL, 'Jembrana', 1),
(162, NULL, 'Jeneponto', 28),
(163, NULL, 'Jepara', 10),
(164, NULL, 'Jombang', 11),
(165, NULL, 'Kaimana', 25),
(166, NULL, 'Kampar', 26),
(167, NULL, 'Kapuas', 14),
(168, NULL, 'Kapuas Hulu', 12),
(169, NULL, 'Karanganyar', 10),
(170, NULL, 'Karangasem', 1),
(171, NULL, 'Karawang', 9),
(172, NULL, 'Karimun', 17),
(173, NULL, 'Karo', 34),
(174, NULL, 'Katingan', 14),
(175, NULL, 'Kaur', 4),
(176, NULL, 'Kayong Utara', 12),
(177, NULL, 'Kebumen', 10),
(178, NULL, 'Kediri', 11),
(180, NULL, 'Keerom', 24),
(181, NULL, 'Kendal', 10),
(182, NULL, 'Kendari', 30),
(183, NULL, 'Kepahiang', 4),
(184, NULL, 'Kepulauan Anambas', 17),
(185, NULL, 'Kepulauan Aru', 19),
(186, NULL, 'Kepulauan Mentawai', 32),
(187, NULL, 'Kepulauan Meranti', 26),
(188, NULL, 'Kepulauan Sangihe', 31),
(189, NULL, 'Kepulauan Seribu', 6),
(190, NULL, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 31),
(191, NULL, 'Kepulauan Sula', 20),
(192, NULL, 'Kepulauan Talaud', 31),
(193, NULL, 'Kepulauan Yapen (Yapen Waropen)', 24),
(194, NULL, 'Kerinci', 8),
(195, NULL, 'Ketapang', 12),
(196, NULL, 'Klaten', 10),
(197, NULL, 'Klungkung', 1),
(198, NULL, 'Kolaka', 30),
(199, NULL, 'Kolaka Utara', 30),
(200, NULL, 'Konawe', 30),
(201, NULL, 'Konawe Selatan', 30),
(202, NULL, 'Konawe Utara', 30),
(203, NULL, 'Kotabaru', 13),
(204, NULL, 'Kotamobagu', 31),
(205, NULL, 'Kotawaringin Barat', 14),
(206, NULL, 'Kotawaringin Timur', 14),
(207, NULL, 'Kuantan Singingi', 26),
(208, NULL, 'Kubu Raya', 12),
(209, NULL, 'Kudus', 10),
(210, NULL, 'Kulon Progo', 5),
(211, NULL, 'Kuningan', 9),
(212, NULL, 'Kupang', 23),
(214, NULL, 'Kutai Barat', 15),
(215, NULL, 'Kutai Kartanegara', 15),
(216, NULL, 'Kutai Timur', 15),
(217, NULL, 'Labuhan Batu', 34),
(218, NULL, 'Labuhan Batu Selatan', 34),
(219, NULL, 'Labuhan Batu Utara', 34),
(220, NULL, 'Lahat', 33),
(221, NULL, 'Lamandau', 14),
(222, NULL, 'Lamongan', 11),
(223, NULL, 'Lampung Barat', 18),
(224, NULL, 'Lampung Selatan', 18),
(225, NULL, 'Lampung Tengah', 18),
(226, NULL, 'Lampung Timur', 18),
(227, NULL, 'Lampung Utara', 18),
(228, NULL, 'Landak', 12),
(229, NULL, 'Langkat', 34),
(230, NULL, 'Langsa', 21),
(231, NULL, 'Lanny Jaya', 24),
(232, NULL, 'Lebak', 3),
(233, NULL, 'Lebong', 4),
(234, NULL, 'Lembata', 23),
(235, NULL, 'Lhokseumawe', 21),
(236, NULL, 'Lima Puluh Koto/Kota', 32),
(237, NULL, 'Lingga', 17),
(238, NULL, 'Lombok Barat', 22),
(239, NULL, 'Lombok Tengah', 22),
(240, NULL, 'Lombok Timur', 22),
(241, NULL, 'Lombok Utara', 22),
(242, NULL, 'Lubuk Linggau', 33),
(243, NULL, 'Lumajang', 11),
(244, NULL, 'Luwu', 28),
(245, NULL, 'Luwu Timur', 28),
(246, NULL, 'Luwu Utara', 28),
(247, NULL, 'Madiun', 11),
(248, NULL, 'Madiun', 11),
(249, NULL, 'Magelang', 10),
(250, NULL, 'Magelang', 10),
(251, NULL, 'Magetan', 11),
(252, NULL, 'Majalengka', 9),
(253, NULL, 'Majene', 27),
(254, NULL, 'Makassar', 28),
(255, NULL, 'Malang', 11),
(257, NULL, 'Malinau', 16),
(258, NULL, 'Maluku Barat Daya', 19),
(259, NULL, 'Maluku Tengah', 19),
(260, NULL, 'Maluku Tenggara', 19),
(261, NULL, 'Maluku Tenggara Barat', 19),
(262, NULL, 'Mamasa', 27),
(263, NULL, 'Mamberamo Raya', 24),
(264, NULL, 'Mamberamo Tengah', 24),
(265, NULL, 'Mamuju', 27),
(266, NULL, 'Mamuju Utara', 27),
(267, NULL, 'Manado', 31),
(268, NULL, 'Mandailing Natal', 34),
(269, NULL, 'Manggarai', 23),
(270, NULL, 'Manggarai Barat', 23),
(271, NULL, 'Manggarai Timur', 23),
(272, NULL, 'Manokwari', 25),
(273, NULL, 'Manokwari Selatan', 25),
(274, NULL, 'Mappi', 24),
(275, NULL, 'Maros', 28),
(276, NULL, 'Mataram', 22),
(277, NULL, 'Maybrat', 25),
(278, NULL, 'Medan', 34),
(279, NULL, 'Melawi', 12),
(280, NULL, 'Merangin', 8),
(281, NULL, 'Merauke', 24),
(282, NULL, 'Mesuji', 18),
(283, NULL, 'Metro', 18),
(284, NULL, 'Mimika', 24),
(285, NULL, 'Minahasa', 31),
(286, NULL, 'Minahasa Selatan', 31),
(287, NULL, 'Minahasa Tenggara', 31),
(288, NULL, 'Minahasa Utara', 31),
(289, NULL, 'Mojokerto', 11),
(290, NULL, 'Mojokerto', 11),
(291, NULL, 'Morowali', 29),
(292, NULL, 'Muara Enim', 33),
(293, NULL, 'Muaro Jambi', 8),
(294, NULL, 'Muko Muko', 4),
(295, NULL, 'Muna', 30),
(296, NULL, 'Murung Raya', 14),
(297, NULL, 'Musi Banyuasin', 33),
(298, NULL, 'Musi Rawas', 33),
(299, NULL, 'Nabire', 24),
(300, NULL, 'Nagan Raya', 21),
(301, NULL, 'Nagekeo', 23),
(302, NULL, 'Natuna', 17),
(303, NULL, 'Nduga', 24),
(304, NULL, 'Ngada', 23),
(305, NULL, 'Nganjuk', 11),
(306, NULL, 'Ngawi', 11),
(307, NULL, 'Nias', 34),
(308, NULL, 'Nias Barat', 34),
(309, NULL, 'Nias Selatan', 34),
(310, NULL, 'Nias Utara', 34),
(311, NULL, 'Nunukan', 16),
(312, NULL, 'Ogan Ilir', 33),
(313, NULL, 'Ogan Komering Ilir', 33),
(314, NULL, 'Ogan Komering Ulu', 33),
(315, NULL, 'Ogan Komering Ulu Selatan', 33),
(316, NULL, 'Ogan Komering Ulu Timur', 33),
(317, NULL, 'Pacitan', 11),
(318, NULL, 'Padang', 32),
(319, NULL, 'Padang Lawas', 34),
(320, NULL, 'Padang Lawas Utara', 34),
(321, NULL, 'Padang Panjang', 32),
(322, NULL, 'Padang Pariaman', 32),
(323, NULL, 'Padang Sidempuan', 34),
(324, NULL, 'Pagar Alam', 33),
(325, NULL, 'Pakpak Bharat', 34),
(326, NULL, 'Palangka Raya', 14),
(327, NULL, 'Palembang', 33),
(328, NULL, 'Palopo', 28),
(329, NULL, 'Palu', 29),
(330, NULL, 'Pamekasan', 11),
(331, NULL, 'Pandeglang', 3),
(332, NULL, 'Pangandaran', 9),
(333, NULL, 'Pangkajene Kepulauan', 28),
(334, NULL, 'Pangkal Pinang', 2),
(335, NULL, 'Paniai', 24),
(336, NULL, 'Parepare', 28),
(337, NULL, 'Pariaman', 32),
(338, NULL, 'Parigi Moutong', 29),
(339, NULL, 'Pasaman', 32),
(340, NULL, 'Pasaman Barat', 32),
(341, NULL, 'Paser', 15),
(342, NULL, 'Pasuruan', 11),
(344, NULL, 'Pati', 10),
(345, NULL, 'Payakumbuh', 32),
(346, NULL, 'Pegunungan Arfak', 25),
(347, NULL, 'Pegunungan Bintang', 24),
(348, NULL, 'Pekalongan', 10),
(349, NULL, 'Pekalongan', 10),
(350, NULL, 'Pekanbaru', 26),
(351, NULL, 'Pelalawan', 26),
(352, NULL, 'Pemalang', 10),
(353, NULL, 'Pematang Siantar', 34),
(354, NULL, 'Penajam Paser Utara', 15),
(355, NULL, 'Pesawaran', 18),
(356, NULL, 'Pesisir Barat', 18),
(357, NULL, 'Pesisir Selatan', 32),
(358, NULL, 'Pidie', 21),
(359, NULL, 'Pidie Jaya', 21),
(360, NULL, 'Pinrang', 28),
(361, NULL, 'Pohuwato', 7),
(362, NULL, 'Polewali Mandar', 27),
(363, NULL, 'Ponorogo', 11),
(364, NULL, 'Pontianak', 12),
(366, NULL, 'Poso', 29),
(367, NULL, 'Prabumulih', 33),
(368, NULL, 'Pringsewu', 18),
(369, NULL, 'Probolinggo', 11),
(371, NULL, 'Pulang Pisau', 14),
(372, NULL, 'Pulau Morotai', 20),
(373, NULL, 'Puncak', 24),
(374, NULL, 'Puncak Jaya', 24),
(375, NULL, 'Purbalingga', 10),
(376, NULL, 'Purwakarta', 9),
(377, NULL, 'Purworejo', 10),
(378, NULL, 'Raja Ampat', 25),
(379, NULL, 'Rejang Lebong', 4),
(380, NULL, 'Rembang', 10),
(381, NULL, 'Rokan Hilir', 26),
(382, NULL, 'Rokan Hulu', 26),
(383, NULL, 'Rote Ndao', 23),
(384, NULL, 'Sabang', 21),
(385, NULL, 'Sabu Raijua', 23),
(386, NULL, 'Salatiga', 10),
(387, NULL, 'Samarinda', 15),
(388, NULL, 'Sambas', 12),
(389, NULL, 'Samosir', 34),
(390, NULL, 'Sampang', 11),
(391, NULL, 'Sanggau', 12),
(392, NULL, 'Sarmi', 24),
(393, NULL, 'Sarolangun', 8),
(394, NULL, 'Sawah Lunto', 32),
(395, NULL, 'Sekadau', 12),
(396, NULL, 'Selayar (Kepulauan Selayar)', 28),
(397, NULL, 'Seluma', 4),
(398, NULL, 'Semarang', 10),
(399, NULL, 'Semarang', 10),
(400, NULL, 'Seram Bagian Barat', 19),
(401, NULL, 'Seram Bagian Timur', 19),
(402, NULL, 'Serang', 3),
(403, NULL, 'Serang', 3),
(404, NULL, 'Serdang Bedagai', 34),
(405, NULL, 'Seruyan', 14),
(406, NULL, 'Siak', 26),
(407, NULL, 'Sibolga', 34),
(408, NULL, 'Sidenreng Rappang/Rapang', 28),
(409, NULL, 'Sidoarjo', 11),
(410, NULL, 'Sigi', 29),
(411, NULL, 'Sijunjung (Sawah Lunto Sijunjung)', 32),
(412, NULL, 'Sikka', 23),
(413, NULL, 'Simalungun', 34),
(414, NULL, 'Simeulue', 21),
(415, NULL, 'Singkawang', 12),
(416, NULL, 'Sinjai', 28),
(417, NULL, 'Sintang', 12),
(418, NULL, 'Situbondo', 11),
(419, NULL, 'Sleman', 5),
(420, NULL, 'Solok', 32),
(422, NULL, 'Solok Selatan', 32),
(423, NULL, 'Soppeng', 28),
(424, NULL, 'Sorong', 25),
(426, NULL, 'Sorong Selatan', 25),
(427, NULL, 'Sragen', 10),
(428, NULL, 'Subang', 9),
(429, NULL, 'Subulussalam', 21),
(430, NULL, 'Sukabumi', 9),
(432, NULL, 'Sukamara', 14),
(433, NULL, 'Sukoharjo', 10),
(434, NULL, 'Sumba Barat', 23),
(435, NULL, 'Sumba Barat Daya', 23),
(436, NULL, 'Sumba Tengah', 23),
(437, NULL, 'Sumba Timur', 23),
(438, NULL, 'Sumbawa', 22),
(439, NULL, 'Sumbawa Barat', 22),
(440, NULL, 'Sumedang', 9),
(441, NULL, 'Sumenep', 11),
(442, NULL, 'Sungaipenuh', 8),
(443, NULL, 'Supiori', 24),
(444, NULL, 'Surabaya', 11),
(445, NULL, 'Surakarta (Solo)', 10),
(446, NULL, 'Tabalong', 13),
(447, NULL, 'Tabanan', 1),
(448, NULL, 'Takalar', 28),
(449, NULL, 'Tambrauw', 25),
(450, NULL, 'Tana Tidung', 16),
(451, NULL, 'Tana Toraja', 28),
(452, NULL, 'Tanah Bumbu', 13),
(453, NULL, 'Tanah Datar', 32),
(454, NULL, 'Tanah Laut', 13),
(455, NULL, 'Tangerang', 3),
(456, NULL, 'Tangerang', 3),
(457, NULL, 'Tangerang Selatan', 3),
(458, NULL, 'Tanggamus', 18),
(459, NULL, 'Tanjung Balai', 34),
(460, NULL, 'Tanjung Jabung Barat', 8),
(461, NULL, 'Tanjung Jabung Timur', 8),
(462, NULL, 'Tanjung Pinang', 17),
(463, NULL, 'Tapanuli Selatan', 34),
(464, NULL, 'Tapanuli Tengah', 34),
(465, NULL, 'Tapanuli Utara', 34),
(466, NULL, 'Tapin', 13),
(467, NULL, 'Tarakan', 16),
(468, NULL, 'Tasikmalaya', 9),
(470, NULL, 'Tebing Tinggi', 34),
(471, NULL, 'Tebo', 8),
(472, NULL, 'Tegal', 10),
(473, NULL, 'Tegal', 10),
(474, NULL, 'Teluk Bintuni', 25),
(475, NULL, 'Teluk Wondama', 25),
(476, NULL, 'Temanggung', 10),
(477, NULL, 'Ternate', 20),
(478, NULL, 'Tidore Kepulauan', 20),
(479, NULL, 'Timor Tengah Selatan', 23),
(480, NULL, 'Timor Tengah Utara', 23),
(481, NULL, 'Toba Samosir', 34),
(482, NULL, 'Tojo Una-Una', 29),
(483, NULL, 'Toli-Toli', 29),
(484, NULL, 'Tolikara', 24),
(485, NULL, 'Tomohon', 31),
(486, NULL, 'Toraja Utara', 28),
(487, NULL, 'Trenggalek', 11),
(488, NULL, 'Tual', 19),
(489, NULL, 'Tuban', 11),
(490, NULL, 'Tulang Bawang', 18),
(491, NULL, 'Tulang Bawang Barat', 18),
(492, NULL, 'Tulungagung', 11),
(493, NULL, 'Wajo', 28),
(494, NULL, 'Wakatobi', 30),
(495, NULL, 'Waropen', 24),
(496, NULL, 'Way Kanan', 18),
(497, NULL, 'Wonogiri', 10),
(498, NULL, 'Wonosobo', 10),
(499, NULL, 'Yahukimo', 24),
(500, NULL, 'Yalimo', 24),
(501, NULL, 'Yogyakarta', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ms_clubs`
--

CREATE TABLE IF NOT EXISTS `ms_clubs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_type_club_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reward` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ms_contacts`
--

CREATE TABLE IF NOT EXISTS `ms_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_contacts`
--

INSERT INTO `ms_contacts` (`id`, `ms_user_id`, `name`, `email`, `telephone`, `mobile`, `fax`, `website`, `facebook`, `twitter`, `instagram`, `address`, `city`, `province`, `country`, `description`, `file`, `featured`, `active`, `created_at`, `updated_at`) VALUES
(2, 1, 'Gemarsehati', 'gemarsehati@gmail.com', '031-8796996', '', '', 'gemarsehati.com', 'facebook.com/gemarsehati', 'twitter.com/Gemarsehatiteam', 'instagram.com/gemarsehatiteam', 'Jl. Medokan Asri Barat I Blok P2 - Surabaya 60295', '', '', '', '', '', '1', '', '2015-04-17 14:20:50', '2016-02-05 07:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `ms_country`
--

CREATE TABLE IF NOT EXISTS `ms_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=236 ;

--
-- Dumping data for table `ms_country`
--

INSERT INTO `ms_country` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Acores Et Madere'),
(2, 2, 'Afghanistan'),
(3, 3, 'Afrika Barat  Rep'),
(4, 4, 'Albania'),
(5, 5, 'Algeria'),
(6, 6, 'Angola'),
(7, 7, 'Antigua and Barbuda'),
(8, 8, 'Argentina'),
(9, 9, 'Australia'),
(10, 10, 'Austria'),
(11, 11, 'Azerbaijan'),
(12, 12, 'Bahamas'),
(13, 13, 'Bahrain'),
(14, 14, 'Bangladesh'),
(15, 15, 'Barbados'),
(16, 16, 'Belgium'),
(17, 17, 'Belize'),
(18, 18, 'Benin'),
(19, 19, 'Bermuda'),
(20, 20, 'Bhutan'),
(21, 21, 'Bolivia'),
(22, 22, 'Botswana'),
(23, 23, 'Brazil'),
(24, 24, 'Brunei Darussalam'),
(25, 25, 'Bulgaria (rep)'),
(26, 26, 'Burkina Faso'),
(27, 27, 'Burundi'),
(28, 28, 'Cambodia'),
(29, 29, 'Cameroon'),
(30, 30, 'Canada'),
(31, 31, 'Cayman Islands'),
(32, 32, 'Ceko'),
(33, 33, 'Central African Rep'),
(34, 34, 'Chad'),
(35, 35, 'Chile'),
(36, 36, 'China (people_s rep)'),
(37, 37, 'Colombia'),
(38, 38, 'Comoros'),
(39, 39, 'Congo (rep)'),
(40, 40, 'Cook islands'),
(41, 41, 'Costa rica'),
(42, 42, 'Cote D_Ivoire (rep)- Pantai Gading'),
(43, 43, 'Cuba'),
(44, 44, 'Cyprus'),
(45, 45, 'Czech Rep'),
(46, 46, 'Dem People_s Rep of Korea'),
(47, 47, 'Denmark'),
(48, 48, 'Djibouti'),
(49, 49, 'Dominica'),
(50, 50, 'Dominican Republic'),
(51, 51, 'Ecuador'),
(52, 52, 'Egypt'),
(53, 53, 'El Salvador'),
(54, 54, 'Equatorial Guinea'),
(55, 55, 'Eritrea'),
(56, 56, 'Ethiopia'),
(57, 57, 'Faroe Islands'),
(58, 58, 'Fiji'),
(59, 59, 'Finland'),
(60, 60, 'Former Yugoslavian  Rep. of Macedonia'),
(61, 61, 'France'),
(62, 62, 'French Guiana'),
(63, 63, 'French Polynesia'),
(64, 64, 'Gabon'),
(65, 65, 'Gambia'),
(66, 66, 'Germany'),
(67, 67, 'Ghana'),
(68, 68, 'Gibraltar'),
(69, 69, 'Great Britain (Inggris)'),
(70, 70, 'Greece'),
(71, 71, 'Greenland'),
(72, 72, 'Grenada'),
(73, 73, 'Guadeloupe'),
(74, 74, 'Guam'),
(75, 75, 'Guatemala'),
(76, 76, 'Guinea'),
(77, 77, 'Guinea-Bissau'),
(78, 78, 'Guyana'),
(79, 79, 'Haiti'),
(80, 80, 'Honduras (rep)'),
(81, 81, 'Hongkong'),
(82, 82, 'Hungary (rep)'),
(83, 83, 'Iceland'),
(84, 84, 'India'),
(85, 85, 'Iran (Islamic rep)'),
(86, 86, 'Iraq'),
(87, 87, 'Ireland'),
(88, 88, 'Israel'),
(89, 89, 'Italy'),
(90, 90, 'Jamaica'),
(91, 91, 'Japan'),
(92, 92, 'Jordan'),
(93, 93, 'Kazakhstan'),
(94, 94, 'Kenya'),
(95, 95, 'Kiribati'),
(96, 96, 'Korea (rep)'),
(97, 97, 'Kuwait'),
(98, 98, 'Lao People_s Dem Rep'),
(99, 99, 'Lebanon'),
(100, 100, 'Lesotho'),
(101, 101, 'Liberia'),
(102, 102, 'Libyan Jamahiriya'),
(103, 103, 'Luxembourg'),
(104, 104, 'Macao'),
(105, 105, 'Madagascar'),
(106, 106, 'Madeira'),
(107, 107, 'Malawi'),
(108, 108, 'Malaysia'),
(109, 109, 'Maldives'),
(110, 110, 'Mali'),
(111, 111, 'Malta'),
(112, 112, 'Mariana Islands'),
(113, 113, 'Martinique'),
(114, 114, 'Mauritania'),
(115, 115, 'Mauritius'),
(116, 116, 'Mexico'),
(117, 117, 'Mongolia'),
(118, 118, 'Montserrat'),
(119, 119, 'Morocco'),
(120, 120, 'Mozambique'),
(121, 121, 'Myanmar'),
(122, 122, 'Namibia'),
(123, 123, 'Nauru'),
(124, 124, 'Nepal'),
(125, 125, 'Netherlands'),
(126, 126, 'Netherlands Antilles'),
(127, 127, 'New Caledonia'),
(128, 128, 'New Zealand'),
(129, 129, 'Nicaragua'),
(130, 130, 'Niger'),
(131, 131, 'Nigeria'),
(132, 132, 'Norway'),
(133, 133, 'Oman'),
(134, 134, 'Pakistan'),
(135, 135, 'Panama'),
(136, 136, 'Papua New Guinea'),
(137, 137, 'Paraguay'),
(138, 138, 'Peru'),
(139, 139, 'Philippines'),
(140, 140, 'Poland (rep)'),
(141, 141, 'Portugal'),
(142, 142, 'Qatar'),
(143, 143, 'Romania'),
(144, 144, 'Russian Federation'),
(145, 145, 'Rwanda'),
(146, 146, 'Samoa Barat'),
(147, 147, 'Saudi Arabia'),
(148, 148, 'Scattered Islands, Reunion'),
(149, 149, 'Senegal'),
(150, 150, 'Seychelles'),
(151, 151, 'Sierra Leone'),
(152, 152, 'Singapore'),
(153, 153, 'Slovak Rep'),
(154, 154, 'Solomon Islands'),
(155, 155, 'South Africa'),
(156, 156, 'Spain'),
(157, 157, 'Sri Lanka'),
(158, 158, 'St Helena'),
(159, 159, 'Sudan'),
(160, 160, 'Suriname'),
(161, 161, 'Swaziland'),
(162, 162, 'Sweden'),
(163, 163, 'Switzerland'),
(164, 164, 'Syrian Arab Rep.'),
(165, 165, 'Taiwan'),
(166, 166, 'Tanzania (United Rep)'),
(167, 167, 'Thailand'),
(168, 168, 'Timor-Leste'),
(169, 169, 'Togo'),
(170, 170, 'Tonga'),
(171, 171, 'Tortola'),
(172, 172, 'Trinidad and Tobago'),
(173, 173, 'Tunisia'),
(174, 174, 'Turkey'),
(175, 175, 'Turks Cay Islands'),
(176, 176, 'Tuvalu'),
(177, 177, 'Uganda'),
(178, 178, 'United Arab Emirates'),
(179, 179, 'United States of America'),
(180, 180, 'Uruguay'),
(181, 181, 'Vanuatu'),
(182, 182, 'Vatican'),
(183, 183, 'Venezuela'),
(184, 184, 'Viet nam'),
(185, 185, 'Western Samoa'),
(186, 186, 'Yemen'),
(187, 187, 'Zambia'),
(188, 188, 'Zimbabwe'),
(189, 189, 'Andora'),
(190, 190, 'Armenia'),
(191, 191, 'Aruba'),
(192, 192, 'Belarus'),
(193, 193, 'Bonaire'),
(194, 194, 'Bosnia & Herzegovina'),
(195, 195, 'Canary Islands, The'),
(196, 196, 'Cape Verde'),
(197, 197, 'Channel Islands'),
(198, 198, 'Croatia'),
(199, 199, 'Curacao'),
(200, 200, 'Estonia'),
(201, 201, 'Etrea'),
(202, 202, 'Falkand Islands'),
(203, 203, 'Georgia'),
(204, 204, 'Guerensey'),
(205, 205, 'Jersey'),
(206, 206, 'Kyrgysztan'),
(207, 207, 'Latvia'),
(208, 208, 'Liechtenstein'),
(209, 209, 'Lithuania'),
(210, 210, 'Moldova, Rep. of'),
(211, 211, 'Monaco'),
(212, 212, 'Montenegro Rep The'),
(213, 213, 'Nevis'),
(214, 214, 'Niue'),
(215, 215, 'Puerto Rico'),
(216, 216, 'Reunion, Island of'),
(217, 217, 'Saipan'),
(218, 218, 'Serbia Rep The'),
(219, 219, 'Slovenia'),
(220, 220, 'Somalia'),
(221, 221, 'St. Barthelemy'),
(222, 222, 'St. Eustatius'),
(223, 223, 'St. Kitts'),
(224, 224, 'St. Lucia'),
(225, 225, 'St. Maarten'),
(226, 226, 'St. Vincent'),
(227, 227, 'Tahiti'),
(228, 228, 'Tajikistan'),
(229, 229, 'Turkmenistan'),
(230, 230, 'Ukraine'),
(231, 231, 'Uzbekistan'),
(232, 232, 'Virgin Islands (British)'),
(233, 233, 'Virgin Islands (USA)'),
(234, 234, 'Yugoslavia'),
(235, 235, 'Zaire');

-- --------------------------------------------------------

--
-- Table structure for table `ms_download`
--

CREATE TABLE IF NOT EXISTS `ms_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_download`
--

INSERT INTO `ms_download` (`id`, `name`, `link`) VALUES
(1, 'IOS', 'itunes.apple.com/us/app/kangen-gemarsehati/id1135881438?mt=8'),
(2, 'Android', 'play.google.com/store/apps/details?id=kangen.gemarsehati.enagic');

-- --------------------------------------------------------

--
-- Table structure for table `ms_event`
--

CREATE TABLE IF NOT EXISTS `ms_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ms_event`
--

INSERT INTO `ms_event` (`id`, `name`, `date`, `description`) VALUES
(14, 'Wellness Seminar SAMARINDA', '2016-02-20', 'Enagic mengadakan WELLNESS SEMINAR di SAMARINDA\r\n\r\nTanggal : 20 Februari 2016\r\nVenue     : Swiss Bell Hotel Borneo Samarinda, Jl. Mulawarman No. 6 Samarinda\r\nTelp.       : 0521-200888\r\nWaktu    : 14.00 PM - 17.00 PM\r\nPIC          : Candra Sosiawan'),
(15, 'BOOTCAMP-4 GEMARSEHATI SURABAYA ', '2016-08-06', 'Ikuti Gemarsehati Bootcamp sessi-4 di Surabaya, Tanggal      :  6-7 Agustus 2016'),
(17, 'KanGen Water Seminar di Blitar', '2016-03-12', 'KanGen Water Seminar di Blitar\r\nSabtu, 12 Maret 2016 \r\nStart pk 13.00 WIB - selesai \r\nTempat: LEC ( Local Education Centre) \r\nJl.Raya Sawahan Pojok Garum Blitar\r\nRuang anggrek (lewat depan gedung KPPN Blitar)\r\n\r\nPresenter : \r\nYussa Marulli ST (6A3) \r\n(Pengusaha - Surabaya ) \r\nPangeran Chandra, SE  (4A)\r\n(Pengusaha - Surabaya )\r\nInvestasi Rp 20.000 !!! \r\nHub Hp/ WA : 0857.06101792 / 0896.04817038 '),
(18, 'KanGen Water Seminar di Padang panjang', '2016-04-23', ' Gemar Sehati mempersembahkan: \r\nKanGen Water Seminar di Padang panjang\r\nSabtu, 23 april 2016  \r\nsesi 1 pk 09.00 WIB - selesai | sesi 2 pk 13.00-selesai\r\nTempat: Aula A Hotel Pangeran - Jl. KH.A.DAHLAN No 7 Padang panjang\r\nInvestasi 1org: Rp 20.000 \r\n2org: Rp 30.000!!!\r\nHub Hp/ WA : 081363930799\r\n\r\nAyo  Ajak keluarga, teman, dan orang-orang yang Anda pedulikan untuk hadir dan utk melihat kehebatan demo air ajaib KanGen water \r\nSalam Kangen.'),
(19, 'Seminar 501 System Indonesia', '2016-05-14', 'Sebuah seminar yang mengulas bisnis mudah dari rumah, dan bonusnya sehat badan - sehat pikiran - sehat keuangan\r\nsabtu, 14 Mei 2016 - Pukul 13.00 WIB\r\nKYNU EAT and CHAT Cafe\r\nJl. Bratang Binangun I/23 - Surabaya\r\nEducator :\r\nIbu Dini & Ibu Sofia\r\nGuest Speaker :\r\nIr. Yussa Marulli (6A3 Enagic Indonesia)\r\nInfo :\r\n0853.1234.5959\r\nHTM :\r\n25K'),
(20, 'Ikutilah TALKSHOW RADIO ttg REVOLUSI KESEHATAN', '2016-09-14', ' oleh RS Rumah Sakit Wiyung Sejahtera dan Gemarsehati pada Hari Rabu Besok Malam 14 Sep 2016 Jam 19.00-21.00 di SINDO TRIJAYA FM Surabaya Frek 104.7 Mhz. \r\nAnda juga bisa mengikuti secara live di www.sindotrijayasurabaya.com dan telp interaktif di 031-596.1047'),
(21, 'Gemarsehati di Industri Bahari Expo 2016 Grand City Surabaya', '2016-09-22', 'Gemarsehati di Industri Bahari Expo 2016 Grand City Surabaya\r\nTgl : 22 - 25 September 2016');

-- --------------------------------------------------------

--
-- Table structure for table `ms_files`
--

CREATE TABLE IF NOT EXISTS `ms_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isumum` tinyint(4) NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ms_files`
--

INSERT INTO `ms_files` (`id`, `file`, `mime`, `title`, `description`, `created_at`, `updated_at`, `isumum`, `ms_media_id`) VALUES
(1, '5112100092-Imaduddin-Al-Fikri-POMITS_20160126_074537.pdf', '', '', '', '2016-01-28 14:36:21', '0000-00-00 00:00:00', 0, 474),
(2, 'Alur_PublikasiMakalah_20160126_070038.pdf', '', '', '', '2016-01-28 14:36:21', '0000-00-00 00:00:00', 127, 0),
(3, 'logo-gemarsehati_20160201_112533.png', 'png', 'Logo Gemarsehati', 'Logo Gemarsehati format PNG', '2016-02-01 11:33:25', '2016-02-01 04:33:25', 1, 500),
(17, 'APLIKASI_20160201_130748.pdf', 'pdf', 'Form Aplikasi Terbaru', 'Form Aplikasi Terbaru. format PDF', '2016-02-02 07:38:25', '2016-02-02 00:38:25', 0, 514),
(5, 'Logo Kangen_20160201_112036.pdf', 'pdf', 'Logo kangenwater', 'Logo kangenwater', '2016-02-02 07:38:06', '2016-02-02 00:38:06', 0, 514),
(7, 'Air ZamZam Alkaline_20160201_111519.mp4', 'video', 'Air ZamZam Alkaline', 'Video tentang Air ZamZam Alkaline', '2016-02-01 04:19:15', '2016-02-01 04:19:15', 1, 0),
(8, 'Air ZamZam Alkaline_20160201_112823.mp4', 'video', 'Filosofi Mircolustered', 'video tentang Filosofi Mircolustered. format mp4', '2016-02-01 13:10:11', '2016-02-01 06:10:11', 1, 0),
(9, 'logo-gemarsehati_20160201_110435.pdf', 'pdf', 'Logo Gemarsehati', 'Logo Gemarsehati format PNG', '2016-02-02 07:38:36', '2016-02-02 00:38:35', 0, 514),
(18, 'SURAT PERNYATAAN PENJAMIN 6A KOSONGAN_20160201_133253.pdf', 'pdf', 'Surat Pernyataan Penjamin', 'Surat Pernyataan Pengikatan Diri Sebagai Penjamin\r\n', '2016-02-02 07:38:17', '2016-02-02 00:38:17', 0, 514),
(19, '53_Permenkes 492_20160309_055203.pdf', 'pdf', 'Peraturan Menkes tentang baku mutu air minum ', 'Peraturan Menkes tentang baku mutu air minum ', '2016-03-09 05:03:56', '2016-03-08 22:03:56', 1, 514);

-- --------------------------------------------------------

--
-- Table structure for table `ms_gender`
--

CREATE TABLE IF NOT EXISTS `ms_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_gender`
--

INSERT INTO `ms_gender` (`id`, `name`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `ms_general`
--

CREATE TABLE IF NOT EXISTS `ms_general` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_credit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `about_community` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ms_general`
--

INSERT INTO `ms_general` (`id`, `site_title`, `tagline`, `language`, `file`, `file_credit`, `meta_description`, `meta_keywords`, `active`, `about_community`, `created_at`, `updated_at`) VALUES
(1, 'Gemarsehati - Gerakan Minum Air Sehat Indonesia', 'gemarsehati', 'id', 'img_logo.png', 'credit-logo.png', 'Komunitas anak bangsa yang peduli akan kesehatan masyarakat Indonesia dengan melakukan edukasi, berbagi pengalaman serta kampanye mendorong setiap anak bangsa untuk berprilaku hidup sehat dengan minum air yang sehat dan alami. ', 'enagic,kangenwater,gemarsehati,enagic indonesia', '1', 'Komunitas anak bangsa yang peduli akan kesehatan masyarakat Indonesia dengan melakukan edukasi, berbagi pengalaman serta kampanye mendorong setiap anak bangsa untuk berprilaku hidup sehat dengan minum air yang sehat dan alami. Untuk bisa Menggunakan fitur "Mitra Nearby", pastikan bahwa "location" pada device Anda sudah aktif.', '2015-04-14 07:38:20', '2016-03-18 14:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `ms_leaders`
--

CREATE TABLE IF NOT EXISTS `ms_leaders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `rank_name` varchar(255) NOT NULL,
  `video_profile` varchar(1000) NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ms_leaders`
--

INSERT INTO `ms_leaders` (`id`, `name`, `rank`, `rank_name`, `video_profile`, `ms_media_id`, `facebook`, `twitter`, `skype`) VALUES
(1, 'Ir. YUSSA MARULLI', 1, 'The Rank 6A3', '#', 565, 'facebook.com/gemarsehati', '#', '#'),
(2, 'dr. Diana', 2, 'The Rank 6A2', '#', 484, '#', '#', '#'),
(3, 'Budi Arif Fakhrudin', 3, 'The Rank 6A', '#', 594, '#', '#', '#'),
(4, 'Candra Sosiawan', 7, 'The Rank 6A', '#', 595, '#', '#', '#'),
(5, 'Mukhlis Maskoer', 4, 'The Rank 6A', '#', 564, '#', '#', '#'),
(6, 'Ricky Antonio', 5, 'The Rank 6A', '', 491, '', '', ''),
(7, 'Hariati P', 6, 'The Rank 6A', '', 492, '', '', ''),
(8, 'Anang Sulis Setyo A', 8, 'The Rank 6A', '#', 593, 'https://www.facebook.com/profile.php?id=100007098752108&fref=ts', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `ms_links`
--

CREATE TABLE IF NOT EXISTS `ms_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ms_medias`
--

CREATE TABLE IF NOT EXISTS `ms_medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alternate_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isumum` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=629 ;

--
-- Dumping data for table `ms_medias`
--

INSERT INTO `ms_medias` (`id`, `file`, `mime`, `caption`, `alternate_text`, `description`, `created_at`, `updated_at`, `isumum`) VALUES
(438, 'img_20160119_065921.jpg', 'image/jpeg', '', '', '', '2016-01-18 23:21:59', '2016-01-18 23:21:59', 0),
(439, 'img_20160119_063822.jpg', 'image/jpeg', '', '', '', '2016-01-18 23:22:38', '2016-01-18 23:22:38', 0),
(440, 'img_20160119_063023.jpg', 'image/jpeg', '', '', '', '2016-01-18 23:23:30', '2016-01-18 23:23:30', 0),
(441, 'img_20160119_064423.jpg', 'image/jpeg', '', '', '', '2016-01-18 23:23:44', '2016-01-18 23:23:44', 0),
(442, 'img_20160119_072005.jpg', 'image/jpeg', '', '', '', '2016-01-19 00:05:20', '2016-01-19 00:05:20', 0),
(443, 'img_20160119_074205.jpg', 'image/jpeg', '', '', '', '2016-01-19 00:05:42', '2016-01-19 00:05:42', 0),
(444, 'img_20160119_094208.jpg', 'image/jpeg', '', '', '', '2016-01-19 02:08:42', '2016-01-19 02:08:42', 0),
(445, 'img_20160121_044625.png', 'image/png', '', '', '', '2016-01-20 21:25:47', '2016-01-20 21:25:47', 0),
(462, 'img_20160125_120902.jpg', 'image/jpeg', '', '', '', '2016-01-25 05:02:09', '2016-01-25 05:02:09', 0),
(463, 'img_20160125_123607.jpg', 'image/jpeg', '', '', '', '2016-01-25 05:07:36', '2016-01-25 05:07:36', 0),
(464, 'img_20160125_125315.jpg', 'image/jpeg', '', '', '', '2016-01-25 05:15:53', '2016-01-25 05:15:53', 0),
(465, 'img_20160125_121216.jpg', 'image/jpeg', '', '', '', '2016-01-25 05:16:12', '2016-01-25 05:16:12', 0),
(466, 'img_20160125_232920.jpg', 'image/jpeg', '', '', '', '2016-01-25 16:20:29', '2016-01-25 16:20:29', 0),
(467, 'img_20160126_025213.png', 'image/png', '', '', '', '2016-01-25 19:13:52', '2016-01-25 19:13:52', 0),
(468, 'img_20160126_022518.jpg', 'image/jpeg', '', '', '', '2016-01-25 19:18:25', '2016-01-25 19:18:25', 0),
(469, 'img_20160126_022921.jpg', 'image/jpeg', '', '', '', '2016-01-25 19:21:29', '2016-01-25 19:21:29', 0),
(470, 'img_20160126_021024.jpg', 'image/jpeg', '', '', '', '2016-01-25 19:24:10', '2016-01-25 19:24:10', 0),
(471, 'img_20160126_021526.jpg', 'image/jpeg', '', '', '', '2016-01-25 19:26:15', '2016-01-25 19:26:15', 0),
(472, 'img_20160126_020233.jpg', 'image/jpeg', '', '', '', '2016-01-25 19:33:02', '2016-01-25 19:33:02', 0),
(473, 'img_20160126_035412.jpg', 'image/jpeg', '', '', '', '2016-01-25 20:12:54', '2016-01-25 20:12:54', 0),
(481, 'img_20160127_122804.jpg', 'image/jpeg', 'Foto MemberTes', '', 'Foto MemberTes', '2016-01-27 05:04:28', '2016-01-27 05:04:28', 0),
(483, 'img_20160128_070805.png', 'image/png', '', '', '', '2016-01-28 00:05:08', '2016-01-28 00:05:08', 0),
(484, 'img_20160128_113218.jpg', 'image/jpeg', '', '', '', '2016-01-28 04:18:32', '2016-01-28 04:18:32', 0),
(488, 'img_20160128_120737.jpg', 'image/jpeg', '', '', '', '2016-01-28 05:37:07', '2016-01-28 05:37:07', 0),
(489, 'img_20160128_140138.png', 'image/png', '', '', '', '2016-01-28 07:38:02', '2016-01-28 07:38:02', 0),
(490, 'img_20160218_161612.jpg', 'image/jpeg', '', '', '', '2016-01-29 03:23:06', '2016-02-18 09:12:18', 0),
(491, 'img_20160129_104323.jpg', 'image/jpeg', '', '', '', '2016-01-29 03:23:43', '2016-01-29 03:23:43', 0),
(492, 'img_20160129_101024.jpg', 'image/jpeg', '', '', '', '2016-01-29 03:24:10', '2016-01-29 03:24:10', 0),
(493, 'img_20160129_101837.jpg', 'image/jpeg', '', '', '', '2016-01-29 03:37:18', '2016-01-29 03:37:18', 0),
(494, 'img_20160129_172525.png', 'image/png', 'Foto Imaduddin Al Fikri', '', 'Foto Imaduddin Al Fikri', '2016-01-29 10:25:26', '2016-01-29 10:25:26', 0),
(495, 'img_20160130_141917.jpg', 'image/jpeg', 'Foto ', '', 'Foto ', '2016-01-30 07:17:19', '2016-01-30 07:17:19', 0),
(497, 'img_20160131_122303.JPG', 'image/jpeg', 'Foto namates', '', 'Foto namates', '2016-01-31 05:03:23', '2016-01-31 05:03:23', 0),
(499, 'img_20160131_120407.JPG', 'image/jpeg', 'Foto namates', '', 'Foto namates', '2016-01-31 05:07:05', '2016-01-31 05:07:05', 0),
(500, 'img_20160201_110532.jpg', 'image/jpeg', '', '', '', '2016-02-01 04:32:05', '2016-02-01 04:32:05', 0),
(501, 'img_20160201_182825.jpg', 'image/jpeg', 'Foto a', '', 'Foto a', '2016-02-01 11:25:29', '2016-02-01 11:25:29', 0),
(502, 'img_20160201_194202.jpg', 'image/jpeg', 'Foto a', '', 'Foto a', '2016-02-01 12:02:42', '2016-02-01 12:02:42', 0),
(503, 'img_20160201_195102.jpg', 'image/jpeg', 'Foto a', '', 'Foto a', '2016-02-01 12:02:51', '2016-02-01 12:02:51', 0),
(504, 'img_20160202_061140.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:40:11', '2016-02-01 23:40:11', 0),
(505, 'img_20160202_064340.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:40:44', '2016-02-01 23:40:44', 0),
(506, 'img_20160202_060441.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:41:04', '2016-02-01 23:41:04', 0),
(507, 'img_20160202_061941.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:41:19', '2016-02-01 23:41:19', 0),
(508, 'img_20160202_063741.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:41:37', '2016-02-01 23:41:37', 0),
(509, 'img_20160202_060042.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:42:00', '2016-02-01 23:42:00', 0),
(510, 'img_20160202_062642.jpg', 'image/jpeg', '', '', '', '2016-02-01 23:42:26', '2016-02-01 23:42:26', 0),
(511, 'img_20160202_071721.jpg', 'image/jpeg', '', '', '', '2016-02-02 00:21:17', '2016-02-02 00:21:17', 0),
(512, 'img_20160202_075522.jpg', 'image/jpeg', '', '', '', '2016-02-02 00:22:55', '2016-02-02 00:22:55', 0),
(513, 'img_20160202_073125.jpg', 'image/jpeg', '', '', '', '2016-02-02 00:25:31', '2016-02-02 00:25:31', 0),
(514, 'img_20160202_075237.jpg', 'image/jpeg', '', '', '', '2016-02-02 00:37:53', '2016-02-02 00:37:53', 0),
(515, 'img_20160202_143243.pdf', 'images/jpeg', 'Foto Ikrom aulua fahdi', '', 'Foto Ikrom aulua fahdi', '2016-02-02 07:43:32', '2016-02-02 07:43:32', 0),
(516, 'img_20160202_145448.pdf', 'images/jpeg', 'Foto adsf', '', 'Foto adsf', '2016-02-02 07:48:54', '2016-02-02 07:48:54', 0),
(517, 'img_20160202_145358.pdf', 'images/jpeg', 'Foto adsf', '', 'Foto adsf', '2016-02-02 07:58:53', '2016-02-02 07:58:53', 0),
(518, 'img_20160202_154922.pdf', 'images/jpeg', 'Foto asdf', '', 'Foto asdf', '2016-02-02 08:22:49', '2016-02-02 08:22:49', 0),
(519, 'img_20160202_171044.jpg', 'image/jpeg', '', '', '', '2016-02-02 10:44:10', '2016-02-02 10:44:10', 0),
(520, 'img_20160202_231450.jpg', 'image/jpeg', '', '', '', '2016-02-02 16:50:14', '2016-02-02 16:50:14', 0),
(521, 'img_20160202_233258.jpg', 'image/jpeg', '', '', '', '2016-02-02 16:58:32', '2016-02-02 16:58:32', 0),
(522, 'img_20160203_022053.pdf', 'images/jpeg', 'Foto Ikrom', '', 'Foto Ikrom', '2016-02-02 19:53:20', '2016-02-02 19:53:20', 0),
(523, 'img_20160203_024953.pdf', 'images/jpeg', 'Foto Ikrom', '', 'Foto Ikrom', '2016-02-02 19:53:49', '2016-02-02 19:53:49', 0),
(525, 'img_20160203_072249.jpg', 'image/jpeg', '', '', '', '2016-02-03 00:49:23', '2016-02-03 00:49:23', 0),
(526, 'img_20160205_141358.jpg', 'image/jpeg', '', '', '', '2016-02-05 07:58:14', '2016-02-05 07:58:14', 0),
(527, 'img_20160207_034944.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:44:49', '2016-02-06 20:44:49', 0),
(528, 'img_20160207_032547.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:47:25', '2016-02-06 20:47:25', 0),
(529, 'img_20160207_035449.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:49:54', '2016-02-06 20:49:54', 0),
(530, 'img_20160207_032051.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:51:20', '2016-02-06 20:51:20', 0),
(531, 'img_20160207_031452.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:52:14', '2016-02-06 20:52:14', 0),
(532, 'img_20160207_032653.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:53:26', '2016-02-06 20:53:26', 0),
(533, 'img_20160207_032454.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:54:25', '2016-02-06 20:54:25', 0),
(534, 'img_20160207_032855.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:55:28', '2016-02-06 20:55:28', 0),
(535, 'img_20160207_032356.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:56:23', '2016-02-06 20:56:23', 0),
(536, 'img_20160207_033957.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:57:39', '2016-02-06 20:57:39', 0),
(537, 'img_20160207_033658.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:58:36', '2016-02-06 20:58:36', 0),
(538, 'img_20160207_034459.jpg', 'image/jpeg', '', '', '', '2016-02-06 20:59:44', '2016-02-06 20:59:44', 0),
(539, 'img_20160207_044100.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:00:41', '2016-02-06 21:00:41', 0),
(540, 'img_20160207_042901.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:01:29', '2016-02-06 21:01:29', 0),
(541, 'img_20160207_042302.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:02:23', '2016-02-06 21:02:23', 0),
(542, 'img_20160207_042403.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:03:24', '2016-02-06 21:03:24', 0),
(543, 'img_20160207_042104.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:04:21', '2016-02-06 21:04:21', 0),
(544, 'img_20160207_045504.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:04:55', '2016-02-06 21:04:55', 0),
(545, 'img_20160207_044505.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:05:45', '2016-02-06 21:05:45', 0),
(546, 'img_20160207_044406.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:06:45', '2016-02-06 21:06:45', 0),
(547, 'img_20160207_040108.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:08:01', '2016-02-06 21:08:01', 0),
(548, 'img_20160207_042709.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:09:27', '2016-02-06 21:09:27', 0),
(549, 'img_20160207_042411.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:11:24', '2016-02-06 21:11:24', 0),
(550, 'img_20160207_040413.jpg', 'image/jpeg', '', '', '', '2016-02-06 21:13:04', '2016-02-06 21:13:04', 0),
(552, 'img_20160209_121605.jpg', 'image/jpeg', 'Foto Andri Hartono ', '', 'Foto Andri Hartono ', '2016-02-09 05:05:16', '2016-02-09 05:05:16', 0),
(553, 'img_20160209_165407.jpg', 'image/jpeg', 'Foto ANANG SULIS SETIYO AWAN', '', 'Foto ANANG SULIS SETIYO AWAN', '2016-02-09 09:07:55', '2016-02-09 09:07:55', 0),
(554, 'img_20160210_062251.jpg', 'image/jpeg', 'Foto Ichsan Santoso', '', 'Foto Ichsan Santoso', '2016-02-09 23:51:22', '2016-02-09 23:51:22', 0),
(556, 'img_20160212_131617.jpeg', 'image/jpeg', 'Foto Rafika Nurbaeni', '', 'Foto Rafika Nurbaeni', '2016-02-12 06:17:16', '2016-02-12 06:17:16', 0),
(557, 'img_20160212_130756.jpg', 'image/jpeg', '', '', '', '2016-02-12 06:56:07', '2016-02-12 06:56:07', 0),
(560, 'img_20160213_092745.jpg', 'image/jpeg', 'Foto Agung Bangun S, SH', '', 'Foto Agung Bangun S, SH', '2016-02-13 02:45:27', '2016-02-13 02:45:27', 0),
(561, 'img_20160216_120122.jpg', 'image/jpeg', 'Foto Noor Khamimah', '', 'Foto Noor Khamimah', '2016-02-16 05:22:02', '2016-02-16 05:22:02', 0),
(562, 'img_20160218_102303.jpg', 'image/jpeg', '', '', '', '2016-02-18 03:03:23', '2016-02-18 03:03:23', 0),
(563, 'img_20160218_125910.jpg', 'image/jpeg', '', '', '', '2016-02-18 05:11:00', '2016-02-18 05:11:00', 0),
(564, 'img_20160218_224848.jpg', 'image/jpeg', '', '', '', '2016-02-18 15:48:48', '2016-02-18 15:48:48', 0),
(565, 'img_20160218_224950.jpg', 'image/jpeg', '', '', '', '2016-02-18 15:50:49', '2016-02-18 15:50:49', 0),
(566, 'img_20160219_012542.jpg', 'image/jpeg', '', '', '', '2016-02-18 18:42:25', '2016-02-18 18:42:25', 0),
(567, 'img_20160219_164001.png', 'image/png', 'Foto Mini Iskandar', '', 'Foto Mini Iskandar', '2016-02-19 09:01:41', '2016-02-19 09:01:41', 0),
(568, 'img_20160220_052158.jpg', 'image/jpeg', 'Foto BORIMIN', '', 'Foto BORIMIN', '2016-02-19 22:58:21', '2016-02-19 22:58:21', 0),
(569, 'img_20160222_074839.pdf', 'images/jpeg', 'Foto asdf', '', 'Foto asdf', '2016-02-22 00:39:48', '2016-02-22 00:39:48', 0),
(570, 'img_20160222_070140.pdf', 'images/jpeg', 'Foto asdf', '', 'Foto asdf', '2016-02-22 00:40:01', '2016-02-22 00:40:01', 0),
(571, 'img_20160222_070440.pdf', 'images/jpeg', 'Foto asdf', '', 'Foto asdf', '2016-02-22 00:40:04', '2016-02-22 00:40:04', 0),
(572, 'img_20160226_083349.JPG', 'image/jpeg', 'Foto Ghofar Ismail', '', 'Foto Ghofar Ismail', '2016-02-26 01:49:33', '2016-02-26 01:49:33', 0),
(573, 'img_20160226_113646.jpg', 'image/jpeg', 'Foto TEMUDIYONO', '', 'Foto TEMUDIYONO', '2016-02-26 04:46:36', '2016-02-26 04:46:36', 0),
(574, 'img_20160226_114458.jpg', 'image/jpeg', 'Foto TEMUDIYONO', '', 'Foto TEMUDIYONO', '2016-02-26 04:58:45', '2016-02-26 04:58:45', 0),
(575, 'img_20160226_125211.jpg', 'image/jpeg', 'Foto TEMUDIYONO', '', 'Foto TEMUDIYONO', '2016-02-26 05:11:53', '2016-02-26 05:11:53', 0),
(576, 'img_20160226_125519.jpg', 'image/jpeg', 'Foto TEMUDIYONO', '', 'Foto TEMUDIYONO', '2016-02-26 05:19:55', '2016-02-26 05:19:55', 0),
(577, 'img_20160229_002240.jpg', 'image/jpeg', 'Foto Krisnamurti Pramudito', '', 'Foto Krisnamurti Pramudito', '2016-02-28 17:40:22', '2016-02-28 17:40:22', 0),
(578, 'img_20160304_002830.jpg', 'image/jpeg', 'Foto Krisnamurti', '', 'Foto Krisnamurti', '2016-03-03 17:30:28', '2016-03-03 17:30:28', 0),
(579, 'img_20160309_124008.jpg', 'image/jpeg', 'Foto Noer Sony Subekti', '', 'Foto Noer Sony Subekti', '2016-03-09 05:08:40', '2016-03-09 05:08:40', 0),
(580, 'img_20160310_050233.jpg', 'image/jpeg', '', '', '', '2016-03-09 22:33:03', '2016-03-09 22:33:03', 0),
(581, 'img_20160312_023007.pdf', 'images/jpeg', 'Foto Lestari Ningsih', '', 'Foto Lestari Ningsih', '2016-03-11 19:07:30', '2016-03-11 19:07:30', 0),
(582, 'img_20160312_020708.pdf', 'images/jpeg', 'Foto Lestari Ningsih', '', 'Foto Lestari Ningsih', '2016-03-11 19:08:07', '2016-03-11 19:08:07', 0),
(583, 'img_20160312_045501.jpg', 'image/jpeg', 'Foto arsa100seed@gmail.com', '', 'Foto arsa100seed@gmail.com', '2016-03-11 21:01:56', '2016-03-11 21:01:56', 0),
(584, 'img_20160312_143951.pdf', 'images/jpeg', 'Foto Sayyidina Rajif Khasan Al Assegaf', '', 'Foto Sayyidina Rajif Khasan Al Assegaf', '2016-03-12 07:51:39', '2016-03-12 07:51:39', 0),
(585, 'img_20160312_153222.jpg', 'image/jpeg', 'Foto TEMUDIYONO', '', 'Foto TEMUDIYONO', '2016-03-12 08:22:33', '2016-03-12 08:22:33', 0),
(586, 'img_20160314_045006.jpg', 'image/jpeg', '', '', '', '2016-03-13 21:06:50', '2016-03-13 21:06:50', 0),
(587, 'img_20160315_074440.jpg', 'image/jpeg', 'Foto NUR HANDAYANI', '', 'Foto NUR HANDAYANI', '2016-03-15 00:40:44', '2016-03-15 00:40:44', 0),
(588, 'img_20160316_052155.jpg', 'image/jpeg', '', '', '', '2016-03-15 22:55:21', '2016-03-15 22:55:21', 0),
(589, 'img_20160316_064600.png', 'image/png', '', '', '', '2016-03-15 23:00:46', '2016-03-15 23:00:46', 0),
(590, 'img_20160318_173029.jpg', 'image/jpeg', '', '', '', '2016-03-18 10:29:30', '2016-03-18 10:29:30', 0),
(593, 'img_20160318_183602.jpg', 'image/jpeg', '', '', '', '2016-03-18 11:02:36', '2016-03-18 11:02:36', 0),
(594, 'img_20160318_185442.png', 'image/png', '', '', '', '2016-03-18 11:42:54', '2016-03-18 11:42:54', 0),
(595, 'img_20160318_182847.png', 'image/png', '', '', '', '2016-03-18 11:47:29', '2016-03-18 11:47:29', 0),
(596, 'img_20160318_195507.png', 'image/png', '', '', '', '2016-03-18 12:07:55', '2016-03-18 12:07:55', 0),
(597, 'img_20160318_190432.png', 'image/png', '', '', '', '2016-03-18 12:32:04', '2016-03-18 12:32:04', 0),
(598, 'img_20160318_192835.png', 'image/png', '', '', '', '2016-03-18 12:35:28', '2016-03-18 12:35:28', 0),
(599, 'img_20160318_192538.png', 'image/png', '', '', '', '2016-03-18 12:38:25', '2016-03-18 12:38:25', 0),
(600, 'img_20160319_005322.pdf', 'images/jpeg', 'Foto Alwi Attamimi', '', 'Foto Alwi Attamimi', '2016-03-18 17:22:53', '2016-03-18 17:22:53', 0),
(601, 'img_20160319_031123.pdf', 'images/jpeg', 'Foto Cahyadi', '', 'Foto Cahyadi', '2016-03-18 20:23:11', '2016-03-18 20:23:11', 0),
(602, 'img_20160319_151022.jpg', 'image/jpeg', 'Foto vieqi', '', 'Foto vieqi', '2016-03-19 08:22:10', '2016-03-19 08:22:10', 0),
(603, 'img_20160324_165354.png', 'image/png', '', '', '', '2016-03-24 09:54:53', '2016-03-24 09:54:53', 0),
(604, 'img_20160324_160857.png', 'image/png', '', '', '', '2016-03-24 09:57:09', '2016-03-24 09:57:09', 0),
(605, 'img_20160325_013935.jpg', 'image/jpeg', 'Foto MOH.ARIS KUSHARYANTO,S.STP', '', 'Foto MOH.ARIS KUSHARYANTO,S.STP', '2016-03-24 18:35:40', '2016-03-24 18:35:40', 0),
(606, 'img_20160325_024206.jpg', 'image/jpeg', 'Foto ENDAH SULISTYARINI,S.ST', '', 'Foto ENDAH SULISTYARINI,S.ST', '2016-03-24 19:06:42', '2016-03-24 19:06:42', 0),
(607, 'img_20160329_100824.pdf', 'images/jpeg', 'Foto MOH.ARIS KUSHARYANTO,S.STP', '', 'Foto MOH.ARIS KUSHARYANTO,S.STP', '2016-03-29 03:24:08', '2016-03-29 03:24:08', 0),
(608, 'img_20160405_220518.pdf', 'images/jpeg', 'Foto Yesser E', '', 'Foto Yesser E', '2016-04-05 15:18:05', '2016-04-05 15:18:05', 0),
(609, 'img_20160405_221818.pdf', 'images/jpeg', 'Foto Yesser E', '', 'Foto Yesser E', '2016-04-05 15:18:18', '2016-04-05 15:18:18', 0),
(610, 'img_20160406_060514.jpg', 'image/jpeg', 'Foto Ngabidin Nur Cahyo', '', 'Foto Ngabidin Nur Cahyo', '2016-04-05 23:14:06', '2016-04-05 23:14:06', 0),
(611, 'img_20160406_060959.jpg', 'image/jpeg', 'Foto Achmad Fauzi', '', 'Foto Achmad Fauzi', '2016-04-05 23:59:09', '2016-04-05 23:59:09', 0),
(612, 'img_20160415_162200.jpg', 'image/jpeg', 'Foto Dwi Arie Trisnawanto ', '', 'Foto Dwi Arie Trisnawanto ', '2016-04-15 09:00:23', '2016-04-15 09:00:23', 0),
(613, 'img_20160415_163611.jpg', 'image/jpeg', 'Foto Andri Hartono ', '', 'Foto Andri Hartono ', '2016-04-15 09:11:37', '2016-04-15 09:11:37', 0),
(614, 'img_20160512_191436.jpg', 'image/jpeg', '', '', '', '2016-05-12 12:36:14', '2016-05-12 12:36:14', 0),
(615, 'img_20160608_060537.pdf', 'images/jpeg', 'Foto Devi bin Idrus', '', 'Foto Devi bin Idrus', '2016-06-07 23:37:05', '2016-06-07 23:37:05', 0),
(616, 'img_20160608_063737.pdf', 'images/jpeg', 'Foto Devi bin Idrus', '', 'Foto Devi bin Idrus', '2016-06-07 23:37:37', '2016-06-07 23:37:37', 0),
(617, 'img_20160608_064837.pdf', 'images/jpeg', 'Foto Devi bin Idrus', '', 'Foto Devi bin Idrus', '2016-06-07 23:37:48', '2016-06-07 23:37:48', 0),
(618, 'img_20160608_060038.pdf', 'images/jpeg', 'Foto Devi bin Idrus', '', 'Foto Devi bin Idrus', '2016-06-07 23:38:00', '2016-06-07 23:38:00', 0),
(619, 'img_20160728_211940.pdf', 'images/jpeg', 'Foto Zaki', '', 'Foto Zaki', '2016-07-28 14:40:19', '2016-07-28 14:40:19', 0),
(620, 'img_20160728_214340.pdf', 'images/jpeg', 'Foto Zaki', '', 'Foto Zaki', '2016-07-28 14:40:43', '2016-07-28 14:40:43', 0),
(621, 'img_20160815_024459.pdf', 'images/jpeg', 'Foto Irawan Laksono', '', 'Foto Irawan Laksono', '2016-08-14 19:59:44', '2016-08-14 19:59:44', 0),
(622, 'img_20160820_152255.pdf', 'images/jpeg', 'Foto Amna Widiaksono', '', 'Foto Amna Widiaksono', '2016-08-20 08:55:22', '2016-08-20 08:55:22', 0),
(623, 'img_20160913_142929.jpg', 'image/jpeg', 'seminar14sep', '', 'seminar14sep', '2016-09-13 07:29:29', '2016-09-13 07:29:29', 0),
(624, 'img_20160923_134017.png', 'image/png', '', '', '', '2016-09-23 06:17:41', '2016-09-23 06:17:41', 0),
(625, 'img_20160928_195333.jpg', 'image/jpeg', 'Foto Agni Hotna Leliwati', '', 'Foto Agni Hotna Leliwati', '2016-09-28 12:33:53', '2016-09-28 12:33:53', 0),
(626, 'img_20160928_194154.jpg', 'image/jpeg', 'Foto Agni Hotna Leliwati', '', 'Foto Agni Hotna Leliwati', '2016-09-28 12:54:41', '2016-09-28 12:54:41', 0),
(627, 'img_20160928_203715.jpg', 'image/jpeg', 'Foto Agni Hotna Leliwati', '', 'Foto Agni Hotna Leliwati', '2016-09-28 13:15:37', '2016-09-28 13:15:37', 0),
(628, 'img_20160928_202833.jpg', 'image/jpeg', 'Foto Agni Hotna Leliwati', '', 'Foto Agni Hotna Leliwati', '2016-09-28 13:33:29', '2016-09-28 13:33:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ms_menu`
--

CREATE TABLE IF NOT EXISTS `ms_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ms_menu`
--

INSERT INTO `ms_menu` (`id`, `code`, `title`, `created_at`, `updated_at`) VALUES
(1, 'top_menu', 'Menu TOP', '2015-04-14 09:22:00', '2015-08-14 09:23:44'),
(2, 'user_menu_1', 'About Community', '2015-04-14 09:23:53', '2016-01-18 06:20:39'),
(3, 'user_menu_2', 'Product Enagic', '2015-04-14 09:28:07', '2016-02-06 21:16:59'),
(4, 'user_menu_3', 'Social Media', '2015-04-14 09:28:31', '2016-01-25 20:18:03'),
(5, 'user_menu_4', 'Investor Relations', '2015-04-14 09:28:46', '2015-04-18 15:15:30'),
(6, 'user_menu_5', 'Media', '2015-04-14 09:29:00', '2015-08-14 19:14:38'),
(7, 'num', 'Navigasi-utama', '2015-08-14 09:26:33', '2015-08-14 09:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `ms_menu_types`
--

CREATE TABLE IF NOT EXISTS `ms_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ms_menu_types`
--

INSERT INTO `ms_menu_types` (`id`, `code`, `title`) VALUES
(1, 'category', 'Kategori'),
(2, 'post', 'Kiriman / Post'),
(3, 'portfolio', 'Portfolio / Galeri'),
(4, 'rss', 'RSS Feed'),
(5, 'link', 'Link / Url'),
(6, 'products', 'List of product'),
(7, 'nearbymitra', 'Nearby Mitra'),
(8, 'mitracity', 'Mitra City'),
(9, 'ms_portfolio_category', 'Portfolio-Group');

-- --------------------------------------------------------

--
-- Table structure for table `ms_notification`
--

CREATE TABLE IF NOT EXISTS `ms_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ms_notification`
--

INSERT INTO `ms_notification` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(6, 'judul 2', 'Gemar Sehati mempersembahkan:\nKanGen Water Seminar di Padang panjang\nSabtu, 23 april 2016\nsesi 1 pk 09.00 WIB - selesai | sesi 2 pk 13.00-selesai\nTempat: Aula A Hotel Pangeran - Jl. KH.A.DAHLAN No 7 Padang panjang', '2016-03-18 06:32:15', '0000-00-00 00:00:00'),
(5, 'judul', 'Ikuti Gemarsehati Bootcamp sessi-4 di Surabaya, Tanggal : 6-7 Agustus 2016', '2016-03-18 06:32:27', '0000-00-00 00:00:00'),
(7, 'Format Undangan SEMINAR STANDARD GEMARSEHATI: \r\nsilahkan di download di URL berikut :\r\nhttp://www.gemarsehati.com/upload/file/template_undangan_gemarsehati_2016.cdr\r\n', 'Format Undangan SEMINAR STANDARD GEMARSEHATI: \nsilahkan di download di URL berikut :\nhttp://www.gemarsehati.com/upload/file/template_undangan_gemarsehati_2016.cdr\n', '2016-04-12 07:19:21', '2016-03-24 05:50:44'),
(8, 'Reminder', 'Format Undangan SEMINAR STANDARD GEMARSEHATI: \r\nsilahkan di download di URL berikut :\r\nhttp://www.gemarsehati.com/upload/file/template_undangan_gemarsehati_2016.cdr', '2016-04-12 07:19:52', '2016-04-12 07:19:52'),
(9, 'Event Gemarsehati', 'Dear All the GREAT team,\r\nGemarsehati training di Surabaya:\r\nKYNU EAT and CHAT CAFE - Sabtu, 24 Mei 2016. Jam 13.00 - selesai\r\nPembicara : Bu Syofia dan Yussa Marulli , ST, CHt (6A3 Surabaya)', '2016-04-12 23:51:27', '2016-04-12 23:51:27'),
(10, 'Seminar 501 System Indonesia', 'Sabtu, 14 Mei 2016 - 13.00 WIB\r\nKYNU EAT and CHAT Cafe - Jl. Bratang Binangun I/23 - SBY\r\nEducator :\r\nIbu Dini & Ibu Sofia\r\nGuest Speaker :\r\nIr. Yussa Marulli (6A3 Enagic Indonesia)\r\nInfo :\r\n0853.1234.5959', '2016-05-13 07:51:25', '2016-05-13 07:51:25'),
(11, 'Seminar 501 System Indonesia (Reminder)', 'Seminar 501 System Indonesia. (Reminder)\r\nSabtu, 14 Mei 2016 - 13.00 WIB KYNU EAT and CHAT Cafe - Jl. Bratang Binangun I/23 - SBY Educator : Ibu Dini & Ibu Sofia Guest Speaker : Ir. Yussa Marulli (6A3 Enagic Indonesia) Info : 0853.1234.5959', '2016-05-13 23:51:14', '2016-05-13 23:51:14'),
(12, 'Opening Rumah Edukasi GEMARSEHATI', 'Mengharap kehadiran seluruh kawan kawan GemarSehati :\r\nHari/tgl : minggu, 12 Juni 2016 - 15.00 WIB - selesai\r\nDilanjut sholat terawih berjamaah di masjid depan Rumah Edukasi Gemarsehati\r\nLokasi : Jl.Medokan Asri Barat I Blok P2 Surabaya', '2016-06-09 10:14:53', '2016-06-09 10:14:53'),
(13, 'App Gemarsehati IOS Version', 'Untuk pengguna IOS, kini app gemarsehati sudah hadir di app store. Berikut URL nya : https://itunes.apple.com/us/app/kangen-gemarsehati/id1135881438?mt=8', '2016-07-22 05:59:45', '2016-07-22 05:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `ms_portfolio_category`
--

CREATE TABLE IF NOT EXISTS `ms_portfolio_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_portfolio_category`
--

INSERT INTO `ms_portfolio_category` (`id`, `name`) VALUES
(1, 'Photo'),
(2, 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `ms_portfolios`
--

CREATE TABLE IF NOT EXISTS `ms_portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `enabled` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `featured` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ms_categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ms_portfolios`
--

INSERT INTO `ms_portfolios` (`id`, `title`, `description`, `parent_id`, `enabled`, `featured`, `created_at`, `updated_at`, `ms_categories_id`) VALUES
(1, 'Enagic Gemarsehati', '', 0, '1', '0', '2015-08-14 00:36:09', '2016-03-24 09:59:27', 1),
(3, 'VIDEO KANGEN WATER', '', 0, '1', '', '2015-09-14 07:03:02', '2016-03-24 09:59:35', 2),
(9, 'Bootcamp Solo', 'Kumpulan Kegiatan Acara Bootcamp Gemarsehati-3 di Hotel Alana Solo, 6-7 Feb 2016', 0, '1', '', '2016-02-18 02:47:24', '2016-03-24 09:59:21', 1),
(10, 'VIDEO | TESTIMONI KESEHATAN', 'Folder ini berisi video testimoni pengguna Kangen Water', 0, '1', '', '2016-03-18 12:45:39', '2016-03-24 10:00:39', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ms_posts`
--

CREATE TABLE IF NOT EXISTS `ms_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `ms_user_id` int(11) NOT NULL,
  `ms_portfolio_id` int(11) NOT NULL,
  `ms_status_posts_id` int(11) NOT NULL,
  `show_comment` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `featured` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `ms_posts`
--

INSERT INTO `ms_posts` (`id`, `title`, `description`, `meta_description`, `ms_media_id`, `ms_user_id`, `ms_portfolio_id`, `ms_status_posts_id`, `show_comment`, `featured`, `created_at`, `updated_at`) VALUES
(28, 'Microclustered', '<p>Kangen water mengandung molekul yg sangat kecil (5-6 molekul) dibanding dgn molekul air normal (15-20 molekul), sehingga cepat&amp;optimal terserap sel tubuh.</p>', 'Kangen water mengandung molekul yg sangat kecil (5-6 molekul) dibanding dgn molekul air normal (15-20 molekul), sehingga cepat&amp;optimal terserap sel tubuh.', 0, 1, 0, 2, '', '1', '2015-08-14 02:17:04', '2016-02-16 22:24:06'),
(30, 'Benefit', '<p>Sebagai terapi membantu proses penyembuhan bila terkena sakit seperti : Asam lambung, Radang perut, Maag, Asam Urat, Sembelit, Kolesterol, Radang Perut, alergi &amp; sinus dll.</p>', 'Sebagai terapi membantu proses penyembuhan bila terkena sakit seperti : Asam lambung, Radang perut, Maag, Asam Urat, Sembelit, Kolesterol, Radang Perut, alergi &amp; sinus dll.', 0, 1, 0, 2, '', '1', '2015-08-14 02:17:43', '2016-02-16 22:24:06'),
(31, 'Antioxidant', '<p>Kangen water memiliki ORP (Oxidan Reduction Potensial) yang negatif (-400mV sampai dengan -700mV), artinya memiliki Antioxidant yang sangat tinggi.</p>', 'Kangen water memiliki ORP (Oxidan Reduction Potensial) yang negatif (-400mV sampai dengan -700mV), artinya memiliki Antioxidant yang sangat tinggi.', 0, 1, 0, 2, '', '1', '2015-08-14 02:17:58', '2016-02-16 22:24:06'),
(33, 'Alkaline', '<p>Kangen water dapat menyeimbangkan pH air didalam tubuh dan menetralisir tubuh dari asam, sehingga tubuh kita kembali pada kondisi yang seimbang.</p>', 'Kangen water dapat menyeimbangkan pH air didalam tubuh dan menetralisir tubuh dari asam, sehingga tubuh kita kembali pada kondisi yang seimbang.', 0, 1, 0, 2, '', '1', '2015-08-14 02:18:19', '2016-02-16 22:24:06'),
(37, 'Apakah pH dan Manfaatnya ?', '<div class="section the_content has_content">\r\n<div class="section_wrapper">\r\n<div class="the_content_wrapper">\r\n<div class="itemIntroText">\r\n<p>pH adalah kepanjangan dari pangkat hidrogen/ power of hydrogen / potensial hydrogen yaitu merupakan tingkatan asam basa suatu larutan yang diukur dengan skala 0 s/d 14 . Tinggi rendahnya pH air sangat dipengaruhi oleh kandungan mineral lain yang terdapat dalam air.<!-- pagebreak --><br /> pH air standar adalah 7 s/d 8,5 . pH Air dibawah 7 disebut asam, sedangkan diatas 8,5 disebut basa.</p>\r\n<p>pH yang normal untuk berbagai peggunaan seperti :</p>\r\n<p>&middot; Air minum mineral antara 7 s/d 8,5<br /> &middot; Air minum Reverse Osmosis / Demineral antara 5,0 s/d 6,5<br /> &middot; Ikan hias di aquarium antara 6,5 s/d 7,5</p>\r\n<p>Pengaruh pH terhadap air adalah sangat besar, terutama untuk usaha air minum.<br /> jika pH air terlalu rendah akan berasa pahit /asam, sedangkan jika terlalu tinggi maka air akan berasa tidak enak (kental/licin).<br /> Untuk ikan hias pH yang terlalu rendah atau tinggi akan menyebabkan ikan tersebut mati.<br /> pH Tubuh manusia adalah 7. Banyak ahli Kesehatan mengatakan bahwa tubuh yang ber Alkali dapat mencegah berbagai macam penyakit degeneratif,<br /> termasuk sel-sel kanker, yang dapat terbentuk dengan mudah dalam Tubuh yang bersifat Asam.</p>\r\n<p>Sebab salah satu fungsi air adalah mendorong racun keluar dari dalam tubuh, sehingga Departemen Kesehatan merekomendasikan untuk pH air<br /> yang dikonsumsi adalah berkisar antara 7 &ndash; 8,5, Jika kita minum air dengan pH di bawah 6,5 itu adalah air yang sifatnya asam,<br /> dan hal itu adalah sangat kurang baik bagi tubuh kita.<br /> Beberapa gajala yang biasanya terjadi jika darah kita bersifat Asam, yaitu Gangguan pencernaan, mudah lelah, rasa sakit pada sendi.</p>\r\n<p>Baru-baru ini ditemukan bahwa betapa pentingnya keseimbangan pH dalam tubuh. Pada kenyataannya, tubuh manusia harus lebih basa daripada asam.&nbsp;Gaya hidup masyarakat modern yang banyak mengkonsumsi makanan siap saji dan banyak mengandung asam adalah penyebab kondisi tubuh kita menjadi asam.<br /> Pola makan yang sehat adalah makanan yg komposisinya terdiri dari 20% ber-Acid( Daging, ikan, Telur dll ) dan 80% ber-Alkali( Sayur &amp; buah-2an ).<br /> Namun faktanya sering berlawanan, dalam kehidupan sehari-hari justru sebaliknya yang kita makan adalah 80% ber-Acid ( Nasi &amp; lauk ) sedangkan yang &nbsp;ber-Alkali (Sayur dan buah)hanya 20% saja.Pola makan yang tidak sehat ini, bila berlangsung bertahun-tahun akan membuat pH darah cenderung ke arah asam &nbsp;dan bila pH darah sudah menjadi asam maka darah menjadi kental, efek darah yang mengental inilah yang menyebabkan menumpuknya berbagai Toxin (Racun) mengendap serta membuat pompa darah (jantung) kerjanya menjadi lebih berat sehingga berpotensi munculnya berbagai penyakit diantaranya : Stroke, Kolesterol,<br /> DarahTinggi, Diabetes, Gagal ginjal, Tumor, Kanker dll.</p>\r\n<p>Selain dari pola makan yang salah, air yang anda minum juga mempengaruhi keasaman tubuh anda. Karena disadari / tidak,-air yang kita minum itu sebenarnya terbagi menjadi 2 jenis :air hidup dan air mati.<br /> Air Mati Adalah air yang tidak memiliki kadar alkalin dan tidak hexagonal, seperti Minuman dalam kemasan : Air dengan TDS Nol, Air tanpa mineral (Demineral water), Air RO (Reverse Osmosis), Air Suling yang dicampur dengan kafein, gula, acid fosforik, acid benzoik, Air Masak, Air terjemur sinar Matahari dll.<br /> Air Hidup, adalah air yang memberikan kehidupan karena memiliki kandungan oksigen, seperti : air sumur, air Gunung, air salju dan air dari mata air &nbsp;(yang tidak dimasak atau mengalami proses pemanasan).<br /> Air Hidup memiliki kandungan seperti ; air mineral dan air alkaline.</p>\r\n<p>Air hidup beresonansi dengan getaran energi tubuh Anda. Bila Anda minum air hidup, itu menguatkan, menjiwai dan mengabadikan gaya hidup Anda sendiri. Sedangkan bila Minum air mati akan memiliki efek merugikan karena tubuh harus mengeluarkan energi yang sangat berharga &ldquo;menyalakannya&rdquo; dan memberikan energi sebelum dapat digunakan untuk fungsi tubuh.&nbsp;Air hidup menawarkan banyak oksigen yang tersedia bagi sel-sel Anda.</p>\r\n<p>Apa akibatnya jika tubuh terlalu asam?<br /> Jika ph di bawah 7 maka itu artinya tubuh terlalu asam. Ini sangat berbahaya karena tubuh tidak bisa menolerir ketidakseimbangan asam dalam waktu lama. &nbsp;Jika pH terlalu rendah itu artinya terjadi penumpukan karbondioksida dalam darah. Karbondioksida yang tinggi akan membuat pernafasan jadi sulit. &nbsp;Asam yang tinggi juga memungkinkan kolesterol buruk atau LDL (Low Density Lipoprotein) menumpuk cepat dalam arteri yang merusak dinding pembuluh darah dan menciptakan penumpukan plak.</p>\r\n<p>Orang yang memiliki tubuh terlalu asam lebih gampang terkena bakteri atau virus. Asal tahu saja, sel kanker lebih mudah berkembang jika tubuh dalam kondisi asam yang berlebihan.Ternyata Usus Buntu Berguna bagi Sistem Kekebalan Tubuh</p>\r\n<p>FAKTA DAN KEBENARANNYA<br /> kalau anda sakit, maka dokter menyarankan anda minum dan konsumsi banyak sayur dan buah.. kenapa?<br /> karena orang sakit akibat pH air dalam tubuh terlalu asam, maka harus dinetralkan dengan pH alkali atau pH basah (buah, sayur2an)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '\r\n\r\n\r\n\r\npH adalah kepanjangan dari pangkat hidrogen/ power of hydrogen / potensial hydrogen yaitu merupakan tingkatan asam basa suatu larutan yang diukur dengan skala 0 s/d 14 . Tinggi rendahnya pH air sangat dipengaruhi oleh kandungan mineral lain yang terdapat dalam air. pH air standar adalah 7 s/d 8,5 . pH Air dibawah 7 disebut asam, sedangkan diatas 8,5 disebut basa.\r\npH yang normal untuk berbagai peggunaan seperti :\r\n&middot; Air minum mineral antara 7 s/d 8,5 &middot; Air minum Reverse Osmosis / Demineral antara 5,0 s/d 6,5 &middot; Ikan hias di aquarium antara 6,5 s/d 7,5\r\nPengaruh pH terhadap air adalah sangat besar, terutama untuk usaha air minum. jika pH air terlalu rendah akan berasa pahit /asam, sedangkan jika terlalu tinggi maka air akan berasa tidak enak (kental/licin). Untuk ikan hias pH yang terlalu rendah atau tinggi akan menyebabkan ikan tersebut mati. pH Tubuh manusia adalah 7. Banyak ahli Kesehatan mengatakan bahwa tubuh yang ber Alkali dapat mencegah berbagai macam penyakit degeneratif, termasuk sel-sel kanker, yang dapat terbentuk dengan mudah dalam Tubuh yang bersifat Asam.\r\nSebab salah satu fungsi air adalah mendorong racun keluar dari dalam tubuh, sehingga Departemen Kesehatan merekomendasikan untuk pH air yang dikonsumsi adalah berkisar antara 7 &ndash; 8,5, Jika kita minum air dengan pH di bawah 6,5 itu adalah air yang sifatnya asam, dan hal itu adalah sangat kurang baik bagi tubuh kita. Beberapa gajala yang biasanya terjadi jika darah kita bersifat Asam, yaitu Gangguan pencernaan, mudah lelah, rasa sakit pada sendi.\r\nBaru-baru ini ditemukan bahwa betapa pentingnya keseimbangan pH dalam tubuh. Pada kenyataannya, tubuh manusia harus lebih basa daripada asam.&nbsp;Gaya hidup masyarakat modern yang banyak mengkonsumsi makanan siap saji dan banyak mengandung asam adalah penyebab kondisi tubuh kita menjadi asam. Pola makan yang sehat adalah makanan yg komposisinya terdiri dari 20% ber-Acid( Daging, ikan, Telur dll ) dan 80% ber-Alkali( Sayur &amp; buah-2an ). Namun faktanya sering berlawanan, dalam kehidupan sehari-hari justru sebaliknya yang kita makan adalah 80% ber-Acid ( Nasi &amp; lauk ) sedangkan yang &nbsp;ber-Alkali (Sayur dan buah)hanya 20% saja.Pola makan yang tidak sehat ini, bila berlangsung bertahun-tahun akan membuat pH darah cenderung ke arah asam &nbsp;dan bila pH darah sudah menjadi asam maka darah menjadi kental, efek darah yang mengental inilah yang menyebabkan menumpuknya berbagai Toxin (Racun) mengendap serta membuat pompa darah (jantung) kerjanya menjadi lebih berat sehingga berpotensi munculnya berbagai penyakit diantaranya : Stroke, Kolesterol, DarahTinggi, Diabetes, Gagal ginjal, Tumor, Kanker dll.\r\nSelain dari pola makan yang salah, air yang anda minum juga mempengaruhi keasaman tubuh anda. Karena disadari / tidak,-air yang kita minum itu sebenarnya terbagi menjadi 2 jenis :air hidup dan air mati. Air Mati Adalah air yang tidak memiliki kadar alkalin dan tidak hexagonal, seperti Minuman dalam kemasan : Air dengan TDS Nol, Air tanpa mineral (Demineral water), Air RO (Reverse Osmosis), Air Suling yang dicampur dengan kafein, gula, acid fosforik, acid benzoik, Air Masak, Air terjemur sinar Matahari dll. Air Hidup, adalah air yang memberikan kehidupan karena memiliki kandungan oksigen, seperti : air sumur, air Gunung, air salju dan air dari mata air &nbsp;(yang tidak dimasak atau mengalami proses pemanasan). Air Hidup memiliki kandungan seperti ; air mineral dan air alkaline.\r\nAir hidup beresonansi dengan getaran energi tubuh Anda. Bila Anda minum air hidup, itu menguatkan, menjiwai dan mengabadikan gaya hidup Anda sendiri. Sedangkan bila Minum air mati akan memiliki efek merugikan karena tubuh harus mengeluarkan energi yang sangat berharga &ldquo;menyalakannya&rdquo; dan memberikan energi sebelum dapat digunakan untuk fungsi tubuh.&nbsp;Air hidup menawarkan banyak oksigen yang tersedia bagi sel-sel Anda.\r\nApa akibatnya jika tubuh terlalu asam? Jika ph di bawah 7 maka itu artinya tubuh terlalu asam. Ini sangat berbahaya karena tubuh tidak bisa menolerir ketidakseimbangan asam dalam waktu lama. &nbsp;Jika pH terlalu rendah itu artinya terjadi penumpukan karbondioksida dalam darah. Karbondioksida yang tinggi akan membuat pernafasan jadi sulit. &nbsp;Asam yang tinggi juga memungkinkan kolesterol buruk atau LDL (Low Density Lipoprotein) menumpuk cepat dalam arteri yang merusak dinding pembuluh darah dan menciptakan penumpukan plak.\r\nOrang yang memiliki tubuh terlalu asam lebih gampang terkena bakteri atau virus. Asal tahu saja, sel kanker lebih mudah berkembang jika tubuh dalam kondisi asam yang berlebihan.Ternyata Usus Buntu Berguna bagi Sistem Kekebalan Tubuh\r\nFAKTA DAN KEBENARANNYA kalau anda sakit, maka dokter menyarankan anda minum dan konsumsi banyak sayur dan buah.. kenapa? karena orang sakit akibat pH air dalam tubuh terlalu asam, maka harus dinetralkan dengan pH alkali atau pH basah (buah, sayur2an)\r\n\r\n\r\n\r\n', 462, 1, 1, 2, '1', '', '2015-09-04 08:35:29', '2016-02-16 22:24:06'),
(40, 'Frequently asked questions (FAQ)', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...</p>', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wi...', 0, 1, 0, 2, '', '', '2015-08-18 23:42:21', '2016-02-16 22:24:06'),
(41, 'Apa itu Antioxidant?', '<div class="section the_content has_content">\r\n<div class="section_wrapper">\r\n<div class="the_content_wrapper">\r\n<p>Tentunya Anda sering mendengar mengenai antioksidan yang terkandung dalam berbagai makanan ataupun senyawa tertentu yang memang berfungsi sebagai antioksidan. Antioksidan merupakan sebutan bagi senyawa kimia tertentu yang berfungsi dalam mencegah terjadinya oksidasi, karena sifatnya yang lebih mudah untuk teroksidasi.<!-- pagebreak --> Lalu, apa Manfaat antioksidan bagi tubuh Kita?</p>\r\n<p>RADIKAL BEBAS</p>\r\n<p>Sebelum Kita membahas antioksidan lebih lanjut, terlebih dahulu Kita harus mengenal apa itu radikal bebas, apa bahayanya bagi tubuh? Baru, setelah itu Kita bisa melihat sebenarnya dimana peran penting antioksidan dalam memperbaiki dan menjaga kualitas kesehatan tubuh.</p>\r\n<p>Radikal bebas adalah molekul yang tidak stabil, oleh karena itu selalu berusaha untuk mencapai kestabilan dengan cara mengoksidasi molekul lain. Di dalam tubuh, radikal bebas akan berusaha mencapai kestabilan dengan cara mengoksidasi molekul pada sel-sel tubuh, sehingga molekul tersebut menjadi tidak stabil.</p>\r\n<p>Molekul yang tidak stabil yang ada di dalam sel merupakan penyebab utama dari terbentuknya sel kanker sebagai hasil dari reaksi rantai akibat serangan radikal bebas. Layaknya radikal bebas, molekul yang tidak itu juga akan cenderung untuk mencapai kestabilan dengan cara mengoksidasi molekul lain yang juga ada di dalam sel, hal itu terus terjadi sebagai usaha agar pada tingkat selular tercapai kestabilan.</p>\r\n<p>Akibat reaksi berantai yang terjadi di tingkat selular sebagai akibat dari adanya radikal bebas akan membuat sel-sel tubuh mengalami deformasi, rusak, sehingga menadi lemah. Jika sel-sel tubuh menjadi lemah, maka secara otomatis tubuh Kita pun juga akan menjadi lemah. Tidak hanya itu, sel kanker pun dapat terjadi akibat dari reaksi oksidasi yang secara terus-menerus terjadi akibat adanya serangan radikal bebas.</p>\r\n<p>Sebenarnya, adanya radikal bebas di dalam tubuh merupakan hal yang normal, namun jika jumlahnya sangat banyak dapat melemahkan tubuh bahkan dapat menimbulkan terjadinya kanker.</p>\r\n<p>Kerusakan yang Ditimbulkan Radikal Bebas</p>\r\n<p>Seperti yang telah disebutkan di atas bahwa serangan radikal bebas dapat menyebabkan melemahnya tubuh yang berarti system imun pun juga ikut melemah. Nah, jika system imun melemah maka tubuh cenderung mudah untuk terserang penyakit. Tidak hanya itu, serangan radikal bebas juga dapat merusak sel-sel tubuh, sehingga bisa mnegalami degenerasi ataupun deformasi. Kombinasi dari kdua hal terebut berdampak sangat merugikan bagi tubuh. Tubuh dapat menderita degenerasi otot dan jaringan tubuh, penyakit jantung, diabetes, kanker serta berbagai permasalahan kesehatan lainnya.</p>\r\n<p>PERAN ANTIOKSIDAN</p>\r\n<p>Gaya hidup Kita yang tidak sehat dapat memicu masuknya radikal bebas ke dalam tubuh dalam jumlah yang banyak. Terekspos sinar matahari secara berlebihan juga dapat menjadi penyebab meningkatnya jumlah radikal bebas di dalam tubuh, ditambah lagi dengan kebiasaan merokok yang juga menjadi penyebab meningkatnya radikal bebas berbahaya di dalam tubuh.</p>\r\n<p>Jika sudah begitu, maka tubuh Kita membutuhkan suatu zat yang berperan untuk menstabilkan radikal bebas. Zat tersebut dikenal dengan sebutan antioksidan.</p>\r\n<p>Antioksidan berperan dalam menghentikan reaksi reduksi-oksidasi berantai yang disebabkan oleh radikal bebas dengan cara menetralkannya.</p>\r\n<p>Menurut National Cancer Institute, pengujian pada hewan telah menunjukkan bahwa antioksidan mampu mencegah terjadinya kerusakan tubuh akibat radikal bebas yang kemudian dapat berkaitan dengan munculnya kanker. Selain itu, para ahli juga meyakini bahwa antioksidan di dalam tubuh membantu memperlambat proses penuaan dan mungkin dapat meningkatkan masa hidup seseorang.</p>\r\n<p>Antioksidan juga mampu melindungi kulit Kita dari radiasi akibat terlalu lama terekspos sinar matahari.</p>\r\n<p>DARIMANA MENDAPATKAN ANTIOKSIDAN?</p>\r\n<p>Sumber utama untuk memperoleh antioksidan adalah dengan mengonsumsi AIR ANTIOKSIDAN dan sayur-sayuran dan buas-buahan. Dengan mengonsumsi sayur dan buah secara teratur berarti Anda telah membantu tubuh Anda untuk mencegah terjadinya berbagai penyakit, seperti resiko terkena penyakit jantung, penyakit saraf, kanker dan melemahnya system kekebalan tubuh.</p>\r\n<p>Berbagai penelitian menunjukkan bahwa cara efektif untuk memperoleh antioksidan adalah melalui AIR ANTIOKSIDAN dan makanan yang Kita konsumsi, bukan lewat suplemen. Tetapi, jika memang pemenuhan kebutuhan akan antioksidan dari makanan tidak tercukupi, Anda bisa mengkonsumsi AIR ANTIOKSIDAN. Oleh karena itu, untuk mendapatkan perlindungan yang maksimal dari antioksidan mulai dari sekarang latihlah diri Kita untuk senantiasa menjalankan gaya hidup sehat dengan banyak mengonsumsi AIR ANTIOKSIDAN, sayur-sayuran dan buah-buahan.<br /> Beberapa sayur dan buah yang kaya antioksidan adalah brokoli, cabai, bwang putih, wortel, bayam, tomat, minyak zaitun, the hijau, bit, minyak kelapa, beras merah, mangga, anggur, nanas, goji berry, acai berry, delima dan masih banyak lagi yang lainnya.<br /> Kandungan ion OH- yang kaya pada air KANGEN WATER tidak hanya memberikan cita rasa yang nikmat dan tingkat kebasaan yang tinggi (PH 8,5 s/d 9,5), namun menjadikan air KANGEN WATER mampu mencegah proses oksidasi pada sel kulit, otot, tulang, dan rambut.</p>\r\n<p>mau bukti antioxidant air KANGEN WATER?</p>\r\n<p>Coba ambil beberapa buah paku, kemudian rendam di air biasa &amp; tutup rapat &amp; diamkan selama beberapa hari, kemudian amati.</p>\r\n<p>Hasilnya :</p>\r\n<p>Paku pada air biasa akan berkarat (mengalami oksidasi), sementara paku pada air KANGEN WATER tidak berkarat (terlindung dari oksidasi).</p>\r\n<p>Bagaimana dengan tubuh kita yang meminum air biasa dan air KANGEN WATER ?</p>\r\n<p>Silahkan buktikan sendiri. Selamat mencoba</p>\r\n</div>\r\n</div>\r\n</div>', 'Tentunya Anda sering mendengar mengenai antioksidan yang terkandung dalam berbagai makanan ataupun senyawa tertentu yang memang berfungsi sebagai antioksidan. Antioksidan merupakan sebutan bagi senyawa kimia tertentu yang berfungsi dalam mencegah terjadinya oksidasi, karena sifatnya yang lebih mudah untuk teroksidasi. Lalu, apa Manfaat antioksidan bagi tubuh Kita?\r\nRADIKAL BEBAS\r\nSebelum Kita membahas antioksidan lebih lanjut, terlebih dahulu Kita harus mengenal apa itu radikal bebas, apa bahayanya bagi tubuh? Baru, setelah itu Kita bisa melihat sebenarnya dimana peran penting antioksidan dalam memperbaiki dan menjaga kualitas kesehatan tubuh.\r\nRadikal bebas adalah molekul yang tidak stabil, oleh karena itu selalu berusaha untuk mencapai kestabilan dengan cara mengoksidasi molekul lain. Di dalam tubuh, radikal bebas akan berusaha mencapai kestabilan dengan cara mengoksidasi molekul pada sel-sel tubuh, sehingga molekul tersebut menjadi tidak stabil.\r\nMolekul yang tidak stabil yang ada di dalam sel merupakan penyebab utama dari terbentuknya sel kanker sebagai hasil dari reaksi rantai akibat serangan radikal bebas. Layaknya radikal bebas, molekul yang tidak itu juga akan cenderung untuk mencapai kestabilan dengan cara mengoksidasi molekul lain yang juga ada di dalam sel, hal itu terus terjadi sebagai usaha agar pada tingkat selular tercapai kestabilan.\r\nAkibat reaksi berantai yang terjadi di tingkat selular sebagai akibat dari adanya radikal bebas akan membuat sel-sel tubuh mengalami deformasi, rusak, sehingga menadi lemah. Jika sel-sel tubuh menjadi lemah, maka secara otomatis tubuh Kita pun juga akan menjadi lemah. Tidak hanya itu, sel kanker pun dapat terjadi akibat dari reaksi oksidasi yang secara terus-menerus terjadi akibat adanya serangan radikal bebas.\r\nSebenarnya, adanya radikal bebas di dalam tubuh merupakan hal yang normal, namun jika jumlahnya sangat banyak dapat melemahkan tubuh bahkan dapat menimbulkan terjadinya kanker.\r\nKerusakan yang Ditimbulkan Radikal Bebas\r\nSeperti yang telah disebutkan di atas bahwa serangan radikal bebas dapat menyebabkan melemahnya tubuh yang berarti system imun pun juga ikut melemah. Nah, jika system imun melemah maka tubuh cenderung mudah untuk terserang penyakit. Tidak hanya itu, serangan radikal bebas juga dapat merusak sel-sel tubuh, sehingga bisa mnegalami degenerasi ataupun deformasi. Kombinasi dari kdua hal terebut berdampak sangat merugikan bagi tubuh. Tubuh dapat menderita degenerasi otot dan jaringan tubuh, penyakit jantung, diabetes, kanker serta berbagai permasalahan kesehatan lainnya.\r\nPERAN ANTIOKSIDAN\r\nGaya hidup Kita yang tidak sehat dapat memicu masuknya radikal bebas ke dalam tubuh dalam jumlah yang banyak. Terekspos sinar matahari secara berlebihan juga dapat menjadi penyebab meningkatnya jumlah radikal bebas di dalam tubuh, ditambah lagi dengan kebiasaan merokok yang juga menjadi penyebab meningkatnya radikal bebas berbahaya di dalam tubuh.\r\nJika sudah begitu, maka tubuh Kita membutuhkan suatu zat yang berperan untuk menstabilkan radikal bebas. Zat tersebut dikenal dengan sebutan antioksidan.\r\nAntioksidan berperan dalam menghentikan reaksi reduksi-oksidasi berantai yang disebabkan oleh radikal bebas dengan cara menetralkannya.\r\nMenurut National Cancer Institute, pengujian pada hewan telah menunjukkan bahwa antioksidan mampu mencegah terjadinya kerusakan tubuh akibat radikal bebas yang kemudian dapat berkaitan dengan munculnya kanker. Selain itu, para ahli juga meyakini bahwa antioksidan di dalam tubuh membantu memperlambat proses penuaan dan mungkin dapat meningkatkan masa hidup seseorang.\r\nAntioksidan juga mampu melindungi kulit Kita dari radiasi akibat terlalu lama terekspos sinar matahari.\r\nDARIMANA MENDAPATKAN ANTIOKSIDAN?\r\nSumber utama untuk memperoleh antioksidan adalah dengan mengonsumsi AIR ANTIOKSIDAN dan sayur-sayuran dan buas-buahan. Dengan mengonsumsi sayur dan buah secara teratur berarti Anda telah membantu tubuh Anda untuk mencegah terjadinya berbagai penyakit, seperti resiko terkena penyakit jantung, penyakit saraf, kanker dan melemahnya system kekebalan tubuh.\r\nBerbagai penelitian menunjukkan bahwa cara efektif untuk memperoleh antioksidan adalah melalui AIR ANTIOKSIDAN dan makanan yang Kita konsumsi, bukan lewat suplemen. Tetapi, jika memang pemenuhan kebutuhan akan antioksidan dari makanan tidak tercukupi, Anda bisa mengkonsumsi AIR ANTIOKSIDAN. Oleh karena itu, untuk mendapatkan perlindungan yang maksimal dari antioksidan mulai dari sekarang latihlah diri Kita untuk senantiasa menjalankan gaya hidup sehat dengan banyak mengonsumsi AIR ANTIOKSIDAN, sayur-sayuran dan buah-buahan. Beberapa sayur dan buah yang kaya antioksidan adalah brokoli, cabai, bwang putih, wortel, bayam, tomat, minyak zaitun, the hijau, bit, minyak kelapa, beras merah, mangga, anggur, nanas, goji berry, acai berry, delima dan masih banyak lagi yang lainnya. Kandungan ion OH- yang kaya pada air KANGEN WATER tidak hanya memberikan cita rasa yang nikmat dan tingkat kebasaan yang tinggi (PH 8,5 s/d 9,5), namun menjadikan air KANGEN WATER mampu mencegah proses oksidasi pada sel kulit, otot, tulang, dan rambut.\r\nmau bukti antioxidant air KANGEN WATER?\r\nCoba ambil beberapa buah paku, kemudian rendam di air biasa & tutup rapat & diamkan selama beberapa hari, kemudian amati.\r\nHasilnya :\r\nPaku pada air biasa akan berkarat (mengalami oksidasi), sementara paku pada air KANGEN WATER tidak berkarat (terlindung dari oksidasi).\r\nBagaimana dengan tubuh kita yang meminum air biasa dan air KANGEN WATER ?\r\nSilahkan buktikan sendiri. Selamat mencoba\r\n\r\n\r\n', 463, 1, 0, 2, '', '', '2015-08-19 02:55:53', '2016-02-18 16:16:42'),
(42, 'Why Kangen Water™ – Introduction', '<p><strong>Interesting</strong>&nbsp;for the fact that several months ago,&nbsp;before I got to know the Enagic Company&rsquo;s Kangen SD501, I saw an impressive full page advertisement on the benefits of alkaline water and decided to cut and keep the page.&nbsp;<!-- pagebreak --> I was about to find out more but fortunately, my online business and travelling prevented me from visiting one of their impressive showrooms. I am glad&nbsp;I did not, otherwise I would have ended up with an alkaline machine that may not have delivered its quality and safety&nbsp;<strong>consistently</strong>&nbsp;in the long term. Our own testing of the waters produced by a few brands confirmed what we have learned from training provided by the Enagic Company, the Japanese company that produced the highest quality Kangen water&trade; ionizers &ndash; inconsistent in terms of alkalinity, microclustering and Oxidation Reduction Potential (ORP).</p>\r\n<p>That is why, Dr David Carpenter from the United States, in the quest for the right type of ionized water, purchased a number of water ionizers (various brands) that were promoted as producing alkaline, microclustered and anti-oxidant and tested them by giving his patients with various health issues the ionized water. No matter which brand he bought, none of the machines produced the kind of results that were consistently achieved in Japan using those produced by the Enagic Company of Japan.</p>\r\n<p>After much research of our own,&nbsp;my business&nbsp;partners&nbsp;and I&nbsp;have found out that not all alkaline water ionizers are the same. There are copycats that sell for as low as half the price of Kangen but the profit margins were very high for the big corporations that promoted them. While a Kangen Water&trade; ionizer has been proven to be a workhorse that last between 15 and 25 years, others with platinum/titanium plates with smaller surface area may not stand a high wattage, their life span is likely to be shorter and the consumer will end up trading-in every few years which will mean more profits for the corporations and higher cost for the consumers.</p>\r\n<p>However, Kangen water ionizers manufactured by the Enagic company of Japan have stood the test of time for the last 37 years and&nbsp;are the only ones that have been used by more than 100 hospitals in Japan for so many years. Best of all, they shared the profits generously with the consumers like you and I through a unique no-pressure customer referral program using an original Japanese invention &ndash; their unique patented Global 8-point Business Plan. A number of my&nbsp;friends and&nbsp;business associates have already started to recover the cost of their Kangen Water&trade; ionizer simply by sincerely sharing the health benefits and other amazing uses of Kangen water&trade; with their friends and relatives by giving them free water and watching a&nbsp;<a href="http://kangensingapore.com/kangen-water-demos/" rel="nofollow">live online demo</a>.</p>\r\n<p>Moreover, this machine has been certified by the Japan Ministry of Health and Welfare as a medical device and endorsed by&nbsp;<strong>6500 member non-profit doctor&rsquo;s group</strong>&nbsp;in Japan. The Japanese Association of Preventive Medicine for Adult Disease only endorses one product in a given industry thus the Enagic&rsquo;s Kangen water&trade;&nbsp;ionizer is the only ionizer they recommend.</p>\r\n<p>Fortunately, on a personal note,&nbsp;a newly-acquainted overseas&nbsp;friend of mine came to visit me last August and presented me with a DVD that excellently showcased the Kangen Water&trade; Ionizer that is not only backed by science, but medical science. Midway through the presentation, it convinced me enough to make up my mind to order one for the long-term health and safety of my family. As the saying goes, &ldquo;Prevention is better than cure&rdquo;! There&rsquo;s really a world of difference between&nbsp;<strong>health care and disease prevention</strong>&nbsp;rather than&nbsp;<strong>disease care and disease management</strong>.</p>', 'Interesting&nbsp;for the fact that several months ago,&nbsp;before I got to know the Enagic Company&rsquo;s Kangen SD501, I saw an impressive full page advertisement on the benefits of alkaline water and decided to cut and keep the page.&nbsp; I was about to find out more but fortunately, my online business and travelling prevented me from visiting one of their impressive showrooms. I am glad&nbsp;I did not, otherwise I would have ended up with an alkaline machine that may not have delivered its quality and safety&nbsp;consistently&nbsp;in the long term. Our own testing of the waters produced by a few brands confirmed what we have learned from training provided by the Enagic Company, the Japanese company that produced the highest quality Kangen water&trade; ionizers &ndash; inconsistent in terms of alkalinity, microclustering and Oxidation Reduction Potential (ORP).\r\nThat is why, Dr David Carpenter from the United States, in the quest for the right type of ionized water, purchased a number of water ionizers (various brands) that were promoted as producing alkaline, microclustered and anti-oxidant and tested them by giving his patients with various health issues the ionized water. No matter which brand he bought, none of the machines produced the kind of results that were consistently achieved in Japan using those produced by the Enagic Company of Japan.\r\nAfter much research of our own,&nbsp;my business&nbsp;partners&nbsp;and I&nbsp;have found out that not all alkaline water ionizers are the same. There are copycats that sell for as low as half the price of Kangen but the profit margins were very high for the big corporations that promoted them. While a Kangen Water&trade; ionizer has been proven to be a workhorse that last between 15 and 25 years, others with platinum/titanium plates with smaller surface area may not stand a high wattage, their life span is likely to be shorter and the consumer will end up trading-in every few years which will mean more profits for the corporations and higher cost for the consumers.\r\nHowever, Kangen water ionizers manufactured by the Enagic company of Japan have stood the test of time for the last 37 years and&nbsp;are the only ones that have been used by more than 100 hospitals in Japan for so many years. Best of all, they shared the profits generously with the consumers like you and I through a unique no-pressure customer referral program using an original Japanese invention &ndash; their unique patented Global 8-point Business Plan. A number of my&nbsp;friends and&nbsp;business associates have already started to recover the cost of their Kangen Water&trade; ionizer simply by sincerely sharing the health benefits and other amazing uses of Kangen water&trade; with their friends and relatives by giving them free water and watching a&nbsp;live online demo.\r\nMoreover, this machine has been certified by the Japan Ministry of Health and Welfare as a medical device and endorsed by&nbsp;6500 member non-profit doctor&rsquo;s group&nbsp;in Japan. The Japanese Association of Preventive Medicine for Adult Disease only endorses one product in a given industry thus the Enagic&rsquo;s Kangen water&trade;&nbsp;ionizer is the only ionizer they recommend.\r\nFortunately, on a personal note,&nbsp;a newly-acquainted overseas&nbsp;friend of mine came to visit me last August and presented me with a DVD that excellently showcased the Kangen Water&trade; Ionizer that is not only backed by science, but medical science. Midway through the presentation, it convinced me enough to make up my mind to order one for the long-term health and safety of my family. As the saying goes, &ldquo;Prevention is better than cure&rdquo;! There&rsquo;s really a world of difference between&nbsp;health care and disease prevention&nbsp;rather than&nbsp;disease care and disease management.', 513, 1, 0, 2, '1', '', '2015-08-20 11:21:01', '2016-02-16 22:24:06'),
(45, 'Why Reverse Osmosis Water is Detrimental to Your Health', '<p>Water is one the most essential ingredients to maintaining good health. Approximately 70% of an adult body is composed of water. In fact, by the time you experience moderate thirst, your body has almost lost 1% of its total water content.<!-- pagebreak --><br /><br />Many of us from developed countries have heard of &ldquo;drink 8 glasses of water a day&rdquo;, yet we don&rsquo;t pay much attention to the quality of the water we ingest, mainly because the devastating effects of poor hydration are slow and chronic.<br /><br />With all the health scares of &ldquo;toxins in the water&rdquo;, consumers demanded the purest water they could get, and corporations rushed to fill the demand. A popular method to purify water is a process known as reverse osmosis. Yet beyond the high cost of owning a reverse osmosis water purifier in your house, new evidence suggests that using a machine may also cost your family&rsquo;s health.<br /><br />Here are a few interesting facts about water that many people don&rsquo;t realise:<br /><br />&nbsp;&nbsp;&nbsp; Water is an excellent solvent. Yes, this means it is capable of dissolving impurities, debris and toxins, but this also means that it can dissolve useful minerals and nutrients.<br />&nbsp;&nbsp;&nbsp; Severe dehydration can pose deleterious effects on all bodily systems.<br />&nbsp;&nbsp;&nbsp; It&rsquo;s commonly believed that when drinking water, &ldquo;the purer the better&rdquo;. However, just because it&rsquo;s a common belief doesn&rsquo;t mean it&rsquo;s true. Osmosis works both ways, and the minerals in your water is actually important for your body to maintain homeostasis (balance). Drinking demineralised water will actually cause your body to lose important minerals.<br /><br />While it&rsquo;s foolhardy to simply drink water from any source you can find, excessive treatment of water can also be harmful.<br />What Exactly is Reverse Osmosis?<br /><br />In a nutshell, reverse osmosis aims to recycle water so that it is free of impurities. It does this by using applied pressure to reverse the process of osmosis. Scientifically, osmosis is the movement of water molecules through a semi-permeable barrier in the direction that will equalise the solute concentrations on both sides.<br /><br />To understand this concept, imagine you have two characters who frequently hang out together, Bobby (your cell) and Robby (the water you drink). Bobby starts off with $100, and Robby starts off with $200. When they hang out together, they agree to even out the amount they have, so $50 flows from Robby to Bobby (osmosis) so that they both have $150. In this situation, Bobby is happy because he has gained $50, just as your cell would absorb minerals.<br /><br />However, let&rsquo;s say Bobby has $100 and Robby only has $50. Through osmosis, Bobby has to give Robby $25 to equal out the amounts they have so they both have $75. In this scenario, your cells (Bobby) are losing crucial nutrients to the water you drink (Robby). It gets even worse if the water you drink is pure and devoid of any minerals. If Bobby had $100 and Robby had $0, through osmosis Bobby would have to give half his money to Robby, and be left with only $50.<br /><br />Osmosis is a natural process that happens even outside of your body, but as you can start to see, drinking pure water devoid of minerals is not the best idea for your health, yet this is exactly what reverse osmosis seeks to achieve.</p>', 'Water is one the most essential ingredients to maintaining good health. Approximately 70% of an adult body is composed of water. In fact, by the time you experience moderate thirst, your body has almost lost 1% of its total water content.Many of us from developed countries have heard of “drink 8 glasses of water a day”, yet we don’t pay much attention to the quality of the water we ingest, mainly because the devastating effects of poor hydration are slow and chronic.With all the health scares of “toxins in the water”, consumers demanded the purest water they could get, and corporations rushed to fill the demand. A popular method to purify water is a process known as reverse osmosis. Yet beyond the high cost of owning a reverse osmosis water purifier in your house, new evidence suggests that using a machine may also cost your family’s health.Here are a few interesting facts about water that many people don’t realise:    Water is an excellent solvent. Yes, this means it is capable of dissolving impurities, debris and toxins, but this also means that it can dissolve useful minerals and nutrients.    Severe dehydration can pose deleterious effects on all bodily systems.    It’s commonly believed that when drinking water, “the purer the better”. However, just because it’s a common belief doesn’t mean it’s true. Osmosis works both ways, and the minerals in your water is actually important for your body to maintain homeostasis (balance). Drinking demineralised water will actually cause your body to lose important minerals.While it’s foolhardy to simply drink water from any source you can find, excessive treatment of water can also be harmful.What Exactly is Reverse Osmosis?In a nutshell, reverse osmosis aims to recycle water so that it is free of impurities. It does this by using applied pressure to reverse the process of osmosis. Scientifically, osmosis is the movement of water molecules through a semi-permeable barrier in the direction that will equalise the solute concentrations on both sides.To understand this concept, imagine you have two characters who frequently hang out together, Bobby (your cell) and Robby (the water you drink). Bobby starts off with $100, and Robby starts off with $200. When they hang out together, they agree to even out the amount they have, so $50 flows from Robby to Bobby (osmosis) so that they both have $150. In this situation, Bobby is happy because he has gained $50, just as your cell would absorb minerals.However, let’s say Bobby has $100 and Robby only has $50. Through osmosis, Bobby has to give Robby $25 to equal out the amounts they have so they both have $75. In this scenario, your cells (Bobby) are losing crucial nutrients to the water you drink (Robby). It gets even worse if the water you drink is pure and devoid of any minerals. If Bobby had $100 and Robby had $0, through osmosis Bobby would have to give half his money to Robby, and be left with only $50.Osmosis is a natural process that happens even outside of your body, but as you can start to see, drinking pure water devoid of minerals is not the best idea for your health, yet this is exactly what reverse osmosis seeks to achieve.', 512, 1, 0, 2, '1', '', '2015-11-07 00:10:03', '2016-02-18 15:52:23'),
(46, '3 Properties of Kangen Water', '<p>Kangen water contains 3 properties that combat oxidative stress. Oxidative stress is caused by free radicals that are present everywhere in our environment.<!-- pagebreak --></p>\r\n<p>The 3 properties of Kangen water are:<br />1) Antioxidation<br /><br />Oxidation can&rsquo;t be stopped, research however indicates that the process can be slowed down with antioxidants. Antioxidants in liquids can be measured using an ORP meter.<br /><br />The higher the negative reading (ORP) or Oxidation Reduction Potential (higher antioxidant), the more effective the reduction of oxidative stress from your body, minimizing the risk of cancer and onset of other diseases.<br /><br />Kangen water has the highest antioxidant measured compared to any liquid on the planet. (~ &ndash; 470 ORP)<br /><br />2) Alkalinity<br /><br />Many of us lead an acidic lifestyle, from eating a lot meat (acidic), drinking carbonated water (highly acidic), experiencing negative emotions (stress), and not having enough sleep. This unhealthy lifestyle turns our body into an acidic state, where we are very susceptible to sickness and diseases.<br /><br />&ldquo;Cancer grows in oxygen-deprived acidic tissue&hellip; Disease cannot thrive in an alkaline body&rdquo; &ndash; Dr Otto Heinrich Warburg, Winner of the 1931 Nobel Prize in Physiology. Discovered the Cause of Cancer in 1923<br /><br />3) Micro-Clustering<br /><br />The &ldquo;smaller&rdquo; your water or rather the less clustered the molecules of your drinking water, the better your body will be able to absorb it and the more hydrated you will feel.<br /><br />Staying hydrated is very important for us whenever we carry out our daily activities. Staying well-hydrated helps us to increase our stamina, keep our mind alert, and think better.<br /><br />Ionized water has better hydration ability due to the micro-clustering of the water molecules after the ionization process. Non-ionized water molecules are found in clusters of 10 to 20 molecules while ionized water are found in clusters of 4 &ndash; 6 molecules.</p>', 'Kangen water contains 3 properties that combat oxidative stress. Oxidative stress is caused by free radicals that are present everywhere in our environment.\r\nThe 3 properties of Kangen water are:1) AntioxidationOxidation can&rsquo;t be stopped, research however indicates that the process can be slowed down with antioxidants. Antioxidants in liquids can be measured using an ORP meter.The higher the negative reading (ORP) or Oxidation Reduction Potential (higher antioxidant), the more effective the reduction of oxidative stress from your body, minimizing the risk of cancer and onset of other diseases.Kangen water has the highest antioxidant measured compared to any liquid on the planet. (~ &ndash; 470 ORP)2) AlkalinityMany of us lead an acidic lifestyle, from eating a lot meat (acidic), drinking carbonated water (highly acidic), experiencing negative emotions (stress), and not having enough sleep. This unhealthy lifestyle turns our body into an acidic state, where we are very susceptible to sickness and diseases.&ldquo;Cancer grows in oxygen-deprived acidic tissue&hellip; Disease cannot thrive in an alkaline body&rdquo; &ndash; Dr Otto Heinrich Warburg, Winner of the 1931 Nobel Prize in Physiology. Discovered the Cause of Cancer in 19233) Micro-ClusteringThe &ldquo;smaller&rdquo; your water or rather the less clustered the molecules of your drinking water, the better your body will be able to absorb it and the more hydrated you will feel.Staying hydrated is very important for us whenever we carry out our daily activities. Staying well-hydrated helps us to increase our stamina, keep our mind alert, and think better.Ionized water has better hydration ability due to the micro-clustering of the water molecules after the ionization process. Non-ionized water molecules are found in clusters of 10 to 20 molecules while ionized water are found in clusters of 4 &ndash; 6 molecules.', 511, 1, 0, 2, '1', '', '2015-11-07 01:20:05', '2016-02-16 22:24:06');
INSERT INTO `ms_posts` (`id`, `title`, `description`, `meta_description`, `ms_media_id`, `ms_user_id`, `ms_portfolio_id`, `ms_status_posts_id`, `show_comment`, `featured`, `created_at`, `updated_at`) VALUES
(47, 'Alkaline Water Benefits', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<!-- pagebreak --> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 488, 1, 0, 2, '1', '', '2015-12-01 20:57:11', '2016-02-16 22:24:06'),
(49, 'Bahaya kurang minum AIR PUTIH', '<div class="section the_content has_content">\r\n<div class="section_wrapper">\r\n<div class="the_content_wrapper">\r\n<p>Ada satu pertanyaan, yaitu: &ldquo;Mengapa kita hrs minum air putih banyak2?&rdquo;. Sebenarnya jawabannya cukup &ldquo;mengerikan&rdquo; tetapi karena sebuah pertanyaan jujur hrs dijawab dgn jujur, maka topik tersebut bisa dijelaskan sbb: Kira-kira 80% tubuh manusia terdiri dari AIR. <!-- pagebreak -->Malah ada beberapa bagian tubuh kita yg memiliki kadar air di atas 80%. Dua organ paling penting dgn kadar air di atas 80% adalah DARAH dan OTAK !!. Otak memiliki komponen Air sebanyak 90%. Sementara darah memiliki Komponen air sebanyak 95%.<br /> Jatah minum manusia normal sedikitnya adalah 2 liter sehari atau 8 gelas air putih sehari. Atau jika ingin lebih optimal akan kebutuhan air dalam tubuh kita sehari hari, gunakan rumus Berat Badan dibagi 20. Contoh jika berat badan anda 60kg, maka minumnya 3 liter per hari.</p>\r\n<p>Jumlah di atas hrs ditambah bagi seorg PEROKOK. Air sebanyak itu diperlukan utk mengganti cairan yg keluar<br /> dari tubuh kita lewat air seni, keringat, pernapasan, dan sekresi. Apa yg terjadi bila kita mengkonsumsi kurang dari 2 liter sehari ???. Tentu tubuh akan menyeimbangkan diri. Caranya &hellip;? Dgn jalan &ldquo;Menghisap&rdquo; air dari komponen tubuh sendiri terdekat: yaitu DARAH!! Darah yg dihisap Airnya akan menjadi kental. Akibat pengentalan Darah ini, maka perjalanannya akan kurang lancar&nbsp;ketimbang Darah Encer. Saat melewati Ginjal (tempat menyaring Racun dari Darah), ginjal akan bekerja extra keras menyaring darah. Dan karena saringan dlm ginjal halus, tidak jarang darah yg kental bisa menyebabkan perobekan pada glomerulus ginjal.</p>\r\n<p>Akibatnya, air seni anda berwarna kemerahan, yaitu tanda mulai bocornya saringan ginjal. Bila dibiarkan terus menerus, anda mungkin suatu saat hrs mengeluarkan 2jt rupiah seminggu utk cuci darah. Bagaimana dengan OTAK? Nah saat darah Kental mengalir lewat otak, perjalanannya agak tersendat. Otak tidak lagi &ldquo;Encer&rdquo;, karena sel2 otak adalah yang paling boros mengkonsumsi makanan &amp; oksigen, ini yg mengakibatkan &ldquo;STROKE&rdquo;.</p>\r\n<p>Semoga bermanfaat &amp; Selamat berbagi&hellip;.</p>\r\n</div>\r\n</div>\r\n</div>', '\r\n\r\n\r\nAda satu pertanyaan, yaitu: &ldquo;Mengapa kita hrs minum air putih banyak2?&rdquo;. Sebenarnya jawabannya cukup &ldquo;mengerikan&rdquo; tetapi karena sebuah pertanyaan jujur hrs dijawab dgn jujur, maka topik tersebut bisa dijelaskan sbb: Kira-kira 80% tubuh manusia terdiri dari AIR. Malah ada beberapa bagian tubuh kita yg memiliki kadar air di atas 80%. Dua organ paling penting dgn kadar air di atas 80% adalah DARAH dan OTAK !!. Otak memiliki komponen Air sebanyak 90%. Sementara darah memiliki Komponen air sebanyak 95%. Jatah minum manusia normal sedikitnya adalah 2 liter sehari atau 8 gelas air putih sehari. Atau jika ingin lebih optimal akan kebutuhan air dalam tubuh kita sehari hari, gunakan rumus Berat Badan dibagi 20. Contoh jika berat badan anda 60kg, maka minumnya 3 liter per hari.\r\nJumlah di atas hrs ditambah bagi seorg PEROKOK. Air sebanyak itu diperlukan utk mengganti cairan yg keluar dari tubuh kita lewat air seni, keringat, pernapasan, dan sekresi. Apa yg terjadi bila kita mengkonsumsi kurang dari 2 liter sehari ???. Tentu tubuh akan menyeimbangkan diri. Caranya &hellip;? Dgn jalan &ldquo;Menghisap&rdquo; air dari komponen tubuh sendiri terdekat: yaitu DARAH!! Darah yg dihisap Airnya akan menjadi kental. Akibat pengentalan Darah ini, maka perjalanannya akan kurang lancar&nbsp;ketimbang Darah Encer. Saat melewati Ginjal (tempat menyaring Racun dari Darah), ginjal akan bekerja extra keras menyaring darah. Dan karena saringan dlm ginjal halus, tidak jarang darah yg kental bisa menyebabkan perobekan pada glomerulus ginjal.\r\nAkibatnya, air seni anda berwarna kemerahan, yaitu tanda mulai bocornya saringan ginjal. Bila dibiarkan terus menerus, anda mungkin suatu saat hrs mengeluarkan 2jt rupiah seminggu utk cuci darah. Bagaimana dengan OTAK? Nah saat darah Kental mengalir lewat otak, perjalanannya agak tersendat. Otak tidak lagi &ldquo;Encer&rdquo;, karena sel2 otak adalah yang paling boros mengkonsumsi makanan &amp; oksigen, ini yg mengakibatkan &ldquo;STROKE&rdquo;.\r\nSemoga bermanfaat &amp; Selamat berbagi&hellip;.\r\n\r\n\r\n', 462, 1, 0, 2, '1', '', '2015-12-13 19:45:09', '2016-02-16 22:24:06'),
(50, 'Sekilas Tentang Komunitas GEMARSEHATI ', '<p>GEMARSEHATI, Gerakan Minum Air Sehat Indonesia, Didirikan dan berpusat di Surabaya oleh dua orang sahabat yang peduli akan kesehatan masyarakat Indonesia, mereka itu adalah&nbsp;<strong>Ir. Yussa Marulli</strong>&nbsp;dan <strong>Pangeran Chandra Sasmita SE</strong></p>\r\n<p>Dalam perkembangannya telah membuka beberapa cabang di <span style="color: #181e37; font-weight: 800;">Sidoarjo, Malang, Jember, Kediri, Tulung Agung, Blitar, Banyuwangi, Jakarta, Semarang, Jogja, Solo, Tegal, Balikpapan, Samarinda, Bontang, Palu, Makassar, Bali, Soroako, &nbsp;dan akan terus berkembang ke seluruh wilayah Indonesia.</span> Untuk itu kami memohon dukungan semua pihak akan niat baik kami dalam rangka mengkampanyekan dan memberikan edukasi pada masyarakat Indonesia atas bagaimana berprilaku hidup sehat dengan cara minum air yang sehat dan alami...</p>', 'GEMARSEHATI, Gerakan Minum Air Sehat Indonesia, Didirikan dan berpusat di Surabaya oleh dua orang sahabat yang peduli akan kesehatan masyarakat Indonesia, mereka itu adalah&nbsp;Ir. Yussa Marulli&nbsp;dan Pangeran Chandra Sasmita SE\r\nDalam perkembangannya telah membuka beberapa cabang di Sidoarjo, Malang, Jember, Kediri, Tulung Agung, Blitar, Banyuwangi, Jakarta, Semarang, Jogja, Solo, Tegal, Balikpapan, Samarinda, Bontang, Palu, Makassar, Bali, Soroako, &nbsp;dan akan terus berkembang ke seluruh wilayah Indonesia. Untuk itu kami memohon dukungan semua pihak akan niat baik kami dalam rangka mengkampanyekan dan memberikan edukasi pada masyarakat Indonesia atas bagaimana berprilaku hidup sehat dengan cara minum air yang sehat dan alami...', 444, 1, 0, 2, '', '0', '2016-01-19 01:50:41', '2016-02-16 22:24:06'),
(51, 'IOS', '<p>#ios</p>', '#ios', 0, 1, 0, 2, '', '', '2016-01-19 02:55:10', '2016-02-16 22:24:06'),
(52, 'Android', '<p>https://play.google.com/store/apps/details?id=kangen.gemarsehati.enagic</p>', '#android', 0, 1, 0, 2, '', '', '2016-01-19 02:55:29', '2016-03-10 01:43:41'),
(54, 'Contact', '<p>Contact</p>', 'Contact', 0, 1, 0, 2, '', '0', '2016-01-20 19:40:03', '2016-02-16 22:24:06'),
(55, 'Contact', '<p>Contact</p>', 'Contact', 0, 1, 0, 2, '', '', '2016-01-24 00:07:37', '2016-02-16 22:24:06'),
(56, 'Siapa itu Gemarsehati ?', '<p><strong>GEMARSEHATI </strong> adalah suatu komunitas anak bangsa yang peduli akan kesehatan masyarakat Indonesia dengan melakukan kampanye serta memberikan edukasi dan mendorong setiap anak bangsa untuk berprilaku hidup sehat dengan cara minum air yang sehat dan alami.</p>\r\n<p><strong>GEMARSEHATI </strong>didirikan dan berpusat di Surabaya oleh dua orang sahabat yang peduli akan kesehatan masyarakat Indonesia, mereka itu adalah PANGERAN CHANDRA SASMITA, SE dan Ir. YUSSA MARULLI.</p>\r\n<p><strong>GEMARSEHATI </strong>didirikan dan mulai aktifitas pertamanya pada tanggal 23 Maret 2014 di Surabaya dengan mengadakan Seminar Kesehatan pertama di Hotel Meritus Surabaya.</p>\r\n<p><strong>GEMARSEHATI </strong>dalam perkembangannya telah membuka beberapa cabang di Sidoarjo, Malang, Jember, Banyuwangi, Jakarta, Semarang, Jogja, Solo, Tegal, Balikpapan, Samarinda, Bontang, Palu dan akan terus berkembang ke seluruh wilayah Indonesia. Untuk itu kami memohon dukungan semua pihak akan niat baik kami dalam rangka kampanye dan memberikan edukasi pada masyarakat Indonesia atas bagaimana berprilaku hidup sehat dengan cara minum air yang sehat dan alami.</p>', 'GEMARSEHATI  adalah suatu komunitas anak bangsa yang peduli akan kesehatan masyarakat Indonesia dengan melakukan kampanye serta memberikan edukasi dan mendorong setiap anak bangsa untuk berprilaku hidup sehat dengan cara minum air yang sehat dan alami.\r\nGEMARSEHATI didirikan dan berpusat di Surabaya oleh dua orang sahabat yang peduli akan kesehatan masyarakat Indonesia, mereka itu adalah PANGERAN CHANDRA SASMITA, SE dan Ir. YUSSA MARULLI.\r\nGEMARSEHATI didirikan dan mulai aktifitas pertamanya pada tanggal 23 Maret 2014 di Surabaya dengan mengadakan Seminar Kesehatan pertama di Hotel Meritus Surabaya.\r\nGEMARSEHATI dalam perkembangannya telah membuka beberapa cabang di Sidoarjo, Malang, Jember, Banyuwangi, Jakarta, Semarang, Jogja, Solo, Tegal, Balikpapan, Samarinda, Bontang, Palu dan akan terus berkembang ke seluruh wilayah Indonesia. Untuk itu kami memohon dukungan semua pihak akan niat baik kami dalam rangka kampanye dan memberikan edukasi pada masyarakat Indonesia atas bagaimana berprilaku hidup sehat dengan cara minum air yang sehat dan alami.', 462, 1, 0, 2, '', '', '2016-01-27 03:10:27', '2016-02-16 22:24:06'),
(61, 'Bisnis Testimoni 1', '<p>Bisnis Testimoni 1</p>', 'Bisnis Testimoni 1', 488, 1, 0, 2, '', '', '2016-02-01 04:58:17', '2016-02-16 22:24:06'),
(62, 'Komitmen Gemarsehati', '<p><strong>GEMARSEHATI&nbsp; berkomitmen untuk :</strong></p>\r\n<ul>\r\n<li>Memberikan edukasi, membuka wawasan dan mengkampanyekan pemahaman tentang pola hidup sehat pada seluruh lapisan masyarakat Indonesia dengan minum minuman yang sehat dan alami.</li>\r\n<li>Mengembangkan GEMARSEHATI di seluruh wilayah Indonesia mulai dari tingkatan Kota, Kecamatan, Kelurahan hingga RT dan RW tentang berprilaku hidup sehat pada masyarakat Indonesia</li>\r\n<li>Menyadarkan dan memberikan pengertian tentang dampak minum yang mengandung pH asam pada badan manusia.</li>\r\n</ul>', 'GEMARSEHATI&nbsp; berkomitmen untuk :\r\n\r\nMemberikan edukasi, membuka wawasan dan mengkampanyekan pemahaman tentang pola hidup sehat pada seluruh lapisan masyarakat Indonesia dengan minum minuman yang sehat dan alami.\r\nMengembangkan GEMARSEHATI di seluruh wilayah Indonesia mulai dari tingkatan Kota, Kecamatan, Kelurahan hingga RT dan RW tentang berprilaku hidup sehat pada masyarakat Indonesia\r\nMenyadarkan dan memberikan pengertian tentang dampak minum yang mengandung pH asam pada badan manusia.\r\n', 493, 1, 0, 2, '', '', '2016-02-01 06:31:10', '2016-02-16 22:24:06'),
(63, 'Visi Misi Gemarsehati', '<p><strong>Visi GEMARSEHATI</strong></p>\r\n<p><br />Mewujudkan Warga Negara Indonesia SEHAT agar INDONESIA KUAT<br /><br /><strong>Misi GEMARSEHATI</strong></p>\r\n<ul>\r\n<li>Memberikan Edukasi, membuka wawasan dan kampanye pemahaman&nbsp; tentang Pola Hidup sehat dan alami pada seluruh lapisan masyarakat Indonesia dengan minum minuman yang sehat dan alami tanpa KIMIAWI.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Merubah mind set pola hidup masyarakat&nbsp; Indonesia dari Pola Hidup Modern serta tidak&nbsp; sehat menjadi Pola hidup Modern yang sehat dan Alami.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Menjadikan dan Menyehatkan GENERASI PENERUS BANGSA yang sehat dan kuat</li>\r\n</ul>', 'Visi GEMARSEHATI\r\nMewujudkan Warga Negara Indonesia SEHAT agar INDONESIA KUATMisi GEMARSEHATI\r\n\r\nMemberikan Edukasi, membuka wawasan dan kampanye pemahaman&nbsp; tentang Pola Hidup sehat dan alami pada seluruh lapisan masyarakat Indonesia dengan minum minuman yang sehat dan alami tanpa KIMIAWI.\r\n\r\n&nbsp;\r\n\r\nMerubah mind set pola hidup masyarakat&nbsp; Indonesia dari Pola Hidup Modern serta tidak&nbsp; sehat menjadi Pola hidup Modern yang sehat dan Alami.\r\n\r\n&nbsp;\r\n\r\nMenjadikan dan Menyehatkan GENERASI PENERUS BANGSA yang sehat dan kuat\r\n', 493, 1, 0, 2, '', '0', '2016-02-01 06:33:49', '2016-02-16 22:24:06'),
(64, 'Aktifitas GEMARSEHATI', '<p>Dalam menjalankan Misi mulia kami melakukan beberapa kegiatan antara lain :</p>\r\n<p><br />1. Melakukan Seminar Kesehatan Rutin dari Sekolah ke sekolah, dari Pesantren ke Pesantren, Kampus ke Kampus di seluruh wilayah Indonesia</p>\r\n<p>2. Melakukan Seminar Kesehatan dan Edukasi pada masyarakat luas di Hotel-hotel, di instansi-instansi / kantor-kantor atau di Balai-balai RT/RW/ Kelurahan/ Kecamatan</p>\r\n<p>3. Melakukan Kampanye di setiap kegiatan CAR FREE DAY di seluruh wilayah Indonesia</p>\r\n<p>4. Memberikan bantuan AIR SEHAT ke Panti Asuhan-Panti Asuhan / Panti Jompo dengan selalu mengedepankan aspek kemanusiaan dan aspek sosial diantara anggota komunitasnya.</p>', 'Dalam menjalankan Misi mulia kami melakukan beberapa kegiatan antara lain :\r\n1. Melakukan Seminar Kesehatan Rutin dari Sekolah ke sekolah, dari Pesantren ke Pesantren, Kampus ke Kampus di seluruh wilayah Indonesia\r\n2. Melakukan Seminar Kesehatan dan Edukasi pada masyarakat luas di Hotel-hotel, di instansi-instansi / kantor-kantor atau di Balai-balai RT/RW/ Kelurahan/ Kecamatan\r\n3. Melakukan Kampanye di setiap kegiatan CAR FREE DAY di seluruh wilayah Indonesia\r\n4. Memberikan bantuan AIR SEHAT ke Panti Asuhan-Panti Asuhan / Panti Jompo dengan selalu mengedepankan aspek kemanusiaan dan aspek sosial diantara anggota komunitasnya.', 493, 1, 0, 2, '', '', '2016-02-01 06:39:11', '2016-02-16 22:24:06'),
(65, 'Kesehatan Testimoni 1', '<p>Kesehatan Testimoni 1</p>', 'Kesehatan Testimoni 1', 488, 1, 0, 2, '', '', '2016-02-01 20:25:24', '2016-02-16 22:24:06'),
(66, 'Bootcamp Ke-3 GEMARSEHATI', '<p>Are Youuuuuuu Readyyyyyy...??? Bootcamp Ke-3 GEMARSEHATI 6 - 7 Februari di SOLO adalah Wadah Silaturami Akbar, Belajar Massal dan Upgrade Ilmu untuk menyamakan Visi Sukses kedepan bagi Seluruh Pemilik Mesin dalam Komunitas GEMARSEHATI di seluruh Indonesia, insyaAllah akan dihadiri 400 orang pemilik mesin, Bagi yang belum registrasi bisa menghubungi Leader atau Sponsor yang terdekat.<br /><!-- pagebreak --><br /><br /># Closingan Massal 200unit/bulan<br /># 50 Orang dengan Income 100jt/Bulan<br /># Sedeqah Brutal 2000 Botol di CFD Solo</p>\r\n<p><strong>Bring True Health to the Worlds</strong></p>', 'Are Youuuuuuu Readyyyyyy...??? Bootcamp Ke-3 GEMARSEHATI 6 - 7 Februari di SOLO adalah Wadah Silaturami Akbar, Belajar Massal dan Upgrade Ilmu untuk menyamakan Visi Sukses kedepan bagi Seluruh Pemilik Mesin dalam Komunitas GEMARSEHATI di seluruh Indonesia, insyaAllah akan dihadiri 400 orang pemilik mesin, Bagi yang belum registrasi bisa menghubungi Leader atau Sponsor yang terdekat.# Closingan Massal 200unit/bulan# 50 Orang dengan Income 100jt/Bulan# Sedeqah Brutal 2000 Botol di CFD Solo\r\nBring True Health to the Worlds', 566, 1, 0, 2, '', '', '2016-02-03 00:50:21', '2016-02-18 18:43:02'),
(67, 'Serunya Boothcamp-3 Gemarsehati SOLO', '<p>Setelah mengulang sukses penyelenggaraan Bootcamp di kota Jogjakarta dan Batu, kali ini Gemarsehati mengadakan Bootcamp ke 3 di kota Solo bertempat di Hotel Alana Solo yang dihadiri peserta dari seluruh Indonesia sejumlah 280 orang.<!-- pagebreak --></p>\r\n<p>Dengan didampingi Presiden Gemarsehati, Mr Yussa Marulli dan Master Suhu Triadi Joko serta didampingi&nbsp;leader-leader 6A Gemarsehati, Acara dibuka oleh GM Enagic Indonesia yang baru, Mr Toshinari Irei dengan memukul Gong sebanyak tiga kali, menggantikan Mr Matsumoto (Asato) yang telah pindah tugas ke Enagic India.</p>\r\n<p>Kali ini penyelenggaraan bootcamp ke 3 cukup meriah karena diselingi acara wisuda kenaikan level dari peserta bootcamp yang sebelum belum pernah diadakan. Beberapa peserta bootcamp &nbsp;3 telah mengikuti wisuda kenaikan tingkat mulai dari 3A, 4A, 5A dan 6A.</p>\r\n<p>Berikut nama-nama peserta Bootcamp-3 yang telah di wisuda kenaikan level sebagai berikut</p>\r\n<p>Level 6A</p>\r\n<ol>\r\n<li>Candra Sosiawan ( Nov ) 1066110</li>\r\n<li>Mukhlis Maskoer ( Nov ) 1064997</li>\r\n<li>Ricky Antonio ( Des ) 2600650</li>\r\n<li>Hariati Prihatini ( Jan ) 2600926 &nbsp;</li>\r\n</ol>\r\n<p>Level 5A</p>\r\n<ol>\r\n<li>Fitria Kurniawati (Jan 16) 2601671</li>\r\n<li>Anang Sulis Setiyo Awan ( Okt `15) 1073932</li>\r\n<li>Sholikan 1067146</li>\r\n<li>Farida Ariyati (Jan'' 16) 2602439&nbsp;</li>\r\n</ol>\r\n<p>Level 4A</p>\r\n<ol>\r\n<li>Pangeran Chandra S (nov) 1069547</li>\r\n<li>Makruf Firmansyah (nov) 2601152</li>\r\n<li>Ricky Kurniawan S (Des) 2607333</li>\r\n<li>Mohamad Suhadak (Okt) 2604689</li>\r\n<li>Fitriah( Okt ) 2601791</li>\r\n<li>Dadang Hariyono ( Jan ) 2608330</li>\r\n<li>dr. Lestari Dewi ( Jan) 2600885</li>\r\n<li>Ir. Eko Prasetyo (Nov) 2603027</li>\r\n<li>Anisa Rulita 2605729 (Des15)</li>\r\n</ol>\r\n<p>&nbsp;Level 3A</p>\r\n<ol>\r\n<li>Hety Suryanti (Des) 2601738</li>\r\n<li>Hardining Mulyasari (okt) 2604476</li>\r\n<li>Tahsin Fauzi (Nov) 2601668</li>\r\n<li>Agustin Wahyuningtyas ( des ) 2604382</li>\r\n<li>Yasir Arafat (Des)2611727</li>\r\n<li>Idzaq Dwi Firmansyah ( Des ) 2606371</li>\r\n<li>Noor Andy Biantoro (Nov) 2606429</li>\r\n<li>Irma maryani&nbsp; 2601971 (okt)</li>\r\n<li>Yesser emtazan 2600170 (okt 15)</li>\r\n<li>Suluh Risang Aji/nurbaiti 2605833 ( 26 jan 2016)</li>\r\n</ol>\r\n<p>Selamat kepada peserta bootcamp-3 atas kenaikan level Enagic.</p>', 'Setelah mengulang sukses penyelenggaraan Bootcamp di kota Jogjakarta dan Batu, kali ini Gemarsehati mengadakan Bootcamp ke 3 di kota Solo bertempat di Hotel Alana Solo yang dihadiri peserta dari seluruh Indonesia sejumlah 280 orang.\r\nDengan didampingi Presiden Gemarsehati, Mr Yussa Marulli dan Master Suhu Triadi Joko serta didampingi leader-leader 6A Gemarsehati, Acara dibuka oleh GM Enagic Indonesia yang baru, Mr Toshinari Irei dengan memukul Gong sebanyak tiga kali, menggantikan Mr Matsumoto (Asato) yang telah pindah tugas ke Enagic India.\r\nKali ini penyelenggaraan bootcamp ke 3 cukup meriah karena diselingi acara wisuda kenaikan level dari peserta bootcamp yang sebelum belum pernah diadakan. Beberapa peserta bootcamp  3 telah mengikuti wisuda kenaikan tingkat mulai dari 3A, 4A, 5A dan 6A.\r\nBerikut nama-nama peserta Bootcamp-3 yang telah di wisuda kenaikan level sebagai berikut\r\nLevel 6A\r\n\r\nCandra Sosiawan ( Nov ) 1066110\r\nMukhlis Maskoer ( Nov ) 1064997\r\nRicky Antonio ( Des ) 2600650\r\nHariati Prihatini ( Jan ) 2600926  \r\n\r\nLevel 5A\r\n\r\nFitria Kurniawati (Jan 16) 2601671\r\nAnang Sulis Setiyo Awan ( Okt `15) 1073932\r\nSholikan 1067146\r\nFarida Ariyati (Jan'' 16) 2602439 \r\n\r\nLevel 4A\r\n\r\nPangeran Chandra S (nov) 1069547\r\nMakruf Firmansyah (nov) 2601152\r\nRicky Kurniawan S (Des) 2607333\r\nMohamad Suhadak (Okt) 2604689\r\nFitriah( Okt ) 2601791\r\nDadang Hariyono ( Jan ) 2608330\r\ndr. Lestari Dewi ( Jan) 2600885\r\nIr. Eko Prasetyo (Nov) 2603027\r\nAnisa Rulita 2605729 (Des15)\r\n\r\n Level 3A\r\n\r\nHety Suryanti (Des) 2601738\r\nHardining Mulyasari (okt) 2604476\r\nTahsin Fauzi (Nov) 2601668\r\nAgustin Wahyuningtyas ( des ) 2604382\r\nYasir Arafat (Des)2611727\r\nIdzaq Dwi Firmansyah ( Des ) 2606371\r\nNoor Andy Biantoro (Nov) 2606429\r\nIrma maryani  2601971 (okt)\r\nYesser emtazan 2600170 (okt 15)\r\nSuluh Risang Aji/nurbaiti 2605833 ( 26 jan 2016)\r\n\r\nSelamat kepada peserta bootcamp-3 atas kenaikan level Enagic.', 557, 2, 0, 2, '', '0', '2016-02-18 08:56:00', '2016-02-18 18:36:04'),
(68, 'KanGen Water Seminar di Blitar', '<p>Pastinya Anda sudah pernah dengar tentang Apa itu KanGen Water... <br /><br />Mengapa hanya dengan air putih KanGen Water bisa membantu proses penyembuhan berbagai macam penyakit dan meregenerasi Sel sehingga terlihat Awet Muda dan Selalu Berstamina tinggi...<!-- pagebreak --><br /><br />Bagaimana KanGen Water bisa juga bisa membantu meningkatkan taraf kehidupan kita melalui BISNIS RUMAHAN... <br />Mau tau jawabannya??..... Gemar Sehati mempersembahkan: <br />KanGen Water Seminar di Blitar<br />Sabtu, 12 Maret 2016 <br />Start pk 13.00 WIB - selesai <br />Tempat: LEC ( Local Education Centre) <br />Jl.Raya Sawahan Pojok Garum Blitar<br />Ruang anggrek (lewat depan gedung KPPN Blitar)<br /><br />Presenter : <br />Yussa Marulli ST (6A3) <br />(Pengusaha - Surabaya ) <br />Pangeran Chandra, SE&nbsp; (4A)<br />(Pengusaha - Surabaya )<br />Investasi Rp 20.000 !!!</p>\r\n<p><br /><strong>Hub Hp/ WA : 0857.06101792 / 0896.04817038</strong> <br /><br />Ayo Ajak keluarga, teman, dan orang-orang yang Anda pedulikan untuk hadir dan utk melihat kehebatan demo "air ajaib" KanGen water <br /><br />Salam Kangen... <br />"Gemarsehati Team" <br />Change Your Water, <br />Change Your LIFE</p>\r\n<p>&nbsp;</p>', 'Mengapa hanya dengan air putih KanGen Water bisa membantu proses penyembuhan berbagai macam penyakit dan meregenerasi Sel sehingga terlihat Awet Muda dan Selalu Berstamina tinggi...', 580, 1, 0, 2, '', '', '2016-03-09 22:33:22', '2016-03-15 22:56:32'),
(69, 'KanGen Water Seminar di Padang panjang', '<p>Pastinya Anda sudah pernah dengar tentang apa itu KanGen Water... Mengapa hanya dengan air putih KanGen Water bisa membantu proses penyembuhan berbagai macam penyakit dan Regenerasi Sel sehingga terlihat Awet Muda dan Selalu Berstamina tinggi... Bagaimana KanGen Water bisa juga bisa membantu meningkatkan taraf kehidupan kita... Mau tau jawabannya??..... <!-- pagebreak --></p>\r\n<p><strong>Gemar Sehati mempersembahkan: KanGen Water Seminar di Padang panjang</strong><br />Sabtu, 23 april 2016 Start sesi 1 pk 09.00 WIB - selesai <br />sesi 2 pk 13.00-selesai<br />Tempat: Aula A Hotel Pangeran<br />Jl. KH.A.DAHLAN No 7 Padang panjang<br />&nbsp;( Depan Secata B Padang panjang )<br />Presenter :<br />&nbsp;Ir Yussa Marulli (6A3) <br />( Pengusaha - Surabaya ) <br />Pangeran Chandra, SE&nbsp; (4A) <br />&nbsp;( Pengusaha - Surabaya )<br />Investasi 1org: Rp 20.000 <br />2org: Rp 30.000!!!<br />Hub Hp/ WA : 081363930799<br />Ayo&nbsp; Ajak keluarga, teman, dan orang-orang yang Anda pedulikan untuk hadir dan utk melihat kehebatan demo "air ajaib" KanGen water <br />Salam Kangen... <br />"Gemarsehati Team" <br />Change Your Water, <br />Change Your LIFE</p>', 'Pastinya Anda sudah pernah dengar tentang apa itu KanGen Water... Mengapa hanya dengan air putih KanGen Water bisa membantu proses penyembuhan berbagai macam penyakit dan Regenerasi Sel sehingga terlihat Awet Muda dan Selalu Berstamina tinggi... Bagaimana KanGen Water bisa juga bisa membantu meningkatkan taraf kehidupan kita... Mau tau jawabannya??..... ', 588, 1, 0, 2, '', '', '2016-03-15 22:55:34', '2016-03-15 22:55:34'),
(70, 'Aplikasi Gemarsehati di google playstore', '<p>Gerakan Minum Air Sehat Indonesia | Komunitas anak bangsa yang peduli akan kesehatan masyarakat Indonesia dengan melakukan edukasi, berbagi pengalaman serta kampanye mendorong setiap anak bangsa untuk berprilaku hidup sehat dengan minum air yang sehat dan alami.<!-- pagebreak --></p>\r\n<p>Aplikasi ini mempermudah menemukan lokasi mitra Gemarsehati dan juga sebagai media informasi Gemarsehati.</p>\r\n<p><strong>PASTIKAN "LOCATION" pada device Android Anda sudah aktif. Untuk menggunakan fitur "Mitra Nearby"</strong></p>\r\n<p><br /><strong>Salam Kangen..."Gemarsehati Team" </strong><br /><strong>Change Your Water, </strong><br /><strong>Change Your LIFE</strong></p>\r\n<p>Silahkan download melalui playstore android anda, atau melalui link URL berikut :</p>\r\n<p><a href="https://play.google.com/store/apps/details?id=kangen.gemarsehati.enagic">https://play.google.com/store/apps/details?id=kangen.gemarsehati.enagic</a></p>\r\n<p>Official Website : www.gemarsehati.com<br />Address:<br />Jl. Medokan Asri Barat I Blok P2 - Surabaya 60295 Indonesia</p>', 'Aplikasi ini mempermudah menemukan lokasi mitra Gemarsehati dan juga sebagai media informasi Gemarsehati.\r\nSalam Kangen..."Gemarsehati Team"\r\nChange Your Water,\r\nChange Your LIFE', 589, 1, 0, 2, '1', '', '2016-03-15 23:02:04', '2016-03-18 14:53:17'),
(71, 'ENAGIC WELLNESS SEMINAR - SOLO', '<p dir="ltr">Hallo Solo</p>\r\n<p dir="ltr">Saat ini Teknologi jepang mengubah Air Putih menjadi Air Ajaib, Dengan Karakteristik Mirip Air Zam Zam...</p>\r\n<p dir="ltr">Bagaimana air biasa bisa bercampur dengan minyak ?</p>\r\n<p dir="ltr">Bahkan konon katanya air ini bisa juga mensejahterakan kehidupan pemiliknya :-)</p>\r\n<p dir="ltr">Pastikan Anda cari tau apa dan kenapa dengan air yang fenomenal ini, yuk ajak keluarga, teman, dan orang-orang yang anda pedulikan untuk hadir di :</p>\r\n<p dir="ltr">Move Megaland Hotel Solo<br />Jl. Slamet Riyadi (Depan RS.KASIH IBU)</p>\r\n<p dir="ltr">Minggu, 20 Maret 2016<br />Jam 12.30 - selesai</p>\r\n<p dir="ltr">Pembicara : <br />Budi Arif Fakhruddin, ST<br />(6A Yogyakarta)<br />dan<br />Ricky Antonio, ST, CH, CHt<br />(6A Surabaya)</p>\r\n<p dir="ltr">Cari tau segera dan pastikan hadir di acara ini, 100 orang pertama yang hadir GRATIS. <br />Jangan TUNDA kesempatanmu...</p>', 'hADIRILAH... ENAGIC Wellness Seminar di Kota SOLO Minggu 20 Maret 2016', 590, 2, 0, 2, '', '0', '2016-03-18 10:32:01', '2016-03-18 10:32:16'),
(73, 'TALKSHOW Radio Tentang Revolusi Kesehatan', '<p>Dengarkan Dan Ramaikan TALK SHOW kami tentang REVOLUSI SEHAT dengan Menampilkan salah Satu Profile RUMAH SAKIT yang Memberikan Menu ORGANIK FOOD untuk Pasien Pasiennya, Melakukan Terapi Pasien Dengan mengurangi Asupan KIMIA secara Natural dan Satu-Satunya Rumah Sakit yang Melakukan EDUKASI Pasca Rawat Inap kepada Pasien dan Keluarga PASIEN...... <br /><br /><strong>Penasaran Bagaimana RUMAH SAKIT WIYUNG Melakukannya..?</strong> <br /><br />Ikutilah TALKSHOW RADIO ttg REVOLUSI KESEHATAN oleh RS Rumah Sakit Wiyung Sejahtera dan Gemarsehati pada Hari Rabu Besok Malam 14 Sep 2016 Jam 19.00-21.00 di SINDO TRIJAYA FM Surabaya Frek 104.7 Mhz.</p>\r\n<p>Anda juga bisa mengikuti secara live di www.sindotrijayasurabaya.com dan telp interaktif di 031-596.1047</p>', 'TALKSHOW RADIO ttg REVOLUSI KESEHATAN ', 623, 1, 0, 2, '1', '', '2016-09-13 07:13:34', '2016-09-13 07:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `ms_privilige`
--

CREATE TABLE IF NOT EXISTS `ms_privilige` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_privilige`
--

INSERT INTO `ms_privilige` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `ms_product_categories`
--

CREATE TABLE IF NOT EXISTS `ms_product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_product_categories`
--

INSERT INTO `ms_product_categories` (`id`, `name`, `description`) VALUES
(1, 'Merchandise', 'Merchandise desc'),
(2, 'Leveluk', 'Leveluk desc');

-- --------------------------------------------------------

--
-- Table structure for table `ms_products`
--

CREATE TABLE IF NOT EXISTS `ms_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `ms_categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ms_products`
--

INSERT INTO `ms_products` (`id`, `name`, `description`, `ms_media_id`, `ms_categories_id`) VALUES
(1, 'Leveluk SD 501', 'With the strongest electrolysis chamber available, fully-equipped with a built-in electrolysis chamber, and featuring a large LCD panel and clear voice prompts, the SD501 is the leader of the pack. 7-Platinum-plated Titanium plates comprise the electrolysis chamber.', 467, 2),
(2, 'Leveluk SUPER 501', 'This highly productive machine has 7 and 5 electrode plates, a twin hose system, industry leading cleaning system, a built-in tank for the electrolysis enhancer, and a water pressure regulating function making this machine a must for the large family!', 468, 2),
(3, 'Leveluk JRII', 'The JRII has three solid electrode plates which reduces the energy consumption. Due to the solid platinum-coated titanium plates, this unit can still produce the strong acid and strong Kangen waters. Due to the lower power consumption and fewer plates, this machine is only recommended for singles or couples. Families should consider one of the more robust models above due to the amount of output required.', 469, 2),
(4, 'Leveluk SD501 Platinum', 'Fully-equipped with a built-in electrolysis chamber, and featuring a large LCD panel and clear voice prompts, the SD501 PLATINUM is the leader of the pack. 7-Platinum-plated Titanium plates comprise the electrolysis chamber.', 470, 2),
(5, 'Leveluk R', 'Enagic prides itself as the GLOBAL LEADER in water ionization devices. In fact, Enagic single-handedly created the global market, and stands as the DOMINANT PLAYER. Now, YOU too can take advantage of Enagic''s respect for ultimate quality, matched with a simple and effective entry model into the delights of water ionization. Deliver fresh, crisp, healthy Kangen Water® at the push of a button with our all-new-designed Leveluk R model.', 471, 2),
(6, 'Leveluk K8', 'The Kangen® 8 is now Enagic®''s most powerful antioxidant machine - featuring 8 platinum-dipped titanium plates! This additional electrode plate increases the electrolysis surface area, improves water ionization, and heightens the antioxidant production potential. ', 526, 2),
(8, 'Anespa', 'Enjoy the soothing feeling of being in a Hot Spring Resort everyday!  Take pleasure in the relaxing effects of ANESPA''s mineral-ion water. Ensures removal of virtually 100% of residual chlorine. The cartridge purification system effectively removes chlorine and bacteria, leaving you with a fresh, invigorating feeling.', 473, 2),
(9, 'Baju', 'Merchandise baju', 483, 1),
(10, 'Polo Shirt', 'Polo shirt gemar sehati', 483, 1),
(11, 'Mug', 'Mug Gemarsehati', 483, 1),
(12, 'Stiker', 'stiker gemar sehati', 483, 1),
(13, 'Botol', 'Botol Gemarsehati', 483, 1),
(14, 'Topi', 'topi gemarsehati', 483, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ms_provinces`
--

CREATE TABLE IF NOT EXISTS `ms_provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `ms_provinces`
--

INSERT INTO `ms_provinces` (`id`, `code`, `name`) VALUES
(1, NULL, 'Bali'),
(2, NULL, 'Bangka Belitung'),
(3, NULL, 'Banten'),
(4, NULL, 'Bengkulu'),
(5, NULL, 'DI Yogyakarta'),
(6, NULL, 'DKI Jakarta'),
(7, NULL, 'Gorontalo'),
(8, NULL, 'Jambi'),
(9, NULL, 'Jawa Barat'),
(10, NULL, 'Jawa Tengah'),
(11, NULL, 'Jawa Timur'),
(12, NULL, 'Kalimantan Barat'),
(13, NULL, 'Kalimantan Selatan'),
(14, NULL, 'Kalimantan Tengah'),
(15, NULL, 'Kalimantan Timur'),
(16, NULL, 'Kalimantan Utara'),
(17, NULL, 'Kepulauan Riau'),
(18, NULL, 'Lampung'),
(19, NULL, 'Maluku'),
(20, NULL, 'Maluku Utara'),
(21, NULL, 'Nanggroe Aceh Darussalam (NAD)'),
(22, NULL, 'Nusa Tenggara Barat (NTB)'),
(23, NULL, 'Nusa Tenggara Timur (NTT)'),
(24, NULL, 'Papua'),
(25, NULL, 'Papua Barat'),
(26, NULL, 'Riau'),
(27, NULL, 'Sulawesi Barat'),
(28, NULL, 'Sulawesi Selatan'),
(29, NULL, 'Sulawesi Tengah'),
(30, NULL, 'Sulawesi Tenggara'),
(31, NULL, 'Sulawesi Utara'),
(32, NULL, 'Sumatera Barat'),
(33, NULL, 'Sumatera Selatan'),
(34, NULL, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `ms_rss`
--

CREATE TABLE IF NOT EXISTS `ms_rss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ms_rss`
--

INSERT INTO `ms_rss` (`id`, `ms_user_id`, `title`, `link`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, 'Berita Property', 'http://www.housing-estate.com/rss', '1', '2015-04-26 12:54:17', '2015-05-11 06:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `ms_sliders`
--

CREATE TABLE IF NOT EXISTS `ms_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ms_sliders`
--

INSERT INTO `ms_sliders` (`id`, `title`, `ms_media_id`, `link`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Innovative Water Technology', 465, '', 'Quality, durability, and innovation are the hallmarks of Enagic performance. Find out why we''re the only one, not merely number one! ', '2015-08-12 08:09:10', '2016-01-25 05:16:20'),
(3, 'A Vision of True Health', 464, '', 'With a long history of providing the highest-quality products, superior customer service, and opportunities for financial wealth, Enagic can help you fulfill your dreams of a better life. Discover our philosophy of triple health: physical, mental, and financial. ', '2015-08-14 09:17:07', '2016-01-25 05:16:02'),
(4, 'Water For All Stages of Life', 557, '', 'Water is essential for life, but it is often overlooked. It''s critical not only to drink water, but to drink the right water; find out how choosing Enagic water can truly change your life with a Kangen Water® system. ', '2015-08-20 11:17:15', '2016-02-12 07:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `ms_socials`
--

CREATE TABLE IF NOT EXISTS `ms_socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ms_status_posts`
--

CREATE TABLE IF NOT EXISTS `ms_status_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_status_posts`
--

INSERT INTO `ms_status_posts` (`id`, `title`) VALUES
(1, 'draft'),
(2, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `ms_support_cities`
--

CREATE TABLE IF NOT EXISTS `ms_support_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `ms_support_cities`
--

INSERT INTO `ms_support_cities` (`id`, `city_id`, `name`) VALUES
(1, 14, 'Ambon'),
(2, 19, 'Balikpapan'),
(3, 20, 'Banda Aceh'),
(4, 21, 'Bandar Lampung'),
(5, 22, 'Bandung'),
(6, 23, 'Bandung'),
(7, 24, 'Bandung Barat'),
(8, 31, 'Bangkalan'),
(9, 33, 'Banjar'),
(10, 34, 'Banjar'),
(11, 35, 'Banjarbaru'),
(12, 36, 'Banjarmasin'),
(13, 37, 'Banjarnegara'),
(14, 39, 'Bantul'),
(15, 42, 'Banyuwangi'),
(16, 48, 'Batam'),
(17, 54, 'Bekasi'),
(18, 55, 'Bekasi'),
(19, 62, 'Bengkulu'),
(20, 63, 'Bengkulu Selatan'),
(21, 64, 'Bengkulu Tengah'),
(22, 65, 'Bengkulu Utara'),
(23, 67, 'Biak Numfor'),
(24, 70, 'Binjai'),
(25, 75, 'Blitar'),
(26, 76, 'Blora'),
(27, 78, 'Bogor'),
(28, 79, 'Bogor'),
(29, 80, 'Bojonegoro'),
(30, 86, 'Bondowoso'),
(31, 89, 'Bontang'),
(32, 91, 'Boyolali'),
(33, 92, 'Brebes'),
(34, 93, 'Bukittinggi'),
(35, 95, 'Bulukumba'),
(36, 103, 'Ciamis'),
(37, 104, 'Cianjur'),
(38, 105, 'Cilacap'),
(39, 106, 'Cilegon'),
(40, 107, 'Cimahi'),
(41, 108, 'Cirebon'),
(42, 109, 'Cirebon'),
(43, 114, 'Denpasar'),
(44, 115, 'Depok'),
(45, 120, 'Dumai'),
(46, 126, 'Garut'),
(47, 128, 'Gianyar'),
(48, 129, 'Gorontalo'),
(49, 130, 'Gorontalo'),
(50, 131, 'Gorontalo Utara'),
(51, 133, 'Gresik'),
(52, 149, 'Indramayu'),
(53, 151, 'Jakarta Barat'),
(54, 152, 'Jakarta Pusat'),
(55, 153, 'Jakarta Selatan'),
(56, 154, 'Jakarta Timur'),
(57, 155, 'Jakarta Utara'),
(58, 156, 'Jambi'),
(59, 157, 'Jayapura'),
(60, 160, 'Jember'),
(61, 163, 'Jepara'),
(62, 164, 'Jombang'),
(63, 169, 'Karanganyar'),
(64, 171, 'Karawang'),
(65, 177, 'Kebumen'),
(66, 178, 'Kediri'),
(67, 179, 'Kediri'),
(68, 182, 'Kendari'),
(69, 195, 'Ketapang'),
(70, 196, 'Klaten'),
(71, 203, 'Kotabaru'),
(72, 204, 'Kotamobagu'),
(73, 209, 'Kudus'),
(74, 212, 'Kupang'),
(75, 213, 'Kupang'),
(76, 220, 'Lahat'),
(77, 222, 'Lamongan'),
(78, 230, 'Langsa'),
(79, 235, 'Lhokseumawe'),
(80, 242, 'Lubuk Linggau'),
(81, 243, 'Lumajang'),
(82, 247, 'Madiun'),
(83, 248, 'Madiun'),
(84, 249, 'Magelang'),
(85, 250, 'Magelang'),
(86, 251, 'Magetan'),
(87, 252, 'Majalengka'),
(88, 255, 'Malang'),
(89, 256, 'Malang'),
(90, 265, 'Mamuju'),
(91, 266, 'Mamuju Utara'),
(92, 267, 'Manado'),
(93, 276, 'Mataram'),
(94, 278, 'Medan'),
(95, 283, 'Metro'),
(96, 289, 'Mojokerto'),
(97, 290, 'Mojokerto'),
(98, 292, 'Muara Enim'),
(99, 305, 'Nganjuk'),
(100, 306, 'Ngawi'),
(101, 318, 'Padang'),
(102, 321, 'Padang Panjang'),
(103, 326, 'Palangka Raya'),
(104, 327, 'Palembang'),
(105, 328, 'Palopo'),
(106, 329, 'Palu'),
(107, 330, 'Pamekasan'),
(108, 331, 'Pandeglang'),
(109, 334, 'Pangkal Pinang'),
(110, 336, 'Parepare'),
(111, 337, 'Pariaman'),
(112, 342, 'Pasuruan'),
(113, 343, 'Pasuruan'),
(114, 344, 'Pati'),
(115, 345, 'Payakumbuh'),
(116, 348, 'Pekalongan'),
(117, 349, 'Pekalongan'),
(118, 350, 'Pekanbaru'),
(119, 352, 'Pemalang'),
(120, 353, 'Pematang Siantar'),
(121, 363, 'Ponorogo'),
(122, 364, 'Pontianak'),
(123, 365, 'Pontianak'),
(124, 367, 'Prabumulih'),
(125, 369, 'Probolinggo'),
(126, 370, 'Probolinggo'),
(127, 375, 'Purbalingga'),
(128, 376, 'Purwakarta'),
(129, 377, 'Purworejo'),
(130, 386, 'Salatiga'),
(131, 387, 'Samarinda'),
(132, 391, 'Sanggau'),
(133, 398, 'Semarang'),
(134, 399, 'Semarang'),
(135, 402, 'Serang'),
(136, 403, 'Serang'),
(137, 409, 'Sidoarjo'),
(138, 415, 'Singkawang'),
(139, 417, 'Sintang'),
(140, 418, 'Situbondo'),
(141, 420, 'Solok'),
(142, 421, 'Solok'),
(143, 422, 'Solok Selatan'),
(144, 424, 'Sorong'),
(145, 425, 'Sorong'),
(146, 426, 'Sorong Selatan'),
(147, 427, 'Sragen'),
(148, 428, 'Subang'),
(149, 430, 'Sukabumi'),
(150, 431, 'Sukabumi'),
(151, 433, 'Sukoharjo'),
(152, 438, 'Sumbawa'),
(153, 439, 'Sumbawa Barat'),
(154, 440, 'Sumedang'),
(155, 441, 'Sumenep'),
(156, 442, 'Sungaipenuh'),
(157, 444, 'Surabaya'),
(158, 445, 'Surakarta (Solo)'),
(159, 447, 'Tabanan'),
(160, 455, 'Tangerang'),
(161, 456, 'Tangerang'),
(162, 457, 'Tangerang Selatan'),
(163, 462, 'Tanjung Pinang'),
(164, 467, 'Tarakan'),
(165, 468, 'Tasikmalaya'),
(166, 469, 'Tasikmalaya'),
(167, 470, 'Tebing Tinggi'),
(168, 472, 'Tegal'),
(169, 473, 'Tegal'),
(170, 476, 'Temanggung'),
(171, 489, 'Tuban'),
(172, 492, 'Tulungagung'),
(173, 497, 'Wonogiri'),
(174, 498, 'Wonosobo'),
(175, 501, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `ms_tags`
--

CREATE TABLE IF NOT EXISTS `ms_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `ms_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ms_tags`
--

INSERT INTO `ms_tags` (`id`, `title`, `description`, `ms_user_id`, `created_at`, `updated_at`) VALUES
(2, 'Antioxidation', '', 0, '2015-05-11 03:51:23', '2016-01-25 16:21:21'),
(4, 'leveluk', '', 0, '2015-05-11 06:58:16', '2016-01-25 16:21:05'),
(5, 'surabaya', '', 0, '2015-05-29 07:16:34', '2016-01-25 16:21:57'),
(6, 'Alkalinity', '', 0, '2015-08-17 10:08:02', '2016-01-25 16:21:32'),
(7, 'anespa', '', 0, '2015-08-17 10:08:15', '2016-01-25 16:23:47'),
(8, 'gemarsehati', '', 0, '2015-09-05 02:21:02', '2016-01-25 16:22:07'),
(9, 'kangenwater', '', 0, '2015-09-05 02:21:14', '2016-01-25 16:22:19'),
(10, 'airsehat', '', 0, '2015-09-05 02:21:18', '2016-01-25 16:22:31'),
(11, 'enagicsurabaya', '', 0, '2015-09-05 02:36:02', '2016-01-25 16:23:03'),
(13, 'enagic', '', 0, '2016-01-25 05:02:29', '2016-01-25 05:02:29'),
(14, 'ph', '', 0, '2016-01-25 05:07:53', '2016-01-25 05:07:53'),
(15, 'seminar', '', 0, '2016-03-15 22:54:45', '2016-03-15 22:54:45'),
(16, 'event kangenwater', '', 0, '2016-03-15 22:55:03', '2016-03-15 22:55:03'),
(17, 'aplikasi', '', 0, '2016-03-15 23:00:13', '2016-03-15 23:00:13'),
(18, 'android', '', 0, '2016-03-15 23:00:16', '2016-03-15 23:00:16'),
(19, 'event', '', 0, '2016-09-13 07:11:10', '2016-09-13 07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `ms_themes`
--

CREATE TABLE IF NOT EXISTS `ms_themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ms_themes`
--

INSERT INTO `ms_themes` (`id`, `code`, `title`, `description`, `active`, `created_at`, `updated_at`) VALUES
(2, 'jovem', '4Jovem ', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ms_type_club`
--

CREATE TABLE IF NOT EXISTS `ms_type_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ms_type_club`
--

INSERT INTO `ms_type_club` (`id`, `name`, `code`) VALUES
(2, 'Core Leader', 'core-leader'),
(3, 'Double executive', 'double-executive'),
(4, 'Club Leader', 'club-leader'),
(5, 'Executive Leader', 'executive-leader'),
(6, 'Smartphone', 'phone'),
(7, 'notebook', 'laptop'),
(8, 'umroh', 'umroh'),
(9, 'trip', 'trip-bangkok'),
(10, 'Toyota-agya', 'agya');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alvarisi@live.com', '86b06590850c38d3f305ecefa903eb76f2456b1e645566d086003c8f40a7df24', '2015-05-19 10:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `tr_achievment`
--

CREATE TABLE IF NOT EXISTS `tr_achievment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_leaders_id` int(11) NOT NULL,
  `ms_achievement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tr_category_posts`
--

CREATE TABLE IF NOT EXISTS `tr_category_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_post_id` int(11) NOT NULL,
  `ms_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=297 ;

--
-- Dumping data for table `tr_category_posts`
--

INSERT INTO `tr_category_posts` (`id`, `ms_post_id`, `ms_category_id`) VALUES
(75, 34, 3),
(147, 32, 3),
(193, 51, 5),
(197, 33, 8),
(198, 31, 8),
(199, 28, 8),
(200, 30, 8),
(202, 55, 3),
(203, 49, 1),
(204, 49, 2),
(220, 40, 3),
(222, 56, 3),
(227, 58, 7),
(228, 59, 7),
(231, 61, 12),
(234, 62, 3),
(236, 64, 3),
(237, 37, 14),
(238, 47, 14),
(239, 65, 13),
(249, 54, 3),
(250, 50, 9),
(251, 42, 14),
(254, 46, 14),
(255, 63, 3),
(261, 45, 14),
(264, 41, 1),
(265, 41, 2),
(266, 67, 1),
(267, 67, 2),
(268, 66, 2),
(271, 52, 5),
(272, 69, 1),
(273, 69, 2),
(276, 68, 1),
(277, 68, 2),
(283, 71, 1),
(284, 71, 2),
(285, 70, 1),
(286, 70, 2),
(295, 73, 1),
(296, 73, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tr_comments`
--

CREATE TABLE IF NOT EXISTS `tr_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tr_detail_portfolios`
--

CREATE TABLE IF NOT EXISTS `tr_detail_portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `ms_portfolio_id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=324 ;

--
-- Dumping data for table `tr_detail_portfolios`
--

INSERT INTO `tr_detail_portfolios` (`id`, `type`, `ms_media_id`, `ms_portfolio_id`, `caption`, `description`, `link`) VALUES
(24, '2', 466, 3, 'Enagic Kangen Water® SD501', '', 'https://www.youtube.com/watch?v=WvczGXn8hQo'),
(306, '1', 504, 1, 'enagic1', '', ''),
(307, '1', 506, 1, 'enagic2', '', ''),
(308, '1', 507, 1, 'Leveluk Super 501', '', ''),
(309, '1', 508, 1, 'Leveluk SD 501 Platinum', '', ''),
(310, '1', 509, 1, 'Leveluk SD 501', '', ''),
(311, '1', 510, 1, 'Kangen Water', '', ''),
(315, '2', 520, 3, 'Dampak minum KW pada Tubuh', '', 'https://www.youtube.com/watch?v=194ldjSzknI&list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX'),
(316, '2', 521, 3, 'Apa Kangen Water ?', '', 'https://www.youtube.com/watch?v=5L1U9b3oOGg&list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX&index=2'),
(317, '2', 596, 3, 'Uji Coba memasak Kangen Water', 'Bagaimana bila Kangen Water dimasak? Apakah berpengaruh pH dan Antioxidannya?', 'https://youtu.be/UcVls89RdR4?list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX'),
(318, '2', 597, 3, 'Hewan lebih memilih minum Kangen Water', 'Ternyata Hewan saja bisa tahu mana air yang sehat', 'https://youtu.be/Z7MF29XKfh4?list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX'),
(319, '2', 598, 3, 'Reaksi Sel Darah setelah minum Kangen Water', 'Tahukah anda bagaimana reaksi Kangen Water pada sel darah kita?', 'https://youtu.be/FRv8aPcP-WM?list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX'),
(321, '2', 599, 10, 'Eczim pada Anak menggunakan Kangen Water pH 2.5', '', 'https://youtu.be/3kussDefzBY?list=PLXVRfRTJKfXMLzBnN8FHTB2RICDYJLrSX'),
(322, '2', 603, 10, 'P Tarman Pasien Tremor dan Parkinson', 'P Tarman ini adalah konsumen gemarsehati surabaya yang awalnya menderita tremor terus berlanjut ke parkinson. Awalnya datang ke depo kangen water gemarsehati di surabaya utara beliau diantar anaknya dan selalu ngiler (keluar ludahnya sendiri). setelah rut', 'https://youtu.be/SZPWa6HU-O0?list=PLXVRfRTJKfXNy1nE-sipu1f1DsH2IZwi-'),
(323, '2', 604, 10, 'Terstimoni Pasien Kanker Getah Bening', '', 'https://youtu.be/fe_oIy5RCZs?list=PLXVRfRTJKfXNy1nE-sipu1f1DsH2IZwi-');

-- --------------------------------------------------------

--
-- Table structure for table `tr_logs`
--

CREATE TABLE IF NOT EXISTS `tr_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `logable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logable_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2087 ;

--
-- Dumping data for table `tr_logs`
--

INSERT INTO `tr_logs` (`id`, `ms_user_id`, `name`, `action`, `date`, `logable_type`, `logable_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Detik Finance', 'insert', '2015-04-26 19:54:17', 'App\\Rss', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'News', 'update', '2015-04-26 19:54:34', 'App\\MenuDetail', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'News', 'update', '2015-04-26 19:56:46', 'App\\MenuDetail', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'cek', 'insert', '2015-04-26 21:17:31', 'App\\Portfolio', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Small Medium Enterprise', 'update', '2015-04-26 21:17:46', 'App\\Portfolio', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Small Medium Enterprise', 'update', '2015-04-26 21:18:24', 'App\\Portfolio', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'baru', 'insert', '2015-04-26 21:20:59', 'App\\MenuDetail', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Small Medium Enterprise', 'update', '2015-04-26 21:21:26', 'App\\Portfolio', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Agrobisnis', 'update', '2015-04-26 21:36:35', 'App\\Portfolio', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'cek', 'delete', '2015-04-26 21:37:49', 'App\\DetailPortfolio', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'cek', 'delete', '2015-04-26 21:42:17', 'App\\DetailPortfolio', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'cek', 'delete', '2015-04-26 21:48:37', 'App\\Portfolio', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'Portofolio Investment', 'insert', '2015-04-26 21:49:08', 'App\\Portfolio', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'Small Medium Enterprise', 'update', '2015-04-26 21:49:16', 'App\\Portfolio', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'Agrobisnis', 'update', '2015-04-26 21:49:22', 'App\\Portfolio', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 'Financial', 'update', '2015-04-26 21:49:28', 'App\\Portfolio', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 'Property', 'update', '2015-04-26 21:49:33', 'App\\Portfolio', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 'Portofolio Investment', 'update', '2015-04-26 21:50:49', 'App\\MenuDetail', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 'History', 'update', '2015-04-28 19:59:37', 'App\\Post', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, '', 'update', '2015-04-28 20:01:14', 'App\\Media', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 'img_20150418_224834.JPG', 'delete', '2015-04-28 20:01:40', 'App\\Media', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'yosh', 'update', '2015-04-28 20:01:59', 'App\\Media', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'gant', 'update', '2015-04-28 20:02:12', 'App\\Media', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, '', 'update', '2015-04-28 20:02:30', 'App\\Media', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, '', 'update', '2015-04-28 20:02:51', 'App\\Media', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, '', 'update', '2015-04-28 20:03:04', 'App\\Media', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, '', 'update', '2015-04-28 20:03:16', 'App\\Media', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 'img_20150418_224151.jpg - img_20150428_201404.jpg', 'update', '2015-04-28 20:04:14', 'App\\Media', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1, '', 'update', '2015-04-28 20:04:34', 'App\\Media', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, '', 'update', '2015-04-28 20:04:59', 'App\\Media', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, '', 'update', '2015-04-28 20:05:19', 'App\\Media', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 1, '', 'update', '2015-04-28 20:05:40', 'App\\Media', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 'img_20150418_232318.jpg', 'delete', '2015-04-28 20:05:47', 'App\\Media', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 1, 'History', 'update', '2015-04-28 20:06:41', 'App\\Post', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 'Management PT. Hasanah Mulia Investama', 'update', '2015-04-28 20:07:09', 'App\\Post', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, 'About Us', 'update', '2015-04-28 20:45:34', 'App\\Post', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1, 'img_20150428_203646.jpg', 'insert', '2015-04-28 20:46:36', 'App\\Media', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 1, 'img_20150428_205647.png', 'insert', '2015-04-28 20:47:56', 'App\\Media', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 1, 'Founder PT. Hasanah Mulia Investama', 'update', '2015-04-28 20:48:45', 'App\\Post', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 1, 'Founder PT. Hasanah Mulia Investama', 'update', '2015-04-28 20:56:22', 'App\\Post', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 1, 'About Us', 'update', '2015-04-28 20:56:41', 'App\\Post', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 1, 'Contact Us', 'update', '2015-04-28 20:56:54', 'App\\Post', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 1, 'Founder PT. Hasanah Mulia Investama', 'update', '2015-04-28 20:58:22', 'App\\Post', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 1, 'Founder PT. Hasanah Mulia Investama', 'update', '2015-04-28 21:00:42', 'App\\Post', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 1, 'Founder PT. Hasanah Mulia Investama', 'update', '2015-04-28 21:03:57', 'App\\Post', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 1, 'Legalitas Perusahaan', 'insert', '2015-04-29 14:46:59', 'App\\Post', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 1, 'Legalitas Perusahaan', 'update', '2015-04-29 14:49:55', 'App\\Post', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, 'Legalitas Perusahaan', 'update', '2015-04-29 14:50:13', 'App\\Post', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 1, 'Legalitas Perusahaan', 'insert', '2015-04-29 14:50:47', 'App\\Menu', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2086, 2, 'Seminar 501 System Indonesia', 'delete', '2016-09-30 20:22:04', 'App\\Post', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tr_media_posts`
--

CREATE TABLE IF NOT EXISTS `tr_media_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_post_id` int(11) NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tr_menu_details`
--

CREATE TABLE IF NOT EXISTS `tr_menu_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_menu_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ms_menu_type_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `custom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `tr_menu_details`
--

INSERT INTO `tr_menu_details` (`id`, `ms_menu_id`, `parent_id`, `ms_menu_type_id`, `order`, `title`, `custom`, `code`) VALUES
(35, 1, 0, 2, 1, 'About', '34', 'about'),
(38, 1, 0, 1, 1, 'Media', '1', 'news'),
(45, 6, 0, 5, 2, '4Jovem TV', '0', 'tivi'),
(46, 6, 0, 1, 1, '4Jovem Event', '2', 'event'),
(48, 4, 0, 5, 1, 'Facebook', 'http://facebook.com/gemarsehati', 'fanspage'),
(49, 4, 0, 5, 1, 'Twitter', 'http://twitter.com/Gemarsehatiteam', 'twitter'),
(57, 1, 38, 1, 4, 'News', '2', 'event'),
(70, 3, 0, 5, 5, 'Core Leader', '/member/core-leader', 'leader-core'),
(77, 1, 38, 9, 1, 'Photo', '1', 'photo'),
(78, 1, 38, 9, 2, 'Video', '2', 'video'),
(87, 1, 86, 5, 2, 'Android', 'https://play.google.com', 'downloadandroid'),
(90, 1, 0, 6, 1, 'Product Enagic', '5', 'product'),
(91, 1, 0, 7, 1, 'Find Mitra', '11', 'findmitra'),
(92, 1, 35, 2, 4, 'Visi Misi', '63', 'visimisi'),
(93, 1, 0, 1, 1, 'Testimoni', '7', 'testimoni'),
(94, 4, 0, 5, 1, 'Instagram', 'http://instagram.com/gemarsehati', 'instagram'),
(95, 1, 90, 2, 1, 'Sistem Pembayaran', '30', 'sistembayar'),
(96, 1, 90, 6, 4, 'Produk List', '#', 'listpro'),
(97, 1, 93, 1, 2, 'Testimoni Bisnis', '12', 'bisnistest'),
(98, 1, 93, 1, 1, 'Testimoni Kesehatan', '13', 'sehattest'),
(99, 1, 35, 2, 1, 'Siapa Kami', '56', 'siapa'),
(100, 1, 35, 2, 3, 'Komitmen', '62', 'komitmen'),
(101, 1, 35, 2, 2, 'Aktivitas', '64', 'aktivitas'),
(103, 1, 91, 7, 7, 'Nearby Mitra', '1', 'nearbymitra'),
(104, 1, 91, 8, 8, 'Mitra City', '1', 'miracity'),
(105, 1, 38, 5, 7, 'Event', '/calendar', 'event');

-- --------------------------------------------------------

--
-- Table structure for table `tr_post_tags`
--

CREATE TABLE IF NOT EXISTS `tr_post_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_post_id` int(11) NOT NULL,
  `ms_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=395 ;

--
-- Dumping data for table `tr_post_tags`
--

INSERT INTO `tr_post_tags` (`id`, `ms_post_id`, `ms_tag_id`) VALUES
(113, 32, 2),
(114, 32, 6),
(115, 32, 10),
(212, 28, 2),
(213, 28, 4),
(214, 28, 5),
(216, 49, 13),
(236, 56, 6),
(237, 56, 8),
(238, 56, 9),
(239, 56, 10),
(248, 61, 2),
(249, 61, 6),
(250, 61, 8),
(251, 62, 6),
(252, 62, 10),
(253, 62, 11),
(254, 62, 13),
(255, 62, 14),
(259, 37, 13),
(260, 47, 2),
(261, 47, 4),
(262, 47, 6),
(263, 47, 7),
(275, 42, 2),
(276, 42, 4),
(277, 42, 5),
(288, 46, 2),
(289, 46, 8),
(290, 46, 9),
(291, 46, 11),
(292, 63, 8),
(293, 63, 9),
(294, 63, 11),
(302, 45, 6),
(303, 45, 9),
(304, 45, 13),
(305, 45, 14),
(310, 41, 13),
(311, 41, 14),
(312, 67, 8),
(313, 67, 9),
(314, 67, 11),
(315, 67, 13),
(316, 67, 14),
(317, 66, 6),
(318, 66, 8),
(319, 66, 9),
(320, 66, 10),
(321, 66, 13),
(322, 66, 14),
(327, 69, 9),
(328, 69, 10),
(329, 69, 13),
(330, 69, 15),
(331, 69, 16),
(336, 68, 9),
(337, 68, 10),
(338, 68, 11),
(339, 68, 13),
(355, 71, 8),
(356, 71, 9),
(357, 71, 13),
(358, 71, 15),
(359, 70, 9),
(360, 70, 11),
(361, 70, 13),
(362, 70, 17),
(363, 70, 18),
(388, 73, 2),
(389, 73, 9),
(390, 73, 11),
(391, 73, 13),
(392, 73, 15),
(393, 73, 16),
(394, 73, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tr_theme_menus`
--

CREATE TABLE IF NOT EXISTS `tr_theme_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ms_theme_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tr_theme_menus`
--

INSERT INTO `tr_theme_menus` (`id`, `ms_theme_id`, `code`) VALUES
(1, 1, 'top_menu'),
(2, 1, 'user_menu_1'),
(3, 1, 'user_menu_2'),
(4, 1, 'user_menu_3'),
(5, 1, 'user_menu_4'),
(6, 1, 'user_menu_5'),
(7, 2, 'top_menu'),
(8, 2, 'user_menu_1'),
(9, 2, 'user_menu_2'),
(10, 2, 'user_menu_3');

-- --------------------------------------------------------

--
-- Table structure for table `tr_user_detail`
--

CREATE TABLE IF NOT EXISTS `tr_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referal` varchar(255) NOT NULL,
  `enagic_id` varchar(255) NOT NULL,
  `custom` varchar(255) NOT NULL,
  `jenis_mesin` varchar(255) NOT NULL,
  `sn_mesin` varchar(255) NOT NULL,
  `panggilan` varchar(255) NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL,
  `pin_bb` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `ms_gender_id` int(11) NOT NULL,
  `ms_city_id` int(11) NOT NULL,
  `ms_media_id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `tr_user_detail`
--

INSERT INTO `tr_user_detail` (`id`, `referal`, `enagic_id`, `custom`, `jenis_mesin`, `sn_mesin`, `panggilan`, `notelp`, `nohp`, `pin_bb`, `address`, `kodepos`, `ms_gender_id`, `ms_city_id`, `ms_media_id`, `facebook`, `twitter`, `latitude`, `longitude`) VALUES
(3, '', '1064209', 'Yussa', 'Leveluk SD 501', '', 'Yussa', '085234056590', '08113545456', '', 'Jl. Medokan Asri Barat X No 17 Rungkut', '60286', 1, 444, 562, 'facebook.com/gemarsehati', '', '-7.3294016', '112.7906533'),
(4, '', '1069547', 'Panca', 'Leveluk SD 501', '', 'Panca', '0315328736', '085312345959', '', 'Jalan Muria 6 Petemon Sawahan', '60252', 1, 444, 563, 'facebook.com/Pangeran Chandra Sasmita', '@pancasasmita', '-7.257484', '112.7232809'),
(6, '', '1068779', 'fikar', 'Leveluk SD 501', '', 'Fikar', '012839349234', '02394238545', '', 'Graha raya bintaro Cornelia residence pondok jagung 1 GS.11 no 4 pondok jagung pondok jagung Timur serpong Utara ', '15326', 1, 455, 493, 'Fikar Arman', '', '-6.2023936', '106.6527099'),
(8, '', '', 'Dev', 'Leveluk SD 501', '', 'Dev', '085234056590', '085234056590', '', 'Jl. Teknik Kimia, Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', '65151', 1, 255, 503, 'facebook.com/imaduddinaf', 'twitter.com/imaduddinaf', '-7.2810685', '112.7977162'),
(9, '', '2609906', 'Rusdi', 'Leveluk SD 501', '', 'Rusdi', '02717685740', '087835257878', '', 'gentan', '51002', 1, 445, 550, '', '', '-7.5734315', '110.2007504'),
(10, '', '1072746', 'Purnomo', 'Leveluk SD 501', '', 'Purnomo', '02717685740', '085229976702', '', 'PERUMAHAN CEMPAKA ASRI 2 no.32 Kebangkitan', '', 1, 445, 493, '', '', '-7.5754887', '110.8243272'),
(11, '', '2600650', 'Panda', 'Leveluk SD 501', '', 'Panda', '', '0811335554', '', 'Kupang Indah 17/43', '60225', 1, 444, 491, 'Ricky Antonio', '', '-7.2813894', '112.7015285'),
(16, '', '2600926', '2600926', 'Leveluk SD 501', '41241508-W', 'Pipit', '', '081553359333', '', 'Jemursari Regency C2-C3', '60292', 2, 444, 493, '', '', '-7.3168013', '112.7577523'),
(19, '', '2604689', 'Suhada', 'Leveluk Super 501', '', 'Suhada', '081703500553', '081331595595', '', 'Perum Larangan Mega Asri. Jalan Gatot Koco II   Blok A 136', '', 1, 409, 549, 'Mohamad Suhada', '', '-7.4497718', '112.7015495'),
(20, '', '2603152', 'Asty ', 'Leveluk SD 501', '48255257-w', 'Asty ', '081235077989', '082213228909', '5cd69606', 'Perumahan cerme indah blok Y no 02_03 cerme', '61171', 2, 133, 493, 'ryanto moh kasnin ihsan', '', '-7.1652437', '112.6519882'),
(21, '', '2601264', 'Tiko', 'Leveluk SD 501', '', 'Tiko', '0274484500', '081387390001', '555061c0', 'Apotek Srikandi, Jl. Babarsari No. R3A', '55281', 1, 501, 493, 'Tiko Sinyo', '@gembirahati', '-7.7955798', '110.3694896'),
(22, '', '2611628', 'Fadilah', 'Leveluk SD 501', '55282161 - w', 'Fadilah', '0318950765', '087852635856', '56c1f023', 'Jetis 47b Kampung batik', '61213', 2, 409, 548, '', '', '-7.4497718', '112.7015495'),
(23, '', '2603929', 'Dona', 'Leveluk SD 501', '48254034-W', 'Dona', '0541290288', '085250008616', '5BD2D94B', 'Jl. P. Suryanata, Perum Bukit Pinang Batara Indah Blok C2 no 4', '75124', 2, 387, 493, 'Dona Maisarah atau hardjito achmad', 'Donalovetelo', '-7.4497718', '117.1436154'),
(24, '', '2604238', 'SUMARDIYONO', 'Leveluk SD 501', '', 'SUMARDIYONO', '', '08122704145', '5c60fe1c', 'Jl. Parangtritis KM 6.5 (timur Kampus IS Yogyakarta) JURUG RT 02, BANGUNHARJO, SEWON, BANTUL', '55187', 1, 501, 493, 'Mardi Kuncung', '@Kangen Bantul', '-7.8355373', '110.3656462'),
(25, '', '2615642', 'YETTY', 'Leveluk SD 501', '56286681', 'YETTY', '0356324334', '08123216976', '552C39B0', 'Perum Karang Indah AD 24 ', '62381', 2, 489, 586, 'Yetty Purwati', '', '-6.8949099', '112.0416754'),
(26, '', '2615931', 'Eni', 'Leveluk JR II (Junior)', '', 'Eni', '', '081703500553', '5515F76F', 'Perum firdaus F-25', '', 2, 164, 545, 'setiati_eni@yahoo.co.id', '', '0.480492', '101.4525754'),
(27, '', '2612425', 'Lisa', 'Leveluk SD 501', '', 'Lisa', '', '081249934947', '751b9648', 'Komplek kostrad tanah kusir. Jl dharma putra rt3 rw7 keb lama.', '', 1, 153, 493, 'Sulis setya', '', '-6.2614927', '106.8105998'),
(28, '', '2601152', 'Makruf', 'Leveluk SD 501', '41241445-W', 'Makruf', '0321326209', '081332616756', '5962F2B9', 'Kalimati gang 3 no.11', '61313', 1, 289, 529, 'Makruf Firmansyah', '', '-7.469449', '112.4360823'),
(29, '', '2606426', 'Rizal', 'Leveluk Super 501', '1501-2454', 'Rizal', '05428511441', '08115445252', '75C3B327', 'Jl Wonorejo 4 no B72 rt50 kel. Gunung Samarinda', '76125', 1, 19, 493, 'kangenwater_bpn@yahoo.com', '', '-0.4948232', '117.1436154'),
(30, '', '2613006', 'Hari', 'Leveluk JR II (Junior)', '59237970 - V', 'Hari', '081252801982', '08113420482', '5B907C55', 'Pondok Wage Indah II Blok EE No.6 Wage - Taman', '61257', 1, 409, 493, 'harry.rafie@yahoo.com', '', '-7.3682573', '112.7077638'),
(31, '', '2603847', 'Yoyok', 'Leveluk SD 501', '', 'Yoyok', '08123056160', '081615459999', '59DEF904', 'Jalan karangan mulya raya no 1 pondok rosan', '60227', 1, 444, 534, 'Jojok Santoso', '', '-7.2574719', '112.7520883'),
(32, '', '2606429', 'Andy', 'Leveluk SD 501', '51266866-W', 'Andy', '02934903050', '08122740720', '52AAE9AE', 'Perumahan Kebonsari Indah No. 1A, RT.03/RW.01', '56223', 1, 476, 493, 'Andy biantoro', '', '-7.3178564', '110.1779144'),
(33, '', '2603851', 'Annis', 'Leveluk SD 501', '', 'Annis', '02934903050', '081226608488', '53BA95EB', 'Perumahan Kebonsari Indah No. 1A, RT.03/RW.01', '56223', 2, 476, 493, 'Annis setyawati', '', '-7.3178564', '110.1779144'),
(34, '', '2608603', 'Krisna', 'Leveluk Super 501', '51268435-W', 'Krisna', '', '081232395666', '2BBD9FF9', 'Kebon agung rt 01 rw 30,tridadi,sleman', '', 1, 419, 493, 'Cris Carbon', '', '-7.7322015', '110.334351'),
(35, '', '2600170', 'Yesser', 'Leveluk SD 501', '', 'Yesser', '', '083854947773', '', 'Batu ampar 2 gg puskesmas no 7 condet jak timur', '10302', 1, 151, 493, '', '', '-6.1683295', '106.7588494'),
(36, '', '2613602', 'Wibowo', 'Leveluk SD 501', '55281131-W', 'Wibowo', '085815727641', '085706101792', '7E08BD4A', 'Jalan Doho 11 Rejotangan ', '66293', 1, 492, 546, 'Wibowo Purnomo', '', '-8.091221', '111.9641728'),
(37, '', '2612971', 'TOMY', 'Leveluk SD 501', '', 'TOMY', '', '08122745117', '5224E872', 'PERUMAHAN KEBONSARI INDAH (POJOK TIMUR) RT 3 RW 1 KELURAHAN KEBONSARI KECAMATAN TEMANGGUNG', '56223', 1, 476, 493, 'TOMY YUDIYANTORO', '@tomy_yudiyant', '-7.3175989', '110.181954'),
(38, '', '2606031', 'Mega', 'Leveluk Super 501', '', 'Mega', '', '082188008801', '75350D95', 'Graha Raya Bintaro Cornelia Residence blok Gs 11 no 4 Serpong Utara', '', 2, 457, 547, 'Mega Mustafa ', '@megaputeri', '-6.2835218', '106.7112933'),
(39, '', '1067641', 'Irza', 'Leveluk Super 501', '', 'Irza', '08115427134', '08118156677', '', 'Perum Daksa/Palm Hils, Puri Alamanda Blok PA 11 No.17 RT.07 Kel. Sepinggan', '76116', 1, 19, 493, '', '', '-1.2379274', '116.8528526'),
(40, '', '1066466', 'Bayu', 'Leveluk SD 501', '', 'Bayu', '', '081357333242', '54F28FC6', 'Jl. Puyuh Timur 1 No. 22 Bintaro Utama Sektor 5', '15222', 1, 457, 493, 'Septa Bayu Christiary', '@airkangenID', '-6.2835218', '106.7112933'),
(41, '', '2617333', 'Dian', 'Leveluk SD 501', '57290897-w', 'Dian', '0271893702', '081393371111', '520b35b2', 'Mojosari jl.bima 2 rt 02/01 sragen kulon', '57212', 2, 427, 493, 'Dian fitriana', '', '-7.419408', '111.022491'),
(42, '', '1066110', 'Candra', 'Leveluk SD 501', '', 'Candra', '081383850039', '081383850039', '', 'Pesona Madani (PM)3 No.16~17, Balikpapan Baru', '76114', 1, 19, 493, '', '', '-1.2379274', '116.8528526'),
(43, '', '2606372', 'Anto', 'Leveluk SD 501', '5126685710', 'Anto', '08562019016', '085220222204', '28817c8e', 'Jl. KH. Nakhrawi RT 06 RT 03, Kelurahan Mangkukusuman, Kecamatan Tegal Timur, Kota Tegal, Propinsi Jawa Tengah (depan TK Syi''arul Islam)', '52123', 1, 472, 493, 'hadianta@yahoo.com', '', '-6.8797041', '109.1255917'),
(44, '', '1064997', 'MUKHLIS', 'Leveluk Super 501', '', 'MUKHLIS', '03191745477', '0811373770', '', 'Rungkut asri timur V no 8', '60293', 1, 444, 493, '', '', '-7.329714', '112.7799907'),
(45, '', '2614944', 'Decky', 'Leveluk JR II (Junior)', '', 'Decky', '085732659787', '082111086679', '5a5829bf', 'Perum Oma Green Land blok O1, Tlogo Bedah, Menganti', '', 1, 133, 544, 'Decky Marata', '', '-7.1652437', '112.6519882'),
(46, '', '2610945', 'Mamad', 'Leveluk JR II (Junior)', '', 'Mamad', '02129871750', '08165420877', '7CFA5472', 'Komplek Villa Rizky Ilhami B3 / 6', '15001', 1, 455, 543, '', '', '-6.2023936', '106.6527099'),
(47, '', '2608926', 'Dyna', 'Leveluk SD 501', '', 'Dyna', '', '081804506999', '', 'Jl semenromo 102 waringinrejo cemani', '', 1, 445, 538, 'mira dyna R irawati', '', '-7.5754887', '110.8243272'),
(48, '', '2609518', 'edy', 'Leveluk SD 501', '', 'edy', '', '081327449089', '533d13b3', 'jl.soepardi Lingkungan krajan Rt01/01 kebonsari', '56223', 1, 476, 493, 'edy saputro', '', '-7.3178564', '110.1779144'),
(49, '', '2609578', 'Yadi', 'Leveluk Super 501', '51268509', 'Yadi', '085236204143', '082331147381', '56b501bd', 'Perum Tegal Besar Permai II Blok- N3', '68132', 1, 160, 493, 'Yadi saja', '', '-8.1733118', '113.7009312'),
(50, '', '1069546', 'Andy', '', '', 'Andy', '', '081330892199', '2B52BC3B', 'Jl. Aryo Bebangah 153, Aloha, Waru', '61254', 1, 409, 530, 'Self Healing with Kangen Water', '', '-7.4497718', '112.7015495'),
(51, '', '2600163', 'Lia', 'Leveluk Super 501', '', 'Lia', '', '081341151486', '53f9f0bc', 'Jl. Lasoso no 52B', '', 2, 329, 541, 'Afdhaliah Tjatjo Thaha ', '', '-0.8898421', '119.844934'),
(52, '', '2606245', 'Lisa ', 'Leveluk Super 501', '', 'Lisa ', '', '081210839302', '5cf05863', 'Jl Meruyung Raya no 9', '', 1, 115, 540, 'Nurlisawati Lisa ', '', '-6.3776097', '106.7698504'),
(53, '', '2607245', 'Hera', 'Leveluk Super 501', '', 'Hera', '', '085242025448', '56a66ac5', 'Btn pengawu blok G2, no.23,  kec. tatanga', '', 1, 329, 539, 'Zuhairah Zunnurain ', '', '43.8118946', '18.5711013'),
(54, '', '2626246', 'Novi', 'Leveluk SD 501', '', 'Novi', '', '081381123102', '', 'Graha raya cluster Dahlia loka RA 2 no.9', '', 2, 457, 493, '', '', '-6.2835218', '106.7112933'),
(55, '', '2602439', 'Arie', 'Leveluk SD 501', '9.88E+11', 'Arie', '0313576980', '0811344267', '597D6980', 'Jl. Ikan Duyung No.43 tanjung Perak', '60177', 2, 444, 493, 'Arie-Farida Ariyati', '', '-7.221467', '112.727412'),
(56, '', '2603027', 'Eko / Pras', 'Leveluk JR II (Junior)', '7865335678', 'Eko / Pras', '0318536044', '0811323966', '5A6A9E23', 'Komplek Delta Sari Indah Blok BN - 15 Waru', '65268', 1, 409, 493, 'Eko Prasetyo', '', '-7.4497718', '112.7015495'),
(57, '', '2616404', 'LUKMAN', 'Leveluk JR II (Junior)', 'NY239143HG', 'LUKMAN', '', '081332700042', '5B281422', 'ISTANA MENTERI BLOK B5 NO 26 CEMENGKALANG', '61234', 1, 409, 493, 'Wie Harsyah', '@KangenWater_Sda', '-7.4497718', '112.7015495'),
(58, '', '2612276', 'SUDAR', 'Leveluk JR II (Junior)', '57236512-V', 'SUDAR', '', '081332990654', '7CDAD53C', 'JL. HASANUDIN NO.111 BALUNG KULON KEC. BALUNG', '68161', 1, 160, 493, 'www.facebook.com/sud4rw4nto', '@Sudarwanto17', '-8.3358386', '113.5544328'),
(59, '', '1068221', 'Alfian', 'Leveluk SD 501', '', 'Alfian', '', '082112155145', '', 'Perumahan Posindo, BDS 1, Blok E No. 50 Damai Bahagia - Balikpapan', '76114', 1, 19, 493, 'kangenhouse', '@kangenhouse', '-1.2379274', '116.8528526'),
(60, '', '2608539', 'YULIE', 'Leveluk SD 501', '', 'YULIE', '0215301610', '08161886173', '5A3A7AD1', 'Jl.ANGGREK ROSLIANA 4 H65 SLIPI ', '11480', 2, 151, 493, 'yulieyuliete@yahoo.com', '', '-6.1929478', '106.7936378'),
(61, '', '2603153', 'Yanny', 'Leveluk SD 501', '', 'Yanny', '08123164740', '081931038260', '2B9F03D7', 'Jl. Raya Rungkut Menanggal No. 12', '60293', 1, 444, 493, 'Yanny BundaWulan', '@Eritrina_Rina', '-7.3410569', '112.7678701'),
(62, '', '2600167', 'vicky', 'Leveluk SD 501;Leveluk R', '', 'vicky', '', '087854320207', '', 'rungkut asri timur I no.8 RK4 RW5', '60293', 1, 444, 493, 'Yamaica fikron', '', '-7.2574719', '112.7520883'),
(63, '', '2612133', 'Naning', 'Leveluk SD 501', '', 'Naning', '0343421202', '08124907347', '7CE62DDD', 'Jln. Soekarno Hatta II/34', '67131', 2, 342, 528, '', '', '-2.9801764', '104.7158894'),
(64, '', '2610403', 'Amram Ary', 'Leveluk SD 501', '', 'Amram Ary', '0315011929', '085730156000', '5a2294d4', 'Griya Kebon Agung 2 Blok H3/11 Sukodono', '61258', 1, 409, 536, 'Amram Ary', '@amram_ary', '-7.4497718', '112.7015495'),
(65, '', '2600162', 'Bang Yusuf', 'Leveluk SD 501', '', 'Bang Yusuf', '', '08157694242', '585E76', 'Jl. Jakasura 2 Rt.23 Rw.6 Harjosari Kidul Adiwerna Tegal', '52194', 1, 472, 493, 'Bang Yusuf', '', '-6.9562763', '109.1270608'),
(66, '', '2612136', 'Syaiful', 'Leveluk SD 501', '55280480-W', 'Syaiful', '', '081331183709', '', 'Taman Puspa Anggaswangi M2/9B Sukodono', '', 1, 409, 493, 'Syaifularifin', '@saif837', '-7.4497718', '112.7015495'),
(67, '', '1071258', 'Abi / Abidin', 'Leveluk Super 501', '34229412-W', 'Abi / Abidin', '5483042067', '081351303300', '', 'Jl. Pupuk Raya Perum Pesona Bukit Sintuk Blok F3 No. 4 RT. 50', '75313', 1, 89, 542, '', '', '0.120863', '117.4800445'),
(68, '', '2616179', 'Komariah', 'Leveluk SD 501', '57290745-W', 'Komariah', '', '08123238770', '', 'Lotus Regency D40 Ketintang Baru Selatan', '60231', 2, 444, 493, '', '', '-7.3249354', '112.7256886'),
(69, '', '2614802', 'Neny', 'Leveluk SD 501', '57 289662-W', 'Neny', '', '0816674403', '', 'Perumahan Jatisawit Asri Timur Blok V5 RT 08 RW 51 Jitengan Balecatur Gamping Sleman', '55295', 2, 501, 493, '', '', '-7.8122949', '110.2981151'),
(70, '', '1068981', 'Tanti', 'Leveluk Super 501', '', 'Tanti', '541250571', '08125520208', '5bb96c36', 'Perum Bukit Solong Durian Blok A9 No 9 Sempaja Samarinda', '75119', 2, 387, 493, 'Tanti Yana Sari', '', '-0.4948232', '117.1436154'),
(71, '', '1067146', 'Sholikan', 'Leveluk SD 501', '', 'Sholikan', '541275200', '0811584418', '575e5d6e', 'Jl. Jakarta Blok CP. No.6 RT.64 Kelurahan Loabakung Kec. Sei Kunjang 75000', '75000', 1, 387, 527, 'Sholikan', '', '-0.4948232', '117.1436154'),
(72, '', '2611326', 'Puri', 'Leveluk R', '', 'Puri', '', '0816562516', '', 'Jl Buntu No.  39D Kebayoran Lama ', '', 2, 153, 493, 'Puri Dyah', '@PoenkPuri', '-6.230462', '106.781231'),
(73, '', '2608570', 'Uung', 'Leveluk Super 501', '', 'Uung', '215322475', '081298841213', '', 'Salon Fortuna, Jl Inspeksi Kali Grogol No.  119B Kemanggisan Slipi', '', 2, 151, 537, 'Urfatun Naeni ', '', '-6.1683295', '106.7588494'),
(74, '', '2611211', 'Hari', 'Leveluk SD 501', '55282096-W', 'Hari', '318071627', '081553134007', '73E0D034', 'Perum Surya Asri Blok A.5 No.6 Ds. Sidokepung, Kec. Buduran', '', 1, 409, 531, 'Hari Yulianto', 'hariyul', '-7.4138464', '112.7045342'),
(75, '', '2605729', 'ANISA', 'Leveluk SD 501', '', 'ANISA', '', '081357032934', '550c45e7', 'Jl boulevard 31 perum Graha majapahit ', '', 2, 289, 533, 'Anisa Rulita', '', '-7.4704747', '112.4401329'),
(76, '', '2602380', 'Tety', 'Leveluk SD 501', 'TYH-401', 'Tety', '0318914840', '081357774519', '2B4C1C1CE', 'Jl. Pahlawan no. 79 Gedangan', '61254', 2, 409, 535, '', '', '-7.4495435', '112.7087793'),
(77, '', '2607760', 'JOKO YESSS', 'Leveluk SD 501', '51267003-W', 'JOKO YESSS', '', '08122785744', '2A82FF39', 'Perum DEPKES Blok D3 No 27', '56115', 1, 249, 532, 'Joko Susilo', '', '-7.4797342', '110.2176941'),
(78, '', '2608914', 'Jokprat', 'Leveluk SD 501', '', 'Jokprat', '', '081357450888', '5126888B', 'Di Tropodo Waru Sidoarjo', '61256', 1, 409, 493, 'Joko Pratomo', '', '-7.3588392', '112.7583752'),
(79, '', '1068469', 'Bu Sahlan (Atik)', 'Leveluk Super 501', '', 'Bu Sahlan (Atik)', '', '081333637020', '', 'Bojonegoro', '', 2, 80, 493, '', '', '-7.1524786', '111.8869293'),
(80, '', '1068978', 'Eko', 'Leveluk Super 501', '', 'Eko', '', '082136515818', '', 'Ds. RowoBungkul Ngawen ', '', 1, 76, 493, '', '', '-7.0822542', '111.2904644'),
(81, '', '', 'Andri ', '', '', 'Andri ', '-', '081216714067 ', '', 'Jl. Wahid Hasyim XXI Blok 6 No 2 ', '68137 ', 1, 160, 613, '', '', '-8.1733118', '113.7009312'),
(83, '', '', 'ANANG', '', '', 'ANANG', '08117304077', '081233948301', '5CDC92F5', 'Jl. Ikan Mujair Raya No. 01 Rt/Rw : 05/07 Tunjungsekar, Lowokwaru', '64125', 1, 255, 493, 'Anang Sulis Setiyo Awan', '', '-7.9296566', '112.6376133'),
(84, '', '', 'Ichsan', '', '', 'Ichsan', '0274 450820', '081326620955', '750ED629', 'Jl. Nitikan Baru No. 4 Umbulharjo', '55162', 1, 501, 554, 'ichsan santoso', '@ichsansa', '-7.817071', '110.383062'),
(85, '', '', 'Fika', '', '', 'Fika', '', '081216595441', '26761579', 'Puri Indah Asri CI-04 ', '61271', 2, 409, 493, '', '', '-7.4497718', '112.7015495'),
(87, '', '', 'bangun', '', '', 'Bangun', '08996540660', '085329959396', '', 'Perumahan Limas Garden Blok H7A5', '56319', 1, 498, 493, 'agung selalu''w bangun', '', '0', '0'),
(88, '', '', 'imah', '', '', 'imah', '08112778825', '085640001145', '57945e75', 'jati kulon Rt.01 Rw.5 Jati - Kudus', '59347', 2, 209, 493, 'imah khamimah', '', '31.768319', '35.21371'),
(90, '', '2611739', 'Pipit Kwan', '', '', 'Pipit Kwan', '', '081332330105', '5C7618AF', 'Apartemen Puncak Permai, Jl. Raya Darmo Permai 3 Tower B-1127 ', '60226', 2, 444, 567, 'Pipit Kwan', '@PipitKwan', '-7.2574719', '112.7520883'),
(91, '', '', 'www.kangenwaterwonosobo.blogspot.com', '', '', 'MAS BOIM', '', '085291368953 / WA. 082242575883', '', 'Jl. Kyai Muntang RT. 1 RW. 2  Sidomulyo', '56311', 1, 498, 493, 'https://www.facebook.com/BoriminKangenWaterWonosobo', '', '-7.3555775', '109.9139594'),
(92, '', '', 'Ghofar ', '', '', 'Ghofar ', '082 11085 7833', '087 88863 8494 ', '55910C5B', 'Jalan Baladewa 24, Tanah Tinggi, Johar Baru', '10540', 1, 152, 493, 'Ghofar Ismail ', '@ghofarism', '-6.1769975', '106.8512127'),
(93, '', '', 'OMAHKANGENWATERBANDENGAN', '', '', 'PAK TEMU BKD', '082134258330', '082134258330', '', 'JL. NYAMPLUNG INDAH BANDENGAN RT 05/02 JEPARA', '59432', 1, 163, 493, 'Omah Kangen Water Bandengan Jepara', 'TEMUDIYONO', '-6.5804981', '110.6789833'),
(98, '', '', 'itok', '', '', 'itok', '', '081217405527', '', 'Puri Indah Asri CI-04', '61271', 1, 409, 493, '', '', '0', '0'),
(99, '', '', 'berkah99', '', '', 'Sony', '089650321229', '085795885989', '2a79cf56', 'Jln. Girilaya 5 No.9', '60254', 1, 444, 493, 'subekti_ns@yahoo.com', 'subekti_ns@yahoo.com', '-6.5804981', '110.6789833'),
(100, '', '', 'Imam_rahayudi', 'SD501', '', 'Imam', '-', '081226009711', '', 'Perum Permata Ungu Bl V120 Ds Watugolong Krian ', '95059', 1, 409, 493, '-', '-', '-6.1769975', '110.6789833'),
(101, '', '', 'ARIS', '', '', 'ARIS', '', '08122743058', '', 'Jl.Perintis Kemerdekaan Krajan RT.04/04 Tlogorejo Temanggung', '56251', 1, 476, 605, 'Moh Aris Kusharyanto', 'masaries07', '-7.302810', '110.160921'),
(102, '', '', 'ENDAH RINI', '', '', 'ENDAH RINI', '', '081328167606', '5557ACAD', 'Jl.Perintis Kemerdekaan Krajan RT.04/04 Tlogorejo Temanggung', '56251', 2, 476, 606, 'Endah Rini ', '@endarini', '-7.302810', '110.160921'),
(103, '', '', 'Abidin', '', '', 'Abidin', '05483042067', '081351303300', '595AFC04', 'Jl. Pupuk Raya Perum Pesona Bukit Sintuk Blok F3 No. 4', '75313', 1, 89, 610, 'Kangen Water Bontang', '', '0.162835', '117.461125'),
(104, '', '', 'Fauzi', '', '', 'Fauzi', '', '081347128886', '5455E7DD', 'Perumahan Polres Bontang ', '75313', 1, 89, 611, '', '', '0.162792', '117.461082'),
(105, '', '', 'kirha', 'Leveluk JR II', '', 'kirha', '', '085733243530', '', 'Jl. Gubeng Kertajaya 9C no.27 A', '60286', 2, 444, 493, '', '', '-7.2768884', '112.7410182'),
(106, '', '', '', '', '', 'Hotna', '081268697676', '082112155145', '', 'Jl. Jend. Sudirman No. 13 RW 1 RT 3 Tanjungbatu Kundur, Karimun - Kepulauan Riau', '29662', 2, 172, 628, '', '', '0.668364', '103.456635');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ms_privilige_id` int(11) NOT NULL,
  `tr_user_detail_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=127 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `ms_privilige_id`, `tr_user_detail_id`, `created_at`, `updated_at`, `active`) VALUES
(1, 'gemarsehati', 'admin@gemarsehati.com', '$2y$10$Uebz9brpnLoE.RVkwebRx.OXR3Hve4KXpkyX.xDrJ5ry9YoFfO4S.', 'B5XqsrZMMdDCSGNRMbRAC689B57UCRJ3LowgwAm4WiNGym5rNmd9x0K7nmx2', 1, 0, '2015-04-26 11:52:24', '2016-09-30 13:16:59', 1),
(2, 'author', 'panca@gemarsehati.com', '$2y$10$m9tYzjcfbgfw3UB5A54Z1uPbdaDOvFy9fDHhDh9OAv72Ak2EYtj3K', 'SPnx8UmGSPtqSLkb6gpt9nUxl4gcKjro13pr5AY60MdkBDNyZgX28EspUWpf', 1, 0, '0000-00-00 00:00:00', '2016-03-24 10:13:38', 1),
(13, 'Ir. Yussa Marulli', 'gemarsehati@gmail.com', '$2y$10$gcffTOM8b2r0KfORovy9X.c9dvXrHL1sIqevDOSH/8NZ/qHBoGTxG', 'exB1pnfMLqk4T9Bq5Cvwp2wFbWrp53oLCTbf1QzriB3mKBaCTyXeTUcM31SG', 2, 3, '2016-01-24 06:58:06', '2016-03-11 20:01:08', 1),
(14, 'Pangeran Chandra Sasmita', 'kangenwatersby@gmail.com', '$2y$10$rz1dG4OQ7/yqR.BPUayG8OsumxYyD8S.LSXdwcYry75ktqo4bOH0q', 'VabPaYeApmoctkTPbCDEXytqair7JOut20kg3QZ8ShHZi6S5RcgLI2QePBf1', 2, 4, '2016-01-27 05:04:28', '2016-03-11 00:37:13', 1),
(16, 'Zulfikar Zunnurain ', 'fikar.arman@gmail.com', '$2y$10$W.IDWsShFYka/6.mD5HCYuQix4/HrHMZ5v15PWpk.ky5zfhbgnVhK', NULL, 2, 6, '2016-01-28 05:28:10', '2016-01-29 06:54:36', 1),
(18, 'Developer', 'imaduddinaf@live.com', '$2y$10$9ovd6R5NkJbkbpQkK789uOKarCV/kF0H14FbFaRX/MCsNm0ur2vYa', 'ni9dm3rmUUl92j535sx6DoplmYEYQuNOXdjgHjYSNaXMqnVrorud1imtUhgH', 2, 8, '2016-01-29 08:50:19', '2016-03-24 08:45:31', 0),
(19, 'Rusdi Inspirator', 'rusdi1177@yahoo.co.id', '$2y$10$5UtZfRzwO2eRzTyDPrN94.YtLMcRPVJacgVgFyK4rt6W/HFPMSi7.', NULL, 2, 9, '2016-01-30 23:32:46', '2016-01-30 23:41:44', 1),
(21, 'Purnomo Sulistyo', 'purnomokwsolo@yahoo.co.id', '$2y$10$FV1J9WKB89IQoQZGz./IiOikMNKdAh1sY2FbcoH9TaikOW7XfGhse', NULL, 2, 10, '2016-01-30 23:46:30', '2016-01-30 23:47:10', 1),
(22, 'Ricky Antonio', 'rickyantonio@gmail.com', '$2y$10$hRMmCY3NNFcb6dXaZrw43eXbxl8S9HXUbTRE7emBTFi6JLNmNlnQm', NULL, 2, 11, '2016-01-31 00:47:42', '2016-02-02 00:36:15', 1),
(28, 'Hariati Prihatini', 'hariati.prihatini@gmail.com', '$2y$10$Z7DiHuVmSMX1wZgpdMp1MOWvy9H6WS58Nj4ePAGbI5Zl2yhJifZkG', NULL, 2, 16, '2016-01-31 18:24:48', '2016-02-01 17:38:44', 1),
(31, 'Mohamad Suhadak', 'suhadabahtera@yahoo.co.id ', '$2y$10$wusG4Hjxeh7r0.mS4J1Yk.hhYq7ZE3UZtKQfqw0bdzIgZDZHbUC0y', NULL, 2, 19, '2016-02-01 17:34:51', '2016-02-01 22:10:36', 1),
(32, 'Astiroh', 'ryantokangenwater@gmail.com ', '$2y$10$lcU7FFB9JxXz/4EiZvYEN.QjA4Qnc0lV8utN/xewuIArRMcf1mYdy', NULL, 2, 20, '2016-02-01 17:36:31', '2016-02-01 22:10:36', 1),
(33, 'Apotek Srikandi', 'tiko.sinyo@gmail.com', '$2y$10$VoB410VWESO7hzcgsP1lseaa7xjg8CJNc8Lkbfy9Jr6Ss0QRZFwjK', NULL, 2, 21, '2016-02-01 17:37:46', '2016-02-01 17:38:12', 1),
(34, 'Fadilah', 'fadilahachsan@gmail.com', '$2y$10$FWNFsvobLbPWaGy08C4u3OkYNblKcPb28yyWYlQQrxA2c2jOaq8ga', NULL, 2, 22, '2016-02-01 17:40:03', '2016-02-01 17:43:40', 1),
(35, 'Dona Maisarah', 'gryd98@yahoo.com', '$2y$10$OBQw0TZDPC8i4F9X9.nomejHBvMbD5r6ECEmRAYjSdkjSEsiP3zFO', NULL, 2, 23, '2016-02-01 17:41:31', '2016-02-01 17:43:28', 1),
(36, 'SUMARDIYONO', 'kangenwaterbantul@gmail.com', '$2y$10$FwLv2O3.tWc/4KADk3U2AuUFHMS.2zYMluwRrtrOuo.9DP3AyCXL.', NULL, 2, 24, '2016-02-01 17:42:57', '2016-02-01 17:42:57', 1),
(37, 'YETTY PURWATI', 'yeti.purwati@gmail.com', '$2y$10$ihJTqQcGS6CE/Q.V12nFUeBDhM39rzTyxsNpVfcVOrdOEmGDd3QAG', NULL, 2, 25, '2016-02-01 17:44:37', '2016-02-02 02:01:43', 1),
(38, 'Eni Setiati Romli Putri', 'eniputri80.oke@gmail.com', '$2y$10$gkUx87ouhMjgWoFmpifTpe7G6CEUris.14BvFN1A.0SfSpyJ7x10.', NULL, 2, 26, '2016-02-01 17:46:35', '2016-02-02 02:01:42', 1),
(39, 'Sulis setyaningsih', 'lisadullah@gmail.com', '$2y$10$/xDZHOVI7GaGwWJlqE1pNOmWZwUlXtX5usOhoI1o0jjXNeb5jFxse', NULL, 2, 27, '2016-02-01 17:47:28', '2016-02-02 02:01:41', 1),
(40, 'Makruf Firmansyah', 'makruf02@gmail.com', '$2y$10$Dd1.yPGqYHZnV8bmSBijxu/JpdWXHUVquEq8gA5vWpbUDBCJ/ew32', NULL, 2, 28, '2016-02-01 17:48:27', '2016-03-11 18:34:12', 1),
(41, 'Rizal Afandi', 'kangenwater_bpn@yahoo.com', '$2y$10$EpXSx8B2VT2J81HnyMduu.yN//jB6JCC8nTZVB4iqY3Pvcg./0DR.', NULL, 2, 29, '2016-02-01 17:49:30', '2016-02-02 03:48:47', 1),
(42, 'Hari Kusnianto', 'harikusnianto@yahoo.co.id', '$2y$10$1gkE0JwuG/QJ9mSS0fNLMOuBwfZk8xJlL4IlPGma/0C3AtVVuqt36', NULL, 2, 30, '2016-02-01 17:50:29', '2016-02-02 03:48:47', 1),
(43, 'Jojok Santoso', 'dr_jojok@yahoo.com', '$2y$10$wkrixyyedUomgrGqHuGXuuG5QzanksjzPB/0DuZ2EKNSf5CHegn92', NULL, 2, 31, '2016-02-01 17:51:53', '2016-02-02 02:01:47', 1),
(44, 'Noor Andy Biantoro, SE', 'andybiantoro@gmail.com', '$2y$10$O.4anKtw2MC.NOBllMk9xOBJ.X0zbeYEslq7OE5LFCPm93iX/nS42', NULL, 2, 32, '2016-02-01 17:53:06', '2016-02-02 02:01:48', 1),
(45, 'Annis Setyawati', 'annissetyawati@gmail.com', '$2y$10$XzZk1lJi0DlH5spcQzRlo.Lq2ivhT4y10o.82pEdyGbBlEpTxUM96', NULL, 2, 33, '2016-02-01 17:54:04', '2016-02-02 02:01:46', 1),
(46, 'Krisnawan', 'criscarbon999@yahoo.com', '$2y$10$/ms0tVdcpdX6OG1TijNLu.fUgzbTmAdMT1PwtRmsvXmHfUUCSc/Du', NULL, 2, 34, '2016-02-01 17:55:01', '2016-02-02 02:01:45', 1),
(47, 'Yesser Emtazan', 'yesser.emtazan@gmail.com', '$2y$10$ZaZ29Ukr06f4h3mXAbNu7.hxykWBW3AzZspqOqpJ6VCjDJM09iUMa', NULL, 2, 35, '2016-02-01 17:55:52', '2016-02-02 02:01:50', 1),
(48, 'Wibowo Hadi Purnomo', 'purnomo.pmt@gmail.com', '$2y$10$PNxnY3sOxpo0cnIswXY.muMzKia7MccPy15oTPkYsPku8A14w95GO', NULL, 2, 36, '2016-02-01 17:56:47', '2016-02-02 02:01:51', 1),
(49, 'NOOR ANTOMY YUDIYANTORO, ST', 'mastomcute@yahoo.com', '$2y$10$fw6h2mOXyZxbjJDJD4B4Xes//Rr6BTk3Zt.LPdgwciF8qktdjs9hm', 'bjx3lAtGf5aJgmtt8IcI6mXaSgwpyrIMLisAp8fTcUSpK4qLhTE9goPsSIby', 2, 37, '2016-02-01 17:57:44', '2016-03-22 16:27:21', 1),
(50, 'Megawati Puteri ', 'megaputeri.p@gmail.com ', '$2y$10$qth2cnQwwo5H/KlAXiNKVujmBGMCZXF8VOZaW18rTnJfsK6oMzbwa', NULL, 2, 38, '2016-02-01 17:58:46', '2016-02-02 02:01:53', 1),
(51, 'Mochamad Irza Ghozali', 'mighoz@gmail.com', '$2y$10$4iSsTnZ550IYvnYV1eLzGeZRyKwHKZvwkB7PZ/Jetzoe9vapGKZ4m', NULL, 2, 39, '2016-02-01 17:59:31', '2016-03-14 06:52:26', 1),
(52, 'Septa Bayu Christiary', 'airkangenid@gmail.com', '$2y$10$Z8LanhjS7j/jB4FIpiXAQutieXso96bMcmgMjkZXSS/fp.wsyCVwW', NULL, 2, 40, '2016-02-01 18:02:31', '2016-03-13 20:46:09', 1),
(53, 'Dian fitriana', 'dianfitriana23@gmail.com', '$2y$10$s1UWVAYQDiFe5ezgqZw4UuN3TX9KgM4bPMiQhudqVXUKNp15fcMAC', NULL, 2, 41, '2016-02-01 18:03:51', '2016-02-02 02:03:01', 1),
(54, 'Candra Sosiawan', 'candrasos@gmail.com', '$2y$10$fVoKshmk0HPsHlR9MI3rX.lY7KoO6lc19qtKoh.Ha21oic0Wc8NyK', NULL, 2, 42, '2016-02-01 18:04:47', '2016-02-02 02:03:01', 1),
(55, 'Hadianta Mustaqimul Archam', 'hadiantama@gmail.com', '$2y$10$eBdjn7G/x459y3sWiWSjf.GXJSq31TQbJF/MwqnHWJBLnURgqx5DW', NULL, 2, 43, '2016-02-01 18:05:53', '2016-02-02 02:03:00', 1),
(56, 'MUKHLIS', 'mukhlis.enersol@gmail.com', '$2y$10$DWuVWGRBInCmSuUZuG.D8eV/ZOG9qmunFhpSB5fFvmX3I4kbT75va', NULL, 2, 44, '2016-02-01 18:07:18', '2016-02-02 02:02:58', 1),
(57, 'Decky Karunia Marata', 'decmarata@gmail.com', '$2y$10$gEEQvyyU7MJsupKyqM18kut9YwTW9hEn2CqM4sLkEaQ7I46YVo1U2', NULL, 2, 45, '2016-02-01 18:08:06', '2016-02-02 02:02:58', 1),
(58, 'Muhammad Aini', 'muhammad.aini7@yahoo.co.id', '$2y$10$vax/TU2cL/O8G6dIqEspNOBCdtB6OYYywxFTDYVC2dxGwbAHR1Dwq', NULL, 2, 46, '2016-02-01 18:11:50', '2016-02-02 02:02:57', 1),
(59, 'Mira dyna rachma irawati', 'zidanraka72@yahoo.com', '$2y$10$nLkWbx1oqO1ngOKrRx6lte6vIziVFircplFFgdAIRxspo9PgF8cce', NULL, 2, 47, '2016-02-01 18:12:52', '2016-02-06 20:59:53', 1),
(60, 'purwoko edy saputro', 'purwokoedysaputrosaputro@gmail.com', '$2y$10$cj/ORPfQRxzVruOuiN7KzukQjM.Zsn.SeHPppRm0IIzs1i3.ZOKnq', NULL, 2, 48, '2016-02-01 18:13:49', '2016-02-02 02:02:56', 1),
(61, 'Sunaryadi', 'sunaryadi7@gmail.com', '$2y$10$BYAe8LBuA6lAMyarm8SaGuwDKiTWtEpwOOZYuzRJZ9cdk0FR0Z4P2', NULL, 2, 49, '2016-02-01 18:15:08', '2016-02-02 02:02:55', 1),
(62, 'Andy Ariffianto', 'andiarif@gmail.com', '$2y$10$RgAtDAU2M5jzhEqgsiMCfOnpjrNps9xJWiOEwZ6VsaeRuj7SdFgOm', NULL, 2, 50, '2016-02-01 18:16:07', '2016-02-02 02:02:55', 1),
(63, 'Afdhaliah ', 'arrazak71@yahoo.com', '$2y$10$Tu2bV9zslTGeMwhLWdlo/eod3u97VxvqHeH0ML5emobNMD7.o8W/O', NULL, 2, 51, '2016-02-01 18:17:05', '2016-03-18 10:18:38', 0),
(64, 'Nurlisawati ', 'nurlisawati@gmail.com ', '$2y$10$uJXA38.Ks0hjTv.yKeKVqewLNmSzR/2AuOBIsIFynvN/mvYeqBbnm', NULL, 2, 52, '2016-02-01 18:18:03', '2016-02-02 02:03:10', 1),
(65, 'Zuhairah Zunnurain ', 'herazunnurain@gmail.com', '$2y$10$f4lo/jQStBkq2OEsDbQ20.hdvu3ZadwDcHb//oL4OZBTBdLpiZF9G', NULL, 2, 53, '2016-02-01 18:24:11', '2016-02-02 02:03:09', 1),
(66, 'Noviyanti', 'Noviyantifuad@gmail.com', '$2y$10$wBckuxbK7qcYcEd/7OVH5eT00Qjsih7INdR9rl.DzyxtGdo1So2o.', NULL, 2, 54, '2016-02-01 18:29:17', '2016-02-02 02:03:08', 1),
(67, 'Farida Ariyati', 'farida.ariyati@gmail.com', '$2y$10$8SlDkzLLNxDwZ4k3YgpPxu1bykHKIEibalFkc6DtfLxIJ4pstPOCW', NULL, 2, 55, '2016-02-01 18:32:02', '2016-02-02 02:03:07', 1),
(68, 'Ir. Eko Prasetyo', 'e_prasetyo66@yahoo.com', '$2y$10$jlG7VU6ka3LQtq4Oj04saeqhRH.wqYPd1zHuQ4Qh/I/r4ImhnhfY6', NULL, 2, 56, '2016-02-01 18:33:12', '2016-02-02 02:03:07', 1),
(69, 'LUKMAN WIHARSA', 'luqmanwie@gmail.com', '$2y$10$O3T1VdBSMuk.rpWvoeN2kOuPNW/rbMoQidsAP7b3loJZA16gGWqHe', NULL, 2, 57, '2016-02-01 18:34:37', '2016-02-02 02:03:06', 1),
(70, 'SUDARWANTO', 'sudar1to@yahoo.co.id', '$2y$10$nrUEAT.b7Gta4t8BQqPJi.8iQ3w2GNQBS/PkejQVzNObR.qVCsAkG', NULL, 2, 58, '2016-02-01 18:35:36', '2016-02-02 02:03:06', 1),
(71, 'Alfian Parlaungan', 'alfian@kangenhouse.com', '$2y$10$YIN7/wrFzaVz5I6wrHerQul3abWguBejtoh6KlO07vV3TGfJSXRJK', 'csxh1pr99mPlAErMIdc5Z2nS6PGGkpnXDexxnUKiP9Yog3XW2LXWIu3eL78W', 2, 59, '2016-02-01 18:36:08', '2016-09-28 14:03:15', 1),
(72, 'SULASMI ', 'julie.nugie@gmail.com ', '$2y$10$gl8mVOo0Smj.083pBvXbdec3QofYMfvv2KONe/yLSCcKwuJTP08/2', NULL, 2, 60, '2016-02-01 18:36:53', '2016-02-02 02:03:04', 1),
(73, 'Samiyani', 'yanny.cece@gmail.com', '$2y$10$ZXYaWmtd0XgPSEoKcKJ3seAKiog3DTae/erqtzyz4rglaTxGjGQOq', NULL, 2, 61, '2016-02-01 18:38:25', '2016-02-02 02:03:17', 1),
(74, 'Yamaica fikron', 'Yamaica.kangenwater@gmail.com', '$2y$10$qzevI9mGx8QFYySCDqwthehTs9s8vM6OPZeJJCWdX9vrkSPOBiJ6O', NULL, 2, 62, '2016-02-01 18:40:16', '2016-02-02 02:03:17', 1),
(75, 'Naning', 'mutiakurnia.mk@gmail.com', '$2y$10$Zm1HYRvaeZIOCHxr5O5L6uJ.A3oC2JuttpBDI/Agton..koHg6HpW', NULL, 2, 63, '2016-02-01 18:41:18', '2016-02-02 02:03:16', 1),
(76, 'Witjaksono Ari Subowo', 'imronwas@gmail.com', '$2y$10$Rj/MP4FAjdIqXFKhPOh8/eG5HeIhkdehMaQrcs6Z9E7MOqU3NpTTO', NULL, 2, 64, '2016-02-01 18:41:38', '2016-02-02 02:03:16', 1),
(77, 'SALAFUDIN YUSUF', 'yusufsalafudin@yahoo.com', '$2y$10$xEVes4YjoFBCRzB0G0l6beM36xhp4OUFAiV3Q5O7k3rJCuCvsaHwu', NULL, 2, 65, '2016-02-01 18:43:38', '2016-03-15 08:09:00', 1),
(78, 'Syaiful Arifin', 'saif837@gmail.com', '$2y$10$YKjXsPzzoc.hMyygv2KeruUGdmFLZHPEYJ6HXhNmW8HWrFetYlpCS', NULL, 2, 66, '2016-02-01 18:45:16', '2016-02-02 02:03:14', 1),
(79, 'Ngabidin Nur Cahyo', 'gemarsehati.bontang@gmail.com', '$2y$10$qOl2LdjQj4T8xiwTuDjZIumJuCdQ2paoXvq/kKc00WEXfcT8iqBH.', 'WkAjNqxwfVBBT01enLa9MgYyXS7CWubHBALIUSWlqKOBUZGYOxxHKED0tMg2', 2, 67, '2016-02-01 19:27:01', '2016-04-05 23:31:53', 1),
(80, 'Komariah Nurlaila', 'nurlaila_subekti@yahoo.co.id', '$2y$10$u4LZO9tstA5jQHK4wugpr.b9Kf/OS3lgKRrgVPtwAe6SBoEXqsO1S', NULL, 2, 68, '2016-02-01 19:28:44', '2016-02-02 02:03:13', 1),
(81, 'Neny Rustian', 'nenyrustian@yahoo.com', '$2y$10$azJxabFtCBKXHulwQSyvpOtlvNNdcNyNcHP3Oj.cnKPW5WEm.pfU.', NULL, 2, 69, '2016-02-01 19:30:21', '2016-03-14 07:15:09', 1),
(82, 'Tanti Yana Sari', 'Tantiyanasari@yahoo.co.id', '$2y$10$02vQRyJbgsZEdlrBe4v8RuqmBemMLGCqZwAiMHBlMVd8qfJr2qar2', NULL, 2, 70, '2016-02-01 19:32:15', '2016-03-14 07:15:10', 1),
(83, 'Sholikan', 'sholikan513@yahoo.co.id', '$2y$10$.X/dBWjak3Fzf7bC0V1Xk.PJGRY0wKOjvHw6V42ZaAvi5Cdt72HzS', NULL, 2, 71, '2016-02-01 19:33:25', '2016-03-14 07:15:17', 1),
(84, 'Puri Dyah', 'poenk.puri@gmail.com', '$2y$10$OOFDs1ap0.dr9iSLkEVa5.h5NGBxK4UTNZ6zBRD0YsGaCCvAkGsRC', NULL, 2, 72, '2016-02-01 19:40:34', '2016-03-14 07:15:18', 1),
(85, 'Urfatun Naeni ', 'Urfatun.naeni73@gmail.com', '$2y$10$kMgdT32d5/RhfoZDcH14mebvRJu8a9tykumrVlMFeU2uDhzHkza0O', NULL, 2, 73, '2016-02-01 19:43:21', '2016-03-14 07:15:20', 1),
(86, 'Hari Yulianto', 'hariyul@gmail.com', '$2y$10$VdMlFfzh0U9xeJ8o4R3DeeZq0V/2K/fZ31fvuB7dsg5YjKjYYiXT2', NULL, 2, 74, '2016-02-01 19:45:25', '2016-03-18 11:02:52', 0),
(87, 'ANISA RULITA', 'anisarulita71@gmail.com', '$2y$10$VGT./zDHqlkDIzlEDioLbeRMCUVdf3mThSG3eTmUoLQIbdUpg7Jh2', NULL, 2, 75, '2016-02-01 19:46:53', '2016-03-18 11:02:43', 1),
(88, 'Dra. Tety Setiati', 'travel.hastaco@yahoo.com', '$2y$10$ulndL3PpUNIKak/HopeQkOmuLigOpnm.b/H2pf5rAu/KkAekCHW4G', NULL, 2, 76, '2016-02-01 19:50:47', '2016-03-18 11:02:44', 1),
(89, 'DJOKO SUSILO', 'jksusilo72@gmail.com', '$2y$10$Wo9TGpYBYO0pPlMe3xG13.0FUcFhAAJ7KuObNrRE0fYMl9wulNFQy', NULL, 2, 77, '2016-02-01 20:43:08', '2016-03-18 11:02:34', 1),
(90, 'Joko Partomo', 'jpratomo01@gmail.com', '$2y$10$TrPCC8qAgs144yhRKPjT8.rXupZVX/CnkFYA12toIc396Fh3IBW6q', NULL, 2, 78, '2016-02-01 20:44:33', '2016-03-18 11:02:32', 1),
(91, 'Nadiah Hidayati', 'mighoz@yahoo.com', '$2y$10$jJPEUna3GFQbn2kRr1sEg.BgLkg8Mh/n6Fsj1hRWCUp9dykxPC41y', NULL, 2, 79, '2016-02-01 20:45:44', '2016-03-18 11:02:33', 1),
(92, 'Eko Teguh', 'ekoteguh.kw@gmail.com', '$2y$10$A9fJpXLvD4VvecVCnUfVwOEOy3VImIJROwRwd/i45.Mbq74nh5Gaa', NULL, 2, 80, '2016-02-01 20:46:46', '2016-03-18 11:02:29', 1),
(93, 'Andri Hartono ', 'andrihart77@gmail.com ', '$2y$10$Bsk4adjLyMMj4SVDHHUG9ubWoyg2NuyIvWIR/jNq3ZEKYPB5jA5.W', NULL, 2, 81, '2016-02-09 05:01:42', '2016-03-18 11:52:52', 1),
(95, 'ANANG SULIS SETIYO AWAN', 'anangkw@gmail.com', '$2y$10$.7vlhiGcKT38Rl82UjmhROVYIzEph3jVNbKKMt1asWd886fUUDvB2', NULL, 2, 83, '2016-02-09 09:07:54', '2016-03-18 11:52:54', 1),
(96, 'Ichsan Santoso', 'ichsansa@gmail.com', '$2y$10$Za0An7eNtWQcjP2GNICx9exVhUWM1ZBTkDmYRw1Qji7z80kWrLW9G', NULL, 2, 84, '2016-02-09 23:51:22', '2016-03-18 11:02:15', 0),
(97, 'Rafika Nurbaeni', 'krisnamurti3108@gmail.com', '$2y$10$kXBSkDCLf27zVmpzO4wMKeHagmo5i/Wvctk1MHEg8BtVj6qFeKrTi', NULL, 2, 85, '2016-02-12 06:13:52', '2016-03-18 11:02:14', 0),
(99, 'Agung Bangun S, SH', 'mikaelabangun@gmail.com', '$2y$10$xHb0ozf9h8hxRRlwPg0hnuuv2yu3.IASplaeEbKYxdCIwVhImMQny', 'qGxtrEhf1NV0OUGxVjY5TDYjaBZAyD9OY59RBisAMH6pvr3PG5bSlarAFOIM', 2, 87, '2016-02-13 02:45:26', '2016-03-18 11:08:16', 0),
(100, 'Noor Khamimah', 'attaqwa.buletin@gmail.com', '$2y$10$pXqsOrDvQhuvJI80eUl14u8yZ5X1K8pF2Ug0qgdcUrYQ.PE87KXa2', NULL, 2, 88, '2016-02-16 05:22:01', '2016-03-18 11:11:07', 0),
(102, 'Ir. Yussa Marulli', 'yussa@gemarsehati.com', '$2y$10$vmb65C2a8eFQCn/liWgy2OLwjAcS6YX0tJVa.KZPZnBg.BsYNf6.O', '99fHaa6hhQjQQmcaX6TUk6BCAtojTFPbLUazKleknc3g7z0k8ac8b062PqEM', 1, 0, '2015-04-26 11:52:24', '2016-02-17 00:51:29', 1),
(103, 'Mini Iskandar', 'pipitkwankw@gmail.com', '$2y$10$.3WDZjsB79phd6zvYbbocOTP9qqc4aKJIdaczFG0cVHjygqioZpuO', 'SAFkdSE7lrpdC4Sh3oFDuDbrkwtJCuyCDyFViO5rbn93qaj2kOVN01jNkyGF', 2, 90, '2016-02-19 09:01:40', '2016-03-18 11:02:18', 1),
(104, 'BORIMIN', 'griyabilqis@gmail.com', '$2y$10$lvSGz5Vfp7se0PxC7J3rNeM.ziGPNZuyb8T2OkCyQvX7cMSF9Wwse', 'peMMcTejxkBurQ0swYlgsvNMB6t7S2K39d3wMUYz1j1O0p5SPC0vtKJAkk4Z', 2, 91, '2016-02-19 22:58:21', '2016-03-18 10:57:38', 1),
(105, 'Ghofar Ismail', 'kangen.water.senen@gmail.com', '$2y$10$7mK18Wk36rPlqF4cfpg8eObQ1BtZx70BlqXFUk7GP1Z9Yg.Oq6sMy', '1g7rpwGiFy4iCri3ud5YYrHhPytD6PgmgBiZT42pLIxgrS5o0XgXvArVHPQc', 2, 92, '2016-02-26 01:49:32', '2016-03-18 10:57:37', 1),
(106, 'TEMUDIYONO', 'temudiyono@gmail.com', '$2y$10$Hgah1oJrNm2xiToEHdUxiO3V8bqQ.82Zojn.Kmw6tkQsdgrz0G7NK', 'gJW3S1dUAFzI7K9ZtIigZpJMSGc9iSKIBd4tzTGBLjZ1MGnF578Aej2LaMrl', 2, 93, '2016-02-26 04:46:35', '2016-05-23 05:58:05', 1),
(111, 'Krisnamurti', 'kangenwatersidoarjo04@gmail.com', '$2y$10$YiNFy7PAEpNdgMK.TB6SjOn9/MspSvW4S2n0M8PbU3NBjfBVpMPyy', NULL, 2, 98, '2016-03-03 17:30:27', '2016-03-18 10:57:26', 1),
(112, 'Noer Sony Subekti', 'noer.sony@gmail.com', '$2y$10$0/1SdQR9s3U4gBhQKBE3fuPGgQdOpcZXOxKFwD2Z.vYdEIXfhNcDy', NULL, 2, 99, '2016-03-09 05:08:40', '2016-03-18 10:57:25', 1),
(113, 'arsa100seed@gmail.com', 'arsa100seed@gmail.com', '$2y$10$no3v6aUuW8uyWKQtE.BSp.buGJ6pS61vLrN6E9B7xeB41tSJMSe86', NULL, 0, 0, '2016-03-11 21:01:55', '2016-03-11 21:01:55', 0),
(114, 'Imam Rahayudi', 'irdi_06@yahoo.com', '$2y$10$no3v6aUuW8uyWKQtE.BSp.buGJ6pS61vLrN6E9B7xeB41tSJMSe86', NULL, 2, 100, '2016-03-13 20:26:03', '2016-03-18 10:57:24', 1),
(115, 'NUR HANDAYANI', 'daffayazid@gmail.com', '$2y$10$nRC5xW5e5/ypx/ci8Hp00egCark2t54jhdfVcqhQuU4/VBJ2fRbBW', '4DD0FT1ec3DreBFUnXpyX4OShnV2do7VFtU7Oo69KNsEdV0nyFbVL3M86MHq', 0, 0, '2016-03-15 00:40:44', '2016-04-13 02:09:51', 0),
(116, 'vieqi', 'vieqi.rakhma@gmail.com', 'zxcasd123', NULL, 0, 0, '2016-03-19 08:22:10', '2016-03-19 08:22:10', 0),
(117, 'MOH.ARIS KUSHARYANTO,S.STP', 'masaries07@yahoo.com', '$2y$10$M5IvSu5cubNEQLIhQbXH0uq2dBu1nEU1V4HRhNOMnMRSab0blTmke', '8NcL0pKNlP5qDGQiwhEZJWOti7kLLUaauOezXdE4jjGS7ijv3pUaSvLmHGiN', 2, 101, '2016-03-24 18:35:39', '2016-04-24 00:10:20', 1),
(118, 'ENDAH SULISTYARINI,S.ST', 'tanyaendahzetha@gmail.com', '$2y$10$0s9SNmlr0TtjxU2E1n9WO.WZR8kothl2FPCdkFEgbK/GWbi.VOINa', NULL, 2, 102, '2016-03-24 19:06:42', '2016-03-29 05:31:50', 1),
(119, 'Ngabidin Nur Cahyo', 'welbecka@gmail.com', '$2y$10$uJJdF9.nlS2NNYPRm5BrlOCznVjR.vQy2xJnBz0G5SqrAsl4Yhn1q', NULL, 2, 103, '2016-04-05 23:14:05', '2016-04-05 23:14:06', 0),
(120, 'Achmad Fauzi', 'fauzi_afra@yahoo.co.id', '$2y$10$2RmDvC.n9VRABe48Lrc6YOOuvF9QNCjiE/OxkOFvgTqDyQ16MKln.', NULL, 2, 104, '2016-04-05 23:59:09', '2016-04-05 23:59:09', 0),
(121, 'Dwi Arie Trisnawanto ', 'walethitam74@gmail.com', 'kraksaan123', NULL, 0, 0, '2016-04-15 09:00:22', '2016-04-15 09:00:22', 0),
(122, 'Vieqi Rakhma Wulan SE, MMT', 'v.kirha.84@gmail.com', '$2y$10$2r1Z76FKir126xSPryjDvO5/meoVARkLhJT.U4BPxxrNmkYhl8Qn2', NULL, 2, 105, '2016-05-12 12:23:01', '2016-05-12 12:41:19', 0),
(123, 'Agni Hotna Leliwati', 'info@kangenhouse.com', 'gpKTL1000', NULL, 0, 0, '2016-09-28 12:33:52', '2016-09-28 12:33:52', 0),
(124, 'Agni Hotna Leliwati', 'kangenhouse2@gmail.com', 'gpKTL1000', NULL, 0, 0, '2016-09-28 12:54:41', '2016-09-28 12:54:41', 0),
(125, 'Agni Hotna Leliwati', 'alfianpst@gmail.com', 'gpKTL100', NULL, 0, 0, '2016-09-28 13:15:37', '2016-09-28 13:15:37', 0),
(126, 'Agni Hotna Leliwati', 'agnihotnapohan@gmail.com', '$2y$10$qGmuobjIZGoXHjpg1msLA.AZwQYa4TsKgHt6CXVhVXpy2AR/TMfTi', 'qCpNfy4Tx6Ejin5oPup8bTjDA3AxADsxmrzyPYIAH2ycUs7s2tO4acaATN6h', 2, 106, '2016-09-28 13:33:28', '2016-09-28 14:01:04', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
