-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.72-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_tugasakhir
CREATE DATABASE IF NOT EXISTS `db_tugasakhir` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_tugasakhir`;

-- Dumping structure for table db_tugasakhir.hero_text
CREATE TABLE IF NOT EXISTS `hero_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `subtitle` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table db_tugasakhir.hero_text: 3 rows
/*!40000 ALTER TABLE `hero_text` DISABLE KEYS */;
INSERT INTO `hero_text` (`id`, `title`, `subtitle`) VALUES
	(1, 'Titik Paling Tinggi Mencintai ', 'Adalah Mengihlaskan'),
	(2, 'Namun Titik Ikhlas Paling Tinggi ', 'Adalah Kebohongan di Atas\r\n'),
	(12, 'Terimakasih Atas Kedatangannya', 'SeeYou Next Time');
/*!40000 ALTER TABLE `hero_text` ENABLE KEYS */;

-- Dumping structure for table db_tugasakhir.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL DEFAULT '0',
  `gambar` varchar(255) NOT NULL,
  `kategori` enum('Makanan','Minuman') DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT '0',
  `deskripsi` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama` (`nama`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Dumping data for table db_tugasakhir.menu: 13 rows
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `nama`, `harga`, `gambar`, `kategori`, `stok`, `deskripsi`) VALUES
	(20, 'Kopi Susu', 10000, '1756440726_kopi susu.jpg', 'Minuman', 10, ''),
	(21, 'Nila Bakar', 25000, '1756440750_nila bakar.jpg', 'Makanan', 10, ''),
	(22, 'Kopi Hitam', 5000, '1756440815_kopi hitam.jpg', 'Minuman', 0, 'kopi'),
	(24, 'Es Susu Putih', 5000, '1756440874_es susu.jpg', 'Minuman', 10, 'Susu Putih segar dengan rasa alami yang menyehatkan. Terbuat dari susu sapi pilihan tanpa campuran bahan kimia berbahaya, kaya akan kalsium, protein, dan vitamin yang baik untuk pertumbuhan tulang serta menjaga daya tahan tubuh. Cocok diminum dingin maupun hangat kapan saja.'),
	(28, 'Es Jeruk ', 5000, '1756498684_es-jeruk.jpg', 'Minuman', 10, ''),
	(30, 'Capcai', 10000, '1756499766_capcay.jpg', 'Makanan', 10, ''),
	(31, 'Ayam Krispy', 5000, '1756499805_ayam krispi.png', 'Makanan', 10, ''),
	(32, 'Steak Ayam', 30000, '1756499840_steak ayam.jpg', 'Makanan', 8, ''),
	(33, 'Ayam Panggang', 80000, '1756499876_ayam panggang.jpg', 'Makanan', 10, ''),
	(34, 'Jus Mangga', 10000, '1756500015_Jus_mangga.jpeg', 'Minuman', 10, ''),
	(40, 'Sosis Bakar', 2000, '1756927053_bakaran.jpg', 'Makanan', 10, 'Sosis di bakar lek'),
	(41, 'Bakso Campur', 7000, '1756997824_bakso.jpeg', 'Makanan', 6, 'test ini adalah deskripsi '),
	(42, 'Mie Ayam Bakso', 10000, '1756997927_mie ayam.webp', 'Makanan', 9, 'Mie Ayam Deskripsi');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table db_tugasakhir.pesanan
CREATE TABLE IF NOT EXISTS `pesanan` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `meja` int(200) NOT NULL,
  `jumlah` int(200) DEFAULT NULL,
  `product_id` int(200) DEFAULT NULL,
  `total_harga` int(200) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

-- Dumping data for table db_tugasakhir.pesanan: 6 rows
/*!40000 ALTER TABLE `pesanan` DISABLE KEYS */;
INSERT INTO `pesanan` (`id`, `meja`, `jumlah`, `product_id`, `total_harga`, `tanggal`) VALUES
	(135, 989, 2, 41, 14000, '2025-09-14 09:57:45'),
	(134, 987, 2, 32, 60000, '2025-09-14 09:57:27'),
	(133, 121, 2, 41, 14000, '2025-09-14 09:57:03'),
	(132, 2147483647, 1, 42, 10000, '2025-09-14 09:56:17'),
	(131, 910, 1, 22, 5000, '2025-09-12 19:19:05'),
	(120, 1, 1, 41, 7000, '2025-09-06 03:19:43');
/*!40000 ALTER TABLE `pesanan` ENABLE KEYS */;

-- Dumping structure for table db_tugasakhir.rekap_penjualan
CREATE TABLE IF NOT EXISTS `rekap_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meja` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('BELUM','LUNAS') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- Dumping data for table db_tugasakhir.rekap_penjualan: 10 rows
/*!40000 ALTER TABLE `rekap_penjualan` DISABLE KEYS */;
INSERT INTO `rekap_penjualan` (`id`, `meja`, `jumlah`, `product_id`, `total_harga`, `tanggal`, `status`) VALUES
	(101, 1322, 1, 41, 7000, '2025-09-09 20:05:30', 'BELUM'),
	(100, 1322, 1, 24, 5000, '2025-09-09 20:05:30', 'BELUM'),
	(99, 1911, 1, 42, 10000, '2025-09-09 20:00:06', 'BELUM'),
	(98, 1911, 1, 41, 7000, '2025-09-09 20:00:06', 'BELUM'),
	(97, 5, 1, 42, 10000, '2025-09-06 14:18:18', 'LUNAS'),
	(96, 4, 1, 41, 7000, '2025-09-06 14:18:12', 'BELUM'),
	(95, 99, 1, 42, 10000, '2025-09-06 10:11:42', 'LUNAS'),
	(94, 99, 1, 28, 5000, '2025-09-06 10:11:42', 'LUNAS'),
	(93, 3, 1, 32, 30000, '2025-09-06 03:20:46', 'LUNAS'),
	(92, 2, 1, 21, 25000, '2025-09-06 03:20:39', 'LUNAS');
/*!40000 ALTER TABLE `rekap_penjualan` ENABLE KEYS */;

-- Dumping structure for table db_tugasakhir.user_project
CREATE TABLE IF NOT EXISTS `user_project` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table db_tugasakhir.user_project: 3 rows
/*!40000 ALTER TABLE `user_project` DISABLE KEYS */;
INSERT INTO `user_project` (`id`, `username`, `password`, `level`) VALUES
	(29, 'pelayan', 'pelayan', 4),
	(26, 'kasir', 'kasir', 3),
	(25, 'admin', 'admin', 1);
/*!40000 ALTER TABLE `user_project` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
