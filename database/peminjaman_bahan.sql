-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2020 pada 16.14
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
-- Struktur dari tabel `peminjaman_bahan`
--

CREATE TABLE `peminjaman_bahan` (
  `id_peminjaman` varchar(50) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jumlah` int(50) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `kebutuhan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman_bahan`
--

INSERT INTO `peminjaman_bahan` (`id_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `jumlah`, `id_barang`, `status`, `nama_peminjam`, `kebutuhan`) VALUES
('PINJAM01', '2020-05-23', '2020-06-14', 1, 'A001', 'Approved', 'Ejo', 'Praktikum');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
