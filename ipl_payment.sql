-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 03:30 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl_payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `user_id`, `pesan`, `status`, `waktu`) VALUES
(1, 1, 'Tes', 1, '2018-11-20 10:39:56'),
(2, 2, 'Tes', 0, '2018-11-20 10:39:56'),
(3, 3, 'Tes', 0, '2018-11-20 10:39:56'),
(4, 4, 'Tes', 1, '2018-11-20 10:39:56'),
(5, 6, 'Tes', 1, '2018-11-20 10:39:56'),
(6, 1, 'halo', 1, '2018-11-20 11:42:09'),
(7, 2, 'halo', 0, '2018-11-20 11:42:10'),
(8, 3, 'halo', 0, '2018-11-20 11:42:10'),
(9, 4, 'halo', 1, '2018-11-20 11:42:10'),
(10, 6, 'halo', 1, '2018-11-20 11:42:10'),
(11, 4, 'Pembayaran IPL pada bulan November 2018 diterima', 1, '2018-11-20 11:45:58'),
(12, 7, 'Pembayaran IPL pada bulan November 2018 ditolak', 1, '2018-11-20 13:00:05'),
(13, 7, 'Pembayaran IPL pada bulan November 2018 diterima', 1, '2018-11-20 13:02:24'),
(14, 1, 'Air akan dimatikan mulai besok', 1, '2018-11-20 13:05:34'),
(15, 2, 'Air akan dimatikan mulai besok', 0, '2018-11-20 13:05:34'),
(16, 3, 'Air akan dimatikan mulai besok', 0, '2018-11-20 13:05:34'),
(17, 4, 'Air akan dimatikan mulai besok', 0, '2018-11-20 13:05:34'),
(18, 6, 'Air akan dimatikan mulai besok', 0, '2018-11-20 13:05:34'),
(19, 7, 'Air akan dimatikan mulai besok', 1, '2018-11-20 13:05:34'),
(20, 8, 'Pembayaran IPL pada bulan November 2018 diterima', 1, '2018-11-21 02:08:30'),
(21, 9, 'Pembayaran IPL pada bulan November 2018 diterima', 1, '2018-11-21 02:12:04'),
(22, 1, 'Selamat Datang di Sentul City', 0, '2018-11-21 02:12:34'),
(23, 3, 'Selamat Datang di Sentul City', 0, '2018-11-21 02:12:34'),
(24, 4, 'Selamat Datang di Sentul City', 0, '2018-11-21 02:12:34'),
(25, 6, 'Selamat Datang di Sentul City', 0, '2018-11-21 02:12:34'),
(26, 7, 'Selamat Datang di Sentul City', 1, '2018-11-21 02:12:34'),
(27, 8, 'Selamat Datang di Sentul City', 1, '2018-11-21 02:12:34'),
(28, 9, 'Selamat Datang di Sentul City', 1, '2018-11-21 02:12:34'),
(29, 1, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 0, '2018-11-21 05:41:31'),
(30, 3, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 0, '2018-11-21 05:41:31'),
(31, 4, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 0, '2018-11-21 05:41:31'),
(32, 6, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 0, '2018-11-21 05:41:31'),
(33, 7, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 1, '2018-11-21 05:41:31'),
(34, 8, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 1, '2018-11-21 05:41:31'),
(35, 9, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 0, '2018-11-21 05:41:31'),
(36, 10, 'Pasokan air bersih akan dihentikan selama 7 jam untuk dilakukan perbaikan jalur distribusi air.', 1, '2018-11-21 05:41:31'),
(37, 11, 'Pembayaran IPL pada bulan November 2018 diterima', 1, '2018-11-21 07:08:04'),
(38, 1, 'Air mati gitu, tarifnya naik', 0, '2018-11-21 07:08:47'),
(39, 3, 'Air mati gitu, tarifnya naik', 0, '2018-11-21 07:08:47'),
(40, 4, 'Air mati gitu, tarifnya naik', 0, '2018-11-21 07:08:47'),
(41, 6, 'Air mati gitu, tarifnya naik', 0, '2018-11-21 07:08:47'),
(42, 7, 'Air mati gitu, tarifnya naik', 1, '2018-11-21 07:08:47'),
(43, 8, 'Air mati gitu, tarifnya naik', 1, '2018-11-21 07:08:47'),
(44, 9, 'Air mati gitu, tarifnya naik', 0, '2018-11-21 07:08:47'),
(45, 10, 'Air mati gitu, tarifnya naik', 1, '2018-11-21 07:08:47'),
(46, 11, 'Air mati gitu, tarifnya naik', 1, '2018-11-21 07:08:47'),
(47, 1, 'hai jason', 0, '2018-11-21 07:33:06'),
(48, 3, 'hai jason', 0, '2018-11-21 07:33:06'),
(49, 4, 'hai jason', 0, '2018-11-21 07:33:06'),
(50, 6, 'hai jason', 0, '2018-11-21 07:33:06'),
(51, 7, 'hai jason', 0, '2018-11-21 07:33:06'),
(52, 8, 'hai jason', 1, '2018-11-21 07:33:06'),
(53, 9, 'hai jason', 0, '2018-11-21 07:33:06'),
(54, 10, 'hai jason', 0, '2018-11-21 07:33:06'),
(55, 11, 'hai jason', 0, '2018-11-21 07:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `rumah`
--

CREATE TABLE `rumah` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumah`
--

INSERT INTO `rumah` (`id`, `kode`, `alamat`) VALUES
(1, 'ALS-0035', 'Jl. Alam Sentosa No. 35'),
(2, 'ALJ-0023', 'Jl. Alam Jelita No. 23'),
(4, 'SBH-0035', 'Jl. Sungai Batanghari No. 35'),
(5, 'ALJ-0020', 'Jl. Alam Jelita No. 20'),
(7, 'ALE-0006', 'Jl. Alam Elok No. 6\r\n'),
(8, 'APS-889', 'Jl. Alam Pesona no. 50'),
(9, 'MVGP-166', 'Mountain View, Jalan Gunung Pangrango no. 166'),
(10, 'ALE-0036', 'Jl. Alam Elok No. 36'),
(11, 'TVU-088', 'Jl. Taman Venesia Utara no. 88'),
(12, 'MVGP-172', 'Mountain View, Jl. Gunung Pangrango no. 172');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id` int(11) NOT NULL,
  `rumah_id` int(11) NOT NULL,
  `listrik` int(11) NOT NULL,
  `air` int(11) NOT NULL,
  `tagihan_kebersihan` int(11) NOT NULL,
  `tagihan_keamanan` int(11) NOT NULL,
  `tagihan_listrik` int(11) NOT NULL,
  `tagihan_air` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL,
  `flag_bulan_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id`, `rumah_id`, `listrik`, `air`, `tagihan_kebersihan`, `tagihan_keamanan`, `tagihan_listrik`, `tagihan_air`, `denda`, `total`, `tanggal`, `bulan`, `tahun`, `status`, `bukti_bayar`, `flag_bulan_denda`) VALUES
(11, 2, 100, 70, 15000, 15000, 150000, 105000, 14250, 299250, 20, '10', '2018', 2, 'ALJ-0023Oktober2018.jpg', 11),
(13, 2, 100, 12, 15000, 15000, 150000, 18000, 0, 198000, 20, '11', '2018', 2, 'ALJ-0023November2018.jpg', 11),
(14, 7, 100, 100, 15000, 15000, 150000, 150000, 0, 330000, 20, '11', '2018', 2, 'ALE-0006November2018.jpg', 11),
(15, 5, 123, 123, 15000, 15000, 184500, 184500, 0, 399000, 20, '11', '2018', 2, 'ALJ-0020November2018.jpg', 11),
(18, 8, 143, 21, 15000, 15000, 214500, 31500, 13800, 289800, 20, '10', '2018', 0, '', 11),
(19, 9, 1500, 15, 15000, 15000, 2250000, 22500, 0, 2302500, 21, '11', '2018', 2, 'MVGP-166November2018.jpg', 11),
(20, 10, 123, 123, 15000, 15000, 184500, 184500, 0, 399000, 21, '11', '2018', 2, 'ALE-0036November2018.jpg', 11),
(22, 4, 120, 122, 15000, 15000, 180000, 183000, 0, 393000, 21, '11', '2018', 1, 'SBH-0035November2018.jpg', 11),
(23, 12, 100, 23, 15000, 15000, 150000, 34500, 0, 214500, 21, '11', '2018', 2, 'MVGP-172November2018.jpg', 11),
(24, 8, 143, 12, 15000, 15000, 214500, 18000, 0, 262500, 21, '11', '2018', 0, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `air` int(11) NOT NULL,
  `listrik` int(11) NOT NULL,
  `keamanan` int(11) NOT NULL,
  `kebersihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`air`, `listrik`, `keamanan`, `kebersihan`) VALUES
(7000, 1500, 15000, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `rumah_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `nik`, `nomor_hp`, `rumah_id`, `email`, `password`) VALUES
(1, 'Deka Thomas', '1281923102', '01923', 2, 'deka@gmail.com', '3682b35ea8e8c48ccd2945eea6a583a4'),
(3, 'William Antony', '1471231231231231', '085376287900', 1, 'williamantony@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(4, 'Harry Wijaya', '1231231233333331', '085376287900', 5, 'harry@gmail.com', 'd0d2b883ffe11676af7e678cf45a36fa'),
(6, 'Cindy Priscilla', '1234512345123456', '08987654321', 7, 'cindy@gmail.com', '17103f51fe7ec5b170c9dd9a8e496b6b'),
(7, 'Steven', '3204100909000011', '085329997575', 8, 'steven@gmail.com', 'd141652e272daf4860c54d6a8c255ae8'),
(8, 'Jason Hwang', '1404102306000001', '085712341234', 9, 'jason@hwang.us', '25d55ad283aa400af464c76d713c07ad'),
(9, 'Edrio', '1471113003000002', '085376287900', 10, 'edrio@gmail.com', '4175fd97dc123f4a770f5b9a0fe8596e'),
(10, 'Gede Ananta', '1402000808000011', '085321764432', 4, 'nanta@blc.id', '25d55ad283aa400af464c76d713c07ad'),
(11, 'Cindy', '1404102306000001', '081234567890', 12, 'cindy@priscilla.com', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah`
--
ALTER TABLE `rumah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rumah`
--
ALTER TABLE `rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
