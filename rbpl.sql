-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8080
-- Generation Time: Jun 18, 2023 at 06:25 PM
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
-- Database: `rbpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminID` bigint(20) NOT NULL,
  `akunID` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminID`, `akunID`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-06-18 13:20:29', '2023-06-18 13:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `akuns`
--

CREATE TABLE `akuns` (
  `akunID` bigint(20) NOT NULL,
  `tipeAkun` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akuns`
--

INSERT INTO `akuns` (`akunID`, `tipeAkun`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-11 17:08:53', '2023-06-11 17:08:53'),
(2, 'pelanggan', '2023-06-11 17:09:16', '2023-06-11 17:09:16'),
(3, 'mitra', '2023-06-11 17:09:16', '2023-06-11 17:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `detail kontrak`
--

CREATE TABLE `detail kontrak` (
  `detailKontrakID` bigint(20) NOT NULL,
  `kontrakID` bigint(20) NOT NULL,
  `mulai` date NOT NULL,
  `berakhir` date NOT NULL,
  `jamKerja` int(11) NOT NULL,
  `catatanKhusus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail kontrak`
--

INSERT INTO `detail kontrak` (`detailKontrakID`, `kontrakID`, `mulai`, `berakhir`, `jamKerja`, `catatanKhusus`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-06-18', '2023-06-23', 10, 'kerja', '2023-06-18 15:57:49', '2023-06-18 15:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `kontraks`
--

CREATE TABLE `kontraks` (
  `kontrakID` bigint(20) NOT NULL,
  `pelangganID` bigint(20) NOT NULL,
  `mitraID` bigint(20) NOT NULL,
  `statusKontrak` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontraks`
--

INSERT INTO `kontraks` (`kontrakID`, `pelangganID`, `mitraID`, `statusKontrak`, `created_at`, `updated_at`) VALUES
(3, 3, 3, b'0', '2023-06-18 15:57:13', '2023-06-18 15:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `listakuns`
--

CREATE TABLE `listakuns` (
  `listAkunID` bigint(20) NOT NULL,
  `akunID` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listakuns`
--

INSERT INTO `listakuns` (`listAkunID`, `akunID`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@gmail.com', '$2y$10$2Mt8dkhyzXzE/gmkQfT5yuPaLl9iimRN830e5jKVOKMx5PiQKHi4G', '2023-06-11 17:10:13', '2023-06-16 19:09:32'),
(2, 2, 'budi@gmail.com', '$2y$10$Z1IjTEF2liGVH1K.LtalG.YyYaYMRWY3s9GPfnb69bhlqnSSDuIWu', '2023-06-11 17:19:11', '2023-06-16 19:09:21'),
(3, 2, 'cahyo@gmail.com', '$2y$10$eIFJTn5Vj0SlBCerVePI8.rvDj58yDepHe6sFpAi5FT87d3JIaqpy', '2023-06-11 17:19:11', '2023-06-16 19:39:29'),
(4, 3, 'eko@gmail.com', '$2y$10$rUNhaFdAGNU/9IVPA7e6MuNBp.nioHx3s1TdWE5JGpIG1a.hE7pcO', '2023-06-11 17:21:29', '2023-06-16 19:10:17'),
(5, 3, 'farhan@gmail.com', '$2y$10$8.KDBkitfEBYK8HrgD79iOivgvosVlqu6EtGFOnUalO', '2023-06-11 17:21:29', '2023-06-11 10:22:19'),
(6, 3, 'mitra1@gmail.com', '$2y$10$wUWNB7/TlWYuJYg4sASb8ODd0xG8P1Bj2CJMTS8B8Lu/1V1z53Zla', '2023-06-17 06:35:49', '2023-06-17 06:35:49'),
(7, 3, 'jumadi@gmail.com', '$2y$10$DPbmECM9GKbtmIdJFaglUeHHkAa41X25Rg4t7uQzJVFlmANdEaGg2', '2023-06-18 08:21:00', '2023-06-18 08:21:00'),
(8, 3, 'harun@gmail.com', '$2y$10$zIOnPyLW8rExUG0X92Fgv.wsfSU3/HXZi/brMnBgCGGUHgxTO06PO', '2023-06-18 08:21:38', '2023-06-18 08:21:38'),
(9, 2, 'joko@gmail.com', '$2y$10$BJzqkbNjN66oukSFI4Oj2uH5A887C4NHqZIhfyFBzJQsFXLRUPK/K', '2023-06-18 08:30:28', '2023-06-18 08:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `mitraID` bigint(20) NOT NULL,
  `akunID` bigint(20) NOT NULL,
  `nama_mitra` varchar(50) NOT NULL,
  `lokasi_mitra` varchar(255) NOT NULL,
  `nomorHP_mitra` varchar(50) NOT NULL,
  `gaji` bigint(20) NOT NULL,
  `ppMitra` varchar(255) NOT NULL,
  `fotoktp` varchar(255) NOT NULL,
  `fotoskck` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mitras`
--

INSERT INTO `mitras` (`mitraID`, `akunID`, `nama_mitra`, `lokasi_mitra`, `nomorHP_mitra`, `gaji`, `ppMitra`, `fotoktp`, `fotoskck`, `created_at`, `updated_at`) VALUES
(3, 3, 'anwar munawar', 'keputih', '081256325891', 150000, '1687101910_foto_4.png', '1687101910_Manajemen Proyek TI.jpeg', '1687101910_Manajemen Proyek TI.jpeg', '2023-06-18 08:25:10', '2023-06-18 08:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `pelangganID` bigint(20) NOT NULL,
  `akunID` bigint(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `lokasi_pelanggan` varchar(255) NOT NULL,
  `nomorHP_pelanggan` varchar(50) NOT NULL,
  `fotoprofil` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`pelangganID`, `akunID`, `nama_pelanggan`, `lokasi_pelanggan`, `nomorHP_pelanggan`, `fotoprofil`, `created_at`, `updated_at`) VALUES
(3, 2, 'Agus purnawan', 'jonggol', '081264923584', 0x313638373130323537305f666f746f5f332e706e67, '2023-06-18 08:36:10', '2023-06-18 08:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `transaksiID` bigint(20) NOT NULL,
  `totalPembayaran` bigint(20) NOT NULL,
  `kontrakID` int(11) NOT NULL,
  `statusPembayaran` bit(1) NOT NULL,
  `buktiPembayaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`transaksiID`, `totalPembayaran`, `kontrakID`, `statusPembayaran`, `buktiPembayaran`, `created_at`, `updated_at`) VALUES
(2, 1575000, 1, b'0', 'bukti/YwCoTH0s0MRBvfbj4fmFlJ7azJgcB8jRglDsBn2r.jpg', '2023-06-18 08:44:58', '2023-06-18 08:44:58'),
(3, 1575000, 1, b'0', 'bukti/4zmW3XSnKl6pfn6qFddSZ7GQAOi8chQwOKL3Qx5r.jpg', '2023-06-18 08:51:36', '2023-06-18 08:51:36'),
(4, 1575000, 1, b'0', 'bukti/PGxSM9AG95lcjItxBOJli9l8R4hqDrdXSKVU0hb3.jpg', '2023-06-18 08:54:05', '2023-06-18 08:54:05'),
(5, 1575000, 4, b'0', 'bukti/dgCvR2UpR0zFDlMuy9TkQYgbldjoqjMg7HNKPWoi.jpg', '2023-06-18 09:02:26', '2023-06-18 09:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi_mitras`
--

CREATE TABLE `verifikasi_mitras` (
  `verifikasiMitraID` bigint(20) NOT NULL,
  `persetujuan_mitra` bit(1) NOT NULL,
  `adminID` bigint(20) NOT NULL,
  `mitraID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi_pembayarans`
--

CREATE TABLE `verifikasi_pembayarans` (
  `verifikasiPembayaranID` bigint(20) NOT NULL,
  `transaksID` int(11) NOT NULL,
  `persetujuan_pembayaran` bit(1) NOT NULL,
  `adminID` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verifikasi_pembayarans`
--

INSERT INTO `verifikasi_pembayarans` (`verifikasiPembayaranID`, `transaksID`, `persetujuan_pembayaran`, `adminID`, `created_at`, `updated_at`) VALUES
(2, 2, b'0', 1, '2023-06-18 08:44:58', '2023-06-18 08:44:58'),
(3, 3, b'0', 1, '2023-06-18 08:49:53', '2023-06-18 08:49:53'),
(4, 3, b'0', 1, '2023-06-18 08:51:17', '2023-06-18 08:51:17'),
(5, 3, b'0', 1, '2023-06-18 08:51:24', '2023-06-18 08:51:24'),
(6, 3, b'0', 1, '2023-06-18 08:51:36', '2023-06-18 08:51:36'),
(7, 4, b'0', 1, '2023-06-18 08:54:05', '2023-06-18 08:54:05'),
(8, 5, b'0', 1, '2023-06-18 09:02:26', '2023-06-18 09:02:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminID`),
  ADD KEY `FKadmins558038` (`akunID`);

--
-- Indexes for table `akuns`
--
ALTER TABLE `akuns`
  ADD PRIMARY KEY (`akunID`);

--
-- Indexes for table `detail kontrak`
--
ALTER TABLE `detail kontrak`
  ADD PRIMARY KEY (`detailKontrakID`),
  ADD KEY `FKDetail Kon728310` (`kontrakID`);

--
-- Indexes for table `kontraks`
--
ALTER TABLE `kontraks`
  ADD PRIMARY KEY (`kontrakID`),
  ADD KEY `FKKontrak861395` (`mitraID`),
  ADD KEY `FKKontrak58331` (`pelangganID`);

--
-- Indexes for table `listakuns`
--
ALTER TABLE `listakuns`
  ADD PRIMARY KEY (`listAkunID`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`mitraID`),
  ADD KEY `FKmitras942586` (`akunID`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`pelangganID`),
  ADD KEY `FKpelanggans805712` (`akunID`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`transaksiID`);

--
-- Indexes for table `verifikasi_mitras`
--
ALTER TABLE `verifikasi_mitras`
  ADD PRIMARY KEY (`verifikasiMitraID`),
  ADD KEY `FKVerifikasi103682` (`adminID`),
  ADD KEY `FKVerifikasi735088` (`mitraID`);

--
-- Indexes for table `verifikasi_pembayarans`
--
ALTER TABLE `verifikasi_pembayarans`
  ADD PRIMARY KEY (`verifikasiPembayaranID`),
  ADD KEY `FKVerifikasi438652` (`adminID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail kontrak`
--
ALTER TABLE `detail kontrak`
  MODIFY `detailKontrakID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listakuns`
--
ALTER TABLE `listakuns`
  MODIFY `listAkunID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `mitraID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `pelangganID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verifikasi_mitras`
--
ALTER TABLE `verifikasi_mitras`
  MODIFY `verifikasiMitraID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verifikasi_pembayarans`
--
ALTER TABLE `verifikasi_pembayarans`
  MODIFY `verifikasiPembayaranID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `FKadmins558038` FOREIGN KEY (`akunID`) REFERENCES `akuns` (`akunID`);

--
-- Constraints for table `akuns`
--
ALTER TABLE `akuns`
  ADD CONSTRAINT `FKakuns300339` FOREIGN KEY (`akunID`) REFERENCES `listakuns` (`listAkunID`);

--
-- Constraints for table `detail kontrak`
--
ALTER TABLE `detail kontrak`
  ADD CONSTRAINT `FKDetail Kon728310` FOREIGN KEY (`kontrakID`) REFERENCES `kontraks` (`kontrakID`);

--
-- Constraints for table `kontraks`
--
ALTER TABLE `kontraks`
  ADD CONSTRAINT `FKKontrak176108` FOREIGN KEY (`kontrakID`) REFERENCES `transaksis` (`transaksiID`),
  ADD CONSTRAINT `FKKontrak58331` FOREIGN KEY (`pelangganID`) REFERENCES `pelanggans` (`pelangganID`),
  ADD CONSTRAINT `FKKontrak861395` FOREIGN KEY (`mitraID`) REFERENCES `mitras` (`mitraID`);

--
-- Constraints for table `mitras`
--
ALTER TABLE `mitras`
  ADD CONSTRAINT `FKmitras942586` FOREIGN KEY (`akunID`) REFERENCES `akuns` (`akunID`);

--
-- Constraints for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD CONSTRAINT `FKpelanggans805712` FOREIGN KEY (`akunID`) REFERENCES `akuns` (`akunID`);

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `FKTransaksi275031` FOREIGN KEY (`transaksiID`) REFERENCES `verifikasi_pembayarans` (`verifikasiPembayaranID`);

--
-- Constraints for table `verifikasi_mitras`
--
ALTER TABLE `verifikasi_mitras`
  ADD CONSTRAINT `FKVerifikasi103682` FOREIGN KEY (`adminID`) REFERENCES `admins` (`adminID`),
  ADD CONSTRAINT `FKVerifikasi735088` FOREIGN KEY (`mitraID`) REFERENCES `mitras` (`mitraID`);

--
-- Constraints for table `verifikasi_pembayarans`
--
ALTER TABLE `verifikasi_pembayarans`
  ADD CONSTRAINT `FKVerifikasi438652` FOREIGN KEY (`adminID`) REFERENCES `admins` (`adminID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
