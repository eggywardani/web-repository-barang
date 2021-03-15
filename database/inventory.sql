-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 12:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_barang`
--

CREATE TABLE `item_barang` (
  `id` varchar(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_barang`
--

INSERT INTO `item_barang` (`id`, `nama`) VALUES
('BB0604e382c', 'Besi '),
('BB0604e3841', 'Alumunium'),
('BB0604efb9f', 'Ahahahha');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `contents`, `admin`, `status`) VALUES
(23, 'Barang Datang', 'Stock', 'aktif'),
(22, 'Cara', 'Stock', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Stock', 'stock');

-- --------------------------------------------------------

--
-- Table structure for table `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `id_barang` varchar(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `rak` varchar(30) NOT NULL,
  `masuk` int(11) NOT NULL,
  `tanggal_masuk` varchar(50) NOT NULL,
  `keluar` int(11) NOT NULL,
  `tanggal_keluar` varchar(50) NOT NULL,
  `jumlah` bigint(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `id_barang`, `nama`, `rak`, `masuk`, `tanggal_masuk`, `keluar`, `tanggal_keluar`, `jumlah`) VALUES
(260, 'BB0604e3841', 'Alumunium', 'Rak 2', 90, '2021-03-23', 0, '2021-04-01', 90),
(259, 'BB0604e382c', 'Besi ', 'Rak 2', 100, '2021-03-16', 0, '2021-03-10', 100),
(261, 'BB0604ef533', 'Loving You ', 'Rak 2', 90, '2021-03-24', 19, '2021-03-10', 71),
(262, 'BB0604e382c', 'Besi ', 'Rak 3', 10, '2021-03-15', 10, '2021-03-27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_barang`
--
ALTER TABLE `item_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
