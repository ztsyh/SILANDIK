-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 10.09
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
-- Struktur dari tabel `lokasi_penyimpanan_bahan`
--

CREATE TABLE `lokasi_penyimpanan_bahan` (
  `no` int(11) NOT NULL,
  `id` varchar(50) NOT NULL,
  `kode_bahan` varchar(50) NOT NULL,
  `kode_rak` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi_penyimpanan_bahan`
--

INSERT INTO `lokasi_penyimpanan_bahan` (`no`, `id`, `kode_bahan`, `kode_rak`, `urutan`) VALUES
(1, 'LPB01', 'M001', '35', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lokasi_penyimpanan_bahan`
--
ALTER TABLE `lokasi_penyimpanan_bahan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no` (`no`),
  ADD KEY `id_bahan` (`kode_bahan`),
  ADD KEY `kode_bahan` (`kode_bahan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lokasi_penyimpanan_bahan`
--
ALTER TABLE `lokasi_penyimpanan_bahan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
