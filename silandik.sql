-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2020 pada 23.58
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
-- Database: `silandik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3414, 1593639060, '::1', '228755'),
(3413, 1593639051, '::1', '185790'),
(3314, NULL, '::1', NULL),
(3412, 1593634116, '::1', '488819'),
(3411, 1593634092, '::1', '071798'),
(3410, 1593633905, '::1', '155339'),
(3409, 1593633856, '::1', '392841'),
(3415, 1593640331, '::1', '585888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-05-13 13:29:29', 'Login  by Kholiq', 'kholiq'),
(16, '::1', '', '2020-05-13 18:29:08', 'Login  by Kholiq', 'kholiq'),
(17, '::1', '', '2020-05-14 07:36:22', 'Login  by Kholiq', 'kholiq'),
(18, '::1', '', '2020-05-14 16:22:42', 'Login  by Kholiq', 'kholiq'),
(19, '::1', '', '2020-05-14 19:35:25', 'Login  by Kholiq', 'kholiq'),
(20, '::1', '', '2020-05-21 22:35:24', 'Login  by Kholiq', 'kholiq'),
(21, '::1', '', '2020-05-22 07:59:55', 'Logout SIONLAB by ', 'Tamu'),
(22, '::1', '', '2020-05-22 08:03:50', 'Login  by Kholiq', 'kholiq'),
(23, '::1', '', '2020-05-27 21:29:42', 'Login  by Kholiq', 'kholiq'),
(24, '::1', '', '2020-05-28 06:14:31', 'Logout SIONLAB by ', 'Tamu'),
(25, '::1', '', '2020-05-28 06:14:44', 'Login  by Kholiq', 'kholiq'),
(26, '::1', '', '2020-05-28 06:19:12', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop 2</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(27, '::1', '', '2020-05-28 11:52:51', 'Logout SIONLAB by ', 'Tamu'),
(28, '::1', '', '2020-05-28 11:53:04', 'Login  by Kholiq', 'kholiq'),
(29, '::1', '', '2020-05-28 14:36:39', 'Logout SIONLAB by ', 'Tamu'),
(30, '::1', '', '2020-05-28 14:36:52', 'Login  by Kholiq', 'kholiq'),
(31, '::1', '', '2020-05-28 19:50:12', 'Login  by Kholiq', 'kholiq'),
(32, '::1', '', '2020-05-29 08:33:59', 'Logout SIONLAB by ', 'Tamu'),
(33, '::1', '', '2020-05-29 08:34:13', 'Login  by Kholiq', 'kholiq'),
(34, '::1', '', '2020-05-29 08:41:12', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>131</b></li><li><b>nama</b> dengan value <b>Kategori Alat dan Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/kategori_alat_dan_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(35, '::1', '', '2020-05-29 12:26:29', 'Login  by Kholiq', 'kholiq'),
(36, '::1', '', '2020-06-01 12:33:06', 'Login  by Kholiq', 'kholiq'),
(37, '::1', '', '2020-06-01 14:31:32', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>pipet</b></li><li><b>keterangan</b> dengan value <b>kaca</b></li></ul>', 'kholiq'),
(38, '::1', '', '2020-06-03 10:01:58', 'Login  by Kholiq', 'kholiq'),
(39, '::1', '', '2020-06-03 10:18:10', 'Logout SIONLAB by Kholiq', 'kholiq'),
(40, '::1', '', '2020-06-03 10:20:31', 'Login  by Kholiq', 'kholiq'),
(41, '::1', '', '2020-06-03 11:59:06', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>138</b></li><li><b>nama</b> dengan value <b>Pengajuan Alat</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>pengajuan/pengajuan_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>10</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(42, '::1', '', '2020-06-03 13:51:50', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>Router</b></li><li><b>keterangan</b> dengan value <b>Teknologi</b></li></ul>', 'kholiq'),
(43, '::1', '', '2020-06-03 13:52:21', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>Buku</b></li><li><b>keterangan</b> dengan value <b>Panduan praktikum basis data</b></li></ul>', 'kholiq'),
(44, '::1', '', '2020-06-03 14:01:31', 'Logout SIONLAB by Kholiq', 'kholiq'),
(45, '::1', '', '2020-06-03 14:01:43', 'Login  by Kholiq', 'kholiq'),
(46, '::1', '', '2020-06-03 15:08:24', 'Logout SIONLAB by Kholiq', 'kholiq'),
(47, '::1', '', '2020-06-03 15:08:35', 'Login  by Kholiq', 'kholiq'),
(48, '::1', '', '2020-06-04 11:37:41', 'Login  by Kholiq', 'kholiq'),
(49, '::1', '', '2020-06-04 11:51:04', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>Buku</b></li><li><b>keterangan</b> dengan value <b>Panduan sistem operasi</b></li></ul>', 'kholiq'),
(50, '::1', '', '2020-06-04 11:51:19', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>Buku</b></li><li><b>keterangan</b> dengan value <b>sistem operasi</b></li></ul>', 'kholiq'),
(51, '::1', '', '2020-06-04 12:24:05', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>kosong</b></li><li><b>nama_alat</b> dengan value <b>pipet kaca</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(52, '::1', '', '2020-06-04 12:24:19', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>MK04</b></li><li><b>nama_alat</b> dengan value <b>pipet kaca</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(53, '::1', '', '2020-06-04 12:24:26', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>MK03</b></li><li><b>nama_alat</b> dengan value <b>pipet kaca</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(54, '::1', '', '2020-06-04 12:39:48', 'Menambah pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(55, '::1', '', '2020-06-04 12:40:04', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(56, '::1', '', '2020-06-04 12:40:32', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(57, '::1', '', '2020-06-04 12:41:36', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(58, '::1', '', '2020-06-04 12:49:49', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(59, '::1', '', '2020-06-04 12:50:52', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(60, '::1', '', '2020-06-04 12:56:49', 'Mengedit pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>dibutuhkan segera</b></li></ul>', 'kholiq'),
(61, '::1', '', '2020-06-04 19:21:34', 'Logout SIONLAB by ', 'Tamu'),
(62, '::1', '', '2020-06-04 19:21:45', 'Login  by Kholiq', 'kholiq'),
(63, '::1', '', '2020-06-04 19:22:16', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>kategori</b> dengan value <b>Penunjang Praktikum</b></li><li><b>keterangan</b> dengan value <b>Terbatas</b></li></ul>', 'kholiq'),
(64, '::1', '', '2020-06-04 19:24:18', 'Menambah master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet</b></li><li><b>kategori</b> dengan value <b>Penunjang Praktikum</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(65, '::1', '', '2020-06-04 19:47:22', 'Menambah master kategori bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(66, '::1', '', '2020-06-04 20:01:52', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>liquid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(67, '::1', '', '2020-06-04 20:06:02', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(68, '::1', '', '2020-06-04 20:06:31', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-06-04 20:07:19', 'Menambah master kategori bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>Berbahaya</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-06-04 23:29:02', 'Logout SIONLAB by ', 'Tamu'),
(71, '::1', '', '2020-06-05 00:49:51', 'Login  by Kholiq', 'kholiq'),
(72, '::1', '', '2020-06-05 14:09:59', 'Login  by Kholiq', 'kholiq'),
(73, '::1', '', '2020-06-05 14:12:03', 'Logout SIONLAB by Kholiq', 'kholiq'),
(74, '::1', '', '2020-06-05 14:12:25', 'Login  by Tiffany', 'tiffany'),
(75, '::1', '', '2020-06-05 14:14:19', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>Tiffany</b></li><li><b>username</b> dengan value <b>tiffany</b></li><li><b>password</b> dengan value <b>*FCC67C9225D63398152A826201B41AA6CF02555C</b></li><li><b>gambar</b> dengan value <b>files/2020/06/2da277a466b12a2f364607b733f225b9.jpg</b></li><li><b>no_hp</b> dengan value <b>kosong</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'tiffany'),
(76, '::1', '', '2020-06-05 14:14:23', 'Logout SIONLAB by Tiffany', 'tiffany'),
(77, '::1', '', '2020-06-05 14:14:33', 'Login  by Tiffany', 'tiffany'),
(78, '::1', '', '2020-06-05 14:20:44', 'Menambah pengajuan alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Pipet Kaca</b></li><li><b>jenis</b> dengan value <b>solid</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'tiffany'),
(79, '::1', '', '2020-06-05 14:30:59', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>Berbahaya</b></li></ul>', 'tiffany'),
(80, '::1', '', '2020-06-06 12:41:00', 'Login  by Tiffany', 'tiffany'),
(81, '::1', '', '2020-06-06 12:49:39', 'Menambah pengajuan bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>B001</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>jenis</b> dengan value <b>Liquid</b></li><li><b>keterangan</b> dengan value <b>Dibutuhkan segera</b></li></ul>', 'tiffany'),
(82, '::1', '', '2020-06-07 21:42:08', 'Login  by Tiffany', 'tiffany'),
(83, '::1', '', '2020-06-10 12:52:14', 'Login  by Tiffany', 'tiffany'),
(84, '::1', '', '2020-06-17 13:52:45', 'Login  by Tiffany', 'tiffany'),
(85, '::1', '', '2020-06-17 22:05:15', 'Login  by Tiffany', 'tiffany'),
(86, '::1', '', '2020-06-19 16:00:53', 'Login  by Tiffany', 'tiffany'),
(87, '::1', '', '2020-06-19 16:42:52', 'Menambah master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>liter</b></li><li><b>keterangan</b> dengan value <b>liquid</b></li></ul>', 'tiffany'),
(88, '::1', '', '2020-06-19 16:43:06', 'Mengedit master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>Buah</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'tiffany'),
(89, '::1', '', '2020-06-20 21:06:12', 'Logout SILANDIK by ', 'Tamu'),
(90, '::1', '', '2020-06-20 21:06:29', 'Login  by Tiffany', 'tiffany'),
(91, '::1', '', '2020-06-20 21:50:05', 'Menambah data lokasi penyimpanan alat dengan data sbb:<br />\r\n                    <ul><li><b>no</b> dengan value <b>1</b></li><li><b>id</b> dengan value <b>P001</b></li><li><b>kode_alat</b> dengan value <b>R001</b></li><li><b>kode_rak</b> dengan value <b>A31</b></li><li><b>urutan</b> dengan value <b>5</b></li></ul>', 'tiffany'),
(92, '::1', '', '2020-06-26 12:50:16', 'Login  by Tiffany', 'tiffany'),
(93, '::1', '', '2020-06-26 13:19:43', 'Logout SILANDIK by Tiffany', 'tiffany'),
(94, '::1', '', '2020-06-26 13:19:55', 'Login  by Tiffany', 'tiffany'),
(95, '::1', '', '2020-06-26 13:31:29', 'Logout SILANDIK by Tiffany', 'tiffany'),
(96, '::1', '', '2020-06-26 13:31:40', 'Login  by Tiffany', 'tiffany'),
(97, '::1', '', '2020-06-26 13:39:28', 'Logout SILANDIK by Tiffany', 'tiffany'),
(98, '::1', '', '2020-06-26 13:39:42', 'Login  by Tiffany', 'tiffany'),
(99, '::1', '', '2020-06-26 13:45:38', 'Logout SILANDIK by Tiffany', 'tiffany'),
(100, '::1', '', '2020-06-26 13:46:25', 'Login  by Tiffany', 'tiffany'),
(101, '::1', '', '2020-06-26 13:50:57', 'Logout SILANDIK by Tiffany', 'tiffany'),
(102, '::1', '', '2020-06-26 13:51:05', 'Login  by Tiffany', 'tiffany'),
(103, '::1', '', '2020-06-26 13:58:23', 'Logout SILANDIK by Tiffany', 'tiffany'),
(104, '::1', '', '2020-06-26 13:58:33', 'Login  by Tiffany', 'tiffany'),
(105, '::1', '', '2020-06-26 14:47:17', 'Logout SILANDIK by Tiffany', 'tiffany'),
(106, '::1', '', '2020-06-26 14:47:33', 'Login  by Tiffany', 'tiffany'),
(107, '::1', '', '2020-06-26 14:57:36', 'Logout SILANDIK by Tiffany', 'tiffany'),
(108, '::1', '', '2020-06-26 21:14:56', 'Login  by Tiffany', 'tiffany'),
(109, '::1', '', '2020-06-26 21:34:40', 'Logout SILANDIK by Tiffany', 'tiffany'),
(110, '::1', '', '2020-06-26 21:34:50', 'Login  by Tiffany', 'tiffany'),
(111, '::1', '', '2020-06-27 10:57:34', 'Login  by Tiffany', 'tiffany'),
(112, '::1', '', '2020-06-27 11:11:26', 'Logout SILANDIK by Tiffany', 'tiffany'),
(113, '::1', '', '2020-06-27 11:11:33', 'Login  by Tiffany', 'tiffany'),
(114, '::1', '', '2020-06-27 11:15:54', 'Logout SILANDIK by Tiffany', 'tiffany'),
(115, '::1', '', '2020-06-27 11:23:33', 'Login  by Tiffany', 'tiffany'),
(116, '::1', '', '2020-06-27 11:29:25', 'Logout SILANDIK by Tiffany', 'tiffany'),
(117, '::1', '', '2020-06-27 11:30:51', 'Login  by Tiffany', 'tiffany'),
(118, '::1', '', '2020-06-27 11:34:42', 'Logout SILANDIK by Tiffany', 'tiffany'),
(119, '::1', '', '2020-06-27 11:34:52', 'Login  by Tiffany', 'tiffany'),
(120, '::1', '', '2020-06-27 11:55:25', 'Logout SILANDIK by Tiffany', 'tiffany'),
(121, '::1', '', '2020-06-27 17:47:24', 'Login  by Tiffany', 'tiffany'),
(122, '::1', '', '2020-06-28 08:33:55', 'Login  by Tiffany', 'tiffany'),
(123, '::1', '', '2020-06-28 08:40:13', 'Logout SILANDIK by Tiffany', 'tiffany'),
(124, '::1', '', '2020-06-28 08:43:04', 'Login  by Tiffany', 'tiffany'),
(125, '::1', '', '2020-06-28 08:56:46', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>1</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>300000</b></li><li><b>status_pengajuan</b> dengan value <b>5</b></li></ul>', 'tiffany'),
(126, '::1', '', '2020-06-28 09:01:08', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>900000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(127, '::1', '', '2020-06-28 09:02:34', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-01-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>1</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>300000</b></li><li><b>status_pengajuan</b> dengan value <b>5</b></li></ul>', 'tiffany'),
(128, '::1', '', '2020-06-28 09:07:19', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062800000</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-02-13</b></li><li><b>sumber_pendanaan</b> dengan value <b>2</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-17</b></li><li><b>pajak</b> dengan value <b>870000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(129, '::1', '', '2020-06-28 09:13:11', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062800000</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>2</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-17</b></li><li><b>pajak</b> dengan value <b>870000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(130, '::1', '', '2020-06-28 09:13:41', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>1</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>300000</b></li><li><b>status_pengajuan</b> dengan value <b>5</b></li></ul>', 'tiffany'),
(131, '::1', '', '2020-06-28 09:13:54', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700001</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>1</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>300000</b></li><li><b>status_pengajuan</b> dengan value <b>5</b></li></ul>', 'tiffany'),
(132, '::1', '', '2020-06-28 09:14:00', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062700002</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-27</b></li><li><b>pajak</b> dengan value <b>900000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(133, '::1', '', '2020-06-28 09:14:06', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062800000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>2</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-17</b></li><li><b>pajak</b> dengan value <b>870000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(134, '::1', '', '2020-06-28 09:14:25', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062800000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>2</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-17</b></li><li><b>pajak</b> dengan value <b>870000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(135, '::1', '', '2020-06-28 09:14:43', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-PGN-20062800000</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-28</b></li><li><b>sumber_pendanaan</b> dengan value <b>2</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-21</b></li><li><b>pajak</b> dengan value <b>870000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'tiffany'),
(136, '::1', '', '2020-06-28 09:21:48', 'Logout SILANDIK by Tiffany', 'tiffany'),
(137, '::1', '', '2020-06-28 09:26:22', 'Login  by Tiffany', 'tiffany'),
(138, '::1', '', '2020-06-28 11:45:34', 'Menambah master sumber pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>PNBP</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'tiffany'),
(139, '::1', '', '2020-06-28 11:45:44', 'Mengedit master sumber pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>sumber_pendanaan</b> dengan value <b>PNBP</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'tiffany'),
(140, '::1', '', '2020-06-28 11:57:24', 'Logout SILANDIK by Tiffany', 'tiffany'),
(141, '::1', '', '2020-06-28 11:57:59', 'Login  by Tiffany', 'tiffany'),
(142, '::1', '', '2020-06-28 15:52:36', 'Login  by Tiffany', 'tiffany'),
(143, '::1', '', '2020-06-28 16:00:14', 'Mengedit master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_satuan</b> dengan value <b>gram</b></li><li><b>keterangan</b> dengan value <b>massa</b></li></ul>', 'tiffany'),
(144, '::1', '', '2020-06-28 19:39:02', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062800000</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Central</b></li><li><b>jenis</b> dengan value <b>KK09</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(145, '::1', '', '2020-06-28 19:41:22', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062828001</b></li><li><b>nama_bahan</b> dengan value <b>Kertas Lakmus</b></li><li><b>merk</b> dengan value <b>Sinar dunia</b></li><li><b>jenis</b> dengan value <b>45GT</b></li><li><b>estimasi_jumlah</b> dengan value <b>30</b></li><li><b>satuan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(146, '::1', '', '2020-06-28 19:43:08', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062828281</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>merk</b> dengan value <b>Bebelac</b></li><li><b>jenis</b> dengan value <b>70%</b></li><li><b>estimasi_jumlah</b> dengan value <b>3</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Biologi</b></li></ul>', 'tiffany'),
(147, '::1', '', '2020-06-28 19:54:56', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062800000</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>merk</b> dengan value <b>Sania</b></li><li><b>jenis</b> dengan value <b>70%</b></li><li><b>estimasi_jumlah</b> dengan value <b>10</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>50000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(148, '::1', '', '2020-06-28 20:00:00', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062828001</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Bebelac</b></li><li><b>jenis</b> dengan value <b>-</b></li><li><b>estimasi_jumlah</b> dengan value <b>10</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(149, '::1', '', '2020-06-28 20:03:47', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-20062828281</b></li><li><b>nama_bahan</b> dengan value <b>Bensis</b></li><li><b>merk</b> dengan value <b>Sanco</b></li><li><b>jenis</b> dengan value <b>-</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(150, '::1', '', '2020-06-28 20:05:31', 'Mengedit Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>P-200628280</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Bebelac</b></li><li><b>jenis</b> dengan value <b>80KL</b></li><li><b>estimasi_jumlah</b> dengan value <b>10</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(151, '::1', '', '2020-06-28 20:08:00', 'Menambah master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>lembar</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'tiffany'),
(152, '::1', '', '2020-06-28 20:08:17', 'Mengedit master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_satuan</b> dengan value <b>buah</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'tiffany'),
(153, '::1', '', '2020-06-28 20:10:08', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PB-20062800000</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Jupiter</b></li><li><b>jenis</b> dengan value <b>-</b></li><li><b>estimasi_jumlah</b> dengan value <b>20</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Biologi</b></li></ul>', 'tiffany'),
(154, '::1', '', '2020-06-28 21:11:32', 'Menambah Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20062800000</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Netgear</b></li><li><b>seri</b> dengan value <b>AG5647J</b></li><li><b>estimasi_jumlah</b> dengan value <b>5</b></li><li><b>satuan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>300000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(155, '::1', '', '2020-06-28 21:12:38', 'Mengedit Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20062800</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Netgear</b></li><li><b>seri</b> dengan value <b>AG5647J</b></li><li><b>estimasi_jumlah</b> dengan value <b>7</b></li><li><b>satuan</b> dengan value <b>5</b></li><li><b>harga</b> dengan value <b>300000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(156, '::1', '', '2020-06-28 22:35:06', 'Menambah master tipe laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>tipe_lab</b> dengan value <b>Teknologi</b></li></ul>', 'tiffany'),
(157, '::1', '', '2020-06-29 00:47:39', 'Menambah master kategori nomor induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori_no_induk</b> dengan value <b>NIM</b></li><li><b>keterangan</b> dengan value <b>nomor induk mahasiswa</b></li></ul>', 'tiffany'),
(158, '::1', '', '2020-06-29 00:49:46', 'Menambah master sumber pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>PNBP</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'tiffany'),
(159, '::1', '', '2020-06-29 08:10:30', 'Login  by Tiffany', 'tiffany'),
(160, '::1', '', '2020-06-29 08:33:44', 'Logout SILANDIK by Tiffany', 'tiffany'),
(161, '::1', '', '2020-06-29 08:39:32', 'Login  by Tiffany', 'tiffany'),
(162, '::1', '', '2020-06-29 09:30:47', 'Logout SILANDIK by Tiffany', 'tiffany'),
(163, '::1', '', '2020-06-29 09:30:55', 'Login  by Tiffany', 'tiffany'),
(164, '::1', '', '2020-06-29 09:33:59', 'Mengedit Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-0000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-05-14</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-05-28</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>B002</b></li><li><b>status</b> dengan value <b>Approved</b></li><li><b>nama_peminjam</b> dengan value <b>Lintang</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(165, '::1', '', '2020-06-29 09:53:38', 'Mengedit Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PINJAM01</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-05-23</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-14</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>A001</b></li><li><b>status</b> dengan value <b>Approved</b></li><li><b>nama_peminjam</b> dengan value <b>Lintang</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(166, '::1', '', '2020-06-29 10:33:40', 'Mengedit Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-00001</b></li><li><b>tanggal_pinjam</b> dengan value <b>kosong</b></li><li><b>tanggal_kembali</b> dengan value <b>kosong</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>B002</b></li><li><b>status</b> dengan value <b>Approved</b></li><li><b>nama_peminjam</b> dengan value <b>Hafid</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(167, '::1', '', '2020-06-29 10:37:05', 'Menambah Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-0000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-16</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-22</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>A001</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Hafid</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(168, '::1', '', '2020-06-29 10:37:13', 'Menghapus laporan dengan id PINJAM002', 'tiffany'),
(169, '::1', '', '2020-06-29 10:37:39', 'Menghapus laporan dengan id PINJAM001', 'tiffany'),
(170, '::1', '', '2020-06-29 10:39:29', 'Menambah Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-000002</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-17</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-28</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>R002T</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Tiffany</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(171, '::1', '', '2020-06-29 10:39:44', 'Mengedit Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>kosong</b></li><li><b>tanggal_kembali</b> dengan value <b>kosong</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>A001</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Hafid</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(172, '::1', '', '2020-06-29 10:44:55', 'Menambah kelola jatuh tempo dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PMJ-A-00002</b></li><li><b>nama_peminjam</b> dengan value <b>Tiffany</b></li><li><b>no_induk</b> dengan value <b>46124180000</b></li><li><b>status_user</b> dengan value <b>Bebas Tanggungan</b></li><li><b>kategori_peminjaman</b> dengan value <b>Praktikum</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-22</b></li></ul>', 'tiffany'),
(173, '::1', '', '2020-06-29 10:47:50', 'Menambah Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-B-000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>01-06-2020</b></li><li><b>tanggal_kembali</b> dengan value <b>21-06-2020</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>B09WA</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Lintang</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(174, '::1', '', '2020-06-29 10:50:59', 'Menghapus laporan dengan id PMJ-B-000001', 'tiffany'),
(175, '::1', '', '2020-06-29 10:51:56', 'Menambah Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-B-000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>01-06-2020</b></li><li><b>tanggal_kembali</b> dengan value <b>21-06-2020</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>AS80K</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Lintang</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(176, '::1', '', '2020-06-29 10:55:56', 'Menambah Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-B-000003</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-15</b></li><li><b>tanggal_kembali</b> dengan value <b>2020-06-23</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>TR60K</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Callista</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(177, '::1', '', '2020-06-29 10:56:06', 'Menghapus laporan dengan id PINJAM01', 'tiffany'),
(178, '::1', '', '2020-06-29 10:58:36', 'Mengedit Peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>PMJ-A-000001</b></li><li><b>tanggal_pinjam</b> dengan value <b>kosong</b></li><li><b>tanggal_kembali</b> dengan value <b>kosong</b></li><li><b>jumlah</b> dengan value <b>1</b></li><li><b>id_barang</b> dengan value <b>A001</b></li><li><b>status</b> dengan value <b>Disetujui</b></li><li><b>nama_peminjam</b> dengan value <b>Hafid</b></li><li><b>kebutuhan</b> dengan value <b>Praktikum</b></li></ul>', 'tiffany'),
(179, '::1', '', '2020-06-29 11:00:52', 'Logout SILANDIK by Tiffany', 'tiffany'),
(180, '::1', '', '2020-06-29 11:03:55', 'Login  by Tiffany', 'tiffany'),
(181, '::1', '', '2020-06-29 11:07:45', 'Logout SILANDIK by Tiffany', 'tiffany'),
(182, '::1', '', '2020-06-29 11:11:39', 'Login  by Tiffany', 'tiffany'),
(183, '::1', '', '2020-06-29 11:44:06', 'Menambah Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PB-20062900000</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>merk</b> dengan value <b>sunlight</b></li><li><b>jenis</b> dengan value <b>80%</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>satuan</b> dengan value <b>6</b></li><li><b>harga</b> dengan value <b>70000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(184, '::1', '', '2020-06-29 11:51:50', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kategori</b> dengan value <b>Penunjang Praktikum</b></li><li><b>keterangan</b> dengan value <b>Berbahaya</b></li></ul>', 'tiffany'),
(185, '::1', '', '2020-06-29 11:52:18', 'Mengedit master kategori alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>Penunjang Praktikum</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'tiffany'),
(186, '::1', '', '2020-06-29 15:47:23', 'Logout SILANDIK by Tiffany', 'tiffany'),
(187, '::1', '', '2020-06-29 15:49:51', 'Login  by Tiffany', 'tiffany'),
(188, '::1', '', '2020-06-29 16:07:17', 'Logout SILANDIK by Tiffany', 'tiffany'),
(189, '::1', '', '2020-06-29 16:07:27', 'Login  by Tiffany', 'tiffany'),
(190, '::1', '', '2020-06-29 16:15:59', 'Menambah Kelola inventaris_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK04</b></li><li><b>alat_bahan</b> dengan value <b>Mikroskop</b></li><li><b>tanggal</b> dengan value <b>2020-06-23</b></li><li><b>keterangan</b> dengan value <b>Rusak</b></li></ul>', 'tiffany'),
(191, '::1', '', '2020-06-29 16:16:27', 'Menambah Kelola inventaris_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK05</b></li><li><b>alat_bahan</b> dengan value <b>Pipet</b></li><li><b>tanggal</b> dengan value <b>2020-06-23</b></li><li><b>keterangan</b> dengan value <b>Ada dan Kondisi Baik</b></li></ul>', 'tiffany'),
(192, '::1', '', '2020-06-29 16:44:04', 'Logout SILANDIK by Tiffany', 'tiffany'),
(193, '::1', '', '2020-06-29 16:44:58', 'Login  by Tiffany', 'tiffany'),
(194, '::1', '', '2020-06-30 10:29:25', 'Logout SILANDIK by ', 'Tamu'),
(195, '::1', '', '2020-06-30 10:29:55', 'Login  by Staff Kalingga', 'kalingga'),
(196, '::1', '', '2020-06-30 11:44:59', 'Logout SILANDIK by Staff Kalingga', 'kalingga'),
(197, '::1', '', '2020-06-30 11:49:05', 'Login  by Staff Kalingga', 'kalingga'),
(198, '::1', '', '2020-06-30 14:55:43', 'Logout SILANDIK by ', 'Tamu'),
(199, '::1', '', '2020-06-30 14:55:43', 'Logout SILANDIK by ', 'Tamu'),
(200, '::1', '', '2020-06-30 14:56:25', 'Login  by Tiffany', 'tiffany'),
(201, '::1', '', '2020-06-30 15:47:20', 'Logout SILANDIK by Tiffany', 'tiffany'),
(202, '::1', '', '2020-06-30 15:47:41', 'Login  by Ovilia', 'ovilia'),
(203, '::1', '', '2020-06-30 15:48:23', 'Logout SILANDIK by Ovilia', 'ovilia'),
(204, '::1', '', '2020-06-30 15:48:39', 'Login  by Dwi', 'dwi'),
(205, '::1', '', '2020-06-30 15:49:20', 'Logout SILANDIK by Dwi', 'dwi'),
(206, '::1', '', '2020-06-30 15:49:37', 'Login  by Lestari', 'lestari'),
(207, '::1', '', '2020-06-30 15:50:34', 'Logout SILANDIK by Lestari', 'lestari'),
(208, '::1', '', '2020-06-30 15:55:37', 'Login  by Tiffany', 'tiffany'),
(209, '::1', '', '2020-06-30 17:25:55', 'Logout SILANDIK by ', 'Tamu'),
(210, '::1', '', '2020-06-30 17:26:13', 'Login  by Tiffany', 'tiffany'),
(211, '::1', '', '2020-06-30 18:10:13', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>Ovilia</b></li><li><b>username</b> dengan value <b>ovilia</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>ovilia@gmail.com</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/06/e5b937305d1800c9ddb8a82aae58832b.jpg</b></li><li><b>no_hp</b> dengan value <b>08993536787</b></li></ul>', 'tiffany'),
(212, '::1', '', '2020-06-30 18:10:36', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>Ovilia</b></li><li><b>username</b> dengan value <b>ovilia</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>08993536787</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>email</b> dengan value <b>ovilia@gmail.com</b></li></ul>', 'tiffany'),
(213, '::1', '', '2020-07-01 08:29:00', 'Login  by Tiffany', 'tiffany'),
(214, '::1', '', '2020-07-01 08:36:22', 'Menambah data lokasi penyimpanan alat dengan data sbb:<br />\r\n                    <ul><li><b>no</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>P002</b></li><li><b>kode_alat</b> dengan value <b>2elr</b></li><li><b>kode_rak</b> dengan value <b>g,r</b></li><li><b>urutan</b> dengan value <b>7</b></li></ul>', 'tiffany'),
(215, '::1', '', '2020-07-01 10:32:07', 'Logout SILANDIK by ', 'Tamu'),
(216, '::1', '', '2020-07-01 10:32:22', 'Login  by Tiffany', 'tiffany'),
(217, '::1', '', '2020-07-01 12:19:49', 'Login  by Tiffany', 'tiffany'),
(218, '::1', '', '2020-07-01 12:20:24', 'Mengedit Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20062800</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Netgear</b></li><li><b>seri</b> dengan value <b>AG5647J</b></li><li><b>estimasi_jumlah</b> dengan value <b>7</b></li><li><b>satuan</b> dengan value <b>2</b></li><li><b>harga</b> dengan value <b>300000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(219, '::1', '', '2020-07-01 15:43:11', 'Login  by Tiffany', 'tiffany'),
(220, '::1', '', '2020-07-01 17:16:41', 'Logout SILANDIK by ', 'Tamu'),
(221, '::1', '', '2020-07-01 17:16:52', 'Login  by Tiffany', 'tiffany'),
(222, '::1', '', '2020-07-01 17:28:54', 'Menambah Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Router</b></li></ul>', 'tiffany'),
(223, '::1', '', '2020-07-01 17:30:27', 'Mengedit Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>satuan</b> dengan value <b>pcs</b></li></ul>', 'tiffany'),
(224, '::1', '', '2020-07-01 17:48:25', 'Mengedit Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PB-20062800</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Jupiter</b></li><li><b>jenis</b> dengan value <b>-</b></li><li><b>estimasi_jumlah</b> dengan value <b>20</b></li><li><b>satuan</b> dengan value <b>lembar</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Biologi</b></li></ul>', 'tiffany');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(225, '::1', '', '2020-07-01 17:49:14', 'Mengedit Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PB-20062900</b></li><li><b>nama_bahan</b> dengan value <b>Alkohol</b></li><li><b>merk</b> dengan value <b>sunlight</b></li><li><b>jenis</b> dengan value <b>80%</b></li><li><b>estimasi_jumlah</b> dengan value <b>15</b></li><li><b>satuan</b> dengan value <b>gram</b></li><li><b>harga</b> dengan value <b>70000</b></li><li><b>nama_lab</b> dengan value <b>Kimia</b></li></ul>', 'tiffany'),
(226, '::1', '', '2020-07-01 17:49:32', 'Mengedit Pengajuan Bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PB-20062800</b></li><li><b>nama_bahan</b> dengan value <b>Merkuri</b></li><li><b>merk</b> dengan value <b>Jupiter</b></li><li><b>jenis</b> dengan value <b>-</b></li><li><b>estimasi_jumlah</b> dengan value <b>20</b></li><li><b>satuan</b> dengan value <b>gram</b></li><li><b>harga</b> dengan value <b>60000</b></li><li><b>nama_lab</b> dengan value <b>Biologi</b></li></ul>', 'tiffany'),
(227, '::1', '', '2020-07-01 17:51:43', 'Mengedit Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20062800</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Netgear</b></li><li><b>seri</b> dengan value <b>AG5647J</b></li><li><b>estimasi_jumlah</b> dengan value <b>7</b></li><li><b>satuan</b> dengan value <b>gram</b></li><li><b>harga</b> dengan value <b>300000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(228, '::1', '', '2020-07-01 18:43:33', 'Mengedit Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20062800</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Netgear</b></li><li><b>seri</b> dengan value <b>AG5647J</b></li><li><b>estimasi_jumlah</b> dengan value <b>7</b></li><li><b>satuan</b> dengan value <b>pcs</b></li><li><b>harga</b> dengan value <b>300000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(229, '::1', '', '2020-07-01 19:00:05', 'Mengedit Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan</b> dengan value <b>pcs</b></li></ul>', 'tiffany'),
(230, '::1', '', '2020-07-01 19:00:24', 'Mengedit Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan</b> dengan value <b>pcs</b></li></ul>', 'tiffany'),
(231, '::1', '', '2020-07-01 19:14:18', 'Mengedit Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan</b> dengan value <b>pcs</b></li></ul>', 'tiffany'),
(232, '::1', '', '2020-07-01 19:17:02', 'Mengedit Kelola Nama Alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>satuan</b> dengan value <b>pcs</b></li></ul>', 'tiffany'),
(233, '::1', '', '2020-07-01 20:05:50', 'Logout SILANDIK by ', 'Tamu'),
(234, '::1', '', '2020-07-01 20:06:19', 'Login  by Tiffany', 'tiffany'),
(235, '::1', '', '2020-07-01 20:10:09', 'Menambah Kelola Seri Alat dengan data sbb:<br />\r\n                    <ul><li><b>kategori</b> dengan value <b>Praktikum</b></li><li><b>merk</b> dengan value <b>Sanco</b></li><li><b>seri</b> dengan value <b>A201</b></li><li><b>sop_pengoperasian</b> dengan value <b>-</b></li><li><b>sop_pemeliharaan</b> dengan value <b>-</b></li><li><b>sop_pemeriksaan</b> dengan value <b>-</b></li><li><b>sop_kalibrasi</b> dengan value <b>-</b></li><li><b>sop_uji_fungsi</b> dengan value <b>-</b></li><li><b>stok</b> dengan value <b>2</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li></ul>', 'tiffany'),
(236, '::1', '', '2020-07-01 20:12:02', 'Mengedit Kelola Seri Alat dengan data sbb:<br />\r\n                    <ul><li><b>kategori</b> dengan value <b>Praktikum</b></li><li><b>merk</b> dengan value <b>Sanco</b></li><li><b>seri</b> dengan value <b>A201</b></li><li><b>sop_pengoperasian</b> dengan value <b>-</b></li><li><b>sop_pemeliharaan</b> dengan value <b>-</b></li><li><b>sop_pemeriksaan</b> dengan value <b>-</b></li><li><b>sop_kalibrasi</b> dengan value <b>-</b></li><li><b>sop_uji_fungsi</b> dengan value <b>-</b></li><li><b>stok</b> dengan value <b>3</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li></ul>', 'tiffany'),
(237, '::1', '', '2020-07-01 21:14:54', 'Login  by Tiffany', 'tiffany'),
(238, '::1', '', '2020-07-01 23:30:55', 'Logout SILANDIK by ', 'Tamu'),
(239, '::1', '', '2020-07-01 23:31:32', 'Login  by Tiffany', 'tiffany'),
(240, '::1', '', '2020-07-02 01:47:45', 'Login  by Tiffany', 'tiffany'),
(241, '::1', '', '2020-07-02 01:59:09', 'Logout SILANDIK by Tiffany', 'tiffany'),
(242, '::1', '', '2020-07-02 01:59:23', 'Login  by Tiffany', 'tiffany'),
(243, '::1', '', '2020-07-02 02:00:34', 'Logout SILANDIK by Tiffany', 'tiffany'),
(244, '::1', '', '2020-07-02 02:01:01', 'Login  by Tiffany', 'tiffany'),
(245, '::1', '', '2020-07-02 02:36:54', 'Menambah Pengajuan Alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>PA-20070200000</b></li><li><b>nama_alat</b> dengan value <b>Router</b></li><li><b>merk</b> dengan value <b>Kwarta</b></li><li><b>seri</b> dengan value <b>B089G</b></li><li><b>estimasi_jumlah</b> dengan value <b>5</b></li><li><b>satuan</b> dengan value <b>pcs</b></li><li><b>harga</b> dengan value <b>5000</b></li><li><b>nama_lab</b> dengan value <b>Multimedia</b></li></ul>', 'tiffany'),
(246, '::1', '', '2020-07-02 03:04:13', 'Logout SILANDIK by Tiffany', 'tiffany'),
(247, '::1', '', '2020-07-02 03:05:05', 'Login  by Lestari', 'lestari'),
(248, '::1', '', '2020-07-02 03:08:09', 'Logout SILANDIK by Lestari', 'lestari'),
(249, '::1', '', '2020-07-02 03:08:36', 'Login  by Lestari', 'lestari'),
(250, '::1', '', '2020-07-02 04:30:45', 'Logout SILANDIK by Lestari', 'lestari'),
(251, '::1', '', '2020-07-02 04:31:00', 'Login  by Tiffany', 'tiffany'),
(252, '::1', '', '2020-07-02 04:52:07', 'Logout SILANDIK by Tiffany', 'tiffany');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 9, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2),
(131, 'kategori_alat', 'Kategori Alat', '-', '+1+2+', 'master/kategori_alat', 1, 11, 2),
(130, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(149, 'laboratorium', 'Laboratorium', '', '+1+3+', 'kelola/kelola_laboratorium', 1, 2, 5),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(139, 'kategori_bahan', 'Kategori Bahan', '', '+1+2+', 'master/kategori_bahan', 1, 12, 2),
(138, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_alat', 1, 10, 4),
(140, 'pengajuan_bahan', 'Pengajuan Bahan', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_bahan', 1, 13, 4),
(152, 'kelola_alat', 'Kelola Alat', '', '+1+2+4+', 'kelola/kelola_alat', 1, 2, 5),
(143, 'lokasi_penyimpanan', 'Lokasi Penyimpanan', '', '+1+4+', 'kelola/lokasi_penyimpanan', 1, 1, 5),
(144, 'periode_pengajuan', 'Periode Pengajuan', '', '+1+3+', 'pengajuan/periode_pengajuan', 1, 16, 4),
(145, 'sumber_pendanaan', 'Sumber Pendanaan', '', '+1+3+', 'master/sumber_pendanaan', 1, 12, 2),
(146, 'peminjaman_alat', 'Peminjaman Alat', '', '+1+4+5+6+7+8+', 'peminjaman/peminjaman_alat', 1, 17, 6),
(147, 'peminjaman_bahan', 'Peminjaman Bahan', '', '+1+4+5+6+7+8+', 'peminjaman/peminjaman_bahan', 1, 18, 6),
(148, 'jatuh_tempo', 'Jatuh Tempo', '', '+1+4+', 'kelola/jatuh_tempo', 1, 15, 5),
(150, 'kelola_inventaris', 'Inventaris', '', '+1+3+4+', 'kelola/kelola_inventaris', 1, 4, 5),
(151, 'kelola_user', 'Kelola User', '', '+1+2+', 'kelola/kelola_user', 1, 1, 5),
(153, 'kelola_seri', 'Kelola Seri', '', '+1+4+', 'kelola/kelola_seri', 1, 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(4, 'Pengajuan', 'fa fa-fw fa-level-up'),
(5, 'Kelola', 'fa fa-gears'),
(6, 'Peminjaman', 'fa fa-fw fa-level-down');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `jenis_kelamin`, `gambar`, `email`, `username`, `password`, `level`, `bagian`, `no_hp`, `alamat`, `last_login`) VALUES
(1, 'Tiffany', '', 'files/2020/06/2da277a466b12a2f364607b733f225b9.jpg', '', 'tiffany', '*FCC67C9225D63398152A826201B41AA6CF02555C', 1, 1, '', '', '2020-07-02 04:31:00'),
(2, 'Ovilia', '2', 'files/2020/06/e5b937305d1800c9ddb8a82aae58832b.jpg', 'ovilia@gmail.com', 'ovilia', '*6D14F0ABED06C7BAA59C68861FF524DD546135D8', 2, 0, '08993536787', '-', '2020-06-30 15:47:41'),
(3, 'Dwi', '', '', '', 'dwi', '*8A17C7CA5005815A9161F0F7DE4F3078A48A0106', 3, 1, '', '', '2020-06-30 15:48:39'),
(7, 'Lestari', '', '', '', 'lestari', '*E3323137C5026320091A6A276A92A499643BB3B6', 4, 1, '', '', '2020-07-02 03:08:36'),
(8, 'Ningsih', '', '', '', 'ningsih', '*280DFB32BA14A7625738FDACF5A3625225C57D5B', 5, 1, '', '', '2017-03-01 08:26:51'),
(9, 'Arum', '', '', '', 'arum', '*B522E41F11F9A056BCB24DA8970F9D1CD4E7AF8F', 6, 1, '', '', '2017-03-02 14:28:19'),
(10, 'Sari', '', '', '', 'sari', '*FF115CE1A6D1060867A270672454387689AC2B97', 7, 1, '', '', '2020-06-30 11:49:04'),
(11, 'Ratu', '', '', '', 'ratu', '*B315AED2786BB9364E0F7C00B892FC1AA69699AD', 8, 1, '', '', '2017-02-24 11:47:36');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
('1', 'laki-laki'),
('2', 'perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` varchar(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `nama_alat`, `satuan`) VALUES
('', 'Mikroskop', 'pcs'),
('2', 'pipet kaca', 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_inventaris`
--

CREATE TABLE `kelola_inventaris` (
  `id` int(11) NOT NULL,
  `kode_inventaris` varchar(11) NOT NULL,
  `kode_simak` varchar(11) NOT NULL,
  `lokasi_penyimpanan` varchar(50) NOT NULL,
  `sumber_pendanaan` varchar(50) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_inventaris`
--

INSERT INTO `kelola_inventaris` (`id`, `kode_inventaris`, `kode_simak`, `lokasi_penyimpanan`, `sumber_pendanaan`, `harga`, `tanggal_pembelian`, `kondisi`, `status`) VALUES
(1, 'MK02', '12345', 'almari1', 'fakultas', '300000', '2020-07-01', 'Baik', ''),
(2, 'MK03', '12345', 'meja1', 'PNBP', '400000', '2020-06-17', 'Rusak', ''),
(3, 'MK01', '12345', 'etalase1', 'fakultas', '1000000', '2020-06-10', 'Baik', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_laboratorium`
--

CREATE TABLE `kelola_laboratorium` (
  `id` int(255) NOT NULL,
  `nama_lab` varchar(255) NOT NULL,
  `alamat_lab` varchar(255) NOT NULL,
  `korlab` varchar(255) NOT NULL,
  `laboran` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_laboratorium`
--

INSERT INTO `kelola_laboratorium` (`id`, `nama_lab`, `alamat_lab`, `korlab`, `laboran`, `status`) VALUES
(1, 'Laboratorium Digital', 'D2-110', 'Hafid', 'Tiffany', 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelola_seri`
--

CREATE TABLE `kelola_seri` (
  `id` varchar(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `seri` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `sop_pengoperasian` varchar(50) NOT NULL,
  `sop_pemeliharaan` varchar(50) NOT NULL,
  `sop_pemeriksaan` varchar(50) NOT NULL,
  `sop_kalibrasi` varchar(50) NOT NULL,
  `sop_uji_fungsi` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_minimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelola_seri`
--

INSERT INTO `kelola_seri` (`id`, `kategori`, `merk`, `seri`, `gambar`, `sop_pengoperasian`, `sop_pemeliharaan`, `sop_pemeriksaan`, `sop_kalibrasi`, `sop_uji_fungsi`, `stok`, `stok_minimal`) VALUES
('', 'Praktikum', 'Sanco', 'A201', '', '-', '-', '-', '-', '-', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_penyimpanan`
--

CREATE TABLE `lokasi_penyimpanan` (
  `id` varchar(50) NOT NULL,
  `nama_lokasi_penyimpanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi_penyimpanan`
--

INSERT INTO `lokasi_penyimpanan` (`id`, `nama_lokasi_penyimpanan`) VALUES
('1', 'Almari1'),
('2', 'Rak1'),
('3', 'Etalase1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_bagian`
--

CREATE TABLE `master_bagian` (
  `id` varchar(11) NOT NULL,
  `bagian` varchar(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel'),
(2, 'MK02', 'Mikroskop ', 'Mikroskop Besar', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori`
--

CREATE TABLE `master_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori`
--

INSERT INTO `master_kategori` (`id`, `kategori`) VALUES
(1, 'Praktikum'),
(2, 'Bahan Studi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_bahan`
--

CREATE TABLE `master_kategori_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori_bahan`
--

INSERT INTO `master_kategori_bahan` (`id`, `nama_bahan`, `kategori`, `keterangan`) VALUES
(1, 'Alkohol 70%', 'Penunjang Praktikum', '-'),
(2, 'Merkuri', 'Penunjang Praktikum', 'Berbahaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_no_induk`
--

CREATE TABLE `master_kategori_no_induk` (
  `id` varchar(11) NOT NULL,
  `kategori_no_induk` varchar(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kategori_no_induk`
--

INSERT INTO `master_kategori_no_induk` (`id`, `kategori_no_induk`, `keterangan`) VALUES
('', 'NIM', 'nomor induk mahasiswa'),
('2', 'NIP', 'nomor induk pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Administrator'),
(3, 'Kepala Laboratorium'),
(4, 'Laboran'),
(5, 'Koordinator Laboratorium'),
(6, 'Asisten'),
(7, 'Dosen'),
(8, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mata_kuliah`
--

CREATE TABLE `master_mata_kuliah` (
  `kode` int(11) NOT NULL,
  `mata_kuliah` varchar(20) NOT NULL,
  `dosen` varchar(25) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mata_kuliah`
--

INSERT INTO `master_mata_kuliah` (`kode`, `mata_kuliah`, `dosen`, `keterangan`) VALUES
(912, 'BP', 'DIDU', 'Laki-Laki'),
(4501, 'IMK', 'TINA', 'Perempuan'),
(14045, 'KPDL', 'PAIJO', 'Laki-Laki'),
(60001, 'IPA', 'OLEE', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `satuan` varchar(20) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `nama_alat`, `satuan`, `keterangan`) VALUES
(1, 'Mikroskop', '', 'lihat'),
(2, 'Mikroskop 2', '', 'Mikroskop Besar'),
(3, 'pipet kaca', '', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(11) NOT NULL,
  `nama_satuan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama_satuan`, `keterangan`) VALUES
(1, 'gram', 'massa'),
(2, 'pcs', '-'),
(3, 'liter', 'liquid'),
(4, 'lembar', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_sumber_pendanaan`
--

CREATE TABLE `master_sumber_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_sumber_pendanaan`
--

INSERT INTO `master_sumber_pendanaan` (`id`, `sumber_pendanaan`, `status`) VALUES
(1, 'BOPTN', 'Ada'),
(2, 'Hibah Dikti', 'Ada'),
(3, 'fakultas', 'Ada'),
(5, 'PNBP', 'Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tipe_lab`
--

CREATE TABLE `master_tipe_lab` (
  `id` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `tipe_lab` varchar(25) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_tipe_lab`
--

INSERT INTO `master_tipe_lab` (`id`, `kode`, `tipe_lab`, `keterangan`) VALUES
(1, 2001, 'BIOLOGI', 'Bio Punya'),
(2, 2002, 'KIMIA', 'Kim Punya'),
(3, 2003, 'MATEMATIKA', 'Mat Punya'),
(4, 2004, 'IPA', 'Ipa Punya'),
(5, 2005, 'FISIKA', 'Fis Punya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_alat`
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
-- Dumping data untuk tabel `peminjaman_alat`
--

INSERT INTO `peminjaman_alat` (`id_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `jumlah`, `id_barang`, `status`, `nama_peminjam`, `kebutuhan`) VALUES
('PMJ-A-0000001', '2020-06-16 00:00:00', '2020-06-22 00:00:00', '1', 'A001', 'Disetujui', 'Hafid', 'Praktikum'),
('PMJ-A-000002', '2020-06-17 00:00:00', '2020-06-28 00:00:00', '1', 'R002T', 'Disetujui', 'Tiffany', 'Praktikum');

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
('PMJ-B-000001', '0000-00-00', '0000-00-00', 1, 'AS80K', 'Disetujui', 'Lintang', 'Praktikum'),
('PMJ-B-000003', '2020-06-15', '2020-06-23', 1, 'TR60K', 'Disetujui', 'Callista', 'Praktikum');

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
('PA-20062800', 'Router', 'Netgear', 'AG5647J', 7, 'pcs', 300000, 'Multimedia'),
('PA-20070200', 'Router', 'Kwarta', 'B089G', 5, 'pcs', 5000, 'Multimedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` varchar(11) NOT NULL,
  `nama_bahan` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `estimasi_jumlah` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `nama_lab` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `nama_bahan`, `merk`, `jenis`, `estimasi_jumlah`, `satuan`, `harga`, `nama_lab`) VALUES
('PB-20062800', 'Merkuri', 'Jupiter', '-', 20, 'gram', 60000, 'Biologi'),
('PB-20062900', 'Alkohol', 'sunlight', '80%', 15, 'gram', 70000, 'Kimia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` varchar(50) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `sumber_pendanaan` varchar(255) NOT NULL,
  `tgl_pendanaan_turun` date NOT NULL,
  `pajak` int(11) NOT NULL,
  `status_pengajuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `semester`, `tgl_pengajuan`, `sumber_pendanaan`, `tgl_pendanaan_turun`, `pajak`, `status_pengajuan`) VALUES
('P-PGN-20062700001', 'Ganjil', '2020-06-27', '1', '2020-08-27', 300000, '5'),
('P-PGN-20062700002', 'Ganjil', '2020-06-27', '3', '2020-07-27', 900000, '1'),
('P-PGN-20062800000', 'Ganjil', '2020-06-28', '2', '2020-08-21', 870000, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengajuan`
--

CREATE TABLE `status_pengajuan` (
  `id` int(11) NOT NULL,
  `status_pengajuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_pengajuan`
--

INSERT INTO `status_pengajuan` (`id`, `status_pengajuan`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif'),
(3, 'Pendanaan Sudah Turun'),
(4, 'Pendanaan Belum Turun'),
(5, 'Sudah Terverifikasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indeks untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indeks untuk tabel `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_inventaris`
--
ALTER TABLE `kelola_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelola_seri`
--
ALTER TABLE `kelola_seri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_penyimpanan`
--
ALTER TABLE `lokasi_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_bagian`
--
ALTER TABLE `master_bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indeks untuk tabel `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_kategori`
--
ALTER TABLE `master_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kategori_bahan`
--
ALTER TABLE `master_kategori_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kategori_no_induk`
--
ALTER TABLE `master_kategori_no_induk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3416;

--
-- AUTO_INCREMENT untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kelola_inventaris`
--
ALTER TABLE `kelola_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_kategori`
--
ALTER TABLE `master_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_kategori_bahan`
--
ALTER TABLE `master_kategori_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60002;

--
-- AUTO_INCREMENT untuk tabel `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_tipe_lab`
--
ALTER TABLE `master_tipe_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status_pengajuan`
--
ALTER TABLE `status_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
