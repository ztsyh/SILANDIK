-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 10.08
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jatuh_tempo`
--

CREATE TABLE `jatuh_tempo` (
  `id` varchar(11) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `no_induk` varchar(11) NOT NULL,
  `status_user` char(50) NOT NULL,
  `kategori_peminjaman` varchar(50) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jatuh_tempo`
--

INSERT INTO `jatuh_tempo` (`id`, `nama_peminjam`, `no_induk`, `status_user`, `kategori_peminjaman`, `tanggal_kembali`, `status`) VALUES
('PMJ-A-00002', 'Tiffany', '46124180000', 'Bebas Tanggungan', 'Praktikum', '2020-06-22', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
