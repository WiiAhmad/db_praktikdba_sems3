-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 05:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praktikdba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kode_kategori` varchar(30) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kode_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_detail`
--

CREATE TABLE `tb_pembelian_detail` (
  `id` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `kode_penjualan` varchar(50) NOT NULL,
  `tgl_penjualan` date DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `potongan` int(11) DEFAULT NULL,
  `total_b` int(11) DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan_detail`
--

CREATE TABLE `tb_penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode_penjualan` varchar(20) DEFAULT NULL,
  `kode_bareng` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- Indexes for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
