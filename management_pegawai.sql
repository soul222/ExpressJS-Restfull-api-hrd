-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 09.10
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
  `username` varchar(100) NOT NULL,
  `hired_on` datetime(3) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `name`, `gender`, `phone`, `adress`, `email`, `status`, `username`, `hired_on`, `created_at`, `updated_at`) VALUES
(16, 'Abdul Aziz', 'Laki-Laki', '0897563436', 'Jl. Bendungan Cilodong Depok', 'Aziz@gmail.com', 'ACTIVE', 'Aziz', '2024-01-01 14:00:43.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(17, 'Ayub', 'Laki-;Laki', '022896896', 'Jl. Depok Raya', 'Ayub291@gmail.com', 'ACTIVE', 'Ayub', '2024-01-02 14:00:43.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(18, 'Alfan Ridho', 'Laki-Laki', '087774089391', 'Jl. Lenteng Agung', 'Alfan@gmail.com', 'ACTIVE', 'Alfan', '2024-01-03 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(19, 'Azmi', 'Laki-Laki', '081314672323', 'Jl. Raya Bogor', '', 'ACTIVE', 'Ami', '2024-01-04 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000'),
(20, 'Alwan Juliawan', 'Laki-Laki', '081385115724', 'Jl. Bogor Raya Cilodong', 'Weanz@gmail.com', 'ACTIVE', 'weanz', '2024-01-05 14:04:30.000', '0000-00-00 00:00:00.000', '0000-00-00 00:00:00.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `token`) VALUES
('Alfan', 'Alfan123', NULL),
('Ami', 'Azmi1234', NULL),
('Ayub', 'Ayub1234', ''),
('Aziz', 'Aziz123', NULL),
('weanz', 'Weanz123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Employees_username_key` (`username`),
  ADD UNIQUE KEY `Employees_email_key` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `Employees_username_fkey` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
