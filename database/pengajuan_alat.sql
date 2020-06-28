-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 18.49
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
-- Struktur dari tabel `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id` varchar(11) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `seri` varchar(50) NOT NULL,
  `estimasi_jumlah` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `nama_lab` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `nama_alat`, `merk`, `seri`, `estimasi_jumlah`, `satuan`, `harga`, `nama_lab`) VALUES
('PA-20062800', 'Router', 'Netgear', 'AG5647J', 7, '5', 300000, 'Multimedia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
