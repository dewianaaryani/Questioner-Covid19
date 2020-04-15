-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 15.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `questioners`
--

CREATE TABLE `questioners` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `total_y` int(11) NOT NULL DEFAULT 0,
  `total_n` int(11) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questioners`
--

INSERT INTO `questioners` (`id`, `name`, `date`, `total_y`, `total_n`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DEWIANA COPO', '2020-04-15', 4, 2, '', '2020-04-15 11:24:24', '2020-04-15 11:24:49'),
(2, 'Dewi cantix', '2020-04-15', 1, 24, '', '2020-04-15 12:10:42', '2020-04-15 12:11:13'),
(3, 'iceyyy', '2020-04-15', 2, 20, 'RENDAH', '2020-04-15 12:13:19', '2020-04-15 12:13:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questioners_details`
--

CREATE TABLE `questioners_details` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `questioner_id` int(11) NOT NULL,
  `answer` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questioners_details`
--

INSERT INTO `questioners_details` (`id`, `question_id`, `questioner_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-04-15 11:24:31', '2020-04-15 11:24:31'),
(2, 2, 1, 1, '2020-04-15 11:24:36', '2020-04-15 11:24:36'),
(3, 3, 1, 0, '2020-04-15 11:24:39', '2020-04-15 11:24:39'),
(4, 4, 1, 0, '2020-04-15 11:24:43', '2020-04-15 11:24:43'),
(5, 5, 1, 1, '2020-04-15 11:24:47', '2020-04-15 11:24:47'),
(6, 6, 1, 1, '2020-04-15 11:24:49', '2020-04-15 11:24:49'),
(7, 1, 2, 1, '2020-04-15 12:10:47', '2020-04-15 12:10:47'),
(8, 2, 2, 0, '2020-04-15 12:10:51', '2020-04-15 12:10:51'),
(9, 2, 2, 0, '2020-04-15 12:10:51', '2020-04-15 12:10:51'),
(10, 2, 2, 0, '2020-04-15 12:10:52', '2020-04-15 12:10:52'),
(11, 2, 2, 0, '2020-04-15 12:10:52', '2020-04-15 12:10:52'),
(12, 2, 2, 0, '2020-04-15 12:10:52', '2020-04-15 12:10:52'),
(13, 3, 2, 0, '2020-04-15 12:10:53', '2020-04-15 12:10:53'),
(14, 4, 2, 0, '2020-04-15 12:10:54', '2020-04-15 12:10:54'),
(15, 5, 2, 0, '2020-04-15 12:10:56', '2020-04-15 12:10:56'),
(16, 6, 2, 0, '2020-04-15 12:10:58', '2020-04-15 12:10:58'),
(17, 8, 2, 0, '2020-04-15 12:10:59', '2020-04-15 12:10:59'),
(18, 9, 2, 0, '2020-04-15 12:11:00', '2020-04-15 12:11:00'),
(19, 10, 2, 0, '2020-04-15 12:11:01', '2020-04-15 12:11:01'),
(20, 11, 2, 0, '2020-04-15 12:11:02', '2020-04-15 12:11:02'),
(21, 12, 2, 0, '2020-04-15 12:11:03', '2020-04-15 12:11:03'),
(22, 13, 2, 0, '2020-04-15 12:11:05', '2020-04-15 12:11:05'),
(23, 14, 2, 0, '2020-04-15 12:11:06', '2020-04-15 12:11:06'),
(24, 15, 2, 0, '2020-04-15 12:11:07', '2020-04-15 12:11:07'),
(25, 16, 2, 0, '2020-04-15 12:11:07', '2020-04-15 12:11:07'),
(26, 17, 2, 0, '2020-04-15 12:11:08', '2020-04-15 12:11:08'),
(27, 18, 2, 0, '2020-04-15 12:11:09', '2020-04-15 12:11:09'),
(28, 19, 2, 0, '2020-04-15 12:11:10', '2020-04-15 12:11:10'),
(29, 20, 2, 0, '2020-04-15 12:11:11', '2020-04-15 12:11:11'),
(30, 21, 2, 0, '2020-04-15 12:11:12', '2020-04-15 12:11:12'),
(31, 22, 2, 0, '2020-04-15 12:11:12', '2020-04-15 12:11:12'),
(32, 1, 3, 0, '2020-04-15 12:13:21', '2020-04-15 12:13:21'),
(33, 1, 3, 0, '2020-04-15 12:13:22', '2020-04-15 12:13:22'),
(34, 2, 3, 1, '2020-04-15 12:13:24', '2020-04-15 12:13:24'),
(35, 3, 3, 1, '2020-04-15 12:13:25', '2020-04-15 12:13:25'),
(36, 4, 3, 0, '2020-04-15 12:13:26', '2020-04-15 12:13:26'),
(37, 5, 3, 0, '2020-04-15 12:13:27', '2020-04-15 12:13:27'),
(38, 6, 3, 0, '2020-04-15 12:13:29', '2020-04-15 12:13:29'),
(39, 8, 3, 0, '2020-04-15 12:13:30', '2020-04-15 12:13:30'),
(40, 9, 3, 0, '2020-04-15 12:13:32', '2020-04-15 12:13:32'),
(41, 10, 3, 0, '2020-04-15 12:13:33', '2020-04-15 12:13:33'),
(42, 11, 3, 0, '2020-04-15 12:13:34', '2020-04-15 12:13:34'),
(43, 12, 3, 0, '2020-04-15 12:13:35', '2020-04-15 12:13:35'),
(44, 13, 3, 0, '2020-04-15 12:13:37', '2020-04-15 12:13:37'),
(45, 14, 3, 0, '2020-04-15 12:13:38', '2020-04-15 12:13:38'),
(46, 15, 3, 0, '2020-04-15 12:13:40', '2020-04-15 12:13:40'),
(47, 16, 3, 0, '2020-04-15 12:13:41', '2020-04-15 12:13:41'),
(48, 17, 3, 0, '2020-04-15 12:13:43', '2020-04-15 12:13:43'),
(49, 18, 3, 0, '2020-04-15 12:13:44', '2020-04-15 12:13:44'),
(50, 19, 3, 0, '2020-04-15 12:13:45', '2020-04-15 12:13:45'),
(51, 20, 3, 0, '2020-04-15 12:13:46', '2020-04-15 12:13:46'),
(52, 21, 3, 0, '2020-04-15 12:13:50', '2020-04-15 12:13:50'),
(53, 22, 3, 0, '2020-04-15 12:13:55', '2020-04-15 12:13:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `name`, `created`, `modified`) VALUES
(1, 'I went out of the house', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(2, 'I use public transportation', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(3, 'I don\'t wear a mask when gathering with others', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(4, 'I\'m shaking hands with other people', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(5, 'I don\'t clean my hands before handling the steering wheel of a car / motorcycle', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(6, 'I touch objects / money that other people also touch', '2020-04-15 17:03:21', '2020-04-15 17:03:21'),
(8, 'I don\'t keep a distance 1.5 meters from others when: shopping, working, studying, worship', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'I eat outside the house', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'I don\'t drink warm water & wash my hands after arriving at the destination', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'I was in the village area of a contracted patient', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'I don\'t put the handsanitizer in front of the entrance, to clean my hands before handling the door handle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'I don\'t wash my hands with soap after I get home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'I do not provide : wet tissue / antiseptic, mask, antiseptic soap for the family at home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'I didn\'t wash my hair immediately after I arrived home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'I did\'nt socialize this personal risk assessment checklist to my family at home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'I haven\'t been exposed to sunlight for at least 15 minutes a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'I don\'t exercise for at least 30 minutes every day', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'I rarely take vitamin C & E and don\'t get enough rest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'I am over 60 years old', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'I have a disease : heart / diabetes / chronic respiratory distress', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'I did\'nt immediately immerse my used clothes & pants in hot water / soap', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `questioners`
--
ALTER TABLE `questioners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questioners_details`
--
ALTER TABLE `questioners_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `questioners`
--
ALTER TABLE `questioners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `questioners_details`
--
ALTER TABLE `questioners_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
