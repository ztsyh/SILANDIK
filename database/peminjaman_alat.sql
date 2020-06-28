-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 11:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

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
-- Table structure for table `peminjaman_alat`
--

CREATE TABLE `peminjaman_alat` (
  `id_peminjaman` varchar(100) NOT NULL,
  `tanggal_pinjam` datetime NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `kebutuhan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_alat`
--

INSERT INTO `peminjaman_alat` (`id_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `jumlah`, `id_barang`, `status`, `nama_peminjam`, `kebutuhan`) VALUES
('PINJAM001', '2020-05-21 00:00:00', '2020-05-27 00:00:00', '1', 'B0001', 'Approved', 'Siti', 'Praktikum'),
('PINJAM002', '2020-05-22 00:00:00', '2020-05-28 00:00:00', '1', 'B002', 'Approved', 'Saito', 'Praktikum');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
