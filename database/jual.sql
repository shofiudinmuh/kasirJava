-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 04:50 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jual`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `kd_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `catatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`kd_barang`, `nama_barang`, `stok`, `harga`, `harga_jual`, `catatan`) VALUES
('B0001', 'Kaos Polos', 50, '35000', '45000', ''),
('B0002', 'Sabun', 20, '2000', '3000', ''),
('B0003', 'Sikat Gigi', 75, '4500', '6500', ''),
('B0004', 'Pasta Gigi', 55, '3000', '4000', ''),
('B0005', 'Tas Ransel', 15, '50000', '65000', ''),
('B0006', 'Kemeja Flannel', 25, '125000', '140000', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `kd_member` varchar(7) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`kd_member`, `nama`, `no_tlp`, `alamat`) VALUES
('MM001', 'Hilal', '081230264046', 'Lamongan'),
('MM002', 'Shoffiudin', '087634213890', 'Blora'),
('MM003', 'Fatih', '089543217851', 'Tulungagung');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `kd_pembelian` varchar(5) NOT NULL,
  `kd_suplier` varchar(7) NOT NULL,
  `perusahaan` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_transaksi` varchar(7) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kd_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `stok` int(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` bigint(10) NOT NULL,
  `total` bigint(10) NOT NULL,
  `kd_member` varchar(5) NOT NULL,
  `nama_member` varchar(25) NOT NULL,
  `diskon` int(5) NOT NULL,
  `total2` bigint(10) NOT NULL,
  `bayar` bigint(10) NOT NULL,
  `kembalian` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_transaksi`, `tgl_transaksi`, `kd_barang`, `nama_barang`, `stok`, `jumlah`, `harga`, `total`, `kd_member`, `nama_member`, `diskon`, `total2`, `bayar`, `kembalian`) VALUES
('T0001', '2017-07-07', 'B0001', 'Baju Polos Hitam', 100, 12, 45000, 540000, '', '', 0, 540000, 600000, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kd_supplier` varchar(7) NOT NULL,
  `nama_toko` varchar(15) NOT NULL,
  `barang_dijual` varchar(20) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kd_supplier`, `nama_toko`, `barang_dijual`, `no_tlp`, `alamat`) VALUES
('SP001', 'Geoff Max', 'Kemeja', '081452665207', 'Bandung'),
('SP002', 'Nadiya Fashion', 'Kerudung', '089654325761', 'Tulungagung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`kd_member`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kd_pembelian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kd_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
