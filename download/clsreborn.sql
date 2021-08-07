-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 05:09 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clsreborn`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(100) NOT NULL,
  `namaActivity` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activitydetail`
--

CREATE TABLE `activitydetail` (
  `role` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `action` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `ipAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, '1191965', 'a0bb28c06d64bf126af4a521581b7ffb', '2018-01-11 09:13:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banksoal`
--

CREATE TABLE `banksoal` (
  `id` int(255) NOT NULL,
  `namaSoal` varchar(255) NOT NULL,
  `pembuat` varchar(255) NOT NULL,
  `tahunTerbit` date NOT NULL,
  `tipeSoal` varchar(255) NOT NULL,
  `jumlahSoal` int(255) NOT NULL,
  `isSensitive` varchar(255) NOT NULL,
  `persenPG` int(255) DEFAULT NULL,
  `persenIsian` int(255) DEFAULT NULL,
  `jawabanRequired` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banksoal`
--

INSERT INTO `banksoal` (`id`, `namaSoal`, `pembuat`, `tahunTerbit`, `tipeSoal`, `jumlahSoal`, `isSensitive`, `persenPG`, `persenIsian`, `jawabanRequired`, `created_at`, `updated_at`) VALUES
(1, 'Tebak perulangan', 'Rahmat', '2017-12-06', 'pg', 5, 'yes', NULL, NULL, NULL, '2017-12-17 15:52:50', NULL),
(2, 'Pengenalan Array', 'Rahmat', '2016-12-07', 'isian', 5, 'yes', NULL, NULL, NULL, '2017-12-17 15:52:50', NULL),
(3, 'Perhitungan Isian', 'Rahmat', '2016-12-04', 'isian', 5, 'yes', NULL, NULL, NULL, '2017-12-17 15:52:50', NULL),
(6, 'Soal Daspro', 'Rahmat', '2017-12-17', 'gabungan', 20, 'yes', NULL, NULL, NULL, '2017-12-17 09:06:03', '2018-01-25 07:14:58'),
(7, 'ASD2', 'Rahmat', '2018-01-15', 'pg', 5, 'yes', NULL, NULL, NULL, '2018-01-15 14:50:22', '2018-01-24 08:19:42'),
(8, 'ASD1', 'Rahmat', '2018-01-15', 'pg', 5, 'yes', NULL, NULL, NULL, '2018-01-15 15:31:22', '2018-01-24 08:19:43'),
(10, 'PKB', 'Rahmat', '2018-01-24', 'isiancheck', 8, 'no', NULL, NULL, NULL, '2018-01-24 09:16:37', '2018-01-25 07:01:53'),
(11, 'Soal Gabungan Check', 'Rahmat', '2018-01-26', 'gabungancheck', 5, 'no', NULL, NULL, NULL, '2018-01-25 18:43:00', '2018-01-25 18:43:00'),
(12, 'SOK-Kuis1', 'Billy Susanto P., S.T., M.T.', '2018-02-26', 'pg', 25, 'yes', NULL, NULL, NULL, '2018-02-26 17:03:50', '2018-02-26 17:03:50'),
(13, 'DP-IN010-Tes1', 'Dr. Ir. Mewati Ayub, M.T.', '2018-02-27', 'pg', 10, 'no', NULL, NULL, NULL, '2018-02-27 12:24:13', '2018-02-27 12:24:13'),
(14, 'Proposal', 'Dr. Hapnes Toba, M. Sc., IPM', '2018-03-26', 'isiancheck', 8, 'no', NULL, NULL, NULL, '2018-03-26 14:38:54', '2018-03-26 14:47:09'),
(15, 'ASD1-List-1', 'Dr. Ir. Mewati Ayub, M.T.', '2018-03-26', 'gabungan', 5, 'yes', NULL, NULL, NULL, '2018-03-26 14:41:31', '2018-03-26 14:52:01'),
(16, 'Tournament Isian check V1', 'Rahmat', '2018-04-15', 'isiancheck', 5, 'yes', NULL, NULL, 'yes', '2018-04-15 22:54:43', '2018-04-15 22:54:43'),
(17, 'Tournament Gabungan Check V1', 'Rahmat', '2018-04-15', 'gabungancheck', 6, 'yes', 40, 60, 'no', '2018-04-15 22:55:46', '2018-04-15 22:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dkbs`
--

CREATE TABLE `dkbs` (
  `id` int(255) NOT NULL,
  `kodeMK` varchar(255) NOT NULL,
  `namaMataKuliah` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sks` int(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jamAwal` time NOT NULL,
  `jamAkhir` time NOT NULL,
  `nik` varchar(255) NOT NULL,
  `dosen` varchar(255) NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dkbs`
--

INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1, 'IN010', 'DASAR PEMROGRAMAN', '1772032', 'SULTHAN TAQI RABBANI', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'IN010', 'DASAR PEMROGRAMAN', '1772033', 'JEREMIA ROTUA SIANTURI', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720149', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '2018-03-20 03:42:52'),
(3, 'IN010', 'DASAR PEMROGRAMAN', '1772035', 'ALFIENSIUS SALEPPANG', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720150', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'IN010', 'DASAR PEMROGRAMAN', '1772036', 'WIRA ANDIKA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720151', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'IN010', 'DASAR PEMROGRAMAN', '1772038', 'REINALDI GEMILANG SETIAWAN POETRA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720152', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'IN010', 'DASAR PEMROGRAMAN', '1772040', 'DANIEL ELIEZER', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720153', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'IN010', 'DASAR PEMROGRAMAN', '1772042', 'YOGA PRATAMA YULIANTO', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720154', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'IN010', 'DASAR PEMROGRAMAN', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720155', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '2018-03-20 03:42:27'),
(9, 'IN010', 'DASAR PEMROGRAMAN', '1772903', 'JOEY RIVALDO SIMANJUNTAK', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720156', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772006', 'FEBRINA ANASTASHA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772010', 'SILVIA TIFFANI', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772011', 'KEVIN NOVANTUS PRATAMA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772013', 'JOSHUA SUHERLAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772014', 'KELVIN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772016', 'NICOLAVICKH YOHANES', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772017', 'JOHNSON HARTANTO', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772020', 'ANASTASIA LEVINA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772022', 'YOSMART PANGIDOAN BARAKHIEL', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772025', 'SYAHRIO SANTOSO', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772028', 'MULYADI DHARMAWAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772037', 'SUGIONO', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772041', 'NATASYA DEY', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772045', 'EGGY HERLANDY', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772050', 'NANDI AGUNG PERMANA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772052', 'TIAZ RIZQY AMANDHA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'IN010', 'DASAR PEMROGRAMAN', '1372097', 'WILSON SEMBIRING', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'IN010', 'DASAR PEMROGRAMAN', '1672053', 'YEREMIA EGA SEPTIA NUGRAHA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720141', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '2018-03-20 03:44:24'),
(158, 'IN010', 'DASAR PEMROGRAMAN', '1672078', 'SAMUEL KRISTIANTO DEA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720142', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'IN010', 'DASAR PEMROGRAMAN', '1772015', 'MUHAMAD ILHAM RAMDHAN KUSUMA', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720144', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'IN010', 'DASAR PEMROGRAMAN', '1772019', 'ALDI MALDIANO TADE', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720145', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'IN010', 'DASAR PEMROGRAMAN', '1772021', 'THEO ALEKSANDER WILLIAM', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720146', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'IN010', 'DASAR PEMROGRAMAN', '1772029', 'ALINA VANDARINA ABDULKARIM', 'A', 5, 'Selasa', '09:30:00', '16:30:00', '720147', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1572911', 'DETRY HANDOYO IRAWAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772002', 'EDWARD KARNADI HUSIN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772004', 'JONATHAN BERNAD', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772005', 'CELINE LIESHIANA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772008', 'RONALD ADI SETIAWAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772023', 'STEFANUS HERMAWAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772026', 'STEVEN RUMANTO HARNANDY', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772029', 'ALINA VANDARINA ABDULKARIM', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772030', 'AVINASH', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772031', 'ZALDY IGNATIUS AUW', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772035', 'ALFIENSIUS SALEPPANG', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772039', 'KELVIN SUSANTO', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772003', 'IGNATIUS GIOVAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772043', 'ALEXIUS SURYA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772044', 'ROY PARSAORAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772046', 'ARIYANTO SANI', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772049', 'ARIEF KURNIAWAN', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772051', 'JONNY', 'A', 3, 'Rabu', '09:30:00', '15:00:00', '720140', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'IN020', 'ALGORITMA DAN STRUKTUR DATA 1', '1772021', 'THEO ALEKSANDER WILLIAM', 'C', 3, 'Kamis', '07:30:00', '15:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'IN021', 'PEMROGRAMAN WEB 1', '1372043', 'SEAN MARSHALL HERAWAN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'IN021', 'PEMROGRAMAN WEB 1', '1772002', 'EDWARD KARNADI HUSIN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'IN021', 'PEMROGRAMAN WEB 1', '1772003', 'IGNATIUS GIOVAN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'IN021', 'PEMROGRAMAN WEB 1', '1772005', 'CELINE LIESHIANA', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'IN021', 'PEMROGRAMAN WEB 1', '1772006', 'FEBRINA ANASTASHA', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'IN021', 'PEMROGRAMAN WEB 1', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'IN021', 'PEMROGRAMAN WEB 1', '1772010', 'SILVIA TIFFANI', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'IN021', 'PEMROGRAMAN WEB 1', '1772013', 'JOSHUA SUHERLAN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'IN021', 'PEMROGRAMAN WEB 1', '1772016', 'NICOLAVICKH YOHANES', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'IN021', 'PEMROGRAMAN WEB 1', '1772017', 'JOHNSON HARTANTO', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'IN021', 'PEMROGRAMAN WEB 1', '1772020', 'ANASTASIA LEVINA', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'IN021', 'PEMROGRAMAN WEB 1', '1772025', 'SYAHRIO SANTOSO', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'IN021', 'PEMROGRAMAN WEB 1', '1772028', 'MULYADI DHARMAWAN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'IN021', 'PEMROGRAMAN WEB 1', '1772029', 'ALINA VANDARINA ABDULKARIM', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'IN021', 'PEMROGRAMAN WEB 1', '1772033', 'JEREMIA ROTUA SIANTURI', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'IN021', 'PEMROGRAMAN WEB 1', '1772039', 'KELVIN SUSANTO', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'IN021', 'PEMROGRAMAN WEB 1', '1772040', 'DANIEL ELIEZER', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'IN021', 'PEMROGRAMAN WEB 1', '1772041', 'NATASYA DEY', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'IN021', 'PEMROGRAMAN WEB 1', '1772049', 'ARIEF KURNIAWAN', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'IN021', 'PEMROGRAMAN WEB 1', '1772052', 'TIAZ RIZQY AMANDHA', 'A', 4, 'Rabu', '07:00:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'IN021', 'PEMROGRAMAN WEB 1', '1672053', 'YEREMIA EGA SEPTIA NUGRAHA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'IN021', 'PEMROGRAMAN WEB 1', '1672063', 'YOEL OSCAR', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'IN021', 'PEMROGRAMAN WEB 1', '1672068', 'RIFALDI', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'IN021', 'PEMROGRAMAN WEB 1', '1672078', 'SAMUEL KRISTIANTO DEA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'IN021', 'PEMROGRAMAN WEB 1', '1772001', 'VINCENT GUNAERI', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'IN021', 'PEMROGRAMAN WEB 1', '1772011', 'KEVIN NOVANTUS PRATAMA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'IN021', 'PEMROGRAMAN WEB 1', '1772014', 'KELVIN', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'IN021', 'PEMROGRAMAN WEB 1', '1772015', 'MUHAMAD ILHAM RAMDHAN KUSUMA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'IN021', 'PEMROGRAMAN WEB 1', '1772019', 'ALDI MALDIANO TADE', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'IN021', 'PEMROGRAMAN WEB 1', '1772022', 'YOSMART PANGIDOAN BARAKHIEL', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'IN021', 'PEMROGRAMAN WEB 1', '1772026', 'STEVEN RUMANTO HARNANDY', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'IN021', 'PEMROGRAMAN WEB 1', '1772032', 'SULTHAN TAQI RABBANI', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'IN021', 'PEMROGRAMAN WEB 1', '1772035', 'ALFIENSIUS SALEPPANG', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'IN021', 'PEMROGRAMAN WEB 1', '1772036', 'WIRA ANDIKA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'IN021', 'PEMROGRAMAN WEB 1', '1772037', 'SUGIONO', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'IN021', 'PEMROGRAMAN WEB 1', '1772038', 'REINALDI GEMILANG SETIAWAN POETRA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'IN021', 'PEMROGRAMAN WEB 1', '1772042', 'YOGA PRATAMA YULIANTO', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'IN021', 'PEMROGRAMAN WEB 1', '1772050', 'NANDI AGUNG PERMANA', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'IN021', 'PEMROGRAMAN WEB 1', '1772051', 'JONNY', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'IN021', 'PEMROGRAMAN WEB 1', '1772903', 'JOEY RIVALDO SIMANJUNTAK', 'B', 4, 'Rabu', '07:00:00', '17:00:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'IN021', 'PEMROGRAMAN WEB 1', '1272105', 'SAHAT JAYA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'IN021', 'PEMROGRAMAN WEB 1', '1372031', 'OGGIE SEANTA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'IN021', 'PEMROGRAMAN WEB 1', '1372033', 'SANVIER', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'IN021', 'PEMROGRAMAN WEB 1', '1372039', 'MUHAMMAD FIRZA PAHLAWAN', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'IN021', 'PEMROGRAMAN WEB 1', '1372069', 'REPRI JULIANA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'IN021', 'PEMROGRAMAN WEB 1', '1372093', 'YAN SEN PAULUS', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'IN021', 'PEMROGRAMAN WEB 1', '1472015', 'VELLICYA AGNES SUSANTO', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'IN021', 'PEMROGRAMAN WEB 1', '1472023', 'DANIEL LIMARGA SUBIYANTO', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'IN021', 'PEMROGRAMAN WEB 1', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'IN021', 'PEMROGRAMAN WEB 1', '1772004', 'JONATHAN BERNAD', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'IN021', 'PEMROGRAMAN WEB 1', '1772008', 'RONALD ADI SETIAWAN', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'IN021', 'PEMROGRAMAN WEB 1', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'IN021', 'PEMROGRAMAN WEB 1', '1772023', 'STEFANUS HERMAWAN', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'IN021', 'PEMROGRAMAN WEB 1', '1772030', 'AVINASH', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'IN021', 'PEMROGRAMAN WEB 1', '1772031', 'ZALDY IGNATIUS AUW', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'IN021', 'PEMROGRAMAN WEB 1', '1772043', 'ALEXIUS SURYA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'IN021', 'PEMROGRAMAN WEB 1', '1772044', 'ROY PARSAORAN', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'IN021', 'PEMROGRAMAN WEB 1', '1772045', 'EGGY HERLANDY', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'IN021', 'PEMROGRAMAN WEB 1', '1772046', 'ARIYANTO SANI', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'IN021', 'PEMROGRAMAN WEB 1', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'C', 4, 'Kamis', '07:00:00', '17:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'IN022', 'JARINGAN KOMPUTER 1', '1472050', 'NALA SANJAY RAJ', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'IN022', 'JARINGAN KOMPUTER 1', '1672078', 'SAMUEL KRISTIANTO DEA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'IN022', 'JARINGAN KOMPUTER 1', '1772002', 'EDWARD KARNADI HUSIN', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'IN022', 'JARINGAN KOMPUTER 1', '1772004', 'JONATHAN BERNAD', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'IN022', 'JARINGAN KOMPUTER 1', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'IN022', 'JARINGAN KOMPUTER 1', '1772019', 'ALDI MALDIANO TADE', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'IN022', 'JARINGAN KOMPUTER 1', '1772023', 'STEFANUS HERMAWAN', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'IN022', 'JARINGAN KOMPUTER 1', '1772030', 'AVINASH', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'IN022', 'JARINGAN KOMPUTER 1', '1772031', 'ZALDY IGNATIUS AUW', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'IN022', 'JARINGAN KOMPUTER 1', '1772035', 'ALFIENSIUS SALEPPANG', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'IN022', 'JARINGAN KOMPUTER 1', '1772036', 'WIRA ANDIKA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'IN022', 'JARINGAN KOMPUTER 1', '1772043', 'ALEXIUS SURYA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'IN022', 'JARINGAN KOMPUTER 1', '1772044', 'ROY PARSAORAN', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'IN022', 'JARINGAN KOMPUTER 1', '1772046', 'ARIYANTO SANI', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'IN022', 'JARINGAN KOMPUTER 1', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'IN022', 'JARINGAN KOMPUTER 1', '1772049', 'ARIEF KURNIAWAN', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'IN022', 'JARINGAN KOMPUTER 1', '1772050', 'NANDI AGUNG PERMANA', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'IN022', 'JARINGAN KOMPUTER 1', '1772051', 'JONNY', 'A', 4, 'Jumat', '13:00:00', '17:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'IN022', 'JARINGAN KOMPUTER 1', '1372052', 'THEODORUS CAVIN SUKAMTO', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'IN022', 'JARINGAN KOMPUTER 1', '1772003', 'IGNATIUS GIOVAN', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'IN022', 'JARINGAN KOMPUTER 1', '1772005', 'CELINE LIESHIANA', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'IN022', 'JARINGAN KOMPUTER 1', '1772006', 'FEBRINA ANASTASHA', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'IN022', 'JARINGAN KOMPUTER 1', '1772008', 'RONALD ADI SETIAWAN', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'IN022', 'JARINGAN KOMPUTER 1', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'IN022', 'JARINGAN KOMPUTER 1', '1772010', 'SILVIA TIFFANI', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'IN022', 'JARINGAN KOMPUTER 1', '1772013', 'JOSHUA SUHERLAN', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'IN022', 'JARINGAN KOMPUTER 1', '1772016', 'NICOLAVICKH YOHANES', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'IN022', 'JARINGAN KOMPUTER 1', '1772017', 'JOHNSON HARTANTO', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'IN022', 'JARINGAN KOMPUTER 1', '1772020', 'ANASTASIA LEVINA', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'IN022', 'JARINGAN KOMPUTER 1', '1772026', 'STEVEN RUMANTO HARNANDY', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'IN022', 'JARINGAN KOMPUTER 1', '1772028', 'MULYADI DHARMAWAN', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'IN022', 'JARINGAN KOMPUTER 1', '1772029', 'ALINA VANDARINA ABDULKARIM', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'IN022', 'JARINGAN KOMPUTER 1', '1772039', 'KELVIN SUSANTO', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'IN022', 'JARINGAN KOMPUTER 1', '1772040', 'DANIEL ELIEZER', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'IN022', 'JARINGAN KOMPUTER 1', '1772041', 'NATASYA DEY', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'IN022', 'JARINGAN KOMPUTER 1', '1772052', 'TIAZ RIZQY AMANDHA', 'B', 4, 'Selasa', '09:30:00', '15:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1172087', 'MISAEL JORDI JERMIA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1272038', 'HENDY WIDYANTO WIRAWAN', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1272049', 'JOHANNES JACKDAW L L A', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1272104', 'MONICA AGLORIA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1372064', 'LEVY QIDAM SUSANTO', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472012', 'ALEX YOSUA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472015', 'VELLICYA AGNES SUSANTO', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472039', 'ARJUNA ANGGA S PURBA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472041', 'CHRISTOFEL J HITTIPEUW', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1672078', 'SAMUEL KRISTIANTO DEA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1672904', 'INSAN SYARIF', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772002', 'EDWARD KARNADI HUSIN', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772004', 'JONATHAN BERNAD', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772005', 'CELINE LIESHIANA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772015', 'MUHAMAD ILHAM RAMDHAN KUSUMA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772019', 'ALDI MALDIANO TADE', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772023', 'STEFANUS HERMAWAN', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772025', 'SYAHRIO SANTOSO', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772030', 'AVINASH', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772031', 'ZALDY IGNATIUS AUW', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772035', 'ALFIENSIUS SALEPPANG', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772038', 'REINALDI GEMILANG SETIAWAN POETRA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772039', 'KELVIN SUSANTO', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772040', 'DANIEL ELIEZER', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772043', 'ALEXIUS SURYA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772044', 'ROY PARSAORAN', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772045', 'EGGY HERLANDY', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772046', 'ARIYANTO SANI', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772049', 'ARIEF KURNIAWAN', 'A', 3, 'Senin', '12:30:00', '15:00:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1172093', 'MICHAEL SAPUTRA SUHENDI', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472028', 'JOHAN GAUTAMA IRAWAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1472071', 'HILMAN PEBRIAN PRATAMA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1572904', 'ARMAN PAMA\'TAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1672053', 'YEREMIA EGA SEPTIA NUGRAHA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772001', 'VINCENT GUNAERI', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772003', 'IGNATIUS GIOVAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772006', 'FEBRINA ANASTASHA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772008', 'RONALD ADI SETIAWAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772010', 'SILVIA TIFFANI', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772011', 'KEVIN NOVANTUS PRATAMA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772013', 'JOSHUA SUHERLAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772014', 'KELVIN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772016', 'NICOLAVICKH YOHANES', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772017', 'JOHNSON HARTANTO', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772020', 'ANASTASIA LEVINA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772021', 'THEO ALEKSANDER WILLIAM', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772022', 'YOSMART PANGIDOAN BARAKHIEL', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772026', 'STEVEN RUMANTO HARNANDY', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772028', 'MULYADI DHARMAWAN', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772029', 'ALINA VANDARINA ABDULKARIM', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772032', 'SULTHAN TAQI RABBANI', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772033', 'JEREMIA ROTUA SIANTURI', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772036', 'WIRA ANDIKA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772041', 'NATASYA DEY', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772042', 'YOGA PRATAMA YULIANTO', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772050', 'NANDI AGUNG PERMANA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772051', 'JONNY', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772052', 'TIAZ RIZQY AMANDHA', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'IN023', 'ALJABAR LINIER DAN MATRIKS', '1772901', 'ALBERT ABIMANYU', 'B', 3, 'Selasa', '07:30:00', '09:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'IN024', 'BAHASA INGGRIS 2', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'IN024', 'BAHASA INGGRIS 2', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'IN024', 'BAHASA INGGRIS 2', '1772003', 'IGNATIUS GIOVAN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'IN024', 'BAHASA INGGRIS 2', '1772005', 'CELINE LIESHIANA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'IN024', 'BAHASA INGGRIS 2', '1772006', 'FEBRINA ANASTASHA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'IN024', 'BAHASA INGGRIS 2', '1772008', 'RONALD ADI SETIAWAN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'IN024', 'BAHASA INGGRIS 2', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'IN024', 'BAHASA INGGRIS 2', '1772010', 'SILVIA TIFFANI', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'IN024', 'BAHASA INGGRIS 2', '1772013', 'JOSHUA SUHERLAN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'IN024', 'BAHASA INGGRIS 2', '1772016', 'NICOLAVICKH YOHANES', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'IN024', 'BAHASA INGGRIS 2', '1772017', 'JOHNSON HARTANTO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'IN024', 'BAHASA INGGRIS 2', '1772019', 'ALDI MALDIANO TADE', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 'IN024', 'BAHASA INGGRIS 2', '1772020', 'ANASTASIA LEVINA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 'IN024', 'BAHASA INGGRIS 2', '1772021', 'THEO ALEKSANDER WILLIAM', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 'IN024', 'BAHASA INGGRIS 2', '1772026', 'STEVEN RUMANTO HARNANDY', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(401, 'IN024', 'BAHASA INGGRIS 2', '1772028', 'MULYADI DHARMAWAN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'IN024', 'BAHASA INGGRIS 2', '1772029', 'ALINA VANDARINA ABDULKARIM', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'IN024', 'BAHASA INGGRIS 2', '1772032', 'SULTHAN TAQI RABBANI', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'IN024', 'BAHASA INGGRIS 2', '1772036', 'WIRA ANDIKA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'IN024', 'BAHASA INGGRIS 2', '1772039', 'KELVIN SUSANTO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'IN024', 'BAHASA INGGRIS 2', '1772040', 'DANIEL ELIEZER', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'IN024', 'BAHASA INGGRIS 2', '1772041', 'NATASYA DEY', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 'IN024', 'BAHASA INGGRIS 2', '1772042', 'YOGA PRATAMA YULIANTO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 'IN024', 'BAHASA INGGRIS 2', '1772052', 'TIAZ RIZQY AMANDHA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 'IN024', 'BAHASA INGGRIS 2', '1672053', 'YEREMIA EGA SEPTIA NUGRAHA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 'IN024', 'BAHASA INGGRIS 2', '1672904', 'INSAN SYARIF', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 'IN024', 'BAHASA INGGRIS 2', '1772001', 'VINCENT GUNAERI', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 'IN024', 'BAHASA INGGRIS 2', '1772002', 'EDWARD KARNADI HUSIN', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 'IN024', 'BAHASA INGGRIS 2', '1772004', 'JONATHAN BERNAD', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 'IN024', 'BAHASA INGGRIS 2', '1772011', 'KEVIN NOVANTUS PRATAMA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'IN024', 'BAHASA INGGRIS 2', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 'IN024', 'BAHASA INGGRIS 2', '1772014', 'KELVIN', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 'IN024', 'BAHASA INGGRIS 2', '1772015', 'MUHAMAD ILHAM RAMDHAN KUSUMA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 'IN024', 'BAHASA INGGRIS 2', '1772022', 'YOSMART PANGIDOAN BARAKHIEL', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 'IN024', 'BAHASA INGGRIS 2', '1772023', 'STEFANUS HERMAWAN', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 'IN024', 'BAHASA INGGRIS 2', '1772025', 'SYAHRIO SANTOSO', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 'IN024', 'BAHASA INGGRIS 2', '1772030', 'AVINASH', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'IN024', 'BAHASA INGGRIS 2', '1772031', 'ZALDY IGNATIUS AUW', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 'IN024', 'BAHASA INGGRIS 2', '1772033', 'JEREMIA ROTUA SIANTURI', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 'IN024', 'BAHASA INGGRIS 2', '1772035', 'ALFIENSIUS SALEPPANG', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 'IN024', 'BAHASA INGGRIS 2', '1772037', 'SUGIONO', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 'IN024', 'BAHASA INGGRIS 2', '1772038', 'REINALDI GEMILANG SETIAWAN POETRA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 'IN024', 'BAHASA INGGRIS 2', '1772043', 'ALEXIUS SURYA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 'IN024', 'BAHASA INGGRIS 2', '1772044', 'ROY PARSAORAN', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'IN024', 'BAHASA INGGRIS 2', '1772045', 'EGGY HERLANDY', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 'IN024', 'BAHASA INGGRIS 2', '1772046', 'ARIYANTO SANI', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 'IN024', 'BAHASA INGGRIS 2', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 'IN024', 'BAHASA INGGRIS 2', '1772049', 'ARIEF KURNIAWAN', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 'IN024', 'BAHASA INGGRIS 2', '1772050', 'NANDI AGUNG PERMANA', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 'IN024', 'BAHASA INGGRIS 2', '1772051', 'JONNY', 'B', 2, 'Selasa', '09:30:00', '11:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1272104', 'MONICA AGLORIA', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1372031', 'OGGIE SEANTA', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1372052', 'THEODORUS CAVIN SUKAMTO', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1572911', 'DETRY HANDOYO IRAWAN', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672012', 'JONATHAN PRATAMA SUTJIADY', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672020', 'HANSON HENDRAWAN', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672025', 'ARTHUR DAMARWULAN', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672036', 'WILLIAM', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672049', 'PRAKHAS PRAKOSO DIEN', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672052', 'NAOMI HELLYNA MAKALEW', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 'IN030', 'ALGORITMA DAN STRUKTUR DATA 2', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'A', 3, 'Selasa', '07:30:00', '17:00:00', '720303', 'Wenny Franciska Senjaya, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1472066', 'JOHNNY BASKORO', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672006', 'CHRISTIAN CHASTRO', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672019', 'PRATOMO ASTA NUGRAHA', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672022', 'CHRISTIAN', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672028', 'ALVIN KUSUMA PUTRA', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672037', 'RIKY ANDREAS SAPUTRA', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672050', 'TOMMY', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672066', 'YAFET RAPHAEL', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 'IN040', 'PEMROGRAMAN BERORIENTASI OBJEK 1 A', '1672067', 'JELBIN JONI', 'A', 4, 'Rabu', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1172140', 'ROKKI GINTING', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1572034', 'AGASSI ANTONIUS', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1572037', 'MARCEL CAESARIAN', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1572050', 'PUTERA PRATAMA ROKHANIAWAN WIDARTONO', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672010', 'NEVIN SYAHPUTRA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672015', 'JEREMIA VARIAN RUSLI', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672016', 'HANHAN LIPIAN DINATA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672026', 'CEVIN ANANTHA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672033', 'IVAN TRY JAYA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672041', 'SAMUEL GODJALI', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672042', 'ADRYIL ACHMAD FAUZI', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672055', 'WILLY BUDIANTO', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672057', 'LUTHFI DWI NUGRAHA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672061', 'LARAS APRILIANI', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672065', 'JESIKA ANASTASIA SAUNUNU', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672073', 'IVANDER YOSHUA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672079', 'AMANDA PRIYA NAVRATILOVA', 'A', 4, 'Kamis', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672005', 'RONALDO JOSHUA', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672034', 'ALFIN LIUNARDI SENJAYA', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672038', 'ERICO APRIANUS', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672039', 'ANDRIANUS ALVIEN', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672046', 'CHRISTOPHER', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672051', 'LUKAS HANSEL GANDA', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672062', 'JOSHUA EKA PUTRA JUWARNO', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672064', 'KEVIN CHRISTY PARINUSSA', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672071', 'VINCENT KHO', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672072', 'REINHART NEHEMIA SUY', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672074', 'LOUREN FERMANDO', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672075', 'MICHAEL CHRISTIAN', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 'IN041', 'PEMROGRAMAN BERORIENTASI OBJEK 1 B', '1672905', 'WILLY NUARI', 'B', 4, 'Kamis', '12:30:00', '17:00:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 'IN042', 'BASIS DATA 2', '1472068', 'ANANG ADENAN SIH', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 'IN042', 'BASIS DATA 2', '1672005', 'RONALDO JOSHUA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 'IN042', 'BASIS DATA 2', '1672006', 'CHRISTIAN CHASTRO', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 'IN042', 'BASIS DATA 2', '1672009', 'EDWIN SATRIA INDRAWAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 'IN042', 'BASIS DATA 2', '1672011', 'YOKO WILYAM SIGAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 'IN042', 'BASIS DATA 2', '1672018', 'ELDHA RAMADHANTY', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 'IN042', 'BASIS DATA 2', '1672019', 'PRATOMO ASTA NUGRAHA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 'IN042', 'BASIS DATA 2', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 'IN042', 'BASIS DATA 2', '1672022', 'CHRISTIAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 'IN042', 'BASIS DATA 2', '1672028', 'ALVIN KUSUMA PUTRA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'IN042', 'BASIS DATA 2', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 'IN042', 'BASIS DATA 2', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 'IN042', 'BASIS DATA 2', '1672037', 'RIKY ANDREAS SAPUTRA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 'IN042', 'BASIS DATA 2', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 'IN042', 'BASIS DATA 2', '1672043', 'ALVIN ATMACENDANA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 'IN042', 'BASIS DATA 2', '1672046', 'CHRISTOPHER', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'IN042', 'BASIS DATA 2', '1672051', 'LUKAS HANSEL GANDA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 'IN042', 'BASIS DATA 2', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 'IN042', 'BASIS DATA 2', '1672063', 'YOEL OSCAR', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 'IN042', 'BASIS DATA 2', '1672066', 'YAFET RAPHAEL', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 'IN042', 'BASIS DATA 2', '1672068', 'RIFALDI', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 'IN042', 'BASIS DATA 2', '1672071', 'VINCENT KHO', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 'IN042', 'BASIS DATA 2', '1672074', 'LOUREN FERMANDO', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 'IN042', 'BASIS DATA 2', '1672075', 'MICHAEL CHRISTIAN', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 'IN042', 'BASIS DATA 2', '1772902', 'DIKRI SUKMA ADIWINATA', 'A', 4, 'Senin', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 'IN042', 'BASIS DATA 2', '1372041', 'CHRISTYAN CHANDRA WIJAYA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 'IN042', 'BASIS DATA 2', '1572048', 'EFRAIM', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 'IN042', 'BASIS DATA 2', '1672001', 'VERNANDA DWI AYUNINGRUM', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 'IN042', 'BASIS DATA 2', '1672014', 'LYDIA NOVIANI KUSUMO', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 'IN042', 'BASIS DATA 2', '1672015', 'JEREMIA VARIAN RUSLI', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 'IN042', 'BASIS DATA 2', '1672024', 'MADELENE HONORA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 'IN042', 'BASIS DATA 2', '1672026', 'CEVIN ANANTHA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 'IN042', 'BASIS DATA 2', '1672034', 'ALFIN LIUNARDI SENJAYA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 'IN042', 'BASIS DATA 2', '1672035', 'NURUL AFIANY', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 'IN042', 'BASIS DATA 2', '1672038', 'ERICO APRIANUS', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 'IN042', 'BASIS DATA 2', '1672039', 'ANDRIANUS ALVIEN', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'IN042', 'BASIS DATA 2', '1672041', 'SAMUEL GODJALI', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'IN042', 'BASIS DATA 2', '1672042', 'ADRYIL ACHMAD FAUZI', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 'IN042', 'BASIS DATA 2', '1672050', 'TOMMY', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 'IN042', 'BASIS DATA 2', '1672054', 'ADITYA WIRYA YUTAMA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'IN042', 'BASIS DATA 2', '1672057', 'LUTHFI DWI NUGRAHA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 'IN042', 'BASIS DATA 2', '1672061', 'LARAS APRILIANI', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'IN042', 'BASIS DATA 2', '1672062', 'JOSHUA EKA PUTRA JUWARNO', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'IN042', 'BASIS DATA 2', '1672064', 'KEVIN CHRISTY PARINUSSA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'IN042', 'BASIS DATA 2', '1672065', 'JESIKA ANASTASIA SAUNUNU', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 'IN042', 'BASIS DATA 2', '1672067', 'JELBIN JONI', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 'IN042', 'BASIS DATA 2', '1672079', 'AMANDA PRIYA NAVRATILOVA', 'B', 4, 'Selasa', '15:00:00', '17:30:00', '720004', 'Teddy Marcus Zakaria, Ir., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 'IN042', 'BASIS DATA 2', '1272104', 'MONICA AGLORIA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'IN042', 'BASIS DATA 2', '1372093', 'YAN SEN PAULUS', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 'IN042', 'BASIS DATA 2', '1472023', 'DANIEL LIMARGA SUBIYANTO', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'IN042', 'BASIS DATA 2', '1472039', 'ARJUNA ANGGA S PURBA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'IN042', 'BASIS DATA 2', '1472041', 'CHRISTOFEL J HITTIPEUW', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'IN042', 'BASIS DATA 2', '1472069', 'BINTANG RAHADIAN PRATAMA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'IN042', 'BASIS DATA 2', '1472079', 'JUNIATER SIMBOLON', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'IN042', 'BASIS DATA 2', '1572037', 'MARCEL CAESARIAN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'IN042', 'BASIS DATA 2', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'IN042', 'BASIS DATA 2', '1572050', 'PUTERA PRATAMA ROKHANIAWAN WIDARTONO', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 'IN042', 'BASIS DATA 2', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 'IN042', 'BASIS DATA 2', '1672002', 'JIMMY PURNAWAN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 'IN042', 'BASIS DATA 2', '1672010', 'NEVIN SYAHPUTRA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 'IN042', 'BASIS DATA 2', '1672012', 'JONATHAN PRATAMA SUTJIADY', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 'IN042', 'BASIS DATA 2', '1672013', 'BRYAN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 'IN042', 'BASIS DATA 2', '1672016', 'HANHAN LIPIAN DINATA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'IN042', 'BASIS DATA 2', '1672017', 'RICARDO FRANCLINTON', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 'IN042', 'BASIS DATA 2', '1672020', 'HANSON HENDRAWAN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'IN042', 'BASIS DATA 2', '1672023', 'JOSES VITO CHANDRA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'IN042', 'BASIS DATA 2', '1672025', 'ARTHUR DAMARWULAN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'IN042', 'BASIS DATA 2', '1672033', 'IVAN TRY JAYA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'IN042', 'BASIS DATA 2', '1672036', 'WILLIAM', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'IN042', 'BASIS DATA 2', '1672049', 'PRAKHAS PRAKOSO DIEN', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 'IN042', 'BASIS DATA 2', '1672052', 'NAOMI HELLYNA MAKALEW', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 'IN042', 'BASIS DATA 2', '1672055', 'WILLY BUDIANTO', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 'IN042', 'BASIS DATA 2', '1672072', 'REINHART NEHEMIA SUY', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 'IN042', 'BASIS DATA 2', '1672073', 'IVANDER YOSHUA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 'IN042', 'BASIS DATA 2', '1672076', 'DENNIS AGUSTINUS', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 'IN042', 'BASIS DATA 2', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 'IN042', 'BASIS DATA 2', '1772901', 'ALBERT ABIMANYU', 'C', 4, 'Rabu', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372031', 'OGGIE SEANTA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372097', 'WILSON SEMBIRING', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1572048', 'EFRAIM', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672006', 'CHRISTIAN CHASTRO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672009', 'EDWIN SATRIA INDRAWAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672013', 'BRYAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672014', 'LYDIA NOVIANI KUSUMO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672022', 'CHRISTIAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672024', 'MADELENE HONORA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672028', 'ALVIN KUSUMA PUTRA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672037', 'RIKY ANDREAS SAPUTRA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672043', 'ALVIN ATMACENDANA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672049', 'PRAKHAS PRAKOSO DIEN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672051', 'LUKAS HANSEL GANDA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672052', 'NAOMI HELLYNA MAKALEW', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672054', 'ADITYA WIRYA YUTAMA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672058', 'WILLIAM', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672066', 'YAFET RAPHAEL', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672067', 'JELBIN JONI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672075', 'MICHAEL CHRISTIAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672076', 'DENNIS AGUSTINUS', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1272104', 'MONICA AGLORIA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372056', 'BERNADETHA YULIANA ASARIBAB', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372064', 'LEVY QIDAM SUSANTO', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472037', 'REYNARD M. TARUK', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472039', 'ARJUNA ANGGA S PURBA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472041', 'CHRISTOFEL J HITTIPEUW', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472068', 'ANANG ADENAN SIH', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672001', 'VERNANDA DWI AYUNINGRUM', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672011', 'YOKO WILYAM SIGAN', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672018', 'ELDHA RAMADHANTY', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672019', 'PRATOMO ASTA NUGRAHA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672020', 'HANSON HENDRAWAN', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672023', 'JOSES VITO CHANDRA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672025', 'ARTHUR DAMARWULAN', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672034', 'ALFIN LIUNARDI SENJAYA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672035', 'NURUL AFIANY', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672036', 'WILLIAM', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672039', 'ANDRIANUS ALVIEN', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672046', 'CHRISTOPHER', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672050', 'TOMMY', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672064', 'KEVIN CHRISTY PARINUSSA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672071', 'VINCENT KHO', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672073', 'IVANDER YOSHUA', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672074', 'LOUREN FERMANDO', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1772901', 'ALBERT ABIMANYU', 'B', 3, 'Kamis', '09:30:00', '12:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1272105', 'SAHAT JAYA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1372093', 'YAN SEN PAULUS', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472023', 'DANIEL LIMARGA SUBIYANTO', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472051', 'RENDY HERMANTO', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1472065', 'LUCKY METHA PURNOMO', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1572037', 'MARCEL CAESARIAN', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672002', 'JIMMY PURNAWAN', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672005', 'RONALDO JOSHUA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672010', 'NEVIN SYAHPUTRA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(633, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672012', 'JONATHAN PRATAMA SUTJIADY', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672015', 'JEREMIA VARIAN RUSLI', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672016', 'HANHAN LIPIAN DINATA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672017', 'RICARDO FRANCLINTON', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672026', 'CEVIN ANANTHA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672033', 'IVAN TRY JAYA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672038', 'ERICO APRIANUS', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672041', 'SAMUEL GODJALI', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672042', 'ADRYIL ACHMAD FAUZI', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672055', 'WILLY BUDIANTO', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672057', 'LUTHFI DWI NUGRAHA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672061', 'LARAS APRILIANI', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672062', 'JOSHUA EKA PUTRA JUWARNO', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672063', 'YOEL OSCAR', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672065', 'JESIKA ANASTASIA SAUNUNU', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672068', 'RIFALDI', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672072', 'REINHART NEHEMIA SUY', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 'IN043', 'REKAYASA PERANGKAT LUNAK 2', '1672079', 'AMANDA PRIYA NAVRATILOVA', 'C', 3, 'Senin', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 'IN044', 'JARINGAN KOMPUTER 2', '1472015', 'VELLICYA AGNES SUSANTO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 'IN044', 'JARINGAN KOMPUTER 2', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 'IN044', 'JARINGAN KOMPUTER 2', '1572037', 'MARCEL CAESARIAN', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 'IN044', 'JARINGAN KOMPUTER 2', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'IN044', 'JARINGAN KOMPUTER 2', '1572048', 'EFRAIM', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 'IN044', 'JARINGAN KOMPUTER 2', '1572050', 'PUTERA PRATAMA ROKHANIAWAN WIDARTONO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 'IN044', 'JARINGAN KOMPUTER 2', '1672001', 'VERNANDA DWI AYUNINGRUM', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 'IN044', 'JARINGAN KOMPUTER 2', '1672010', 'NEVIN SYAHPUTRA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 'IN044', 'JARINGAN KOMPUTER 2', '1672011', 'YOKO WILYAM SIGAN', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 'IN044', 'JARINGAN KOMPUTER 2', '1672012', 'JONATHAN PRATAMA SUTJIADY', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 'IN044', 'JARINGAN KOMPUTER 2', '1672014', 'LYDIA NOVIANI KUSUMO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 'IN044', 'JARINGAN KOMPUTER 2', '1672015', 'JEREMIA VARIAN RUSLI', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 'IN044', 'JARINGAN KOMPUTER 2', '1672016', 'HANHAN LIPIAN DINATA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 'IN044', 'JARINGAN KOMPUTER 2', '1672026', 'CEVIN ANANTHA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 'IN044', 'JARINGAN KOMPUTER 2', '1672033', 'IVAN TRY JAYA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 'IN044', 'JARINGAN KOMPUTER 2', '1672035', 'NURUL AFIANY', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 'IN044', 'JARINGAN KOMPUTER 2', '1672039', 'ANDRIANUS ALVIEN', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 'IN044', 'JARINGAN KOMPUTER 2', '1672041', 'SAMUEL GODJALI', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 'IN044', 'JARINGAN KOMPUTER 2', '1672042', 'ADRYIL ACHMAD FAUZI', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 'IN044', 'JARINGAN KOMPUTER 2', '1672049', 'PRAKHAS PRAKOSO DIEN', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 'IN044', 'JARINGAN KOMPUTER 2', '1672050', 'TOMMY', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 'IN044', 'JARINGAN KOMPUTER 2', '1672055', 'WILLY BUDIANTO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 'IN044', 'JARINGAN KOMPUTER 2', '1672061', 'LARAS APRILIANI', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 'IN044', 'JARINGAN KOMPUTER 2', '1672065', 'JESIKA ANASTASIA SAUNUNU', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 'IN044', 'JARINGAN KOMPUTER 2', '1672071', 'VINCENT KHO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 'IN044', 'JARINGAN KOMPUTER 2', '1672072', 'REINHART NEHEMIA SUY', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 'IN044', 'JARINGAN KOMPUTER 2', '1672074', 'LOUREN FERMANDO', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 'IN044', 'JARINGAN KOMPUTER 2', '1672079', 'AMANDA PRIYA NAVRATILOVA', 'A', 3, 'Senin', '09:30:00', '12:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 'IN044', 'JARINGAN KOMPUTER 2', '1172140', 'ROKKI GINTING', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 'IN044', 'JARINGAN KOMPUTER 2', '1272104', 'MONICA AGLORIA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 'IN044', 'JARINGAN KOMPUTER 2', '1372041', 'CHRISTYAN CHANDRA WIJAYA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 'IN044', 'JARINGAN KOMPUTER 2', '1472051', 'RENDY HERMANTO', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 'IN044', 'JARINGAN KOMPUTER 2', '1472069', 'BINTANG RAHADIAN PRATAMA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 'IN044', 'JARINGAN KOMPUTER 2', '1672005', 'RONALDO JOSHUA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 'IN044', 'JARINGAN KOMPUTER 2', '1672009', 'EDWIN SATRIA INDRAWAN', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 'IN044', 'JARINGAN KOMPUTER 2', '1672018', 'ELDHA RAMADHANTY', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 'IN044', 'JARINGAN KOMPUTER 2', '1672019', 'PRATOMO ASTA NUGRAHA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 'IN044', 'JARINGAN KOMPUTER 2', '1672020', 'HANSON HENDRAWAN', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 'IN044', 'JARINGAN KOMPUTER 2', '1672023', 'JOSES VITO CHANDRA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 'IN044', 'JARINGAN KOMPUTER 2', '1672025', 'ARTHUR DAMARWULAN', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 'IN044', 'JARINGAN KOMPUTER 2', '1672034', 'ALFIN LIUNARDI SENJAYA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 'IN044', 'JARINGAN KOMPUTER 2', '1672036', 'WILLIAM', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 'IN044', 'JARINGAN KOMPUTER 2', '1672043', 'ALVIN ATMACENDANA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 'IN044', 'JARINGAN KOMPUTER 2', '1672046', 'CHRISTOPHER', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 'IN044', 'JARINGAN KOMPUTER 2', '1672054', 'ADITYA WIRYA YUTAMA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 'IN044', 'JARINGAN KOMPUTER 2', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 'IN044', 'JARINGAN KOMPUTER 2', '1672057', 'LUTHFI DWI NUGRAHA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 'IN044', 'JARINGAN KOMPUTER 2', '1672063', 'YOEL OSCAR', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 'IN044', 'JARINGAN KOMPUTER 2', '1672064', 'KEVIN CHRISTY PARINUSSA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 'IN044', 'JARINGAN KOMPUTER 2', '1672067', 'JELBIN JONI', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 'IN044', 'JARINGAN KOMPUTER 2', '1672068', 'RIFALDI', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 'IN044', 'JARINGAN KOMPUTER 2', '1672073', 'IVANDER YOSHUA', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 'IN044', 'JARINGAN KOMPUTER 2', '1672075', 'MICHAEL CHRISTIAN', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 'IN044', 'JARINGAN KOMPUTER 2', '1672076', 'DENNIS AGUSTINUS', 'B', 3, 'Selasa', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 'IN044', 'JARINGAN KOMPUTER 2', '1372097', 'WILSON SEMBIRING', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 'IN044', 'JARINGAN KOMPUTER 2', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 'IN044', 'JARINGAN KOMPUTER 2', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 'IN044', 'JARINGAN KOMPUTER 2', '1572036', 'NERISSA HANSA WIJAYA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 'IN044', 'JARINGAN KOMPUTER 2', '1672002', 'JIMMY PURNAWAN', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 'IN044', 'JARINGAN KOMPUTER 2', '1672006', 'CHRISTIAN CHASTRO', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 'IN044', 'JARINGAN KOMPUTER 2', '1672013', 'BRYAN', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 'IN044', 'JARINGAN KOMPUTER 2', '1672017', 'RICARDO FRANCLINTON', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 'IN044', 'JARINGAN KOMPUTER 2', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 'IN044', 'JARINGAN KOMPUTER 2', '1672022', 'CHRISTIAN', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 'IN044', 'JARINGAN KOMPUTER 2', '1672024', 'MADELENE HONORA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 'IN044', 'JARINGAN KOMPUTER 2', '1672028', 'ALVIN KUSUMA PUTRA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 'IN044', 'JARINGAN KOMPUTER 2', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 'IN044', 'JARINGAN KOMPUTER 2', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 'IN044', 'JARINGAN KOMPUTER 2', '1672037', 'RIKY ANDREAS SAPUTRA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 'IN044', 'JARINGAN KOMPUTER 2', '1672038', 'ERICO APRIANUS', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 'IN044', 'JARINGAN KOMPUTER 2', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 'IN044', 'JARINGAN KOMPUTER 2', '1672051', 'LUKAS HANSEL GANDA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 'IN044', 'JARINGAN KOMPUTER 2', '1672052', 'NAOMI HELLYNA MAKALEW', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 'IN044', 'JARINGAN KOMPUTER 2', '1672058', 'WILLIAM', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 'IN044', 'JARINGAN KOMPUTER 2', '1672062', 'JOSHUA EKA PUTRA JUWARNO', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 'IN044', 'JARINGAN KOMPUTER 2', '1672066', 'YAFET RAPHAEL', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 'IN044', 'JARINGAN KOMPUTER 2', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 'IN044', 'JARINGAN KOMPUTER 2', '1672904', 'INSAN SYARIF', 'C', 3, 'Ka mis', '09:30:00', '12:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672002', 'JIMMY PURNAWAN', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672006', 'CHRISTIAN CHASTRO', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672009', 'EDWIN SATRIA INDRAWAN', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672013', 'BRYAN', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672017', 'RICARDO FRANCLINTON', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672022', 'CHRISTIAN', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672028', 'ALVIN KUSUMA PUTRA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672037', 'RIKY ANDREAS SAPUTRA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672041', 'SAMUEL GODJALI', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672043', 'ALVIN ATMACENDANA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672051', 'LUKAS HANSEL GANDA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672052', 'NAOMI HELLYNA MAKALEW', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672054', 'ADITYA WIRYA YUTAMA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672057', 'LUTHFI DWI NUGRAHA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672058', 'WILLIAM', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672066', 'YAFET RAPHAEL', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672067', 'JELBIN JONI', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672076', 'DENNIS AGUSTINUS', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 'IN045', 'SISTEM OPERASI KOMPUTER', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'A', 3, 'Kamis', '07:00:00', '09:30:00', '720302', 'Maresha Caroline Wijanto, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 'IN046', 'STATISTIKA', '1172087', 'MISAEL JORDI JERMIA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 'IN046', 'STATISTIKA', '1272038', 'HENDY WIDYANTO WIRAWAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 'IN046', 'STATISTIKA', '1372052', 'THEODORUS CAVIN SUKAMTO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 'IN046', 'STATISTIKA', '1372076', 'MOHAMAD KAWIRIAN WIRA SARJANA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 'IN046', 'STATISTIKA', '1472028', 'JOHAN GAUTAMA IRAWAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 'IN046', 'STATISTIKA', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 'IN046', 'STATISTIKA', '1472066', 'JOHNNY BASKORO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 'IN046', 'STATISTIKA', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 'IN046', 'STATISTIKA', '1672001', 'VERNANDA DWI AYUNINGRUM', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 'IN046', 'STATISTIKA', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 'IN046', 'STATISTIKA', '1672022', 'CHRISTIAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 'IN046', 'STATISTIKA', '1672029', 'HENRY TIMOTHY HALIM NURADI', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 'IN046', 'STATISTIKA', '1672035', 'NURUL AFIANY', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 'IN046', 'STATISTIKA', '1672037', 'RIKY ANDREAS SAPUTRA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 'IN046', 'STATISTIKA', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 'IN046', 'STATISTIKA', '1672050', 'TOMMY', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 'IN046', 'STATISTIKA', '1672053', 'YEREMIA EGA SEPTIA NUGRAHA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 'IN046', 'STATISTIKA', '1672064', 'KEVIN CHRISTY PARINUSSA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 'IN046', 'STATISTIKA', '1672067', 'JELBIN JONI', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 'IN046', 'STATISTIKA', '1672071', 'VINCENT KHO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 'IN046', 'STATISTIKA', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 'IN046', 'STATISTIKA', '1372069', 'REPRI JULIANA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 'IN046', 'STATISTIKA', '1472015', 'VELLICYA AGNES SUSANTO', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 'IN046', 'STATISTIKA', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 'IN046', 'STATISTIKA', '1472044', 'M RIZKI PUTRA UTAMA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 'IN046', 'STATISTIKA', '1472052', 'REYNALDO EKO ARWIANTO', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 'IN046', 'STATISTIKA', '1472054', 'MATHIAS KARUNIA PUTRA TASKA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'IN046', 'STATISTIKA', '1472056', 'RAHMAN', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 'IN046', 'STATISTIKA', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'IN046', 'STATISTIKA', '1472068', 'ANANG ADENAN SIH', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 'IN046', 'STATISTIKA', '1472071', 'HILMAN PEBRIAN PRATAMA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 'IN046', 'STATISTIKA', '1472072', 'FAJAR WAHYUDI PUTERA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 'IN046', 'STATISTIKA', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 'IN046', 'STATISTIKA', '1672018', 'ELDHA RAMADHANTY', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 'IN046', 'STATISTIKA', '1672019', 'PRATOMO ASTA NUGRAHA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 'IN046', 'STATISTIKA', '1672023', 'JOSES VITO CHANDRA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 'IN046', 'STATISTIKA', '1672033', 'IVAN TRY JAYA', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 'IN046', 'STATISTIKA', '1672046', 'CHRISTOPHER', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 'IN046', 'STATISTIKA', '1672072', 'REINHART NEHEMIA SUY', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 'IN046', 'STATISTIKA', '1672074', 'LOUREN FERMANDO', 'B', 3, 'Selasa', '15:00:00', '17:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 'IN046', 'STATISTIKA', '1672904', 'INSAN SYARIF', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 'IN046', 'STATISTIKA', '1172093', 'MICHAEL SAPUTRA SUHENDI', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 'IN046', 'STATISTIKA', '1272105', 'SAHAT JAYA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 'IN046', 'STATISTIKA', '1372041', 'CHRISTYAN CHANDRA WIJAYA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 'IN046', 'STATISTIKA', '1372053', 'BAYU KRISTIADHI MULIASETIA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 'IN046', 'STATISTIKA', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 'IN046', 'STATISTIKA', '1472051', 'RENDY HERMANTO', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 'IN046', 'STATISTIKA', '1572036', 'NERISSA HANSA WIJAYA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 'IN046', 'STATISTIKA', '1572039', 'NANDA WAHYUDIANA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 'IN046', 'STATISTIKA', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 'IN046', 'STATISTIKA', '1572048', 'EFRAIM', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 'IN046', 'STATISTIKA', '1572911', 'DETRY HANDOYO IRAWAN', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 'IN046', 'STATISTIKA', '1672020', 'HANSON HENDRAWAN', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 'IN046', 'STATISTIKA', '1672036', 'WILLIAM', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 'IN046', 'STATISTIKA', '1672052', 'NAOMI HELLYNA MAKALEW', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 'IN046', 'STATISTIKA', '1672054', 'ADITYA WIRYA YUTAMA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 'IN046', 'STATISTIKA', '1672073', 'IVANDER YOSHUA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 'IN046', 'STATISTIKA', '1672080', 'SHAFIRA AYUDIANI INDIARSA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 'IN046', 'STATISTIKA', '1772902', 'DIKRI SUKMA ADIWINATA', 'C', 3, 'Rabu', '07:00:00', '09:30:00', '720146L', 'Dra. Christine Suryadi, MT.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672002', 'JIMMY PURNAWAN', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672009', 'EDWIN SATRIA INDRAWAN', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672011', 'YOKO WILYAM SIGAN', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672013', 'BRYAN', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672017', 'RICARDO FRANCLINTON', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672043', 'ALVIN ATMACENDANA', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672058', 'WILLIAM', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1672076', 'DENNIS AGUSTINUS', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 'IN050', 'PEMROGRAMAN BERORIENTASI OBJEK 2 A', '1772902', 'DIKRI SUKMA ADIWINATA', 'A', 4, 'Selasa', '12:30:00', '17:00:00', '710097', 'Oscar Wongso, S.Kom., M.T.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1372092', 'FIKRI RAMADHAN JUFRI', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1472012', 'ALEX YOSUA', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1472037', 'REYNARD M. TARUK', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1472041', 'CHRISTOFEL J HITTIPEUW', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1472068', 'ANANG ADENAN SIH', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1572904', 'ARMAN PAMA\'TAN', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672001', 'VERNANDA DWI AYUNINGRUM', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672014', 'LYDIA NOVIANI KUSUMO', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672018', 'ELDHA RAMADHANTY', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672023', 'JOSES VITO CHANDRA', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672024', 'MADELENE HONORA', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 'IN051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1672035', 'NURUL AFIANY', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 'IN053', 'STRATEGI ALGORITMIK', '1172149', 'SELVINA NUR SYARIFAH', 'A', 4, 'Kamis', '07:00:00', '17:00:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1172087', 'MISAEL JORDI JERMIA', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472009', 'BORIS', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472037', 'REYNARD M. TARUK', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472050', 'NALA SANJAY RAJ', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472056', 'RAHMAN', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472069', 'BINTANG RAHADIAN PRATAMA', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472071', 'HILMAN PEBRIAN PRATAMA', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1472080', 'SEHAT ALPRIANTO SITOMPUL', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572005', 'ALFRED CRISTOPER', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572011', 'KEVIN MULYANTO', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572012', 'ZIAVANIWATI', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572028', 'MUHAMAD REZA FAHLEPI', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572029', 'LOTANTO SETIAWAN', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572034', 'AGASSI ANTONIUS', 'A', 3, 'Rabu', '13:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1372033', 'SANVIER', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1372040', 'ANDREAS WIBISANA TONADI', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572006', 'HANDI LIEPUTRA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572010', 'ANTHONY SUTANDI', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572014', 'REYNALDI WIJAYA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572016', 'THEON LEONARDUS', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(903, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572020', 'RIZKI RIKSAZANY', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572021', 'KELVIN SENTOSA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572022', 'CARINA NATALIA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572023', 'R. KARIM MALIK', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572024', 'YOHANES SUHANDI', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572026', 'FIKRI ANUGRAH', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572035', 'WILLIAM GAUTAMA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572036', 'NERISSA HANSA WIJAYA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572039', 'NANDA WAHYUDIANA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572041', 'ARDANA PUTRA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572042', 'SYAFIRAFITRI ANWAR', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572043', 'LOUIS WILIAM', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572045', 'MUHAMMAD RAKA PERMANA', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572049', 'SARAH ULA LUTFIAH', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572052', 'RACHMI RACHMADIANY', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1572904', 'ARMAN PAMA\'TAN', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 'IN060', 'PENGANTAR KECERDASAN BUATAN', '1772901', 'ALBERT ABIMANYU', 'B', 3, 'Senin', '13:00:00', '17:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1172140', 'ROKKI GINTING', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1472037', 'REYNARD M. TARUK', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1472051', 'RENDY HERMANTO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572001', 'LISAN SULISTIANI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572007', 'ANDRE', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572011', 'KEVIN MULYANTO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572016', 'THEON LEONARDUS', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572021', 'KELVIN SENTOSA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572024', 'YOHANES SUHANDI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572026', 'FIKRI ANUGRAH', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572029', 'LOTANTO SETIAWAN', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572036', 'NERISSA HANSA WIJAYA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572038', 'IVAN CHRISTIAN', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572042', 'SYAFIRAFITRI ANWAR', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572047', 'STEVEN JUAN', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572049', 'SARAH ULA LUTFIAH', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572050', 'PUTERA PRATAMA ROKHANIAWAN WIDARTONO', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1472012', 'ALEX YOSUA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672001', 'VERNANDA DWI AYUNINGRUM', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672002', 'JIMMY PURNAWAN', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672005', 'RONALDO JOSHUA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672011', 'YOKO WILYAM SIGAN', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672013', 'BRYAN', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672015', 'JEREMIA VARIAN RUSLI', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672016', 'HANHAN LIPIAN DINATA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672017', 'RICARDO FRANCLINTON', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672024', 'MADELENE HONORA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672026', 'CEVIN ANANTHA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672035', 'NURUL AFIANY', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672038', 'ERICO APRIANUS', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672041', 'SAMUEL GODJALI', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672042', 'ADRYIL ACHMAD FAUZI', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672057', 'LUTHFI DWI NUGRAHA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672061', 'LARAS APRILIANI', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672062', 'JOSHUA EKA PUTRA JUWARNO', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672065', 'JESIKA ANASTASIA SAUNUNU', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672074', 'LOUREN FERMANDO', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672075', 'MICHAEL CHRISTIAN', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672076', 'DENNIS AGUSTINUS', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 'IN061', 'DISAIN ANTARMUKA PENGGUNA', '1672079', 'AMANDA PRIYA NAVRATILOVA', 'B', 3, 'Rabu', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1472049', 'YOSEPH AUDRIAN', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572011', 'KEVIN MULYANTO', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572012', 'ZIAVANIWATI', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572014', 'REYNALDI WIJAYA', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572016', 'THEON LEONARDUS', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572020', 'RIZKI RIKSAZANY', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572021', 'KELVIN SENTOSA', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572024', 'YOHANES SUHANDI', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572026', 'FIKRI ANUGRAH', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572028', 'MUHAMAD REZA FAHLEPI', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572038', 'IVAN CHRISTIAN', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572041', 'ARDANA PUTRA', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572042', 'SYAFIRAFITRI ANWAR', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572047', 'STEVEN JUAN', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572049', 'SARAH ULA LUTFIAH', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572052', 'RACHMI RACHMADIANY', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'A', 2, 'Selasa', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1272038', 'HENDY WIDYANTO WIRAWAN', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1372031', 'OGGIE SEANTA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1372076', 'MOHAMAD KAWIRIAN WIRA SARJANA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1472015', 'VELLICYA AGNES SUSANTO', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1472039', 'ARJUNA ANGGA S PURBA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572005', 'ALFRED CRISTOPER', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1002, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572006', 'HANDI LIEPUTRA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1003, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572008', 'GISELA KURNIAWATI', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1004, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572010', 'ANTHONY SUTANDI', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1005, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1006, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572022', 'CARINA NATALIA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572023', 'R. KARIM MALIK', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572035', 'WILLIAM GAUTAMA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572036', 'NERISSA HANSA WIJAYA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572039', 'NANDA WAHYUDIANA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572040', 'ROSSEVINE ARTHA NATHASYA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572043', 'LOUIS WILIAM', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1572045', 'MUHAMMAD RAKA PERMANA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1672903', 'RANGGA WIRIAPUTRA', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1672904', 'INSAN SYARIF', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 'IN062', 'METODE PENELITIAN INFORMATIKA', '1772901', 'ALBERT ABIMANYU', 'B', 2, 'Selasa', '17:30:00', '19:30:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 'IN063', 'GRAFIKA KOMPUTER', '1172087', 'MISAEL JORDI JERMIA', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 'IN063', 'GRAFIKA KOMPUTER', '1372033', 'SANVIER', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 'IN063', 'GRAFIKA KOMPUTER', '1372040', 'ANDREAS WIBISANA TONADI', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 'IN063', 'GRAFIKA KOMPUTER', '1372056', 'BERNADETHA YULIANA ASARIBAB', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 'IN063', 'GRAFIKA KOMPUTER', '1372064', 'LEVY QIDAM SUSANTO', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 'IN063', 'GRAFIKA KOMPUTER', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 'IN063', 'GRAFIKA KOMPUTER', '1472037', 'REYNARD M. TARUK', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 'IN063', 'GRAFIKA KOMPUTER', '1472068', 'ANANG ADENAN SIH', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 'IN063', 'GRAFIKA KOMPUTER', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 'IN063', 'GRAFIKA KOMPUTER', '1572011', 'KEVIN MULYANTO', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 'IN063', 'GRAFIKA KOMPUTER', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 'IN063', 'GRAFIKA KOMPUTER', '1572028', 'MUHAMAD REZA FAHLEPI', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 'IN063', 'GRAFIKA KOMPUTER', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 'IN063', 'GRAFIKA KOMPUTER', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, 'IN063', 'GRAFIKA KOMPUTER', '1572904', 'ARMAN PAMA\'TAN', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, 'IN063', 'GRAFIKA KOMPUTER', '1772021', 'THEO ALEKSANDER WILLIAM', 'A', 4, 'Rabu', '07:00:00', '11:30:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, 'IN063', 'GRAFIKA KOMPUTER', '1372031', 'OGGIE SEANTA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, 'IN063', 'GRAFIKA KOMPUTER', '1472044', 'M RIZKI PUTRA UTAMA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, 'IN063', 'GRAFIKA KOMPUTER', '1472054', 'MATHIAS KARUNIA PUTRA TASKA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, 'IN063', 'GRAFIKA KOMPUTER', '1472056', 'RAHMAN', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, 'IN063', 'GRAFIKA KOMPUTER', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, 'IN063', 'GRAFIKA KOMPUTER', '1472069', 'BINTANG RAHADIAN PRATAMA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, 'IN063', 'GRAFIKA KOMPUTER', '1472079', 'JUNIATER SIMBOLON', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, 'IN063', 'GRAFIKA KOMPUTER', '1572001', 'LISAN SULISTIANI', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, 'IN063', 'GRAFIKA KOMPUTER', '1572010', 'ANTHONY SUTANDI', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, 'IN063', 'GRAFIKA KOMPUTER', '1572012', 'ZIAVANIWATI', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, 'IN063', 'GRAFIKA KOMPUTER', '1572014', 'REYNALDI WIJAYA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, 'IN063', 'GRAFIKA KOMPUTER', '1572016', 'THEON LEONARDUS', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, 'IN063', 'GRAFIKA KOMPUTER', '1572020', 'RIZKI RIKSAZANY', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, 'IN063', 'GRAFIKA KOMPUTER', '1572022', 'CARINA NATALIA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, 'IN063', 'GRAFIKA KOMPUTER', '1572024', 'YOHANES SUHANDI', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, 'IN063', 'GRAFIKA KOMPUTER', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, 'IN063', 'GRAFIKA KOMPUTER', '1572034', 'AGASSI ANTONIUS', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, 'IN063', 'GRAFIKA KOMPUTER', '1572036', 'NERISSA HANSA WIJAYA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1052, 'IN063', 'GRAFIKA KOMPUTER', '1572041', 'ARDANA PUTRA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1053, 'IN063', 'GRAFIKA KOMPUTER', '1572045', 'MUHAMMAD RAKA PERMANA', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1054, 'IN063', 'GRAFIKA KOMPUTER', '1572049', 'SARAH ULA LUTFIAH', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1055, 'IN063', 'GRAFIKA KOMPUTER', '1572052', 'RACHMI RACHMADIANY', 'B', 4, 'Senin', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1056, 'IN063', 'GRAFIKA KOMPUTER', '1472009', 'BORIS', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1057, 'IN063', 'GRAFIKA KOMPUTER', '1472028', 'JOHAN GAUTAMA IRAWAN', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1058, 'IN063', 'GRAFIKA KOMPUTER', '1472050', 'NALA SANJAY RAJ', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1059, 'IN063', 'GRAFIKA KOMPUTER', '1472051', 'RENDY HERMANTO', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1060, 'IN063', 'GRAFIKA KOMPUTER', '1472071', 'HILMAN PEBRIAN PRATAMA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1061, 'IN063', 'GRAFIKA KOMPUTER', '1472080', 'SEHAT ALPRIANTO SITOMPUL', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1062, 'IN063', 'GRAFIKA KOMPUTER', '1572005', 'ALFRED CRISTOPER', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063, 'IN063', 'GRAFIKA KOMPUTER', '1572006', 'HANDI LIEPUTRA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1064, 'IN063', 'GRAFIKA KOMPUTER', '1572008', 'GISELA KURNIAWATI', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1065, 'IN063', 'GRAFIKA KOMPUTER', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1066, 'IN063', 'GRAFIKA KOMPUTER', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1067, 'IN063', 'GRAFIKA KOMPUTER', '1572021', 'KELVIN SENTOSA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1068, 'IN063', 'GRAFIKA KOMPUTER', '1572023', 'R. KARIM MALIK', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1069, 'IN063', 'GRAFIKA KOMPUTER', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1070, 'IN063', 'GRAFIKA KOMPUTER', '1572026', 'FIKRI ANUGRAH', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1071, 'IN063', 'GRAFIKA KOMPUTER', '1572029', 'LOTANTO SETIAWAN', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1072, 'IN063', 'GRAFIKA KOMPUTER', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1073, 'IN063', 'GRAFIKA KOMPUTER', '1572035', 'WILLIAM GAUTAMA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1074, 'IN063', 'GRAFIKA KOMPUTER', '1572039', 'NANDA WAHYUDIANA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1075, 'IN063', 'GRAFIKA KOMPUTER', '1572040', 'ROSSEVINE ARTHA NATHASYA', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1076, 'IN063', 'GRAFIKA KOMPUTER', '1572042', 'SYAFIRAFITRI ANWAR', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1077, 'IN063', 'GRAFIKA KOMPUTER', '1572043', 'LOUIS WILIAM', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1078, 'IN063', 'GRAFIKA KOMPUTER', '1572047', 'STEVEN JUAN', 'C', 4, 'Kamis', '07:00:00', '11:30:00', '710096', 'Sulaeman Santoso, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1079, 'IN064', 'KEWIRAUSAHAAN', '1272009', 'JESSICA SUGIANTO', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1080, 'IN064', 'KEWIRAUSAHAAN', '1372040', 'ANDREAS WIBISANA TONADI', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1081, 'IN064', 'KEWIRAUSAHAAN', '1372043', 'SEAN MARSHALL HERAWAN', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1082, 'IN064', 'KEWIRAUSAHAAN', '1372053', 'BAYU KRISTIADHI MULIASETIA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1083, 'IN064', 'KEWIRAUSAHAAN', '1472019', 'JESON ORLANDO ISAKH', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1084, 'IN064', 'KEWIRAUSAHAAN', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1085, 'IN064', 'KEWIRAUSAHAAN', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1086, 'IN064', 'KEWIRAUSAHAAN', '1472054', 'MATHIAS KARUNIA PUTRA TASKA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1087, 'IN064', 'KEWIRAUSAHAAN', '1472066', 'JOHNNY BASKORO', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1088, 'IN064', 'KEWIRAUSAHAAN', '1472072', 'FAJAR WAHYUDI PUTERA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1089, 'IN064', 'KEWIRAUSAHAAN', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1090, 'IN064', 'KEWIRAUSAHAAN', '1572016', 'THEON LEONARDUS', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1091, 'IN064', 'KEWIRAUSAHAAN', '1572034', 'AGASSI ANTONIUS', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1092, 'IN064', 'KEWIRAUSAHAAN', '1572041', 'ARDANA PUTRA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1093, 'IN064', 'KEWIRAUSAHAAN', '1572048', 'EFRAIM', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1094, 'IN064', 'KEWIRAUSAHAAN', '1672010', 'NEVIN SYAHPUTRA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1095, 'IN064', 'KEWIRAUSAHAAN', '1672012', 'JONATHAN PRATAMA SUTJIADY', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1096, 'IN064', 'KEWIRAUSAHAAN', '1672014', 'LYDIA NOVIANI KUSUMO', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1097, 'IN064', 'KEWIRAUSAHAAN', '1672015', 'JEREMIA VARIAN RUSLI', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1098, 'IN064', 'KEWIRAUSAHAAN', '1672016', 'HANHAN LIPIAN DINATA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1099, 'IN064', 'KEWIRAUSAHAAN', '1672026', 'CEVIN ANANTHA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1100, 'IN064', 'KEWIRAUSAHAAN', '1672033', 'IVAN TRY JAYA', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1101, 'IN064', 'KEWIRAUSAHAAN', '1672041', 'SAMUEL GODJALI', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1102, 'IN064', 'KEWIRAUSAHAAN', '1672042', 'ADRYIL ACHMAD FAUZI', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1103, 'IN064', 'KEWIRAUSAHAAN', '1672049', 'PRAKHAS PRAKOSO DIEN', 'A', 3, 'Kamis', '09:30:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1104, 'IN064', 'KEWIRAUSAHAAN', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1105, 'IN064', 'KEWIRAUSAHAAN', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1106, 'IN064', 'KEWIRAUSAHAAN', '1672005', 'RONALDO JOSHUA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1107, 'IN064', 'KEWIRAUSAHAAN', '1672006', 'CHRISTIAN CHASTRO', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1108, 'IN064', 'KEWIRAUSAHAAN', '1672009', 'EDWIN SATRIA INDRAWAN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1109, 'IN064', 'KEWIRAUSAHAAN', '1672011', 'YOKO WILYAM SIGAN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1110, 'IN064', 'KEWIRAUSAHAAN', '1672018', 'ELDHA RAMADHANTY', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1111, 'IN064', 'KEWIRAUSAHAAN', '1672038', 'ERICO APRIANUS', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1112, 'IN064', 'KEWIRAUSAHAAN', '1672039', 'ANDRIANUS ALVIEN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1113, 'IN064', 'KEWIRAUSAHAAN', '1672043', 'ALVIN ATMACENDANA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1114, 'IN064', 'KEWIRAUSAHAAN', '1672051', 'LUKAS HANSEL GANDA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1115, 'IN064', 'KEWIRAUSAHAAN', '1672056', 'STEVEN CHRISTIAN HERYAWAN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1116, 'IN064', 'KEWIRAUSAHAAN', '1672064', 'KEVIN CHRISTY PARINUSSA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1117, 'IN064', 'KEWIRAUSAHAAN', '1672075', 'MICHAEL CHRISTIAN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '520215L', 'Ezra Karamang, S.E., M.M.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1118, 'IN065', 'KERJA PRAKTEK', '1172086', 'IGNATIUS LEONARDO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1119, 'IN065', 'KERJA PRAKTEK', '1272038', 'HENDY WIDYANTO WIRAWAN', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1120, 'IN065', 'KERJA PRAKTEK', '1272104', 'MONICA AGLORIA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1121, 'IN065', 'KERJA PRAKTEK', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1122, 'IN065', 'KERJA PRAKTEK', '1372041', 'CHRISTYAN CHANDRA WIJAYA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1123, 'IN065', 'KERJA PRAKTEK', '1372043', 'SEAN MARSHALL HERAWAN', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1124, 'IN065', 'KERJA PRAKTEK', '1372053', 'BAYU KRISTIADHI MULIASETIA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1125, 'IN065', 'KERJA PRAKTEK', '1372093', 'YAN SEN PAULUS', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1126, 'IN065', 'KERJA PRAKTEK', '1472028', 'JOHAN GAUTAMA IRAWAN', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1127, 'IN065', 'KERJA PRAKTEK', '1472040', 'VIANDRO ALFARIS', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1128, 'IN065', 'KERJA PRAKTEK', '1472054', 'MATHIAS KARUNIA PUTRA TASKA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1129, 'IN065', 'KERJA PRAKTEK', '1472065', 'LUCKY METHA PURNOMO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1130, 'IN065', 'KERJA PRAKTEK', '1472066', 'JOHNNY BASKORO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1131, 'IN065', 'KERJA PRAKTEK', '1472071', 'HILMAN PEBRIAN PRATAMA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1132, 'IN065', 'KERJA PRAKTEK', '1472080', 'SEHAT ALPRIANTO SITOMPUL', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1133, 'IN065', 'KERJA PRAKTEK', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1134, 'IN065', 'KERJA PRAKTEK', '1572005', 'ALFRED CRISTOPER', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1135, 'IN065', 'KERJA PRAKTEK', '1572011', 'KEVIN MULYANTO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1136, 'IN065', 'KERJA PRAKTEK', '1572012', 'ZIAVANIWATI', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1137, 'IN065', 'KERJA PRAKTEK', '1572014', 'REYNALDI WIJAYA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1138, 'IN065', 'KERJA PRAKTEK', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1139, 'IN065', 'KERJA PRAKTEK', '1572016', 'THEON LEONARDUS', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1140, 'IN065', 'KERJA PRAKTEK', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1141, 'IN065', 'KERJA PRAKTEK', '1572020', 'RIZKI RIKSAZANY', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1142, 'IN065', 'KERJA PRAKTEK', '1572022', 'CARINA NATALIA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1143, 'IN065', 'KERJA PRAKTEK', '1572023', 'R. KARIM MALIK', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1144, 'IN065', 'KERJA PRAKTEK', '1572024', 'YOHANES SUHANDI', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1145, 'IN065', 'KERJA PRAKTEK', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1146, 'IN065', 'KERJA PRAKTEK', '1572026', 'FIKRI ANUGRAH', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1147, 'IN065', 'KERJA PRAKTEK', '1572028', 'MUHAMAD REZA FAHLEPI', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1148, 'IN065', 'KERJA PRAKTEK', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1149, 'IN065', 'KERJA PRAKTEK', '1572033', 'RIZALDI CAKRA ADIPRATAMA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1150, 'IN065', 'KERJA PRAKTEK', '1572035', 'WILLIAM GAUTAMA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1151, 'IN065', 'KERJA PRAKTEK', '1572036', 'NERISSA HANSA WIJAYA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1152, 'IN065', 'KERJA PRAKTEK', '1572039', 'NANDA WAHYUDIANA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1153, 'IN065', 'KERJA PRAKTEK', '1572041', 'ARDANA PUTRA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1154, 'IN065', 'KERJA PRAKTEK', '1572042', 'SYAFIRAFITRI ANWAR', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1155, 'IN065', 'KERJA PRAKTEK', '1572043', 'LOUIS WILIAM', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1156, 'IN065', 'KERJA PRAKTEK', '1572045', 'MUHAMMAD RAKA PERMANA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1157, 'IN065', 'KERJA PRAKTEK', '1572052', 'RACHMI RACHMADIANY', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1158, 'IN065', 'KERJA PRAKTEK', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1159, 'IN065', 'KERJA PRAKTEK', '1572910', 'RISYA FIDEANDI', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1160, 'IN065', 'KERJA PRAKTEK', '1672903', 'RANGGA WIRIAPUTRA', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1161, 'IN065', 'KERJA PRAKTEK', '1672905', 'WILLY NUARI', 'A', 3, 'Jumat', '08:00:00', '11:00:00', '720309', 'Oscar Karnalim, ST., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1162, 'IN070', 'SEMINAR TUGAS AKHIR', '1172035', 'WENDY LOGITO', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1163, 'IN070', 'SEMINAR TUGAS AKHIR', '1172093', 'MICHAEL SAPUTRA SUHENDI', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1164, 'IN070', 'SEMINAR TUGAS AKHIR', '1172140', 'ROKKI GINTING', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1165, 'IN070', 'SEMINAR TUGAS AKHIR', '1272049', 'JOHANNES JACKDAW L L A', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1166, 'IN070', 'SEMINAR TUGAS AKHIR', '1272075', 'RICHARD TANUGRAHA', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1167, 'IN070', 'SEMINAR TUGAS AKHIR', '1372058', 'JORDY RAITAMA', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1168, 'IN070', 'SEMINAR TUGAS AKHIR', '1372087', 'MOCHAMAD IKHSAN', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1169, 'IN070', 'SEMINAR TUGAS AKHIR', '1472003', 'RYNALDY SENJAYA', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1170, 'IN070', 'SEMINAR TUGAS AKHIR', '1472009', 'BORIS', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1171, 'IN070', 'SEMINAR TUGAS AKHIR', '1472038', 'KEVIN GIOVANNI R MAMAHIT', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1172, 'IN070', 'SEMINAR TUGAS AKHIR', '1472042', 'YOSHUA ANDI SANTOSA', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1173, 'IN070', 'SEMINAR TUGAS AKHIR', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1174, 'IN070', 'SEMINAR TUGAS AKHIR', '1472050', 'NALA SANJAY RAJ', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1175, 'IN070', 'SEMINAR TUGAS AKHIR', '1472084', 'YEREMIA DANANG PRIAMBODO', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1176, 'IN070', 'SEMINAR TUGAS AKHIR', '1572001', 'LISAN SULISTIANI', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1177, 'IN070', 'SEMINAR TUGAS AKHIR', '1572038', 'IVAN CHRISTIAN', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1178, 'IN070', 'SEMINAR TUGAS AKHIR', '1572910', 'RISYA FIDEANDI', 'A', 2, 'Senin', '08:00:00', '09:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1179, 'IN070', 'SEMINAR TUGAS AKHIR', '1172050', 'ALDI ARDIANSYAH', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1180, 'IN070', 'SEMINAR TUGAS AKHIR', '1172086', 'IGNATIUS LEONARDO', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1181, 'IN070', 'SEMINAR TUGAS AKHIR', '1172087', 'MISAEL JORDI JERMIA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1182, 'IN070', 'SEMINAR TUGAS AKHIR', '1172104', 'IMMANUEL GA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1183, 'IN070', 'SEMINAR TUGAS AKHIR', '1272035', 'MICHAEL NG', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1184, 'IN070', 'SEMINAR TUGAS AKHIR', '1272072', 'TODOAN BORIS SITOROES', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1185, 'IN070', 'SEMINAR TUGAS AKHIR', '1272088', 'REVIAN ADHI PRADANA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1186, 'IN070', 'SEMINAR TUGAS AKHIR', '1372069', 'REPRI JULIANA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1187, 'IN070', 'SEMINAR TUGAS AKHIR', '1372084', 'CHRISTIAN ZEFANYA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1188, 'IN070', 'SEMINAR TUGAS AKHIR', '1372092', 'FIKRI RAMADHAN JUFRI', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1189, 'IN070', 'SEMINAR TUGAS AKHIR', '1472019', 'JESON ORLANDO ISAKH', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1190, 'IN070', 'SEMINAR TUGAS AKHIR', '1472025', 'EDWARD KURNIAWAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1191, 'IN070', 'SEMINAR TUGAS AKHIR', '1472049', 'YOSEPH AUDRIAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1192, 'IN070', 'SEMINAR TUGAS AKHIR', '1472056', 'RAHMAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1193, 'IN070', 'SEMINAR TUGAS AKHIR', '1572006', 'HANDI LIEPUTRA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1194, 'IN070', 'SEMINAR TUGAS AKHIR', '1572007', 'ANDRE', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1195, 'IN070', 'SEMINAR TUGAS AKHIR', '1572008', 'GISELA KURNIAWATI', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1196, 'IN070', 'SEMINAR TUGAS AKHIR', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1197, 'IN070', 'SEMINAR TUGAS AKHIR', '1572021', 'KELVIN SENTOSA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1198, 'IN070', 'SEMINAR TUGAS AKHIR', '1572027', 'CHRISTOPHER STARRY JOMEI', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1199, 'IN070', 'SEMINAR TUGAS AKHIR', '1572029', 'LOTANTO SETIAWAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1200, 'IN070', 'SEMINAR TUGAS AKHIR', '1572040', 'ROSSEVINE ARTHA NATHASYA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1201, 'IN070', 'SEMINAR TUGAS AKHIR', '1572047', 'STEVEN JUAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1202, 'IN070', 'SEMINAR TUGAS AKHIR', '1572902', 'JAGRA FAJAR FITRIA LATUPEIRISSA', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1203, 'IN070', 'SEMINAR TUGAS AKHIR', '1572904', 'ARMAN PAMA\'TAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1204, 'IN070', 'SEMINAR TUGAS AKHIR', '1572906', 'IUD WAHYUDI', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1205, 'IN070', 'SEMINAR TUGAS AKHIR', '1572911', 'DETRY HANDOYO IRAWAN', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1206, 'IN070', 'SEMINAR TUGAS AKHIR', '1672902', 'HIZKIA SAMUEL', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1207, 'IN070', 'SEMINAR TUGAS AKHIR', '1772901', 'ALBERT ABIMANYU', 'B', 2, 'Senin', '09:00:00', '10:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1208, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1172140', 'ROKKI GINTING', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1209, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1372041', 'CHRISTYAN CHANDRA WIJAYA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1210, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1211, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1472067', 'ANDY PRATAMA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1212, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1572007', 'ANDRE', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1213, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1214, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1215, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1572029', 'LOTANTO SETIAWAN', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1216, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1672002', 'JIMMY PURNAWAN', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1217, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1672014', 'LYDIA NOVIANI KUSUMO', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1218, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1672017', 'RICARDO FRANCLINTON', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1219, 'IN076', 'POLA DESAIN PERANGKAT LUNAK', '1672076', 'DENNIS AGUSTINUS', 'A', 4, 'Senin', '12:30:00', '17:00:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1220, 'IN079', 'ETHICAL HACKING 2', '1372097', 'WILSON SEMBIRING', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1221, 'IN079', 'ETHICAL HACKING 2', '1472009', 'BORIS', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1222, 'IN079', 'ETHICAL HACKING 2', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1223, 'IN079', 'ETHICAL HACKING 2', '1472047', 'PAULUS APRIYANTO', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1224, 'IN079', 'ETHICAL HACKING 2', '1472055', 'BAMBANG PRASETYA HALIM', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1225, 'IN079', 'ETHICAL HACKING 2', '1472067', 'ANDY PRATAMA', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1226, 'IN079', 'ETHICAL HACKING 2', '1472079', 'JUNIATER SIMBOLON', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1227, 'IN079', 'ETHICAL HACKING 2', '1572001', 'LISAN SULISTIANI', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1228, 'IN079', 'ETHICAL HACKING 2', '1572005', 'ALFRED CRISTOPER', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1229, 'IN079', 'ETHICAL HACKING 2', '1572006', 'HANDI LIEPUTRA', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1230, 'IN079', 'ETHICAL HACKING 2', '1572007', 'ANDRE', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1231, 'IN079', 'ETHICAL HACKING 2', '1572010', 'ANTHONY SUTANDI', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1232, 'IN079', 'ETHICAL HACKING 2', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1233, 'IN079', 'ETHICAL HACKING 2', '1572021', 'KELVIN SENTOSA', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1234, 'IN079', 'ETHICAL HACKING 2', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1235, 'IN079', 'ETHICAL HACKING 2', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1236, 'IN079', 'ETHICAL HACKING 2', '1572029', 'LOTANTO SETIAWAN', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1237, 'IN079', 'ETHICAL HACKING 2', '1572030', 'ANDIKA MULYAWAN DWI PRAPMANTO', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1238, 'IN079', 'ETHICAL HACKING 2', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1239, 'IN079', 'ETHICAL HACKING 2', '1572038', 'IVAN CHRISTIAN', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1240, 'IN079', 'ETHICAL HACKING 2', '1572043', 'LOUIS WILIAM', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1241, 'IN079', 'ETHICAL HACKING 2', '1572047', 'STEVEN JUAN', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1242, 'IN080', 'TUGAS AKHIR', '1172035', 'WENDY LOGITO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1243, 'IN080', 'TUGAS AKHIR', '1172087', 'MISAEL JORDI JERMIA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1244, 'IN080', 'TUGAS AKHIR', '1172093', 'MICHAEL SAPUTRA SUHENDI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1245, 'IN080', 'TUGAS AKHIR', '1172140', 'ROKKI GINTING', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1246, 'IN080', 'TUGAS AKHIR', '1172149', 'SELVINA NUR SYARIFAH', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1247, 'IN080', 'TUGAS AKHIR', '1272009', 'JESSICA SUGIANTO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1248, 'IN080', 'TUGAS AKHIR', '1272021', 'HENDRIK', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1249, 'IN080', 'TUGAS AKHIR', '1272035', 'MICHAEL NG', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1250, 'IN080', 'TUGAS AKHIR', '1272049', 'JOHANNES JACKDAW L L A', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1251, 'IN080', 'TUGAS AKHIR', '1272072', 'TODOAN BORIS SITOROES', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1252, 'IN080', 'TUGAS AKHIR', '1272075', 'RICHARD TANUGRAHA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1253, 'IN080', 'TUGAS AKHIR', '1272084', 'ARIBOWO YOGA WIGUNO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1254, 'IN080', 'TUGAS AKHIR', '1272088', 'REVIAN ADHI PRADANA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1255, 'IN080', 'TUGAS AKHIR', '1272105', 'SAHAT JAYA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1256, 'IN080', 'TUGAS AKHIR', '1272110', 'RICKY ANDRIAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1257, 'IN080', 'TUGAS AKHIR', '1372016', 'STEVEN SALANNY PUTRA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1258, 'IN080', 'TUGAS AKHIR', '1372033', 'SANVIER', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1259, 'IN080', 'TUGAS AKHIR', '1372039', 'MUHAMMAD FIRZA PAHLAWAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1260, 'IN080', 'TUGAS AKHIR', '1372056', 'BERNADETHA YULIANA ASARIBAB', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1261, 'IN080', 'TUGAS AKHIR', '1372058', 'JORDY RAITAMA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1262, 'IN080', 'TUGAS AKHIR', '1372069', 'REPRI JULIANA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1263, 'IN080', 'TUGAS AKHIR', '1372076', 'MOHAMAD KAWIRIAN WIRA SARJANA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1264, 'IN080', 'TUGAS AKHIR', '1372087', 'MOCHAMAD IKHSAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1265, 'IN080', 'TUGAS AKHIR', '1372092', 'FIKRI RAMADHAN JUFRI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1266, 'IN080', 'TUGAS AKHIR', '1472003', 'RYNALDY SENJAYA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1267, 'IN080', 'TUGAS AKHIR', '1472008', 'CHANDRA VINCENT GRAFIANTO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1268, 'IN080', 'TUGAS AKHIR', '1472010', 'RAYNALD', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1269, 'IN080', 'TUGAS AKHIR', '1472013', 'JASON ALEXANDER', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1270, 'IN080', 'TUGAS AKHIR', '1472017', 'I KETUT ADI WICAKSANA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1271, 'IN080', 'TUGAS AKHIR', '1472022', 'DENNIS LAWINDRA KURDI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1272, 'IN080', 'TUGAS AKHIR', '1472032', 'JONATHAN CHRISTIE', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1273, 'IN080', 'TUGAS AKHIR', '1472034', 'WILLIAM SILVANUS', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1274, 'IN080', 'TUGAS AKHIR', '1472042', 'YOSHUA ANDI SANTOSA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1275, 'IN080', 'TUGAS AKHIR', '1472047', 'PAULUS APRIYANTO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1276, 'IN080', 'TUGAS AKHIR', '1472049', 'YOSEPH AUDRIAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1277, 'IN080', 'TUGAS AKHIR', '1472051', 'RENDY HERMANTO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1278, 'IN080', 'TUGAS AKHIR', '1472058', 'TOMMI STEVANUS', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1279, 'IN080', 'TUGAS AKHIR', '1472063', 'ARIF SURYAWIJAYA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1280, 'IN080', 'TUGAS AKHIR', '1472069', 'BINTANG RAHADIAN PRATAMA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1281, 'IN080', 'TUGAS AKHIR', '1472072', 'FAJAR WAHYUDI PUTERA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1282, 'IN080', 'TUGAS AKHIR', '1472075', 'MARWIN LIENARDI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1283, 'IN080', 'TUGAS AKHIR', '1472084', 'YEREMIA DANANG PRIAMBODO', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1284, 'IN080', 'TUGAS AKHIR', '1472085', 'YONATAN ABIEZER', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1285, 'IN080', 'TUGAS AKHIR', '1472087', 'BERTIE ALAN MANUEL', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1286, 'IN080', 'TUGAS AKHIR', '1472090', 'RENALDY', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1287, 'IN080', 'TUGAS AKHIR', '1472094', 'LUTFIANA ELVANDARY', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1288, 'IN080', 'TUGAS AKHIR', '1572001', 'LISAN SULISTIANI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1289, 'IN080', 'TUGAS AKHIR', '1572007', 'ANDRE', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1290, 'IN080', 'TUGAS AKHIR', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1291, 'IN080', 'TUGAS AKHIR', '1572038', 'IVAN CHRISTIAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1292, 'IN080', 'TUGAS AKHIR', '1572047', 'STEVEN JUAN', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1293, 'IN080', 'TUGAS AKHIR', '1572903', 'RUDYANTO TANUMIHARDJA', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1294, 'IN080', 'TUGAS AKHIR', '1572906', 'IUD WAHYUDI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1295, 'IN080', 'TUGAS AKHIR', '1572910', 'RISYA FIDEANDI', 'A', 4, 'Senin', '10:00:00', '11:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1296, 'IN080', 'TUGAS AKHIR', '1172018', 'BRIAN EDWARD HERMANTO', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1297, 'IN080', 'TUGAS AKHIR', '1172050', 'ALDI ARDIANSYAH', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1298, 'IN080', 'TUGAS AKHIR', '1172086', 'IGNATIUS LEONARDO', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1299, 'IN080', 'TUGAS AKHIR', '1172104', 'IMMANUEL GA', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1300, 'IN080', 'TUGAS AKHIR', '1372040', 'ANDREAS WIBISANA TONADI', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1301, 'IN080', 'TUGAS AKHIR', '1372084', 'CHRISTIAN ZEFANYA', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1302, 'IN080', 'TUGAS AKHIR', '1472016', 'WILFRED', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1303, 'IN080', 'TUGAS AKHIR', '1472019', 'JESON ORLANDO ISAKH', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1304, 'IN080', 'TUGAS AKHIR', '1472020', 'AUDY', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1305, 'IN080', 'TUGAS AKHIR', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1306, 'IN080', 'TUGAS AKHIR', '1472025', 'EDWARD KURNIAWAN', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1307, 'IN080', 'TUGAS AKHIR', '1472026', 'ROBIN KENARDY', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1308, 'IN080', 'TUGAS AKHIR', '1472044', 'M RIZKI PUTRA UTAMA', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1309, 'IN080', 'TUGAS AKHIR', '1472055', 'BAMBANG PRASETYA HALIM', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1310, 'IN080', 'TUGAS AKHIR', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1311, 'IN080', 'TUGAS AKHIR', '1472079', 'JUNIATER SIMBOLON', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1312, 'IN080', 'TUGAS AKHIR', '1672902', 'HIZKIA SAMUEL', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1313, 'IN080', 'TUGAS AKHIR', '1672903', 'RANGGA WIRIAPUTRA', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1314, 'IN080', 'TUGAS AKHIR', '1672904', 'INSAN SYARIF', 'B', 4, 'Senin', '11:00:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1315, 'IN081', 'KAPITA SELEKTA', '1372040', 'ANDREAS WIBISANA TONADI', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1316, 'IN081', 'KAPITA SELEKTA', '1372092', 'FIKRI RAMADHAN JUFRI', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1317, 'IN081', 'KAPITA SELEKTA', '1472009', 'BORIS', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1318, 'IN081', 'KAPITA SELEKTA', '1472040', 'VIANDRO ALFARIS', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1319, 'IN081', 'KAPITA SELEKTA', '1472041', 'CHRISTOFEL J HITTIPEUW', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1320, 'IN081', 'KAPITA SELEKTA', '1472052', 'REYNALDO EKO ARWIANTO', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1321, 'IN081', 'KAPITA SELEKTA', '1472065', 'LUCKY METHA PURNOMO', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1322, 'IN081', 'KAPITA SELEKTA', '1472084', 'YEREMIA DANANG PRIAMBODO', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1323, 'IN081', 'KAPITA SELEKTA', '1572005', 'ALFRED CRISTOPER', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1324, 'IN081', 'KAPITA SELEKTA', '1572007', 'ANDRE', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1325, 'IN081', 'KAPITA SELEKTA', '1572008', 'GISELA KURNIAWATI', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1326, 'IN081', 'KAPITA SELEKTA', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1327, 'IN081', 'KAPITA SELEKTA', '1572034', 'AGASSI ANTONIUS', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1328, 'IN081', 'KAPITA SELEKTA', '1572038', 'IVAN CHRISTIAN', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1329, 'IN081', 'KAPITA SELEKTA', '1572040', 'ROSSEVINE ARTHA NATHASYA', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1330, 'IN081', 'KAPITA SELEKTA', '1572042', 'SYAFIRAFITRI ANWAR', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1331, 'IN081', 'KAPITA SELEKTA', '1572047', 'STEVEN JUAN', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1332, 'IN081', 'KAPITA SELEKTA', '1672903', 'RANGGA WIRIAPUTRA', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1333, 'IN081', 'KAPITA SELEKTA', '1672904', 'INSAN SYARIF', 'A', 3, 'Jumat', '15:00:00', '17:00:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1334, 'IN082', 'PEMROGRAMAN MOBILE A ', '1472067', 'ANDY PRATAMA', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1335, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572001', 'LISAN SULISTIANI', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1336, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572002', 'ANANDA DHAMMAHITO ADHE HERLAMBANG', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1337, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572011', 'KEVIN MULYANTO', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1338, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572013', 'YOHANES DWIKURNIAWAN KRISTIAN HUSEN', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1339, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572014', 'REYNALDI WIJAYA', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1340, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572027', 'CHRISTOPHER STARRY JOMEI', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1341, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572028', 'MUHAMAD REZA FAHLEPI', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1342, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572048', 'EFRAIM', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1343, 'IN082', 'PEMROGRAMAN MOBILE A ', '1572054', 'MUFTAH AFRIZAL PANGESTU', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1344, 'IN082', 'PEMROGRAMAN MOBILE A ', '1672903', 'RANGGA WIRIAPUTRA', 'A', 4, 'Kamis', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1345, 'IN083', 'PEMROGRAMAN MOBILE B ', '1272038', 'HENDY WIDYANTO WIRAWAN', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1346, 'IN083', 'PEMROGRAMAN MOBILE B ', '1372093', 'YAN SEN PAULUS', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1347, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572006', 'HANDI LIEPUTRA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1348, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572008', 'GISELA KURNIAWATI', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1349, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572010', 'ANTHONY SUTANDI', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1350, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572022', 'CARINA NATALIA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1351, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572023', 'R. KARIM MALIK', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1352, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572034', 'AGASSI ANTONIUS', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1353, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572035', 'WILLIAM GAUTAMA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1354, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572039', 'NANDA WAHYUDIANA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1355, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572040', 'ROSSEVINE ARTHA NATHASYA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1356, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572043', 'LOUIS WILIAM', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1357, 'IN083', 'PEMROGRAMAN MOBILE B ', '1572045', 'MUHAMMAD RAKA PERMANA', 'A', 4, 'Selasa', '07:00:00', '17:00:00', '720307', 'Robby, ST., M.Kom.', 'Lab Adv 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1358, 'IN089', 'Enterprise Resource Planning', '1272104', 'MONICA AGLORIA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1359, 'IN089', 'Enterprise Resource Planning', '1472020', 'AUDY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1360, 'IN089', 'Enterprise Resource Planning', '1472026', 'ROBIN KENARDY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1361, 'IN089', 'Enterprise Resource Planning', '1472034', 'WILLIAM SILVANUS', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1362, 'IN089', 'Enterprise Resource Planning', '1472044', 'M RIZKI PUTRA UTAMA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1363, 'IN089', 'Enterprise Resource Planning', '1472055', 'BAMBANG PRASETYA HALIM', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1364, 'IN089', 'Enterprise Resource Planning', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1365, 'IN089', 'Enterprise Resource Planning', '1472065', 'LUCKY METHA PURNOMO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1366, 'IN089', 'Enterprise Resource Planning', '1472071', 'HILMAN PEBRIAN PRATAMA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1367, 'IN089', 'Enterprise Resource Planning', '1472084', 'YEREMIA DANANG PRIAMBODO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1368, 'IN089', 'Enterprise Resource Planning', '1572005', 'ALFRED CRISTOPER', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1369, 'IN089', 'Enterprise Resource Planning', '1572006', 'HANDI LIEPUTRA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1370, 'IN089', 'Enterprise Resource Planning', '1572010', 'ANTHONY SUTANDI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1371, 'IN089', 'Enterprise Resource Planning', '1572012', 'ZIAVANIWATI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1372, 'IN089', 'Enterprise Resource Planning', '1572014', 'REYNALDI WIJAYA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1373, 'IN089', 'Enterprise Resource Planning', '1572015', 'JONATHAN CHRISNANDA SANTOSO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1374, 'IN089', 'Enterprise Resource Planning', '1572016', 'THEON LEONARDUS', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1375, 'IN089', 'Enterprise Resource Planning', '1572019', 'WILLIAM KRISTIANTO WALUYO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1376, 'IN089', 'Enterprise Resource Planning', '1572020', 'RIZKI RIKSAZANY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1377, 'IN089', 'Enterprise Resource Planning', '1572023', 'R. KARIM MALIK', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1378, 'IN089', 'Enterprise Resource Planning', '1572024', 'YOHANES SUHANDI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1379, 'IN089', 'Enterprise Resource Planning', '1572025', 'YOGI KOSIM SINDUDIBROTO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1380, 'IN089', 'Enterprise Resource Planning', '1572026', 'FIKRI ANUGRAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1381, 'IN089', 'Enterprise Resource Planning', '1572029', 'LOTANTO SETIAWAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1382, 'IN089', 'Enterprise Resource Planning', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1383, 'IN089', 'Enterprise Resource Planning', '1572035', 'WILLIAM GAUTAMA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1384, 'IN089', 'Enterprise Resource Planning', '1572039', 'NANDA WAHYUDIANA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1385, 'IN089', 'Enterprise Resource Planning', '1572041', 'ARDANA PUTRA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1386, 'IN089', 'Enterprise Resource Planning', '1572042', 'SYAFIRAFITRI ANWAR', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1387, 'IN089', 'Enterprise Resource Planning', '1572045', 'MUHAMMAD RAKA PERMANA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1388, 'IN089', 'Enterprise Resource Planning', '1572049', 'SARAH ULA LUTFIAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1389, 'IN089', 'Enterprise Resource Planning', '1572052', 'RACHMI RACHMADIANY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '720225', 'Meliana Christianti Johan, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1390, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1572048', 'EFRAIM', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1391, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672006', 'CHRISTIAN CHASTRO', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1392, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672013', 'BRYAN', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1393, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672021', 'ALBERT ALVINDO ALGAMAPUTRA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1394, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672024', 'MADELENE HONORA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1395, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672028', 'ALVIN KUSUMA PUTRA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1396, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672030', 'RADEN KASYFI AGHITYA NATADILAGA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1397, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672040', 'SHAFIRA PUTRI KURNIAWAN', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1398, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672050', 'TOMMY', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1399, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672051', 'LUKAS HANSEL GANDA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1400, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672052', 'NAOMI HELLYNA MAKALEW', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1401, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672055', 'WILLY BUDIANTO', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1402, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672058', 'WILLIAM', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1403, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672066', 'YAFET RAPHAEL', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1404, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672071', 'VINCENT KHO', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1405, 'IN151', 'PENGENALAN PEMROGRAMAN GAME', '1672903', 'RANGGA WIRIAPUTRA', 'A', 4, 'Selasa', '09:30:00', '12:00:00', '720247', 'Erico Darmawan Handoyo, S.Kom., MT.', 'Lab Adv 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1406, 'IN162', 'ADMINISTRASI JARINGAN', '1272105', 'SAHAT JAYA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1407, 'IN162', 'ADMINISTRASI JARINGAN', '1372033', 'SANVIER', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1408, 'IN162', 'ADMINISTRASI JARINGAN', '1372043', 'SEAN MARSHALL HERAWAN', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1409, 'IN162', 'ADMINISTRASI JARINGAN', '1372053', 'BAYU KRISTIADHI MULIASETIA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1410, 'IN162', 'ADMINISTRASI JARINGAN', '1372056', 'BERNADETHA YULIANA ASARIBAB', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1411, 'IN162', 'ADMINISTRASI JARINGAN', '1372064', 'LEVY QIDAM SUSANTO', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1412, 'IN162', 'ADMINISTRASI JARINGAN', '1372069', 'REPRI JULIANA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1413, 'IN162', 'ADMINISTRASI JARINGAN', '1372092', 'FIKRI RAMADHAN JUFRI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1414, 'IN162', 'ADMINISTRASI JARINGAN', '1372093', 'YAN SEN PAULUS', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1415, 'IN162', 'ADMINISTRASI JARINGAN', '1472009', 'BORIS', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1416, 'IN162', 'ADMINISTRASI JARINGAN', '1472010', 'RAYNALD', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1417, 'IN162', 'ADMINISTRASI JARINGAN', '1472017', 'I KETUT ADI WICAKSANA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1418, 'IN162', 'ADMINISTRASI JARINGAN', '1472020', 'AUDY', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1419, 'IN162', 'ADMINISTRASI JARINGAN', '1472021', 'MANGISI PANDAPOTAN HUTAGAOL', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1420, 'IN162', 'ADMINISTRASI JARINGAN', '1472022', 'DENNIS LAWINDRA KURDI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1421, 'IN162', 'ADMINISTRASI JARINGAN', '1472025', 'EDWARD KURNIAWAN', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1422, 'IN162', 'ADMINISTRASI JARINGAN', '1472044', 'M RIZKI PUTRA UTAMA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1423, 'IN162', 'ADMINISTRASI JARINGAN', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1424, 'IN162', 'ADMINISTRASI JARINGAN', '1472047', 'PAULUS APRIYANTO', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1425, 'IN162', 'ADMINISTRASI JARINGAN', '1472049', 'YOSEPH AUDRIAN', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1426, 'IN162', 'ADMINISTRASI JARINGAN', '1472050', 'NALA SANJAY RAJ', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1427, 'IN162', 'ADMINISTRASI JARINGAN', '1472062', 'DAVID CHRISTIAN ADITYA GUNADI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1428, 'IN162', 'ADMINISTRASI JARINGAN', '1472075', 'MARWIN LIENARDI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1429, 'IN162', 'ADMINISTRASI JARINGAN', '1472084', 'YEREMIA DANANG PRIAMBODO', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1430, 'IN162', 'ADMINISTRASI JARINGAN', '1572012', 'ZIAVANIWATI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1431, 'IN162', 'ADMINISTRASI JARINGAN', '1572020', 'RIZKI RIKSAZANY', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1432, 'IN162', 'ADMINISTRASI JARINGAN', '1572021', 'KELVIN SENTOSA', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1433, 'IN162', 'ADMINISTRASI JARINGAN', '1572024', 'YOHANES SUHANDI', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1434, 'IN162', 'ADMINISTRASI JARINGAN', '1572049', 'SARAH ULA LUTFIAH', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1435, 'IN162', 'ADMINISTRASI JARINGAN', '1572052', 'RACHMI RACHMADIANY', 'A', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Internet I', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1436, 'IN163', 'WEB SEMANTIK', '1172140', 'ROKKI GINTING', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1437, 'IN163', 'WEB SEMANTIK', '1372033', 'SANVIER', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1438, 'IN163', 'WEB SEMANTIK', '1372040', 'ANDREAS WIBISANA TONADI', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1439, 'IN163', 'WEB SEMANTIK', '1372043', 'SEAN MARSHALL HERAWAN', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1440, 'IN163', 'WEB SEMANTIK', '1372053', 'BAYU KRISTIADHI MULIASETIA', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1441, 'IN163', 'WEB SEMANTIK', '1372056', 'BERNADETHA YULIANA ASARIBAB', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1442, 'IN163', 'WEB SEMANTIK', '1372092', 'FIKRI RAMADHAN JUFRI', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1443, 'IN163', 'WEB SEMANTIK', '1472022', 'DENNIS LAWINDRA KURDI', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1444, 'IN163', 'WEB SEMANTIK', '1472025', 'EDWARD KURNIAWAN', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1445, 'IN163', 'WEB SEMANTIK', '1472032', 'JONATHAN CHRISTIE', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1446, 'IN163', 'WEB SEMANTIK', '1472034', 'WILLIAM SILVANUS', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1447, 'IN163', 'WEB SEMANTIK', '1472042', 'YOSHUA ANDI SANTOSA', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1448, 'IN163', 'WEB SEMANTIK', '1472045', 'MUCHAMMAD ADZI ALIF PAMUNGKAS', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1449, 'IN163', 'WEB SEMANTIK', '1472055', 'BAMBANG PRASETYA HALIM', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1450, 'IN163', 'WEB SEMANTIK', '1472072', 'FAJAR WAHYUDI PUTERA', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1451, 'IN163', 'WEB SEMANTIK', '1572017', 'PRICILLIA CLAUDIA ALFONS', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1452, 'IN163', 'WEB SEMANTIK', '1572022', 'CARINA NATALIA', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1453, 'IN163', 'WEB SEMANTIK', '1572032', 'RAMADHITA PRATAMAWIRYA JIAN', 'A', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1454, 'MK017', 'PANCASILA', '1272104', 'MONICA AGLORIA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1455, 'MK017', 'PANCASILA', '1372036', 'SILVESTER RANGGA SURYA NUGROHO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1456, 'MK017', 'PANCASILA', '1372097', 'WILSON SEMBIRING', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1457, 'MK017', 'PANCASILA', '1472052', 'REYNALDO EKO ARWIANTO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1458, 'MK017', 'PANCASILA', '1672078', 'SAMUEL KRISTIANTO DEA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1459, 'MK017', 'PANCASILA', '1772001', 'VINCENT GUNAERI', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1460, 'MK017', 'PANCASILA', '1772002', 'EDWARD KARNADI HUSIN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1461, 'MK017', 'PANCASILA', '1772004', 'JONATHAN BERNAD', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1462, 'MK017', 'PANCASILA', '1772011', 'KEVIN NOVANTUS PRATAMA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1463, 'MK017', 'PANCASILA', '1772012', 'KAFKA FEBIANTO AGIHARTA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1464, 'MK017', 'PANCASILA', '1772014', 'KELVIN', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1465, 'MK017', 'PANCASILA', '1772015', 'MUHAMAD ILHAM RAMDHAN KUSUMA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1466, 'MK017', 'PANCASILA', '1772022', 'YOSMART PANGIDOAN BARAKHIEL', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1467, 'MK017', 'PANCASILA', '1772025', 'SYAHRIO SANTOSO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1468, 'MK017', 'PANCASILA', '1772030', 'AVINASH', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1469, 'MK017', 'PANCASILA', '1772033', 'JEREMIA ROTUA SIANTURI', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1470, 'MK017', 'PANCASILA', '1772035', 'ALFIENSIUS SALEPPANG', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1471, 'MK017', 'PANCASILA', '1772037', 'SUGIONO', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1472, 'MK017', 'PANCASILA', '1772038', 'REINALDI GEMILANG SETIAWAN POETRA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1473, 'MK017', 'PANCASILA', '1772045', 'EGGY HERLANDY', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1474, 'MK017', 'PANCASILA', '1772050', 'NANDI AGUNG PERMANA', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1475, 'MK017', 'PANCASILA', '1772051', 'JONNY', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1476, 'MK017', 'PANCASILA', '1772903', 'JOEY RIVALDO SIMANJUNTAK', 'A', 2, 'Senin', '09:30:00', '11:30:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H04C03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1477, 'MK017', 'PANCASILA', '1472023', 'DANIEL LIMARGA SUBIYANTO', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1478, 'MK017', 'PANCASILA', '1572044', 'G\'RAY FRIDEY GIZEL WIDJAYA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1479, 'MK017', 'PANCASILA', '1672010', 'NEVIN SYAHPUTRA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1480, 'MK017', 'PANCASILA', '1772003', 'IGNATIUS GIOVAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1481, 'MK017', 'PANCASILA', '1772005', 'CELINE LIESHIANA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1482, 'MK017', 'PANCASILA', '1772006', 'FEBRINA ANASTASHA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1483, 'MK017', 'PANCASILA', '1772008', 'RONALD ADI SETIAWAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1484, 'MK017', 'PANCASILA', '1772009', 'YOSEF YEHEZKIEL IRSYAM', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485, 'MK017', 'PANCASILA', '1772010', 'SILVIA TIFFANI', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1486, 'MK017', 'PANCASILA', '1772013', 'JOSHUA SUHERLAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1487, 'MK017', 'PANCASILA', '1772016', 'NICOLAVICKH YOHANES', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1488, 'MK017', 'PANCASILA', '1772017', 'JOHNSON HARTANTO', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1489, 'MK017', 'PANCASILA', '1772019', 'ALDI MALDIANO TADE', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1490, 'MK017', 'PANCASILA', '1772020', 'ANASTASIA LEVINA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1491, 'MK017', 'PANCASILA', '1772023', 'STEFANUS HERMAWAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1492, 'MK017', 'PANCASILA', '1772026', 'STEVEN RUMANTO HARNANDY', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1493, 'MK017', 'PANCASILA', '1772028', 'MULYADI DHARMAWAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1494, 'MK017', 'PANCASILA', '1772029', 'ALINA VANDARINA ABDULKARIM', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1495, 'MK017', 'PANCASILA', '1772031', 'ZALDY IGNATIUS AUW', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1496, 'MK017', 'PANCASILA', '1772032', 'SULTHAN TAQI RABBANI', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1497, 'MK017', 'PANCASILA', '1772039', 'KELVIN SUSANTO', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1498, 'MK017', 'PANCASILA', '1772040', 'DANIEL ELIEZER', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1499, 'MK017', 'PANCASILA', '1772041', 'NATASYA DEY', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500, 'MK017', 'PANCASILA', '1772042', 'YOGA PRATAMA YULIANTO', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1501, 'MK017', 'PANCASILA', '1772043', 'ALEXIUS SURYA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1502, 'MK017', 'PANCASILA', '1772044', 'ROY PARSAORAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1503, 'MK017', 'PANCASILA', '1772046', 'ARIYANTO SANI', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504, 'MK017', 'PANCASILA', '1772048', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1505, 'MK017', 'PANCASILA', '1772049', 'ARIEF KURNIAWAN', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1506, 'MK017', 'PANCASILA', '1772052', 'TIAZ RIZQY AMANDHA', 'B', 2, 'Senin', '15:00:00', '17:00:00', '850004', 'Swat Lie Liliawati, SH., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1507, 'BS201', 'ARSITEKTUR BISNIS', '1673015', 'VIDAL RIO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1508, 'BS201', 'ARSITEKTUR BISNIS', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1509, 'BS201', 'ARSITEKTUR BISNIS', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1510, 'BS201', 'ARSITEKTUR BISNIS', '1773003', 'YASINTA KURNIA WIJAYA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1511, 'BS201', 'ARSITEKTUR BISNIS', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1512, 'BS201', 'ARSITEKTUR BISNIS', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1513, 'BS201', 'ARSITEKTUR BISNIS', '1773007', 'NIKITA DEVY HARYONO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1514, 'BS201', 'ARSITEKTUR BISNIS', '1773008', 'LUCKY', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1515, 'BS201', 'ARSITEKTUR BISNIS', '1773009', 'YOLITA FELICIA KURNIA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1516, 'BS201', 'ARSITEKTUR BISNIS', '1773010', 'FELIX SURYA HALIM,LIM', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1517, 'BS201', 'ARSITEKTUR BISNIS', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1518, 'BS201', 'ARSITEKTUR BISNIS', '1773012', 'HANS CHRISTIAN', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1519, 'BS201', 'ARSITEKTUR BISNIS', '1773014', 'HERMANTO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1520, 'BS201', 'ARSITEKTUR BISNIS', '1773015', 'PRINCESSA SALOMINA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1521, 'BS201', 'ARSITEKTUR BISNIS', '1773016', 'ANTHONIUS HENDRIYANTO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1522, 'BS201', 'ARSITEKTUR BISNIS', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1523, 'BS201', 'ARSITEKTUR BISNIS', '1773018', 'JOSHUA STEFANUSLEE', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1524, 'BS201', 'ARSITEKTUR BISNIS', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1525, 'BS201', 'ARSITEKTUR BISNIS', '1773020', 'FERRY KURNIAWAN', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1526, 'BS201', 'ARSITEKTUR BISNIS', '1773021', 'SYLVIA PRINCESA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1527, 'BS201', 'ARSITEKTUR BISNIS', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1528, 'BS201', 'ARSITEKTUR BISNIS', '1773023', 'JEANNETH FALENSCA ALFONS', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1529, 'BS201', 'ARSITEKTUR BISNIS', '1773024', 'ANDIKA WIRAWAN', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1530, 'BS201', 'ARSITEKTUR BISNIS', '1773026', 'REJA PANGESTU', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1531, 'BS201', 'ARSITEKTUR BISNIS', '1773027', 'CALVIN EMANUEL TOREH', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1532, 'BS201', 'ARSITEKTUR BISNIS', '1773028', 'KENNEF', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1533, 'BS201', 'ARSITEKTUR BISNIS', '1773029', 'SARA AMELIA ROSADI', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1534, 'BS201', 'ARSITEKTUR BISNIS', '1773030', 'WIKKY ALDO WIJAYA', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1535, 'BS201', 'ARSITEKTUR BISNIS', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1536, 'BS201', 'ARSITEKTUR BISNIS', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1537, 'BS201', 'ARSITEKTUR BISNIS', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'A', 3, 'kamis', '15:00:00', '17:30:00', '730010', 'Saron Kurniawati Yefta, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1538, 'BS202', 'PROSES BISNIS', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1539, 'BS202', 'PROSES BISNIS', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1540, 'BS202', 'PROSES BISNIS', '1773007', 'NIKITA DEVY HARYONO', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1541, 'BS202', 'PROSES BISNIS', '1773009', 'YOLITA FELICIA KURNIA', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1542, 'BS202', 'PROSES BISNIS', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1543, 'BS202', 'PROSES BISNIS', '1773026', 'REJA PANGESTU', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1544, 'BS202', 'PROSES BISNIS', '1773028', 'KENNEF', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1545, 'BS202', 'PROSES BISNIS', '1773029', 'SARA AMELIA ROSADI', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1546, 'BS202', 'PROSES BISNIS', '1773030', 'WIKKY ALDO WIJAYA', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1547, 'BS202', 'PROSES BISNIS', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1548, 'BS202', 'PROSES BISNIS', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1549, 'BS202', 'PROSES BISNIS', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'A', 3, 'Jumat', '13:30:00', '18:00:00', '730001', 'Radiant Victor Imbar, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1550, 'BS202', 'PROSES BISNIS', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1551, 'BS202', 'PROSES BISNIS', '1773003', 'YASINTA KURNIA WIJAYA', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1552, 'BS202', 'PROSES BISNIS', '1773005', 'DANIEL SEPTIAN WIJAYA', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1553, 'BS202', 'PROSES BISNIS', '1773008', 'LUCKY', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1554, 'BS202', 'PROSES BISNIS', '1773010', 'FELIX SURYA HALIM,LIM', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1555, 'BS202', 'PROSES BISNIS', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1556, 'BS202', 'PROSES BISNIS', '1773012', 'HANS CHRISTIAN', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1557, 'BS202', 'PROSES BISNIS', '1773014', 'HERMANTO', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1558, 'BS202', 'PROSES BISNIS', '1773015', 'PRINCESSA SALOMINA', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1559, 'BS202', 'PROSES BISNIS', '1773016', 'ANTHONIUS HENDRIYANTO', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1560, 'BS202', 'PROSES BISNIS', '1773018', 'JOSHUA STEFANUSLEE', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1561, 'BS202', 'PROSES BISNIS', '1773019', 'ILEVEN REYNARA CUNGJAN', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1562, 'BS202', 'PROSES BISNIS', '1773020', 'FERRY KURNIAWAN', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1563, 'BS202', 'PROSES BISNIS', '1773021', 'SYLVIA PRINCESA', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1564, 'BS202', 'PROSES BISNIS', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1565, 'BS202', 'PROSES BISNIS', '1773023', 'JEANNETH FALENSCA ALFONS', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1566, 'BS202', 'PROSES BISNIS', '1773024', 'ANDIKA WIRAWAN', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1567, 'BS202', 'PROSES BISNIS', '1773027', 'CALVIN EMANUEL TOREH', 'B', 3, 'Selasa', '07:00:00', '12:00:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1568, 'BS203', 'BASIS DATA', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1569, 'BS203', 'BASIS DATA', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1570, 'BS203', 'BASIS DATA', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1571, 'BS203', 'BASIS DATA', '1773003', 'YASINTA KURNIA WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1572, 'BS203', 'BASIS DATA', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1573, 'BS203', 'BASIS DATA', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1574, 'BS203', 'BASIS DATA', '1773007', 'NIKITA DEVY HARYONO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1575, 'BS203', 'BASIS DATA', '1773008', 'LUCKY', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1576, 'BS203', 'BASIS DATA', '1773009', 'YOLITA FELICIA KURNIA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1577, 'BS203', 'BASIS DATA', '1773010', 'FELIX SURYA HALIM,LIM', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1578, 'BS203', 'BASIS DATA', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1579, 'BS203', 'BASIS DATA', '1773012', 'HANS CHRISTIAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1580, 'BS203', 'BASIS DATA', '1773014', 'HERMANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1581, 'BS203', 'BASIS DATA', '1773015', 'PRINCESSA SALOMINA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1582, 'BS203', 'BASIS DATA', '1773016', 'ANTHONIUS HENDRIYANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1583, 'BS203', 'BASIS DATA', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1584, 'BS203', 'BASIS DATA', '1773018', 'JOSHUA STEFANUSLEE', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1585, 'BS203', 'BASIS DATA', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1586, 'BS203', 'BASIS DATA', '1773020', 'FERRY KURNIAWAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1587, 'BS203', 'BASIS DATA', '1773021', 'SYLVIA PRINCESA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1588, 'BS203', 'BASIS DATA', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1589, 'BS203', 'BASIS DATA', '1773023', 'JEANNETH FALENSCA ALFONS', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1590, 'BS203', 'BASIS DATA', '1773024', 'ANDIKA WIRAWAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1591, 'BS203', 'BASIS DATA', '1773026', 'REJA PANGESTU', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1592, 'BS203', 'BASIS DATA', '1773027', 'CALVIN EMANUEL TOREH', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1593, 'BS203', 'BASIS DATA', '1773028', 'KENNEF', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1594, 'BS203', 'BASIS DATA', '1773029', 'SARA AMELIA ROSADI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1595, 'BS203', 'BASIS DATA', '1773030', 'WIKKY ALDO WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1596, 'BS203', 'BASIS DATA', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1597, 'BS203', 'BASIS DATA', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1598, 'BS203', 'BASIS DATA', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1599, 'BS204', 'ALGORITMA PEMROGRAMAN', '1173014', 'HENDY JUN HIN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1600, 'BS204', 'ALGORITMA PEMROGRAMAN', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1601, 'BS204', 'ALGORITMA PEMROGRAMAN', '1473002', 'FERDINAND ALESSANDRO H', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1602, 'BS204', 'ALGORITMA PEMROGRAMAN', '1473003', 'ANDY ANDRYAN K', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1603, 'BS204', 'ALGORITMA PEMROGRAMAN', '1473006', 'DIANA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1604, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1605, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1606, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1607, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773007', 'NIKITA DEVY HARYONO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1608, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773008', 'LUCKY', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1609, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773009', 'YOLITA FELICIA KURNIA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1610, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773010', 'FELIX SURYA HALIM,LIM', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1611, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1612, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773012', 'HANS CHRISTIAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1613, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773014', 'HERMANTO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1614, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1615, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773018', 'JOSHUA STEFANUSLEE', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1616, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1617, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773020', 'FERRY KURNIAWAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1618, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773024', 'ANDIKA WIRAWAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1619, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773027', 'CALVIN EMANUEL TOREH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1620, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773029', 'SARA AMELIA ROSADI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1621, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773030', 'WIKKY ALDO WIJAYA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1622, 'BS204', 'ALGORITMA PEMROGRAMAN', '1273024', 'RINALDI ADLIRAHMAN S', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1623, 'BS204', 'ALGORITMA PEMROGRAMAN', '1373031', 'DANIEL A HENDRIK', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1624, 'BS204', 'ALGORITMA PEMROGRAMAN', '1573008', 'HENDRIK SLAMET SETIAWAN', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1625, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1626, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773003', 'YASINTA KURNIA WIJAYA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1627, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773015', 'PRINCESSA SALOMINA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1628, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773016', 'ANTHONIUS HENDRIYANTO', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1629, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773021', 'SYLVIA PRINCESA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1630, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1631, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773023', 'JEANNETH FALENSCA ALFONS', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1632, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773026', 'REJA PANGESTU', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1633, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773028', 'KENNEF', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1634, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773031', 'HARYO BAGAS ASSYAFAH', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1635, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773032', 'INVO CAVIT LUAHAMBOWO', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1636, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1637, 'BS204', 'ALGORITMA PEMROGRAMAN', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'B', 3, 'Rabu', '12:30:00', '15:00:00', '730011', 'Setia Budi, S.Kom., M.Com.', 'Lab Adv. 4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1638, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1639, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1273019', 'YONATHAN SURYA PERDANA', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1640, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1373031', 'DANIEL A HENDRIK', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1641, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1573008', 'HENDRIK SLAMET SETIAWAN', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1642, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1643, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1644, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773008', 'LUCKY', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1645, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773012', 'HANS CHRISTIAN', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1646, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773014', 'HERMANTO', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1647, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773018', 'JOSHUA STEFANUSLEE', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1648, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1649, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773020', 'FERRY KURNIAWAN', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1650, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773024', 'ANDIKA WIRAWAN', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1651, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773027', 'CALVIN EMANUEL TOREH', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1652, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1653, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 3, 'Senin', '07:00:00', '11:30:00', '720001', 'Hendra Bunyamin, S.Si., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1654, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1655, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1656, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1673901', 'TAROMALI', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1657, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1658, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773003', 'YASINTA KURNIA WIJAYA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1659, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1660, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773007', 'NIKITA DEVY HARYONO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1661, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773009', 'YOLITA FELICIA KURNIA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1662, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773010', 'FELIX SURYA HALIM,LIM', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1663, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1664, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773015', 'PRINCESSA SALOMINA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1665, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773016', 'ANTHONIUS HENDRIYANTO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1666, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773017', 'ALBERT EVAN NATANAEL TANU', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1667, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773021', 'SYLVIA PRINCESA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1668, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1669, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773023', 'JEANNETH FALENSCA ALFONS', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1670, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773026', 'REJA PANGESTU', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1671, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773028', 'KENNEF', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1672, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773029', 'SARA AMELIA ROSADI', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1673, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773030', 'WIKKY ALDO WIJAYA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1674, 'BS205', 'PEMROGRAMAN BERORIENTASI OBJEK', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '720080', 'Tjatur Kandaga, S.Si., MT.', 'Lab Database', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1675, 'BS206', 'BAHASA INGGRIS II', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1676, 'BS206', 'BAHASA INGGRIS II', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1677, 'BS206', 'BAHASA INGGRIS II', '1773003', 'YASINTA KURNIA WIJAYA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1678, 'BS206', 'BAHASA INGGRIS II', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1679, 'BS206', 'BAHASA INGGRIS II', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1680, 'BS206', 'BAHASA INGGRIS II', '1773007', 'NIKITA DEVY HARYONO', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1681, 'BS206', 'BAHASA INGGRIS II', '1773008', 'LUCKY', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1682, 'BS206', 'BAHASA INGGRIS II', '1773009', 'YOLITA FELICIA KURNIA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1683, 'BS206', 'BAHASA INGGRIS II', '1773010', 'FELIX SURYA HALIM,LIM', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1684, 'BS206', 'BAHASA INGGRIS II', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1685, 'BS206', 'BAHASA INGGRIS II', '1773012', 'HANS CHRISTIAN', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1686, 'BS206', 'BAHASA INGGRIS II', '1773014', 'HERMANTO', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1687, 'BS206', 'BAHASA INGGRIS II', '1773015', 'PRINCESSA SALOMINA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1688, 'BS206', 'BAHASA INGGRIS II', '1773016', 'ANTHONIUS HENDRIYANTO', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1689, 'BS206', 'BAHASA INGGRIS II', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1690, 'BS206', 'BAHASA INGGRIS II', '1773018', 'JOSHUA STEFANUSLEE', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1691, 'BS206', 'BAHASA INGGRIS II', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1692, 'BS206', 'BAHASA INGGRIS II', '1773020', 'FERRY KURNIAWAN', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1693, 'BS206', 'BAHASA INGGRIS II', '1773021', 'SYLVIA PRINCESA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1694, 'BS206', 'BAHASA INGGRIS II', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1695, 'BS206', 'BAHASA INGGRIS II', '1773023', 'JEANNETH FALENSCA ALFONS', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1696, 'BS206', 'BAHASA INGGRIS II', '1773024', 'ANDIKA WIRAWAN', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1697, 'BS206', 'BAHASA INGGRIS II', '1773026', 'REJA PANGESTU', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1698, 'BS206', 'BAHASA INGGRIS II', '1773027', 'CALVIN EMANUEL TOREH', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1699, 'BS206', 'BAHASA INGGRIS II', '1773028', 'KENNEF', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1700, 'BS206', 'BAHASA INGGRIS II', '1773029', 'SARA AMELIA ROSADI', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1701, 'BS206', 'BAHASA INGGRIS II', '1773030', 'WIKKY ALDO WIJAYA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1702, 'BS206', 'BAHASA INGGRIS II', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1703, 'BS206', 'BAHASA INGGRIS II', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1704, 'BS206', 'BAHASA INGGRIS II', '1773902', 'RAKA ADHIPRAMANA FAADHILAH', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1705, 'BS206', 'BAHASA INGGRIS II', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 2, 'Senin', '12:30:00', '14:30:00', '710005L', 'Peter Hyong Jik Kim, BFA.M.A', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1706, 'BS401', 'KONSEP E-BISNIS', '1273019', 'YONATHAN SURYA PERDANA', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1707, 'BS401', 'KONSEP E-BISNIS', '1773003', 'YASINTA KURNIA WIJAYA', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1708, 'BS401', 'KONSEP E-BISNIS', '1773015', 'PRINCESSA SALOMINA', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1709, 'BS401', 'KONSEP E-BISNIS', '1773016', 'ANTHONIUS HENDRIYANTO', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1710, 'BS401', 'KONSEP E-BISNIS', '1773021', 'SYLVIA PRINCESA', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1711, 'BS401', 'KONSEP E-BISNIS', '1773022', 'MEGA INJELIA TESALONIKA SELANNO', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1712, 'BS401', 'KONSEP E-BISNIS', '1773023', 'JEANNETH FALENSCA ALFONS', 'A', 3, 'Senin', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Multimedia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1713, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1273019', 'YONATHAN SURYA PERDANA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1714, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673001', 'RANGGA ADIKUSUMA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1715, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673002', 'VICTOR KURNIAWAN', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1716, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1717, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673004', 'EFDI DERIAN DANI', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1718, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673005', 'MALAIKA FERDYANSYAH', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1719, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1720, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673007', 'MAURA GERALDA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1721, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1722, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1723, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673010', 'ABI VEGARI', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1724, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1725, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673012', 'RYAN SETYONO', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1726, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1727, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673014', 'HENDRA AGUS TINUS', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1728, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673015', 'VIDAL RIO', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1729, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673016', 'JOSHIA YEREMIA', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1730, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1731, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1732, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1733, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1734, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673021', 'NOVIA RORO DOROJATUN', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1735, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1736, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1737, 'BS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'A', 3, 'Rabu', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1738, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1739, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1740, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1473014', 'GORGA HOT MARTUA PAKPAHAN', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1741, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673001', 'RANGGA ADIKUSUMA', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1742, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673002', 'VICTOR KURNIAWAN', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1743, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1744, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673004', 'EFDI DERIAN DANI', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1745, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673005', 'MALAIKA FERDYANSYAH', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1746, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1747, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673007', 'MAURA GERALDA', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1748, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1749, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1750, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673010', 'ABI VEGARI', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1751, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1752, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673012', 'RYAN SETYONO', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1753, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673014', 'HENDRA AGUS TINUS', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1754, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673015', 'VIDAL RIO', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1755, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673016', 'JOSHIA YEREMIA', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1756, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1757, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1758, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1759, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1760, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673021', 'NOVIA RORO DOROJATUN', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1761, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1762, 'BS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'A', 3, 'Kamis', '09:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1764, 'BS404', 'PEMROGRAMAN WEB', '1173014', 'HENDY JUN HIN', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1765, 'BS404', 'PEMROGRAMAN WEB', '1673001', 'RANGGA ADIKUSUMA', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1766, 'BS404', 'PEMROGRAMAN WEB', '1673002', 'VICTOR KURNIAWAN', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1767, 'BS404', 'PEMROGRAMAN WEB', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1768, 'BS404', 'PEMROGRAMAN WEB', '1673004', 'EFDI DERIAN DANI', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1769, 'BS404', 'PEMROGRAMAN WEB', '1673005', 'MALAIKA FERDYANSYAH', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1770, 'BS404', 'PEMROGRAMAN WEB', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1771, 'BS404', 'PEMROGRAMAN WEB', '1673007', 'MAURA GERALDA', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1772, 'BS404', 'PEMROGRAMAN WEB', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1773, 'BS404', 'PEMROGRAMAN WEB', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1774, 'BS404', 'PEMROGRAMAN WEB', '1673010', 'ABI VEGARI', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1775, 'BS404', 'PEMROGRAMAN WEB', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1776, 'BS404', 'PEMROGRAMAN WEB', '1673012', 'RYAN SETYONO', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1777, 'BS404', 'PEMROGRAMAN WEB', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1778, 'BS404', 'PEMROGRAMAN WEB', '1673014', 'HENDRA AGUS TINUS', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1779, 'BS404', 'PEMROGRAMAN WEB', '1673015', 'VIDAL RIO', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1780, 'BS404', 'PEMROGRAMAN WEB', '1673016', 'JOSHIA YEREMIA', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1781, 'BS404', 'PEMROGRAMAN WEB', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1782, 'BS404', 'PEMROGRAMAN WEB', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1783, 'BS404', 'PEMROGRAMAN WEB', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1784, 'BS404', 'PEMROGRAMAN WEB', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1785, 'BS404', 'PEMROGRAMAN WEB', '1673021', 'NOVIA RORO DOROJATUN', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1786, 'BS404', 'PEMROGRAMAN WEB', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1787, 'BS404', 'PEMROGRAMAN WEB', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1788, 'BS404', 'PEMROGRAMAN WEB', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1789, 'BS404', 'PEMROGRAMAN WEB', '1673901', 'TAROMALI', 'A', 4, 'Jumat', '07:00:00', '15:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1790, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1791, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1173014', 'HENDY JUN HIN', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1792, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1793, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1794, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1795, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1373031', 'DANIEL A HENDRIK', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1796, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1373037', 'MUHAMMAD ZAKI EKONUGROHO', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1797, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1473003', 'ANDY ANDRYAN K', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1798, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1473006', 'DIANA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1799, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1473013', 'KEVIN CHRISTOFFEL YOANTO', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1800, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1801, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673007', 'MAURA GERALDA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1802, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1803, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673014', 'HENDRA AGUS TINUS', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1804, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'A', 4, 'Senin', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1805, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1473010', 'LIMIKIF BELUSI TANTRA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1806, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673001', 'RANGGA ADIKUSUMA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1807, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673002', 'VICTOR KURNIAWAN', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1808, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1809, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673004', 'EFDI DERIAN DANI', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1810, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673005', 'MALAIKA FERDYANSYAH', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1811, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1812, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1813, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673010', 'ABI VEGARI', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1814, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1815, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673012', 'RYAN SETYONO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1816, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1817, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673015', 'VIDAL RIO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1818, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673016', 'JOSHIA YEREMIA', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1819, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1820, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1821, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1822, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1823, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673021', 'NOVIA RORO DOROJATUN', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1824, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673022', 'NANDA WIDYA SITANGGANG', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1825, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1826, 'BS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'B', 4, 'Selasa', '12:30:00', '17:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1827, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1828, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673001', 'RANGGA ADIKUSUMA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1829, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673002', 'VICTOR KURNIAWAN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1830, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1831, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673004', 'EFDI DERIAN DANI', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1832, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673005', 'MALAIKA FERDYANSYAH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1833, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1834, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1835, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673010', 'ABI VEGARI', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1836, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1837, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673012', 'RYAN SETYONO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1838, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1839, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673014', 'HENDRA AGUS TINUS', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1840, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673015', 'VIDAL RIO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1841, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673016', 'JOSHIA YEREMIA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1842, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1843, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1844, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673021', 'NOVIA RORO DOROJATUN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1845, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1846, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1847, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1848, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1673901', 'TAROMALI', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1849, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773001', 'GILBERTH GIANDY TARUNA KESUMAH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1850, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773002', 'RICKY MARCIANNO PUTRA PERMANA TAHIR', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1851, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773004', 'WILLYAM ZEFANYA LEOWARDI', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1852, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773005', 'DANIEL SEPTIAN WIJAYA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1853, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773007', 'NIKITA DEVY HARYONO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1854, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773008', 'LUCKY', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1855, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773009', 'YOLITA FELICIA KURNIA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1856, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773010', 'FELIX SURYA HALIM,LIM', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1857, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773011', 'STEFANUS EMMANUEL CHANDRA WIJAYA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1858, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773012', 'HANS CHRISTIAN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1859, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773014', 'HERMANTO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1860, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773017', 'ALBERT EVAN NATANAEL TANU', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1861, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773018', 'JOSHUA STEFANUSLEE', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1862, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773019', 'ILEVEN REYNARA CUNGJAN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1863, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773024', 'ANDIKA WIRAWAN', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1864, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773027', 'CALVIN EMANUEL TOREH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1865, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773029', 'SARA AMELIA ROSADI', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1866, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773030', 'WIKKY ALDO WIJAYA', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1867, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773031', 'HARYO BAGAS ASSYAFAH', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1868, 'BS406', 'KEWIRAUSAHAAN TEKNOLOGI INFORMASI', '1773032', 'INVO CAVIT LUAHAMBOWO', 'A', 2, 'Kamis', '07:30:00', '09:30:00', '720286', 'Julianti Kasih, SE., M.Kom.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1869, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1870, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1373023', 'LEO PAMUNGKAS NASUTION', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1871, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1373031', 'DANIEL A HENDRIK', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1872, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673001', 'RANGGA ADIKUSUMA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1873, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673002', 'VICTOR KURNIAWAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1874, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1875, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673004', 'EFDI DERIAN DANI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1876, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673005', 'MALAIKA FERDYANSYAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1877, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1878, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673007', 'MAURA GERALDA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1879, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1880, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1881, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673010', 'ABI VEGARI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1882, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1883, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673012', 'RYAN SETYONO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1884, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1885, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673014', 'HENDRA AGUS TINUS', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1886, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673015', 'VIDAL RIO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1887, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673016', 'JOSHIA YEREMIA', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1888, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1889, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1890, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1891, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1892, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673021', 'NOVIA RORO DOROJATUN', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1893, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1894, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673023', 'RASHONA ATWINDA WIJAYANTO', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1895, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1896, 'BS407', 'KEAMANAN SISTEM INFORMASI', '1673901', 'TAROMALI', 'A', 3, 'Rabu', '09:30:00', '12:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1897, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1898, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1173014', 'HENDY JUN HIN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1899, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1273019', 'YONATHAN SURYA PERDANA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1900, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1901, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1373023', 'LEO PAMUNGKAS NASUTION', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1902, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1373030', 'YOGI YODHA PRAWIRA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1903, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1373031', 'DANIEL A HENDRIK', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1904, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1473014', 'GORGA HOT MARTUA PAKPAHAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1905, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573001', 'NUCKY VILANO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1906, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1907, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1908, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1909, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1910, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1911, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573008', 'HENDRIK SLAMET SETIAWAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1912, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1913, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1914, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573011', 'RIYAN HARIANTO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1915, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573012', 'IVAN CHENDANA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1916, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573013', 'ERVANDY TAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1917, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1918, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573016', 'GIANETHA SUGIANTO', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1919, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573018', 'ANDRE CHRISTIAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1920, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1921, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1573022', 'STEVEN FERNANDO PURBA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1922, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1673007', 'MAURA GERALDA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1923, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1673009', 'HENDRIK ADITYA FANGENANE ZEGA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1924, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1673902', 'ADHIE DHARMAWAN', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1925, 'BS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'A', 3, 'Selasa', '12:30:00', '15:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1926, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1273011', 'FLORENTIA STEFFANI FEBRIANTY', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1927, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1373023', 'LEO PAMUNGKAS NASUTION', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1928, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1473003', 'ANDY ANDRYAN K', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1929, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1473013', 'KEVIN CHRISTOFFEL YOANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1930, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573001', 'NUCKY VILANO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1931, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1932, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1933, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1934, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1935, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1936, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1937, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1938, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573011', 'RIYAN HARIANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1939, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573012', 'IVAN CHENDANA', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1940, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573013', 'ERVANDY TAN', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1941, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1942, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573016', 'GIANETHA SUGIANTO', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1943, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573018', 'ANDRE CHRISTIAN', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1944, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1945, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1573022', 'STEVEN FERNANDO PURBA', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1946, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1673901', 'TAROMALI', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1947, 'BS602', 'IMPLEMENTASI DAN INTEGRASI SISTEM', '1673902', 'ADHIE DHARMAWAN', 'A', 3, 'Rabu', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1948, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1173006', 'KEVIN STEVANUS', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1949, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1950, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1173014', 'HENDY JUN HIN', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1951, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1952, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1173043', 'YUNITARI V PATANDUK', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1953, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1954, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1373030', 'YOGI YODHA PRAWIRA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1955, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573001', 'NUCKY VILANO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1956, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1957, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1958, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1959, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1960, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1961, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1962, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1963, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573011', 'RIYAN HARIANTO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1964, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573012', 'IVAN CHENDANA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1965, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573013', 'ERVANDY TAN', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1966, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1967, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573016', 'GIANETHA SUGIANTO', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1968, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573018', 'ANDRE CHRISTIAN', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1969, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1970, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1573022', 'STEVEN FERNANDO PURBA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1971, 'BS603', 'PENGEMBANGAN APLIKASI ENTERPRISE', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'A', 4, 'Selasa', '07:00:00', '09:30:00', '730015', 'Niko Ibrahim, S.Kom., MInfoTech.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1972, 'BS604', 'STRATEGI PENELITIAN', '1273024', 'RINALDI ADLIRAHMAN S', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1973, 'BS604', 'STRATEGI PENELITIAN', '1373023', 'LEO PAMUNGKAS NASUTION', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1974, 'BS604', 'STRATEGI PENELITIAN', '1373030', 'YOGI YODHA PRAWIRA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1975, 'BS604', 'STRATEGI PENELITIAN', '1373031', 'DANIEL A HENDRIK', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1976, 'BS604', 'STRATEGI PENELITIAN', '1473003', 'ANDY ANDRYAN K', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1977, 'BS604', 'STRATEGI PENELITIAN', '1473013', 'KEVIN CHRISTOFFEL YOANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1978, 'BS604', 'STRATEGI PENELITIAN', '1573001', 'NUCKY VILANO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1979, 'BS604', 'STRATEGI PENELITIAN', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1980, 'BS604', 'STRATEGI PENELITIAN', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1981, 'BS604', 'STRATEGI PENELITIAN', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1982, 'BS604', 'STRATEGI PENELITIAN', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1983, 'BS604', 'STRATEGI PENELITIAN', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1984, 'BS604', 'STRATEGI PENELITIAN', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1985, 'BS604', 'STRATEGI PENELITIAN', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1986, 'BS604', 'STRATEGI PENELITIAN', '1573011', 'RIYAN HARIANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1987, 'BS604', 'STRATEGI PENELITIAN', '1573012', 'IVAN CHENDANA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1988, 'BS604', 'STRATEGI PENELITIAN', '1573013', 'ERVANDY TAN', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1989, 'BS604', 'STRATEGI PENELITIAN', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1990, 'BS604', 'STRATEGI PENELITIAN', '1573016', 'GIANETHA SUGIANTO', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1991, 'BS604', 'STRATEGI PENELITIAN', '1573018', 'ANDRE CHRISTIAN', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1992, 'BS604', 'STRATEGI PENELITIAN', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1993, 'BS604', 'STRATEGI PENELITIAN', '1573022', 'STEVEN FERNANDO PURBA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1994, 'BS604', 'STRATEGI PENELITIAN', '1673901', 'TAROMALI', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1995, 'BS604', 'STRATEGI PENELITIAN', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 2, 'Rabu', '15:00:00', '17:00:00', '720003', 'Andi Wahyu Rahardjo Emanuel, Dr., B.S.E.E., M.S.S.E.', 'Lab Prog. 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1996, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1173042', 'HENGKI SATRIADI HUTABARAT', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1997, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1473003', 'ANDY ANDRYAN K', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1998, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1473008', 'IHVAL VALIAN', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1999, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1473012', 'BEATRICE FRIEDA PONDAAG', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2000, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1473013', 'KEVIN CHRISTOFFEL YOANTO', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2001, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1473014', 'GORGA HOT MARTUA PAKPAHAN', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2002, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2003, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2004, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2005, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1573022', 'STEVEN FERNANDO PURBA', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2006, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673003', 'GABRIELLA VENEZIA MICHELLE RUMONDOR', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2007, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673004', 'EFDI DERIAN DANI', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2008, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673005', 'MALAIKA FERDYANSYAH', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2009, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673006', 'DAVID AGUSTIN HERMAN SUSILO', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2010, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673007', 'MAURA GERALDA', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2011, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673008', 'ZEFANYA LAKSA SUHERMAN', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2012, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673011', 'MAWIA MUHASYAISA RAHMANIA', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2013, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673012', 'RYAN SETYONO', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2014, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2015, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673018', 'CINDY CHATRIN KEZIA YONAIN', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2016, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673019', 'RAFAEL STEVI OKTAVIAN S', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2017, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673020', 'RIFA ELLIDA DUROTULL HIKMAH', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2018, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673021', 'NOVIA RORO DOROJATUN', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2019, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673022', 'NANDA WIDYA SITANGGANG', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2020, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673024', 'VINA PANDUWINATA SIDABUTAR', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2021, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1673901', 'TAROMALI', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2022, 'BS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'A', 3, 'Kamis', '15:00:00', '17:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H04C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2023, 'BS606', 'KERJA PRAKTEK', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 3, 'Selasa', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2024, 'BS606', 'KERJA PRAKTEK', '1573901', 'WILFANDI ASER HIZKIA SAMOSIR', 'A', 3, 'Selasa', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2025, 'BS606', 'KERJA PRAKTEK', '1673902', 'ADHIE DHARMAWAN', 'A', 3, 'Selasa', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2026, 'BS606', 'KERJA PRAKTEK', '1773901', 'FIDELIS ALFREDO GADOSEDA', 'A', 3, 'Selasa', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2027, 'BS606', 'KERJA PRAKTEK', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 3, 'Selasa', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2028, 'BS703', 'SEMINAR TUGAS AKHIR', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(2029, 'BS703', 'SEMINAR TUGAS AKHIR', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2030, 'BS703', 'SEMINAR TUGAS AKHIR', '1173042', 'HENGKI SATRIADI HUTABARAT', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2031, 'BS703', 'SEMINAR TUGAS AKHIR', '1173043', 'YUNITARI V PATANDUK', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2032, 'BS703', 'SEMINAR TUGAS AKHIR', '1373021', 'THEO RIANDY', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2033, 'BS703', 'SEMINAR TUGAS AKHIR', '1373030', 'YOGI YODHA PRAWIRA', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2034, 'BS703', 'SEMINAR TUGAS AKHIR', '1473002', 'FERDINAND ALESSANDRO H', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2035, 'BS703', 'SEMINAR TUGAS AKHIR', '1573001', 'NUCKY VILANO', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2036, 'BS703', 'SEMINAR TUGAS AKHIR', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2037, 'BS703', 'SEMINAR TUGAS AKHIR', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2038, 'BS703', 'SEMINAR TUGAS AKHIR', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2039, 'BS703', 'SEMINAR TUGAS AKHIR', '1573016', 'GIANETHA SUGIANTO', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2040, 'BS703', 'SEMINAR TUGAS AKHIR', '1573018', 'ANDRE CHRISTIAN', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2041, 'BS703', 'SEMINAR TUGAS AKHIR', '1573901', 'WILFANDI ASER HIZKIA SAMOSIR', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2042, 'BS703', 'SEMINAR TUGAS AKHIR', '1673901', 'TAROMALI', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2043, 'BS703', 'SEMINAR TUGAS AKHIR', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 2, 'Senin', '10:00:00', '12:00:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2044, 'BS801', 'KAPITA SELEKTA', '1473008', 'IHVAL VALIAN', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2045, 'BS801', 'KAPITA SELEKTA', '1573001', 'NUCKY VILANO', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2046, 'BS801', 'KAPITA SELEKTA', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2047, 'BS801', 'KAPITA SELEKTA', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2048, 'BS801', 'KAPITA SELEKTA', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2049, 'BS801', 'KAPITA SELEKTA', '1673902', 'ADHIE DHARMAWAN', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2050, 'BS801', 'KAPITA SELEKTA', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 3, 'Jumat', '15:00:00', '17:30:00', '720212', 'Daniel Jahja Surjawan, S.Kom., MT.', 'H05B10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2051, 'BS802', 'TUGAS AKHIR', '1173004', 'SHELLA PERMANA', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2052, 'BS802', 'TUGAS AKHIR', '1173006', 'KEVIN STEVANUS', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2053, 'BS802', 'TUGAS AKHIR', '1173012', 'CHRISTOPHER DECKY A.W', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2054, 'BS802', 'TUGAS AKHIR', '1173014', 'HENDY JUN HIN', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2055, 'BS802', 'TUGAS AKHIR', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2056, 'BS802', 'TUGAS AKHIR', '1173042', 'HENGKI SATRIADI HUTABARAT', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2057, 'BS802', 'TUGAS AKHIR', '1173043', 'YUNITARI V PATANDUK', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2058, 'BS802', 'TUGAS AKHIR', '1273019', 'YONATHAN SURYA PERDANA', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2059, 'BS802', 'TUGAS AKHIR', '1273040', 'DANIEL FREDYSON SIANIPAR', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2060, 'BS802', 'TUGAS AKHIR', '1373010', 'ADRIAN GAMALIEL', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2061, 'BS802', 'TUGAS AKHIR', '1373021', 'THEO RIANDY', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2062, 'BS802', 'TUGAS AKHIR', '1373037', 'MUHAMMAD ZAKI EKONUGROHO', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2063, 'BS802', 'TUGAS AKHIR', '1473002', 'FERDINAND ALESSANDRO H', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2064, 'BS802', 'TUGAS AKHIR', '1473006', 'DIANA', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2065, 'BS802', 'TUGAS AKHIR', '1473008', 'IHVAL VALIAN', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2066, 'BS802', 'TUGAS AKHIR', '1473009', 'EDBERT KELVIN NUGROHO', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2067, 'BS802', 'TUGAS AKHIR', '1473010', 'LIMIKIF BELUSI TANTRA', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2068, 'BS802', 'TUGAS AKHIR', '1473012', 'BEATRICE FRIEDA PONDAAG', 'A', 4, 'Senin', '12:30:00', '14:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2069, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1373023', 'LEO PAMUNGKAS NASUTION', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2070, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1373031', 'DANIEL A HENDRIK', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2071, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573003', 'LOUDRY PALMARUMS MUSTAMU', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2072, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2073, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573008', 'HENDRIK SLAMET SETIAWAN', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2074, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2075, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573010', 'GAYUS ELIEZER ARYANTO', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2076, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573011', 'RIYAN HARIANTO', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2077, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573012', 'IVAN CHENDANA', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2078, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573013', 'ERVANDY TAN', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2079, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2080, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573016', 'GIANETHA SUGIANTO', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2081, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573018', 'ANDRE CHRISTIAN', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2082, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2083, 'BS902', 'SISTEM PENDUKUNG KEPUTUSAN', '1573022', 'STEVEN FERNANDO PURBA', 'A', 3, 'Selasa', '15:00:00', '17:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2084, 'BS904', 'MANAJEMEN RESIKO', '1173028', 'DEWANTI RAMAYANA SIGALINGGING', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2085, 'BS904', 'MANAJEMEN RESIKO', '1473003', 'ANDY ANDRYAN K', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2086, 'BS904', 'MANAJEMEN RESIKO', '1473008', 'IHVAL VALIAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2087, 'BS904', 'MANAJEMEN RESIKO', '1473012', 'BEATRICE FRIEDA PONDAAG', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2088, 'BS904', 'MANAJEMEN RESIKO', '1473013', 'KEVIN CHRISTOFFEL YOANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2089, 'BS904', 'MANAJEMEN RESIKO', '1473014', 'GORGA HOT MARTUA PAKPAHAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2090, 'BS904', 'MANAJEMEN RESIKO', '1573001', 'NUCKY VILANO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2091, 'BS904', 'MANAJEMEN RESIKO', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2092, 'BS904', 'MANAJEMEN RESIKO', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2093, 'BS904', 'MANAJEMEN RESIKO', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2094, 'BS904', 'MANAJEMEN RESIKO', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2095, 'BS904', 'MANAJEMEN RESIKO', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2096, 'BS904', 'MANAJEMEN RESIKO', '1573011', 'RIYAN HARIANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2097, 'BS904', 'MANAJEMEN RESIKO', '1573012', 'IVAN CHENDANA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2098, 'BS904', 'MANAJEMEN RESIKO', '1573013', 'ERVANDY TAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2099, 'BS904', 'MANAJEMEN RESIKO', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2100, 'BS904', 'MANAJEMEN RESIKO', '1573016', 'GIANETHA SUGIANTO', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2101, 'BS904', 'MANAJEMEN RESIKO', '1573018', 'ANDRE CHRISTIAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2102, 'BS904', 'MANAJEMEN RESIKO', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2103, 'BS904', 'MANAJEMEN RESIKO', '1573022', 'STEVEN FERNANDO PURBA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2104, 'BS904', 'MANAJEMEN RESIKO', '1773904', 'ANTHONY HARUN HETHARIA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '720287', 'Sen Yung, S.Kom., MT.', 'H05C01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2105, 'BS910', 'ETHICAL HACKING 2', '1673013', 'R. WIBY PRAWIRA KUSUMAH', 'A', 4, 'Kamis', '12:30:00', '16:00:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Prog.2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2106, 'BS911', 'REKAYASA PROSES BISNIS', '1473002', 'FERDINAND ALESSANDRO H', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2107, 'BS911', 'REKAYASA PROSES BISNIS', '1473014', 'GORGA HOT MARTUA PAKPAHAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2108, 'BS911', 'REKAYASA PROSES BISNIS', '1573001', 'NUCKY VILANO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2109, 'BS911', 'REKAYASA PROSES BISNIS', '1573002', 'HANS CHRISTIAN HARTANTO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2110, 'BS911', 'REKAYASA PROSES BISNIS', '1573004', 'ADIEL LOUISE AMANDUS ARYANTO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2111, 'BS911', 'REKAYASA PROSES BISNIS', '1573006', 'GIOVANNI MATTHEW REYNALDO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2112, 'BS911', 'REKAYASA PROSES BISNIS', '1573007', 'ARIEL ELBERT BUDIMAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2113, 'BS911', 'REKAYASA PROSES BISNIS', '1573009', 'BOBBY HARTANTO WIJAYA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2114, 'BS911', 'REKAYASA PROSES BISNIS', '1573011', 'RIYAN HARIANTO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2115, 'BS911', 'REKAYASA PROSES BISNIS', '1573012', 'IVAN CHENDANA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2116, 'BS911', 'REKAYASA PROSES BISNIS', '1573013', 'ERVANDY TAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2117, 'BS911', 'REKAYASA PROSES BISNIS', '1573015', 'ALDI DWIPUTRA WIJAYA', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2118, 'BS911', 'REKAYASA PROSES BISNIS', '1573016', 'GIANETHA SUGIANTO', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2119, 'BS911', 'REKAYASA PROSES BISNIS', '1573018', 'ANDRE CHRISTIAN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2120, 'BS911', 'REKAYASA PROSES BISNIS', '1573021', 'RIZAL FACHMI ABIDIN', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2121, 'BS911', 'REKAYASA PROSES BISNIS', '1673017', 'ALLEN ROY STEVENSON WAWONDATU. JR.', 'A', 3, 'Senin', '07:00:00', '09:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2122, 'MK039', 'BAHASA INDONESIA', '1473008', 'IHVAL VALIAN', 'A', 2, 'Selasa', '07:00:00', '09:00:00', '320064', 'Rosida Tiurma Manurung, Dr., M.Hum.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2123, 'MK060', 'FENOMENOLOGI AGAMA', '1473008', 'IHVAL VALIAN', 'A', 2, 'Rabu', '09:30:00', '11:30:00', '850023L', 'PDT. HADA ANDRIATA, DPS.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2124, 'MK060', 'FENOMENOLOGI AGAMA', '1473012', 'BEATRICE FRIEDA PONDAAG', 'A', 2, 'Rabu', '09:30:00', '11:30:00', '850023L', 'PDT. HADA ANDRIATA, DPS.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2125, 'XI051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1474004', 'ALIEM SOFYAN ARPAN', 'M', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2126, 'XI053', 'STRATEGI ALGORITMIK', '1474008', 'GILANG WIGUNA', 'M', 2, 'Senin', '17:30:00', '19:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2127, 'XI060', 'PENGANTAR KECERDASAN BUATAN', '1474004', 'ALIEM SOFYAN ARPAN', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2128, 'XI060', 'PENGANTAR KECERDASAN BUATAN', '1474008', 'GILANG WIGUNA', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2129, 'XI076', 'POLA DESAIN PERANGKAT LUNAK', '1474008', 'GILANG WIGUNA', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '720314', 'Billy Susanto Panca, S.T., M.T', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2130, 'XI079', 'ETHICAL HACKING 2', '1474008', 'GILANG WIGUNA', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '720246', 'Timotius Witono, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2131, 'XI080', 'TUGAS AKHIR', '1474002', 'DARWAN DANIEL SARAGIH', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2132, 'XI080', 'TUGAS AKHIR', '1474004', 'ALIEM SOFYAN ARPAN', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2133, 'XI080', 'TUGAS AKHIR', '1474008', 'GILANG WIGUNA', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2134, 'XI080', 'TUGAS AKHIR', '1574001', 'TEGAR CHANDRA GUNAWAN', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2135, 'XI080', 'TUGAS AKHIR', '1574002', 'RIZKY PRATAMA SITUMORANG', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2136, 'XI162', 'Administrasi Jaringan', '1474004', 'ALIEM SOFYAN ARPAN', 'M', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2137, 'XI163', 'Web Semantik', '1474004', 'ALIEM SOFYAN ARPAN', 'M', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2138, 'XI163', 'Web Semantik', '1474008', 'GILANG WIGUNA', 'M', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2139, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2140, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775002', 'DELVI EKA SARI', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2141, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775003', 'NURY NUR\'AINI', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2142, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775005', 'AKBAR SIDIK MAULANA', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2143, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2144, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2145, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2146, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775009', 'SEFTI MELINDA', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2147, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2148, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2149, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775012', 'WILNA MAULANI', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2150, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2151, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775014', 'GINTA DERA', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2152, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2153, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775016', 'VANY AGATA ROSADI', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2154, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2155, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775018', 'RINA ADRIANTI', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2156, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775019', 'NURQALBI CHAIRUL', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2157, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775020', 'VIKY FAUZY YUNUS', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2158, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775021', 'MIFTAHUL HASAN', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2159, 'XS402', 'SISTEM INFORMASI AKUNTANSI DAN KEUANGAN', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 3, 'Selasa', '15:00:00', '19:30:00', '730009', 'Doro Edi, ST., M.Kom.', 'Lab Ent. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2160, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2161, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775002', 'DELVI EKA SARI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2162, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775003', 'NURY NUR\'AINI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2163, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775005', 'AKBAR SIDIK MAULANA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2164, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2165, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2166, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2167, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775009', 'SEFTI MELINDA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2168, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2169, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2170, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775012', 'WILNA MAULANI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2171, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2172, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775014', 'GINTA DERA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2173, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2174, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775016', 'VANY AGATA ROSADI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2175, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2176, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775018', 'RINA ADRIANTI', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2177, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775019', 'NURQALBI CHAIRUL', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2178, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775020', 'VIKY FAUZY YUNUS', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2179, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775021', 'MIFTAHUL HASAN', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2180, 'XS403', 'ADMINISTRASI DAN KONFIGURASI SISTEM ENTERPRISE', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 3, 'Selasa', '07:00:00', '09:30:00', '710071', 'Tiur Gantini, ST., MT.', 'Lab Prog. 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2181, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2182, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775002', 'DELVI EKA SARI', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2183, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775003', 'NURY NUR\'AINI', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2184, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775005', 'AKBAR SIDIK MAULANA', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2185, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2186, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2187, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2188, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775009', 'SEFTI MELINDA', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2189, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2190, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2191, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775012', 'WILNA MAULANI', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2192, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2193, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775014', 'GINTA DERA', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2194, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2195, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775016', 'VANY AGATA ROSADI', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2196, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2197, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775018', 'RINA ADRIANTI', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2198, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775019', 'NURQALBI CHAIRUL', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2199, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775020', 'VIKY FAUZY YUNUS', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2200, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775021', 'MIFTAHUL HASAN', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2201, 'XS405', 'PEMROGRAMAN BERORIENTASI OBJEK LANJUT', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2202, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2203, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775002', 'DELVI EKA SARI', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2204, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775003', 'NURY NUR\'AINI', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2205, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775005', 'AKBAR SIDIK MAULANA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2206, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2207, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2208, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2209, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775009', 'SEFTI MELINDA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2210, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2211, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2212, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775012', 'WILNA MAULANI', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2213, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2214, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775014', 'GINTA DERA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2215, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2216, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775016', 'VANY AGATA ROSADI', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2217, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2218, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775018', 'RINA ADRIANTI', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2219, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775019', 'NURQALBI CHAIRUL', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2220, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775020', 'VIKY FAUZY YUNUS', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2221, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775021', 'MIFTAHUL HASAN', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2222, 'XS601', 'PEMODELAN SISTEM INFORMASI LANJUT', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '730049', 'Adelia, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2223, 'XS605', 'KONTROL DAN AUDIT SISTEM INFORMASI', '1775005', 'AKBAR SIDIK MAULANA', 'A', 3, 'Jumat', '13:00:00', '15:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'H05C06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2224, 'XS701', 'KECERDASAN BISNIS', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2225, 'XS701', 'KECERDASAN BISNIS', '1775002', 'DELVI EKA SARI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2226, 'XS701', 'KECERDASAN BISNIS', '1775003', 'NURY NUR\'AINI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2227, 'XS701', 'KECERDASAN BISNIS', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2228, 'XS701', 'KECERDASAN BISNIS', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2229, 'XS701', 'KECERDASAN BISNIS', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2230, 'XS701', 'KECERDASAN BISNIS', '1775009', 'SEFTI MELINDA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2231, 'XS701', 'KECERDASAN BISNIS', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2232, 'XS701', 'KECERDASAN BISNIS', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2233, 'XS701', 'KECERDASAN BISNIS', '1775012', 'WILNA MAULANI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2234, 'XS701', 'KECERDASAN BISNIS', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2235, 'XS701', 'KECERDASAN BISNIS', '1775014', 'GINTA DERA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2236, 'XS701', 'KECERDASAN BISNIS', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2237, 'XS701', 'KECERDASAN BISNIS', '1775016', 'VANY AGATA ROSADI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2238, 'XS701', 'KECERDASAN BISNIS', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2239, 'XS701', 'KECERDASAN BISNIS', '1775018', 'RINA ADRIANTI', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2240, 'XS701', 'KECERDASAN BISNIS', '1775019', 'NURQALBI CHAIRUL', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2241, 'XS701', 'KECERDASAN BISNIS', '1775020', 'VIKY FAUZY YUNUS', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2242, 'XS701', 'KECERDASAN BISNIS', '1775021', 'MIFTAHUL HASAN', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2243, 'XS701', 'KECERDASAN BISNIS', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 3, 'Jumat', '07:00:00', '09:30:00', '710001', 'Risal, ST., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2244, 'XS802', 'TUGAS AKHIR', '1575008', 'CYINTHIA VITRI DEWI SRI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2245, 'XS802', 'TUGAS AKHIR', '1775001', 'SHAFA ZAHRAH MAYLINDIA', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2246, 'XS802', 'TUGAS AKHIR', '1775002', 'DELVI EKA SARI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2247, 'XS802', 'TUGAS AKHIR', '1775003', 'NURY NUR\'AINI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2248, 'XS802', 'TUGAS AKHIR', '1775005', 'AKBAR SIDIK MAULANA', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2249, 'XS802', 'TUGAS AKHIR', '1775006', 'YUDA PRAMUDHYA YUSUF', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2250, 'XS802', 'TUGAS AKHIR', '1775007', 'FARIDA MARITO HUTAJULU', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2251, 'XS802', 'TUGAS AKHIR', '1775008', 'SARAH KYLA YASMIN GUMILAR', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2252, 'XS802', 'TUGAS AKHIR', '1775009', 'SEFTI MELINDA', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2253, 'XS802', 'TUGAS AKHIR', '1775010', 'IVAN TRIXIE LASAMAHU', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2254, 'XS802', 'TUGAS AKHIR', '1775011', 'ELDORADO SETIADY MARLIN SIHOMBING', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2255, 'XS802', 'TUGAS AKHIR', '1775012', 'WILNA MAULANI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2256, 'XS802', 'TUGAS AKHIR', '1775013', 'SISCA PEBRIANI MARPAUNG', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2257, 'XS802', 'TUGAS AKHIR', '1775014', 'GINTA DERA', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2258, 'XS802', 'TUGAS AKHIR', '1775015', 'ARINDRA RIZKI S PURBA', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2259, 'XS802', 'TUGAS AKHIR', '1775016', 'VANY AGATA ROSADI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(2260, 'XS802', 'TUGAS AKHIR', '1775017', 'REGINA NATHANIA DJEPAPU', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2261, 'XS802', 'TUGAS AKHIR', '1775018', 'RINA ADRIANTI', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2262, 'XS802', 'TUGAS AKHIR', '1775019', 'NURQALBI CHAIRUL', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2263, 'XS802', 'TUGAS AKHIR', '1775020', 'VIKY FAUZY YUNUS', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2264, 'XS802', 'TUGAS AKHIR', '1775021', 'MIFTAHUL HASAN', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2265, 'XS802', 'TUGAS AKHIR', '1775022', 'CITRA DEWI SIDABUTAR', 'A', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2266, 'XI051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2267, 'XI051', 'PEMROGRAMAN BERORIENTASI OBJEK 2 B', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 4, 'Jumat', '17:30:00', '22:00:00', '730062', 'Sendy Ferdian Sujadi, S.Kom.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2268, 'XI053', 'STRATEGI ALGORITMIK', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 2, 'Senin', '17:30:00', '19:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2269, 'XI053', 'STRATEGI ALGORITMIK', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 2, 'Senin', '17:30:00', '19:30:00', '720282', 'Andreas Widjaja, S.Si., M.Sc., Ph.D.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2270, 'XI060', 'PENGANTAR KECERDASAN BUATAN', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2271, 'XI060', 'PENGANTAR KECERDASAN BUATAN', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 3, 'Rabu', '17:30:00', '21:30:00', '710004', 'Dr. Hapnes Toba, M.Sc.  ', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2272, 'XI080', 'TUGAS AKHIR', '1377003', 'ERRI ERLANGGA KUSWADI', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2273, 'XI080', 'TUGAS AKHIR', '1477004', 'ADIT SATRIYA', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2274, 'XI080', 'TUGAS AKHIR', '1577010', 'QORI MAULUDDIAH', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2275, 'XI080', 'TUGAS AKHIR', '1577011', 'SANNIE RAGISTIA', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2276, 'XI080', 'TUGAS AKHIR', '1677002', 'ANDY MULYADI PARDOSI', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2277, 'XI080', 'TUGAS AKHIR', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2278, 'XI080', 'TUGAS AKHIR', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 4, 'Sabtu', '09:30:00', '10:30:00', '720211', 'Diana Trivena Yulianti, S.Kom., MT.', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2279, 'XI162', 'Administrasi Jaringan', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2280, 'XI162', 'Administrasi Jaringan', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 4, 'Selasa', '17:30:00', '22:00:00', '710003', 'Djoni Setiawan Kartawihardja, ST., MT.', 'Lab Networking', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2281, 'XI163', 'Web Semantik', '1777001', 'TRACY DAMERIA ANASTASIA PASARIBU', 'M', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2282, 'XI163', 'Web Semantik', '1777002', 'SALITHA CHRISTIANI BR GINTING', 'M', 4, 'Kamis', '17:30:00', '22:00:00', '720062', 'Dr. Bernard Renaldy Suteja, S.Kom., M.Kom', 'Lab Adv 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `namaDosen` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tanggalLahir` date NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `streamlink` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` bigint(1) NOT NULL,
  `experience` bigint(1) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `about` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nik`, `namaDosen`, `email`, `fakultas`, `prodi`, `alamat`, `kota`, `gender`, `tanggalLahir`, `telephone`, `streamlink`, `password`, `level`, `experience`, `foto`, `warna`, `status`, `role`, `about`, `created_at`, `updated_at`) VALUES
(1, '720723', 'Mushi', 'mushi@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jalan Kaktus no 15', 'Bandung', 'Pria', '1989-11-17', '08122147502', 'UCpSPS5yLCxYRuZSrCx-eBjA', 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani dengan sepenuh hati', '2017-11-16 21:30:09', '2017-11-16 21:30:09'),
(2, '720721', 'Rahmat', 'rahmat@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jalan raya Kopo no 15', 'Bandung', 'Pria', '1970-01-01', '08122312455', 'UCPsopTKQfSgW9XdYkKA6Gdw', 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 21:38:20', '2018-01-13 11:26:32'),
(3, '720140', 'Dr. Ir. Mewati Ayub, M.T.', 'mewati.ayub@it.maranatha.edu', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Suria Sumantri 65', 'Bandung', 'Wanita', '2005-05-19', '08122116770', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', NULL, '2018-01-30 00:58:46', '2018-01-30 00:58:46'),
(4, '720302', 'Maresha Caroline Wijanto, S.Kom., M.T.', 'maresha.caroline@itmaranatha.org ', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Suria Sumantri 65', 'Bandung', 'Wanita', '2005-05-19', '08122116770', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', NULL, '2018-01-30 00:58:46', '2018-01-30 00:58:46'),
(5, '710004', 'Dr. Hapnes Toba, M. Sc., IPM', 'hapnestoba@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Pria', '1980-01-09', '08122312455', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 21:38:20', '2018-01-13 11:26:32'),
(6, '720314', 'Billy Susanto P., S.T., M.T.', 'billy.sp@it.maranatha.edu', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Pria', '1980-01-09', '08965383833', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 21:38:20', '2018-01-13 11:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `forecasting`
--

CREATE TABLE `forecasting` (
  `id` int(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `gaya` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forecasting`
--

INSERT INTO `forecasting` (`id`, `nrp`, `gaya`, `nama`, `created_at`, `updated_at`) VALUES
(11, '1472088', 'visual', 'Steven Yong', '2017-12-10 18:50:04', NULL),
(15, '1472002', 'kinestetik', 'Elvina', '2017-12-10 12:00:33', '2018-02-07 00:49:56'),
(17, '1472010', 'auditori', 'Raynald Wishmahardja', '2017-12-10 12:07:01', '2018-02-07 00:49:56'),
(19, '1572007', 'visual', 'Andre sutanto', '2017-12-10 12:11:06', '2018-02-07 00:49:56'),
(21, '1572017', 'auditori', 'Starry', '2017-12-10 23:46:45', '2018-02-07 00:49:56'),
(23, '1472013', 'auditori', 'Jason Alexander', '2017-12-11 01:02:55', '2018-02-07 00:49:56'),
(26, '1472011', 'auditori', 'James Asrah Immanuel', '2018-01-15 15:58:29', '2018-02-07 00:56:12'),
(28, '1772048', 'auditori', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', '2018-02-06 12:29:46', '2018-02-07 00:56:12'),
(29, '1672053', 'visual', 'YEREMIA EGA SEPTIA NUGRAHA', '2018-02-06 12:30:34', '2018-02-07 00:56:12'),
(30, '1772040', 'visual', 'DANIEL ELIEZER', '2018-02-06 12:31:39', '2018-02-07 00:56:12'),
(32, '1772038', 'auditori', 'REINALDI GEMILANG SETIAWAN POETRA', '2018-02-06 12:33:22', '2018-02-07 01:03:00'),
(33, '1772021', 'visual', 'THEO ALEKSANDER WILLIAM', '2018-02-06 12:33:24', '2018-02-07 01:03:00'),
(34, '1772029', 'visual', 'ALINA VANDARINA ABDULKARIM', '2018-02-06 12:33:38', '2018-02-07 01:03:00'),
(37, '1572033', 'auditori', 'RIZALDI CAKRA ADIPRATAMA', '2018-02-07 02:18:51', '2018-02-07 01:03:00'),
(38, '1772030', 'auditori', 'AVINASH', '2018-02-07 11:54:51', '2018-02-07 11:54:51'),
(39, '1772044', 'kinestetik', 'ROY PARSAORAN', '2018-02-07 11:55:03', '2018-02-07 11:55:03'),
(40, '1772023', 'kinestetik', 'STEFANUS HERMAWAN', '2018-02-07 11:55:48', '2018-02-07 11:55:48'),
(41, '1772031', 'auditori', 'ZALDY IGNATIUS AUW', '2018-02-07 11:56:00', '2018-02-07 11:56:00'),
(42, '1772026', 'kinestetik', 'STEVEN RUMANTO HARNANDY', '2018-02-07 11:56:41', '2018-02-07 11:56:41'),
(43, '1772039', 'auditori', 'KELVIN SUSANTO', '2018-02-07 11:56:48', '2018-02-07 11:56:48'),
(44, '1772049', 'visual', 'ARIEF KURNIAWAN', '2018-02-07 11:56:50', '2018-02-07 11:56:50'),
(45, '1772012', 'visual', 'KAFKA FEBIANTO AGIHARTA', '2018-02-07 11:56:54', '2018-02-07 11:56:54'),
(46, '1772008', 'visual', 'RONALD ADI SETIAWAN', '2018-02-07 11:57:03', '2018-02-07 11:57:03'),
(47, '1772043', 'visual', 'ALEXIUS SURYA', '2018-02-07 11:57:07', '2018-02-07 11:57:07'),
(48, '1772046', 'visual', 'ARIYANTO SANI', '2018-02-07 11:57:12', '2018-02-07 11:57:12'),
(49, '1772005', 'visual', 'CELINE LIESHIANA', '2018-02-07 11:57:35', '2018-02-07 11:57:35'),
(50, '1772051', 'visual', 'JONNY', '2018-02-07 11:57:36', '2018-02-07 11:57:36'),
(51, '1772004', 'auditori', 'JONATHAN BERNAD', '2018-02-07 11:58:07', '2018-02-07 11:58:07'),
(52, '1672039', 'auditori', 'ANDRIANUS ALVIEN', '2018-02-12 16:27:27', '2018-02-12 16:27:27'),
(53, '1672020', 'visual', 'HANSON HENDRAWAN', '2018-02-12 16:28:17', '2018-02-12 16:28:17'),
(54, '1672050', 'auditori', 'TOMMY', '2018-02-12 16:30:43', '2018-02-12 16:30:43'),
(55, '1672903', 'visual', 'RANGGA WIRIAPUTRA', '2018-02-12 16:31:53', '2018-02-12 16:31:53'),
(56, '1672062', 'visual', 'JOSHUA EKA PUTRA JUWARNO', '2018-02-12 16:32:39', '2018-02-12 16:32:39'),
(57, '1672025', 'kinestetik', 'ARTHUR DAMARWULAN', '2018-02-12 16:32:46', '2018-02-12 16:32:46'),
(58, '1672038', 'auditori', 'ERICO APRIANUS', '2018-02-12 16:35:28', '2018-02-12 16:35:28'),
(59, '1672034', 'auditori', 'ALFIN LIUNARDI SENJAYA', '2018-02-12 16:39:28', '2018-02-12 16:39:28'),
(60, '1672017', 'auditori', 'RICARDO FRANCLINTON', '2018-02-15 08:44:51', '2018-02-15 08:44:51'),
(61, '1672041', 'auditori', 'SAMUEL GODJALI', '2018-02-15 08:45:28', '2018-02-15 08:45:28'),
(62, '1672076', 'visual', 'DENNIS AGUSTINUS', '2018-02-15 08:45:32', '2018-02-15 08:45:32'),
(63, '1672009', 'auditori', 'EDWIN SATRIA INDRAWAN', '2018-02-15 08:45:49', '2018-02-15 08:45:49'),
(64, '1672058', 'auditori', 'WILLIAM', '2018-02-15 08:46:06', '2018-02-15 08:46:06'),
(65, '1672057', 'auditori', 'LUTHFI DWI NUGRAHA', '2018-02-15 08:46:37', '2018-02-15 08:46:37'),
(66, '1672040', 'visual', 'SHAFIRA PUTRI KURNIAWAN', '2018-02-15 08:47:14', '2018-02-15 08:47:14'),
(67, '1672002', 'auditori', 'JIMMY PURNAWAN', '2018-02-15 08:47:14', '2018-02-15 08:47:14'),
(68, '1672037', 'auditori', 'RIKY ANDREAS SAPUTRA', '2018-02-15 08:47:19', '2018-02-15 08:47:19'),
(69, '1672013', 'kinestetik', 'BRYAN', '2018-02-15 08:47:23', '2018-02-15 08:47:23'),
(70, '1672022', 'visual', 'CHRISTIAN', '2018-02-15 08:47:32', '2018-02-15 08:47:32'),
(71, '1672029', 'visual', 'HENRY TIMOTHY HALIM NURADI', '2018-02-15 08:47:37', '2018-02-15 08:47:37'),
(72, '1672066', 'auditori', 'YAFET RAPHAEL', '2018-02-15 08:47:38', '2018-02-15 08:47:38'),
(73, '1672052', 'auditori', 'NAOMI HELLYNA MAKALEW', '2018-02-15 08:47:49', '2018-02-15 08:47:49'),
(74, '1672043', 'auditori', 'ALVIN ATMACENDANA', '2018-02-15 08:47:58', '2018-02-15 08:47:58'),
(75, '1672006', 'visual', 'CHRISTIAN CHASTRO', '2018-02-15 08:48:36', '2018-02-15 08:48:36'),
(76, '1672067', 'kinestetik', 'JELBIN JONI', '2018-02-15 08:49:03', '2018-02-15 08:49:03'),
(77, '1672051', 'kinestetik', 'LUKAS HANSEL GANDA', '2018-02-15 08:49:11', '2018-02-15 08:49:11'),
(78, '1672030', 'visual', 'RADEN KASYFI AGHITYA NATADILAGA', '2018-02-15 08:49:12', '2018-02-15 08:49:12'),
(79, '1672054', 'auditori', 'ADITYA WIRYA YUTAMA', '2018-02-15 08:50:03', '2018-02-15 08:50:03'),
(80, '1772033', 'visual', 'JEREMIA ROTUA SIANTURI', '2018-03-20 09:52:31', '2018-03-20 09:52:31'),
(81, '1772019', 'visual', 'ALDI MALDIANO TADE', '2018-03-20 09:59:06', '2018-03-20 09:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jawabanisian`
--

CREATE TABLE `jawabanisian` (
  `id` int(255) NOT NULL,
  `jawabanmhs` longtext NOT NULL,
  `start` datetime NOT NULL,
  `finish` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `jawabanGambar` varchar(255) DEFAULT NULL,
  `keterangan` longtext,
  `bobot` int(255) DEFAULT NULL,
  `idMhs` int(255) NOT NULL,
  `idTournament` int(255) DEFAULT NULL,
  `idBanksoal` int(255) DEFAULT NULL,
  `idsoalisian` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawabanisian`
--

INSERT INTO `jawabanisian` (`id`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `jawabanGambar`, `keterangan`, `bobot`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalisian`, `created_at`, `updated_at`) VALUES
(7, 'array dua dimensi', '2017-12-10 22:42:18', '2017-12-10 22:42:18', '2017-12-10 22:42:18', 'benar', NULL, NULL, NULL, 5, 20, 2, 3, '2017-12-09 11:58:20', '2017-12-10 15:46:06'),
(11, 'array', '2017-12-11 01:05:32', '2017-12-11 01:05:32', '2017-12-11 01:05:32', 'benar', NULL, NULL, NULL, 5, 20, 2, 2, '2017-12-10 00:59:21', '2017-12-10 11:05:32'),
(12, 'print(A[3])', '2017-12-10 22:29:15', '2017-12-10 22:29:15', '2017-12-10 22:29:15', 'benar', NULL, NULL, NULL, 5, 20, 2, 6, '2017-12-10 01:04:45', '2017-12-10 08:29:15'),
(13, 'Juni', '2017-12-10 23:39:33', '2017-12-10 23:39:33', '2017-12-10 23:39:33', 'benar', NULL, NULL, NULL, 5, 20, 2, 5, '2017-12-10 06:09:17', '2017-12-10 16:45:07'),
(14, 'arr = [NONE]*5', '2017-12-11 00:00:54', '2017-12-11 00:00:54', '2017-12-11 00:00:54', 'benar', NULL, NULL, NULL, 5, 20, 2, 4, '2017-12-10 08:22:20', '2017-12-10 10:00:54'),
(17, 'apa aja dah', '2017-12-10 23:45:40', '2017-12-10 23:45:40', '2017-12-10 23:45:40', 'salah', NULL, NULL, NULL, 2, 20, 2, 4, '2017-12-10 08:34:20', '2017-12-10 09:45:40'),
(18, 'Juni', '2017-12-10 23:46:33', '2017-12-10 23:46:33', '2017-12-10 23:46:33', 'benar', NULL, NULL, NULL, 2, 20, 2, 5, '2017-12-10 08:34:25', '2017-12-10 09:46:33'),
(19, 'coba coba', '2017-12-10 23:46:16', '2017-12-10 23:46:16', '2017-12-10 23:46:16', 'salah', NULL, NULL, NULL, 2, 20, 2, 6, '2017-12-10 08:34:28', '2017-12-10 16:47:20'),
(20, 'raynald', '2017-12-10 23:47:40', '2017-12-10 23:47:40', '2017-12-10 23:47:40', 'salah', NULL, NULL, NULL, 2, 20, 2, 2, '2017-12-10 08:34:33', '2017-12-10 09:47:40'),
(21, 'array dua dimensi', '2017-12-10 22:43:41', '2017-12-10 22:43:41', '2017-12-10 22:43:41', 'benar', NULL, NULL, NULL, 2, 20, 2, 3, '2017-12-10 08:43:41', '2017-12-10 08:43:41'),
(27, 'array', '2017-12-11 13:16:57', '2017-12-11 13:16:57', '2017-12-11 13:16:57', 'benar', NULL, NULL, NULL, 2, 21, 2, 2, '2017-12-10 17:59:15', '2017-12-10 23:16:57'),
(28, 'array dua dimensi', '2017-12-11 10:58:27', '2017-12-11 10:58:27', '2017-12-11 10:58:27', 'benar', NULL, NULL, NULL, 2, 21, 2, 3, '2017-12-10 17:59:40', '2017-12-10 20:58:27'),
(29, 'lupa', '2017-12-11 13:19:29', '2017-12-11 13:19:29', '2017-12-11 13:19:29', 'salah', NULL, NULL, NULL, 2, 21, 2, 4, '2017-12-10 17:59:44', '2017-12-10 23:19:29'),
(30, 'Juni', '2017-12-11 13:34:51', '2017-12-11 13:34:51', '2017-12-11 13:34:51', 'benar', NULL, NULL, NULL, 2, 21, 2, 5, '2017-12-10 17:59:48', '2017-12-10 23:34:51'),
(31, 'apa weh', '2017-12-11 13:18:59', '2017-12-11 13:18:59', '2017-12-11 13:18:59', 'salah', NULL, NULL, NULL, 2, 21, 2, 6, '2017-12-10 17:59:55', '2017-12-10 23:18:59'),
(32, 'array dua dimensi', '2017-12-11 13:39:27', '2017-12-11 13:39:27', '2017-12-11 13:39:27', 'benar', NULL, NULL, NULL, 5, 21, 2, 3, '2017-12-10 19:25:14', '2017-12-10 23:39:27'),
(33, 'arr = [NONE]*5', '2017-12-11 13:39:43', '2017-12-11 13:39:43', '2017-12-11 13:39:43', 'benar', NULL, NULL, NULL, 5, 21, 2, 4, '2017-12-10 19:25:17', '2017-12-10 23:39:43'),
(34, 'Juni', '2017-12-11 13:40:31', '2017-12-11 13:40:31', '2017-12-11 13:40:31', 'benar', NULL, NULL, NULL, 5, 21, 2, 5, '2017-12-10 19:25:22', '2017-12-10 23:40:31'),
(35, 'print(A[3])', '2017-12-11 13:40:18', '2017-12-11 13:40:18', '2017-12-11 13:40:18', 'benar', NULL, NULL, NULL, 5, 21, 2, 6, '2017-12-10 19:25:25', '2017-12-10 23:40:18'),
(36, 'array', '2017-12-11 13:39:20', '2017-12-11 13:39:20', '2017-12-11 13:39:20', 'benar', NULL, NULL, NULL, 5, 21, 2, 2, '2017-12-10 19:46:09', '2017-12-10 23:39:20'),
(37, 'array', '2017-12-11 14:28:20', '2017-12-11 14:28:20', '2017-12-11 14:28:20', 'benar', NULL, NULL, NULL, 6, 21, 2, 2, '2017-12-11 00:28:20', '2017-12-11 00:28:20'),
(38, 'array dua dimensi', '2017-12-11 14:31:32', '2017-12-11 14:31:32', '2017-12-11 14:31:32', 'benar', NULL, NULL, NULL, 6, 21, 2, 3, '2017-12-11 00:28:57', '2017-12-11 00:31:32'),
(39, 'coba', '2017-12-11 14:29:05', '2017-12-11 14:29:05', '2017-12-11 14:29:05', 'salah', NULL, NULL, NULL, 6, 21, 2, 4, '2017-12-11 00:29:05', '2017-12-11 00:29:05'),
(40, 'juli', '2017-12-11 14:29:11', '2017-12-11 14:29:11', '2017-12-11 14:29:11', 'salah', NULL, NULL, NULL, 6, 21, 2, 5, '2017-12-11 00:29:11', '2017-12-11 00:29:11'),
(41, 'qdwqxasd', '2017-12-11 14:30:39', '2017-12-11 14:30:39', '2017-12-11 14:30:39', 'salah', NULL, NULL, NULL, 6, 21, 2, 6, '2017-12-11 00:30:22', '2017-12-11 00:30:39'),
(42, 'qwerty', '2017-12-17 15:03:37', '2017-12-17 15:03:37', '2017-12-17 15:03:37', 'salah', NULL, NULL, NULL, 5, 23, 2, 2, '2017-12-16 09:58:53', '2017-12-17 01:03:37'),
(43, '2', '2017-12-17 00:01:51', '2017-12-17 00:01:51', '2017-12-17 00:01:51', 'salah', NULL, NULL, NULL, 5, 23, 2, 3, '2017-12-16 10:00:14', '2017-12-16 10:01:51'),
(44, 'a', '2017-12-17 00:02:58', '2017-12-17 00:02:58', '2017-12-17 00:02:58', 'salah', NULL, NULL, NULL, 5, 23, 2, 5, '2017-12-16 10:02:03', '2017-12-16 10:02:58'),
(45, 'sdfassdf', '2017-12-17 00:24:22', '2017-12-17 00:24:22', '2017-12-17 00:24:22', 'salah', NULL, NULL, NULL, 5, 23, 2, 4, '2017-12-16 10:03:05', '2017-12-16 10:24:22'),
(46, 'qwe', '2017-12-17 00:04:17', '2017-12-17 00:04:17', '2017-12-17 00:04:17', 'salah', NULL, NULL, NULL, 5, 23, 2, 6, '2017-12-16 10:04:17', '2017-12-16 10:04:17'),
(47, '1', '2017-12-17 00:43:32', '2017-12-17 00:43:32', '2017-12-17 00:43:32', 'salah', NULL, NULL, NULL, 2, 23, 2, 2, '2017-12-16 10:43:32', '2017-12-16 10:43:32'),
(48, '2', '2017-12-17 00:43:35', '2017-12-17 00:43:35', '2017-12-17 00:43:35', 'salah', NULL, NULL, NULL, 2, 23, 2, 3, '2017-12-16 10:43:35', '2017-12-16 10:43:35'),
(49, '3', '2017-12-17 00:43:39', '2017-12-17 00:43:39', '2017-12-17 00:43:39', 'salah', NULL, NULL, NULL, 2, 23, 2, 4, '2017-12-16 10:43:39', '2017-12-16 10:43:39'),
(50, '4', '2017-12-17 00:43:42', '2017-12-17 00:43:42', '2017-12-17 00:43:42', 'salah', NULL, NULL, NULL, 2, 23, 2, 5, '2017-12-16 10:43:42', '2017-12-16 10:43:42'),
(51, '5', '2017-12-17 00:43:55', '2017-12-17 00:43:55', '2017-12-17 00:43:55', 'salah', NULL, NULL, NULL, 2, 23, 2, 6, '2017-12-16 10:43:46', '2017-12-16 10:43:55'),
(52, 'array', '2017-12-17 15:39:30', '2017-12-17 15:39:30', '2017-12-17 15:39:30', 'benar', NULL, NULL, NULL, 1, 23, 2, 2, '2017-12-17 01:39:30', '2017-12-17 01:39:30'),
(53, 'asdasd', '2018-01-10 17:35:57', '2018-01-10 17:35:57', '2018-01-10 17:35:57', 'salah', NULL, NULL, NULL, 5, 26, 2, 2, '2018-01-10 03:35:57', '2018-01-10 03:35:57'),
(54, 'apalah', '2018-01-10 17:36:15', '2018-01-10 17:36:15', '2018-01-10 17:36:15', 'salah', NULL, NULL, NULL, 5, 26, 2, 3, '2018-01-10 03:36:07', '2018-01-10 03:36:15'),
(55, 'asdf', '2018-01-11 02:38:10', '2018-01-11 02:38:10', '2018-01-11 02:38:10', 'salah', NULL, NULL, NULL, 2, 25, 6, 8, '2018-01-10 12:34:01', '2018-01-10 12:38:10'),
(56, 'qweqwe', '2018-01-11 02:38:14', '2018-01-11 02:38:14', '2018-01-11 02:38:14', 'salah', NULL, NULL, NULL, 2, 25, 6, 9, '2018-01-10 12:34:06', '2018-01-10 12:38:14'),
(57, 'adawefar', '2018-01-11 02:38:19', '2018-01-11 02:38:19', '2018-01-11 02:38:19', 'salah', NULL, NULL, NULL, 2, 25, 6, 10, '2018-01-10 12:34:12', '2018-01-10 12:38:19'),
(58, 'asdfasdf', '2018-01-26 00:19:44', '2018-01-26 00:19:44', '2018-01-26 00:19:44', 'salah', NULL, NULL, NULL, 5, 25, 2, 2, '2018-01-25 10:19:44', '2018-01-25 10:19:44'),
(59, 'Cobaaaa', '2018-03-19 14:10:50', '2018-03-19 14:10:50', '2018-03-19 14:10:50', 'salah', '20180319071050.PNG', NULL, 10, 5, 39, 10, 19, '2018-03-19 14:10:50', '2018-03-26 14:51:15'),
(60, 'dua', '2018-03-19 14:11:02', '2018-03-19 14:11:02', '2018-03-19 14:11:02', 'salah', '20180319071102.PNG', NULL, 10, 5, 39, 10, 20, '2018-03-19 14:11:02', '2018-03-26 14:50:46'),
(61, 'tiga adalah nomor tiga yang ada', '2018-03-19 14:11:22', '2018-03-19 14:11:22', '2018-03-19 14:11:22', 'salah', '20180319071122.PNG', NULL, 10, 5, 39, 10, 22, '2018-03-19 14:11:22', '2018-03-26 14:50:46'),
(62, 'empat', '2018-03-19 14:11:32', '2018-03-19 14:11:32', '2018-03-19 14:11:32', 'salah', '20180319071132.png', 'satu', 10, 5, 39, 10, 23, '2018-03-19 14:11:32', '2018-03-26 14:50:46'),
(63, 'lima', '2018-03-19 14:11:46', '2018-03-19 14:11:46', '2018-03-19 14:11:46', 'salah', '20180319071146.jpg', NULL, 10, 5, 39, 10, 24, '2018-03-19 14:11:46', '2018-03-26 14:51:15'),
(64, 'Contoh', '2018-03-19 14:20:07', '2018-03-19 14:20:07', '2018-03-19 14:20:07', 'salah', '20180319072007.PNG', 'komentar', 55, 11, 39, 10, 19, '2018-03-19 14:20:07', '2018-03-26 14:52:52'),
(65, 'Juni', '2018-03-26 14:33:17', '2018-03-26 14:33:17', '2018-03-26 14:33:17', 'salah', '', NULL, NULL, 93, 39, 10, 19, '2018-03-26 14:33:17', '2018-03-26 14:33:17'),
(66, '12', '2018-03-26 14:34:02', '2018-03-26 14:34:02', '2018-03-26 14:34:02', 'salah', '', NULL, NULL, 93, 39, 10, 20, '2018-03-26 14:34:02', '2018-03-26 14:34:02'),
(67, 'array[5]', '2018-03-26 14:34:16', '2018-03-26 14:34:16', '2018-03-26 14:34:16', 'salah', '', NULL, NULL, 93, 39, 10, 22, '2018-03-26 14:34:16', '2018-03-26 14:34:16'),
(68, 'Juni', '2018-03-26 14:34:58', '2018-03-26 14:34:58', '2018-03-26 14:34:58', 'salah', 'aero_busy.ani', NULL, NULL, 91, 39, 10, 19, '2018-03-26 14:34:58', '2018-03-26 14:34:58'),
(69, 'write', '2018-03-26 14:35:34', '2018-03-26 14:35:34', '2018-03-26 14:35:34', 'salah', 'aero_busy_xl.ani', NULL, NULL, 91, 39, 10, 20, '2018-03-26 14:35:34', '2018-03-26 14:35:34'),
(70, 'a', '2018-03-27 14:04:17', '2018-03-27 14:04:17', '2018-03-27 14:04:17', 'salah', NULL, NULL, NULL, 5, 40, 15, 46, '2018-03-27 14:04:17', '2018-03-27 14:04:17'),
(71, 'b', '2018-03-27 14:04:20', '2018-03-27 14:04:20', '2018-03-27 14:04:20', 'salah', NULL, NULL, NULL, 5, 40, 15, 47, '2018-03-27 14:04:20', '2018-03-27 14:04:20'),
(72, 'c', '2018-03-27 14:04:23', '2018-03-27 14:04:23', '2018-03-27 14:04:23', 'salah', NULL, NULL, NULL, 5, 40, 15, 48, '2018-03-27 14:04:23', '2018-03-27 14:04:23'),
(73, 'd', '2018-03-27 14:04:26', '2018-03-27 14:04:26', '2018-03-27 14:04:26', 'salah', NULL, NULL, NULL, 5, 40, 15, 49, '2018-03-27 14:04:26', '2018-03-27 14:04:26'),
(74, 'nilai,P', '2018-03-27 14:10:43', '2018-03-27 14:10:43', '2018-03-27 14:10:43', 'salah', NULL, NULL, NULL, 88, 40, 15, 46, '2018-03-27 14:10:43', '2018-03-27 14:10:43'),
(75, '8', '2018-03-27 14:10:56', '2018-03-27 14:10:56', '2018-03-27 14:10:56', 'benar', NULL, NULL, NULL, 88, 40, 15, 47, '2018-03-27 14:10:56', '2018-03-27 14:10:56'),
(76, 'max = P.info', '2018-03-27 14:11:13', '2018-03-27 14:11:13', '2018-03-27 14:11:13', 'salah', NULL, NULL, NULL, 88, 40, 15, 48, '2018-03-27 14:11:13', '2018-03-27 14:11:13'),
(77, 'R.next', '2018-03-27 14:11:28', '2018-03-27 14:11:28', '2018-03-27 14:11:28', 'benar', NULL, NULL, NULL, 88, 40, 15, 49, '2018-03-27 14:11:28', '2018-03-27 14:11:28'),
(78, 'nilai;P', '2018-03-27 14:16:59', '2018-03-27 14:16:59', '2018-03-27 14:16:59', 'benar', NULL, NULL, NULL, 89, 40, 15, 46, '2018-03-27 14:16:59', '2018-03-27 14:16:59'),
(79, '8', '2018-03-27 14:17:19', '2018-03-27 14:17:19', '2018-03-27 14:17:19', 'benar', NULL, NULL, NULL, 89, 40, 15, 47, '2018-03-27 14:17:19', '2018-03-27 14:17:19'),
(80, 'max=P.info', '2018-03-27 14:17:36', '2018-03-27 14:17:36', '2018-03-27 14:17:36', 'benar', NULL, NULL, NULL, 89, 40, 15, 48, '2018-03-27 14:17:36', '2018-03-27 14:17:36'),
(81, 'R.next', '2018-03-27 14:17:48', '2018-03-27 14:17:48', '2018-03-27 14:17:48', 'benar', NULL, NULL, NULL, 89, 40, 15, 49, '2018-03-27 14:17:48', '2018-03-27 14:17:48'),
(82, 'p.next;self.first.next', '2018-03-28 10:53:21', '2018-03-28 10:53:21', '2018-03-28 10:53:21', 'salah', NULL, NULL, NULL, 30, 40, 15, 46, '2018-03-28 10:53:21', '2018-03-28 10:53:21'),
(83, '10', '2018-03-28 10:54:34', '2018-03-28 10:54:34', '2018-03-28 10:54:34', 'salah', NULL, NULL, NULL, 30, 40, 15, 47, '2018-03-28 10:54:34', '2018-03-28 10:54:34'),
(84, 'self,P;P', '2018-03-28 10:54:49', '2018-03-28 10:54:49', '2018-03-28 10:54:49', 'salah', NULL, NULL, NULL, 34, 40, 15, 46, '2018-03-28 10:54:49', '2018-03-28 10:54:49'),
(85, 'nilai;P', '2018-03-28 10:55:12', '2018-03-28 10:55:12', '2018-03-28 10:55:12', 'benar', NULL, NULL, NULL, 32, 40, 15, 46, '2018-03-28 10:55:12', '2018-03-28 10:55:12'),
(86, 'max=p.info', '2018-03-28 10:55:29', '2018-03-28 10:55:29', '2018-03-28 10:55:29', 'salah', NULL, NULL, NULL, 30, 40, 15, 48, '2018-03-28 10:55:29', '2018-03-28 10:55:29'),
(87, 'Q=Prev.next', '2018-03-28 10:56:10', '2018-03-28 10:56:10', '2018-03-28 10:56:10', 'salah', NULL, NULL, NULL, 28, 40, 15, 49, '2018-03-28 10:56:10', '2018-03-28 10:56:10'),
(88, 'nilai;P', '2018-03-28 10:56:16', '2018-03-28 10:56:16', '2018-03-28 10:56:16', 'benar', NULL, NULL, NULL, 41, 40, 15, 46, '2018-03-28 10:56:16', '2018-03-28 10:56:16'),
(89, 'nilai;P', '2018-03-28 10:56:18', '2018-03-28 10:56:18', '2018-03-28 10:56:18', 'benar', NULL, NULL, NULL, 35, 40, 15, 46, '2018-03-28 10:56:18', '2018-03-28 10:56:18'),
(90, 'max=P.info', '2018-03-28 10:56:39', '2018-03-28 10:56:39', '2018-03-28 10:56:39', 'benar', NULL, NULL, NULL, 34, 40, 15, 48, '2018-03-28 10:56:39', '2018-03-28 10:56:39'),
(91, '8', '2018-03-28 10:56:51', '2018-03-28 10:56:51', '2018-03-28 10:56:51', 'benar', NULL, NULL, NULL, 38, 40, 15, 47, '2018-03-28 10:56:51', '2018-03-28 10:56:51'),
(92, 'nilai;P', '2018-03-28 10:57:00', '2018-03-28 10:57:00', '2018-03-28 10:57:00', 'benar', NULL, NULL, NULL, 36, 40, 15, 46, '2018-03-28 10:57:00', '2018-03-28 10:57:00'),
(93, '10', '2018-03-28 10:57:07', '2018-03-28 10:57:07', '2018-03-28 10:57:07', 'salah', NULL, NULL, NULL, 32, 40, 15, 47, '2018-03-28 10:57:07', '2018-03-28 10:57:07'),
(94, '8', '2018-03-28 10:57:18', '2018-03-28 10:57:18', '2018-03-28 10:57:18', 'benar', NULL, NULL, NULL, 35, 40, 15, 47, '2018-03-28 10:57:18', '2018-03-28 10:57:18'),
(95, 'R.next', '2018-03-28 10:57:29', '2018-03-28 10:57:29', '2018-03-28 10:57:29', 'benar', NULL, NULL, NULL, 30, 40, 15, 49, '2018-03-28 10:57:30', '2018-03-28 10:57:30'),
(96, '8', '2018-03-28 10:57:40', '2018-03-28 10:57:40', '2018-03-28 10:57:40', 'benar', NULL, NULL, NULL, 41, 40, 15, 47, '2018-03-28 10:57:40', '2018-03-28 10:57:40'),
(97, 'max=P.info', '2018-03-28 10:57:47', '2018-03-28 10:57:47', '2018-03-28 10:57:47', 'benar', NULL, NULL, NULL, 38, 40, 15, 48, '2018-03-28 10:57:47', '2018-03-28 10:57:47'),
(98, 'max=P.info', '2018-03-28 10:57:51', '2018-03-28 10:57:51', '2018-03-28 10:57:51', 'benar', NULL, NULL, NULL, 35, 40, 15, 48, '2018-03-28 10:57:51', '2018-03-28 10:57:51'),
(99, '8', '2018-03-28 10:57:56', '2018-03-28 10:57:56', '2018-03-28 10:57:56', 'benar', NULL, NULL, NULL, 36, 40, 15, 47, '2018-03-28 10:57:56', '2018-03-28 10:57:56'),
(100, 'max=P', '2018-03-28 11:02:54', '2018-03-28 11:02:54', '2018-03-28 11:02:54', 'salah', NULL, NULL, NULL, 28, 40, 15, 48, '2018-03-28 10:58:17', '2018-03-28 11:02:54'),
(101, 'R.next', '2018-03-28 10:58:22', '2018-03-28 10:58:22', '2018-03-28 10:58:22', 'benar', NULL, NULL, NULL, 34, 40, 15, 49, '2018-03-28 10:58:22', '2018-03-28 10:58:22'),
(102, 'nilai;p', '2018-03-28 10:58:23', '2018-03-28 10:58:23', '2018-03-28 10:58:23', 'salah', NULL, NULL, NULL, 33, 40, 15, 46, '2018-03-28 10:58:23', '2018-03-28 10:58:23'),
(103, 'max = P.info', '2018-03-28 10:58:23', '2018-03-28 10:58:23', '2018-03-28 10:58:23', 'salah', NULL, NULL, NULL, 41, 40, 15, 48, '2018-03-28 10:58:23', '2018-03-28 10:58:23'),
(104, '10', '2018-03-28 10:58:44', '2018-03-28 10:58:44', '2018-03-28 10:58:44', 'salah', NULL, NULL, NULL, 29, 40, 15, 47, '2018-03-28 10:58:44', '2018-03-28 10:58:44'),
(105, 'max=P.info', '2018-03-28 10:59:00', '2018-03-28 10:59:00', '2018-03-28 10:59:00', 'benar', NULL, NULL, NULL, 36, 40, 15, 48, '2018-03-28 10:59:00', '2018-03-28 10:59:00'),
(106, 'max=P.info', '2018-03-28 10:59:20', '2018-03-28 10:59:20', '2018-03-28 10:59:20', 'benar', NULL, NULL, NULL, 37, 40, 15, 48, '2018-03-28 10:59:20', '2018-03-28 10:59:20'),
(107, 'max=P', '2018-03-28 10:59:42', '2018-03-28 10:59:42', '2018-03-28 10:59:42', 'salah', NULL, NULL, NULL, 32, 40, 15, 48, '2018-03-28 10:59:42', '2018-03-28 10:59:42'),
(108, 'R.next', '2018-03-28 11:00:10', '2018-03-28 11:00:10', '2018-03-28 11:00:10', 'benar', NULL, NULL, NULL, 38, 40, 15, 49, '2018-03-28 11:00:10', '2018-03-28 11:00:10'),
(109, 'R.next', '2018-03-28 11:00:10', '2018-03-28 11:00:10', '2018-03-28 11:00:10', 'benar', NULL, NULL, NULL, 41, 40, 15, 49, '2018-03-28 11:00:10', '2018-03-28 11:00:10'),
(110, '7', '2018-03-28 11:00:15', '2018-03-28 11:00:15', '2018-03-28 11:00:15', 'salah', NULL, NULL, NULL, 33, 40, 15, 47, '2018-03-28 11:00:15', '2018-03-28 11:00:15'),
(111, 'R.next', '2018-03-28 11:00:15', '2018-03-28 11:00:15', '2018-03-28 11:00:15', 'benar', NULL, NULL, NULL, 29, 40, 15, 49, '2018-03-28 11:00:15', '2018-03-28 11:00:15'),
(112, '8', '2018-03-28 11:00:18', '2018-03-28 11:00:18', '2018-03-28 11:00:18', 'benar', NULL, NULL, NULL, 40, 40, 15, 47, '2018-03-28 11:00:18', '2018-03-28 11:00:18'),
(113, 'max=P.info', '2018-03-28 11:00:33', '2018-03-28 11:00:33', '2018-03-28 11:00:33', 'benar', NULL, NULL, NULL, 40, 40, 15, 48, '2018-03-28 11:00:33', '2018-03-28 11:00:33'),
(114, 'self.fist=self.first.next', '2018-03-28 11:01:03', '2018-03-28 11:01:03', '2018-03-28 11:01:03', 'salah', NULL, NULL, NULL, 34, 40, 15, 47, '2018-03-28 11:01:03', '2018-03-28 11:01:03'),
(115, 'max = P.info', '2018-03-28 11:01:30', '2018-03-28 11:01:30', '2018-03-28 11:01:30', 'salah', NULL, NULL, NULL, 29, 40, 15, 48, '2018-03-28 11:01:30', '2018-03-28 11:01:30'),
(116, 'max=p.info', '2018-03-28 11:01:37', '2018-03-28 11:01:37', '2018-03-28 11:01:37', 'salah', NULL, NULL, NULL, 33, 40, 15, 48, '2018-03-28 11:01:37', '2018-03-28 11:01:37'),
(117, 'R', '2018-03-28 11:01:38', '2018-03-28 11:01:38', '2018-03-28 11:01:38', 'salah', NULL, NULL, NULL, 36, 40, 15, 49, '2018-03-28 11:01:38', '2018-03-28 11:01:38'),
(118, 'Q.next', '2018-03-28 11:01:48', '2018-03-28 11:01:48', '2018-03-28 11:01:48', 'salah', NULL, NULL, NULL, 35, 40, 15, 49, '2018-03-28 11:01:48', '2018-03-28 11:01:48'),
(119, 'self.next', '2018-03-28 11:03:02', '2018-03-28 11:03:02', '2018-03-28 11:03:02', 'salah', NULL, NULL, NULL, 32, 40, 15, 49, '2018-03-28 11:03:02', '2018-03-28 11:03:02'),
(120, 'R.next', '2018-03-28 11:03:21', '2018-03-28 11:03:21', '2018-03-28 11:03:21', 'benar', NULL, NULL, NULL, 40, 40, 15, 49, '2018-03-28 11:03:21', '2018-03-28 11:03:21'),
(121, ';P', '2018-03-28 11:04:14', '2018-03-28 11:04:14', '2018-03-28 11:04:14', 'salah', NULL, NULL, NULL, 28, 40, 15, 46, '2018-03-28 11:04:14', '2018-03-28 11:04:14'),
(122, 'self.prev', '2018-03-28 11:04:26', '2018-03-28 11:04:26', '2018-03-28 11:04:26', 'salah', NULL, NULL, NULL, 33, 40, 15, 49, '2018-03-28 11:04:26', '2018-03-28 11:04:26'),
(123, 'nilai;P', '2018-03-28 11:04:41', '2018-03-28 11:04:41', '2018-03-28 11:04:41', 'benar', NULL, NULL, NULL, 40, 40, 15, 46, '2018-03-28 11:04:41', '2018-03-28 11:04:41'),
(124, 'nilai;P', '2018-03-28 11:04:58', '2018-03-28 11:04:58', '2018-03-28 11:04:58', 'benar', NULL, NULL, NULL, 38, 40, 15, 46, '2018-03-28 11:04:58', '2018-03-28 11:04:58'),
(125, 'Node(nilai);P', '2018-03-28 11:05:26', '2018-03-28 11:05:26', '2018-03-28 11:05:26', 'salah', NULL, NULL, NULL, 37, 40, 15, 46, '2018-03-28 11:05:26', '2018-03-28 11:05:26'),
(126, '4', '2018-03-28 11:05:56', '2018-03-28 11:05:56', '2018-03-28 11:05:56', 'salah', NULL, NULL, NULL, 37, 40, 15, 47, '2018-03-28 11:05:56', '2018-03-28 11:05:56'),
(127, 'Q=R', '2018-03-28 11:06:12', '2018-03-28 11:06:12', '2018-03-28 11:06:12', 'salah', NULL, NULL, NULL, 37, 40, 15, 49, '2018-03-28 11:06:12', '2018-03-28 11:06:12'),
(128, 'a', '2018-04-15 23:14:33', '2018-04-15 23:14:33', '2018-04-15 23:14:33', 'salah', 'por.jpg', NULL, 30, 5, 42, 17, 50, '2018-04-15 23:13:52', '2018-04-15 23:34:59'),
(129, 'b', '2018-04-15 23:15:03', '2018-04-15 23:15:03', '2018-04-15 23:15:03', 'salah', 'Data4Olympia.xlsx', NULL, 30, 5, 42, 17, 51, '2018-04-15 23:15:03', '2018-04-15 23:34:59'),
(130, 'Tidak Terjawab', '2018-04-15 23:16:18', '2018-04-15 23:16:18', '2018-04-15 23:16:18', 'salah', 'auditori.jpg', NULL, 20, 5, 42, 17, 52, '2018-04-15 23:16:18', '2018-04-15 23:34:59'),
(131, 'a', '2018-04-15 23:22:42', '2018-04-15 23:22:42', '2018-04-15 23:22:42', 'salah', 'Adsfadfa.docx', NULL, 10, 5, 41, 16, 53, '2018-04-15 23:22:06', '2018-04-15 23:35:46'),
(132, 'b', '2018-04-15 23:23:12', '2018-04-15 23:23:12', '2018-04-15 23:23:12', 'salah', '2018April_alurWisuda.jpg', NULL, 20, 5, 41, 16, 54, '2018-04-15 23:23:12', '2018-04-15 23:35:46'),
(133, 'c', '2018-04-15 23:23:24', '2018-04-15 23:23:24', '2018-04-15 23:23:24', 'salah', 'adsf.txt', NULL, 20, 5, 41, 16, 55, '2018-04-15 23:23:24', '2018-04-15 23:35:46'),
(134, 'd', '2018-04-15 23:23:45', '2018-04-15 23:23:45', '2018-04-15 23:23:45', 'salah', 'contoh2.png', NULL, 20, 5, 41, 16, 56, '2018-04-15 23:23:45', '2018-04-15 23:35:46'),
(135, 'asdf', '2018-04-15 23:24:01', '2018-04-15 23:24:01', '2018-04-15 23:24:01', 'salah', 'contoh.JPG', NULL, 10, 5, 41, 16, 57, '2018-04-15 23:24:01', '2018-04-15 23:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `jawabanpg`
--

CREATE TABLE `jawabanpg` (
  `id` int(255) NOT NULL,
  `jawabanmhs` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `finish` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `idMhs` int(255) NOT NULL,
  `idTournament` int(255) NOT NULL,
  `idBanksoal` int(255) NOT NULL,
  `idsoalpg` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawabanpg`
--

INSERT INTO `jawabanpg` (`id`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(1, 'while', '2018-01-11 02:01:57', '2018-01-11 02:01:57', '2018-01-11 02:01:57', 'benar', 5, 27, 1, 1, '2018-01-10 19:01:57', '2018-01-10 12:01:57'),
(2, 'for', '2018-01-11 02:02:00', '2018-01-11 02:02:00', '2018-01-11 02:02:00', 'benar', 5, 27, 1, 2, '2018-01-10 19:02:00', '2018-01-10 12:02:00'),
(3, '25', '2018-01-11 14:22:40', '2018-01-11 14:22:40', '2018-01-11 14:22:40', 'benar', 5, 27, 1, 5, '2018-01-11 07:22:40', '2018-01-11 00:22:40'),
(4, 'foreach', '2018-01-11 02:02:03', '2018-01-11 02:02:03', '2018-01-11 02:02:03', 'benar', 5, 27, 1, 3, '2018-01-10 12:02:03', '2018-01-10 12:02:03'),
(5, 'while', '2018-01-11 02:02:13', '2018-01-11 02:02:13', '2018-01-11 02:02:13', 'benar', 5, 27, 1, 4, '2018-01-10 12:02:13', '2018-01-10 12:02:13'),
(6, 'while', '2018-01-11 02:15:23', '2018-01-11 02:15:23', '2018-01-11 02:15:23', 'benar', 2, 27, 1, 1, '2018-01-10 19:15:23', '2018-01-10 12:15:23'),
(7, 'for', '2018-01-11 02:15:27', '2018-01-11 02:15:27', '2018-01-11 02:15:27', 'benar', 2, 27, 1, 2, '2018-01-10 12:15:27', '2018-01-10 12:15:27'),
(8, 'foreach', '2018-01-11 02:15:31', '2018-01-11 02:15:31', '2018-01-11 02:15:31', 'benar', 2, 27, 1, 3, '2018-01-10 12:15:31', '2018-01-10 12:15:31'),
(9, 'while', '2018-01-11 02:15:39', '2018-01-11 02:15:39', '2018-01-11 02:15:39', 'benar', 2, 27, 1, 4, '2018-01-10 12:15:39', '2018-01-10 12:15:39'),
(10, '25', '2018-01-10 19:15:48', '2018-01-10 19:15:48', '2018-01-11 14:19:00', 'benar', 2, 27, 1, 5, '2018-01-11 07:19:01', '2018-01-11 00:19:01'),
(11, 'for', '2018-01-11 02:37:33', '2018-01-11 02:37:33', '2018-01-11 02:37:33', 'benar', 2, 25, 6, 8, '2018-01-10 19:37:33', '2018-01-10 12:37:33'),
(12, 'while', '2018-01-11 02:37:37', '2018-01-11 02:37:37', '2018-01-11 02:37:37', 'benar', 2, 25, 6, 10, '2018-01-10 19:37:37', '2018-01-10 12:37:37'),
(13, '24', '2018-01-11 02:37:41', '2018-01-11 02:37:41', '2018-01-11 02:37:41', 'salah', 2, 25, 6, 11, '2018-01-10 19:37:41', '2018-01-10 12:37:41'),
(14, 'for', '2018-01-11 02:37:55', '2018-01-11 02:37:55', '2018-01-11 02:37:55', 'salah', 2, 25, 6, 14, '2018-01-10 19:37:55', '2018-01-10 12:37:55'),
(15, 'foreach', '2018-01-11 02:37:46', '2018-01-11 02:37:46', '2018-01-11 02:37:46', 'salah', 2, 25, 6, 12, '2018-01-10 12:37:46', '2018-01-10 12:37:46'),
(16, 'while', '2018-01-11 02:37:49', '2018-01-11 02:37:49', '2018-01-11 02:37:49', 'salah', 2, 25, 6, 13, '2018-01-10 12:37:49', '2018-01-10 12:37:49'),
(17, 'for', '2018-01-11 02:37:59', '2018-01-11 02:37:59', '2018-01-11 02:37:59', 'salah', 2, 25, 6, 15, '2018-01-10 12:37:59', '2018-01-10 12:37:59'),
(18, '25', '2018-01-11 02:38:05', '2018-01-11 02:38:05', '2018-01-11 02:38:05', 'benar', 2, 25, 6, 16, '2018-01-10 12:38:05', '2018-01-10 12:38:05'),
(19, 'shell sort dan heap sort', '2018-01-15 14:36:22', '2018-01-15 14:36:22', '2018-01-15 14:36:22', 'salah', 1, 30, 7, 18, '2018-01-15 15:36:22', '2018-01-15 15:36:22'),
(20, 'bubble sort dan quick sort', '2018-01-15 14:37:21', '2018-01-15 14:37:21', '2018-01-15 14:37:21', 'salah', 11, 30, 7, 18, '2018-01-15 07:37:21', '2018-01-15 15:37:21'),
(21, 'Pasangan titik yang jaraknya terdekat', '2018-01-15 14:36:35', '2018-01-15 14:36:35', '2018-01-15 14:36:35', 'benar', 1, 30, 7, 19, '2018-01-15 15:36:35', '2018-01-15 15:36:35'),
(22, 'Exhaustive Search', '2018-01-15 14:36:41', '2018-01-15 14:36:41', '2018-01-15 14:36:41', 'benar', 1, 30, 7, 20, '2018-01-15 15:36:41', '2018-01-15 15:36:41'),
(23, 'Algoritma Greedy', '2018-01-15 14:36:48', '2018-01-15 14:36:48', '2018-01-15 14:36:48', 'benar', 1, 30, 7, 21, '2018-01-15 15:36:48', '2018-01-15 15:36:48'),
(24, 'Pewarnaan peta', '2018-01-15 14:37:48', '2018-01-15 14:37:48', '2018-01-15 14:37:48', 'salah', 5, 30, 7, 22, '2018-01-15 15:37:48', '2018-01-15 15:37:48'),
(25, 'Travelling Salesman Problem', '2018-01-15 14:38:02', '2018-01-15 14:38:02', '2018-01-15 14:38:02', 'salah', 11, 30, 7, 19, '2018-01-15 15:38:02', '2018-01-15 15:38:02'),
(26, 'Minimum Spaning Tree', '2018-01-15 14:38:02', '2018-01-15 14:38:02', '2018-01-15 14:38:02', 'salah', 1, 30, 7, 22, '2018-01-15 15:38:02', '2018-01-15 15:38:02'),
(27, 'Algoritma Greedy', '2018-01-15 14:38:03', '2018-01-15 14:38:03', '2018-01-15 14:38:03', 'benar', 5, 30, 7, 21, '2018-01-15 15:38:03', '2018-01-15 15:38:03'),
(28, 'Exhaustive Search', '2018-01-15 14:38:15', '2018-01-15 14:38:15', '2018-01-15 14:38:15', 'benar', 5, 30, 7, 20, '2018-01-15 15:38:15', '2018-01-15 15:38:15'),
(29, 'Exhaustive Search', '2018-01-15 14:39:43', '2018-01-15 14:39:43', '2018-01-15 14:39:43', 'benar', 11, 30, 7, 20, '2018-01-15 07:39:43', '2018-01-15 15:39:43'),
(30, 'Algoritma Backtracking', '2018-01-15 14:38:25', '2018-01-15 14:38:25', '2018-01-15 14:38:25', 'salah', 11, 30, 7, 21, '2018-01-15 15:38:25', '2018-01-15 15:38:25'),
(31, 'Pasangan titik yang jaraknya terdekat', '2018-01-15 14:38:26', '2018-01-15 14:38:26', '2018-01-15 14:38:26', 'benar', 5, 30, 7, 19, '2018-01-15 15:38:26', '2018-01-15 15:38:26'),
(32, 'shell sort dan heap sort', '2018-01-15 14:38:41', '2018-01-15 14:38:41', '2018-01-15 14:38:41', 'salah', 5, 30, 7, 18, '2018-01-15 15:38:41', '2018-01-15 15:38:41'),
(33, 'Travelling Salesman Problem', '2018-01-15 14:39:05', '2018-01-15 14:39:05', '2018-01-15 14:39:05', 'benar', 11, 30, 7, 22, '2018-01-15 07:39:05', '2018-01-15 15:39:05'),
(34, '22', '2018-01-26 00:31:32', '2018-01-26 00:31:32', '2018-01-26 00:31:32', 'salah', 5, 24, 1, 5, '2018-01-25 10:31:32', '2018-01-25 10:31:32'),
(35, '5, 2, 3', '2018-03-06 15:45:52', '2018-03-06 15:45:52', '2018-03-06 15:45:52', 'salah', 11, 38, 13, 55, '2018-03-06 16:45:52', '2018-03-06 16:45:52'),
(36, 'x :  -5  y :  7', '2018-03-09 14:32:18', '2018-03-09 14:32:18', '2018-03-09 14:32:18', 'salah', 11, 38, 13, 56, '2018-03-09 07:32:18', '2018-03-09 15:32:18'),
(37, 'x :  5  y :  3', '2018-03-09 14:32:29', '2018-03-09 14:32:29', '2018-03-09 14:32:29', 'salah', 11, 38, 13, 57, '2018-03-09 07:32:29', '2018-03-09 15:32:29'),
(38, 'x :  3  y :  9', '2018-03-09 14:32:38', '2018-03-09 14:32:38', '2018-03-09 14:32:38', 'benar', 11, 38, 13, 58, '2018-03-09 07:32:38', '2018-03-09 15:32:38'),
(39, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-06 15:46:43', '2018-03-06 15:46:43', '2018-03-06 15:46:43', 'salah', 11, 38, 13, 59, '2018-03-06 16:46:43', '2018-03-06 16:46:43'),
(40, 'Program terus mencetak 1', '2018-03-09 14:32:47', '2018-03-09 14:32:47', '2018-03-09 14:32:47', 'salah', 11, 38, 13, 60, '2018-03-09 07:32:47', '2018-03-09 15:32:47'),
(41, 'Program tidak mencetak apapun', '2018-03-06 15:47:07', '2018-03-06 15:47:07', '2018-03-06 15:47:07', 'salah', 11, 38, 13, 61, '2018-03-06 16:47:07', '2018-03-06 16:47:07'),
(42, '1, 2, 3, 4, 5', '2018-03-06 15:47:28', '2018-03-06 15:47:28', '2018-03-06 15:47:28', 'salah', 11, 38, 13, 63, '2018-03-06 16:47:28', '2018-03-06 16:47:28'),
(43, '5, 2, 3', '2018-03-09 14:19:47', '2018-03-09 14:19:47', '2018-03-09 14:19:47', 'benar', 5, 38, 13, 55, '2018-03-09 15:19:47', '2018-03-09 15:19:47'),
(44, 'x :  7  y :  -2', '2018-03-19 13:57:26', '2018-03-19 13:57:26', '2018-03-19 13:57:26', 'salah', 5, 38, 13, 56, '2018-03-19 06:57:26', '2018-03-19 13:57:26'),
(45, 'x :  5  y :  3', '2018-03-19 13:57:43', '2018-03-19 13:57:43', '2018-03-19 13:57:43', 'salah', 5, 38, 13, 57, '2018-03-19 06:57:43', '2018-03-19 13:57:43'),
(46, 'x :  3  y :  9', '2018-03-09 14:20:38', '2018-03-09 14:20:38', '2018-03-09 14:20:38', 'benar', 5, 38, 13, 58, '2018-03-09 15:20:38', '2018-03-09 15:20:38'),
(47, '1, 3, 5, 7, 9', '2018-03-09 14:20:54', '2018-03-09 14:20:54', '2018-03-09 14:20:54', 'benar', 5, 38, 13, 59, '2018-03-09 15:20:54', '2018-03-09 15:20:54'),
(48, 'Program terus mencetak 1', '2018-03-09 14:21:19', '2018-03-09 14:21:19', '2018-03-09 14:21:19', 'salah', 5, 38, 13, 60, '2018-03-09 15:21:19', '2018-03-09 15:21:19'),
(49, 'Program tidak mencetak apapun', '2018-03-09 14:21:34', '2018-03-09 14:21:34', '2018-03-09 14:21:34', 'benar', 5, 38, 13, 61, '2018-03-09 15:21:34', '2018-03-09 15:21:34'),
(50, '5, 26', '2018-03-09 14:21:59', '2018-03-09 14:21:59', '2018-03-09 14:21:59', 'benar', 5, 38, 13, 62, '2018-03-09 15:21:59', '2018-03-09 15:21:59'),
(51, '1, 2, 3, 4, 5, 6', '2018-03-09 14:22:13', '2018-03-09 14:22:13', '2018-03-09 14:22:13', 'benar', 5, 38, 13, 63, '2018-03-09 15:22:13', '2018-03-09 15:22:13'),
(52, '6, 5, 4, 3, 2, 1', '2018-03-19 13:57:55', '2018-03-19 13:57:55', '2018-03-19 13:57:55', 'benar', 5, 38, 13, 64, '2018-03-19 06:57:55', '2018-03-19 13:57:55'),
(53, '5, 4, 3, 2, 1', '2018-03-09 14:33:00', '2018-03-09 14:33:00', '2018-03-09 14:33:00', 'salah', 11, 38, 13, 64, '2018-03-09 15:33:00', '2018-03-09 15:33:00'),
(54, '3, 2, 5', '2018-03-09 14:42:55', '2018-03-09 14:42:55', '2018-03-09 14:42:55', 'salah', 74, 38, 13, 55, '2018-03-09 15:42:55', '2018-03-09 15:42:55'),
(55, 'x :  6  y :  0', '2018-03-09 14:43:04', '2018-03-09 14:43:04', '2018-03-09 14:43:04', 'salah', 74, 38, 13, 58, '2018-03-09 15:43:04', '2018-03-09 15:43:04'),
(56, '5, 26', '2018-03-09 14:43:13', '2018-03-09 14:43:13', '2018-03-09 14:43:13', 'benar', 74, 38, 13, 62, '2018-03-09 15:43:13', '2018-03-09 15:43:13'),
(57, '6, 5, 4, 3, 2', '2018-03-09 14:43:23', '2018-03-09 14:43:23', '2018-03-09 14:43:23', 'salah', 74, 38, 13, 64, '2018-03-09 15:43:23', '2018-03-09 15:43:23'),
(58, '5, 3, 2', '2018-03-20 14:56:37', '2018-03-20 14:56:37', '2018-03-20 14:56:37', 'salah', 86, 38, 13, 55, '2018-03-20 07:56:37', '2018-03-20 14:56:37'),
(59, '5, 3, 2', '2018-03-20 14:57:01', '2018-03-20 14:57:01', '2018-03-20 14:57:01', 'salah', 76, 38, 13, 55, '2018-03-20 07:57:01', '2018-03-20 14:57:01'),
(60, '5, 2, 3', '2018-03-20 14:55:11', '2018-03-20 14:55:11', '2018-03-20 14:55:11', 'benar', 85, 38, 13, 55, '2018-03-20 14:55:11', '2018-03-20 14:55:11'),
(61, '5, 3, 2', '2018-03-20 14:55:48', '2018-03-20 14:55:48', '2018-03-20 14:55:48', 'salah', 80, 38, 13, 55, '2018-03-20 14:55:48', '2018-03-20 14:55:48'),
(62, '5, 2, 3', '2018-03-20 14:55:49', '2018-03-20 14:55:49', '2018-03-20 14:55:49', 'benar', 81, 38, 13, 55, '2018-03-20 14:55:49', '2018-03-20 14:55:49'),
(63, '5, 2, 3', '2018-03-20 14:56:28', '2018-03-20 14:56:28', '2018-03-20 14:56:28', 'benar', 84, 38, 13, 55, '2018-03-20 14:56:28', '2018-03-20 14:56:28'),
(64, '5, 3, 2', '2018-03-20 14:56:29', '2018-03-20 14:56:29', '2018-03-20 14:56:29', 'salah', 79, 38, 13, 55, '2018-03-20 14:56:29', '2018-03-20 14:56:29'),
(65, 'x :  7  y :  -5', '2018-03-20 14:56:30', '2018-03-20 14:56:30', '2018-03-20 14:56:30', 'benar', 85, 38, 13, 56, '2018-03-20 14:56:30', '2018-03-20 14:56:30'),
(66, '5, 3, 2', '2018-03-20 14:56:44', '2018-03-20 14:56:44', '2018-03-20 14:56:44', 'salah', 83, 38, 13, 55, '2018-03-20 14:56:44', '2018-03-20 14:56:44'),
(67, '5, 3, 2', '2018-03-20 14:56:44', '2018-03-20 14:56:44', '2018-03-20 14:56:44', 'salah', 82, 38, 13, 55, '2018-03-20 14:56:44', '2018-03-20 14:56:44'),
(68, 'x :  7  y :  -5', '2018-03-20 14:57:19', '2018-03-20 14:57:19', '2018-03-20 14:57:19', 'benar', 86, 38, 13, 56, '2018-03-20 14:57:19', '2018-03-20 14:57:19'),
(69, 'x :  7  y :  -5', '2018-03-20 14:57:23', '2018-03-20 14:57:23', '2018-03-20 14:57:23', 'benar', 81, 38, 13, 56, '2018-03-20 14:57:23', '2018-03-20 14:57:23'),
(70, 'x :  7  y :  -2', '2018-03-20 14:57:25', '2018-03-20 14:57:25', '2018-03-20 14:57:25', 'salah', 75, 38, 13, 56, '2018-03-20 14:57:25', '2018-03-20 14:57:25'),
(71, 'x :  7  y :  -5', '2018-03-20 14:58:16', '2018-03-20 14:58:16', '2018-03-20 14:58:16', 'benar', 80, 38, 13, 56, '2018-03-20 14:58:16', '2018-03-20 14:58:16'),
(72, 'x :  -1  y :  6', '2018-03-20 14:58:21', '2018-03-20 14:58:21', '2018-03-20 14:58:21', 'benar', 85, 38, 13, 57, '2018-03-20 14:58:21', '2018-03-20 14:58:21'),
(73, 'x :  -1  y :  6', '2018-03-20 14:58:40', '2018-03-20 14:58:40', '2018-03-20 14:58:40', 'benar', 86, 38, 13, 57, '2018-03-20 14:58:40', '2018-03-20 14:58:40'),
(74, 'x :  7  y :  -5', '2018-03-20 14:58:49', '2018-03-20 14:58:49', '2018-03-20 14:58:49', 'benar', 84, 38, 13, 56, '2018-03-20 14:58:49', '2018-03-20 14:58:49'),
(75, 'x :  3  y :  9', '2018-03-20 14:59:12', '2018-03-20 14:59:12', '2018-03-20 14:59:12', 'benar', 86, 38, 13, 58, '2018-03-20 14:59:12', '2018-03-20 14:59:12'),
(76, '5, 2, 3', '2018-03-20 14:59:15', '2018-03-20 14:59:15', '2018-03-20 14:59:15', 'benar', 87, 38, 13, 55, '2018-03-20 14:59:15', '2018-03-20 14:59:15'),
(77, 'x :  -1  y :  6', '2018-03-20 14:59:20', '2018-03-20 14:59:20', '2018-03-20 14:59:20', 'benar', 81, 38, 13, 57, '2018-03-20 14:59:20', '2018-03-20 14:59:20'),
(78, 'x :  7  y :  -2', '2018-03-20 14:59:29', '2018-03-20 14:59:29', '2018-03-20 14:59:29', 'salah', 82, 38, 13, 56, '2018-03-20 14:59:29', '2018-03-20 14:59:29'),
(79, 'x :  7  y :  -2', '2018-03-20 14:59:35', '2018-03-20 14:59:35', '2018-03-20 14:59:35', 'salah', 76, 38, 13, 56, '2018-03-20 14:59:35', '2018-03-20 14:59:35'),
(80, '5, 3, 2', '2018-03-20 14:59:37', '2018-03-20 14:59:37', '2018-03-20 14:59:37', 'salah', 77, 38, 13, 55, '2018-03-20 14:59:37', '2018-03-20 14:59:37'),
(81, 'x :  7  y :  -2', '2018-03-20 14:59:58', '2018-03-20 14:59:58', '2018-03-20 14:59:58', 'salah', 83, 38, 13, 56, '2018-03-20 14:59:58', '2018-03-20 14:59:58'),
(82, 'x :  3  y :  9', '2018-03-20 15:00:39', '2018-03-20 15:00:39', '2018-03-20 15:00:39', 'benar', 85, 38, 13, 58, '2018-03-20 15:00:39', '2018-03-20 15:00:39'),
(83, 'x :  7  y :  -2', '2018-03-20 15:00:42', '2018-03-20 15:00:42', '2018-03-20 15:00:42', 'salah', 79, 38, 13, 56, '2018-03-20 15:00:42', '2018-03-20 15:00:42'),
(84, 'x :  -1  y :  6', '2018-03-20 15:00:52', '2018-03-20 15:00:52', '2018-03-20 15:00:52', 'benar', 80, 38, 13, 57, '2018-03-20 15:00:52', '2018-03-20 15:00:52'),
(85, '1, 3, 5, 7, 9', '2018-03-20 15:01:12', '2018-03-20 15:01:12', '2018-03-20 15:01:12', 'benar', 86, 38, 13, 59, '2018-03-20 15:01:12', '2018-03-20 15:01:12'),
(86, 'x :  -1  y :  6', '2018-03-20 15:01:33', '2018-03-20 15:01:33', '2018-03-20 15:01:33', 'benar', 84, 38, 13, 57, '2018-03-20 15:01:33', '2018-03-20 15:01:33'),
(87, 'x :  0  y :  6', '2018-03-20 15:01:38', '2018-03-20 15:01:38', '2018-03-20 15:01:38', 'salah', 75, 38, 13, 58, '2018-03-20 15:01:38', '2018-03-20 15:01:38'),
(88, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-20 15:01:43', '2018-03-20 15:01:43', '2018-03-20 15:01:43', 'salah', 85, 38, 13, 59, '2018-03-20 15:01:43', '2018-03-20 15:01:43'),
(89, 'x :  7  y :  -5', '2018-03-20 15:01:49', '2018-03-20 15:01:49', '2018-03-20 15:01:49', 'benar', 87, 38, 13, 56, '2018-03-20 15:01:49', '2018-03-20 15:01:49'),
(90, 'x :  7  y :  -5', '2018-03-20 15:01:58', '2018-03-20 15:01:58', '2018-03-20 15:01:58', 'benar', 77, 38, 13, 56, '2018-03-20 15:01:58', '2018-03-20 15:01:58'),
(91, 'x :  -1  y :  9', '2018-03-20 15:02:37', '2018-03-20 15:02:37', '2018-03-20 15:02:37', 'salah', 83, 38, 13, 57, '2018-03-20 15:02:37', '2018-03-20 15:02:37'),
(92, 'Program terus mencetak 10', '2018-03-20 15:02:45', '2018-03-20 15:02:45', '2018-03-20 15:02:45', 'salah', 85, 38, 13, 60, '2018-03-20 15:02:45', '2018-03-20 15:02:45'),
(93, 'x :  0  y :  6', '2018-03-20 15:02:58', '2018-03-20 15:02:58', '2018-03-20 15:02:58', 'salah', 82, 38, 13, 58, '2018-03-20 15:02:58', '2018-03-20 15:02:58'),
(94, 'x :  3  y :  9', '2018-03-20 15:03:20', '2018-03-20 15:03:20', '2018-03-20 15:03:20', 'benar', 80, 38, 13, 58, '2018-03-20 15:03:20', '2018-03-20 15:03:20'),
(95, 'x :  2  y :  9', '2018-03-20 15:03:24', '2018-03-20 15:03:24', '2018-03-20 15:03:24', 'salah', 87, 38, 13, 57, '2018-03-20 15:03:24', '2018-03-20 15:03:24'),
(96, '1, 3, 5, 7, 9', '2018-03-20 15:03:24', '2018-03-20 15:03:24', '2018-03-20 15:03:24', 'benar', 75, 38, 13, 59, '2018-03-20 15:03:24', '2018-03-20 15:03:24'),
(97, 'x :  -1  y :  9', '2018-03-20 15:03:28', '2018-03-20 15:03:28', '2018-03-20 15:03:28', 'salah', 79, 38, 13, 57, '2018-03-20 15:03:28', '2018-03-20 15:03:28'),
(98, '1, 2, 3, 4, 5, 6, 7, 8, 9', '2018-03-20 15:03:36', '2018-03-20 15:03:36', '2018-03-20 15:03:36', 'salah', 85, 38, 13, 61, '2018-03-20 15:03:36', '2018-03-20 15:03:36'),
(99, 'Program tidak mencetak apapun', '2018-03-20 15:03:41', '2018-03-20 15:03:41', '2018-03-20 15:03:41', 'salah', 86, 38, 13, 60, '2018-03-20 15:03:41', '2018-03-20 15:03:41'),
(100, 'x :  3  y :  9', '2018-03-20 15:03:47', '2018-03-20 15:03:47', '2018-03-20 15:03:47', 'benar', 84, 38, 13, 58, '2018-03-20 15:03:47', '2018-03-20 15:03:47'),
(101, 'x :  -1  y :  6', '2018-03-20 15:03:57', '2018-03-20 15:03:57', '2018-03-20 15:03:57', 'benar', 77, 38, 13, 57, '2018-03-20 15:03:57', '2018-03-20 15:03:57'),
(102, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-20 15:04:00', '2018-03-20 15:04:00', '2018-03-20 15:04:00', 'salah', 81, 38, 13, 59, '2018-03-20 15:04:00', '2018-03-20 15:04:00'),
(103, 'x :  -1  y :  9', '2018-03-20 15:04:04', '2018-03-20 15:04:04', '2018-03-20 15:04:04', 'salah', 76, 38, 13, 57, '2018-03-20 15:04:04', '2018-03-20 15:04:04'),
(104, '26, 5', '2018-03-20 15:04:22', '2018-03-20 15:04:22', '2018-03-20 15:04:22', 'salah', 85, 38, 13, 62, '2018-03-20 15:04:22', '2018-03-20 15:04:22'),
(105, 'x :  0  y :  9', '2018-03-20 15:04:45', '2018-03-20 15:04:45', '2018-03-20 15:04:45', 'salah', 83, 38, 13, 58, '2018-03-20 15:04:45', '2018-03-20 15:04:45'),
(106, '1, 3, 5, 7, 9', '2018-03-20 15:05:07', '2018-03-20 15:05:07', '2018-03-20 15:05:07', 'benar', 82, 38, 13, 59, '2018-03-20 15:05:07', '2018-03-20 15:05:07'),
(107, '1,1,1,1,1,1,1', '2018-03-20 15:05:13', '2018-03-20 15:05:13', '2018-03-20 15:05:13', 'salah', 85, 38, 13, 63, '2018-03-20 15:05:13', '2018-03-20 15:05:13'),
(108, 'x :  0  y :  9', '2018-03-20 15:05:19', '2018-03-20 15:05:19', '2018-03-20 15:05:19', 'salah', 79, 38, 13, 58, '2018-03-20 15:05:19', '2018-03-20 15:05:19'),
(109, 'Program terus mencetak 1', '2018-03-20 15:05:20', '2018-03-20 15:05:20', '2018-03-20 15:05:20', 'salah', 75, 38, 13, 60, '2018-03-20 15:05:20', '2018-03-20 15:05:20'),
(110, 'Program tidak mencetak apapun', '2018-03-20 15:05:27', '2018-03-20 15:05:27', '2018-03-20 15:05:27', 'benar', 86, 38, 13, 61, '2018-03-20 15:05:27', '2018-03-20 15:05:27'),
(111, 'x :  3  y :  9', '2018-03-20 15:05:27', '2018-03-20 15:05:27', '2018-03-20 15:05:27', 'benar', 87, 38, 13, 58, '2018-03-20 15:05:28', '2018-03-20 15:05:28'),
(112, '1, 3, 5, 7, 9', '2018-03-20 15:05:28', '2018-03-20 15:05:28', '2018-03-20 15:05:28', 'benar', 80, 38, 13, 59, '2018-03-20 15:05:28', '2018-03-20 15:05:28'),
(113, '6, 5, 4, 3, 2, 1', '2018-03-20 15:05:46', '2018-03-20 15:05:46', '2018-03-20 15:05:46', 'benar', 85, 38, 13, 64, '2018-03-20 15:05:46', '2018-03-20 15:05:46'),
(114, 'x :  3  y :  9', '2018-03-20 15:05:47', '2018-03-20 15:05:47', '2018-03-20 15:05:47', 'benar', 77, 38, 13, 58, '2018-03-20 15:05:47', '2018-03-20 15:05:47'),
(115, 'x :  0  y :  9', '2018-03-20 15:06:03', '2018-03-20 15:06:03', '2018-03-20 15:06:03', 'salah', 76, 38, 13, 58, '2018-03-20 15:06:03', '2018-03-20 15:06:03'),
(116, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-20 15:06:30', '2018-03-20 15:06:30', '2018-03-20 15:06:30', 'salah', 81, 38, 13, 60, '2018-03-20 15:06:30', '2018-03-20 15:06:30'),
(117, '1, 3, 5, 7, 9', '2018-03-20 15:06:44', '2018-03-20 15:06:44', '2018-03-20 15:06:44', 'benar', 83, 38, 13, 59, '2018-03-20 15:06:44', '2018-03-20 15:06:44'),
(118, '1, 3, 5, 7, 9', '2018-03-20 15:06:55', '2018-03-20 15:06:55', '2018-03-20 15:06:55', 'salah', 75, 38, 13, 61, '2018-03-20 15:06:55', '2018-03-20 15:06:55'),
(119, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-20 15:07:00', '2018-03-20 15:07:00', '2018-03-20 15:07:00', 'salah', 80, 38, 13, 60, '2018-03-20 15:07:00', '2018-03-20 15:07:00'),
(120, '1, 3, 5, 7, 9', '2018-03-20 15:07:06', '2018-03-20 15:07:06', '2018-03-20 15:07:06', 'benar', 84, 38, 13, 59, '2018-03-20 15:07:06', '2018-03-20 15:07:06'),
(121, '1, 3, 5, 7, 9', '2018-03-20 15:07:08', '2018-03-20 15:07:08', '2018-03-20 15:07:08', 'benar', 87, 38, 13, 59, '2018-03-20 15:07:08', '2018-03-20 15:07:08'),
(122, 'Program terus mencetak 1', '2018-03-20 15:07:15', '2018-03-20 15:07:15', '2018-03-20 15:07:15', 'salah', 82, 38, 13, 60, '2018-03-20 15:07:15', '2018-03-20 15:07:15'),
(123, '1, 3, 5, 7, 9', '2018-03-20 15:07:27', '2018-03-20 15:07:27', '2018-03-20 15:07:27', 'benar', 77, 38, 13, 59, '2018-03-20 15:07:27', '2018-03-20 15:07:27'),
(124, '1, 3, 5, 7, 9', '2018-03-20 15:07:50', '2018-03-20 15:07:50', '2018-03-20 15:07:50', 'benar', 79, 38, 13, 59, '2018-03-20 15:07:50', '2018-03-20 15:07:50'),
(125, '1, 3, 5, 7, 9', '2018-03-20 15:08:04', '2018-03-20 15:08:04', '2018-03-20 15:08:04', 'benar', 76, 38, 13, 59, '2018-03-20 15:08:04', '2018-03-20 15:08:04'),
(126, '1, 3, 5, 7, 9', '2018-03-20 15:08:39', '2018-03-20 15:08:39', '2018-03-20 15:08:39', 'salah', 80, 38, 13, 61, '2018-03-20 15:08:39', '2018-03-20 15:08:39'),
(127, 'Program terus mencetak 1', '2018-03-20 15:08:42', '2018-03-20 15:08:42', '2018-03-20 15:08:42', 'salah', 87, 38, 13, 60, '2018-03-20 15:08:42', '2018-03-20 15:08:42'),
(128, 'Semua salah', '2018-03-20 15:08:54', '2018-03-20 15:08:54', '2018-03-20 15:08:54', 'salah', 75, 38, 13, 62, '2018-03-20 15:08:54', '2018-03-20 15:08:54'),
(129, '1, 2, 3, 4, 5, 6, 7, 8, 9', '2018-03-20 15:08:56', '2018-03-20 15:08:56', '2018-03-20 15:08:56', 'salah', 83, 38, 13, 60, '2018-03-20 15:08:56', '2018-03-20 15:08:56'),
(130, '1, 3, 5, 7, 9', '2018-03-20 15:08:59', '2018-03-20 15:08:59', '2018-03-20 15:08:59', 'salah', 82, 38, 13, 61, '2018-03-20 15:08:59', '2018-03-20 15:08:59'),
(131, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '2018-03-20 15:09:06', '2018-03-20 15:09:06', '2018-03-20 15:09:06', 'salah', 77, 38, 13, 60, '2018-03-20 15:09:06', '2018-03-20 15:09:06'),
(132, 'Semua salah', '2018-03-20 15:09:13', '2018-03-20 15:09:13', '2018-03-20 15:09:13', 'salah', 86, 38, 13, 62, '2018-03-20 15:09:13', '2018-03-20 15:09:13'),
(133, '1, 3, 5, 7, 9', '2018-03-20 15:09:24', '2018-03-20 15:09:24', '2018-03-20 15:09:24', 'salah', 81, 38, 13, 61, '2018-03-20 15:09:24', '2018-03-20 15:09:24'),
(134, 'Program terus mencetak 1', '2018-03-20 15:09:39', '2018-03-20 15:09:39', '2018-03-20 15:09:39', 'salah', 84, 38, 13, 60, '2018-03-20 15:09:39', '2018-03-20 15:09:39'),
(135, 'Program terus mencetak 1', '2018-03-20 15:09:56', '2018-03-20 15:09:56', '2018-03-20 15:09:56', 'salah', 76, 38, 13, 60, '2018-03-20 15:09:56', '2018-03-20 15:09:56'),
(136, '1, 2, 3, 4, 5, 6, 7', '2018-03-20 15:10:17', '2018-03-20 15:10:17', '2018-03-20 15:10:17', 'salah', 75, 38, 13, 63, '2018-03-20 15:10:17', '2018-03-20 15:10:17'),
(137, '1, 2, 3, 4, 5, 6, 7, 8, 9', '2018-03-20 15:10:22', '2018-03-20 15:10:22', '2018-03-20 15:10:22', 'salah', 79, 38, 13, 60, '2018-03-20 15:10:22', '2018-03-20 15:10:22'),
(138, '5, 26', '2018-03-20 15:10:39', '2018-03-20 15:10:39', '2018-03-20 15:10:39', 'benar', 80, 38, 13, 62, '2018-03-20 15:10:39', '2018-03-20 15:10:39'),
(139, 'Program tidak mencetak apapun', '2018-03-20 15:10:39', '2018-03-20 15:10:39', '2018-03-20 15:10:39', 'benar', 77, 38, 13, 61, '2018-03-20 15:10:39', '2018-03-20 15:10:39'),
(140, 'Program Looping', '2018-03-20 15:11:03', '2018-03-20 15:11:03', '2018-03-20 15:11:03', 'salah', 87, 38, 13, 61, '2018-03-20 15:11:03', '2018-03-20 15:11:03'),
(141, '26, 5', '2018-03-20 15:11:06', '2018-03-20 15:11:06', '2018-03-20 15:11:06', 'salah', 82, 38, 13, 62, '2018-03-20 15:11:06', '2018-03-20 15:11:06'),
(142, '1,1,1,1,1,1,1', '2018-03-20 15:11:20', '2018-03-20 15:11:20', '2018-03-20 15:11:20', 'salah', 86, 38, 13, 63, '2018-03-20 15:11:20', '2018-03-20 15:11:20'),
(143, '6, 5, 4, 3, 2, 1', '2018-03-20 15:11:41', '2018-03-20 15:11:41', '2018-03-20 15:11:41', 'benar', 75, 38, 13, 64, '2018-03-20 15:11:41', '2018-03-20 15:11:41'),
(144, 'Program tidak mencetak apapun', '2018-03-20 15:11:43', '2018-03-20 15:11:43', '2018-03-20 15:11:43', 'benar', 76, 38, 13, 61, '2018-03-20 15:11:43', '2018-03-20 15:11:43'),
(145, 'Program tidak mencetak apapun', '2018-03-20 15:12:05', '2018-03-20 15:12:05', '2018-03-20 15:12:05', 'benar', 79, 38, 13, 61, '2018-03-20 15:12:05', '2018-03-20 15:12:05'),
(146, '1,1,1,1,1,1,1', '2018-03-20 15:12:20', '2018-03-20 15:12:20', '2018-03-20 15:12:20', 'salah', 82, 38, 13, 63, '2018-03-20 15:12:20', '2018-03-20 15:12:20'),
(147, '1,1,1,1,1,1,1', '2018-03-20 15:12:27', '2018-03-20 15:12:27', '2018-03-20 15:12:27', 'salah', 80, 38, 13, 63, '2018-03-20 15:12:27', '2018-03-20 15:12:27'),
(148, '1, 3, 5, 7, 9', '2018-03-20 15:12:51', '2018-03-20 15:12:51', '2018-03-20 15:12:51', 'salah', 83, 38, 13, 61, '2018-03-20 15:12:51', '2018-03-20 15:12:51'),
(149, '5, 26', '2018-03-20 15:13:03', '2018-03-20 15:13:03', '2018-03-20 15:13:03', 'benar', 87, 38, 13, 62, '2018-03-20 15:13:03', '2018-03-20 15:13:03'),
(150, 'Semua salah', '2018-03-20 15:13:11', '2018-03-20 15:13:11', '2018-03-20 15:13:11', 'salah', 77, 38, 13, 62, '2018-03-20 15:13:11', '2018-03-20 15:13:11'),
(151, '6, 5, 4, 3, 2, 1', '2018-03-20 15:13:35', '2018-03-20 15:13:35', '2018-03-20 15:13:35', 'benar', 80, 38, 13, 64, '2018-03-20 15:13:35', '2018-03-20 15:13:35'),
(152, 'Semua salah', '2018-03-20 15:13:41', '2018-03-20 15:13:41', '2018-03-20 15:13:41', 'salah', 76, 38, 13, 62, '2018-03-20 15:13:41', '2018-03-20 15:13:41'),
(153, '5, 4, 3, 2, 1', '2018-03-20 15:14:34', '2018-03-20 15:14:34', '2018-03-20 15:14:34', 'salah', 86, 38, 13, 64, '2018-03-20 08:14:34', '2018-03-20 15:14:34'),
(154, 'Program Looping', '2018-03-20 15:14:01', '2018-03-20 15:14:01', '2018-03-20 15:14:01', 'salah', 84, 38, 13, 61, '2018-03-20 15:14:01', '2018-03-20 15:14:01'),
(155, '1, 2, 3, 4, 5, 6, 7', '2018-03-20 15:14:03', '2018-03-20 15:14:03', '2018-03-20 15:14:03', 'salah', 87, 38, 13, 63, '2018-03-20 15:14:03', '2018-03-20 15:14:03'),
(156, '1, 2, 3, 4, 5, 6, 7', '2018-03-20 15:22:29', '2018-03-20 15:22:29', '2018-03-20 15:22:29', 'salah', 81, 38, 13, 63, '2018-03-20 08:22:29', '2018-03-20 15:22:30'),
(157, 'Semua salah', '2018-03-20 15:14:27', '2018-03-20 15:14:27', '2018-03-20 15:14:27', 'salah', 84, 38, 13, 62, '2018-03-20 15:14:27', '2018-03-20 15:14:27'),
(158, '26, 6', '2018-03-20 15:14:33', '2018-03-20 15:14:33', '2018-03-20 15:14:33', 'salah', 79, 38, 13, 62, '2018-03-20 15:14:33', '2018-03-20 15:14:33'),
(159, '3, 2, 5', '2018-03-20 15:14:36', '2018-03-20 15:14:36', '2018-03-20 15:14:36', 'salah', 75, 38, 13, 55, '2018-03-20 15:14:36', '2018-03-20 15:14:36'),
(160, '1, 2, 3, 4, 5, 6, 7', '2018-03-20 15:14:38', '2018-03-20 15:14:38', '2018-03-20 15:14:38', 'salah', 76, 38, 13, 63, '2018-03-20 15:14:38', '2018-03-20 15:14:38'),
(161, '5, 26', '2018-03-20 15:14:43', '2018-03-20 15:14:43', '2018-03-20 15:14:43', 'benar', 83, 38, 13, 62, '2018-03-20 15:14:43', '2018-03-20 15:14:43'),
(162, '5, 4, 3, 2, 1', '2018-03-20 15:15:39', '2018-03-20 15:15:39', '2018-03-20 15:15:39', 'salah', 87, 38, 13, 64, '2018-03-20 08:15:39', '2018-03-20 15:15:39'),
(163, '1,1,1,1,1,1,1', '2018-03-20 15:15:23', '2018-03-20 15:15:23', '2018-03-20 15:15:23', 'salah', 77, 38, 13, 63, '2018-03-20 15:15:23', '2018-03-20 15:15:23'),
(164, '1,1,1,1,1,1,1', '2018-03-20 15:15:29', '2018-03-20 15:15:29', '2018-03-20 15:15:29', 'salah', 79, 38, 13, 63, '2018-03-20 15:15:29', '2018-03-20 15:15:29'),
(165, '1,1,1,1,1,1,1', '2018-03-20 15:15:33', '2018-03-20 15:15:33', '2018-03-20 15:15:33', 'salah', 84, 38, 13, 63, '2018-03-20 15:15:33', '2018-03-20 15:15:33'),
(166, '6, 5, 4, 3, 2, 1', '2018-03-20 15:16:22', '2018-03-20 15:16:22', '2018-03-20 15:16:22', 'benar', 76, 38, 13, 64, '2018-03-20 08:16:22', '2018-03-20 15:16:22'),
(167, '1,1,1,1,1,1,1', '2018-03-20 15:15:42', '2018-03-20 15:15:42', '2018-03-20 15:15:42', 'salah', 83, 38, 13, 63, '2018-03-20 15:15:42', '2018-03-20 15:15:42'),
(168, '1, 2, 3, 4, 5', '2018-03-20 15:22:57', '2018-03-20 15:22:57', '2018-03-20 15:22:57', 'salah', 81, 38, 13, 64, '2018-03-20 08:22:57', '2018-03-20 15:22:57'),
(169, '6, 5, 4, 3, 2, 1', '2018-03-20 15:16:38', '2018-03-20 15:16:38', '2018-03-20 15:16:38', 'benar', 77, 38, 13, 64, '2018-03-20 15:16:38', '2018-03-20 15:16:38'),
(170, '6, 5, 4, 3, 2', '2018-03-20 15:16:40', '2018-03-20 15:16:40', '2018-03-20 15:16:40', 'salah', 83, 38, 13, 64, '2018-03-20 15:16:40', '2018-03-20 15:16:40'),
(171, '6, 5, 4, 3, 2, 1', '2018-03-20 15:16:40', '2018-03-20 15:16:40', '2018-03-20 15:16:40', 'benar', 84, 38, 13, 64, '2018-03-20 15:16:40', '2018-03-20 15:16:40'),
(172, 'Sleep and Wait', '2018-03-26 01:42:57', '2018-03-26 01:42:57', '2018-03-26 01:42:57', 'salah', 5, 37, 12, 30, '2018-03-25 18:42:57', '2018-03-26 01:42:57'),
(173, 'Sinkronisasi', '2018-03-26 01:43:00', '2018-03-26 01:43:00', '2018-03-26 01:43:00', 'salah', 5, 37, 12, 31, '2018-03-25 18:43:00', '2018-03-26 01:43:00'),
(174, 'Bounded Waiting', '2018-03-26 01:43:03', '2018-03-26 01:43:03', '2018-03-26 01:43:03', 'salah', 5, 37, 12, 32, '2018-03-25 18:43:03', '2018-03-26 01:43:03'),
(175, 'Critial Section', '2018-03-26 01:39:33', '2018-03-26 01:39:33', '2018-03-26 01:39:33', 'salah', 5, 37, 12, 33, '2018-03-26 01:39:33', '2018-03-26 01:39:33'),
(176, 'Adanya Progress', '2018-03-26 01:39:50', '2018-03-26 01:39:50', '2018-03-26 01:39:50', 'salah', 5, 37, 12, 34, '2018-03-26 01:39:50', '2018-03-26 01:39:50'),
(177, 'Software Solution', '2018-03-26 01:39:55', '2018-03-26 01:39:55', '2018-03-26 01:39:55', 'salah', 5, 37, 12, 35, '2018-03-26 01:39:55', '2018-03-26 01:39:55'),
(178, 'Semaphore', '2018-03-26 01:40:00', '2018-03-26 01:40:00', '2018-03-26 01:40:00', 'salah', 5, 37, 12, 36, '2018-03-26 01:40:00', '2018-03-26 01:40:00'),
(179, 'Produser/Konsumer', '2018-03-26 14:24:52', '2018-03-26 14:24:52', '2018-03-26 14:24:52', 'salah', 99, 37, 12, 30, '2018-03-26 14:24:52', '2018-03-26 14:24:52'),
(180, 'Cooperating Process', '2018-03-26 14:25:01', '2018-03-26 14:25:01', '2018-03-26 14:25:01', 'benar', 96, 37, 12, 30, '2018-03-26 14:25:01', '2018-03-26 14:25:01'),
(181, 'Sleep and Wait', '2018-03-26 14:25:26', '2018-03-26 14:25:26', '2018-03-26 14:25:26', 'salah', 98, 37, 12, 30, '2018-03-26 14:25:26', '2018-03-26 14:25:26'),
(182, 'Mutual Exclusion', '2018-03-26 14:25:50', '2018-03-26 14:25:50', '2018-03-26 14:25:50', 'salah', 99, 37, 12, 31, '2018-03-26 14:25:50', '2018-03-26 14:25:50'),
(183, 'Produser/Konsumer', '2018-03-26 14:25:55', '2018-03-26 14:25:55', '2018-03-26 14:25:55', 'salah', 100, 37, 12, 30, '2018-03-26 14:25:55', '2018-03-26 14:25:55'),
(184, 'Critial Section', '2018-03-26 14:26:21', '2018-03-26 14:26:21', '2018-03-26 14:26:21', 'salah', 99, 37, 12, 32, '2018-03-26 14:26:21', '2018-03-26 14:26:21'),
(185, 'Critial Section', '2018-03-26 14:26:32', '2018-03-26 14:26:32', '2018-03-26 14:26:32', 'salah', 98, 37, 12, 31, '2018-03-26 14:26:32', '2018-03-26 14:26:32'),
(186, 'Produser/Konsumer', '2018-03-26 14:26:43', '2018-03-26 14:26:43', '2018-03-26 14:26:43', 'salah', 93, 37, 12, 30, '2018-03-26 14:26:43', '2018-03-26 14:26:43'),
(187, 'Race Condition', '2018-03-26 14:27:05', '2018-03-26 14:27:05', '2018-03-26 14:27:05', 'salah', 99, 37, 12, 33, '2018-03-26 14:27:05', '2018-03-26 14:27:05'),
(188, 'Race Condition', '2018-03-26 14:27:09', '2018-03-26 14:27:09', '2018-03-26 14:27:09', 'salah', 98, 37, 12, 32, '2018-03-26 14:27:09', '2018-03-26 14:27:09'),
(189, 'Mutual Exclusion', '2018-03-26 14:27:12', '2018-03-26 14:27:12', '2018-03-26 14:27:12', 'benar', 98, 37, 12, 33, '2018-03-26 14:27:12', '2018-03-26 14:27:12'),
(190, 'Sinkronisasi', '2018-03-26 14:27:12', '2018-03-26 14:27:12', '2018-03-26 14:27:12', 'salah', 100, 37, 12, 31, '2018-03-26 14:27:12', '2018-03-26 14:27:12'),
(191, 'Sinkronisasi', '2018-03-26 14:27:15', '2018-03-26 14:27:15', '2018-03-26 14:27:15', 'benar', 98, 37, 12, 34, '2018-03-26 14:27:15', '2018-03-26 14:27:15'),
(192, 'Mutual Exclusion', '2018-03-26 14:27:16', '2018-03-26 14:27:16', '2018-03-26 14:27:16', 'salah', 99, 37, 12, 34, '2018-03-26 14:27:16', '2018-03-26 14:27:16'),
(193, 'Semaphore', '2018-03-26 14:27:18', '2018-03-26 14:27:18', '2018-03-26 14:27:18', 'salah', 98, 37, 12, 35, '2018-03-26 14:27:18', '2018-03-26 14:27:18'),
(194, 'Critial Section', '2018-03-26 14:27:19', '2018-03-26 14:27:19', '2018-03-26 14:27:19', 'salah', 100, 37, 12, 32, '2018-03-26 14:27:19', '2018-03-26 14:27:19'),
(195, 'Mutual Exclusive', '2018-03-26 14:27:21', '2018-03-26 14:27:21', '2018-03-26 14:27:21', 'salah', 98, 37, 12, 36, '2018-03-26 14:27:21', '2018-03-26 14:27:21'),
(196, 'Semaphore', '2018-03-26 14:27:23', '2018-03-26 14:27:23', '2018-03-26 14:27:23', 'salah', 99, 37, 12, 35, '2018-03-26 14:27:23', '2018-03-26 14:27:23'),
(197, 'Hardware Solution', '2018-03-26 14:27:26', '2018-03-26 14:27:26', '2018-03-26 14:27:26', 'salah', 98, 37, 12, 37, '2018-03-26 14:27:26', '2018-03-26 14:27:26'),
(198, 'Race Condition', '2018-03-26 14:27:48', '2018-03-26 14:27:48', '2018-03-26 14:27:48', 'benar', 93, 37, 12, 31, '2018-03-26 14:27:48', '2018-03-26 14:27:48'),
(199, 'Bounded Waiting', '2018-03-26 14:27:59', '2018-03-26 14:27:59', '2018-03-26 14:27:59', 'salah', 93, 37, 12, 32, '2018-03-26 14:27:59', '2018-03-26 14:27:59'),
(200, 'Independent Process', '2018-03-26 14:28:34', '2018-03-26 14:28:34', '2018-03-26 14:28:34', 'salah', 92, 37, 12, 30, '2018-03-26 14:28:34', '2018-03-26 14:28:34'),
(201, 'Circular Waiting', '2018-03-26 14:28:36', '2018-03-26 14:28:36', '2018-03-26 14:28:36', 'salah', 93, 37, 12, 33, '2018-03-26 14:28:36', '2018-03-26 14:28:36'),
(202, 'Bounded Waiting', '2018-03-26 14:28:40', '2018-03-26 14:28:40', '2018-03-26 14:28:40', 'salah', 92, 37, 12, 31, '2018-03-26 14:28:40', '2018-03-26 14:28:40'),
(203, 'Sinkronisasi', '2018-03-26 14:28:45', '2018-03-26 14:28:45', '2018-03-26 14:28:45', 'benar', 93, 37, 12, 34, '2018-03-26 14:28:45', '2018-03-26 14:28:45'),
(204, 'Independent Process', '2018-03-26 14:28:47', '2018-03-26 14:28:47', '2018-03-26 14:28:47', 'salah', 91, 37, 12, 30, '2018-03-26 14:28:47', '2018-03-26 14:28:47'),
(205, 'Sinkronisasi', '2018-03-26 14:28:49', '2018-03-26 14:28:49', '2018-03-26 14:28:49', 'salah', 93, 37, 12, 35, '2018-03-26 14:28:49', '2018-03-26 14:28:49'),
(206, 'Race Condition', '2018-03-26 14:28:53', '2018-03-26 14:28:53', '2018-03-26 14:28:53', 'benar', 91, 37, 12, 31, '2018-03-26 14:28:53', '2018-03-26 14:28:53'),
(207, 'Mutual Exclusive', '2018-03-26 14:28:54', '2018-03-26 14:28:54', '2018-03-26 14:28:54', 'salah', 93, 37, 12, 36, '2018-03-26 14:28:54', '2018-03-26 14:28:54'),
(208, 'Bounded Waiting', '2018-03-26 14:29:00', '2018-03-26 14:29:00', '2018-03-26 14:29:00', 'salah', 91, 37, 12, 32, '2018-03-26 14:29:00', '2018-03-26 14:29:00'),
(209, 'P != None', '2018-03-27 14:10:19', '2018-03-27 14:10:19', '2018-03-27 14:10:19', 'benar', 88, 40, 15, 65, '2018-03-27 07:10:19', '2018-03-27 14:10:19'),
(210, 'P != None', '2018-03-27 13:57:49', '2018-03-27 13:57:49', '2018-03-27 13:57:49', 'benar', 5, 40, 15, 65, '2018-03-27 13:57:49', '2018-03-27 13:57:49'),
(211, 'P != None', '2018-03-27 14:16:24', '2018-03-27 14:16:24', '2018-03-27 14:16:24', 'benar', 89, 40, 15, 65, '2018-03-27 14:16:24', '2018-03-27 14:16:24'),
(212, 'self.first != None', '2018-03-28 10:51:32', '2018-03-28 10:51:32', '2018-03-28 10:51:32', 'salah', 30, 40, 15, 65, '2018-03-28 03:51:32', '2018-03-28 10:51:32'),
(213, 'P != None', '2018-03-28 10:51:52', '2018-03-28 10:51:52', '2018-03-28 10:51:52', 'benar', 34, 40, 15, 65, '2018-03-28 03:51:52', '2018-03-28 10:51:52'),
(214, 'P != None', '2018-03-28 10:51:24', '2018-03-28 10:51:24', '2018-03-28 10:51:24', 'benar', 28, 40, 15, 65, '2018-03-28 03:51:24', '2018-03-28 10:51:24'),
(215, 'P != None', '2018-03-28 10:51:20', '2018-03-28 10:51:20', '2018-03-28 10:51:20', 'benar', 31, 40, 15, 65, '2018-03-28 10:51:20', '2018-03-28 10:51:20'),
(216, 'P != None', '2018-03-28 10:51:39', '2018-03-28 10:51:39', '2018-03-28 10:51:39', 'benar', 33, 40, 15, 65, '2018-03-28 10:51:39', '2018-03-28 10:51:39'),
(217, 'P != None', '2018-03-28 10:53:22', '2018-03-28 10:53:22', '2018-03-28 10:53:22', 'benar', 32, 40, 15, 65, '2018-03-28 03:53:22', '2018-03-28 10:53:22'),
(218, 'P.next != None', '2018-03-28 10:52:19', '2018-03-28 10:52:19', '2018-03-28 10:52:19', 'salah', 36, 40, 15, 65, '2018-03-28 10:52:19', '2018-03-28 10:52:19'),
(219, 'P != None', '2018-03-28 10:53:33', '2018-03-28 10:53:33', '2018-03-28 10:53:33', 'benar', 41, 40, 15, 65, '2018-03-28 03:53:33', '2018-03-28 10:53:33'),
(220, 'P != None', '2018-03-28 10:53:25', '2018-03-28 10:53:25', '2018-03-28 10:53:25', 'benar', 37, 40, 15, 65, '2018-03-28 03:53:25', '2018-03-28 10:53:25'),
(221, 'P.next != None', '2018-03-28 10:52:43', '2018-03-28 10:52:43', '2018-03-28 10:52:43', 'salah', 38, 40, 15, 65, '2018-03-28 10:52:43', '2018-03-28 10:52:43'),
(222, 'P != None', '2018-03-28 10:52:58', '2018-03-28 10:52:58', '2018-03-28 10:52:58', 'benar', 35, 40, 15, 65, '2018-03-28 03:52:58', '2018-03-28 10:52:58'),
(223, 'P != None', '2018-03-28 10:53:26', '2018-03-28 10:53:26', '2018-03-28 10:53:26', 'benar', 29, 40, 15, 65, '2018-03-28 10:53:26', '2018-03-28 10:53:26'),
(224, 'P != None', '2018-03-28 10:59:45', '2018-03-28 10:59:45', '2018-03-28 10:59:45', 'benar', 40, 40, 15, 65, '2018-03-28 10:59:45', '2018-03-28 10:59:45'),
(225, 'b', '2018-04-15 23:13:19', '2018-04-15 23:13:19', '2018-04-15 23:13:19', 'salah', 5, 42, 17, 66, '2018-04-15 23:13:19', '2018-04-15 23:13:19'),
(226, 'b', '2018-04-15 23:13:23', '2018-04-15 23:13:23', '2018-04-15 23:13:23', 'benar', 5, 42, 17, 67, '2018-04-15 23:13:23', '2018-04-15 23:13:23'),
(227, 'c', '2018-04-15 23:13:27', '2018-04-15 23:13:27', '2018-04-15 23:13:27', 'benar', 5, 42, 17, 68, '2018-04-15 23:13:27', '2018-04-15 23:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `semester` int(255) NOT NULL,
  `kodeMK` varchar(255) NOT NULL,
  `namaMK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `emas` bigint(255) NOT NULL,
  `perak` bigint(255) NOT NULL,
  `perunggu` bigint(255) NOT NULL,
  `total` bigint(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `nama`, `nrp`, `emas`, `perak`, `perunggu`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Steven Yong', '1472088', 1, 4, 5, 22, '2017-12-05 02:33:45', NULL),
(2, 'billy', '1573088', 0, 0, 0, 0, '2017-12-04 19:36:30', '2017-12-04 19:36:30'),
(4, 'Raynald Wismahardja', '1472010', 1, 1, 1, 9, '2017-12-17 01:01:53', NULL),
(5, 'Jason Alexander', '1472013', 1, 0, 1, 6, '2017-12-17 01:41:17', NULL),
(6, 'Andre sutanto', '1572007', 0, 1, 2, 5, '2017-12-17 00:50:44', NULL),
(7, 'Elvina', '1472002', 2, 0, 0, 10, '2018-03-19 07:50:03', '2018-03-19 14:50:03'),
(8, 'Starry', '1572017', 0, 0, 1, 1, '2017-12-17 00:51:09', NULL),
(9, 'Chandra Vincent Grafianto', '1472008', 0, 0, 0, 0, '2018-01-13 13:22:03', '2018-01-13 13:22:03'),
(10, 'James Asrah Immanuel', '1472011', 0, 1, 0, 3, '2018-03-19 07:50:03', '2018-03-19 14:50:03'),
(26, 'RIZALDI CAKRA ADIPRATAMA', '1572033', 0, 0, 0, 0, '2018-02-07 09:04:30', '2018-02-07 09:04:30'),
(27, 'ZALDY IGNATIUS AUW', '1772031', 0, 0, 0, 0, '2018-02-07 11:46:55', '2018-02-07 11:46:55'),
(28, 'ARIEF KURNIAWAN', '1772049', 0, 0, 0, 0, '2018-02-07 11:47:15', '2018-02-07 11:47:15'),
(29, 'RONALD ADI SETIAWAN', '1772008', 0, 0, 0, 0, '2018-02-07 11:47:18', '2018-02-07 11:47:18'),
(30, 'STEFANUS HERMAWAN', '1772023', 0, 0, 0, 0, '2018-02-07 11:47:26', '2018-02-07 11:47:26'),
(31, 'JONATHAN BERNAD', '1772004', 0, 0, 0, 0, '2018-02-07 11:47:31', '2018-02-07 11:47:31'),
(32, 'KAFKA FEBIANTO AGIHARTA', '1772012', 0, 0, 0, 0, '2018-02-07 11:48:04', '2018-02-07 11:48:04'),
(33, 'AVINASH', '1772030', 0, 0, 0, 0, '2018-02-07 11:48:09', '2018-02-07 11:48:09'),
(34, 'STEVEN RUMANTO HARNANDY', '1772026', 0, 0, 0, 0, '2018-02-07 11:48:20', '2018-02-07 11:48:20'),
(35, 'ALEXIUS SURYA', '1772043', 0, 0, 0, 0, '2018-02-07 11:48:25', '2018-02-07 11:48:25'),
(36, 'ARIYANTO SANI', '1772046', 0, 0, 0, 0, '2018-02-07 11:48:32', '2018-02-07 11:48:32'),
(37, 'ROY PARSAORAN', '1772044', 0, 0, 0, 0, '2018-02-07 11:48:51', '2018-02-07 11:48:51'),
(38, 'JONNY', '1772051', 0, 0, 0, 0, '2018-02-07 11:49:11', '2018-02-07 11:49:11'),
(39, 'CELINE LIESHIANA', '1772005', 0, 0, 0, 0, '2018-02-07 11:49:17', '2018-02-07 11:49:17'),
(40, 'KELVIN SUSANTO', '1772039', 0, 0, 0, 0, '2018-02-07 11:49:35', '2018-02-07 11:49:35'),
(41, 'ERICO APRIANUS', '1672038', 0, 0, 0, 0, '2018-02-12 16:14:23', '2018-02-12 16:14:23'),
(42, 'ARTHUR DAMARWULAN', '1672025', 0, 0, 0, 0, '2018-02-12 16:14:43', '2018-02-12 16:14:43'),
(43, 'PRATOMO ASTA NUGRAHA', '1672019', 0, 0, 0, 0, '2018-02-12 16:14:45', '2018-02-12 16:14:45'),
(44, 'RANGGA WIRIAPUTRA', '1672903', 0, 0, 0, 0, '2018-02-12 16:14:50', '2018-02-12 16:14:50'),
(45, 'ANDRIANUS ALVIEN', '1672039', 0, 0, 0, 0, '2018-02-12 16:14:51', '2018-02-12 16:14:51'),
(46, 'JOSHUA EKA PUTRA JUWARNO', '1672062', 0, 0, 0, 0, '2018-02-12 16:15:35', '2018-02-12 16:15:35'),
(47, 'ALFIN LIUNARDI SENJAYA', '1672034', 0, 0, 0, 0, '2018-02-12 16:17:58', '2018-02-12 16:17:58'),
(48, 'TOMMY', '1672050', 0, 0, 0, 0, '2018-02-12 16:18:06', '2018-02-12 16:18:06'),
(49, 'HANSON HENDRAWAN', '1672020', 0, 0, 0, 0, '2018-02-12 16:18:27', '2018-02-12 16:18:27'),
(50, 'YOKO WILYAM SIGAN', '1672011', 0, 0, 0, 0, '2018-02-12 16:27:17', '2018-02-12 16:27:17'),
(51, 'STEVEN CHRISTIAN HERYAWAN', '1672056', 0, 0, 0, 0, '2018-02-12 16:30:19', '2018-02-12 16:30:19'),
(52, 'ARTHUR DAMARWULAN', '1672025', 0, 0, 0, 0, '2018-02-12 16:51:14', '2018-02-12 16:51:14'),
(53, 'WILLIAM', '1672058', 0, 0, 0, 0, '2018-02-15 08:40:27', '2018-02-15 08:40:27'),
(54, 'YAFET RAPHAEL', '1672066', 0, 0, 0, 0, '2018-02-15 08:40:28', '2018-02-15 08:40:28'),
(55, 'ALVIN ATMACENDANA', '1672043', 0, 0, 0, 0, '2018-02-15 08:40:33', '2018-02-15 08:40:33'),
(56, 'HENRY TIMOTHY HALIM NURADI', '1672029', 0, 0, 0, 0, '2018-02-15 08:40:33', '2018-02-15 08:40:33'),
(57, 'SAMUEL GODJALI', '1672041', 0, 0, 0, 0, '2018-02-15 08:40:34', '2018-02-15 08:40:34'),
(58, 'CHRISTIAN', '1672022', 0, 0, 0, 0, '2018-02-15 08:40:42', '2018-02-15 08:40:42'),
(59, 'LUTHFI DWI NUGRAHA', '1672057', 0, 0, 0, 0, '2018-02-15 08:40:49', '2018-02-15 08:40:49'),
(60, 'CHRISTIAN CHASTRO', '1672006', 0, 0, 0, 0, '2018-02-15 08:40:52', '2018-02-15 08:40:52'),
(61, 'BRYAN', '1672013', 0, 0, 0, 0, '2018-02-15 08:40:54', '2018-02-15 08:40:54'),
(62, 'EDWIN SATRIA INDRAWAN', '1672009', 0, 0, 0, 0, '2018-02-15 08:41:09', '2018-02-15 08:41:09'),
(63, 'RICARDO FRANCLINTON', '1672017', 0, 0, 0, 0, '2018-02-15 08:41:09', '2018-02-15 08:41:09'),
(64, 'DENNIS AGUSTINUS', '1672076', 0, 0, 0, 0, '2018-02-15 08:41:21', '2018-02-15 08:41:21'),
(65, 'JELBIN JONI', '1672067', 0, 0, 0, 0, '2018-02-15 08:41:34', '2018-02-15 08:41:34'),
(66, 'SHAFIRA PUTRI KURNIAWAN', '1672040', 0, 0, 0, 0, '2018-02-15 08:41:36', '2018-02-15 08:41:36'),
(67, 'RIKY ANDREAS SAPUTRA', '1672037', 0, 0, 0, 0, '2018-02-15 08:41:58', '2018-02-15 08:41:58'),
(68, 'JIMMY PURNAWAN', '1672002', 0, 0, 0, 0, '2018-02-15 08:43:29', '2018-02-15 08:43:29'),
(69, 'NAOMI HELLYNA MAKALEW', '1672052', 0, 0, 0, 0, '2018-02-15 08:43:46', '2018-02-15 08:43:46'),
(70, 'RADEN KASYFI AGHITYA NATADILAGA', '1672030', 0, 0, 0, 0, '2018-02-15 08:44:43', '2018-02-15 08:44:43'),
(71, 'LUKAS HANSEL GANDA', '1672051', 0, 0, 0, 0, '2018-02-15 08:45:22', '2018-02-15 08:45:22'),
(72, 'ADITYA WIRYA YUTAMA', '1672054', 0, 0, 0, 0, '2018-02-15 08:45:23', '2018-02-15 08:45:23'),
(73, 'Wilson Sembiring', '1372097', 0, 0, 1, 1, '2018-03-19 07:50:03', '2018-03-19 14:50:03'),
(74, 'REINALDI GEMILANG SETIAWAN POETRA', '1772038', 0, 0, 0, 0, '2018-03-20 09:38:44', '2018-03-20 09:38:44'),
(75, 'ALINA VANDARINA ABDULKARIM', '1772029', 0, 0, 0, 0, '2018-03-20 09:38:47', '2018-03-20 09:38:47'),
(76, 'DANIEL ELIEZER', '1772040', 0, 0, 0, 0, '2018-03-20 09:38:56', '2018-03-20 09:38:56'),
(77, 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', '1772048', 0, 0, 0, 0, '2018-03-20 09:42:58', '2018-03-20 09:42:58'),
(78, 'ALDI MALDIANO TADE', '1772019', 0, 0, 0, 0, '2018-03-20 09:47:08', '2018-03-20 09:47:08'),
(79, 'ALFIENSIUS SALEPPANG', '1772035', 0, 0, 0, 0, '2018-03-20 09:47:15', '2018-03-20 09:47:15'),
(80, 'JEREMIA ROTUA SIANTURI', '1772033', 0, 0, 0, 0, '2018-03-20 09:49:05', '2018-03-20 09:49:05'),
(81, 'SULTHAN TAQI RABBANI', '1772032', 0, 0, 0, 0, '2018-03-20 09:49:30', '2018-03-20 09:49:30'),
(82, 'WIRA ANDIKA', '1772036', 0, 0, 0, 0, '2018-03-20 09:51:48', '2018-03-20 09:51:48'),
(83, 'YOGA PRATAMA YULIANTO', '1772042', 0, 0, 0, 0, '2018-03-20 09:52:41', '2018-03-20 09:52:41'),
(84, 'YEREMIA EGA SEPTIA NUGRAHA', '1672053', 0, 0, 0, 0, '2018-03-20 09:53:19', '2018-03-20 09:53:19'),
(85, 'SAMUEL KRISTIANTO DEA', '1672078', 0, 0, 0, 0, '2018-03-20 09:55:16', '2018-03-20 09:55:16'),
(86, 'THEO ALEKSANDER WILLIAM', '1772021', 0, 0, 0, 0, '2018-03-20 10:00:01', '2018-03-20 10:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `livestream`
--

CREATE TABLE `livestream` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hlink` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `about` text,
  `channel` varchar(255) NOT NULL,
  `jadwal` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(200) NOT NULL,
  `nrp` int(7) NOT NULL,
  `namaMhs` varchar(255) NOT NULL,
  `password` varchar(2555) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `level` bigint(255) NOT NULL,
  `experience` bigint(255) NOT NULL,
  `streamlink` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `warna` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nrp`, `namaMhs`, `password`, `fakultas`, `prodi`, `email`, `email2`, `tanggalLahir`, `alamat`, `gender`, `telephone`, `kota`, `level`, `experience`, `streamlink`, `role`, `foto`, `warna`, `status`, `about`, `created_at`, `updated_at`) VALUES
(1, 1472088, 'Steven Yong', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Steven.yong@outlook.com', NULL, '1996-01-06', 'Jalan PLN Dalam no 15', 'Pria', '081221669924', 'Bandung', 255, 2018, 'UCdjcM0dxFRLvVtGTBlv5Q0Q', 'Mahasiswa', 'img.jpg', 'purple', 'aktif', 'Segala sesuatu indah pada waktunya', '2018-01-14 14:34:40', '2017-11-16 06:50:00'),
(2, 1472010, 'Raynald Wismahardja', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Raynald@gmail.com', NULL, '1996-11-22', 'Jalan TKI III  no 15', 'Pria', '0812216674', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Raynald wish', '2018-01-11 14:20:43', '2017-11-16 21:32:15'),
(3, 1572007, 'Andre sutanto', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'andre@gmail.com', NULL, '1997-11-17', 'Jalan Kopo no 15', 'Pria', '08122124121', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Membimbing kejalan yang benar', '2018-01-11 14:20:43', '2017-11-16 22:52:31'),
(4, 1572017, 'Starry', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Starry@gmail.com', NULL, '1997-07-04', 'Jalan kurdi no 15', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 14:36:07', '2017-12-04 19:19:50'),
(5, 1472002, 'Elvina', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'elvina@gmail.com', '1472002@gmail.com', '2017-08-03', 'Jalan gracia no 11', 'Wanita', '08112312451', 'Selat Panjang', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Ketua Senat FIT', '2018-01-11 14:23:51', '2018-02-19 10:30:35'),
(6, 1472013, 'Jason Alexander', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'prof@gmail.com', NULL, '1996-12-03', 'Jalan TKI II no 15', 'Pria', '08123315123', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Proff numba wan', '2018-01-11 14:20:43', '2017-12-04 19:31:57'),
(7, 1573088, 'Billy', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'billy@gmail.com', NULL, '1997-02-27', 'Jalan Katapang no 22', 'Pria', '0812921234', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Hidup ini hanya percobaan \r\ntest\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '2018-01-11 14:20:43', '2017-12-04 19:36:30'),
(9, 1472001, 'Fenita Suprapto', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Fenita@gmail.com', NULL, '1995-01-09', 'Jalan Gracia no 15', 'Wanita', '081232345567', 'Malang', 1, 1, NULL, 'Mahasiswa', '20180205182313.png', 'Red', 'aktif', 'Opo', '2018-01-14 11:21:06', '2018-02-06 02:23:13'),
(10, 1472008, 'Chandra Vincent Grafianto', 'b950e995d278388d0879542d1f8d2863', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Vincent@gmail.com', NULL, '1996-06-23', 'Jalan Batununggal lestari no 28', 'Pria', '08123124123', 'Bandung', 1, 1, NULL, 'Mahasiswa', '20180205182448.png', 'red', 'aktif', 'Kuroae', '2018-01-13 13:22:03', '2018-02-06 02:24:48'),
(11, 1472011, 'James Asrah Immanuel', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'white.cat@gmail.com', NULL, '1995-02-05', 'Jalan Setraduta N28 Dago', 'Pria', '0812312412354', 'Bandung', 1, 1, 'UCpvQjgWDlaqUzh16qzoFNmw', 'Mahasiswa', '20180205182356.png', 'red', 'aktif', 'bonzomydog', '2018-01-14 18:33:41', '2018-02-06 02:23:56'),
(27, 1572033, 'RIZALDI CAKRA ADIPRATAMA', '26f0fb28f49bfdaf315f7baee978faca', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1572033@student.it.maranatha.edu', NULL, '1996-11-07', 'JLN. KANAYAKAN BLOK C-7', 'Pria', '081809533259', 'KOTA BANDUNG             ', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 09:04:30', '2018-02-07 09:04:30'),
(28, 1772031, 'ZALDY IGNATIUS AUW', '8e5e435fb03a1ef793037a5338094a55', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772031@student.it.maranatha.edu', NULL, '2000-01-08', 'Jl.Danau Sentani,No.23,Rufei,Sorong', 'Pria', '081247563538', 'Makassar', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:46:55', '2018-02-07 11:57:11'),
(29, 1772049, 'ARIEF KURNIAWAN', '38d5122945f80a925dd5b8b94cd9f15b', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772049@student.it.maranatha.edu', NULL, '1995-12-01', 'GADING TUTUKA 1 BLOK G.3 NO. 11-12', 'Pria', '082218880048', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:47:15', '2018-02-07 11:59:05'),
(30, 1772008, 'RONALD ADI SETIAWAN', 'fbb2530798b4b48433e0d8cd8795f7a8', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772008@student.it.maranatha.edu', NULL, '1998-10-18', 'KOMPLEK CIBOLERANG BLOK C NO. 13', 'Pria', '087818101998', 'Kebumen', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:47:18', '2018-02-07 11:49:53'),
(31, 1772023, 'STEFANUS HERMAWAN', 'eb0019924d12a137ef901c0639a61292', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772023@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. BELAKANG KANTOR POS NO. 34, PARITTIGA, DESA PUPUT, KEC. PARITTIGA', 'Pria', '-', 'KAB. BANGKA BARAT', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:47:26', '2018-02-07 11:47:26'),
(32, 1772004, 'JONATHAN BERNAD', 'b427ebd39c845eb5417b7f7aaf1f9724', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772004@student.it.maranatha.edu', NULL, '1999-10-08', 'BUKIT PALEM JL LOTUS JINGGA NO 30.', 'Pria', '087774883131', 'CILEGON', 1, 1, 'UCgYzU_QkgaXGAxFPHqB3AZg', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:47:31', '2018-02-07 11:51:37'),
(33, 1772012, 'KAFKA FEBIANTO AGIHARTA', 'ef6f010380d247b8026d2152fae31d0d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772012@student.it.maranatha.edu', NULL, '1999-02-07', 'JL. PEJAGALAN DALAM NO.36/65', 'Pria', '085603753379', 'SUKABUMI', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:04', '2018-02-07 11:50:52'),
(34, 1772030, 'AVINASH', 'ce03ae4892954ed28c14a428ddb68b1a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772030@student.it.maranatha.edu', NULL, '1999-08-04', 'KOPO PERMAI 2 BLOCK 10 CD NO.7A', 'Pria', '081222442053', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:09', '2018-02-07 11:51:25'),
(35, 1772026, 'STEVEN RUMANTO HARNANDY', '606be481922cfccbc3d31d21d176c71a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772026@student.it.maranatha.edu', NULL, '1998-06-18', 'KOMPLEK KOPO PERMAI II BLOK 5CD NO. 67, KEC. MARGAHAYU, KEL. SUKAMENAK', 'Pria', '082216605990', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:20', '2018-02-07 11:50:22'),
(36, 1772043, 'ALEXIUS SURYA', 'f6cd715bcca7fa415020fcc1cde2afcf', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772043@student.it.maranatha.edu', NULL, '1999-02-20', 'TAMAN HOLIS INDAH BLOCK A NOMER 1 C', 'Pria', '081313753332', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:25', '2018-02-07 11:49:46'),
(37, 1772046, 'ARIYANTO SANI', '2da035a95e5cc4916f4024f0eac59c3a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772046@student.it.maranatha.edu', NULL, '1999-05-05', 'JL. RUMAH SAKIT UMUM NO 23', 'Pria', '082316997753', 'TASIKMALAYA', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:32', '2018-02-07 11:51:14'),
(38, 1772044, 'ROY PARSAORAN', '2cb26da25f3abf5cf4c8a511fd1af25f', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772044@student.it.maranatha.edu', NULL, '1999-01-06', 'JALAN DAKOTA RAYA NO  456', 'Pria', '2263001111', 'BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:48:51', '2018-02-07 11:50:58'),
(39, 1772051, 'JONNY', '0c5eead7073be5c17e5c82423d7defc7', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772051@student.it.maranatha.edu', NULL, '1998-09-28', 'JL. SISINGAMANGARAJA NO. 81 SIBORONGBORONG', 'Pria', '085361023590', 'KAB. TAPANULI UTARA', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:49:11', '2018-02-07 11:51:38'),
(40, 1772005, 'CELINE LIESHIANA', '479794419b8c8d9d6698761dbc8cbd4d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772005@student.it.maranatha.edu', NULL, '1999-05-18', 'JL.NAGARAWANGI NO 6 BLK 82', 'Wanita', '085353069299', 'TASIKMALAYA', 1, 1, 'Celine Lieshiana', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:49:17', '2018-02-07 11:50:59'),
(41, 1772039, 'KELVIN SUSANTO', '7f562c5da517533977cfa08acf14e29b', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772039@student.it.maranatha.edu', NULL, '1994-11-29', 'JL. KUAU NO.18 KOMPLEK DADALI', 'Pria', '08112212718', 'BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 11:49:35', '2018-02-07 11:51:09'),
(42, 1672038, 'ERICO APRIANUS', '801687a183d81eec2e508b727e32d632', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672038@student.it.maranatha.edu', NULL, '1998-04-04', 'JL. YAM SABRAN KOMPLEK VILLA RIA INDAH L 11', 'Pria', '085723526663', 'Pontianak', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:14:23', '2018-02-12 16:53:27'),
(43, 1672025, 'ARTHUR JOHNSON', '8194fb57829ea6f60494d2ac35968dfa', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672025@student.it.maranatha.edu', NULL, '2018-02-12', 'JALAN UNDAK KENACA NO 18 (LAPANGAN FUTSAL) KOMPLEK KOPO KENCANA. LINGKAR SELATAN', 'Pria', '081323526831', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:14:43', '2018-02-14 01:07:57'),
(44, 1672019, 'PRATOMO ASTA NUGRAHA', '094fcc1cb571eaafb9fecc30350eef8e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672019@student.it.maranatha.edu', NULL, '1997-09-08', 'JALAN SETIAGRAHA A III NO. 15', 'Pria', '085798047382', 'Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:14:45', '2018-02-12 16:14:45'),
(45, 1672903, 'RANGGA WIRIAPUTRA', '2dac9af854505357fc6d7688b9e4396f', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672903@student.it.maranatha.edu', NULL, '1970-01-01', 'KOMPLEKS KOPO PERMAI 1 BLOK H-8', 'Pria', '089508047038', '', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:14:50', '2018-02-12 16:14:50'),
(46, 1672039, 'ANDRIANUS ALVIEN', '60ee22952125eca270cafded8a9a3a7d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672039@student.it.maranatha.edu', NULL, '2018-02-12', 'LINGK PUHUN, SUKAMULYA', 'Pria', '08976164545', 'Kab. Kuningan', 1, 1, NULL, 'Mahasiswa', '20180212084910.jpg', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:14:51', '2018-02-12 16:49:10'),
(47, 1672062, 'JOSHUA EKA PUTRA JUWARNO', '90e8c8714f056ece26b7d29a68ea410e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672062@student.it.maranatha.edu', NULL, '1997-06-08', 'JL. Cibogo Bawah N. 73 RT.02 RW.04Kelurahan SukawarnaKecamatan Sukajadi', 'Pria', '089655663751', 'Bandung', 1, 1, 'UCx_ukZoGjxnePIwr76nrLxQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:15:35', '2018-02-12 16:48:59'),
(48, 1672034, 'ALFIN LIUNARDI SENJAYA', '26c413b55f0cd4db739679e2e66cafc3', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672034@student.it.maranatha.edu', NULL, '1970-01-01', 'JLN PAJAGALAN GG BAHIM NO 6', 'Pria', '081220924998', 'Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:17:58', '2018-02-12 16:17:58'),
(49, 1672050, 'TOMMY', '1e5bff1ae7709a2c6c063a5d415c45a3', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672050@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. BIJAKSANA NO. 22', 'Pria', '082165056099', 'Rokan Hilir', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:18:06', '2018-02-12 16:18:06'),
(50, 1672020, 'HANSON HENDRAWAN', '04a1e43d405536348f8813ac595c107b', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672020@student.it.maranatha.edu', NULL, '1970-01-01', '--', 'Pria', '', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', '', '2018-02-12 16:18:27', '2018-02-12 16:19:49'),
(51, 1672011, 'YOKO WILYAM SIGAN', 'c446dc4e550bdfc3acf07dc35ef0a374', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672011@student.it.maranatha.edu', NULL, '1970-01-01', 'JLN PASUNDAN,GG PASUNDAN I NO 9', 'Pria', '087720740068', 'Sukabumi', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:27:17', '2018-02-12 16:27:17'),
(52, 1672056, 'STEVEN CHRISTIAN HERYAWAN', 'd676b5a733913b68346e8ccacadf05fb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672056@student.it.maranatha.edu', NULL, '1998-09-08', 'JL. HALTEU UTARA 2 NO.46', 'Pria', '081322604930', 'Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:30:19', '2018-02-12 16:30:19'),
(53, 1672025, 'ARTHUR DAMARWULAN', '8194fb57829ea6f60494d2ac35968dfa', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672025@student.it.maranatha.edu', NULL, '1970-01-01', 'JALAN UNDAK KENACA NO 18 (LAPANGAN FUTSAL) KOMPLEK KOPO KENCANA. LINGKAR SELATAN', 'Pria', '081323526831', 'Bandung ', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-12 16:51:14', '2018-02-12 16:51:14'),
(54, 1672058, 'WILLIAM', '59af2a760c9af690ccd7fe870a224211', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672058@student.it.maranatha.edu', NULL, '1998-08-16', 'TAMAN HOLIS INDAH F5/28A', 'Pria', '0895325839650', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:27', '2018-02-15 08:51:33'),
(55, 1672066, 'YAFET RAPHAEL', '6bb26f33544bd26bdc323b3efa702f5a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672066@student.it.maranatha.edu', NULL, '1998-08-08', 'JL. RAWASARI BARAT III/47', 'Pria', '081298889753', 'Jakarta Pusat', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:28', '2018-02-15 08:53:10'),
(56, 1672043, 'ALVIN ATMACENDANA', 'dccf1fa8848b784c99233f148bab1711', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672043@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. SURYAKENCANA NO.110', 'Pria', '089653474047', 'Sukabumi', 1, 1, 'VinCenGame', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:33', '2018-02-15 08:53:13'),
(57, 1672029, 'HENRY TIMOTHY HALIM NURADI', '9370b6e5a5d957afd03cdc23ca3e3d6d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672029@student.it.maranatha.edu', NULL, '1970-01-01', 'SUKAKARYA RAYA NO 6 BANDUNG', 'Pria', '081573999278', 'Tangerang', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:33', '2018-02-15 08:53:53'),
(58, 1672041, 'SAMUEL GODJALI', 'f7a7f9a24f73b7ce913816dd9225c0c7', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672041@student.it.maranatha.edu', NULL, '1970-01-01', 'JALAN LEMBAH SUKARESMI I/ NO. 1', 'Pria', '087821359705', 'Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:34', '2018-02-15 08:40:34'),
(59, 1672022, 'CHRISTIAN', 'eac2051be486b945ad6c5d48cbac7624', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672022@student.it.maranatha.edu', NULL, '1997-12-25', 'JL BASUKI RAHMAT KM 9 RUKO NO1', 'Pria', '082198811871', 'Sorong', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:42', '2018-02-15 08:53:09'),
(60, 1672057, 'LUTHFI DWI NUGRAHA', '46ff61fbc4e94cd9b16b983f8685796a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672057@student.it.maranatha.edu', NULL, '1970-01-01', 'KOMPLEK PERMATA CIMAHI, JALAN PERMATA RAYA 1 BLOK H-1 NOMOR 9  KECAMATAN NGAMPRA', 'Pria', '082214842760', 'Kab. Bandung Barat', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:49', '2018-02-15 08:40:49'),
(61, 1672006, 'CHRISTIAN CHASTRO', 'f8175b4e9f89057b3b0e0cbcbd6e93a1', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672006@student.it.maranatha.edu', NULL, '1997-12-23', 'JALAN BATUJAJAR PONDOK CIPTA MAS 2 BLOK B3 NOMOR 1', 'Pria', '081220218288', 'Kab. Bandung Barat', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:52', '2018-02-15 08:53:10'),
(62, 1672013, 'BRYAN', '21accf9313f025f321f772c7f862f8f4', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672013@student.it.maranatha.edu', NULL, '1997-10-26', 'JLN. PASAR BARU RUKO NO. 241', 'Pria', '081221097433', 'Cianjur', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:40:54', '2018-02-15 08:52:43'),
(63, 1672009, 'EDWIN SATRIA INDRAWAN', 'e313acf3b3397be51e69c15319d0919d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672009@student.it.maranatha.edu', NULL, '1970-01-01', 'NYOMPLONG KULON', 'Pria', '08974130298', 'Sukabumi', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:09', '2018-02-15 08:41:09'),
(64, 1672017, 'RICARDO FRANCLINTON', '5b9c6d8c9e8901971fd4ca19c8364c5d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672017@student.it.maranatha.edu', NULL, '1997-12-27', 'TAMAN KOPO INDAH 1 BLOK M No. 100', 'Pria', '087821482078', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:09', '2018-02-15 08:53:04'),
(65, 1672076, 'DENNIS AGUSTINUS', '590150757d89cc297f4403378b6ef449', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672076@student.it.maranatha.edu', NULL, '1970-01-01', 'Jl. Sukakarya Raya No.13', 'Pria', '087700054935', '', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:21', '2018-02-15 08:51:36'),
(66, 1672067, 'JELBIN JONI', '1b8afc38201087108173050aee294874', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672067@student.it.maranatha.edu', NULL, '1997-02-12', 'JLN. AKI BALAK', 'Pria', '085338742005', 'Tarakan', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:34', '2018-02-15 08:54:00'),
(67, 1672040, 'SHAFIRA PUTRI KURNIAWAN', '17d45bdcc62af2f1ce75fe2b9826b6e8', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672040@student.it.maranatha.edu', NULL, '1998-06-11', 'JL. H. GOPUR KOMPLEK PERUMAHAN GRAHA BUKIT RAYA (GBR) I F4 NO. 53  RT. 03 RW. 21', 'Wanita', '082117199468', 'Bandung Barat', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:36', '2018-02-15 08:53:41'),
(68, 1672037, 'RIKY ANDREAS SAPUTRA', '7dfa6a5685b5d99af04c833355db05a5', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672037@student.it.maranatha.edu', NULL, '1998-10-16', 'JL. ADE IRMA SURYANI NO. 64 A', 'Pria', '087864810221', 'Pematang Siantar', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:41:58', '2018-02-15 08:53:18'),
(69, 1672002, 'JIMMY PURNAWAN', '92db8a36865972a09e69c1a1028be718', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672002@student.it.maranatha.edu', NULL, '1970-01-01', 'KOMPLEKS TAMAN KOPO INDAH 2 BLOK B2 NO 25', 'Pria', '085722009250', 'Kab. Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:43:29', '2018-02-15 08:43:29'),
(70, 1672052, 'NAOMI HELLYNA MAKALEW', 'd61395a4df8b5366f1a56ee6c4c47d75', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672052@student.it.maranatha.edu', NULL, '1998-02-28', 'BUKIT INDAH SUKAJADI JL. KELAPA GADING NO:47', 'Wanita', '081268558844', 'Batam', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:43:46', '2018-02-15 08:53:53'),
(71, 1672030, 'RADEN KASYFI AGHITYA NATADILAGA', '40e39cd53533808a61f1ce9da3816aa6', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672030@student.it.maranatha.edu', NULL, '1997-10-28', 'JL GEMPOL ASRI 1 NO 14', 'Pria', '0811223579', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:44:43', '2018-02-15 08:53:57'),
(72, 1672051, 'LUKAS HANSEL GANDA', '544f1d213ee1db33500f41c43fd1835e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672051@student.it.maranatha.edu', NULL, '1998-09-24', 'PERUM MINIMALIS BARU NO 1, JALAN KNPI, CISEUREUH, PURWAKARTA, JAWA BARAT', 'Pria', '081910177770', 'Kab. Purwakarta', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:45:21', '2018-02-15 08:45:21'),
(73, 1672054, 'ADITYA WIRYA YUTAMA', '8bfcafc5103894898dc173df1e9d6f2e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672054@student.it.maranatha.edu', NULL, '1998-04-07', 'JL. RAYA KELAPA II ENTROP', 'Pria', '082198052220', 'Jayapura', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 08:45:23', '2018-02-15 08:45:23'),
(74, 1372097, 'WILSON SEMBIRING', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'white.cat@gmail.com', NULL, '1995-02-05', 'Jalan Setraduta N28 Dago', 'Pria', '0812312412354', 'Bandung', 1, 1, 'UCpvQjgWDlaqUzh16qzoFNmw', 'Mahasiswa', '20180205182356.png', 'red', 'aktif', 'bonzomydog', '2018-01-14 18:33:41', '2018-03-09 10:17:59'),
(75, 1772038, 'REINALDI GEMILANG SETIAWAN POETRA', 'e4bc4d4307947223e75ebbeb4a62457e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772038@student.it.maranatha.edu', 'rgsp069@gmail.com', '1999-06-19', 'KOMP PERMATA BIRU AG 123', 'Pria', '085926172254', 'KAB.BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:38:44', '2018-03-20 09:42:44'),
(76, 1772029, 'ALINA VANDARINA ABDULKARIM', '483e6f0f16abad9f38b1c486aa7c919d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772029@student.it.maranatha.edu', NULL, '1999-09-30', 'JL. MALIARO BAWAH KELURAHAN MALIARO NO.376', 'Wanita', '081324793429', 'TERNATE', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:38:47', '2018-03-20 09:40:37'),
(77, 1772040, 'DANIEL ELIEZER', '25eb68f40fce83477d76d1f45eeb7bd7', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772040@student.it.maranatha.edu', NULL, '1970-01-01', 'CIMAREME INDAH BLOK C-2 NO 8 KEL. CIMAREME KEC. NGAMPRAH KAB. BANDUNG BARAT', 'Pria', '081344111630', 'KAB. BANDUNG BARAT', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:38:56', '2018-03-20 09:38:56'),
(78, 1772048, 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 'c769d3f4cac9e43c087b71e074737688', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772048@student.it.maranatha.edu', NULL, '1970-01-01', 'JALAN GAJAH MADA NO.198', 'Pria', '-', 'KAB.KETAPANG', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:42:58', '2018-03-20 09:42:58'),
(79, 1772019, 'ALDI MALDIANO TADE', '4d9bb0783dc4cfe2cc10b6fb8627a57a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772019@student.it.maranatha.edu', 'almaldianova@gmail.com', '1999-06-22', 'PERUM BUKIT RAHMA PERMAI JL. GANESHA XII / BLOK D NO. 105', 'Pria', '081348116551', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:47:08', '2018-03-20 14:47:12'),
(80, 1772035, 'ALFIENSIUS SALEPPANG', '7ae841c14042a26916850537b2518d58', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772035@student.it.maranatha.edu', NULL, '1997-03-05', 'TOWNHOUSE SARIDUTA GRANDE NO. J2 - SETRADUTA RESIDENCE JL. SETRADUTA DAGO KEC. PAROMPONG', 'Pria', '082342970404', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:47:15', '2018-03-20 09:49:52'),
(81, 1772033, 'JEREMIA ROTUA SIANTURI', '886618f5abda275a1146d6d3111822f8', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772033@student.it.maranatha.edu', NULL, '1998-12-31', 'BLOK CIMOYAN', 'Pria', '081222690004', 'KAB. MAJALENGKA', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:49:05', '2018-03-20 09:50:11'),
(82, 1772032, 'SULTHAN TAQI RABBANI', '60268fc5e544c113f9ab23c6d3685f84', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772032@student.it.maranatha.edu', NULL, '1999-04-21', 'KOMPLEK TAMAN MUTIARA BLOK D1 NO 28 D CIMAHI', 'Pria', '082299627123', 'CIMAHI', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:49:30', '2018-03-20 09:49:52'),
(83, 1772036, 'WIRA ANDIKA', 'a713029cf4480c2ae92b3f17901bd4b3', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772036@student.it.maranatha.edu', NULL, '1997-05-16', 'DUSUN JAWA,DESA LEMBANG,KECAMATAN SANGGAU LEDO', 'Pria', '', 'KAB. BENGKAYANG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:51:48', '2018-03-20 09:54:53'),
(84, 1772042, 'YOGA PRATAMA YULIANTO', '6f8ebff530ba833605a4cf7c659e6005', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772042@student.it.maranatha.edu', NULL, '1999-02-23', 'JL.NUSA INDAH 6 BBS.2 NO.6', 'Pria', '082210233366', 'CILEGON', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:52:41', '2018-03-20 09:54:13'),
(85, 1672053, 'YEREMIA EGA SEPTIA NUGRAHA', '7b010e917e0fd1480d4644d36904892e', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672053@student.it.maranatha.edu', 'yeremiaega08@gmail.com', '1998-09-08', 'PADASUKA INDAH II F4 NO 8 CIMAHI', 'Pria', '081573073683', 'Cimahi, Kab. Bandung Barat', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:53:19', '2018-03-20 09:54:34'),
(86, 1672078, 'SAMUEL KRISTIANTO DEA', '1f14153dfb78003085aa01e7616616de', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672078@student.it.maranatha.edu', NULL, '1997-12-08', 'Komp. Ruko Cihampelas', 'Pria', '085399514652', 'Bandung', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 09:55:16', '2018-03-20 10:03:37'),
(87, 1772021, 'THEO ALEKSANDER WILLIAM', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 10:00:01', '2018-03-20 10:06:35'),
(88, 1, 'a', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 10:00:01', '2018-03-26 07:00:53'),
(89, 2, 'b', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:53'),
(90, 3, 'c', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:53'),
(91, 4, 'd', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:53'),
(92, 5, 'e', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:54'),
(93, 6, 'f', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:54'),
(95, 7, 'g', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:54'),
(96, 8, 'h', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '0000-00-00', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:00:54'),
(97, 9, 'i', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(98, 10, 'j', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(99, 11, 'k', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(100, 12, 'l', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(101, 13, 'm', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(102, 14, 'n', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(103, 15, 'o', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(104, 16, 'p', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '0000-00-00', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:05:10'),
(105, 17, 'q', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(106, 18, 'r', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(107, 19, 's', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(108, 20, 't', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(109, 21, 'u', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(110, 22, 'v', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(111, 23, 'w', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(112, 24, 'x', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '0000-00-00', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-26 07:09:51'),
(113, 25, 'y', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35'),
(114, 26, 'z', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35'),
(115, 27, 'aa', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35'),
(116, 28, 'ab', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35'),
(117, 29, 'ac', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35'),
(118, 30, 'ad', 'f2ed83b3a61a9244ede8c198ae0057df', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772021@student.it.maranatha.edu', 'tawilliam0108@gmail.com', '1999-08-01', 'PERUM.GRAHA BUKIT RAYA 3 BLOK A11 NO.27 DESA CILAME,KEC.NGAMPRAH BANDUNG BARAT', 'Pria', '081394763392', 'KAB. BANDUNG BARAT', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-03-20 17:00:01', '2018-03-20 17:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kodeMK` varchar(255) NOT NULL,
  `namaMK` varchar(255) NOT NULL,
  `sks` int(255) NOT NULL,
  `semester` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kodeMK`, `namaMK`, `sks`, `semester`) VALUES
('IN010', 'Dasar Pemrograman', 5, 1),
('IN011', 'Pengantar Teknologi Informasi', 2, 1),
('IN013', 'Matematika Informatika', 2, 1),
('IN014', 'Bahasa Inggris 1', 2, 1),
('IN020', 'Algoritma dan struktur data 1', 3, 2),
('IN021', 'Pemrograman web 1', 4, 2),
('IN022', 'Jaringan Komputer 1', 4, 2),
('IN023', 'Aljabar linier dan matriks', 3, 2),
('IN024', 'Bahasa Inggris 2', 2, 2),
('IN030', 'Algoritma dan struktur data 2', 3, 3),
('IN031', 'Basis data 1', 4, 3),
('IN032', 'Rekayasa perangkat lunak 1', 3, 3),
('IN033', 'Pengantar arsitektur komputer', 2, 3),
('IN034', 'Teknologi multimedia', 3, 3),
('IN035', 'Matematika diskrit', 3, 3),
('IN040', 'Pemrograman berorientasi objek 1 A', 4, 4),
('IN042', 'Basis data 2', 4, 4),
('IN043', 'Rekayasa perangkat lunak 2', 3, 4),
('IN044', 'Jaringan Komputer 2', 3, 4),
('IN045', 'Sistem operasi komputer', 3, 4),
('IN046', 'Statistika', 3, 4),
('IN050', 'Pemrograman berorientasi objek 2 A', 4, 5),
('IN052', 'Pemrograman web 2', 4, 5),
('IN053', 'Strategi algoritmik', 2, 5),
('IN054', 'Manajemen proyek', 2, 5),
('IN055', 'Proses bisnis', 3, 5),
('IN058', 'Ethical hacking 1', 4, 5),
('IN060', 'Pengantar kecerdasan buatan', 3, 6),
('IN061', 'Disain antarmuka', 3, 6),
('IN062', 'Metode penelitian informatika', 2, 6),
('IN063', 'Grafika komputer', 4, 6),
('IN064', 'Kewirausahaan', 3, 6),
('IN065', 'Kerja praktek', 3, 6),
('IN070', 'Seminar tugas akhir', 2, 7),
('IN076', 'Pola desain perangkat lunak', 4, 7),
('IN081', 'Kapita selekta', 3, 8),
('IN088', 'Administrasi sistem', 3, 8),
('IN089', 'Enterprise resource planning', 3, 8),
('MK017', 'Pancasila', 2, 2),
('MK024', 'Kewarnegaraan', 2, 1),
('MK037', 'Kepemimpinan', 2, 7),
('MK039', 'Bahasa indonesia', 2, 3),
('MK060', 'Fenomologi Agama', 2, 1),
('MK061', 'Etika profesi', 2, 7),
('MK062', 'Pendidikan Agama Kristen', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(255) NOT NULL,
  `idBankSoal` int(255) NOT NULL,
  `idSoalPG` int(255) NOT NULL,
  `idSoalIsian` int(255) NOT NULL,
  `idJawabanPG` int(255) NOT NULL,
  `idJawabanIsian` int(255) NOT NULL,
  `kodeMK` varchar(255) NOT NULL,
  `nilai` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `idProject` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectdetail`
--

CREATE TABLE `projectdetail` (
  `id` int(11) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `projectStatus` varchar(255) NOT NULL,
  `projectDescription` varchar(255) NOT NULL,
  `estimaedHour` int(255) NOT NULL,
  `progress` int(255) NOT NULL,
  `projectLeader` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `streamlink` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `about` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `nrp`, `nama`, `email`, `fakultas`, `prodi`, `kota`, `tanggalLahir`, `alamat`, `gender`, `role`, `foto`, `streamlink`, `password`, `telephone`, `about`, `created_at`, `updated_at`) VALUES
(1, '1472088', 'Steven Yong', 'Steven.yong@outlook.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1996-01-06', 'Jalan PLN Dalam no 15', 'Pria', 'Mahasiswa', 'img.jpg', 'https://gaming.youtube.com/channel/UCdjcM0dxFRLvVtGTBlv5Q0Q/live', 'd41d8cd98f00b204e9800998ecf8427e', '081221669924', 'Pengkotbah 3:11 \'Segala sesuatu indah pada waktunya\"', '2018-01-13 09:57:03', '2017-11-16 13:55:12'),
(5, '1472010', 'Raynald Wismahardja', 'Raynald@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1996-11-22', 'Jalan TKI III  no 15', 'Pria', 'Mahasiswa', 'user.png', '', 'a0bb28c06d64bf126af4a521581b7ffb', '0812216674', 'Raynald wish', '2018-01-13 09:59:10', '2017-11-16 20:27:59'),
(6, '720723', 'Mushi', 'mushi2@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1986-11-19', 'Jalan Kaktus no 15', 'Pria', 'Dosen', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '08122147502', 'Melayani dengan sepenuh hati', '2018-01-14 10:52:14', '2017-11-16 21:30:09'),
(7, '720721', 'Rahmat', 'rahmat@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1970-01-01', 'Jalan raya Kopo no 15', 'Pria', 'Dosen', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '08122312455', 'Melayani bukan beban', '2018-01-13 09:57:03', '2017-11-16 21:38:20'),
(9, '1572007', 'Andre sutanto', 'andre@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1997-11-17', 'Jalan Kopo no 15', 'Pria', 'Mahasiswa', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '08122124121', 'Membimbing kejalan yang benar', '2018-01-13 09:57:03', '2017-11-16 21:46:52'),
(10, '1572017', 'Starry', 'Starry@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1997-07-04', 'Jalan kurdi no 15', 'Pria', 'Mahasiswa', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '081221666354', 'apa aja lah', '2018-01-13 09:57:03', '2017-11-18 01:34:35'),
(11, '1472002', 'Elvina', 'elvina@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Selat Panjang', '2017-08-03', 'Jalan gracia no 11', 'Wanita', 'Mahasiswa', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '08112312451', 'Ketua Senat FIT', '2018-01-13 09:57:03', '2017-11-19 08:44:02'),
(12, '1472013', 'Jason Alexander', 'prof@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1996-12-03', 'Jalan TKI II no 15', 'Pria', 'Mahasiswa', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '08123315123', 'Proff numba wan', '2018-01-13 09:57:03', '2017-12-04 19:31:57'),
(13, '1573088', 'Billy', 'billy@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Bandung', '1997-02-27', 'Jalan Katapang no 22', 'Pria', 'Mahasiswa', 'user.png', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', '0812921234', 'Hidup ini hanya percobaan \r\ntest\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '2018-01-14 11:02:50', '2017-12-04 19:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(255) NOT NULL,
  `namaPeserta` varchar(255) NOT NULL,
  `totalSolve` int(255) NOT NULL,
  `idTournament` int(255) NOT NULL,
  `nilaiPG` int(255) DEFAULT NULL,
  `nilaiIsian` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `namaPeserta`, `totalSolve`, `idTournament`, `nilaiPG`, `nilaiIsian`, `created_at`, `updated_at`) VALUES
(1, 'Elvina', 5, 21, NULL, NULL, '2017-12-10 20:56:44', '2017-12-10 23:40:40'),
(2, 'Raynald Wismahardja', 3, 21, NULL, NULL, '2017-12-10 20:58:45', '2017-12-10 23:35:01'),
(3, 'Jason Alexander', 2, 21, NULL, NULL, '2017-12-11 00:32:33', '2017-12-11 00:32:33'),
(4, 'Elvina', 0, 23, NULL, NULL, '2017-12-16 10:49:37', '2017-12-16 10:49:37'),
(5, 'Raynald Wismahardja', 0, 23, NULL, NULL, '2017-12-16 10:51:32', '2017-12-16 10:51:32'),
(6, 'Steven Yong', 1, 23, NULL, NULL, '2017-12-17 01:39:19', '2017-12-17 01:39:37'),
(8, 'Raynald Wismahardja', 5, 27, NULL, NULL, '2018-01-10 12:15:51', '2018-01-11 00:19:03'),
(9, 'Raynald Wismahardja', 0, 26, NULL, NULL, '2018-01-10 12:24:42', '2018-01-10 12:24:42'),
(10, 'Raynald Wismahardja', 3, 25, NULL, NULL, '2018-01-10 12:42:31', '2018-01-10 12:42:31'),
(11, 'Elvina', 3, 30, NULL, NULL, '2018-01-15 15:39:36', '2018-01-15 15:39:36'),
(12, 'Steven Yong', 3, 30, NULL, NULL, '2018-01-15 15:39:42', '2018-01-15 15:39:42'),
(13, 'James Asrah Immanuel', 2, 30, NULL, NULL, '2018-01-15 15:39:46', '2018-01-15 15:39:46'),
(19, 'Elvina', 50, 39, NULL, NULL, '2018-03-19 14:12:41', '2018-03-26 14:51:15'),
(20, 'James Asrah Immanuel', 55, 39, NULL, NULL, '2018-03-19 14:21:46', '2018-03-26 14:52:52'),
(21, 'YEREMIA EGA SEPTIA NUGRAHA', 5, 38, NULL, NULL, '2018-03-20 15:06:35', '2018-03-20 15:06:35'),
(22, 'SULTHAN TAQI RABBANI', 1, 38, NULL, NULL, '2018-03-20 15:13:25', '2018-03-20 15:13:25'),
(23, 'SAMUEL KRISTIANTO DEA', 5, 38, NULL, NULL, '2018-03-20 15:14:59', '2018-03-20 15:14:59'),
(24, 'REINALDI GEMILANG SETIAWAN POETRA', 2, 38, NULL, NULL, '2018-03-20 15:15:30', '2018-03-20 15:15:30'),
(25, 'ALFIENSIUS SALEPPANG', 6, 38, NULL, NULL, '2018-03-20 15:15:56', '2018-03-20 15:15:56'),
(26, 'THEO ALEKSANDER WILLIAM', 5, 38, NULL, NULL, '2018-03-20 15:16:07', '2018-03-20 15:16:07'),
(27, 'ALDI MALDIANO TADE', 2, 38, NULL, NULL, '2018-03-20 15:16:24', '2018-03-20 15:16:24'),
(28, 'ALINA VANDARINA ABDULKARIM', 3, 38, NULL, NULL, '2018-03-20 15:16:53', '2018-03-20 15:16:53'),
(29, 'DANIEL ELIEZER', 6, 38, NULL, NULL, '2018-03-20 15:18:31', '2018-03-20 15:18:31'),
(30, 'WIRA ANDIKA', 2, 38, NULL, NULL, '2018-03-20 15:18:32', '2018-03-20 15:18:32'),
(31, 'YOGA PRATAMA YULIANTO', 6, 38, NULL, NULL, '2018-03-20 15:18:33', '2018-03-20 15:18:33'),
(32, 'JEREMIA ROTUA SIANTURI', 3, 38, NULL, NULL, '2018-03-20 15:23:25', '2018-03-20 15:23:25'),
(34, 'f', 2, 37, NULL, NULL, '2018-03-26 14:30:41', '2018-03-26 14:30:41'),
(38, 'STEFANUS HERMAWAN', 1, 40, NULL, NULL, '2018-03-28 10:51:36', '2018-03-28 10:51:36'),
(39, 'RONALD ADI SETIAWAN', 1, 40, NULL, NULL, '2018-03-28 10:57:37', '2018-03-28 10:57:37'),
(40, 'KELVIN SUSANTO', 4, 40, NULL, NULL, '2018-03-28 11:00:32', '2018-03-28 11:00:32'),
(41, 'AVINASH', 3, 40, NULL, NULL, '2018-03-28 11:01:21', '2018-03-28 11:01:21'),
(42, 'STEVEN RUMANTO HARNANDY', 4, 40, NULL, NULL, '2018-03-28 11:01:53', '2018-03-28 11:01:53'),
(43, 'ALEXIUS SURYA', 3, 40, NULL, NULL, '2018-03-28 11:02:07', '2018-03-28 11:02:07'),
(44, 'ARIEF KURNIAWAN', 2, 40, NULL, NULL, '2018-03-28 11:02:49', '2018-03-28 11:02:49'),
(45, 'JONATHAN BERNAD', 2, 40, NULL, NULL, '2018-03-28 11:03:12', '2018-03-28 11:03:12'),
(46, 'KAFKA FEBIANTO AGIHARTA', 1, 40, NULL, NULL, '2018-03-28 11:04:29', '2018-03-28 11:04:29'),
(47, 'ZALDY IGNATIUS AUW', 1, 40, NULL, NULL, '2018-03-28 11:04:30', '2018-03-28 11:04:30'),
(48, 'CELINE LIESHIANA', 5, 40, NULL, NULL, '2018-03-28 11:05:05', '2018-03-28 11:05:05'),
(49, 'ROY PARSAORAN', 4, 40, NULL, NULL, '2018-03-28 11:05:05', '2018-03-28 11:05:05'),
(50, 'ARIYANTO SANI', 2, 40, NULL, NULL, '2018-03-28 11:06:16', '2018-03-28 11:06:16'),
(51, 'MCU_ELPINOY', 75, 42, 27, 80, '2018-04-15 23:21:38', '2018-04-15 23:34:59'),
(52, '1472002', 80, 41, NULL, NULL, '2018-04-15 23:31:39', '2018-04-15 23:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `fileName`, `created_at`, `updated_at`) VALUES
(11, 'Forkom', 'forkom.jpg', '2018-02-27 17:07:41', '2018-02-27 17:07:41'),
(12, 'Pemberitahuan Forkom', 'PengumumanForkom.JPG', '2018-02-27 17:08:01', '2018-02-27 17:08:01'),
(13, 'POR', 'por.jpg', '2018-03-06 00:11:37', '2018-03-06 00:11:37'),
(14, 'Pendaftaran_integer', 'pendaftaran_integer.jpg', '2018-03-06 00:12:10', '2018-03-06 00:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `soalisian`
--

CREATE TABLE `soalisian` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `soal` longtext NOT NULL,
  `kunciJawaban` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `idBankSoal` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalisian`
--

INSERT INTO `soalisian` (`id`, `title`, `soal`, `kunciJawaban`, `kategori`, `level`, `idBankSoal`, `created_at`, `updated_at`) VALUES
(1, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 3, '2018-01-02 16:23:53', NULL),
(2, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 2, '2018-01-02 16:23:53', NULL),
(3, 'Teka teki larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 2, '2018-01-02 16:23:53', NULL),
(4, 'Pemesanan Kotak', 'bagaimana cara deklarasi array untuk variabel arr dengan ukuran kotak sejumlah 5 buah pada python?', 'arr = [NONE]*5', 'array', 'medium', 2, '2018-01-02 16:23:53', NULL),
(5, 'Mengambil barang pada sebuah kotak', 'Arr = [NONE]*10\r\nArr[0] = \"January\"\r\nArr[1] = \"Februari\"\r\nArr[2] = \"Maret\"\r\nArr[3] = \"April\"\r\nArr[4] = \"Mei\"\r\nArr[5] = \"Juni\"\r\nArr[6] = \"Juli\"\r\nArr[7] = \"Agustus\"\r\nArr[8] = \"September\"\r\nArr[9] = \"Oktober\"\r\nArr[10] = \"November\"\r\nArr[11] = \"Desember\"\r\n\r\nprint(Arr[5])\r\n\r\n-----------------------\r\nApa output dari kode berikut?', 'Juni', 'array', 'medium', 2, '2018-01-02 16:23:53', NULL),
(6, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 2, '2018-01-02 16:23:53', NULL),
(8, 'Teka-teki Larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 6, '2018-01-03 07:06:02', '2018-01-05 07:48:09'),
(9, 'Teka-teki Larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 6, '2018-01-07 11:58:36', '2018-01-07 11:58:36'),
(10, 'Teka-teki Larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 6, '2018-01-07 11:59:04', '2018-01-07 11:59:04'),
(11, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(12, 'Teka teki larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(13, 'Pemesanan Kotak', 'bagaimana cara deklarasi array untuk variabel arr dengan ukuran kotak sejumlah 5 buah pada python?', 'arr = [NONE]*5', 'array', 'medium', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(14, 'Mengambil barang pada sebuah kotak', 'Arr = [NONE]*10\r\nArr[0] = \"January\"\r\nArr[1] = \"Februari\"\r\nArr[2] = \"Maret\"\r\nArr[3] = \"April\"\r\nArr[4] = \"Mei\"\r\nArr[5] = \"Juni\"\r\nArr[6] = \"Juli\"\r\nArr[7] = \"Agustus\"\r\nArr[8] = \"September\"\r\nArr[9] = \"Oktober\"\r\nArr[10] = \"November\"\r\nArr[11] = \"Desember\"\r\n\r\nprint(Arr[5])\r\n\r\n-----------------------\r\nApa output dari kode berikut?', 'Juni', 'array', 'medium', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(15, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(16, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(19, 'Mengambil barang pada sebuah kotak', 'Arr = [NONE]*10\r\nArr[0] = \"January\"\r\nArr[1] = \"Februari\"\r\nArr[2] = \"Maret\"\r\nArr[3] = \"April\"\r\nArr[4] = \"Mei\"\r\nArr[5] = \"Juni\"\r\nArr[6] = \"Juli\"\r\nArr[7] = \"Agustus\"\r\nArr[8] = \"September\"\r\nArr[9] = \"Oktober\"\r\nArr[10] = \"November\"\r\nArr[11] = \"Desember\"\r\n\r\nprint(Arr[5])\r\n\r\n-----------------------\r\nApa output dari kode berikut?', 'Juni', 'array', 'medium', 10, '2018-01-24 10:10:16', '2018-01-24 10:10:16'),
(20, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 10, '2018-01-24 10:10:16', '2018-01-24 10:10:16'),
(22, 'Pemesanan Kotak', 'bagaimana cara deklarasi array untuk variabel arr dengan ukuran kotak sejumlah 5 buah pada python?', 'arr = [NONE]*5', 'array', 'medium', 10, '2018-01-24 10:10:36', '2018-01-24 10:10:36'),
(23, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 10, '2018-01-24 10:10:36', '2018-01-24 10:10:36'),
(24, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 10, '2018-01-24 10:10:36', '2018-01-24 10:10:36'),
(25, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 10, '2018-01-24 10:10:47', '2018-01-24 10:10:47'),
(26, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 10, '2018-01-24 10:34:04', '2018-01-24 10:34:04'),
(27, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 10, '2018-01-25 01:22:29', '2018-01-25 01:22:29'),
(30, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 3, '2018-01-25 01:46:25', '2018-01-25 01:46:25'),
(31, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 3, '2018-01-25 01:46:35', '2018-01-25 01:46:35'),
(32, 'Teka teki larik', 'Array yang terdiri dari m buah baris (row) dan n buah kolom (column) adalah ?', 'array dua dimensi', 'array', 'easy', 3, '2018-01-25 01:46:35', '2018-01-25 01:46:35'),
(33, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 3, '2018-01-25 01:54:08', '2018-01-25 01:54:08'),
(34, 'Pemesanan Kotak', 'bagaimana cara deklarasi array untuk variabel arr dengan ukuran kotak sejumlah 5 buah pada python?', 'arr = [NONE]*5', 'array', 'medium', 11, '2018-01-25 18:44:27', '2018-01-25 18:44:27'),
(35, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 11, '2018-01-25 18:44:27', '2018-01-25 18:44:27'),
(36, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 11, '2018-01-25 18:44:27', '2018-01-25 18:44:27'),
(38, 'Mengambil barang pada sebuah kotak', 'Arr = [NONE]*10\r\nArr[0] = \"January\"\r\nArr[1] = \"Februari\"\r\nArr[2] = \"Maret\"\r\nArr[3] = \"April\"\r\nArr[4] = \"Mei\"\r\nArr[5] = \"Juni\"\r\nArr[6] = \"Juli\"\r\nArr[7] = \"Agustus\"\r\nArr[8] = \"September\"\r\nArr[9] = \"Oktober\"\r\nArr[10] = \"November\"\r\nArr[11] = \"Desember\"\r\n\r\nprint(Arr[5])\r\n\r\n-----------------------\r\nApa output dari kode berikut?', 'Juni', 'array', 'medium', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(39, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(41, 'Lalarikan', '#Soal Lalarikan\r\n--------------------------------\r\nA[0] = 5\r\nA[1] = 4\r\nA[2] = 3\r\nA[3] = 2\r\nA[4] = 1\r\n--------------------------------\r\nSebuah pabrik memiliki sejumlah kotak A yang dapat menampung lima kotak , bagaimana cara penulisan kode program agar tangan robot dapat mengambil isi kotak ke 3 dan mencetaknya ke layar (*menggunakan print(\"\") )?', 'print(A[3])', 'array', 'medium', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(42, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(43, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(44, 'Larik indeks', 'Sekumpulan data yang bertipe sama dan antara data satu dengan data yang lain dibedakan dengan indeksnya merupakan pengertian dari ?', 'array', 'array', 'easy', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(45, 'Membantu Denny', '#Perhitungan Denny\r\n#Kamus data\r\n#i : variabel untuk pengendali iterasi pertama (array of integer)\r\n#p : variabel hitung (integer);\r\n#z : variabel penampung nilai jumlah (integer)\r\n#y : variabel hitung (integer)\r\nfor i in range(0,p,1):\r\n      z=p+y+i+1\r\n  print(z)\r\n------------------------\r\nJika p =3 dan y -5\r\n\r\nApa hasil output dari program berikut ?', '1', 'programming', 'easy', 14, '2018-03-26 14:45:50', '2018-03-26 14:45:50'),
(46, 'Insert Awal List', 'Diberikan definisi List sebagai berikut :\r\nclass Node(object):\r\n    def __init__(self, value):\r\n        self.info = value\r\n        self.next = None\r\n        \r\nclass List(object):\r\n    def __init__(self):\r\n        self.first = None\r\n\r\nLengkapilah fungsi InsertAwal berikut ini.\r\ndef InsertAwal(self,nilai)\r\n#nilai : parameter berupa nilai integer\r\n      P = Node(............)       # isian-1\r\n      P.next = self.first\r\n      self.first = ...............    # isian-2 \r\n      return\r\n\r\nTuliskan jawaban isian dalam kotak yang disediakan, dimana isian-1 dan isian-2 dipisahkan dengan titik koma (;) tanpa spasi', 'nilai;P', 'programming', 'easy', 15, '2018-03-26 14:49:15', '2018-03-26 15:41:46'),
(47, 'List-Traversal-2', 'Tuliskan nomor baris instruksi yang salah dalam fungsi berikut ini :\r\n\r\n1 #CetakGenap mencetak info dari setiap elemen list yg bernilai genap\r\n2 #P = var.untuk catat alamat elemen list\r\n3\r\n4 def CetakGenap(self):\r\n5\r\n6     P = self.first\r\n7     while (P != None):\r\n8          if (P % 2 == 0)\r\n9             print(P.info)\r\n10       P = P.next', '8', 'programming', 'easy', 15, '2018-03-26 15:43:40', '2018-03-26 15:46:54'),
(48, 'List-Max', 'Lengkapi instruksi dalam fungsi berikut ini :\r\n\r\n#Fungsi MaxList mengirimkan nilai elemen list yang terbesar\r\n#jika list kosong mengirimkan nilai 0\r\n\r\ndef MaxList(self):\r\n\r\n    P = self.first\r\n    max = 0\r\n    while (P!= None):\r\n        if (max < P.info): \r\n                .....................#tuliskan instruksinya\r\n	P = P.next\r\n    return max\r\n\r\nTuliskan instruksinya (tanpa spasi)', 'max=P.info', 'programming', 'easy', 15, '2018-03-26 15:46:31', '2018-03-26 15:46:31'),
(49, 'List-Delete-1', '#Delete after menghapus elemen list setelah elemen beralamat R\r\n#Q = alamat elemen yang dihapus\r\n\r\ndef DeleteAfter(self, R):\r\n    Q = ....................\r\n    R.next = Q.next # tuliskan instruksinya\r\n    Q.next = None\r\n    return Q', 'R.next', 'programming', 'easy', 15, '2018-03-26 15:52:04', '2018-03-26 15:52:04'),
(50, 'aw', 'aw', 'Readonly Text Input', 'programming', 'easy', 17, '2018-04-15 22:57:28', '2018-04-15 22:57:28'),
(51, 'bw', 'bw', 'Readonly Text Input', 'programming', 'easy', 17, '2018-04-15 22:57:37', '2018-04-15 22:57:37'),
(52, 'cw', 'cw', 'Readonly Text Input', 'mulitmedia', 'hard', 17, '2018-04-15 22:57:48', '2018-04-15 22:57:48'),
(53, 'a', 'aa', 'Readonly Text Input', 'programming', 'easy', 16, '2018-04-15 22:58:31', '2018-04-15 22:58:31'),
(54, 'b', 'b', 'Readonly Text Input', 'programming', 'easy', 16, '2018-04-15 22:58:37', '2018-04-15 22:58:37'),
(55, 'c', 'c', 'Readonly Text Input', 'programming', 'easy', 16, '2018-04-15 22:58:42', '2018-04-15 22:58:42'),
(56, 'd', 'd', 'Readonly Text Input', 'programming', 'easy', 16, '2018-04-15 22:58:47', '2018-04-15 22:58:47'),
(57, 'Insert Awal List', 'Diberikan definisi List sebagai berikut :\r\nclass Node(object):\r\n    def __init__(self, value):\r\n        self.info = value\r\n        self.next = None\r\n        \r\nclass List(object):\r\n    def __init__(self):\r\n        self.first = None\r\n\r\nLengkapilah fungsi InsertAwal berikut ini.\r\ndef InsertAwal(self,nilai)\r\n#nilai : parameter berupa nilai integer\r\n      P = Node(............)       # isian-1\r\n      P.next = self.first\r\n      self.first = ...............    # isian-2 \r\n      return\r\n\r\nTuliskan jawaban isian dalam kotak yang disediakan, dimana isian-1 dan isian-2 dipisahkan dengan titik koma (;) tanpa spasi', 'nilai;P', 'programming', 'easy', 16, '2018-04-15 22:59:44', '2018-04-15 22:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `soalpg`
--

CREATE TABLE `soalpg` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `soal` longtext NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `e` varchar(255) NOT NULL,
  `kunciJawaban` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `idBankSoal` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalpg`
--

INSERT INTO `soalpg` (`id`, `title`, `soal`, `a`, `b`, `c`, `d`, `e`, `kunciJawaban`, `kategori`, `level`, `idBankSoal`, `created_at`, `updated_at`) VALUES
(1, 'Teka-teki perulangan 1', 'apa nama jenis perulangan yang perulangan dilakukan sebelum eksekusi statement yang diulang ?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'while', 'perulangan', 'easy', 1, '2018-01-02 16:23:01', NULL),
(2, 'Teka-teki perulangan 2', 'apa nama jenis perulangan yang mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya secara jelas?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'for', 'perulangan', 'easy', 1, '2018-01-02 16:23:01', NULL),
(3, 'Teka-teki perulangan 3', 'apa nama jenis perulangan yang tidak mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya tetapi cukup membuat variabel arraynya saja ? ', 'for', 'while', 'foreach', 'whale', 'do-whale', 'foreach', 'perulangan', 'easy', 1, '2018-01-02 16:23:01', NULL),
(4, 'Teka-teki perulangan 4', 'jika user ingin memasukkan input untuk validasi secara terus menerus hingga kondisi terpenuhi , maka jenis perulangan apa yang kita butuhkan ?', 'do-whale', 'for', 'while', 'foreach', 'eachfor', 'while', 'perulangan', 'easy', 1, '2018-01-02 16:23:01', NULL),
(5, 'Teka-teki perulangan 5', '#Soal perulangan biasa\r\n#kamus data\r\n#n : variabel jumlah masukan (integer)\r\n#i : variabel pengendali for (array of integer)\r\nn=5\r\ntotal=0\r\nfor i in range(0,n,1):\r\n    total+=n-i+2\r\nprint(i)\r\n---------------------------------\r\napa hasil output dari progra', '22', '21', '25', '23', '24', '25', 'programming', 'medium', 1, '2018-01-02 16:23:01', NULL),
(8, 'Teka-teki perulangan', 'apa nama jenis perulangan yang mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya secara jelas?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'for', 'perulangan', 'easy', 6, '2018-01-04 12:50:17', '2018-01-05 07:48:21'),
(10, 'Teka-teki perulangan 1', 'apa nama jenis perulangan yang perulangan dilakukan sebelum eksekusi statement yang diulang ?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'while', 'perulangan', 'easy', 6, '2018-01-07 11:59:04', '2018-01-07 11:59:04'),
(11, 'Teka-teki perulangan 5', '#Soal perulangan biasa\r\n#kamus data\r\n#n : variabel jumlah masukan (integer)\r\n#i : variabel pengendali for (array of integer)\r\nn=5\r\ntotal=0\r\nfor i in range(0,n,1):\r\n    total+=n-i+2\r\nprint(i)\r\n---------------------------------\r\napa hasil output dari progra', '22', '21', '25', '23', '24', '25', 'programming', 'medium', 6, '2018-01-07 11:59:30', '2018-01-07 11:59:30'),
(12, 'Teka-teki perulangan 1', 'apa nama jenis perulangan yang perulangan dilakukan sebelum eksekusi statement yang diulang ?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'while', 'perulangan', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(13, 'Teka-teki perulangan 2', 'apa nama jenis perulangan yang mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya secara jelas?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'for', 'perulangan', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(14, 'Teka-teki perulangan 3', 'apa nama jenis perulangan yang tidak mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya tetapi cukup membuat variabel arraynya saja ? ', 'for', 'while', 'foreach', 'whale', 'do-whale', 'foreach', 'perulangan', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(15, 'Teka-teki perulangan 4', 'jika user ingin memasukkan input untuk validasi secara terus menerus hingga kondisi terpenuhi , maka jenis perulangan apa yang kita butuhkan ?', 'do-whale', 'for', 'while', 'foreach', 'eachfor', 'while', 'perulangan', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(16, 'Teka-teki perulangan 5', '#Soal perulangan biasa\r\n#kamus data\r\n#n : variabel jumlah masukan (integer)\r\n#i : variabel pengendali for (array of integer)\r\nn=5\r\ntotal=0\r\nfor i in range(0,n,1):\r\n    total+=n-i+2\r\nprint(i)\r\n---------------------------------\r\napa hasil output dari progra', '22', '21', '25', '23', '24', '25', 'programming', 'medium', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(17, 'Teka-teki perulangan 2', 'apa nama jenis perulangan yang mengharuskan pengguna untuk memasukkan nilai awal,batas akhir pengulangan , penambahan atau pengurangannya secara jelas?', 'for', 'while', 'foreach', 'whale', 'do-whale', 'for', 'perulangan', 'easy', 6, '2018-01-07 11:59:51', '2018-01-07 11:59:51'),
(18, 'Divede and Conquer 1', 'Algoritma pengurutan yang memakai divide & conquer adalah ?', 'bubble sort dan quick sort', 'insertion sort dan merge sort', 'shell sort dan heap sort', 'quick sort dan merge sort', 'shell sort dan bubble sort', 'quick sort dan merge sort', 'programming', 'medium', 7, '2018-01-15 14:52:35', '2018-01-15 14:59:29'),
(19, 'Divide and Conquer 2', 'Persoalan yang dapat dipecahkan dengan algoritma divide and conquer adalah', 'Knapsack 0/1', 'Travelling Salesman Problem', 'Pasangan titik yang jaraknya terdekat', 'Pewarnaan peta', 'Minimum Spanning tree', 'Pasangan titik yang jaraknya terdekat', 'programming', 'easy', 7, '2018-01-15 14:54:25', '2018-01-15 14:54:25'),
(20, 'Divide and Conquer 3', 'Algoritma Brute Force , disebut juga dengan ?', 'Depth First Search', 'Exhaustive Search', 'Breadth First Search', 'Binary Search', 'Sentinel Search', 'Exhaustive Search', 'programming', 'hard', 7, '2018-01-15 14:55:57', '2018-01-15 14:55:57'),
(21, 'Divide and Conquer 4', 'Persoalan Fractional Knapsack dapat diselesaikan secara optimal dengan menggunakan ?', 'Algoritma Greedy', 'Algoritma Backtracking', 'Algoritma Divide and Conquer', 'Algoritma Recursive', 'Pemrograman Dinamis', 'Algoritma Greedy', 'programming', 'easy', 7, '2018-01-15 14:57:33', '2018-01-15 14:57:33'),
(22, 'Divide and Conquer 5', 'Algoritma Greedy dapat memberikan solusi optimal untuk persoalan?', 'Knapsack 0/1', 'Minimum Spaning Tree', 'Travelling Salesman Problem', 'Pewarnaan peta', 'Greedy', 'Travelling Salesman Problem', 'programming', 'medium', 7, '2018-01-15 14:59:19', '2018-01-15 14:59:19'),
(23, 'Divide and Conquer 1', 'Algoritma pengurutan yang memakai divide & conquer adalah ?', 'bubble sort dan quick sort', 'insertion sort dan merge sort', 'shell sort dan heap sort', 'quick sort dan merge sort', 'shell sort dan bubble sort', 'quick sort dan merge sort', 'programming', 'medium', 8, '2018-01-15 15:31:35', '2018-01-21 08:48:35'),
(24, 'Divide and Conquer 2', 'Persoalan yang dapat dipecahkan dengan algoritma divide and conquer adalah', 'Knapsack 0/1', 'Travelling Salesman Problem', 'Pasangan titik yang jaraknya terdekat', 'Pewarnaan peta', 'Minimum Spanning tree', 'Pasangan titik yang jaraknya terdekat', 'programming', 'easy', 8, '2018-01-15 15:31:35', '2018-01-15 15:31:35'),
(25, 'Divide and Conquer 3', 'Algoritma Brute Force , disebut juga dengan ?', 'Depth First Search', 'Exhaustive Search', 'Breadth First Search', 'Binary Search', 'Sentinel Search', 'Exhaustive Search', 'programming', 'hard', 8, '2018-01-15 15:31:35', '2018-01-15 15:31:35'),
(26, 'Divide and Conquer 4', 'Persoalan Fractional Knapsack dapat diselesaikan secara optimal dengan menggunakan ?', 'Algoritma Greedy', 'Algoritma Backtracking', 'Algoritma Divide and Conquer', 'Algoritma Recursive', 'Pemrograman Dinamis', 'Algoritma Greedy', 'programming', 'easy', 8, '2018-01-15 15:31:35', '2018-01-15 15:31:35'),
(27, 'Divide and Conquer 5', 'Algoritma Greedy dapat memberikan solusi optimal untuk persoalan?', 'Knapsack 0/1', 'Minimum Spaning Tree', 'Travelling Salesman Problem', 'Pewarnaan peta', 'Greedy', 'Travelling Salesman Problem', 'programming', 'medium', 8, '2018-01-15 15:31:35', '2018-01-15 15:31:35'),
(28, 'Divide and Conquer 1', 'Algoritma pengurutan yang memakai divide & conquer adalah ?', 'bubble sort dan quick sort', 'insertion sort dan merge sort', 'shell sort dan heap sort', 'quick sort dan merge sort', 'shell sort dan bubble sort', 'quick sort dan merge sort', 'programming', 'medium', 11, '2018-01-25 18:44:09', '2018-01-25 18:44:09'),
(29, 'Divide and Conquer 3', 'Algoritma Brute Force , disebut juga dengan ?', 'Depth First Search', 'Exhaustive Search', 'Breadth First Search', 'Binary Search', 'Sentinel Search', 'Exhaustive Search', 'programming', 'hard', 11, '2018-01-25 18:44:09', '2018-01-25 18:44:09'),
(30, 'SOK_PraUTS', 'Proses yang saling berbagi data yang memungkinkan data tersebut menjadi tidak konsisten disebut dengan …', 'Produser/Konsumer', 'Independent Process', 'Inter Process', 'Cooperating Process', 'Sleep and Wait', 'Cooperating Process', 'programming', 'easy', 12, '2018-02-26 22:55:28', '2018-02-26 22:55:28'),
(31, 'SOK_PraUTS', 'Masalah yang dapat terjadi pada beberapa proses yang memanipulasi suatu data secara konkuren, sehingga data tersebut tidak sinkron lagi disebut dengan …', 'Mutual Exclusion', 'Race Condition', 'Critial Section', 'Bounded Waiting', 'Sinkronisasi', 'Race Condition', 'programming', 'easy', 12, '2018-02-26 22:56:48', '2018-02-26 22:56:48'),
(32, 'SOK_PraUTS', 'Cara yang menjamin jika ada sebuah proses yang menggunakan data yang sama (digunakan juga oleh proses lain), maka proses lain akan dikeluarkan dari pekerjaan yang sama adalah …', 'Mutual Exclusion', 'Race Condition', 'Critial Section', 'Bounded Waiting', 'Sinkronisasi', 'Mutual Exclusion', 'programming', 'easy', 12, '2018-02-26 22:57:23', '2018-02-26 22:57:23'),
(33, 'SOK_PraUTS', 'Menurut Silberschatz, solusi dari masalah critical section harus memenuhi tiga syarat, salah satunya adalah …', 'Mutual Exclusion', 'Race Condition', 'Critial Section', 'Circular Waiting', 'Sinkronisasi', 'Mutual Exclusion', 'programming', 'easy', 12, '2018-02-26 22:58:02', '2018-02-26 22:58:02'),
(34, 'SOK_PraUTS', 'Menurut Silberschatz, solusi dari masalah critical section harus memenuhi tiga syarat. Yang tidak termasuk adalah …', 'Mutual Exclusion', 'Adanya Progress', 'Sinkronisasi', 'Bounded Waiting', 'Race Condition', 'Sinkronisasi', 'programming', 'easy', 12, '2018-02-26 22:58:39', '2018-02-26 22:58:39'),
(35, 'SOK_PraUTS', 'Solusi masalah critical section yang tergantung pada beberapa instruksi mesin tertentu disebut …', 'Mutual Exclusion', 'Software Solution', 'Hardware Solution', 'Sinkronisasi', 'Semaphore', 'Hardware Solution', 'programming', 'easy', 12, '2018-02-26 22:59:20', '2018-02-26 22:59:20'),
(36, 'SOK_PraUTS', 'Solusi yang diajukan oleh Hoare, dimana proses harus memanggil prosedur untuk mengakses struktur data internal disebut …', 'Mutual Exclusive', 'Hardware Solution', 'Monitors', 'Semaphore', 'Software Solution', 'Monitors', 'programming', 'easy', 12, '2018-02-26 23:00:10', '2018-02-26 23:00:10'),
(37, 'SOK_PraUTS', 'Solusi yang diajukan oleh Djikstra, dengan prinsip bahwa dua proses atau lebih dapat bekerja sama dengan menggunakan penanda-penanda sederhana disebut …', 'Mutual Exclusive', 'Hardware Solution', 'Monitors', 'Semaphore', 'Software Solution', 'Semaphore', 'programming', 'easy', 12, '2018-02-26 23:00:41', '2018-02-26 23:00:41'),
(38, 'SOK_PraUTS', 'Metode dalam sinkronisasi hardware yang memfokuskan pada mekanisme software interrupt adalah …', 'Processor Synchronous', 'Memory Synchronous', 'Semaphore', 'Monitors', 'Software Solution', 'Processor Synchronous', 'programming', 'easy', 12, '2018-02-26 23:01:16', '2018-02-26 23:01:16'),
(39, 'SOK_PraUTS', 'Metode dalam sinkronisasi hardware dimana instruksi harus berjalan secara atomic disebut dengan …', 'Processor Synchronous', 'Memory Synchronous', 'Semaphore', 'Monitors', 'Mutual Exclusion', 'Memory Synchronous', 'programming', 'easy', 12, '2018-02-26 23:01:53', '2018-02-26 23:01:53'),
(40, 'SOK_PraUTS', 'Yang tidak termasuk dalam bagian dari critical section adalah …', 'Remainder Section', 'Entry Section', 'Exit Section', 'Main Section', 'Middle Section', 'Main Section', 'programming', 'easy', 12, '2018-02-26 23:02:25', '2018-02-26 23:02:25'),
(41, 'SOK_PraUTS', 'Yang termasuk solusi masalah critical section dengan high-level primitives adalah …', 'Mutual Exclusive', 'Hardware Solution', 'Monitors', 'Semaphore', 'Software Solution', 'Monitors', 'programming', 'easy', 12, '2018-02-26 23:03:03', '2018-02-26 23:03:03'),
(42, 'SOK_PraUTS', 'Yang termasuk solusi masalah critical section dengan low-level primitives adalah …', 'Mutual Exclusive', 'Hardware Solution', 'Monitors', 'Semaphore', 'Software Solution', 'Semaphore', 'programming', 'easy', 12, '2018-02-26 23:03:39', '2018-02-26 23:03:39'),
(43, 'SOK_PraUTS', 'Sekumpulan proses yang diblok, dimana setiap proses memegang satu resource dan menunggu resource lain dari proses dalam kumpulan proses yang sedang diblok tersebut disebut …', 'Semaphore', 'Deadlock', 'Starvation', 'Mutual Exclusion', 'Critical Region', 'Deadlock', 'programming', 'easy', 12, '2018-02-26 23:04:20', '2018-02-26 23:04:20'),
(44, 'SOK_PraUTS', 'Setiap proses system akan memakai suatu resource, dengan urutan penggunaan sebagai berikut …', 'Release – Use – Request', 'Request – Use – Release', 'Use – Release – Request', 'Request – Release – Use', 'Use-Request-Release', 'Request – Use – Release', 'programming', 'easy', 12, '2018-02-26 23:05:31', '2018-02-26 23:05:31'),
(45, 'SOK_PraUTS', 'Ada 4 kondisi-kondisi penimbul deadlock, yang tidak termasuk di antaranya adalah …', 'Mutual Exclusion', 'Hold and Wait', 'Preemption', 'Circular Waiting', 'Critical Region', 'Preemption', 'programming', 'easy', 12, '2018-02-26 23:06:11', '2018-02-26 23:06:11'),
(46, 'SOK_PraUTS', 'Kondisi penimbul deadlock dimana proses meminta ijin untuk mengakses resource, sementara resource tidak tersedia dan request tidak dapat dicancel disebut dengan …', 'Mutual Exclusion', 'Hold and Wait', 'No Preemption', 'Circular Wait', 'Preemption', 'No Preemption', 'programming', 'easy', 12, '2018-02-26 23:06:57', '2018-02-26 23:06:57'),
(47, 'SOK_PraUTS', 'Kondisi penimbul deadlock dimana terjadi suatu proses mengakses suatu resource, proses tersebut dapat meminta ijin untuk mengakses resource lain disebut dengan …', 'Mutual Exclusion', 'Hold and Wait', 'No Preemption', 'Circular Wait', 'Preemption', 'Hold and Wait', 'programming', 'easy', 12, '2018-02-26 23:07:39', '2018-02-26 23:07:39'),
(48, 'SOK_PraUTS', 'Metode penanganan deadlock dimana semua kondisi penyebab deadlock tidak dianggap dan berasumsi deadlock tidak akan pernah terjadi disebut …', 'Deadlock Prevention', 'Deadlock Avoidance', 'Deadlock Detection and Recovery', 'Deadlock Ignoring and Recovery', 'Deadlock Identification', 'Deadlock Ignoring and Recovery', 'programming', 'easy', 12, '2018-02-26 23:08:15', '2018-02-26 23:08:15'),
(49, 'SOK_PraUTS', 'Metode penanganan deadlock dimana mengijinkan sistem mengalami deadlock, namun kemudian harus segera dapat memperbaikinya disebut …', 'Deadlock Prevention', 'Deadlock Avoidance', 'Deadlock Detection and Recovery', 'Deadlock Ignoring and Recovery', 'Deadlock Identification', 'Deadlock Detection and Recovery', 'programming', 'easy', 12, '2018-02-26 23:08:52', '2018-02-26 23:08:52'),
(50, 'SOK_PraUTS', 'Metode penanganan deadlock dimana system memberikan informasi tambahan terkait resource yang akan diminta adalah …', 'Deadlock Prevention', 'Deadlock Avoidance', 'Deadlock Detection and Recovery', 'Deadlock Ignoring and Recovery', 'Deadlock Identification', 'Deadlock Avoidance', 'programming', 'easy', 12, '2018-02-26 23:09:29', '2018-02-26 23:09:29'),
(51, 'SOK_PraUTS', 'Metode penanganan deadlock dimana system meyakinkan bahwa tidak akan terjadi circular wait dan memberikan informasi tambahan terkait resource yang akan diminta adalah …', 'Deadlock Prevention', 'Deadlock Avoidance', 'Deadlock Detection and Recovery', 'Deadlock Ignoring and Recovery', 'Deadlock Identification', 'Deadlock Avoidance', 'programming', 'easy', 12, '2018-02-26 23:10:15', '2018-02-26 23:10:15'),
(52, 'SOK_PraUTS', 'Starvation biasanya terjadi setelah deadlock itu terjadi dan tetap harus deadlock itu terjadi. Pernyataan ini benar atau tidak?', 'Benar', 'Salah', '.', '.', '.', 'Salah', 'programming', 'easy', 12, '2018-02-26 23:10:39', '2018-02-26 23:10:39'),
(53, 'SOK_PraUTS', 'Starvation terjadi pada proses penjadwalan yang menggunakan prinsip …', 'Proses yang datang duluan diselesaikan dahulu', 'Proses yang datang terakhir diselesaikan dahulu', 'Proses yang lebih cepat diselesaikan dahulu', 'Proses yang lebih lama diselesaikan dahulu', 'Proses yang terlalu lama menunggu akan di-kill', 'Proses yang lebih cepat diselesaikan dahulu', 'programming', 'easy', 12, '2018-02-26 23:11:36', '2018-02-26 23:11:36'),
(54, 'SOK_PraUTS', 'Solusi deadlock dengan kondisi P1 sedang mengakses R3, maka P1 hanya boleh request R4 atau R5 dst untuk mencegah terjadinya …', 'Mutual Exclusion', 'Hold and Wait', 'No Preemption', 'Circular Wait', 'Preemption', 'Circular Wait', 'programming', 'easy', 12, '2018-02-26 23:12:08', '2018-02-26 23:12:08'),
(55, 'Prog.Sederhana-1', '# File : Kuis1-1.py\r\n# Program Kuis1 - Aksi Sequential\r\n# Kamus Data\r\n# x : var. utk perhitungan(integer)\r\n# y : var. utk input (integer)\r\n# z : var. utk input (integer)\r\n\r\ny = int(input(\" Nilai y :\"))\r\nz = int(input(\" Nilai z :\"))\r\n\r\nx = y // z\r\nz = y % 7\r\ny = z - 1\r\n\r\nprint(x,y,z) \r\n\r\nJika nilai y dan z yang diinput adalah 10 dan 2 maka nilai yang dicetak adalah :', '5, 3, 2', '5, 2, 3', '3, 2, 5', '3, 5, 2', '2, 5, 3', '5, 2, 3', 'programming', 'easy', 13, '2018-02-27 12:29:06', '2018-03-09 14:10:48'),
(56, 'IF-dua-kasus-1', '# File : LatDuaKasus.py\r\n# Program LatihanIF dua kasus \r\n# Kamus Data\r\n# x : var. input utk nilai a(integer)\r\n# y : var. input utk nilai a(integer)\r\nx = 10\r\ny = -5\r\nif (x - y > 10):\r\n    x = x - 3\r\nelse:\r\n    y = y + 3\r\nprint (\"x : \",x,\" y : \",y) \r\n\r\nBerapakah nilai x dan y yang dicetak :', 'x :  7  y :  -5', 'x :  -5  y :  7', 'x :  7  y :  -2', 'x :  -2  y :  7', 'x :  13  y :  -8', 'x :  7  y :  -5', 'programming', 'easy', 13, '2018-02-27 12:33:33', '2018-03-09 14:33:00'),
(57, 'IF-or-1', '# File : LatDuaKasusOr.py\r\n# Program LatihanIF dua kasus dgn operasi OR\r\n# Kamus Data\r\n# x : var. input utk nilai a(integer)\r\n# y : var. input utk nilai a(integer)\r\nx = int(input(\"x :\"))\r\ny = int(input(\"y :\"))\r\nif (x <= 5) or (y < 0):\r\n    x = x - 3\r\nelse:\r\n    y = y + 3\r\nprint (\"x : \",x,\" y : \",y)\r\n\r\nBerapakah nilai x dan y yang dicetak, jika nilai x dan y yang diinput adalah 2 dan 6 ?', 'x :  6  y :  -1', 'x :  -1  y :  6', 'x :  5  y :  3', 'x :  -1  y :  9', 'x :  2  y :  9', 'x :  -1  y :  6', 'programming', 'easy', 13, '2018-02-27 12:40:13', '2018-03-09 14:37:32'),
(58, 'IF-and-1', '# File : LatDuaKasusAnd.py\r\n# Program LatihanIF dua kasus dgn operasi OR\r\n# Kamus Data\r\n# x : var. input utk nilai a(integer)\r\n# y : var. input utk nilai a(integer)\r\nx = int(input(\"x :\"))\r\ny = int(input(\"y :\"))\r\nif (x <= 5) and (y < 0):\r\n    x = x - 3\r\nelse:\r\n    y = y + 3\r\nprint (\"x : \",x,\" y : \",y)\r\n\r\nBerapakah nilai x dan y yang dicetak jika input x dan y adalah 3 dan 6?', 'x :  9  y :  3', 'x :  0  y :  6', 'x :  3  y :  9', 'x :  0  y :  9', 'x :  6  y :  0', 'x :  3  y :  9', 'programming', 'easy', 13, '2018-02-27 12:46:10', '2018-03-09 14:40:17'),
(59, 'while-1', '#File : While-1.py  \r\n#Program While-print \r\n# Kamus Data \r\n# N : var. input utk nilai N(integer) \r\n# i : var. counter utk pengendali while (integer)\r\nN = int(input(\"Nilai N :\")) # inisialisasi \r\ni = 1 \r\nwhile (i < N):             # pengulangan \r\n    print(i)\r\n    i = i + 2\r\n\r\nTuliskan output dari program jika N yang diinput adalah 10', '1, 2, 3, 4, 5, 6, 7, 8, 9', '1, 3, 5, 7, 9', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '3, 5, 7, 9', '1, 3, 5, 7, 10', '1, 3, 5, 7, 9', 'programming', 'easy', 13, '2018-02-27 12:50:40', '2018-03-09 15:04:43'),
(60, 'while-2', '#File : While-1.py  \r\n#Program While-print \r\n# Kamus Data \r\n# N : var. input utk nilai N(integer) \r\n# i : var. counter utk pengendali while (integer)\r\nN = int(input(\"Nilai N :\")) # inisialisasi \r\ni = 1 \r\nwhile (i <= N):             # pengulangan \r\n    print(i)\r\n\r\nOutput dari program jika N adalah 10 adalah :', '1, 2, 3, 4, 5, 6, 7, 8, 9', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', 'Program terus mencetak 1', 'Program terus mencetak 10', 'Program tidak mencetak apapun', 'C', 'programming', 'easy', 13, '2018-02-27 12:54:46', '2018-03-09 15:07:31'),
(61, 'while-3', '#File : While-1.py  \r\n#Program While-print \r\n# Kamus Data \r\n# N : var. input utk nilai N(integer) \r\n# i : var. counter utk pengendali while (integer)\r\nN = int(input(\"Nilai N :\")) # inisialisasi \r\ni = 1 \r\nwhile (i > N):             # pengulangan \r\n    print (i)\r\n    i = i + 2\r\n\r\nJika N adalah 10 maka output dari program adalah :', '1, 3, 5, 7, 9', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', 'Program tidak mencetak apapun', 'Program Looping', '1, 2, 3, 4, 5, 6, 7, 8, 9', 'Program tidak mencetak apapun', 'programming', 'easy', 13, '2018-02-27 12:58:24', '2018-03-09 15:11:18'),
(62, 'while-99', '#File : While-JmlData.py  \r\n# Program While-JumlahData\r\n# Kamus Data\r\n# x : var. input utk nilai data x sembarang(integer)\r\n# i : var. counter utk pengendali while (integer)\r\n# Jml : var. utk hitung jumlah data x yang diinput (integer)\r\n\r\nx = int(input(\"Nilai x:\"))\r\nJml = 0\r\ni = 0\r\nwhile (x != 9999):  \r\n     i = i + 1          \r\n    Jml = Jml + x\r\n    x = int(input(\"Nilai x :\"))\r\nPrint(i,Jml)\r\n\r\nJika nilai x yang diinput adalah 10, 2, 3, 15, 6, 9999 maka output yang dicetak adalah :', '5, 26', '6, 26', '26, 5', '26, 6', 'Semua salah', '5, 26', 'programming', 'easy', 13, '2018-02-27 13:03:02', '2018-03-09 14:01:56'),
(63, 'For-1', '#File : For-1.py  \r\n#Program For-printDeret Mundur\r\n# Print 1,2, ... N\r\n# Kamus Data\r\n# N : var. input utk nilai N(integer)\r\n# i : var. counter utk pengendali while (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\nfor i in range (1,N,1):\r\n    print (i)\r\n    \r\nJika N yang diinput adalah 7 maka output program :', '1, 2, 3, 4, 5, 6, 7', '1, 2, 3, 4, 5, 6', '1, 2, 3, 4, 5', '1,1,1,1,1,1,1', '1, 3, 5, 7, 9', '1, 2, 3, 4, 5, 6', 'programming', 'easy', 13, '2018-02-27 13:07:14', '2018-03-09 15:06:09'),
(64, 'For-2', '# File : For-2.py\r\n# Program For-printDeret\r\n# Print deret\r\n# Kamus Data\r\n# N : var. input utk nilai N(integer)\r\n# i : var. counter utk pengendali while (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\n\r\nfor i in range (N,0,-1):\r\n    print (“I = “,i)\r\n    \r\nJika N adalah 6 maka output dari program adalah :', '1, 2, 3, 4, 5, 6', '1, 2, 3, 4, 5', '6, 5, 4, 3, 2, 1', '6, 5, 4, 3, 2', '5, 4, 3, 2, 1', '6, 5, 4, 3, 2, 1', 'programming', 'easy', 13, '2018-02-27 13:11:11', '2018-03-09 15:08:50'),
(65, 'List-Traversal', 'Diberikan definisi List sebagai berikut :\r\nclass Node(object):\r\n    def __init__(self, value):\r\n        self.info = value\r\n        self.next = None\r\n        \r\nclass List(object):\r\n    def __init__(self):\r\n        self.first = None\r\n\r\n#PrintList mencetak info dari setiap elemen list\r\n#mulai dari elemen pertama sd terakhir\r\n\r\ndef PrintList(self):\r\n    P = self.first\r\n    while (....................):\r\n        print(P.info)\r\n        P = P.next\r\n\r\nPilihlah Instruksi dalam while yang paling tepat  :', 'self.first != None', 'P.next != None', 'P != None', 'self.next != None', 'self.first.next != None', 'P != None', 'programming', 'easy', 15, '2018-03-26 15:40:28', '2018-03-26 15:40:28'),
(66, 'a', 'a', 'a', 'b', 'c', 'd', 'e', 'a', 'programming', 'easy', 17, '2018-04-15 22:56:41', '2018-04-15 22:56:41'),
(67, 'b', 'bb', 'a', 'b', 'c', 'd', 'e', 'b', 'programming', 'easy', 17, '2018-04-15 22:56:54', '2018-04-15 22:56:54'),
(68, 'c', 'cc', 'a', 'b', 'c', 'd', 'e', 'c', 'jaringan', 'medium', 17, '2018-04-15 22:57:14', '2018-04-15 22:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `idMahasiswa` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `task`, `status`, `idMahasiswa`, `created_at`, `updated_at`) VALUES
(1, 'Mengerjakan Tugas Akhir', 'notdone', 2, '2018-01-11 15:13:50', NULL),
(2, 'Belajar laravel', 'notdone', 2, '2018-01-11 15:13:50', NULL),
(3, 'Tugas Besar OOP', 'notdone', 2, '2018-01-11 15:40:28', '2018-02-15 02:25:12'),
(4, 'Belajar untuk kuis Post Test Daspro 9 Feb 2018', 'notdone', 2, '2018-01-11 15:58:29', '2018-02-15 02:25:12'),
(5, 'Jaga staf kamis 19.00 - 22.00', 'notdone', 2, '2018-01-11 16:03:21', '2018-02-15 02:25:12'),
(6, 'Asisten Dosen Jarkom Rabu 09.00', 'notdone', 2, '2018-01-11 16:03:47', '2018-02-15 02:25:12'),
(7, 'Asisten Dosen Daspro Senin 08.00', 'notdone', 2, '2018-01-11 16:04:11', '2018-02-15 02:25:12'),
(8, 'asdf', 'notdone', 5, '2018-01-12 17:52:30', '2018-02-15 02:25:12'),
(10, 'Belajar Daspro', 'notdone', 1, '2018-01-15 22:20:47', '2018-02-15 02:25:12'),
(11, 'Jaga Staf Pagi', 'notdone', 1, '2018-01-15 22:21:07', '2018-02-15 02:25:12'),
(21, 'Belajar Netbeans', 'done', 5, '2018-02-26 04:42:28', '2018-02-25 21:42:45'),
(22, 'Makan', NULL, 31, '2018-03-28 17:49:28', '2018-03-28 17:49:28'),
(23, 'Tes', 'done', 32, '2018-03-28 17:49:33', '2018-03-28 10:49:41'),
(24, 'Tidur', NULL, 31, '2018-03-28 17:49:35', '2018-03-28 17:49:35'),
(25, 'Ngoding', NULL, 31, '2018-03-28 17:49:45', '2018-03-28 17:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `id` int(255) NOT NULL,
  `namaTournament` varchar(255) NOT NULL,
  `tanggalTournament` date NOT NULL,
  `creator` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `point` int(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `about` text NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `start` datetime DEFAULT NULL,
  `finish` datetime NOT NULL,
  `duration` time NOT NULL,
  `namaMK` varchar(255) NOT NULL,
  `idBankSoal` int(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `kondisi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`id`, `namaTournament`, `tanggalTournament`, `creator`, `status`, `point`, `gambar`, `about`, `tempat`, `start`, `finish`, `duration`, `namaMK`, `idBankSoal`, `jenis`, `kondisi`, `created_at`, `updated_at`) VALUES
(20, 'Tournament sore hari', '2017-12-11', 'Mushi', 'free', 28, '', 'coba weh', 'GWM Lantai 8 Lab ADV 1', '2017-12-11 00:00:00', '2017-12-11 03:00:00', '00:00:00', 'Dasar Pemrograman', 2, NULL, NULL, '2017-12-09 01:25:37', '2018-02-04 19:59:23'),
(21, 'Tournament battleground', '2017-12-11', 'Mushi', 'free', 25, '20171211005728.jpg', 'hanya tournament percobaan', 'GWM lantai 8', '2017-12-11 07:56:53', '2017-12-11 14:00:00', '00:00:00', 'Dasar Pemrograman', 2, NULL, NULL, '2017-12-10 17:57:28', '2018-02-04 19:59:23'),
(23, 'Tournament Mahasiswa', '2017-12-17', 'Mushi', 'free', 25, '', 'Tournament khusus mahasiswa Universitas Kristen Maranatha', 'GWM Lantai 8 Maranatha', '2017-12-17 00:00:00', '2017-12-17 17:00:00', '00:00:00', 'Dasar Pemrograman', 2, NULL, NULL, '2017-12-16 02:32:29', '2018-02-04 19:59:23'),
(24, 'Tourney', '2018-01-26', 'Rahmat', 'free', 24, '', 'adsfadf', 'GWM Lantai 8', '2018-01-26 00:14:00', '2018-01-26 22:15:00', '02:00:00', 'Dasar Pemrograman', 1, NULL, NULL, '2017-12-25 00:39:22', '2018-02-04 19:59:23'),
(25, 'Tournament Baru', '2018-01-26', 'Rahmat', 'free', 15, '', 'hanya mencoba isian', 'Gwm Lantai 8', '2018-01-26 00:13:00', '2018-01-26 22:13:00', '14:00:00', 'Dasar Pemrograman', 2, NULL, NULL, '2018-01-05 10:53:50', '2018-02-04 19:59:23'),
(26, 'Tournament aja', '2018-01-21', 'Rahmat', 'free', 15, '20180121161528.png', 'hanya mencoba', 'Gwm Lantai 8', '2018-01-21 23:30:00', '2018-01-22 10:35:00', '02:00:00', 'Dasar Pemrograman', 8, NULL, NULL, '2018-01-05 10:53:50', '2018-02-04 19:59:23'),
(27, 'Tournament coba', '2018-01-26', 'Rahmat', 'free', 15, '', 'coba Isian check', 'Gwm Lantai 8', '2018-01-26 00:11:00', '2018-01-26 22:10:00', '05:00:00', 'Dasar Pemrograman', 10, NULL, NULL, '2018-01-05 10:53:50', '2018-02-04 19:59:23'),
(30, 'Tournament PG 15 Jan 2018', '2018-01-15', 'Rahmat', 'free', 25, '', 'Tournament PG', 'GWM Lantai 8 laboratorium adv 2', '2018-01-15 14:10:00', '2018-01-15 18:00:00', '00:00:00', 'Dasar Pemrograman', 7, NULL, NULL, '2018-01-15 15:03:29', '2018-02-04 20:00:29'),
(31, 'Tournament Senin siang', '2018-01-15', 'Rahmat', 'free', 11, '', 'adfadsfadsf', 'GWM', '2018-01-15 14:32:00', '2018-01-15 16:30:26', '00:00:00', 'Dasar Pemrograman', 7, NULL, NULL, '2018-01-15 15:30:36', '2018-02-04 20:00:29'),
(32, 'Tournament Gabungan', '2018-01-22', 'Rahmat', 'free', 10, '', 'adfadfasdf', 'GWM Lantai 8 laboratorium adv 2', '2018-01-22 00:00:58', '2018-01-22 17:44:02', '02:00:00', 'Dasar Pemrograman', 6, NULL, NULL, '2018-01-15 15:46:49', '2018-02-04 20:00:29'),
(33, 'Tournament Percobaan 1', '2018-01-22', 'Rahmat', 'free', 10, '20180121165455.jpg', 'Coba coba', 'GWM lt.8', '2021-01-22 00:00:00', '2021-01-22 22:00:00', '02:00:00', 'Dasar Pemrograman', 7, NULL, NULL, '2018-01-21 09:54:55', '2018-02-04 20:00:29'),
(34, 'Tournament Gabungan Check', '2018-01-26', 'Rahmat', 'free', 5, '', 'Soal gabungan yang harus diperiksa terlebih dahulu', 'gwm', '2018-01-26 08:45:00', '2018-01-26 20:46:00', '04:00:00', 'Dasar Pemrograman', 11, NULL, NULL, '2018-01-25 18:47:16', '2018-02-04 20:00:29'),
(35, 'Daspro1', '2018-01-26', 'Rahmat', 'free', 10, '', 'XXX', 'Lab', '2018-01-26 16:00:00', '2018-01-26 16:53:00', '05:00:00', 'Dasar Pemrograman', 3, 'solo', 'belumselesai', '2018-01-26 16:57:21', '2018-04-17 07:44:28'),
(36, 'ASD1', '2018-02-07', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 5, '20180201042638.jpg', 'ASD1', 'Lab FIT', '2018-02-07 11:30:00', '2018-02-07 23:31:00', '00:00:30', 'Algoritma dan Struktur Data 1', 8, 'solo', 'belumselesai', '2018-02-01 12:26:38', '2018-04-17 07:44:28'),
(37, 'Kuis SOK Kelas A', '2018-03-26', 'Billy Susanto P., S.T., M.T.', 'free', 100, '20180226160537.gif', 'Kuis SOK - Pra_UTS', 'Lab Multimedia', '2018-03-26 11:44:00', '2018-03-26 17:00:00', '04:00:00', 'Sistem operasi komputer', 12, 'solo', 'belumselesai', '2018-02-27 00:05:37', '2018-04-17 07:44:28'),
(38, 'Tes1-daspro', '2018-03-19', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 10, '', 'Tes dasar pemrograman', 'ADV1', '2018-03-19 10:00:00', '2018-03-20 20:00:00', '00:20:00', 'Dasar Pemrograman', 13, 'solo', 'belumselesai', '2018-02-27 13:14:06', '2018-04-17 07:44:28'),
(39, 'Kuis SOK Kelas B', '2018-03-26', 'Billy Susanto P., S.T., M.T.', 'free', 100, '20180226160537.gif', 'Kuis SOK - Pra_UTS', 'Lab Multimedia', '2018-03-26 13:00:00', '2018-03-26 17:00:00', '04:00:00', 'Sistem operasi komputer', 10, 'solo', 'belumselesai', '2018-02-27 00:05:37', '2018-04-17 07:44:28'),
(40, 'ASD1-TestList-1', '2018-03-28', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 5, '', 'Test List Linier', 'Lab', '2018-03-28 10:00:00', '2018-03-28 15:00:00', '00:15:00', 'Algoritma dan struktur data 1', 15, 'solo', 'belumselesai', '2018-03-27 13:18:52', '2018-04-17 07:44:28'),
(41, 'Tournament Isian Check V1', '2018-04-15', 'Rahmat', 'free', 5, '', 'Tournament Isian Check', 'GWM', '2018-04-15 23:00:00', '2018-04-21 23:01:00', '00:15:00', 'Dasar Pemrograman', 16, 'solo', 'belumselesai', '2018-04-15 23:02:32', '2018-04-15 23:02:32'),
(42, 'Tournament Gabungan Check V1', '2018-04-15', 'Rahmat', 'free', 10, '', 'Tournament Gabungan Check untuk percobaan soal gabungan check dengan request baru', 'GWM', '2018-04-15 23:02:00', '2018-04-21 23:03:00', '00:30:00', 'Dasar Pemrograman', 17, 'team', 'belumselesai', '2018-04-15 23:03:56', '2018-04-15 23:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `tournamentregister`
--

CREATE TABLE `tournamentregister` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `idTournament` int(255) NOT NULL,
  `idTeam` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournamentregister`
--

INSERT INTO `tournamentregister` (`id`, `nama`, `idTournament`, `idTeam`, `created_at`, `updated_at`) VALUES
(2, 'Elvina', 34, NULL, '2018-01-25 19:13:22', '2018-01-25 19:13:22'),
(3, 'Elvina', 25, NULL, '2018-01-25 19:19:02', '2018-01-25 19:19:02'),
(4, 'Elvina', 27, NULL, '2018-01-25 19:19:09', '2018-01-25 19:19:09'),
(5, 'Elvina', 24, NULL, '2018-01-25 19:19:11', '2018-01-25 19:19:11'),
(7, 'Elvina', 37, NULL, '2018-03-05 03:22:51', '2018-03-05 03:22:51'),
(8, 'Elvina', 36, NULL, '2018-03-05 03:22:52', '2018-03-05 03:22:52'),
(13, 'Elvina', 38, NULL, '2018-03-09 14:11:34', '2018-03-09 14:11:34'),
(14, 'James Asrah Immanuel', 38, NULL, '2018-03-09 15:31:17', '2018-03-09 15:31:17'),
(16, 'WILSON SEMBIRING', 38, NULL, '2018-03-09 18:38:53', '2018-03-09 18:38:53'),
(17, 'Elvina', 39, NULL, '2018-03-19 14:09:48', '2018-03-19 14:09:48'),
(18, 'James Asrah Immanuel', 39, NULL, '2018-03-19 14:15:38', '2018-03-19 14:15:38'),
(19, 'YEREMIA EGA SEPTIA NUGRAHA', 38, NULL, '2018-03-20 10:50:03', '2018-03-20 10:50:03'),
(20, 'SAMUEL KRISTIANTO DEA', 38, NULL, '2018-03-20 10:50:07', '2018-03-20 10:50:07'),
(21, 'ALDI MALDIANO TADE', 38, NULL, '2018-03-20 10:50:11', '2018-03-20 10:50:11'),
(22, 'THEO ALEKSANDER WILLIAM', 38, NULL, '2018-03-20 10:50:16', '2018-03-20 10:50:16'),
(23, 'ALINA VANDARINA ABDULKARIM', 38, NULL, '2018-03-20 10:50:20', '2018-03-20 10:50:20'),
(24, 'SULTHAN TAQI RABBANI', 38, NULL, '2018-03-20 10:50:23', '2018-03-20 10:50:23'),
(25, 'JEREMIA ROTUA SIANTURI', 38, NULL, '2018-03-20 10:50:27', '2018-03-20 10:50:27'),
(26, 'ALFIENSIUS SALEPPANG', 38, NULL, '2018-03-20 10:50:33', '2018-03-20 10:50:33'),
(27, 'WIRA ANDIKA', 38, NULL, '2018-03-20 10:50:42', '2018-03-20 10:50:42'),
(28, 'REINALDI GEMILANG SETIAWAN POETRA', 38, NULL, '2018-03-20 10:50:48', '2018-03-20 10:50:48'),
(29, 'DANIEL ELIEZER', 38, NULL, '2018-03-20 10:50:55', '2018-03-20 10:50:55'),
(30, 'YOGA PRATAMA YULIANTO', 38, NULL, '2018-03-20 10:51:04', '2018-03-20 10:51:04'),
(31, 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', 38, NULL, '2018-03-20 10:51:12', '2018-03-20 10:51:12'),
(32, 'a', 37, NULL, '2018-03-26 14:15:53', '2018-03-26 14:15:53'),
(33, 'c', 37, NULL, '2018-03-26 14:15:55', '2018-03-26 14:15:55'),
(34, 'd', 37, NULL, '2018-03-26 14:15:57', '2018-03-26 14:15:57'),
(35, 'e', 37, NULL, '2018-03-26 14:16:00', '2018-03-26 14:16:00'),
(36, 'f', 37, NULL, '2018-03-26 14:20:53', '2018-03-26 14:20:53'),
(37, 'h', 37, NULL, '2018-03-26 14:20:57', '2018-03-26 14:20:57'),
(38, 'i', 37, NULL, '2018-03-26 14:21:41', '2018-03-26 14:21:41'),
(39, 'j', 37, NULL, '2018-03-26 14:21:44', '2018-03-26 14:21:44'),
(40, 'k', 37, NULL, '2018-03-26 14:21:47', '2018-03-26 14:21:47'),
(41, 'l', 37, NULL, '2018-03-26 14:21:49', '2018-03-26 14:21:49'),
(42, 'b', 37, NULL, '2018-03-26 14:22:39', '2018-03-26 14:22:39'),
(43, 'f', 39, NULL, '2018-03-26 14:32:40', '2018-03-26 14:32:40'),
(44, 'd', 39, NULL, '2018-03-26 14:32:55', '2018-03-26 14:32:55'),
(45, 'e', 39, NULL, '2018-03-26 14:33:20', '2018-03-26 14:33:20'),
(46, 'JONATHAN BERNAD', 40, NULL, '2018-03-27 13:27:11', '2018-03-27 13:27:11'),
(47, 'CELINE LIESHIANA', 40, NULL, '2018-03-27 13:27:16', '2018-03-27 13:27:16'),
(48, 'RONALD ADI SETIAWAN', 40, NULL, '2018-03-27 13:27:22', '2018-03-27 13:27:22'),
(49, 'KAFKA FEBIANTO AGIHARTA', 40, NULL, '2018-03-27 13:27:28', '2018-03-27 13:27:28'),
(50, 'STEFANUS HERMAWAN', 40, NULL, '2018-03-27 13:27:31', '2018-03-27 13:27:31'),
(51, 'STEVEN RUMANTO HARNANDY', 40, NULL, '2018-03-27 13:27:35', '2018-03-27 13:27:35'),
(52, 'AVINASH', 40, NULL, '2018-03-27 13:27:40', '2018-03-27 13:27:40'),
(53, 'ZALDY IGNATIUS AUW', 40, NULL, '2018-03-27 13:27:45', '2018-03-27 13:27:45'),
(54, 'KELVIN SUSANTO', 40, NULL, '2018-03-27 13:27:50', '2018-03-27 13:27:50'),
(55, 'ALEXIUS SURYA', 40, NULL, '2018-03-27 13:27:53', '2018-03-27 13:27:53'),
(56, 'ROY PARSAORAN', 40, NULL, '2018-03-27 13:28:01', '2018-03-27 13:28:01'),
(57, 'ARIYANTO SANI', 40, NULL, '2018-03-27 13:28:11', '2018-03-27 13:28:11'),
(58, 'ARIEF KURNIAWAN', 40, NULL, '2018-03-27 13:28:20', '2018-03-27 13:28:20'),
(59, 'JONNY', 40, NULL, '2018-03-27 13:28:26', '2018-03-27 13:28:26'),
(60, 'a', 40, NULL, '2018-03-27 13:43:10', '2018-03-27 13:43:10'),
(61, 'Elvina', 40, NULL, '2018-03-27 13:54:43', '2018-03-27 13:54:43'),
(62, 'b', 40, NULL, '2018-03-27 14:15:11', '2018-03-27 14:15:11'),
(63, 'MCU_ELPINOY', 42, 71, '2018-04-15 23:08:39', '2018-04-15 23:08:39'),
(64, 'MCU', 42, 73, '2018-04-15 23:09:00', '2018-04-15 23:09:00'),
(65, '1472002', 41, 72, '2018-04-15 23:10:17', '2018-04-15 23:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `tournamentteam`
--

CREATE TABLE `tournamentteam` (
  `id` int(255) NOT NULL,
  `namaTeam` varchar(255) DEFAULT NULL,
  `anggota1` varchar(255) NOT NULL,
  `anggota2` varchar(255) DEFAULT NULL,
  `anggota3` varchar(255) DEFAULT NULL,
  `anggota4` varchar(255) DEFAULT NULL,
  `anggota5` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `idTournament` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournamentteam`
--

INSERT INTO `tournamentteam` (`id`, `namaTeam`, `anggota1`, `anggota2`, `anggota3`, `anggota4`, `anggota5`, `status`, `created_at`, `updated_at`, `idTournament`) VALUES
(13, NULL, 'Elvina', NULL, NULL, NULL, NULL, 'belumterdaftar', '2018-01-21 10:48:37', '2018-03-09 06:10:59', 33),
(18, NULL, 'Elvina', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-06 16:17:24', '2018-03-09 14:11:34', 38),
(21, NULL, 'James Asrah Immanuel', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-09 15:14:30', '2018-03-09 15:31:17', 38),
(23, 'MCU', 'WILSON SEMBIRING', '', '', NULL, NULL, 'terdaftar', '2018-03-09 18:18:12', '2018-03-09 18:38:53', 38),
(24, NULL, 'Elvina', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-19 14:09:32', '2018-03-19 14:09:48', 39),
(25, NULL, 'James Asrah Immanuel', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-19 14:14:22', '2018-03-19 14:15:38', 39),
(26, 'MCU', 'JEREMIA ROTUA SIANTURI', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:38:04', '2018-03-20 10:50:27', 38),
(27, 'MCU', 'ALINA VANDARINA ABDULKARIM', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:38:24', '2018-03-20 10:50:20', 38),
(28, 'MCU', 'THEO ALEKSANDER WILLIAM', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:38:31', '2018-03-20 10:50:16', 38),
(29, 'MCU', 'SULTHAN TAQI RABBANI', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:38:40', '2018-03-20 10:50:23', 38),
(30, 'MCU', 'DANIEL ELIEZER', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:38:49', '2018-03-20 10:50:55', 38),
(31, 'MCU', 'YUSSAR MA\'ARIF VOLINDRA PRATAMA', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:39:57', '2018-03-20 10:51:12', 38),
(32, 'MCU', 'YEREMIA EGA SEPTIA NUGRAHA', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:45:44', '2018-03-20 10:50:03', 38),
(33, 'MCU', 'SAMUEL KRISTIANTO DEA', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:46:02', '2018-03-20 10:50:07', 38),
(34, 'MCU', 'ALDI MALDIANO TADE', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:47:25', '2018-03-20 10:50:11', 38),
(35, 'MCU', 'ALFIENSIUS SALEPPANG', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:47:50', '2018-03-20 10:50:33', 38),
(36, 'MCU', 'WIRA ANDIKA', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:48:21', '2018-03-20 10:50:42', 38),
(37, 'MCU', 'REINALDI GEMILANG SETIAWAN POETRA', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:48:42', '2018-03-20 10:50:48', 38),
(38, 'MCU', 'YOGA PRATAMA YULIANTO', '', '', NULL, NULL, 'terdaftar', '2018-03-20 10:49:31', '2018-03-20 10:51:04', 38),
(39, NULL, 'a', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:13:06', '2018-03-26 14:15:53', 37),
(40, NULL, 'c', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:13:21', '2018-03-26 14:15:55', 37),
(41, NULL, 'e', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:14:10', '2018-03-26 14:16:00', 37),
(42, NULL, 'd', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:14:22', '2018-03-26 14:15:57', 37),
(44, NULL, 'f', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:20:28', '2018-03-26 14:20:53', 37),
(45, NULL, 'h', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:20:53', '2018-03-26 14:20:57', 37),
(46, NULL, 'i', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:21:12', '2018-03-26 14:21:41', 37),
(47, NULL, 'j', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:21:14', '2018-03-26 14:21:44', 37),
(48, NULL, 'k', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:21:22', '2018-03-26 14:21:47', 37),
(49, NULL, 'l', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:21:34', '2018-03-26 14:21:49', 37),
(50, NULL, 'b', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:22:31', '2018-03-26 14:22:39', 37),
(51, NULL, 'f', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:31:19', '2018-03-26 14:32:40', 39),
(52, NULL, 'd', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:32:44', '2018-03-26 14:32:55', 39),
(53, NULL, 'e', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-26 14:33:06', '2018-03-26 14:33:20', 39),
(54, 'MCU', 'JONATHAN BERNAD', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:24:06', '2018-03-27 13:27:11', 40),
(55, 'MCU', 'CELINE LIESHIANA', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:24:11', '2018-03-27 13:27:16', 40),
(56, 'MCU', 'RONALD ADI SETIAWAN', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:24:16', '2018-03-27 13:27:22', 40),
(57, 'MCU', 'KAFKA FEBIANTO AGIHARTA', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:24:32', '2018-03-27 13:27:28', 40),
(58, 'MCU', 'STEFANUS HERMAWAN', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:24:48', '2018-03-27 13:27:31', 40),
(59, 'MCU', 'STEVEN RUMANTO HARNANDY', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:25:52', '2018-03-27 13:27:35', 40),
(60, 'MCU', 'AVINASH', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:01', '2018-03-27 13:27:40', 40),
(61, 'MCU', 'ZALDY IGNATIUS AUW', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:10', '2018-03-27 13:27:45', 40),
(62, 'MCU', 'KELVIN SUSANTO', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:22', '2018-03-27 13:27:50', 40),
(63, 'MCU', 'ALEXIUS SURYA', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:27', '2018-03-27 13:27:53', 40),
(64, 'MCU', 'ROY PARSAORAN', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:35', '2018-03-27 13:28:01', 40),
(65, 'MCU', 'ARIYANTO SANI', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:44', '2018-03-27 13:28:11', 40),
(66, 'MCU', 'ARIEF KURNIAWAN', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:26:56', '2018-03-27 13:28:20', 40),
(67, 'MCU', 'JONNY', '', '', NULL, NULL, 'terdaftar', '2018-03-27 13:27:02', '2018-03-27 13:28:26', 40),
(68, NULL, 'a', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-27 13:42:46', '2018-03-27 13:43:10', 40),
(69, NULL, 'Elvina', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-27 13:54:01', '2018-03-27 13:54:43', 40),
(70, NULL, 'b', NULL, NULL, NULL, NULL, 'terdaftar', '2018-03-27 14:13:57', '2018-03-27 14:15:11', 40),
(71, 'MCU_ELPINOY', '1472002', '1472088', '1472010', NULL, NULL, 'terdaftar', '2018-04-15 23:07:33', '2018-04-15 23:08:39', 42),
(72, 'MCU_1472002', '1472002', NULL, NULL, NULL, NULL, 'terdaftar', '2018-04-15 23:07:59', '2018-04-15 23:10:17', 41),
(73, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-04-15 23:08:43', '2018-04-15 23:09:00', 42);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banksoal`
--
ALTER TABLE `banksoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dkbs`
--
ALTER TABLE `dkbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecasting`
--
ALTER TABLE `forecasting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawabanisian`
--
ALTER TABLE `jawabanisian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idMhs_jawabanisian` (`idMhs`),
  ADD KEY `fk_idTournament_jawabanisian` (`idTournament`),
  ADD KEY `fk_idBanksoal_jawabanisian` (`idBanksoal`),
  ADD KEY `fk_idSoalisian_jawabanisian` (`idsoalisian`);

--
-- Indexes for table `jawabanpg`
--
ALTER TABLE `jawabanpg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idMhs_pg` (`idMhs`),
  ADD KEY `fk_idTournament_pg` (`idTournament`),
  ADD KEY `fk_idBanksoal_pg` (`idBanksoal`),
  ADD KEY `fk_idsoalpg_pg` (`idsoalpg`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestream`
--
ALTER TABLE `livestream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kodeMK`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`idProject`);

--
-- Indexes for table `projectdetail`
--
ALTER TABLE `projectdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idTournament_score` (`idTournament`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soalisian`
--
ALTER TABLE `soalisian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idBankSoalisian` (`idBankSoal`);

--
-- Indexes for table `soalpg`
--
ALTER TABLE `soalpg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idBankSoalpg` (`idBankSoal`) USING BTREE;

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idMahasiswa_todo` (`idMahasiswa`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idBanksoal_tournament` (`idBankSoal`);

--
-- Indexes for table `tournamentregister`
--
ALTER TABLE `tournamentregister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idTournament_register` (`idTournament`);

--
-- Indexes for table `tournamentteam`
--
ALTER TABLE `tournamentteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idTournament_tournamentteam` (`idTournament`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banksoal`
--
ALTER TABLE `banksoal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dkbs`
--
ALTER TABLE `dkbs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2283;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forecasting`
--
ALTER TABLE `forecasting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawabanisian`
--
ALTER TABLE `jawabanisian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `jawabanpg`
--
ALTER TABLE `jawabanpg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `livestream`
--
ALTER TABLE `livestream`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `idProject` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectdetail`
--
ALTER TABLE `projectdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `soalisian`
--
ALTER TABLE `soalisian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `soalpg`
--
ALTER TABLE `soalpg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tournamentregister`
--
ALTER TABLE `tournamentregister`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tournamentteam`
--
ALTER TABLE `tournamentteam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawabanisian`
--
ALTER TABLE `jawabanisian`
  ADD CONSTRAINT `fk_idBanksoal_jawabanisian` FOREIGN KEY (`idBanksoal`) REFERENCES `banksoal` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idMhs_jawabanisian` FOREIGN KEY (`idMhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idSoalisian_jawabanisian` FOREIGN KEY (`idsoalisian`) REFERENCES `soalisian` (`id`),
  ADD CONSTRAINT `fk_idTournament_jawabanisian` FOREIGN KEY (`idTournament`) REFERENCES `tournament` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `jawabanpg`
--
ALTER TABLE `jawabanpg`
  ADD CONSTRAINT `fk_idBanksoal_pg` FOREIGN KEY (`idBanksoal`) REFERENCES `banksoal` (`id`),
  ADD CONSTRAINT `fk_idMhs_pg` FOREIGN KEY (`idMhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idTournament_pg` FOREIGN KEY (`idTournament`) REFERENCES `tournament` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idsoalpg_pg` FOREIGN KEY (`idsoalpg`) REFERENCES `soalpg` (`id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_idTournament_score` FOREIGN KEY (`idTournament`) REFERENCES `tournament` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `soalisian`
--
ALTER TABLE `soalisian`
  ADD CONSTRAINT `fk_idBankSoalisian` FOREIGN KEY (`idBankSoal`) REFERENCES `banksoal` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `soalpg`
--
ALTER TABLE `soalpg`
  ADD CONSTRAINT `fk_idBankSoal` FOREIGN KEY (`idBankSoal`) REFERENCES `banksoal` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `todo`
--
ALTER TABLE `todo`
  ADD CONSTRAINT `fk_idMahasiswa_todo` FOREIGN KEY (`idMahasiswa`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `fk_idBanksoal_tournament` FOREIGN KEY (`idBankSoal`) REFERENCES `banksoal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tournamentregister`
--
ALTER TABLE `tournamentregister`
  ADD CONSTRAINT `fk_idTournament_register` FOREIGN KEY (`idTournament`) REFERENCES `tournament` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tournamentteam`
--
ALTER TABLE `tournamentteam`
  ADD CONSTRAINT `fk_idTournament_tournamentteam` FOREIGN KEY (`idTournament`) REFERENCES `tournament` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
