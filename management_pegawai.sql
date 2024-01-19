-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 10.38
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_pegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` char(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `adress` text NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','TERMINATED') NOT NULL,
  `hired_on` datetime(3) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `name`, `gender`, `phone`, `adress`, `email`, `status`, `hired_on`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Aziz', 'Laki-Laki', '0897563436', 'Jl. Bendungan Cilodong Depok', 'Aziz@gmail.com', 'ACTIVE', '2024-01-01 14:00:43.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(2, 'Ayub', 'Laki-;Laki', '022896896', 'Jl. Depok Raya', 'Ayub291@gmail.com', 'ACTIVE', '2024-01-02 14:00:43.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(3, 'Alfan Ridho', 'Laki-Laki', '087774089391', 'Jl. Lenteng Agung', 'Alfan@gmail.com', 'ACTIVE', '2024-01-03 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(4, 'Azmi', 'Laki-Laki', '081314672323', 'Jl. Raya Bogor', '', 'ACTIVE', '2024-01-04 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(5, 'Alwan Juliawan', 'Laki-Laki', '081385115724', 'Jl. Bogor Raya Cilodong', 'Weanz@gmail.com', 'ACTIVE', '2024-01-05 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(6, 'Rika Rahma', 'Perempuan', '088219761431', 'Ds.Gunung Picung Pamijahan Bogor', 'Rika@example.com', 'INACTIVE', '2023-12-17 14:04:30.000', '2024-01-19 16:28:55.782', '2024-01-19 16:28:55.782');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
