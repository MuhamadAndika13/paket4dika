-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirdika`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(1, 1, 1, 2, '15000.00'),
(1, 2, 2, 2, '15000.00'),
(2, 4, 3, 4, '10000.00'),
(2, 5, 2, 4, '15000.00'),
(4, 7, 1, 1, '15000.00'),
(5, 8, 4, 3, '10000.00'),
(6, 9, 1, 3, '15000.00'),
(7, 11, 4, 3, '10000.00'),
(8, 13, 4, 2, '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelepon`) VALUES
(1, 'pelanggan1', 1, ''),
(2, 'nisa', 24, ''),
(3, 'kaa', 2, ''),
(4, 'kaa', 2, ''),
(5, 'pelanggan2', 7, ''),
(6, 'pelanggan2', 7, ''),
(7, 'pelanggan 3', 9, ''),
(8, 'pelanggan 3', 9, ''),
(9, 'pelanggan 3', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-27', '0.00', 0),
(2, '2024-02-27', '0.00', 0),
(3, '2024-02-27', '0.00', 0),
(4, '2024-02-27', '0.00', 0),
(5, '2024-02-28', '0.00', 0),
(6, '2024-02-28', '0.00', 0),
(7, '2024-02-28', '0.00', 0),
(8, '2024-02-28', '0.00', 0),
(9, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `Terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `foto`, `Terjual`) VALUES
(3, 'mie kering', '10000.00', 91, '27022024014654.jpg', 8),
(4, 'Es Coklat', '10000.00', 91, '28022024023649.jpg', 8),
(8, 'Kopi susu', '15000.00', 100, 'es-moccacino.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `NamaUser` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `NamaUser`, `Password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(2, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `DetailID` (`DetailID`,`PenjualanID`,`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
