-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 09:51 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `master_inven`
--

CREATE TABLE `master_inven` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `alat_bahan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_inven`
--

INSERT INTO `master_inven` (`id`, `kode`, `alat_bahan`, `tanggal`, `keterangan`) VALUES
(1, 'MK02', 'pipet', '2020-09-09', 'Ada dan Kondisi Baik'),
(2, 'MK03', 'Mikroskop', '2020-09-16', 'Ada dan Kondisi Baik'),
(3, 'MK01', 'Gunting', '2020-06-04', 'Ada dan Kondisi Baik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_inven`
--
ALTER TABLE `master_inven`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_inven`
--
ALTER TABLE `master_inven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
