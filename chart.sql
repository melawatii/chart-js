-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2023 pada 12.03
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chart-js`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chart`
--

CREATE TABLE `chart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(12) NOT NULL,
  `value` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chart`
--

INSERT INTO `chart` (`id`, `bulan`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Januari', '2000000', NULL, NULL),
(2, 'Februari', '1300000', NULL, NULL),
(3, 'Maret', '2500000', NULL, NULL),
(4, 'April', '900000', NULL, NULL),
(5, 'Mei', '1700000', NULL, NULL),
(6, 'Juni', '1100000', NULL, NULL),
(7, 'Juli', '300000', NULL, NULL),
(8, 'Agustus', '9500000', NULL, NULL),
(9, 'September', '5500000', NULL, NULL),
(10, 'Oktober', '2100000', NULL, NULL),
(11, 'November', '1250000', NULL, NULL),
(12, 'Desember', '1700000', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chart`
--
ALTER TABLE `chart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
