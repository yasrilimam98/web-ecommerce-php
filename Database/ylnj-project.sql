-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 01:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ylnj-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'ylnj-project', 'yasril98', 'ylnj-toko');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Sumbawa', 20000),
(2, 'Jakarra', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamt_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamt_pelanggan`) VALUES
(1, 'safirayunitasari@gmail.com', 'safira97', 'safira', '087653218763', ''),
(2, 'merialviani@gmail.com', 'meri8722', 'Meri', '0823456173743', ''),
(3, 'aremania_yasril@ymail.com', '123456', 'yasril', '0874575354', 'jogja'),
(4, 'arin@gmail.com', '15', 'arin', '09822', 'bct');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamt_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamt_pengiriman`) VALUES
(1, 1, 1, '2018-11-13', 150000, '', 0, ''),
(2, 2, 1, '2018-11-06', 200000, '', 0, ''),
(3, 1, 2, '2019-01-27', 330000, '', 0, ''),
(4, 1, 0, '2019-01-27', 300000, '', 0, ''),
(5, 1, 0, '2019-01-27', 300000, '', 0, ''),
(6, 1, 1, '2019-01-27', 320000, '', 0, ''),
(7, 1, 0, '2019-01-27', 300000, '', 0, ''),
(8, 1, 2, '2019-01-27', 330000, '', 0, ''),
(9, 1, 1, '2019-01-27', 320000, '', 0, ''),
(10, 1, 1, '2019-01-27', 290000, '', 0, ''),
(11, 1, 0, '2019-01-27', 0, '', 0, ''),
(12, 1, 0, '2019-01-27', 0, '', 0, ''),
(26, 1, 0, '2019-01-28', 150000, '', 0, ''),
(27, 1, 1, '2019-01-28', 182000, '', 0, ''),
(28, 1, 0, '2019-01-28', 150000, '', 0, ''),
(39, 1, 0, '2019-01-29', 420000, '', 0, ''),
(42, 1, 0, '2019-01-29', 150000, '', 0, ''),
(43, 1, 0, '2019-01-29', 0, '', 0, ''),
(44, 1, 1, '2019-01-29', 170000, 'Sumbawa', 20000, ''),
(45, 1, 0, '2019-01-29', 150000, '', 0, ''),
(46, 1, 1, '2019-01-29', 320000, 'Sumbawa', 20000, ''),
(47, 1, 1, '2019-01-29', 170000, 'Sumbawa', 20000, '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 2, 3, '', 0, 0, 0, 0),
(2, 1, 2, 2, '', 0, 0, 0, 0),
(3, 0, 4, 2, '', 0, 0, 0, 0),
(4, 7, 4, 2, '', 0, 0, 0, 0),
(5, 8, 4, 2, '', 0, 0, 0, 0),
(6, 9, 4, 2, '', 0, 0, 0, 0),
(7, 10, 5, 1, '', 0, 0, 0, 0),
(8, 10, 4, 1, '', 0, 0, 0, 0),
(9, 13, 5, 1, '', 0, 0, 0, 0),
(10, 13, 6, 1, '', 0, 0, 0, 0),
(11, 14, 4, 1, '', 0, 0, 0, 0),
(12, 14, 5, 1, '', 0, 0, 0, 0),
(13, 17, 4, 1, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(13, 'Nisekoi Roku', 1200000, 100, 'shisai.jpg', 'Barang Bagus		  '),
(14, 'Nisekoi BlackTiger', 120000, 100, 'sari.jpg', '		  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
