-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2023 at 08:19 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbti2_satria`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `profit` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `warna`, `kode_kategori`, `satuan`, `stok`, `harga_beli`, `harga_jual`, `profit`, `tgl_input`, `pengguna`) VALUES
('B0001', 'Kemeja Anak', 'Biru', 'K003', 'Pcs', 26, 18000, 27000, 9000, '2022-08-15', 1),
('B0002', 'Blazer Anak', 'Hitam', 'K004', 'Pcs', 13, 17000, 25000, 8000, '2022-08-15', 1),
('B0003', 'Rok Mono', 'Pink', 'K004', 'Pcs', 18, 20000, 26000, 6000, '2022-09-15', 1),
('B0004', 'Kerudung Anak', 'Coklat', 'K004', 'Pcs', 26, 10000, 15000, 5000, '2022-09-15', 1),
('B0005', 'Kerudung Dewasa', 'Coklat', 'K002', 'Pcs', 9, 15000, 20000, 5000, '2022-09-15', 1),
('B0006', 'Kaos Oblong', 'Putih', 'K001', 'Pcs', 11, 16000, 23000, 7000, '2022-09-15', 1),
('B0007', 'Kaos Kerah', 'Merah', 'K001', 'Pcs', 11, 20000, 25000, 5000, '2022-09-15', 1),
('B0008', 'Celana Pendek Anak', 'Biru', 'K003', 'Pcs', 11, 120000, 150000, 30000, '2022-09-15', 1),
('B0009', 'Celana Panjang Jeans', 'Biru', 'K001', 'Pcs', 25, 130000, 250000, 120000, '2022-09-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kode_kategori` varchar(30) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kode_kategori`, `nama_kategori`, `tgl_input`, `pengguna`) VALUES
('K001', 'Baju Dewasa Laki-Laki', '2023-10-03', 1),
('K002', 'Baju Dewasa Perempuan', '2023-10-03', 1),
('K003', 'Baju Anak Laki-Laki', '2023-10-03', 1),
('K004', 'Baju Anak Perempuan', '2023-10-03', 1),
('K005', 'Topi Dewasa', '2023-10-03', 1),
('K006', 'Baju Koko Laki-Laki', '2023-10-03', 1),
('K007', 'testing', '2023-10-03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kode_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kode_pelanggan`, `nama`, `alamat`, `telepon`, `email`, `tgl_input`, `pengguna`) VALUES
(1, 'Umum', NULL, NULL, NULL, '2022-09-15', 3),
(2, 'Budi Rahajo', 'Plumbon Cirebon', '81312121212', NULL, '2022-09-15', 3),
(3, 'Wati', 'Plered', '84545454545', NULL, '2022-09-15', 3);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian_detail`
--

INSERT INTO `tb_pembelian_detail` (`id`, `tgl`, `kode_barang`, `jumlah`, `pengguna`) VALUES
(6, '2021-12-04', 'B0001', 5, 3),
(7, '2022-09-07', 'B0001', 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `username`, `nama`, `password`, `level`, `foto`, `tgl_input`, `pengguna`) VALUES
(1, 'admin', 'Rina Maelani', 'admin', 'admin', 'kartini.jpg', '2022-09-01', 1),
(3, 'kasir', 'Candra', 'kasir', 'kasir', 'user.png', '2022-09-14', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`kode_penjualan`, `tgl_penjualan`, `id_pelanggan`, `bayar`, `kembali`, `diskon`, `potongan`, `total_b`, `pengguna`) VALUES
('PJ-00000001', '2021-12-04', 2, 350000, 0, 0, 0, 350000, 3),
('PJ-00000002', '2021-12-04', 1, 100000, 27000, 0, 0, 73000, 3),
('PJ-00000003', '2022-09-15', 2, 100000, 27000, 0, 0, 73000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan_detail`
--

CREATE TABLE `tb_penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode_penjualan` varchar(50) DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan_detail`
--

INSERT INTO `tb_penjualan_detail` (`id`, `kode_penjualan`, `kode_barang`, `jumlah`, `total`) VALUES
(78, 'PJ-00000001', 'B0001', 2, 50000),
(79, 'PJ-00000001', 'B0008', 2, 300000),
(80, 'PJ-00000002', 'B0001', 2, 50000),
(81, 'PJ-00000002', 'B0002', 1, 23000),
(82, 'PJ-00000003', 'B0001', 2, 50000),
(83, 'PJ-00000003', 'B0002', 1, 23000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_3tabel`
-- (See below for the actual view)
--
CREATE TABLE `view_3tabel` (
`nama_barang` varchar(255)
,`harga_beli` int(11)
,`nama_kategori` varchar(50)
,`stok` int(11)
,`nama` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang_kategori`
-- (See below for the actual view)
--
CREATE TABLE `view_barang_kategori` (
`nama_barang` varchar(255)
,`harga_beli` int(11)
,`nama_kategori` varchar(50)
,`stok` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_nama_barang_kategori`
-- (See below for the actual view)
--
CREATE TABLE `view_nama_barang_kategori` (
`nama_barang` varchar(255)
,`nama_kategori` varchar(50)
,`nama` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tgl_nama_jumtot`
-- (See below for the actual view)
--
CREATE TABLE `view_tgl_nama_jumtot` (
`tgl_penjualan` date
,`nama_barang` varchar(255)
,`nama_kategori` varchar(50)
,`jumlah` int(11)
,`total` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_3tabel`
--
DROP TABLE IF EXISTS `view_3tabel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_3tabel`  AS SELECT `tb_barang`.`nama_barang` AS `nama_barang`, `tb_barang`.`harga_beli` AS `harga_beli`, `tb_kategori`.`nama_kategori` AS `nama_kategori`, `tb_barang`.`stok` AS `stok`, `tb_pengguna`.`nama` AS `nama` FROM ((`tb_barang` join `tb_kategori`) join `tb_pengguna`) WHERE ((`tb_barang`.`kode_kategori` = `tb_kategori`.`kode_kategori`) AND (`tb_barang`.`pengguna` = `tb_pengguna`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_barang_kategori`
--
DROP TABLE IF EXISTS `view_barang_kategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_kategori`  AS SELECT `tb_barang`.`nama_barang` AS `nama_barang`, `tb_barang`.`harga_beli` AS `harga_beli`, `tb_kategori`.`nama_kategori` AS `nama_kategori`, `tb_barang`.`stok` AS `stok` FROM (`tb_barang` join `tb_kategori`) WHERE (`tb_barang`.`kode_kategori` = `tb_kategori`.`kode_kategori`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_nama_barang_kategori`
--
DROP TABLE IF EXISTS `view_nama_barang_kategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nama_barang_kategori`  AS SELECT `tb_barang`.`nama_barang` AS `nama_barang`, `tb_kategori`.`nama_kategori` AS `nama_kategori`, `tb_pengguna`.`nama` AS `nama` FROM ((`tb_barang` join `tb_kategori`) join `tb_pengguna`) WHERE ((`tb_barang`.`pengguna` = `tb_pengguna`.`id`) AND (`tb_kategori`.`kode_kategori` = `tb_barang`.`kode_kategori`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_tgl_nama_jumtot`
--
DROP TABLE IF EXISTS `view_tgl_nama_jumtot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tgl_nama_jumtot`  AS SELECT `tb_penjualan`.`tgl_penjualan` AS `tgl_penjualan`, `tb_barang`.`nama_barang` AS `nama_barang`, `tb_kategori`.`nama_kategori` AS `nama_kategori`, `tb_penjualan_detail`.`jumlah` AS `jumlah`, `tb_penjualan_detail`.`total` AS `total` FROM (((`tb_barang` join `tb_kategori`) join `tb_penjualan`) join `tb_penjualan_detail`) WHERE ((`tb_barang`.`kode_kategori` = `tb_kategori`.`kode_kategori`) AND (`tb_penjualan`.`kode_penjualan` = `tb_penjualan_detail`.`kode_penjualan`) AND (`tb_barang`.`kode_barang` = `tb_penjualan_detail`.`kode_barang`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `fkbarang1` (`kode_kategori`),
  ADD KEY `pengguna` (`pengguna`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kode_kategori`),
  ADD KEY `pengguna` (`pengguna`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`),
  ADD KEY `pengguna` (`pengguna`);

--
-- Indexes for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `pengguna` (`pengguna`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`kode_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `pengguna` (`pengguna`);

--
-- Indexes for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_penjualan` (`kode_penjualan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `fkbarang1` FOREIGN KEY (`kode_kategori`) REFERENCES `tb_kategori` (`kode_kategori`),
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`pengguna`) REFERENCES `tb_pengguna` (`id`);

--
-- Constraints for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD CONSTRAINT `tb_kategori_ibfk_1` FOREIGN KEY (`pengguna`) REFERENCES `tb_pengguna` (`id`);

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`pengguna`) REFERENCES `tb_pengguna` (`id`);

--
-- Constraints for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  ADD CONSTRAINT `tb_pembelian_detail_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `tb_barang` (`kode_barang`),
  ADD CONSTRAINT `tb_pembelian_detail_ibfk_2` FOREIGN KEY (`pengguna`) REFERENCES `tb_pengguna` (`id`);

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`kode_pelanggan`),
  ADD CONSTRAINT `tb_penjualan_ibfk_2` FOREIGN KEY (`pengguna`) REFERENCES `tb_pengguna` (`id`);

--
-- Constraints for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  ADD CONSTRAINT `tb_penjualan_detail_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `tb_barang` (`kode_barang`),
  ADD CONSTRAINT `tb_penjualan_detail_ibfk_2` FOREIGN KEY (`kode_penjualan`) REFERENCES `tb_penjualan` (`kode_penjualan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
