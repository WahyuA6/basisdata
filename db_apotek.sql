-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 07:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(250) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
(1, 'Pablo', 'L', 'BBS 2', '087714559253'),
(2, 'Siti', 'P', 'PCI blok C', '085296128521'),
(3, 'Asep', 'L', 'PCI blok D', '0821832985943'),
(4, 'Saburo', 'L', 'PCI blok D', '082177649185'),
(5, 'Roy', 'L', 'Temu putih', '087771222849'),
(6, 'Fitriani', 'P', 'Makam Balung', '082264871764'),
(7, 'Jumadi', 'L', 'Ramanuju', '087778747565'),
(8, 'Waluyo', 'L', 'Ramanuju', '08787657765'),
(9, 'Puput', 'P', 'Suka Damai', '082155712154'),
(10, 'Puan', 'P', 'Taman Raya', '082158742123');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(250) NOT NULL,
  `harga_obat` bigint(11) NOT NULL,
  `stok` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga_obat`, `stok`) VALUES
(1, 'Bodrex Migra', 10000, 30),
(2, 'Bodrex Extra', 8000, 50),
(3, 'Sanmol', 3000, 100),
(4, 'Panadol', 5000, 80),
(5, 'Balsem', 5000, 60),
(6, 'Procold', 5000, 40),
(7, 'Vitamin C', 5000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(250) NOT NULL,
  `umur` int(3) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `umur`, `jenis_kelamin`) VALUES
(1, 'bowo', 20, 'L'),
(2, 'bagas', 20, 'L'),
(3, 'putri', 19, 'P'),
(4, 'bayu', 25, 'L'),
(5, 'salma', 18, 'P'),
(6, 'eka', 24, 'L'),
(7, 'arra', 17, 'P'),
(8, 'vernand', 21, 'L'),
(9, 'sheila', 20, 'P'),
(10, 'nara', 25, 'P'),
(11, 'sulthan', 21, 'L'),
(12, 'esti', 20, 'P'),
(13, 'nanda', 28, 'L'),
(14, 'siti', 21, 'P'),
(15, 'surya', 21, 'L'),
(16, 'nafa', 21, 'P'),
(17, 'rozak', 18, 'L'),
(18, 'najwa', 16, 'P'),
(19, 'rizki', 18, 'L'),
(20, 'aisha', 21, 'P'),
(21, 'ari', 19, 'L'),
(22, 'sara', 21, 'P'),
(23, 'Morgan', 21, 'L'),
(24, 'abraham', 42, 'L'),
(25, 'Hussain', 38, 'L'),
(26, 'Jumari', 27, 'L'),
(27, 'Jofan', 24, 'L'),
(28, 'Ayu', 20, 'P'),
(29, 'Natalia', 21, 'P'),
(30, 'Yuliana', 21, 'P'),
(31, 'Reksa', 21, 'L'),
(32, 'Muni', 21, 'L'),
(33, 'Prabawa Pradana', 45, 'L'),
(34, 'Kiandra', 21, 'P'),
(35, 'Jane mandasari', 25, 'P'),
(36, 'Salsabila', 19, 'P'),
(37, 'Intan', 17, 'P'),
(38, 'Nabila', 21, 'P'),
(39, 'Mulyanto', 41, 'L'),
(40, 'Warto', 55, 'L'),
(41, 'Denny', 35, 'L'),
(42, 'Ghani', 25, 'L'),
(43, 'Taufan', 29, 'L'),
(44, 'Prabowo', 55, 'L'),
(45, 'Jokowi', 55, 'L'),
(46, 'Nasim', 25, 'L'),
(47, 'Januar', 24, 'L'),
(48, 'Hesti', 61, 'P'),
(49, 'Hassanah', 53, 'P'),
(50, 'Umi', 33, 'P'),
(51, 'Vero', 23, 'L'),
(52, 'Suwarno', 43, 'L'),
(53, 'Jidan', 23, 'L'),
(54, 'Hidayat', 20, 'L'),
(55, 'Muhammad Situmorang', 22, 'L'),
(56, 'Maya', 21, 'P'),
(57, 'Ghaliyati', 19, 'P'),
(58, 'Amalia', 18, 'P'),
(59, 'Amelia', 28, 'P'),
(60, 'Agus', 22, 'L'),
(61, 'Salahudin', 17, 'L'),
(62, 'Paramitha', 33, 'P'),
(63, 'Farida', 36, 'P'),
(64, 'Tantri', 31, 'P'),
(65, 'Jaya', 39, 'L'),
(66, 'Ida', 49, 'P'),
(67, 'Anita', 19, 'P'),
(68, 'Intan Aryani', 15, 'P'),
(69, 'Mega', 21, 'P'),
(70, 'Ariana', 31, 'P'),
(71, 'Siska', 24, 'P'),
(72, 'Catur', 29, 'L'),
(73, 'Cemplunk Siregar', 27, 'L'),
(74, 'Michelle', 26, 'P'),
(75, 'Cinta', 30, 'P'),
(76, 'Melda', 21, 'P'),
(77, 'Ega', 21, 'P'),
(78, 'Ega Pratiwi', 23, 'P'),
(79, 'Siskaeee', 28, 'P'),
(80, 'Fitriani Yolanda', 23, 'P'),
(81, 'Gantar', 26, 'L'),
(82, 'Viktor', 56, 'L'),
(83, 'Vanya', 46, 'P'),
(84, 'Sari', 66, 'P'),
(85, 'Cholil', 69, 'L'),
(86, 'Liman', 34, 'L'),
(87, 'Malika', 44, 'P'),
(88, 'Ciaobella', 37, 'P'),
(89, 'Bakijan Santoso', 27, 'L'),
(90, 'Farhan', 21, 'L'),
(91, 'Athallah', 20, 'L'),
(92, 'Dayyan', 20, 'L'),
(93, 'Bertus', 20, 'L'),
(94, 'Eka muspita', 20, 'P'),
(95, 'Siti', 20, 'P'),
(96, 'Ilman', 19, 'L'),
(97, 'Ridho', 24, 'L'),
(98, 'Alif', 24, 'L'),
(99, 'Naufal Widan Diko', 20, 'L'),
(100, 'Ihsan', 30, 'L'),
(101, 'sintia', 21, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `total_harga` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_pelanggan`, `id_karyawan`, `id_obat`, `total_harga`) VALUES
(1, 1, 1, 1, 10000),
(2, 2, 1, 2, 8000),
(3, 3, 1, 6, 5000),
(4, 4, 1, 4, 5000),
(5, 5, 1, 5, 5000),
(6, 6, 1, 1, 10000),
(7, 7, 1, 2, 8000),
(8, 8, 1, 6, 5000),
(9, 9, 1, 4, 5000),
(10, 10, 1, 6, 5000),
(11, 11, 2, 1, 10000),
(12, 12, 2, 2, 8000),
(13, 13, 2, 4, 5000),
(14, 14, 2, 3, 3000),
(15, 15, 2, 6, 5000),
(16, 16, 2, 1, 10000),
(17, 17, 2, 1, 10000),
(18, 18, 2, 3, 3000),
(19, 19, 2, 6, 5000),
(20, 20, 2, 5, 5000),
(21, 21, 3, 4, 5000),
(22, 22, 3, 5, 5000),
(23, 23, 3, 1, 10000),
(24, 24, 3, 2, 8000),
(25, 25, 3, 3, 3000),
(26, 26, 3, 2, 8000),
(27, 27, 3, 6, 5000),
(28, 28, 3, 6, 5000),
(29, 29, 3, 4, 5000),
(30, 30, 3, 2, 8000),
(31, 31, 4, 5, 5000),
(32, 32, 4, 6, 5000),
(33, 33, 4, 3, 3000),
(34, 34, 4, 4, 5000),
(35, 35, 4, 6, 5000),
(36, 36, 4, 1, 10000),
(37, 37, 4, 2, 8000),
(38, 38, 4, 6, 5000),
(39, 39, 4, 2, 8000),
(40, 40, 4, 3, 3000),
(41, 41, 5, 2, 8000),
(42, 42, 5, 2, 8000),
(43, 43, 5, 3, 3000),
(44, 44, 5, 6, 5000),
(45, 45, 5, 6, 5000),
(46, 46, 5, 5, 5000),
(47, 47, 5, 1, 10000),
(48, 48, 5, 2, 8000),
(49, 49, 5, 2, 8000),
(50, 50, 5, 1, 10000),
(51, 51, 6, 1, 10000),
(52, 52, 6, 6, 5000),
(53, 53, 6, 3, 3000),
(54, 54, 6, 6, 5000),
(55, 55, 6, 5, 5000),
(56, 56, 6, 4, 5000),
(57, 57, 6, 2, 8000),
(58, 58, 6, 1, 10000),
(59, 59, 6, 6, 5000),
(60, 60, 6, 5, 5000),
(61, 61, 7, 1, 10000),
(62, 62, 7, 1, 10000),
(63, 63, 7, 6, 5000),
(64, 64, 7, 6, 5000),
(65, 65, 7, 5, 5000),
(66, 66, 7, 3, 3000),
(67, 67, 7, 2, 8000),
(68, 68, 7, 1, 10000),
(69, 69, 7, 4, 5000),
(70, 70, 7, 3, 3000),
(71, 71, 8, 1, 10000),
(72, 72, 8, 6, 5000),
(73, 73, 8, 6, 5000),
(74, 74, 8, 3, 3000),
(75, 75, 8, 1, 10000),
(76, 76, 8, 2, 8000),
(77, 77, 8, 1, 10000),
(78, 78, 8, 3, 3000),
(79, 79, 8, 4, 5000),
(80, 80, 8, 4, 5000),
(81, 81, 9, 1, 10000),
(82, 82, 9, 6, 5000),
(83, 83, 9, 5, 5000),
(84, 84, 9, 3, 3000),
(85, 85, 9, 3, 3000),
(86, 86, 9, 4, 5000),
(87, 87, 9, 5, 5000),
(88, 88, 9, 1, 10000),
(89, 89, 9, 2, 8000),
(90, 90, 9, 4, 5000),
(91, 91, 10, 6, 5000),
(92, 92, 10, 3, 3000),
(93, 93, 10, 2, 8000),
(94, 94, 10, 5, 5000),
(95, 95, 10, 3, 3000),
(96, 96, 10, 2, 8000),
(97, 97, 10, 1, 10000),
(98, 98, 10, 6, 5000),
(99, 99, 10, 3, 3000),
(100, 100, 10, 2, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `rincian_transaksi`
--

CREATE TABLE `rincian_transaksi` (
  `id_transaksi` int(11) NOT NULL DEFAULT 0,
  `id_pelanggan` int(11) NOT NULL,
  `nama_karyawan` varchar(250) NOT NULL,
  `nama_obat` varchar(250) NOT NULL,
  `harga_obat` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rincian_transaksi`
--

INSERT INTO `rincian_transaksi` (`id_transaksi`, `id_pelanggan`, `nama_karyawan`, `nama_obat`, `harga_obat`) VALUES
(1, 1, 'Pablo', 'Bodrex Migra', 10000),
(2, 2, 'Pablo', 'Bodrex Extra', 8000),
(3, 3, 'Pablo', 'Procold', 5000),
(4, 4, 'Pablo', 'Panadol', 5000),
(5, 5, 'Pablo', 'Balsem', 5000),
(6, 6, 'Pablo', 'Bodrex Migra', 10000),
(7, 7, 'Pablo', 'Bodrex Extra', 8000),
(8, 8, 'Pablo', 'Procold', 5000),
(9, 9, 'Pablo', 'Panadol', 5000),
(10, 10, 'Pablo', 'Procold', 5000),
(11, 11, 'Siti', 'Bodrex Migra', 10000),
(12, 12, 'Siti', 'Bodrex Extra', 8000),
(13, 13, 'Siti', 'Panadol', 5000),
(14, 14, 'Siti', 'Sanmol', 3000),
(15, 15, 'Siti', 'Procold', 5000),
(16, 16, 'Siti', 'Bodrex Migra', 10000),
(17, 17, 'Siti', 'Bodrex Migra', 10000),
(18, 18, 'Siti', 'Sanmol', 3000),
(19, 19, 'Siti', 'Procold', 5000),
(20, 20, 'Siti', 'Balsem', 5000),
(21, 21, 'Asep', 'Panadol', 5000),
(22, 22, 'Asep', 'Balsem', 5000),
(23, 23, 'Asep', 'Bodrex Migra', 10000),
(24, 24, 'Asep', 'Bodrex Extra', 8000),
(25, 25, 'Asep', 'Sanmol', 3000),
(26, 26, 'Asep', 'Bodrex Extra', 8000),
(27, 27, 'Asep', 'Procold', 5000),
(28, 28, 'Asep', 'Procold', 5000),
(29, 29, 'Asep', 'Panadol', 5000),
(30, 30, 'Asep', 'Bodrex Extra', 8000),
(31, 31, 'Saburo', 'Balsem', 5000),
(32, 32, 'Saburo', 'Procold', 5000),
(33, 33, 'Saburo', 'Sanmol', 3000),
(34, 34, 'Saburo', 'Panadol', 5000),
(35, 35, 'Saburo', 'Procold', 5000),
(36, 36, 'Saburo', 'Bodrex Migra', 10000),
(37, 37, 'Saburo', 'Bodrex Extra', 8000),
(38, 38, 'Saburo', 'Procold', 5000),
(39, 39, 'Saburo', 'Bodrex Extra', 8000),
(40, 40, 'Saburo', 'Sanmol', 3000),
(41, 41, 'Roy', 'Bodrex Extra', 8000),
(42, 42, 'Roy', 'Bodrex Extra', 8000),
(43, 43, 'Roy', 'Sanmol', 3000),
(44, 44, 'Roy', 'Procold', 5000),
(45, 45, 'Roy', 'Procold', 5000),
(46, 46, 'Roy', 'Balsem', 5000),
(47, 47, 'Roy', 'Bodrex Migra', 10000),
(48, 48, 'Roy', 'Bodrex Extra', 8000),
(49, 49, 'Roy', 'Bodrex Extra', 8000),
(50, 50, 'Roy', 'Bodrex Migra', 10000),
(51, 51, 'Fitriani', 'Bodrex Migra', 10000),
(52, 52, 'Fitriani', 'Procold', 5000),
(53, 53, 'Fitriani', 'Sanmol', 3000),
(54, 54, 'Fitriani', 'Procold', 5000),
(55, 55, 'Fitriani', 'Balsem', 5000),
(56, 56, 'Fitriani', 'Panadol', 5000),
(57, 57, 'Fitriani', 'Bodrex Extra', 8000),
(58, 58, 'Fitriani', 'Bodrex Migra', 10000),
(59, 59, 'Fitriani', 'Procold', 5000),
(60, 60, 'Fitriani', 'Balsem', 5000),
(61, 61, 'Jumadi', 'Bodrex Migra', 10000),
(62, 62, 'Jumadi', 'Bodrex Migra', 10000),
(63, 63, 'Jumadi', 'Procold', 5000),
(64, 64, 'Jumadi', 'Procold', 5000),
(65, 65, 'Jumadi', 'Balsem', 5000),
(66, 66, 'Jumadi', 'Sanmol', 3000),
(67, 67, 'Jumadi', 'Bodrex Extra', 8000),
(68, 68, 'Jumadi', 'Bodrex Migra', 10000),
(69, 69, 'Jumadi', 'Panadol', 5000),
(70, 70, 'Jumadi', 'Sanmol', 3000),
(71, 71, 'Waluyo', 'Bodrex Migra', 10000),
(72, 72, 'Waluyo', 'Procold', 5000),
(73, 73, 'Waluyo', 'Procold', 5000),
(74, 74, 'Waluyo', 'Sanmol', 3000),
(75, 75, 'Waluyo', 'Bodrex Migra', 10000),
(76, 76, 'Waluyo', 'Bodrex Extra', 8000),
(77, 77, 'Waluyo', 'Bodrex Migra', 10000),
(78, 78, 'Waluyo', 'Sanmol', 3000),
(79, 79, 'Waluyo', 'Panadol', 5000),
(80, 80, 'Waluyo', 'Panadol', 5000),
(81, 81, 'Puput', 'Bodrex Migra', 10000),
(82, 82, 'Puput', 'Procold', 5000),
(83, 83, 'Puput', 'Balsem', 5000),
(84, 84, 'Puput', 'Sanmol', 3000),
(85, 85, 'Puput', 'Sanmol', 3000),
(86, 86, 'Puput', 'Panadol', 5000),
(87, 87, 'Puput', 'Balsem', 5000),
(88, 88, 'Puput', 'Bodrex Migra', 10000),
(89, 89, 'Puput', 'Bodrex Extra', 8000),
(90, 90, 'Puput', 'Panadol', 5000),
(91, 91, 'Puan', 'Procold', 5000),
(92, 92, 'Puan', 'Sanmol', 3000),
(93, 93, 'Puan', 'Bodrex Extra', 8000),
(94, 94, 'Puan', 'Balsem', 5000),
(95, 95, 'Puan', 'Sanmol', 3000),
(96, 96, 'Puan', 'Bodrex Extra', 8000),
(97, 97, 'Puan', 'Bodrex Migra', 10000),
(98, 98, 'Puan', 'Procold', 5000),
(99, 99, 'Puan', 'Sanmol', 3000),
(100, 100, 'Puan', 'Bodrex Extra', 8000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `rincian_transaksi`
--
ALTER TABLE `rincian_transaksi`
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `rincian_transaksi`
--
ALTER TABLE `rincian_transaksi`
  ADD CONSTRAINT `rincian_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `penjualan` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
