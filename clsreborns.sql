-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 05:17 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clsreborns`
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, '1191965', '7488e331b8b64e5794da3fa4eb10ad5d', '2018-01-11 09:13:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `idAnswer` int(11) NOT NULL,
  `pertemuan_idPertemuan` int(11) NOT NULL,
  `pertemuan_MasterDKBS_idMasterDKBS` int(11) NOT NULL,
  `pertemuan_MasterDKBS_semester_idSemester` int(11) NOT NULL,
  `mahasiswa_NRP` int(7) NOT NULL,
  `detaiQuestion_idDetailQuestion` int(11) NOT NULL,
  `answerFill` varchar(500) NOT NULL,
  `answerComment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`idAnswer`, `pertemuan_idPertemuan`, `pertemuan_MasterDKBS_idMasterDKBS`, `pertemuan_MasterDKBS_semester_idSemester`, `mahasiswa_NRP`, `detaiQuestion_idDetailQuestion`, `answerFill`, `answerComment`) VALUES
(103, 14, 43, 1, 1772044, 1, 'KM', 'k'),
(104, 14, 43, 1, 1772044, 2, 'KM', 'k'),
(105, 14, 43, 1, 1772044, 3, 'KM', 'k'),
(106, 14, 43, 1, 1772044, 4, 'M', 'k'),
(111, 32, 43, 1, 1772044, 1, 'M', 'k'),
(112, 32, 43, 1, 1772044, 2, 'M', 'k'),
(113, 32, 43, 1, 1772044, 3, 'SM', 'k'),
(114, 32, 43, 1, 1772044, 4, 'KM', 'k'),
(115, 33, 43, 1, 1772044, 1, 'M', 'k'),
(116, 33, 43, 1, 1772044, 2, 'KM', 'k'),
(117, 33, 43, 1, 1772044, 3, 'SM', 'k'),
(118, 33, 43, 1, 1772044, 4, 'KM', 'k'),
(119, 34, 43, 1, 1772044, 1, 'M', 'k'),
(120, 34, 43, 1, 1772044, 2, 'KM', 'k'),
(121, 34, 43, 1, 1772044, 3, 'SM', 'k'),
(122, 34, 43, 1, 1772044, 4, 'KM', 'k'),
(123, 35, 43, 1, 1772044, 1, 'SM', 'k'),
(124, 35, 43, 1, 1772044, 2, 'M', 'k'),
(125, 35, 43, 1, 1772044, 3, 'SM', 'k'),
(126, 35, 43, 1, 1772044, 4, 'KM', 'k'),
(127, 36, 43, 1, 1772044, 1, 'M', 'k'),
(128, 36, 43, 1, 1772044, 2, 'M', 'k'),
(129, 36, 43, 1, 1772044, 3, 'SM', 'k'),
(130, 36, 43, 1, 1772044, 4, 'KM', 'k'),
(131, 18, 46, 1, 1772044, 1, 'TM', 'K'),
(132, 18, 46, 1, 1772044, 2, 'KM', 'K'),
(133, 18, 46, 1, 1772044, 3, 'M', 'K'),
(134, 18, 46, 1, 1772044, 4, 'KM', 'K'),
(159, 15, 47, 1, 1772044, 1, 'TM', 'k'),
(160, 15, 47, 1, 1772044, 2, 'KM', 'k'),
(161, 15, 47, 1, 1772044, 3, 'KM', 'k'),
(162, 15, 47, 1, 1772044, 4, 'M', 'k'),
(163, 84, 47, 1, 1772044, 1, 'KM', 'k'),
(164, 84, 47, 1, 1772044, 2, 'KM', 'k'),
(165, 84, 47, 1, 1772044, 3, 'M', 'k'),
(166, 84, 47, 1, 1772044, 4, 'KM', 'k'),
(167, 85, 47, 1, 1772044, 1, 'M', 'k'),
(168, 85, 47, 1, 1772044, 2, 'M', 'k'),
(169, 85, 47, 1, 1772044, 3, 'KM', 'k'),
(170, 85, 47, 1, 1772044, 4, 'KM', 'k'),
(171, 86, 47, 1, 1772044, 1, 'SM', 'k'),
(172, 86, 47, 1, 1772044, 2, 'M', 'k'),
(173, 86, 47, 1, 1772044, 3, 'SM', 'k'),
(174, 86, 47, 1, 1772044, 4, 'M', 'k'),
(175, 87, 47, 1, 1772044, 1, 'M', 'k'),
(176, 87, 47, 1, 1772044, 2, 'SM', 'k'),
(177, 87, 47, 1, 1772044, 3, 'M', 'k'),
(178, 87, 47, 1, 1772044, 4, 'KM', 'k'),
(179, 88, 47, 1, 1772044, 1, 'M', 'k'),
(180, 88, 47, 1, 1772044, 2, 'M', 'k'),
(181, 88, 47, 1, 1772044, 3, 'SM', 'k'),
(182, 88, 47, 1, 1772044, 4, 'M', 'k'),
(183, 89, 47, 1, 1772044, 1, 'SM', 'k'),
(184, 89, 47, 1, 1772044, 2, 'KM', 'k'),
(185, 89, 47, 1, 1772044, 3, 'KM', 'k'),
(186, 89, 47, 1, 1772044, 4, 'KM', 'k'),
(187, 71, 46, 1, 1772044, 1, 'M', 'k'),
(188, 71, 46, 1, 1772044, 2, 'KM', 'k'),
(189, 71, 46, 1, 1772044, 3, 'M', 'k'),
(190, 71, 46, 1, 1772044, 4, 'KM', 'k'),
(191, 72, 46, 1, 1772044, 1, 'M', 'k'),
(192, 72, 46, 1, 1772044, 2, 'M', 'k'),
(193, 72, 46, 1, 1772044, 3, 'SM', 'k'),
(194, 72, 46, 1, 1772044, 4, 'KM', 'k'),
(195, 73, 46, 1, 1772044, 1, 'SM', 'k'),
(196, 73, 46, 1, 1772044, 2, 'M', 'k'),
(197, 73, 46, 1, 1772044, 3, 'SM', 'k'),
(198, 73, 46, 1, 1772044, 4, 'KM', 'k'),
(199, 74, 46, 1, 1772044, 1, 'M', 'k'),
(200, 74, 46, 1, 1772044, 2, 'M', 'k'),
(201, 74, 46, 1, 1772044, 3, 'M', 'k'),
(202, 74, 46, 1, 1772044, 4, 'KM', 'k'),
(203, 75, 46, 1, 1772044, 1, 'M', 'k'),
(204, 75, 46, 1, 1772044, 2, 'M', 'k'),
(205, 75, 46, 1, 1772044, 3, 'SM', 'k'),
(206, 75, 46, 1, 1772044, 4, 'M', 'k'),
(207, 76, 46, 1, 1772044, 1, 'M', 'k'),
(208, 76, 46, 1, 1772044, 2, 'KM', 'k'),
(209, 76, 46, 1, 1772044, 3, 'KM', 'k'),
(210, 76, 46, 1, 1772044, 4, 'KM', 'k'),
(211, 16, 48, 1, 1772044, 1, 'KM', 'k'),
(212, 16, 48, 1, 1772044, 2, 'KM', 'k'),
(213, 16, 48, 1, 1772044, 3, 'KM', 'k'),
(214, 16, 48, 1, 1772044, 4, 'M', 'k'),
(215, 97, 48, 1, 1772044, 1, 'M', 'k'),
(216, 97, 48, 1, 1772044, 2, 'KM', 'k'),
(217, 97, 48, 1, 1772044, 3, 'M', 'k'),
(218, 97, 48, 1, 1772044, 4, 'KM', 'k'),
(219, 98, 48, 1, 1772044, 1, 'M', 'k'),
(220, 98, 48, 1, 1772044, 2, 'KM', 'k'),
(221, 98, 48, 1, 1772044, 3, 'KM', 'k'),
(222, 98, 48, 1, 1772044, 4, 'KM', 'k'),
(223, 99, 48, 1, 1772044, 1, 'SM', 'k'),
(224, 99, 48, 1, 1772044, 2, 'SM', 'k'),
(225, 99, 48, 1, 1772044, 3, 'SM', 'k'),
(226, 99, 48, 1, 1772044, 4, 'KM', 'k'),
(227, 100, 48, 1, 1772044, 1, 'M', 'k'),
(228, 100, 48, 1, 1772044, 2, 'M', 'k'),
(229, 100, 48, 1, 1772044, 3, 'SM', 'k'),
(230, 100, 48, 1, 1772044, 4, 'KM', 'k'),
(231, 101, 48, 1, 1772044, 1, 'M', 'k'),
(232, 101, 48, 1, 1772044, 2, 'M', 'k'),
(233, 101, 48, 1, 1772044, 3, 'SM', 'k'),
(234, 101, 48, 1, 1772044, 4, 'M', 'k'),
(235, 102, 48, 1, 1772044, 1, 'KM', 'k'),
(236, 102, 48, 1, 1772044, 2, 'KM', 'k'),
(237, 102, 48, 1, 1772044, 3, 'M', 'k'),
(238, 102, 48, 1, 1772044, 4, 'KM', 'k'),
(239, 12, 42, 1, 1772046, 1, 'TM', 'k'),
(240, 12, 42, 1, 1772046, 2, 'KM', 'k'),
(241, 12, 42, 1, 1772046, 3, 'TM', 'k'),
(242, 12, 42, 1, 1772046, 4, 'KM', 'k'),
(243, 19, 42, 1, 1772046, 1, 'M', 'k'),
(244, 19, 42, 1, 1772046, 2, 'KM', 'k'),
(245, 19, 42, 1, 1772046, 3, 'M', 'k'),
(246, 19, 42, 1, 1772046, 4, 'KM', 'k'),
(247, 20, 42, 1, 1772046, 1, 'M', 'k'),
(248, 20, 42, 1, 1772046, 2, 'KM', 'k'),
(249, 20, 42, 1, 1772046, 3, 'KM', 'k'),
(250, 20, 42, 1, 1772046, 4, 'KM', 'k'),
(251, 21, 42, 1, 1772046, 1, 'SM', 'k'),
(252, 21, 42, 1, 1772046, 2, 'SM', 'k'),
(253, 21, 42, 1, 1772046, 3, 'SM', 'k'),
(254, 21, 42, 1, 1772046, 4, 'KM', 'k'),
(255, 22, 42, 1, 1772046, 1, 'M', 'k'),
(256, 22, 42, 1, 1772046, 2, 'M', 'k'),
(257, 22, 42, 1, 1772046, 3, 'SM', 'k'),
(258, 22, 42, 1, 1772046, 4, 'KM', 'k'),
(259, 23, 42, 1, 1772046, 1, 'M', 'k'),
(260, 23, 42, 1, 1772046, 2, 'M', 'k'),
(261, 23, 42, 1, 1772046, 3, 'SM', 'k'),
(262, 23, 42, 1, 1772046, 4, 'M', 'k'),
(263, 24, 42, 1, 1772046, 1, 'KM', 'k'),
(264, 24, 42, 1, 1772046, 2, 'KM', 'k'),
(265, 24, 42, 1, 1772046, 3, 'M', 'k'),
(266, 24, 42, 1, 1772046, 4, 'KM', 'k'),
(267, 13, 45, 1, 1772046, 1, 'TM', 'k'),
(268, 13, 45, 1, 1772046, 2, 'KM', 'k'),
(269, 13, 45, 1, 1772046, 3, 'M', 'k'),
(270, 13, 45, 1, 1772046, 4, 'M', 'k'),
(271, 58, 45, 1, 1772046, 1, 'M', 'k'),
(272, 58, 45, 1, 1772046, 2, 'KM', 'k'),
(273, 58, 45, 1, 1772046, 3, 'M', 'k'),
(274, 58, 45, 1, 1772046, 4, 'KM', 'k'),
(275, 59, 45, 1, 1772046, 1, 'M', 'k'),
(276, 59, 45, 1, 1772046, 2, 'M', 'k'),
(277, 59, 45, 1, 1772046, 3, 'KM', 'k'),
(278, 59, 45, 1, 1772046, 4, 'KM', 'k'),
(279, 60, 45, 1, 1772046, 1, 'SM', 'k'),
(280, 60, 45, 1, 1772046, 2, 'SM', 'k'),
(281, 60, 45, 1, 1772046, 3, 'SM', 'k'),
(282, 60, 45, 1, 1772046, 4, 'M', 'k'),
(283, 61, 45, 1, 1772046, 1, 'M', 'k'),
(284, 61, 45, 1, 1772046, 2, 'M', 'k'),
(285, 61, 45, 1, 1772046, 3, 'SM', 'k'),
(286, 61, 45, 1, 1772046, 4, 'KM', 'k'),
(287, 62, 45, 1, 1772046, 1, 'M', 'k'),
(288, 62, 45, 1, 1772046, 2, 'M', 'k'),
(289, 62, 45, 1, 1772046, 3, 'SM', 'k'),
(290, 62, 45, 1, 1772046, 4, 'M', 'k'),
(291, 63, 45, 1, 1772046, 1, 'KM', 'k'),
(292, 63, 45, 1, 1772046, 2, 'KM', 'k'),
(293, 63, 45, 1, 1772046, 3, 'M', 'k'),
(294, 63, 45, 1, 1772046, 4, 'KM', 'k'),
(295, 18, 46, 1, 1772046, 1, 'TM', 'j'),
(296, 18, 46, 1, 1772046, 2, 'KM', 'j'),
(297, 18, 46, 1, 1772046, 3, 'KM', 'j'),
(298, 18, 46, 1, 1772046, 4, 'KM', 'j'),
(299, 71, 46, 1, 1772046, 1, 'M', 'k'),
(300, 71, 46, 1, 1772046, 2, 'KM', 'k'),
(301, 71, 46, 1, 1772046, 3, 'M', 'k'),
(302, 71, 46, 1, 1772046, 4, 'KM', 'k'),
(303, 72, 46, 1, 1772046, 1, 'M', 'k'),
(304, 72, 46, 1, 1772046, 2, 'M', 'k'),
(305, 72, 46, 1, 1772046, 3, 'KM', 'k'),
(306, 72, 46, 1, 1772046, 4, 'KM', 'k'),
(307, 73, 46, 1, 1772046, 1, 'SM', 'k'),
(308, 73, 46, 1, 1772046, 2, 'SM', 'k'),
(309, 73, 46, 1, 1772046, 3, 'SM', 'k'),
(310, 73, 46, 1, 1772046, 4, 'M', 'k'),
(311, 74, 46, 1, 1772046, 1, 'M', 'k'),
(312, 74, 46, 1, 1772046, 2, 'M', 'k'),
(313, 74, 46, 1, 1772046, 3, 'SM', 'k'),
(314, 74, 46, 1, 1772046, 4, 'KM', 'k'),
(315, 75, 46, 1, 1772046, 1, 'M', 'k'),
(316, 75, 46, 1, 1772046, 2, 'M', 'k'),
(317, 75, 46, 1, 1772046, 3, 'SM', 'k'),
(318, 75, 46, 1, 1772046, 4, 'M', 'k'),
(319, 76, 46, 1, 1772046, 1, 'KM', 'k'),
(320, 76, 46, 1, 1772046, 2, 'KM', 'k'),
(321, 76, 46, 1, 1772046, 3, 'M', 'k'),
(322, 76, 46, 1, 1772046, 4, 'KM', 'k'),
(323, 16, 48, 1, 1772046, 1, 'M', 'h'),
(324, 16, 48, 1, 1772046, 2, 'KM', 'h'),
(325, 16, 48, 1, 1772046, 3, 'KM', 'h'),
(326, 16, 48, 1, 1772046, 4, 'M', 'h'),
(327, 97, 48, 1, 1772046, 1, 'M', 'k'),
(328, 97, 48, 1, 1772046, 2, 'KM', 'k'),
(329, 97, 48, 1, 1772046, 3, 'M', 'k'),
(330, 97, 48, 1, 1772046, 4, 'KM', 'k'),
(331, 98, 48, 1, 1772046, 1, 'M', 'k'),
(332, 98, 48, 1, 1772046, 2, 'KM', 'k'),
(333, 98, 48, 1, 1772046, 3, 'KM', 'k'),
(334, 98, 48, 1, 1772046, 4, 'KM', 'k'),
(335, 99, 48, 1, 1772046, 1, 'SM', 'k'),
(336, 99, 48, 1, 1772046, 2, 'SM', 'k'),
(337, 99, 48, 1, 1772046, 3, 'SM', 'k'),
(338, 99, 48, 1, 1772046, 4, 'KM', 'k'),
(339, 100, 48, 1, 1772046, 1, 'M', 'k'),
(340, 100, 48, 1, 1772046, 2, 'M', 'k'),
(341, 100, 48, 1, 1772046, 3, 'SM', 'k'),
(342, 100, 48, 1, 1772046, 4, 'KM', 'k'),
(343, 101, 48, 1, 1772046, 1, 'M', 'k'),
(344, 101, 48, 1, 1772046, 2, 'M', 'k'),
(345, 101, 48, 1, 1772046, 3, 'SM', 'k'),
(346, 101, 48, 1, 1772046, 4, 'M', 'k'),
(347, 102, 48, 1, 1772046, 1, 'KM', 'k'),
(348, 102, 48, 1, 1772046, 2, 'KM', 'k'),
(349, 102, 48, 1, 1772046, 3, 'M', 'k'),
(350, 102, 48, 1, 1772046, 4, 'KM', 'k'),
(351, 16, 48, 1, 1772000, 1, 'TM', 'k'),
(352, 16, 48, 1, 1772000, 2, 'KM', 'k'),
(353, 16, 48, 1, 1772000, 3, 'TM', 'k'),
(354, 16, 48, 1, 1772000, 4, 'SM', 'k'),
(355, 97, 48, 1, 1772000, 1, 'M', 'k'),
(356, 97, 48, 1, 1772000, 2, 'KM', 'k'),
(357, 97, 48, 1, 1772000, 3, 'M', 'k'),
(358, 97, 48, 1, 1772000, 4, 'KM', 'k'),
(359, 98, 48, 1, 1772000, 1, 'M', 'k'),
(360, 98, 48, 1, 1772000, 2, 'KM', 'k'),
(361, 98, 48, 1, 1772000, 3, 'KM', 'k'),
(362, 98, 48, 1, 1772000, 4, 'KM', 'k'),
(363, 99, 48, 1, 1772000, 1, 'SM', 'k'),
(364, 99, 48, 1, 1772000, 2, 'SM', 'k'),
(365, 99, 48, 1, 1772000, 3, 'SM', 'k'),
(366, 99, 48, 1, 1772000, 4, 'KM', 'k'),
(367, 100, 48, 1, 1772000, 1, 'M', 'k'),
(368, 100, 48, 1, 1772000, 2, 'M', 'k'),
(369, 100, 48, 1, 1772000, 3, 'SM', 'k'),
(370, 100, 48, 1, 1772000, 4, 'KM', 'k'),
(371, 101, 48, 1, 1772000, 1, 'M', 'k'),
(372, 101, 48, 1, 1772000, 2, 'M', 'k'),
(373, 101, 48, 1, 1772000, 3, 'SM', 'k'),
(374, 101, 48, 1, 1772000, 4, 'M', 'k'),
(375, 102, 48, 1, 1772000, 1, 'KM', 'k'),
(376, 102, 48, 1, 1772000, 2, 'KM', 'k'),
(377, 102, 48, 1, 1772000, 3, 'M', 'k'),
(378, 102, 48, 1, 1772000, 4, 'KM', 'k'),
(379, 15, 47, 1, 1772000, 1, 'SM', 'k'),
(380, 15, 47, 1, 1772000, 2, 'SM', 'k'),
(381, 15, 47, 1, 1772000, 3, 'SM', 'k'),
(382, 15, 47, 1, 1772000, 4, 'SM', 'k'),
(383, 84, 47, 1, 1772000, 1, 'M', 'k'),
(384, 84, 47, 1, 1772000, 2, 'KM', 'k'),
(385, 84, 47, 1, 1772000, 3, 'M', 'k'),
(386, 84, 47, 1, 1772000, 4, 'KM', 'k'),
(387, 85, 47, 1, 1772000, 1, 'M', 'k'),
(388, 85, 47, 1, 1772000, 2, 'KM', 'k'),
(389, 85, 47, 1, 1772000, 3, 'KM', 'k'),
(390, 85, 47, 1, 1772000, 4, 'KM', 'k'),
(391, 86, 47, 1, 1772000, 1, 'SM', 'k'),
(392, 86, 47, 1, 1772000, 2, 'SM', 'k'),
(393, 86, 47, 1, 1772000, 3, 'SM', 'k'),
(394, 86, 47, 1, 1772000, 4, 'KM', 'k'),
(395, 87, 47, 1, 1772000, 1, 'M', 'k'),
(396, 87, 47, 1, 1772000, 2, 'M', 'k'),
(397, 87, 47, 1, 1772000, 3, 'SM', 'k'),
(398, 87, 47, 1, 1772000, 4, 'KM', 'k'),
(399, 88, 47, 1, 1772000, 1, 'M', 'k'),
(400, 88, 47, 1, 1772000, 2, 'M', 'k'),
(401, 88, 47, 1, 1772000, 3, 'SM', 'k'),
(402, 88, 47, 1, 1772000, 4, 'M', 'k'),
(403, 13, 45, 1, 1772000, 1, 'SM', 'jh'),
(404, 13, 45, 1, 1772000, 2, 'SM', 'jh'),
(405, 13, 45, 1, 1772000, 3, 'SM', 'jh'),
(406, 13, 45, 1, 1772000, 4, 'SM', 'jh'),
(427, 58, 45, 1, 1772000, 1, 'M', 'k'),
(428, 58, 45, 1, 1772000, 2, 'KM', 'k'),
(429, 58, 45, 1, 1772000, 3, 'M', 'k'),
(430, 58, 45, 1, 1772000, 4, 'KM', 'k'),
(431, 59, 45, 1, 1772000, 1, 'M', 'k'),
(432, 59, 45, 1, 1772000, 2, 'KM', 'k'),
(433, 59, 45, 1, 1772000, 3, 'M', 'k'),
(434, 59, 45, 1, 1772000, 4, 'KM', 'k'),
(435, 60, 45, 1, 1772000, 1, 'SM', 'k'),
(436, 60, 45, 1, 1772000, 2, 'SM', 'k'),
(437, 60, 45, 1, 1772000, 3, 'M', 'k'),
(438, 60, 45, 1, 1772000, 4, 'KM', 'k'),
(439, 61, 45, 1, 1772000, 1, 'M', 'k'),
(440, 61, 45, 1, 1772000, 2, 'KM', 'k'),
(441, 61, 45, 1, 1772000, 3, 'SM', 'k'),
(442, 61, 45, 1, 1772000, 4, 'SM', 'k'),
(443, 62, 45, 1, 1772000, 1, 'M', 'k'),
(444, 62, 45, 1, 1772000, 2, 'KM', 'k'),
(445, 62, 45, 1, 1772000, 3, 'M', 'k'),
(446, 62, 45, 1, 1772000, 4, 'KM', 'k'),
(447, 17, 44, 1, 1772000, 1, 'TM', 'k'),
(448, 17, 44, 1, 1772000, 2, 'KM', 'k'),
(449, 17, 44, 1, 1772000, 3, 'TM', 'k'),
(450, 17, 44, 1, 1772000, 4, 'KM', 'k'),
(451, 45, 44, 1, 1772000, 1, 'TM', 'j'),
(452, 45, 44, 1, 1772000, 2, 'KM', 'j'),
(453, 45, 44, 1, 1772000, 3, 'M', 'j'),
(454, 45, 44, 1, 1772000, 4, 'KM', 'j'),
(455, 25, 42, 1, 1772046, 1, 'KM', 'l,l,'),
(456, 25, 42, 1, 1772046, 2, 'M', 'l,l,'),
(457, 25, 42, 1, 1772046, 3, 'SM', 'l,l,'),
(458, 25, 42, 1, 1772046, 4, 'M', 'l,l,'),
(459, 37, 43, 1, 1772044, 1, 'TM', 'mengerti'),
(460, 37, 43, 1, 1772044, 2, 'KM', 'mengerti'),
(461, 37, 43, 1, 1772044, 3, 'M', 'mengerti'),
(462, 37, 43, 1, 1772044, 4, 'SM', 'mengerti'),
(463, 26, 42, 1, 1772046, 1, 'SM', 'sadas'),
(464, 26, 42, 1, 1772046, 2, 'SM', 'sadas'),
(465, 26, 42, 1, 1772046, 3, 'SM', 'sadas'),
(466, 26, 42, 1, 1772046, 4, 'SM', 'sadas');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banksoal`
--

INSERT INTO `banksoal` (`id`, `namaSoal`, `pembuat`, `tahunTerbit`, `tipeSoal`, `jumlahSoal`, `isSensitive`, `persenPG`, `persenIsian`, `jawabanRequired`, `created_at`, `updated_at`) VALUES
(31, 'Test1-PG', 'Rahmat', '2018-07-16', 'pg', 2, 'no', NULL, NULL, NULL, '2018-07-15 17:17:53', '2018-07-15 17:17:53'),
(32, 'Test1-Isian', 'Rahmat', '2018-07-16', 'isian', 2, 'no', NULL, NULL, NULL, '2018-07-15 17:21:43', '2018-07-15 17:21:43'),
(33, 'Test1-Gabungan', 'Rahmat', '2018-07-16', 'gabungan', 3, 'yes', NULL, NULL, NULL, '2018-07-15 20:14:50', '2018-07-15 20:14:50'),
(34, 'Test1-IsianCheck', 'Rahmat', '2018-07-16', 'isiancheck', 2, 'yes', NULL, NULL, 'yes', '2018-07-15 20:35:30', '2018-07-15 20:35:30'),
(35, 'Test1-GabunganCheck', 'Rahmat', '2018-07-16', 'gabungancheck', 3, 'yes', 50, 50, 'yes', '2018-07-15 20:39:31', '2018-07-15 20:39:31'),
(36, 'Trial-ASD2', 'Dr. Ir. Mewati Ayub, M.T.', '2018-07-18', 'gabungan', 2, 'yes', NULL, NULL, NULL, '2018-07-17 19:21:47', '2018-07-17 19:21:47'),
(37, 'Kuis2OL-ASD2', 'Dr. Ir. Mewati Ayub, M.T.', '2018-07-24', 'gabungan', 10, 'yes', NULL, NULL, NULL, '2018-07-23 20:21:24', '2018-07-23 20:21:24'),
(38, 'Kuis-Daspro-PS-in', 'Dr. Ir. Mewati Ayub, M.T.', '2018-08-14', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-08-14 00:44:51', '2018-08-14 00:44:51'),
(39, 'Kuis-Daspro-PS-out', 'Dr. Ir. Mewati Ayub, M.T.', '2018-08-14', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-08-14 01:29:43', '2018-08-14 01:29:43'),
(40, 'Kuis-Daspro-IF-in', 'Dr. Ir. Mewati Ayub, M.T.', '2018-08-24', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-08-24 01:52:11', '2018-08-24 01:52:11'),
(41, 'Kuis-Daspro-IF-out', 'Dr. Ir. Mewati Ayub, M.T.', '2018-09-03', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-09-03 01:23:13', '2018-09-03 01:23:13'),
(42, 'Kuis-Daspro-Loop-in', 'Dr. Ir. Mewati Ayub, M.T.', '2018-09-05', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-09-05 01:28:23', '2018-09-05 01:28:23'),
(43, 'Kuis-Daspro-All-in', 'Dr. Ir. Mewati Ayub, M.T.', '2018-09-18', 'gabungan', 8, 'yes', NULL, NULL, NULL, '2018-09-18 02:17:12', '2018-09-18 02:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `idComment` int(11) NOT NULL,
  `Matakuliah` varchar(50) NOT NULL,
  `Komentar` varchar(250) NOT NULL,
  `nrp` int(7) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `commentStatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`idComment`, `Matakuliah`, `Komentar`, `nrp`, `updated_at`, `commentStatus`) VALUES
(7, 'Dasar Pemrograman', 'Matakuliah ini sangat sulit', 1772044, '2019-09-02', 0),
(8, 'Pengantar Teknologi Informasi', 'Lebih dikembangkan dalam bidang teknologi saat ini', 1772044, '2019-07-26', 0),
(9, 'Dasar Pemrograman', 'Lebih Memperbanyak pertemuan mengenai Array', 1772044, '2019-08-14', 0),
(10, 'Dasar Pemrograman', 'Dosen kurang memahami materi', 1772044, '0000-00-00', 1),
(11, 'Dasar Pemrograman', 'Pelajaran sulit dipahami', 1772044, '2019-09-02', 0);

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
-- Table structure for table `detaildkbs`
--

CREATE TABLE `detaildkbs` (
  `idDetailDKBS` int(11) NOT NULL,
  `masterdkbs_idMasterDKBS` int(11) NOT NULL,
  `mahasiswa_NRP` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detaildkbs`
--

INSERT INTO `detaildkbs` (`idDetailDKBS`, `masterdkbs_idMasterDKBS`, `mahasiswa_NRP`) VALUES
(127, 42, 1772046),
(128, 43, 1772044),
(129, 44, 1772000),
(130, 45, 1772046),
(131, 45, 1772000),
(132, 46, 1772046),
(133, 46, 1772044),
(134, 47, 1772044),
(135, 47, 1772000),
(136, 48, 1772046),
(137, 48, 1772044),
(138, 48, 1772000);

-- --------------------------------------------------------

--
-- Table structure for table `detailquestion`
--

CREATE TABLE `detailquestion` (
  `idDetailQuestion` int(11) NOT NULL,
  `paketQuestion_idPaketQuestion` int(11) NOT NULL,
  `Soal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailquestion`
--

INSERT INTO `detailquestion` (`idDetailQuestion`, `paketQuestion_idPaketQuestion`, `Soal`) VALUES
(1, 1, 'Apakah anda memahami penjelasan dosen untuk pertemuan minggu ini?'),
(2, 1, 'Apakah anda memahami materi yang diberikan melalui slide?'),
(3, 1, 'Apakah anda bisa mengerjakan latihan soal yang diberikan ?'),
(4, 1, 'Apakah anda bisa mengerjakan tugas yang diberikan?');

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
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dkbs`
--

INSERT INTO `dkbs` (`id`, `kodeMK`, `namaMataKuliah`, `nrp`, `nama`, `kelas`, `sks`, `hari`, `jamAwal`, `jamAkhir`, `nik`, `dosen`, `ruangan`, `created_at`, `updated_at`) VALUES
(1, 'IN010', 'Dasar Pemrograman', '1372097', 'WILSON SEMBIRING', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'IN010', 'Dasar Pemrograman', '1772019', 'ALDI MALDIANO TADE', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'IN010', 'Dasar Pemrograman', '1772036', 'WIRA ANDIKA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'IN010', 'Dasar Pemrograman', '1872001', 'ANDREW ADRIANUS', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'IN010', 'Dasar Pemrograman', '1872002', 'EDWARD', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'IN010', 'Dasar Pemrograman', '1872003', 'EDWARD MICHAEL SETYADHI', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'IN010', 'Dasar Pemrograman', '1872004', 'JOSEF AGUSTINUS SUKIMTO TANGSUL ALAM', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'IN010', 'Dasar Pemrograman', '1872010', 'ROLANDO VIERI', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'IN010', 'Dasar Pemrograman', '1872016', 'FERDINAND YUSAK LISTIANTO', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'IN010', 'Dasar Pemrograman', '1872020', 'KELVIN WILLIAM', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'IN010', 'Dasar Pemrograman', '1872022', 'VANIKA IPSANDY', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'IN010', 'Dasar Pemrograman', '1872024', 'JOSREL CHANDRA KUMALA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'IN010', 'Dasar Pemrograman', '1872027', 'ANTHONY HALIM SAPUTRA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'IN010', 'Dasar Pemrograman', '1872028', 'GERALDI', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'IN010', 'Dasar Pemrograman', '1872032', 'KHARIS SATRIA PAMBUDI', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'IN010', 'Dasar Pemrograman', '1872034', 'BILLY ARYA ANUGRAH', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'IN010', 'Dasar Pemrograman', '1872036', 'CHRISTOPHER ARLINSON', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'IN010', 'Dasar Pemrograman', '1872039', 'LUCKY', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'IN010', 'Dasar Pemrograman', '1872040', 'MUHAMMAD FIKRI BAFADHAL', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'IN010', 'Dasar Pemrograman', '1872044', 'VANESSA METAYANI', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'IN010', 'Dasar Pemrograman', '1872046', 'MARIA IVAH DAMAYRA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'IN010', 'Dasar Pemrograman', '1872048', 'RAJA RYAN SAPUTRA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'IN010', 'Dasar Pemrograman', '1872051', 'EDWIN DESEMSKY SITUMORANG', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'IN010', 'Dasar Pemrograman', '1872052', 'DAVID HALOMOAN SINAGA', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'IN010', 'Dasar Pemrograman', '1872056', 'RIOUNG ALFAYEAD', 'A', 5, 'Rabu', '09:30:00', '16:30:00', '720148', 'Dr. Ir. Mewati Ayub, MT.  ', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'IN010', 'Dasar Pemrograman', '1872006', 'MICHAEL WIDJAJAHALIM', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'IN010', 'Dasar Pemrograman', '1872008', 'JUAN DAVID', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'IN010', 'Dasar Pemrograman', '1872009', 'DENNIS LEONARDO', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'IN010', 'Dasar Pemrograman', '1872011', 'STEPHEN CANDRA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'IN010', 'Dasar Pemrograman', '1872012', 'NATANAEL HALIM', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'IN010', 'Dasar Pemrograman', '1872014', 'NATHANAEL LIMAN', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'IN010', 'Dasar Pemrograman', '1872015', 'TOBIAS RENAL ARIANTO NAINGGOLAN', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'IN010', 'Dasar Pemrograman', '1872017', 'ARIA BIMANTARA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'IN010', 'Dasar Pemrograman', '1872018', 'JONATHAN LEONARDI HALIM', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'IN010', 'Dasar Pemrograman', '1872021', 'HOSEA ADIPRATAMA SANTOSO', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'IN010', 'Dasar Pemrograman', '1872023', 'JOHANES ELIAN FARREL KUMARA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'IN010', 'Dasar Pemrograman', '1872026', 'MICHAEL JEREMY TAPPANG', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'IN010', 'Dasar Pemrograman', '1872029', 'FEBRIANTI SINGKALI', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'IN010', 'Dasar Pemrograman', '1872030', 'RONALDO TASMAN', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'IN010', 'Dasar Pemrograman', '1872033', 'RAY CHRISTIAN KUSTIAWAN', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'IN010', 'Dasar Pemrograman', '1872035', 'RIVALDO STUART WATTIMENA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'IN010', 'Dasar Pemrograman', '1872038', 'JASON', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'IN010', 'Dasar Pemrograman', '1872041', 'ADHITYA BATHARA SATYA PASANDE', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'IN010', 'Dasar Pemrograman', '1872042', 'KEVIN SENJAYA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'IN010', 'Dasar Pemrograman', '1872045', 'YOLANDA TRIXIE HERNITA', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'IN010', 'Dasar Pemrograman', '1872047', 'STEVEN PETER SANGIAN', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'IN010', 'Dasar Pemrograman', '1872050', 'WILIAM CAESAR SENAS', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'IN010', 'Dasar Pemrograman', '1872053', 'EDOARDO ROBERTHO VINCEN MANIAGASI', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'IN010', 'Dasar Pemrograman', '1872054', 'SALIM ARIZI', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'IN010', 'Dasar Pemrograman', '1872057', 'DAVID JOHN ELIEZER', 'B', 5, 'Rabu', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'IN010', 'Dasar Pemrograman', '1872005', 'MICHAEL SEBASTIAN GUNADI', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'IN010', 'Dasar Pemrograman', '1872007', 'AXL BINTANG PARDAMEAN SIMANJUNTAK', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'IN010', 'Dasar Pemrograman', '1872013', 'ANDRE RIVALDO PRASETYO', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'IN010', 'Dasar Pemrograman', '1872019', 'RYAN NATHANIEL', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'IN010', 'Dasar Pemrograman', '1872025', 'VARDINA NAVA MADYA KASMAN', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'IN010', 'Dasar Pemrograman', '1872031', 'DAVID HARTONO', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'IN010', 'Dasar Pemrograman', '1872037', 'YONATHAN WAHYU SATRIYO HADDY', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'IN010', 'Dasar Pemrograman', '1872043', 'DINDA AYU FEBRIANI', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'IN010', 'Dasar Pemrograman', '1872049', 'ABHIPRAYA RADHITYAQSO ESMANO', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'IN010', 'Dasar Pemrograman', '1872055', 'MATTHEW DESAILLY', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'IN010', 'Dasar Pemrograman', '1872058', 'ALDRICH SANCHO SAPATA NEGARA', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'IN010', 'Dasar Pemrograman', '1872059', 'HAWILA BRYAN YUDHA DENILSON SIALLAGAN', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'IN010', 'Dasar Pemrograman', '1872060', 'TIFANI ASTADINI TARIGAN', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'IN010', 'Dasar Pemrograman', '1872061', 'HELMY HAKIM HAN', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'IN010', 'Dasar Pemrograman', '1872062', 'ALFIN HIDAYATULLOH', 'C', 5, 'Senin', '09:30:00', '16:30:00', '720309', 'Oscar Karnalim, S.T., M.T.', 'Lab Prog 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `namaDosen` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email2` varchar(255) DEFAULT NULL,
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
  `about` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nik`, `namaDosen`, `email`, `email2`, `fakultas`, `prodi`, `alamat`, `kota`, `gender`, `tanggalLahir`, `telephone`, `streamlink`, `password`, `level`, `experience`, `foto`, `warna`, `status`, `role`, `about`, `created_at`, `updated_at`) VALUES
(1, '720721', 'Dosen 1', 'rahmat@gmail.com', 'rahmat2@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jalan raya Kopo no 15', 'Bandung', 'Pria', '1970-01-01', '08122312455', 'UCPsopTKQfSgW9XdYkKA6Gdw', 'ebea86103493f2f7bbb5c6764c3fed43', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 21:38:20', '2018-06-30 05:46:33'),
(2, '720140', 'Dr. Ir. Mewati Ayub, M.T.', 'mewati.ayub@it.maranatha.edu', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Suria Sumantri 65', 'Bandung', 'Wanita', '2005-05-19', '08122116770', NULL, 'f01d9f9a0851166c90b65792a9e503d6', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', NULL, '2018-01-30 00:58:46', '2018-06-07 01:07:03'),
(3, '720723', 'Dosen PJS', 'mushi@gmail.com', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jalan Kaktus no 15', 'Bandung', 'Pria', '1989-11-17', '08122147502', 'UCpSPS5yLCxYRuZSrCx-eBjA', 'ebea86103493f2f7bbb5c6764c3fed43', 1, 1, 'user.png', 'red', 'aktif', 'PJS', 'Melayani dengan sepenuh hati', '2017-11-16 14:30:09', '2017-11-16 14:30:09'),
(4, '720302', 'Maresha Caroline Wijanto, S.Kom., M.T.', 'maresha.caroline@itmaranatha.org ', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Suria Sumantri 65', 'Bandung', 'Wanita', '2005-05-19', '08122116770', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', NULL, '2018-01-29 17:58:46', '2018-01-29 17:58:46'),
(5, '710004', 'Dr. Hapnes Toba, M. Sc., IPM', 'hapnestoba@gmail.com', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Pria', '1980-01-09', '08122312455', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 14:38:20', '2018-01-13 04:26:32'),
(6, '720314', 'Billy Susanto P., S.T., M.T.', 'billy.sp@it.maranatha.edu', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Pria', '1980-01-09', '08965383833', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 14:38:20', '2018-01-13 04:26:32'),
(7, '720309', 'Oscar Karnalim, S.T., M.T.', 'oscar.karnalim@itmaranatha.org', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Pria', '1990-01-01', '081221669924', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 14:38:20', '2018-08-25 05:58:03'),
(8, '720303', 'Wenny Franciska S., S.Kom, M.T.', 'wenny.fs@it.maranatha.edu', NULL, 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jl. Prof. drg. Surya Sumantri No. 65', 'Bandung', 'Wanita', '1990-01-01', '081221669924', NULL, 'a0bb28c06d64bf126af4a521581b7ffb', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', NULL, '2018-08-24 08:51:54', '2018-08-24 08:51:54'),
(9, '11111', 'Roy Parsaoran', 'royparsaoran@gmail.com', NULL, 'Teknologi Informasi', 'Teknik Informatika', 'aaaaaaaaaaaaa', 'Bandung', 'Laki-Laki', '1999-01-06', NULL, NULL, 'dosen12345', 1, 1, 'aaa', 'aaa', 'aaa', 'PJS', NULL, NULL, NULL),
(10, '720722', 'Dosen 2', 'rahmat@gmail.com', 'rahmat2@gmail.com', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'Jalan raya Kopo no 15', 'Bandung', 'Pria', '1970-01-01', '08122312455', 'UCPsopTKQfSgW9XdYkKA6Gdw', 'ebea86103493f2f7bbb5c6764c3fed43', 1, 1, 'user.png', 'red', 'aktif', 'Dosen', 'Melayani bukan beban , tetapi sebuah kehormatan', '2017-11-16 21:38:20', '2018-06-30 05:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `forecasting`
--

CREATE TABLE `forecasting` (
  `id` int(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `gaya` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forecasting`
--

INSERT INTO `forecasting` (`id`, `nrp`, `gaya`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1472002', 'visual', 'Elvina', '2018-07-01 03:10:52', '2018-07-01 03:10:52'),
(2, '1872033', 'visual', 'RAY CHRISTIAN KUSTIAWAN', '2018-09-19 22:53:43', '2018-09-19 22:53:43'),
(3, '1872025', 'visual', 'VARDINA NAVA MADYA KASMAN', '2018-09-19 22:59:27', '2018-09-19 22:59:27'),
(4, '1872061', 'visual', 'HELMY HAKIM HAN', '2018-09-19 23:03:54', '2018-09-19 23:03:54'),
(5, '1872007', 'visual', 'AXL BINTANG PARDAMEAN SIMANJUNTAK', '2018-09-19 23:09:04', '2018-09-19 23:09:04'),
(6, '1872043', 'kinestetik', 'DINDA AYU FEBRIANI', '2018-09-19 23:25:50', '2018-09-19 23:25:50'),
(7, '1872045', 'visual', 'YOLANDA TRIXIE HERNITA', '2018-09-19 23:35:04', '2018-09-19 23:35:04'),
(8, '1872009', 'auditori', 'DENNIS LEONARDO', '2018-09-19 23:37:58', '2018-09-19 23:37:58'),
(9, '1872044', 'auditori', 'VANESSA METAYANI', '2018-09-19 23:42:47', '2018-09-19 23:42:47'),
(10, '1872012', 'visual', 'NATANAEL HALIM', '2018-09-19 23:50:09', '2018-09-19 23:50:09'),
(11, '1872005', 'visual', 'MICHAEL SEBASTIAN GUNADI', '2018-09-19 23:50:23', '2018-09-19 23:50:23'),
(12, '1872051', 'visual', 'EDWIN DESEMSKY SITUMORANG', '2018-09-19 23:58:56', '2018-09-19 23:58:56'),
(13, '1872042', 'visual', 'KEVIN SENJAYA', '2018-09-20 02:28:44', '2018-09-20 02:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumcomment`
--

CREATE TABLE `forumcomment` (
  `comment_id` int(200) NOT NULL,
  `body` varchar(10000) NOT NULL,
  `img` varchar(10000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createdby` int(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL,
  `post_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumcomment`
--

INSERT INTO `forumcomment` (`comment_id`, `body`, `img`, `status`, `createdby`, `timestamp`, `updated_at`, `post_id`) VALUES
(1, '<p>asd</p>', '', 0, 720721, '2019-11-20 16:35:40', '2019-11-20', 1),
(2, '<p>hai saya ariyanto sani</p>', '', 1, 1772046, '2019-11-20 16:39:41', '0000-00-00', 1),
(3, '<p>hai saya roy parsaoran</p>', '', 1, 1772044, '2019-11-20 16:47:53', '0000-00-00', 1),
(4, '<p>saya mengalami kesulitan pada pelajaran tadi</p>', '', 1, 1772044, '2019-11-20 16:48:21', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forumpost`
--

CREATE TABLE `forumpost` (
  `post_id` int(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(10000) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  `createdby` int(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `img` mediumtext NOT NULL,
  `idDKBS` varchar(255) NOT NULL,
  `semester` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumpost`
--

INSERT INTO `forumpost` (`post_id`, `title`, `body`, `timestamp`, `updated_at`, `createdby`, `status`, `img`, `idDKBS`, `semester`) VALUES
(1, 'IN010 - Dasar Pemrograman - GNP1920', '<p>Pengenalan Dasar Pemrograman</p>', '2019-11-20 16:31:08', '0000-00-00 00:00:00', 720721, 1, '', 'IN010', 'GNP1920'),
(2, 'Belajar algoritma bersama', '<p>Kelas Bersama Algoritma</p>', '2019-11-20 17:07:28', '0000-00-00 00:00:00', 720722, 1, '20191120170728_720722.png', '0', '0'),
(3, 'Guru TIK di Yogyakarta Dapat Pelatihan Python', '<p>asdas</p>', '2019-11-20 17:10:52', '0000-00-00 00:00:00', 720722, 1, '', '0', '0'),
(4, 'Mulai Tahun Depan, Anak SD di Singapura Wajib Belajar Coding', '<p>Dalam tahap awal implementasi kebijakan ini, anak-anak tersebut diwajibkan untuk mengambil program pembelajaran selama 10 jam dalam satu tahun ajaran. Dalam program itu juga, mereka bakal dibekali pemahaman mengenai&nbsp;<u>kecerdasan buatan</u>&nbsp;dan teknologi-teknologi yang sedang naik daun lainnya</p>', '2019-11-20 17:13:03', '0000-00-00 00:00:00', 720722, 1, '', '0', '0'),
(5, 'Memahami Struktur Data Dalam 10 Menit', '<p>Apa itu sebetulnya algoritma dan struktur data? Dalam ilmu komputer dan matematika, Algoritma adalah urutan atau langkah untuk melakukan perhitungan atau dapat juga digunakan dan diimplementasikan untuk memecahkan masalah yang ditulis secara berurutan.</p>', '2019-11-20 17:14:37', '0000-00-00 00:00:00', 720722, 1, '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `forumreply`
--

CREATE TABLE `forumreply` (
  `reply_id` int(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createdby` int(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL,
  `comment_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumreply`
--

INSERT INTO `forumreply` (`reply_id`, `title`, `body`, `status`, `createdby`, `timestamp`, `updated_at`, `comment_id`) VALUES
(1, '', 'hai ariyanto', 0, 1772044, '2019-11-20 16:47:28', '2019-11-20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `forumtopic`
--

CREATE TABLE `forumtopic` (
  `topic_id` int(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `createdby` int(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumtopic`
--

INSERT INTO `forumtopic` (`topic_id`, `title`, `createdby`, `timestamp`, `updated_at`, `status`) VALUES
(1, 'Algoritma Struktur Data', 720722, '2019-11-20 16:58:31', '0000-00-00', 1),
(2, 'Dasar Pemrograman', 720722, '2019-11-20 16:58:59', '0000-00-00', 1),
(3, 'Belajar Bersama', 720722, '2019-11-20 16:59:06', '0000-00-00', 1),
(4, 'Coding', 720722, '2019-11-20 17:11:45', '2019-11-20', 1),
(5, 'Beginner', 720722, '2019-11-20 17:00:06', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forumtopicpost`
--

CREATE TABLE `forumtopicpost` (
  `id` int(200) NOT NULL,
  `topic_id` int(200) NOT NULL,
  `post_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumtopicpost`
--

INSERT INTO `forumtopicpost` (`id`, `topic_id`, `post_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 3, 3),
(5, 4, 3),
(6, 5, 3),
(7, 4, 4),
(8, 5, 4),
(9, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jawabanisian`
--

CREATE TABLE `jawabanisian` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `jawabanmhs` longtext NOT NULL,
  `start` datetime NOT NULL,
  `finish` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `jawabanGambar` varchar(255) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `bobot` int(255) DEFAULT NULL,
  `idMhs` int(255) NOT NULL,
  `idTournament` int(255) DEFAULT NULL,
  `idBanksoal` int(255) DEFAULT NULL,
  `idsoalisian` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawabanisian`
--

INSERT INTO `jawabanisian` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `jawabanGambar`, `keterangan`, `bobot`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalisian`, `created_at`, `updated_at`) VALUES
(2, 'Soal1-Isian', 'test', '2018-07-16 09:55:48', '2018-07-16 09:55:48', '2018-07-16 09:55:48', 'salah', NULL, NULL, NULL, 119, 47, 32, 3, '2018-07-15 19:55:48', '2018-07-15 19:55:48'),
(3, 'Soal2-Isian', 'test2', '2018-07-16 09:55:53', '2018-07-16 09:55:53', '2018-07-16 09:55:53', 'benar', NULL, NULL, NULL, 119, 47, 32, 4, '2018-07-15 19:55:53', '2018-07-15 19:55:53'),
(4, 'Soal1-Isian', 'test', '2018-07-16 10:30:08', '2018-07-16 10:30:08', '2018-07-16 10:30:08', 'salah', NULL, NULL, NULL, 119, 48, 33, 5, '2018-07-15 20:30:08', '2018-07-15 20:30:08'),
(5, 'Soal1-IsianCheck', 'test', '2018-07-16 10:38:27', '2018-07-16 10:38:27', '2018-07-16 10:38:27', 'salah', 'suicune.jpg', NULL, NULL, 119, 49, 34, 6, '2018-07-15 20:38:27', '2018-07-15 20:38:27'),
(6, 'Soal2-IsianCheck', 'Tidak Terjawab', '2018-07-16 10:38:45', '2018-07-16 10:38:45', '2018-07-16 10:38:45', 'salah', 'FFS8vxT.jpg', NULL, NULL, 119, 49, 34, 7, '2018-07-15 20:38:30', '2018-07-15 20:38:45'),
(7, 'Soal1-Isian', 'test', '2018-07-16 10:48:51', '2018-07-16 10:48:51', '2018-07-16 10:48:51', 'salah', 'bg4.jpg', NULL, NULL, 119, 50, 35, 8, '2018-07-15 20:48:51', '2018-07-15 20:48:51'),
(8, 'Soal-2', '-1', '2018-07-18 09:42:50', '2018-07-18 09:42:50', '2018-07-18 09:42:50', 'benar', NULL, NULL, NULL, 119, 51, 36, 9, '2018-07-17 19:42:50', '2018-07-17 19:42:50'),
(9, 'Soal Graph-DFS', 'ABECDFG', '2018-07-31 13:23:07', '2018-07-31 13:23:07', '2018-07-31 13:23:07', 'benar', NULL, NULL, NULL, 119, 52, 37, 10, '2018-07-30 23:23:07', '2018-07-30 23:23:07'),
(10, 'Matrix-Isian', '3582374', '2018-07-31 13:23:26', '2018-07-31 13:23:26', '2018-07-31 13:23:26', 'benar', NULL, NULL, NULL, 119, 52, 37, 11, '2018-07-30 23:23:26', '2018-07-30 23:23:26'),
(11, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 13:58:57', '2018-08-06 13:58:57', '2018-08-06 13:58:57', 'benar', NULL, NULL, NULL, 132, 52, 37, 10, '2018-08-05 23:58:57', '2018-08-05 23:58:57'),
(12, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 13:59:23', '2018-08-06 13:59:23', '2018-08-06 13:59:23', 'benar', NULL, NULL, NULL, 139, 52, 37, 10, '2018-08-05 23:59:23', '2018-08-05 23:59:23'),
(13, 'Matrix-Isian', '3582374', '2018-08-06 14:00:30', '2018-08-06 14:00:30', '2018-08-06 14:00:30', 'benar', NULL, NULL, NULL, 139, 52, 37, 11, '2018-08-06 00:00:30', '2018-08-06 00:00:30'),
(14, 'Soal Graph-DFS', 'ABECGDF', '2018-08-06 14:00:38', '2018-08-06 14:00:38', '2018-08-06 14:00:38', 'salah', NULL, NULL, NULL, 137, 52, 37, 10, '2018-08-06 00:00:38', '2018-08-06 00:00:38'),
(15, 'Matrix-Isian', '3582374', '2018-08-06 14:00:59', '2018-08-06 14:00:59', '2018-08-06 14:00:59', 'benar', NULL, NULL, NULL, 141, 52, 37, 11, '2018-08-06 00:00:59', '2018-08-06 00:00:59'),
(16, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:08:27', '2018-08-06 14:08:27', '2018-08-06 14:08:27', 'benar', NULL, NULL, NULL, 138, 52, 37, 10, '2018-08-06 00:01:13', '2018-08-06 00:08:27'),
(17, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:01:29', '2018-08-06 14:01:29', '2018-08-06 14:01:29', 'benar', NULL, NULL, NULL, 130, 52, 37, 10, '2018-08-06 00:01:29', '2018-08-06 00:01:29'),
(18, 'Matrix-Isian', '3582374', '2018-08-06 14:01:31', '2018-08-06 14:01:31', '2018-08-06 14:01:31', 'benar', NULL, NULL, NULL, 137, 52, 37, 11, '2018-08-06 00:01:31', '2018-08-06 00:01:31'),
(19, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:05:05', '2018-08-06 14:05:05', '2018-08-06 14:05:05', 'benar', NULL, NULL, NULL, 140, 52, 37, 10, '2018-08-06 00:01:57', '2018-08-06 00:05:05'),
(20, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:02:29', '2018-08-06 14:02:29', '2018-08-06 14:02:29', 'benar', NULL, NULL, NULL, 141, 52, 37, 10, '2018-08-06 00:02:29', '2018-08-06 00:02:29'),
(21, 'Soal Graph-DFS', 'abecfgdf', '2018-08-06 14:02:32', '2018-08-06 14:02:32', '2018-08-06 14:02:32', 'salah', NULL, NULL, NULL, 126, 52, 37, 10, '2018-08-06 00:02:32', '2018-08-06 00:02:32'),
(22, 'Matrix-Isian', '3582374', '2018-08-06 14:03:23', '2018-08-06 14:03:23', '2018-08-06 14:03:23', 'benar', NULL, NULL, NULL, 140, 52, 37, 11, '2018-08-06 00:03:23', '2018-08-06 00:03:23'),
(23, 'Matrix-Isian', '3582374', '2018-08-06 14:08:56', '2018-08-06 14:08:56', '2018-08-06 14:08:56', 'benar', NULL, NULL, NULL, 138, 52, 37, 11, '2018-08-06 00:03:23', '2018-08-06 00:08:56'),
(24, 'Matrix-Isian', '3254837', '2018-08-06 14:03:51', '2018-08-06 14:03:51', '2018-08-06 14:03:51', 'salah', NULL, NULL, NULL, 126, 52, 37, 11, '2018-08-06 00:03:51', '2018-08-06 00:03:51'),
(25, 'Soal Graph-DFS', 'A B E C D F G', '2018-08-06 14:05:10', '2018-08-06 14:05:10', '2018-08-06 14:05:10', 'salah', NULL, NULL, NULL, 127, 52, 37, 10, '2018-08-06 00:05:10', '2018-08-06 00:05:10'),
(26, 'Soal Graph-DFS', 'ABEGFDC', '2018-08-06 14:05:30', '2018-08-06 14:05:30', '2018-08-06 14:05:30', 'salah', NULL, NULL, NULL, 133, 52, 37, 10, '2018-08-06 00:05:30', '2018-08-06 00:05:30'),
(27, 'Soal Graph-DFS', 'AFGECDB', '2018-08-06 14:05:39', '2018-08-06 14:05:39', '2018-08-06 14:05:39', 'salah', NULL, NULL, NULL, 136, 52, 37, 10, '2018-08-06 00:05:39', '2018-08-06 00:05:39'),
(28, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:06:07', '2018-08-06 14:06:07', '2018-08-06 14:06:07', 'benar', NULL, NULL, NULL, 134, 52, 37, 10, '2018-08-06 00:06:07', '2018-08-06 00:06:07'),
(29, 'Matrix-Isian', '3 5 8 2 3 7 4', '2018-08-06 14:06:19', '2018-08-06 14:06:19', '2018-08-06 14:06:19', 'salah', NULL, NULL, NULL, 127, 52, 37, 11, '2018-08-06 00:06:19', '2018-08-06 00:06:19'),
(30, 'Soal Graph-DFS', 'ABFDCEG', '2018-08-06 14:06:44', '2018-08-06 14:06:44', '2018-08-06 14:06:44', 'salah', NULL, NULL, NULL, 128, 52, 37, 10, '2018-08-06 00:06:44', '2018-08-06 00:06:44'),
(31, 'Matrix-Isian', '3582374', '2018-08-06 14:06:46', '2018-08-06 14:06:46', '2018-08-06 14:06:46', 'benar', NULL, NULL, NULL, 134, 52, 37, 11, '2018-08-06 00:06:46', '2018-08-06 00:06:46'),
(32, 'Soal Graph-DFS', 'ABECDFG', '2018-08-06 14:06:53', '2018-08-06 14:06:53', '2018-08-06 14:06:53', 'benar', NULL, NULL, NULL, 142, 52, 37, 10, '2018-08-06 00:06:53', '2018-08-06 00:06:53'),
(33, 'Matrix-Isian', '3582374', '2018-08-06 14:06:57', '2018-08-06 14:06:57', '2018-08-06 14:06:57', 'benar', NULL, NULL, NULL, 136, 52, 37, 11, '2018-08-06 00:06:57', '2018-08-06 00:06:57'),
(34, 'Matrix-Isian', '001202231', '2018-08-06 14:07:37', '2018-08-06 14:07:37', '2018-08-06 14:07:37', 'salah', NULL, NULL, NULL, 133, 52, 37, 11, '2018-08-06 00:07:37', '2018-08-06 00:07:37'),
(35, 'Matrix-Isian', '3582374', '2018-08-06 14:07:40', '2018-08-06 14:07:40', '2018-08-06 14:07:40', 'benar', NULL, NULL, NULL, 142, 52, 37, 11, '2018-08-06 00:07:40', '2018-08-06 00:07:40'),
(36, 'Matrix-Isian', '3254837', '2018-08-06 14:08:03', '2018-08-06 14:08:03', '2018-08-06 14:08:03', 'salah', NULL, NULL, NULL, 130, 52, 37, 11, '2018-08-06 00:08:03', '2018-08-06 00:08:03'),
(37, 'Matrix-Isian', '0012233', '2018-08-06 14:08:10', '2018-08-06 14:08:10', '2018-08-06 14:08:10', 'salah', NULL, NULL, NULL, 128, 52, 37, 11, '2018-08-06 00:08:10', '2018-08-06 00:08:10'),
(38, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:15:26', '2018-09-03 09:15:26', '2018-09-03 09:15:26', 'benar', NULL, NULL, NULL, 191, 55, 38, 12, '2018-09-02 19:15:26', '2018-09-02 19:15:26'),
(39, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:15:48', '2018-09-03 09:15:48', '2018-09-03 09:15:48', 'benar', NULL, NULL, NULL, 175, 55, 38, 12, '2018-09-02 19:15:48', '2018-09-02 19:15:48'),
(40, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:16:12', '2018-09-03 09:16:12', '2018-09-03 09:16:12', 'benar', NULL, NULL, NULL, 169, 55, 38, 12, '2018-09-02 19:16:12', '2018-09-02 19:16:12'),
(41, 'AksiSeq-NilaiData-1', '2 , 3', '2018-09-03 09:26:53', '2018-09-03 09:26:53', '2018-09-03 09:26:53', 'salah', NULL, NULL, NULL, 172, 55, 38, 12, '2018-09-02 19:16:13', '2018-09-02 19:26:53'),
(42, 'AksiSeq-NilaiData-1', 'c=1,d=7', '2018-09-03 09:17:01', '2018-09-03 09:17:01', '2018-09-03 09:17:01', 'salah', NULL, NULL, NULL, 171, 55, 38, 12, '2018-09-02 19:17:01', '2018-09-02 19:17:01'),
(43, 'AksiSeq-NilaiData-1', '1,7', '2018-09-03 09:17:25', '2018-09-03 09:17:25', '2018-09-03 09:17:25', 'salah', NULL, NULL, NULL, 187, 55, 38, 12, '2018-09-02 19:17:25', '2018-09-02 19:17:25'),
(44, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:18:07', '2018-09-03 09:18:07', '2018-09-03 09:18:07', 'benar', NULL, NULL, NULL, 185, 55, 38, 12, '2018-09-02 19:18:07', '2018-09-02 19:18:07'),
(45, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:18:56', '2018-09-03 09:18:56', '2018-09-03 09:18:56', 'benar', NULL, NULL, NULL, 192, 55, 38, 12, '2018-09-02 19:18:56', '2018-09-02 19:18:56'),
(46, 'AksiSeq-NilaiData-1', 'c=2,d=3', '2018-09-03 09:19:11', '2018-09-03 09:19:11', '2018-09-03 09:19:11', 'salah', NULL, NULL, NULL, 186, 55, 38, 12, '2018-09-02 19:19:11', '2018-09-02 19:19:11'),
(47, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:19:26', '2018-09-03 09:19:26', '2018-09-03 09:19:26', 'benar', NULL, NULL, NULL, 189, 55, 38, 12, '2018-09-02 19:19:26', '2018-09-02 19:19:26'),
(48, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:19:27', '2018-09-03 09:19:27', '2018-09-03 09:19:27', 'benar', NULL, NULL, NULL, 193, 55, 38, 12, '2018-09-02 19:19:27', '2018-09-02 19:19:27'),
(49, 'AksiSeq-NilaiData-1', '1,7', '2018-09-03 09:19:33', '2018-09-03 09:19:33', '2018-09-03 09:19:33', 'salah', NULL, NULL, NULL, 178, 55, 38, 12, '2018-09-02 19:19:33', '2018-09-02 19:19:33'),
(50, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:20:00', '2018-09-03 09:20:00', '2018-09-03 09:20:00', 'benar', NULL, NULL, NULL, 193, 55, 38, 13, '2018-09-02 19:20:00', '2018-09-02 19:20:00'),
(51, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:22:56', '2018-09-03 09:22:56', '2018-09-03 09:22:56', 'benar', NULL, NULL, NULL, 192, 55, 38, 13, '2018-09-02 19:20:06', '2018-09-02 19:22:56'),
(52, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:20:20', '2018-09-03 09:20:20', '2018-09-03 09:20:20', 'benar', NULL, NULL, NULL, 173, 55, 38, 12, '2018-09-02 19:20:20', '2018-09-02 19:20:20'),
(53, 'AksiSeq-NilaiData-1', 'c=2,d=3', '2018-09-03 09:20:45', '2018-09-03 09:20:45', '2018-09-03 09:20:45', 'salah', NULL, NULL, NULL, 184, 55, 38, 12, '2018-09-02 19:20:45', '2018-09-02 19:20:45'),
(54, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:21:30', '2018-09-03 09:21:30', '2018-09-03 09:21:30', 'benar', NULL, NULL, NULL, 186, 55, 38, 13, '2018-09-02 19:21:30', '2018-09-02 19:21:30'),
(55, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:21:30', '2018-09-03 09:21:30', '2018-09-03 09:21:30', 'benar', NULL, NULL, NULL, 186, 55, 38, 13, '2018-09-02 19:21:30', '2018-09-02 19:21:30'),
(56, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:21:32', '2018-09-03 09:21:32', '2018-09-03 09:21:32', 'benar', NULL, NULL, NULL, 175, 55, 38, 13, '2018-09-02 19:21:32', '2018-09-02 19:21:32'),
(57, 'AksiSeq-NilaiData-1', 'c=2\r\nd=3', '2018-09-03 09:21:35', '2018-09-03 09:21:35', '2018-09-03 09:21:35', 'salah', NULL, NULL, NULL, 174, 55, 38, 12, '2018-09-02 19:21:35', '2018-09-02 19:21:35'),
(58, 'AksiSeq-NilaiData-1', 'c=1\r\nd=7,0', '2018-09-03 09:21:46', '2018-09-03 09:21:46', '2018-09-03 09:21:46', 'salah', NULL, NULL, NULL, 188, 55, 38, 12, '2018-09-02 19:21:46', '2018-09-02 19:21:46'),
(59, 'Tulis Rumus-1', '2500//365', '2018-09-03 09:21:48', '2018-09-03 09:21:48', '2018-09-03 09:21:48', 'salah', NULL, NULL, NULL, 169, 55, 38, 13, '2018-09-02 19:21:48', '2018-09-02 19:21:48'),
(60, 'AksiSeq-NilaiData-1', 'c :\"2\"\r\nd :\"3\"', '2018-09-03 09:21:49', '2018-09-03 09:21:49', '2018-09-03 09:21:49', 'salah', NULL, NULL, NULL, 182, 55, 38, 12, '2018-09-02 19:21:49', '2018-09-02 19:21:49'),
(61, 'Tulis Rumus-1', '2500//365', '2018-09-03 09:21:56', '2018-09-03 09:21:56', '2018-09-03 09:21:56', 'salah', NULL, NULL, NULL, 172, 55, 38, 13, '2018-09-02 19:21:56', '2018-09-02 19:21:56'),
(62, 'AksiSeq-NilaiData-1', '3,1', '2018-09-03 09:21:59', '2018-09-03 09:21:59', '2018-09-03 09:21:59', 'salah', NULL, NULL, NULL, 180, 55, 38, 12, '2018-09-02 19:21:59', '2018-09-02 19:21:59'),
(63, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:22:35', '2018-09-03 09:22:35', '2018-09-03 09:22:35', 'benar', NULL, NULL, NULL, 170, 55, 38, 12, '2018-09-02 19:22:35', '2018-09-02 19:22:35'),
(64, 'Tulis Rumus-1', 'int(input(\"tahun\"))', '2018-09-03 09:22:40', '2018-09-03 09:22:40', '2018-09-03 09:22:40', 'salah', NULL, NULL, NULL, 187, 55, 38, 13, '2018-09-02 19:22:40', '2018-09-02 19:22:40'),
(65, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 09:22:44', '2018-09-03 09:22:44', '2018-09-03 09:22:44', 'benar', NULL, NULL, NULL, 177, 55, 38, 12, '2018-09-02 19:22:44', '2018-09-02 19:22:44'),
(66, 'AksiSeq-NilaiData-1', 'c.068d\r\nd.98', '2018-09-03 09:22:56', '2018-09-03 09:22:56', '2018-09-03 09:22:56', 'salah', NULL, NULL, NULL, 190, 55, 38, 12, '2018-09-02 19:22:56', '2018-09-02 19:22:56'),
(67, 'Tulis Rumus-1', 'hari // 365', '2018-09-03 09:23:07', '2018-09-03 09:23:07', '2018-09-03 09:23:07', 'salah', NULL, NULL, NULL, 185, 55, 38, 13, '2018-09-02 19:23:07', '2018-09-02 19:23:07'),
(68, 'Tulis Rumus-1', 'tahun=2500//365', '2018-09-03 09:23:29', '2018-09-03 09:23:29', '2018-09-03 09:23:29', 'salah', NULL, NULL, NULL, 184, 55, 38, 13, '2018-09-02 19:23:29', '2018-09-02 19:23:29'),
(69, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:23:36', '2018-09-03 09:23:36', '2018-09-03 09:23:36', 'benar', NULL, NULL, NULL, 171, 55, 38, 13, '2018-09-02 19:23:37', '2018-09-02 19:23:37'),
(70, 'Tulis Rumus-1', 'tahun=2500/360', '2018-09-03 09:23:40', '2018-09-03 09:23:40', '2018-09-03 09:23:40', 'salah', NULL, NULL, NULL, 188, 55, 38, 13, '2018-09-02 19:23:40', '2018-09-02 19:23:40'),
(71, 'Tulis Rumus-1', 'hari//365', '2018-09-03 09:23:43', '2018-09-03 09:23:43', '2018-09-03 09:23:43', 'benar', NULL, NULL, NULL, 173, 55, 38, 13, '2018-09-02 19:23:43', '2018-09-02 19:23:43'),
(72, 'Tulis Rumus-1', '2500/365', '2018-09-03 09:23:44', '2018-09-03 09:23:44', '2018-09-03 09:23:44', 'salah', NULL, NULL, NULL, 174, 55, 38, 13, '2018-09-02 19:23:44', '2018-09-02 19:23:44'),
(73, 'Tulis Rumus-1', 'umur//365', '2018-09-03 09:24:04', '2018-09-03 09:24:04', '2018-09-03 09:24:04', 'salah', NULL, NULL, NULL, 178, 55, 38, 13, '2018-09-02 19:24:04', '2018-09-02 19:24:04'),
(74, 'AksiSeq-NilaiData-1', '1,2 ,  1', '2018-09-03 09:24:10', '2018-09-03 09:24:10', '2018-09-03 09:24:10', 'salah', NULL, NULL, NULL, 179, 55, 38, 12, '2018-09-02 19:24:10', '2018-09-02 19:24:10'),
(75, 'Tulis Rumus-1', 'tahun=hari//365', '2018-09-03 09:24:11', '2018-09-03 09:24:11', '2018-09-03 09:24:11', 'salah', NULL, NULL, NULL, 189, 55, 38, 13, '2018-09-02 19:24:11', '2018-09-02 19:24:11'),
(76, 'Tulis Rumus-1', 'tahun=6 tahun', '2018-09-03 09:24:18', '2018-09-03 09:24:18', '2018-09-03 09:24:18', 'salah', NULL, NULL, NULL, 190, 55, 38, 13, '2018-09-02 19:24:18', '2018-09-02 19:24:18'),
(77, 'Tulis Rumus-1', 'int(input(\"hari\":))', '2018-09-03 09:24:50', '2018-09-03 09:24:50', '2018-09-03 09:24:50', 'salah', NULL, NULL, NULL, 191, 55, 38, 13, '2018-09-02 19:24:50', '2018-09-02 19:24:50'),
(78, 'Tulis Rumus-1', '2500/350', '2018-09-03 09:25:08', '2018-09-03 09:25:08', '2018-09-03 09:25:08', 'salah', NULL, NULL, NULL, 170, 55, 38, 13, '2018-09-02 19:25:08', '2018-09-02 19:25:08'),
(79, 'Tulis Rumus-1', '1tahun', '2018-09-03 09:25:11', '2018-09-03 09:25:11', '2018-09-03 09:25:11', 'salah', NULL, NULL, NULL, 180, 55, 38, 13, '2018-09-02 19:25:11', '2018-09-02 19:25:11'),
(80, 'Tulis Rumus-1', '2500/365', '2018-09-03 09:25:20', '2018-09-03 09:25:20', '2018-09-03 09:25:20', 'salah', NULL, NULL, NULL, 177, 55, 38, 13, '2018-09-02 19:25:20', '2018-09-02 19:25:20'),
(81, 'AksiSeq-NilaiData-1', 'c=2,d=3.00', '2018-09-03 15:22:09', '2018-09-03 15:22:09', '2018-09-03 15:22:09', 'salah', NULL, NULL, NULL, 200, 56, 38, 12, '2018-09-03 01:22:09', '2018-09-03 01:22:09'),
(82, 'AksiSeq-NilaiData-1', '2 , 3', '2018-09-03 15:22:18', '2018-09-03 15:22:18', '2018-09-03 15:22:18', 'salah', NULL, NULL, NULL, 202, 56, 38, 12, '2018-09-03 01:22:18', '2018-09-03 01:22:18'),
(83, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 15:24:11', '2018-09-03 15:24:11', '2018-09-03 15:24:11', 'benar', NULL, NULL, NULL, 204, 56, 38, 12, '2018-09-03 01:24:11', '2018-09-03 01:24:11'),
(84, 'Tulis Rumus-1', 'tahun=365//2500', '2018-09-03 15:25:12', '2018-09-03 15:25:12', '2018-09-03 15:25:12', 'salah', NULL, NULL, NULL, 200, 56, 38, 13, '2018-09-03 01:25:12', '2018-09-03 01:25:12'),
(85, 'AksiSeq-NilaiData-1', '1,3', '2018-09-03 15:26:21', '2018-09-03 15:26:21', '2018-09-03 15:26:21', 'salah', NULL, NULL, NULL, 195, 56, 38, 12, '2018-09-03 01:26:21', '2018-09-03 01:26:21'),
(86, 'Tulis Rumus-1', 'hari%365', '2018-09-03 15:26:34', '2018-09-03 15:26:34', '2018-09-03 15:26:34', 'salah', NULL, NULL, NULL, 202, 56, 38, 13, '2018-09-03 01:26:34', '2018-09-03 01:26:34'),
(87, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 15:26:44', '2018-09-03 15:26:44', '2018-09-03 15:26:44', 'benar', NULL, NULL, NULL, 212, 56, 38, 12, '2018-09-03 01:26:44', '2018-09-03 01:26:44'),
(88, 'AksiSeq-NilaiData-1', '3,2', '2018-09-03 15:26:58', '2018-09-03 15:26:58', '2018-09-03 15:26:58', 'salah', NULL, NULL, NULL, 203, 56, 38, 12, '2018-09-03 01:26:58', '2018-09-03 01:26:58'),
(89, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 15:27:12', '2018-09-03 15:27:12', '2018-09-03 15:27:12', 'benar', NULL, NULL, NULL, 207, 56, 38, 12, '2018-09-03 01:27:12', '2018-09-03 01:27:12'),
(90, 'Tulis Rumus-1', 'tahun=int(input(365*12))', '2018-09-03 15:28:22', '2018-09-03 15:28:22', '2018-09-03 15:28:22', 'salah', NULL, NULL, NULL, 196, 56, 38, 13, '2018-09-03 01:27:49', '2018-09-03 01:28:22'),
(91, 'AksiSeq-NilaiData-1', '2,3', '2018-09-03 15:27:59', '2018-09-03 15:27:59', '2018-09-03 15:27:59', 'benar', NULL, NULL, NULL, 198, 56, 38, 12, '2018-09-03 01:27:59', '2018-09-03 01:27:59'),
(92, 'AksiSeq-NilaiData-1', '7,1', '2018-09-03 15:28:00', '2018-09-03 15:28:00', '2018-09-03 15:28:00', 'salah', NULL, NULL, NULL, 194, 56, 38, 12, '2018-09-03 01:28:00', '2018-09-03 01:28:00'),
(93, 'Tulis Rumus-1', 'tahun=6tahun10bulan%365', '2018-09-03 15:28:06', '2018-09-03 15:28:06', '2018-09-03 15:28:06', 'salah', NULL, NULL, NULL, 208, 56, 38, 13, '2018-09-03 01:28:06', '2018-09-03 01:28:06'),
(98, 'AksiSeq-NilaiData-1', '1,7', '2018-09-05 11:49:27', '2018-09-05 11:49:27', '2018-09-05 11:49:27', 'salah', NULL, NULL, NULL, 152, 54, 38, 12, '2018-09-04 21:41:23', '2018-09-04 21:49:27'),
(99, 'Tulis Rumus-1', 'hari//365', '2018-09-05 11:49:49', '2018-09-05 11:49:49', '2018-09-05 11:49:49', 'benar', NULL, NULL, NULL, 152, 54, 38, 13, '2018-09-04 21:42:25', '2018-09-04 21:49:49'),
(100, 'AksiSeq-NilaiData-1', '2,3', '2018-09-05 11:44:22', '2018-09-05 11:44:22', '2018-09-05 11:44:22', 'benar', NULL, NULL, NULL, 149, 54, 38, 12, '2018-09-04 21:44:22', '2018-09-04 21:44:22'),
(101, 'Tulis Rumus-1', 'tahun=hari//365', '2018-09-05 11:45:57', '2018-09-05 11:45:57', '2018-09-05 11:45:57', 'salah', NULL, NULL, NULL, 149, 54, 38, 13, '2018-09-04 21:45:57', '2018-09-04 21:45:57'),
(102, 'AksiSeq-NilaiData-1', '2 ,  3', '2018-09-05 11:48:10', '2018-09-05 11:48:10', '2018-09-05 11:48:10', 'salah', NULL, NULL, NULL, 148, 54, 38, 12, '2018-09-04 21:48:10', '2018-09-04 21:48:10'),
(103, 'AksiSeq-NilaiData-1', '2,3', '2018-09-05 11:48:39', '2018-09-05 11:48:39', '2018-09-05 11:48:39', 'benar', NULL, NULL, NULL, 150, 54, 38, 12, '2018-09-04 21:48:39', '2018-09-04 21:48:39'),
(104, 'AksiSeq-NilaiData-1', '2,3.5', '2018-09-05 11:48:43', '2018-09-05 11:48:43', '2018-09-05 11:48:43', 'salah', NULL, NULL, NULL, 160, 54, 38, 12, '2018-09-04 21:48:43', '2018-09-04 21:48:43'),
(105, 'Tulis Rumus-1', 'tahun : hari // 365\r\nbulan : hari % 365', '2018-09-05 11:51:09', '2018-09-05 11:51:09', '2018-09-05 11:51:09', 'salah', NULL, NULL, NULL, 150, 54, 38, 13, '2018-09-04 21:51:09', '2018-09-04 21:51:09'),
(106, 'Tulis Rumus-1', 'tahun=umur/365', '2018-09-05 11:51:11', '2018-09-05 11:51:11', '2018-09-05 11:51:11', 'salah', NULL, NULL, NULL, 160, 54, 38, 13, '2018-09-04 21:51:11', '2018-09-04 21:51:11'),
(107, 'AksiSeq-NilaiData-1', '2,3', '2018-09-05 11:51:19', '2018-09-05 11:51:19', '2018-09-05 11:51:19', 'benar', NULL, NULL, NULL, 146, 54, 38, 12, '2018-09-04 21:51:19', '2018-09-04 21:51:19'),
(108, 'Tulis Rumus-1', 'tahun = umur // 365\r\nbulan = umur - (tahun * 365) // 30', '2018-09-05 11:51:29', '2018-09-05 11:51:29', '2018-09-05 11:51:29', 'salah', NULL, NULL, NULL, 148, 54, 38, 13, '2018-09-04 21:51:29', '2018-09-04 21:51:29'),
(109, 'AksiSeq-NilaiData-1', 'c = 2\r\nd = 14', '2018-09-05 11:52:46', '2018-09-05 11:52:46', '2018-09-05 11:52:46', 'salah', NULL, NULL, NULL, 158, 54, 38, 12, '2018-09-04 21:52:46', '2018-09-04 21:52:46'),
(110, 'AksiSeq-NilaiData-1', '2,7', '2018-09-05 11:53:28', '2018-09-05 11:53:28', '2018-09-05 11:53:28', 'salah', NULL, NULL, NULL, 167, 54, 38, 12, '2018-09-04 21:53:28', '2018-09-04 21:53:28'),
(111, 'AksiSeq-NilaiData-2', '0', '2018-09-07 20:33:11', '2018-09-07 20:33:11', '2018-09-07 20:33:11', 'salah', NULL, NULL, NULL, 149, 57, 39, 14, '2018-09-07 06:33:11', '2018-09-07 06:33:11'),
(112, 'Kondisional-and-or', 'true', '2018-09-07 20:34:09', '2018-09-07 20:34:09', '2018-09-07 20:34:09', 'salah', NULL, NULL, NULL, 149, 57, 39, 15, '2018-09-07 06:34:09', '2018-09-07 06:34:09'),
(113, 'TulisRumus-bulan', '(hari%365)//30', '2018-09-07 20:35:38', '2018-09-07 20:35:38', '2018-09-07 20:35:38', 'benar', NULL, NULL, NULL, 149, 57, 39, 16, '2018-09-07 06:35:38', '2018-09-07 06:35:38'),
(114, 'AksiSeq-NilaiData-2', '-43', '2018-09-07 21:26:35', '2018-09-07 21:26:35', '2018-09-07 21:26:35', 'salah', NULL, NULL, NULL, 199, 57, 39, 14, '2018-09-07 07:26:35', '2018-09-07 07:26:35'),
(115, 'Kondisional-and-or', 'True', '2018-09-07 21:29:00', '2018-09-07 21:29:00', '2018-09-07 21:29:00', 'benar', NULL, NULL, NULL, 199, 57, 39, 15, '2018-09-07 07:29:00', '2018-09-07 07:29:00'),
(116, 'AksiSeq-NilaiData-2', '0.0', '2018-09-07 21:44:16', '2018-09-07 21:44:16', '2018-09-07 21:44:16', 'salah', NULL, NULL, NULL, 152, 57, 39, 14, '2018-09-07 07:44:16', '2018-09-07 07:44:16'),
(117, 'Kondisional-and-or', 'TRUE', '2018-09-07 21:45:12', '2018-09-07 21:45:12', '2018-09-07 21:45:12', 'salah', NULL, NULL, NULL, 152, 57, 39, 15, '2018-09-07 07:45:12', '2018-09-07 07:45:12'),
(118, 'AksiSeq-NilaiData-2', '0.0', '2018-09-07 21:46:53', '2018-09-07 21:46:53', '2018-09-07 21:46:53', 'salah', NULL, NULL, NULL, 183, 57, 39, 14, '2018-09-07 07:46:53', '2018-09-07 07:46:53'),
(119, 'Kondisional-and-or', 'true', '2018-09-07 21:47:38', '2018-09-07 21:47:38', '2018-09-07 21:47:38', 'salah', NULL, NULL, NULL, 183, 57, 39, 15, '2018-09-07 07:47:38', '2018-09-07 07:47:38'),
(120, 'TulisRumus-bulan', 'Umur/30', '2018-09-07 21:48:49', '2018-09-07 21:48:49', '2018-09-07 21:48:49', 'salah', NULL, NULL, NULL, 183, 57, 39, 16, '2018-09-07 07:48:49', '2018-09-07 07:48:49'),
(121, 'TulisRumus-bulan', 'hari%365//30', '2018-09-07 21:49:15', '2018-09-07 21:49:15', '2018-09-07 21:49:15', 'salah', NULL, NULL, NULL, 152, 57, 39, 16, '2018-09-07 07:49:15', '2018-09-07 07:49:15'),
(122, 'AksiSeq-NilaiData-2', '0', '2018-09-07 21:54:51', '2018-09-07 21:54:51', '2018-09-07 21:54:51', 'salah', NULL, NULL, NULL, 151, 57, 39, 14, '2018-09-07 07:54:51', '2018-09-07 07:54:51'),
(123, 'AksiSeq-NilaiData-2', '0', '2018-09-07 21:55:31', '2018-09-07 21:55:31', '2018-09-07 21:55:31', 'salah', NULL, NULL, NULL, 193, 57, 39, 14, '2018-09-07 07:55:31', '2018-09-07 07:55:31'),
(124, 'Kondisional-and-or', 'True', '2018-09-07 21:55:40', '2018-09-07 21:55:40', '2018-09-07 21:55:40', 'benar', NULL, NULL, NULL, 151, 57, 39, 15, '2018-09-07 07:55:40', '2018-09-07 07:55:40'),
(125, 'Kondisional-and-or', 'true', '2018-09-07 21:57:17', '2018-09-07 21:57:17', '2018-09-07 21:57:17', 'salah', NULL, NULL, NULL, 193, 57, 39, 15, '2018-09-07 07:57:17', '2018-09-07 07:57:17'),
(126, 'TulisRumus-bulan', '(hari%365)//30', '2018-09-07 21:59:34', '2018-09-07 21:59:34', '2018-09-07 21:59:34', 'benar', NULL, NULL, NULL, 193, 57, 39, 16, '2018-09-07 07:59:34', '2018-09-07 07:59:34'),
(127, 'AksiSeq-NilaiData-2', '0', '2018-09-07 22:00:32', '2018-09-07 22:00:32', '2018-09-07 22:00:32', 'salah', NULL, NULL, NULL, 147, 57, 39, 14, '2018-09-07 08:00:32', '2018-09-07 08:00:32'),
(128, 'Kondisional-and-or', 'true', '2018-09-07 22:02:02', '2018-09-07 22:02:02', '2018-09-07 22:02:02', 'salah', NULL, NULL, NULL, 147, 57, 39, 15, '2018-09-07 08:02:02', '2018-09-07 08:02:02'),
(129, 'AksiSeq-NilaiData-2', 'o.o', '2018-09-07 22:02:46', '2018-09-07 22:02:46', '2018-09-07 22:02:46', 'salah', NULL, NULL, NULL, 172, 57, 39, 14, '2018-09-07 08:02:46', '2018-09-07 08:02:46'),
(130, 'TulisRumus-bulan', 'bulan=hari%365//30', '2018-09-07 22:07:13', '2018-09-07 22:07:13', '2018-09-07 22:07:13', 'salah', NULL, NULL, NULL, 167, 57, 39, 16, '2018-09-07 08:07:13', '2018-09-07 08:07:13'),
(131, 'Kondisional-and-or', 'True', '2018-09-07 22:07:43', '2018-09-07 22:07:43', '2018-09-07 22:07:43', 'benar', NULL, NULL, NULL, 167, 57, 39, 15, '2018-09-07 08:07:43', '2018-09-07 08:07:43'),
(132, 'AksiSeq-NilaiData-2', '0', '2018-09-07 22:09:09', '2018-09-07 22:09:09', '2018-09-07 22:09:09', 'salah', NULL, NULL, NULL, 167, 57, 39, 14, '2018-09-07 08:09:09', '2018-09-07 08:09:09'),
(133, 'AksiSeq-NilaiData-2', '0.0', '2018-09-07 22:18:06', '2018-09-07 22:18:06', '2018-09-07 22:18:06', 'salah', NULL, NULL, NULL, 189, 57, 39, 14, '2018-09-07 08:18:06', '2018-09-07 08:18:06'),
(134, 'Kondisional-and-or', 'True', '2018-09-07 22:18:11', '2018-09-07 22:18:11', '2018-09-07 22:18:11', 'benar', NULL, NULL, NULL, 189, 57, 39, 15, '2018-09-07 08:18:11', '2018-09-07 08:18:11'),
(135, 'TulisRumus-bulan', 'bulan=hari%365//30', '2018-09-07 22:18:42', '2018-09-07 22:18:42', '2018-09-07 22:18:42', 'salah', NULL, NULL, NULL, 189, 57, 39, 16, '2018-09-07 08:18:42', '2018-09-07 08:18:42'),
(136, 'AksiSeq-NilaiData-2', '0.14285714', '2018-09-07 22:19:19', '2018-09-07 22:19:19', '2018-09-07 22:19:19', 'salah', NULL, NULL, NULL, 146, 57, 39, 14, '2018-09-07 08:19:19', '2018-09-07 08:19:19'),
(137, 'Kondisional-and-or', 'TRUE', '2018-09-07 22:20:09', '2018-09-07 22:20:09', '2018-09-07 22:20:09', 'salah', NULL, NULL, NULL, 146, 57, 39, 15, '2018-09-07 08:20:09', '2018-09-07 08:20:09'),
(138, 'AksiSeq-NilaiData-2', '0,0', '2018-09-07 22:24:03', '2018-09-07 22:24:03', '2018-09-07 22:24:03', 'salah', NULL, NULL, NULL, 204, 57, 39, 14, '2018-09-07 08:24:03', '2018-09-07 08:24:03'),
(139, 'Kondisional-and-or', 'True', '2018-09-07 22:24:35', '2018-09-07 22:24:35', '2018-09-07 22:24:35', 'benar', NULL, NULL, NULL, 204, 57, 39, 15, '2018-09-07 08:24:35', '2018-09-07 08:24:35'),
(140, 'TulisRumus-bulan', 'bulan=(hari/30)\r\ntahun=(hari%365)\r\nprint(bulan,tahun)', '2018-09-07 22:25:03', '2018-09-07 22:25:03', '2018-09-07 22:25:03', 'salah', NULL, NULL, NULL, 146, 57, 39, 16, '2018-09-07 08:25:03', '2018-09-07 08:25:03'),
(141, 'TulisRumus-bulan', 'bulan=hari%365//30', '2018-09-07 22:25:27', '2018-09-07 22:25:27', '2018-09-07 22:25:27', 'salah', NULL, NULL, NULL, 204, 57, 39, 16, '2018-09-07 08:25:27', '2018-09-07 08:25:27'),
(142, 'AksiSeq-NilaiData-2', '0', '2018-09-07 22:38:46', '2018-09-07 22:38:46', '2018-09-07 22:38:46', 'salah', NULL, NULL, NULL, 145, 57, 39, 14, '2018-09-07 08:38:46', '2018-09-07 08:38:46'),
(143, 'TulisRumus-bulan', 'nama=int(input(\"\")\r\numur=int(input(\"\")\r\ntahun=umur//365\r\ntahun1=umur%365\r\nbulan=tahun1//30\r\nbulan1=tahun1%30\r\nprint(nama,\"berumur\",tahun1,\"tahun\",bulan1,\"bulan\")', '2018-09-07 22:46:08', '2018-09-07 22:46:08', '2018-09-07 22:46:08', 'salah', NULL, NULL, NULL, 145, 57, 39, 16, '2018-09-07 08:46:08', '2018-09-07 08:46:08'),
(144, 'Kondisional-and-or', 'false', '2018-09-07 22:46:34', '2018-09-07 22:46:34', '2018-09-07 22:46:34', 'salah', NULL, NULL, NULL, 145, 57, 39, 15, '2018-09-07 08:46:34', '2018-09-07 08:46:34'),
(145, 'IF-3', 'a<=b', '2018-09-10 09:23:04', '2018-09-10 09:23:04', '2018-09-10 09:23:04', 'benar', NULL, NULL, NULL, 192, 58, 40, 17, '2018-09-09 19:23:04', '2018-09-09 19:23:04'),
(146, 'IF-3', 'a <=b', '2018-09-10 09:23:14', '2018-09-10 09:23:14', '2018-09-10 09:23:14', 'salah', NULL, NULL, NULL, 189, 58, 40, 17, '2018-09-09 19:23:14', '2018-09-09 19:23:14'),
(147, 'IF-3', 'if(a<=b)', '2018-09-10 09:24:02', '2018-09-10 09:24:02', '2018-09-10 09:24:02', 'salah', NULL, NULL, NULL, 184, 58, 40, 17, '2018-09-09 19:24:02', '2018-09-09 19:24:02'),
(148, 'IF-3', 'a<=b', '2018-09-10 09:24:37', '2018-09-10 09:24:37', '2018-09-10 09:24:37', 'benar', NULL, NULL, NULL, 193, 58, 40, 17, '2018-09-09 19:24:37', '2018-09-09 19:24:37'),
(149, 'IF-3', 'a<=b', '2018-09-10 09:25:03', '2018-09-10 09:25:03', '2018-09-10 09:25:03', 'benar', NULL, NULL, NULL, 175, 58, 40, 17, '2018-09-09 19:25:03', '2018-09-09 19:25:03'),
(150, 'IF-3', 'a<b', '2018-09-10 09:25:56', '2018-09-10 09:25:56', '2018-09-10 09:25:56', 'salah', NULL, NULL, NULL, 170, 58, 40, 17, '2018-09-09 19:25:56', '2018-09-09 19:25:56'),
(151, 'IF-3', 'a==b', '2018-09-10 09:26:22', '2018-09-10 09:26:22', '2018-09-10 09:26:22', 'salah', NULL, NULL, NULL, 169, 58, 40, 17, '2018-09-09 19:26:22', '2018-09-09 19:26:22'),
(152, 'IF-3', 'a<=b', '2018-09-10 09:26:23', '2018-09-10 09:26:23', '2018-09-10 09:26:23', 'benar', NULL, NULL, NULL, 177, 58, 40, 17, '2018-09-09 19:26:23', '2018-09-09 19:26:23'),
(153, 'IF-3', 'b<=a', '2018-09-10 09:26:32', '2018-09-10 09:26:32', '2018-09-10 09:26:32', 'salah', NULL, NULL, NULL, 186, 58, 40, 17, '2018-09-09 19:26:32', '2018-09-09 19:26:32'),
(154, 'IF-3', 'a==b', '2018-09-10 09:26:34', '2018-09-10 09:26:34', '2018-09-10 09:26:34', 'salah', NULL, NULL, NULL, 178, 58, 40, 17, '2018-09-09 19:26:34', '2018-09-09 19:26:34'),
(155, 'IF-3', 'if(3>=2):', '2018-09-10 09:26:44', '2018-09-10 09:26:44', '2018-09-10 09:26:44', 'salah', NULL, NULL, NULL, 182, 58, 40, 17, '2018-09-09 19:26:44', '2018-09-09 19:26:44'),
(156, 'IF-3', 'a<=b', '2018-09-10 09:26:46', '2018-09-10 09:26:46', '2018-09-10 09:26:46', 'benar', NULL, NULL, NULL, 173, 58, 40, 17, '2018-09-09 19:26:46', '2018-09-09 19:26:46'),
(157, 'IF-3', 'a+b=1', '2018-09-10 09:27:43', '2018-09-10 09:27:43', '2018-09-10 09:27:43', 'salah', NULL, NULL, NULL, 190, 58, 40, 17, '2018-09-09 19:27:03', '2018-09-09 19:27:43'),
(158, 'IF-3', 'a<=b', '2018-09-10 09:27:47', '2018-09-10 09:27:47', '2018-09-10 09:27:47', 'benar', NULL, NULL, NULL, 180, 58, 40, 17, '2018-09-09 19:27:14', '2018-09-09 19:27:47'),
(159, 'IF-3', 'a>=b', '2018-09-10 09:27:21', '2018-09-10 09:27:21', '2018-09-10 09:27:21', 'salah', NULL, NULL, NULL, 172, 58, 40, 17, '2018-09-09 19:27:21', '2018-09-09 19:27:21'),
(160, 'IF-3', 'a<b', '2018-09-10 09:28:20', '2018-09-10 09:28:20', '2018-09-10 09:28:20', 'salah', NULL, NULL, NULL, 183, 58, 40, 17, '2018-09-09 19:28:20', '2018-09-09 19:28:20'),
(161, 'IF-3', 'if(a==b)', '2018-09-10 09:28:25', '2018-09-10 09:28:25', '2018-09-10 09:28:25', 'salah', NULL, NULL, NULL, 188, 58, 40, 17, '2018-09-09 19:28:25', '2018-09-09 19:28:25'),
(162, 'IF-3', 'a>=b', '2018-09-10 09:28:34', '2018-09-10 09:28:34', '2018-09-10 09:28:34', 'salah', NULL, NULL, NULL, 174, 58, 40, 17, '2018-09-09 19:28:34', '2018-09-09 19:28:34'),
(163, 'IF-3', 'if(a==b)\r\nprint(\"a\")', '2018-09-10 09:28:36', '2018-09-10 09:28:36', '2018-09-10 09:28:36', 'salah', NULL, NULL, NULL, 179, 58, 40, 17, '2018-09-09 19:28:36', '2018-09-09 19:28:36'),
(164, 'IF-3', 'a<b', '2018-09-10 09:30:50', '2018-09-10 09:30:50', '2018-09-10 09:30:50', 'salah', NULL, NULL, NULL, 185, 58, 40, 17, '2018-09-09 19:30:50', '2018-09-09 19:30:50'),
(165, 'IF-3', 'a<b', '2018-09-10 17:17:30', '2018-09-10 17:17:30', '2018-09-10 17:17:30', 'salah', NULL, NULL, NULL, 195, 59, 40, 17, '2018-09-10 03:17:11', '2018-09-10 03:17:30'),
(166, 'IF-3', 'a<=b', '2018-09-10 17:18:19', '2018-09-10 17:18:19', '2018-09-10 17:18:19', 'benar', NULL, NULL, NULL, 198, 59, 40, 17, '2018-09-10 03:18:19', '2018-09-10 03:18:19'),
(167, 'IF-3', 'a<=b', '2018-09-10 17:22:22', '2018-09-10 17:22:22', '2018-09-10 17:22:22', 'benar', NULL, NULL, NULL, 212, 59, 40, 17, '2018-09-10 03:18:21', '2018-09-10 03:22:22'),
(168, 'IF-3', 'if(a<b):', '2018-09-10 17:19:25', '2018-09-10 17:19:25', '2018-09-10 17:19:25', 'salah', NULL, NULL, NULL, 204, 59, 40, 17, '2018-09-10 03:19:25', '2018-09-10 03:19:25'),
(169, 'IF-3', 'a<=b', '2018-09-10 17:20:43', '2018-09-10 17:20:43', '2018-09-10 17:20:43', 'benar', NULL, NULL, NULL, 200, 59, 40, 17, '2018-09-10 03:20:43', '2018-09-10 03:20:43'),
(170, 'IF-3', 'a<=b', '2018-09-10 17:23:19', '2018-09-10 17:23:19', '2018-09-10 17:23:19', 'benar', NULL, NULL, NULL, 196, 59, 40, 17, '2018-09-10 03:21:01', '2018-09-10 03:23:19'),
(171, 'IF-3', 'if(a==b)', '2018-09-10 17:24:28', '2018-09-10 17:24:28', '2018-09-10 17:24:28', 'salah', NULL, NULL, NULL, 194, 59, 40, 17, '2018-09-10 03:21:05', '2018-09-10 03:24:28'),
(172, 'IF-3', 'if(a<=b):', '2018-09-10 17:25:51', '2018-09-10 17:25:51', '2018-09-10 17:25:51', 'salah', NULL, NULL, NULL, 208, 59, 40, 17, '2018-09-10 03:21:38', '2018-09-10 03:25:51'),
(173, 'IF-3', 'a<=b', '2018-09-10 17:21:55', '2018-09-10 17:21:55', '2018-09-10 17:21:55', 'benar', NULL, NULL, NULL, 207, 59, 40, 17, '2018-09-10 03:21:55', '2018-09-10 03:21:55'),
(174, 'IF-3', 'a<=b', '2018-09-10 17:22:11', '2018-09-10 17:22:11', '2018-09-10 17:22:11', 'benar', NULL, NULL, NULL, 203, 59, 40, 17, '2018-09-10 03:22:11', '2018-09-10 03:22:11'),
(175, 'IF-3', 'a<=b', '2018-09-10 17:24:31', '2018-09-10 17:24:31', '2018-09-10 17:24:31', 'benar', NULL, NULL, NULL, 201, 59, 40, 17, '2018-09-10 03:24:31', '2018-09-10 03:24:31'),
(176, 'IF-3', 'if (a==b)', '2018-09-10 17:24:35', '2018-09-10 17:24:35', '2018-09-10 17:24:35', 'salah', NULL, NULL, NULL, 197, 59, 40, 17, '2018-09-10 03:24:35', '2018-09-10 03:24:35'),
(177, 'IF-3', 'a>=b', '2018-09-10 17:25:15', '2018-09-10 17:25:15', '2018-09-10 17:25:15', 'salah', NULL, NULL, NULL, 202, 59, 40, 17, '2018-09-10 03:25:15', '2018-09-10 03:25:15'),
(178, 'IF-3', 'a<=b', '2018-09-12 11:30:49', '2018-09-12 11:30:49', '2018-09-12 11:30:49', 'benar', NULL, NULL, NULL, 152, 60, 40, 17, '2018-09-11 21:25:18', '2018-09-11 21:30:49'),
(179, 'IF-3', 'a<=b', '2018-09-12 11:26:52', '2018-09-12 11:26:52', '2018-09-12 11:26:52', 'benar', NULL, NULL, NULL, 149, 60, 40, 17, '2018-09-11 21:26:52', '2018-09-11 21:26:52'),
(180, 'IF-3', 'a==b', '2018-09-12 11:28:14', '2018-09-12 11:28:14', '2018-09-12 11:28:14', 'salah', NULL, NULL, NULL, 163, 60, 40, 17, '2018-09-11 21:28:14', '2018-09-11 21:28:14'),
(181, 'IF-3', 'a<=b', '2018-09-12 11:30:11', '2018-09-12 11:30:11', '2018-09-12 11:30:11', 'benar', NULL, NULL, NULL, 148, 60, 40, 17, '2018-09-11 21:30:11', '2018-09-11 21:30:11'),
(182, 'IF-3', 'a<=b', '2018-09-12 11:30:14', '2018-09-12 11:30:14', '2018-09-12 11:30:14', 'benar', NULL, NULL, NULL, 151, 60, 40, 17, '2018-09-11 21:30:14', '2018-09-11 21:30:14'),
(183, 'IF-3', 'a==b', '2018-09-12 11:31:17', '2018-09-12 11:31:17', '2018-09-12 11:31:17', 'salah', NULL, NULL, NULL, 144, 60, 40, 17, '2018-09-11 21:31:17', '2018-09-11 21:31:17'),
(184, 'IF-3', 'a==b', '2018-09-12 11:32:36', '2018-09-12 11:32:36', '2018-09-12 11:32:36', 'salah', NULL, NULL, NULL, 166, 60, 40, 17, '2018-09-11 21:32:36', '2018-09-11 21:32:36'),
(185, 'IF-3', 'a<=b', '2018-09-12 11:32:54', '2018-09-12 11:32:54', '2018-09-12 11:32:54', 'benar', NULL, NULL, NULL, 150, 60, 40, 17, '2018-09-11 21:32:54', '2018-09-11 21:32:54'),
(186, 'IF-3', 'a<=b', '2018-09-12 11:33:33', '2018-09-12 11:33:33', '2018-09-12 11:33:33', 'benar', NULL, NULL, NULL, 147, 60, 40, 17, '2018-09-11 21:33:33', '2018-09-11 21:33:33'),
(187, 'IF-3', 'a<=b', '2018-09-12 11:33:53', '2018-09-12 11:33:53', '2018-09-12 11:33:53', 'benar', NULL, NULL, NULL, 160, 60, 40, 17, '2018-09-11 21:33:53', '2018-09-11 21:33:53'),
(188, 'IF-3', 'a>=b==0', '2018-09-12 11:34:24', '2018-09-12 11:34:24', '2018-09-12 11:34:24', 'salah', NULL, NULL, NULL, 145, 60, 40, 17, '2018-09-11 21:34:24', '2018-09-11 21:34:24'),
(189, 'IF-3', 'a == b', '2018-09-12 11:34:37', '2018-09-12 11:34:37', '2018-09-12 11:34:37', 'salah', NULL, NULL, NULL, 165, 60, 40, 17, '2018-09-11 21:34:37', '2018-09-11 21:34:37'),
(190, 'IF-3', 'a=b', '2018-09-12 11:35:06', '2018-09-12 11:35:06', '2018-09-12 11:35:06', 'salah', NULL, NULL, NULL, 154, 60, 40, 17, '2018-09-11 21:35:06', '2018-09-11 21:35:06'),
(191, 'IF-3', 'a<=b', '2018-09-12 11:35:17', '2018-09-12 11:35:17', '2018-09-12 11:35:17', 'benar', NULL, NULL, NULL, 153, 60, 40, 17, '2018-09-11 21:35:17', '2018-09-11 21:35:17'),
(192, 'IF-3', 'if (a >= b):\r\n    b = b+2\r\nelse:\r\n    a = a-3\r\nprint(a,b)', '2018-09-12 11:35:57', '2018-09-12 11:35:57', '2018-09-12 11:35:57', 'salah', NULL, NULL, NULL, 161, 60, 40, 17, '2018-09-11 21:35:57', '2018-09-11 21:35:57'),
(193, 'IF-3', 'a==b', '2018-09-12 11:36:44', '2018-09-12 11:36:44', '2018-09-12 11:36:44', 'salah', NULL, NULL, NULL, 146, 60, 40, 17, '2018-09-11 21:36:44', '2018-09-11 21:36:44'),
(194, 'IF-3', 'a<=b', '2018-09-12 11:38:21', '2018-09-12 11:38:21', '2018-09-12 11:38:21', 'benar', NULL, NULL, NULL, 167, 60, 40, 17, '2018-09-11 21:38:21', '2018-09-11 21:38:21'),
(195, 'IF-3', 'a<=b', '2018-09-12 11:38:39', '2018-09-12 11:38:39', '2018-09-12 11:38:39', 'benar', NULL, NULL, NULL, 155, 60, 40, 17, '2018-09-11 21:38:39', '2018-09-11 21:38:39'),
(196, 'AksiSeq-NilaiData-2', '0', '2018-09-13 12:47:30', '2018-09-13 12:47:30', '2018-09-13 12:47:30', 'salah', NULL, NULL, NULL, 146, 61, 39, 14, '2018-09-12 22:47:30', '2018-09-12 22:47:30'),
(197, 'Kondisional-and-or', 'TRUE', '2018-09-13 12:48:26', '2018-09-13 12:48:26', '2018-09-13 12:48:26', 'salah', NULL, NULL, NULL, 146, 61, 39, 15, '2018-09-12 22:48:26', '2018-09-12 22:48:26'),
(198, 'TulisRumus-bulan', 'bulan=hari/30', '2018-09-13 12:49:47', '2018-09-13 12:49:47', '2018-09-13 12:49:47', 'salah', NULL, NULL, NULL, 146, 61, 39, 16, '2018-09-12 22:49:47', '2018-09-12 22:49:47'),
(199, 'AksiSeq-NilaiData-2', '0.375', '2018-09-13 13:31:21', '2018-09-13 13:31:21', '2018-09-13 13:31:21', 'salah', NULL, NULL, NULL, 175, 61, 39, 14, '2018-09-12 23:31:21', '2018-09-12 23:31:21'),
(200, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 13:43:54', '2018-09-13 13:43:54', '2018-09-13 13:43:54', 'salah', NULL, NULL, NULL, 192, 61, 39, 14, '2018-09-12 23:43:54', '2018-09-12 23:43:54'),
(201, 'Kondisional-and-or', 'True', '2018-09-13 13:46:59', '2018-09-13 13:46:59', '2018-09-13 13:46:59', 'benar', NULL, NULL, NULL, 192, 61, 39, 15, '2018-09-12 23:46:59', '2018-09-12 23:46:59'),
(202, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 13:48:04', '2018-09-13 13:48:04', '2018-09-13 13:48:04', 'salah', NULL, NULL, NULL, 149, 61, 39, 14, '2018-09-12 23:48:04', '2018-09-12 23:48:04'),
(203, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 13:48:56', '2018-09-13 13:48:56', '2018-09-13 13:48:56', 'salah', NULL, NULL, NULL, 193, 61, 39, 14, '2018-09-12 23:48:56', '2018-09-12 23:48:56'),
(204, 'TulisRumus-bulan', 'bulan=hari//30', '2018-09-13 13:49:05', '2018-09-13 13:49:05', '2018-09-13 13:49:05', 'salah', NULL, NULL, NULL, 192, 61, 39, 16, '2018-09-12 23:49:05', '2018-09-12 23:49:05'),
(205, 'AksiSeq-NilaiData-2', '-1', '2018-09-13 13:49:15', '2018-09-13 13:49:15', '2018-09-13 13:49:15', 'salah', NULL, NULL, NULL, 154, 61, 39, 14, '2018-09-12 23:49:15', '2018-09-12 23:49:15'),
(206, 'Kondisional-and-or', 'true', '2018-09-13 13:49:30', '2018-09-13 13:49:30', '2018-09-13 13:49:30', 'salah', NULL, NULL, NULL, 193, 61, 39, 15, '2018-09-12 23:49:30', '2018-09-12 23:49:30'),
(207, 'Kondisional-and-or', 'true', '2018-09-13 13:50:29', '2018-09-13 13:50:29', '2018-09-13 13:50:29', 'salah', NULL, NULL, NULL, 149, 61, 39, 15, '2018-09-12 23:50:29', '2018-09-12 23:50:29'),
(208, 'TulisRumus-bulan', '(hari%365)//30', '2018-09-13 13:50:49', '2018-09-13 13:50:49', '2018-09-13 13:50:49', 'benar', NULL, NULL, NULL, 193, 61, 39, 16, '2018-09-12 23:50:49', '2018-09-12 23:50:49'),
(209, 'TulisRumus-bulan', '(hari%365)//30', '2018-09-13 13:51:21', '2018-09-13 13:51:21', '2018-09-13 13:51:21', 'benar', NULL, NULL, NULL, 149, 61, 39, 16, '2018-09-12 23:51:21', '2018-09-12 23:51:21'),
(210, 'TulisRumus-bulan', 'bulan=hari/30', '2018-09-13 13:53:31', '2018-09-13 13:53:31', '2018-09-13 13:53:31', 'salah', NULL, NULL, NULL, 154, 61, 39, 16, '2018-09-12 23:53:31', '2018-09-12 23:53:31'),
(211, 'Kondisional-and-or', 'x=-1', '2018-09-13 13:54:15', '2018-09-13 13:54:15', '2018-09-13 13:54:15', 'salah', NULL, NULL, NULL, 154, 61, 39, 15, '2018-09-12 23:54:15', '2018-09-12 23:54:15'),
(212, 'AksiSeq-NilaiData-2', '-43', '2018-09-13 13:55:10', '2018-09-13 13:55:10', '2018-09-13 13:55:10', 'salah', NULL, NULL, NULL, 166, 61, 39, 14, '2018-09-12 23:55:10', '2018-09-12 23:55:10'),
(213, 'AksiSeq-NilaiData-2', 'Nilai e: 0', '2018-09-13 13:55:26', '2018-09-13 13:55:26', '2018-09-13 13:55:26', 'salah', NULL, NULL, NULL, 183, 61, 39, 14, '2018-09-12 23:55:26', '2018-09-12 23:55:26'),
(214, 'AksiSeq-NilaiData-2', '0', '2018-09-13 13:56:43', '2018-09-13 13:56:43', '2018-09-13 13:56:43', 'salah', NULL, NULL, NULL, 169, 61, 39, 14, '2018-09-12 23:56:43', '2018-09-12 23:56:43'),
(215, 'AksiSeq-NilaiData-2', '1', '2018-09-13 13:56:49', '2018-09-13 13:56:49', '2018-09-13 13:56:49', 'salah', NULL, NULL, NULL, 155, 61, 39, 14, '2018-09-12 23:56:49', '2018-09-12 23:56:49'),
(216, 'Kondisional-and-or', 'true', '2018-09-13 13:57:03', '2018-09-13 13:57:03', '2018-09-13 13:57:03', 'salah', NULL, NULL, NULL, 166, 61, 39, 15, '2018-09-12 23:57:03', '2018-09-12 23:57:03'),
(217, 'AksiSeq-NilaiData-2', '0', '2018-09-13 13:57:14', '2018-09-13 13:57:14', '2018-09-13 13:57:14', 'salah', NULL, NULL, NULL, 187, 61, 39, 14, '2018-09-12 23:57:14', '2018-09-12 23:57:14'),
(218, 'AksiSeq-NilaiData-2', '0', '2018-09-13 13:57:24', '2018-09-13 13:57:24', '2018-09-13 13:57:24', 'salah', NULL, NULL, NULL, 165, 61, 39, 14, '2018-09-12 23:57:24', '2018-09-12 23:57:24'),
(219, 'Kondisional-and-or', 'false or true', '2018-09-13 13:57:40', '2018-09-13 13:57:40', '2018-09-13 13:57:40', 'salah', NULL, NULL, NULL, 183, 61, 39, 15, '2018-09-12 23:57:40', '2018-09-12 23:57:40'),
(220, 'Kondisional-and-or', 'true', '2018-09-13 13:58:11', '2018-09-13 13:58:11', '2018-09-13 13:58:11', 'salah', NULL, NULL, NULL, 169, 61, 39, 15, '2018-09-12 23:58:11', '2018-09-12 23:58:11'),
(221, 'Kondisional-and-or', 'False', '2018-09-13 13:58:19', '2018-09-13 13:58:19', '2018-09-13 13:58:19', 'salah', NULL, NULL, NULL, 155, 61, 39, 15, '2018-09-12 23:58:19', '2018-09-12 23:58:19'),
(222, 'Kondisional-and-or', '17', '2018-09-13 13:58:28', '2018-09-13 13:58:28', '2018-09-13 13:58:28', 'salah', NULL, NULL, NULL, 165, 61, 39, 15, '2018-09-12 23:58:28', '2018-09-12 23:58:28'),
(223, 'TulisRumus-bulan', 'bulan=hari//30', '2018-09-13 13:58:37', '2018-09-13 13:58:37', '2018-09-13 13:58:37', 'salah', NULL, NULL, NULL, 183, 61, 39, 16, '2018-09-12 23:58:37', '2018-09-12 23:58:37'),
(224, 'Kondisional-and-or', 'false', '2018-09-13 13:58:42', '2018-09-13 13:58:42', '2018-09-13 13:58:42', 'salah', NULL, NULL, NULL, 187, 61, 39, 15, '2018-09-12 23:58:42', '2018-09-12 23:58:42'),
(225, 'TulisRumus-bulan', '12', '2018-09-13 13:58:42', '2018-09-13 13:58:42', '2018-09-13 13:58:42', 'salah', NULL, NULL, NULL, 165, 61, 39, 16, '2018-09-12 23:58:42', '2018-09-12 23:58:42'),
(226, 'TulisRumus-bulan', 'hari//30', '2018-09-13 13:59:57', '2018-09-13 13:59:57', '2018-09-13 13:59:57', 'salah', NULL, NULL, NULL, 155, 61, 39, 16, '2018-09-12 23:59:57', '2018-09-12 23:59:57'),
(227, 'TulisRumus-bulan', 'hari//30', '2018-09-13 14:00:33', '2018-09-13 14:00:33', '2018-09-13 14:00:33', 'salah', NULL, NULL, NULL, 187, 61, 39, 16, '2018-09-13 00:00:33', '2018-09-13 00:00:33'),
(228, 'AksiSeq-NilaiData-2', '1', '2018-09-13 14:00:35', '2018-09-13 14:00:35', '2018-09-13 14:00:35', 'salah', NULL, NULL, NULL, 173, 61, 39, 14, '2018-09-13 00:00:35', '2018-09-13 00:00:35'),
(229, 'AksiSeq-NilaiData-2', '1', '2018-09-13 14:00:37', '2018-09-13 14:00:37', '2018-09-13 14:00:37', 'salah', NULL, NULL, NULL, 171, 61, 39, 14, '2018-09-13 00:00:37', '2018-09-13 00:00:37'),
(230, 'Kondisional-and-or', 'true', '2018-09-13 14:01:18', '2018-09-13 14:01:18', '2018-09-13 14:01:18', 'salah', NULL, NULL, NULL, 173, 61, 39, 15, '2018-09-13 00:01:18', '2018-09-13 00:01:18'),
(231, 'Kondisional-and-or', 'True', '2018-09-13 14:01:24', '2018-09-13 14:01:24', '2018-09-13 14:01:24', 'benar', NULL, NULL, NULL, 171, 61, 39, 15, '2018-09-13 00:01:24', '2018-09-13 00:01:24'),
(232, 'AksiSeq-NilaiData-2', '-43', '2018-09-13 14:02:34', '2018-09-13 14:02:34', '2018-09-13 14:02:34', 'salah', NULL, NULL, NULL, 178, 61, 39, 14, '2018-09-13 00:02:35', '2018-09-13 00:02:35'),
(233, 'TulisRumus-bulan', 'hari/30', '2018-09-13 14:02:42', '2018-09-13 14:02:42', '2018-09-13 14:02:42', 'salah', NULL, NULL, NULL, 173, 61, 39, 16, '2018-09-13 00:02:42', '2018-09-13 00:02:42'),
(234, 'TulisRumus-bulan', 'hari/30', '2018-09-13 14:02:51', '2018-09-13 14:02:51', '2018-09-13 14:02:51', 'salah', NULL, NULL, NULL, 171, 61, 39, 16, '2018-09-13 00:02:51', '2018-09-13 00:02:51'),
(235, 'AksiSeq-NilaiData-2', '-1,125', '2018-09-13 14:02:59', '2018-09-13 14:02:59', '2018-09-13 14:02:59', 'salah', NULL, NULL, NULL, 177, 61, 39, 14, '2018-09-13 00:02:59', '2018-09-13 00:02:59'),
(236, 'TulisRumus-bulan', 'umur/3600', '2018-09-13 14:04:40', '2018-09-13 14:04:40', '2018-09-13 14:04:40', 'salah', NULL, NULL, NULL, 178, 61, 39, 16, '2018-09-13 00:04:40', '2018-09-13 00:04:40'),
(237, 'Kondisional-and-or', 'TRUE', '2018-09-13 14:04:42', '2018-09-13 14:04:42', '2018-09-13 14:04:42', 'salah', NULL, NULL, NULL, 177, 61, 39, 15, '2018-09-13 00:04:42', '2018-09-13 00:04:42'),
(238, 'TulisRumus-bulan', 'int(hari/30)', '2018-09-13 14:06:36', '2018-09-13 14:06:36', '2018-09-13 14:06:36', 'salah', NULL, NULL, NULL, 177, 61, 39, 16, '2018-09-13 00:06:36', '2018-09-13 00:06:36'),
(239, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 14:27:13', '2018-09-13 14:27:13', '2018-09-13 14:27:13', 'salah', NULL, NULL, NULL, 186, 61, 39, 14, '2018-09-13 00:27:13', '2018-09-13 00:27:13'),
(240, 'Kondisional-and-or', '((7<=5)and(\'a\'==\'x\'))or((7>3)and(5+3>7))', '2018-09-13 14:29:27', '2018-09-13 14:29:27', '2018-09-13 14:29:27', 'salah', NULL, NULL, NULL, 186, 61, 39, 15, '2018-09-13 00:29:27', '2018-09-13 00:29:27'),
(241, 'TulisRumus-bulan', 'umur//30', '2018-09-13 14:32:46', '2018-09-13 14:32:46', '2018-09-13 14:32:46', 'salah', NULL, NULL, NULL, 186, 61, 39, 16, '2018-09-13 00:32:46', '2018-09-13 00:32:46'),
(242, 'AksiSeq-NilaiData-2', '0,0', '2018-09-13 15:28:33', '2018-09-13 15:28:33', '2018-09-13 15:28:33', 'salah', NULL, NULL, NULL, 204, 61, 39, 14, '2018-09-13 01:28:33', '2018-09-13 01:28:33'),
(243, 'Kondisional-and-or', 'False', '2018-09-13 15:29:46', '2018-09-13 15:29:46', '2018-09-13 15:29:46', 'salah', NULL, NULL, NULL, 204, 61, 39, 15, '2018-09-13 01:29:46', '2018-09-13 01:29:46'),
(244, 'TulisRumus-bulan', 'bulan=hari%365//30', '2018-09-13 15:36:06', '2018-09-13 15:36:06', '2018-09-13 15:36:06', 'salah', NULL, NULL, NULL, 204, 61, 39, 16, '2018-09-13 01:31:00', '2018-09-13 01:36:06'),
(245, 'Kondisional-and-or', 'true', '2018-09-13 15:31:38', '2018-09-13 15:31:38', '2018-09-13 15:31:38', 'salah', NULL, NULL, NULL, 202, 61, 39, 15, '2018-09-13 01:31:38', '2018-09-13 01:31:38'),
(246, 'AksiSeq-NilaiData-2', '-0.43', '2018-09-13 15:32:37', '2018-09-13 15:32:37', '2018-09-13 15:32:37', 'salah', NULL, NULL, NULL, 194, 61, 39, 14, '2018-09-13 01:31:46', '2018-09-13 01:32:37'),
(247, 'AksiSeq-NilaiData-2', '0', '2018-09-13 15:32:03', '2018-09-13 15:32:03', '2018-09-13 15:32:03', 'salah', NULL, NULL, NULL, 202, 61, 39, 14, '2018-09-13 01:32:03', '2018-09-13 01:32:03'),
(248, 'AksiSeq-NilaiData-2', '0', '2018-09-13 15:32:08', '2018-09-13 15:32:08', '2018-09-13 15:32:08', 'salah', NULL, NULL, NULL, 198, 61, 39, 14, '2018-09-13 01:32:08', '2018-09-13 01:32:08'),
(249, 'AksiSeq-NilaiData-2', '-0.43', '2018-09-13 15:32:35', '2018-09-13 15:32:35', '2018-09-13 15:32:35', 'salah', NULL, NULL, NULL, 195, 61, 39, 14, '2018-09-13 01:32:35', '2018-09-13 01:32:35'),
(250, 'AksiSeq-NilaiData-2', '0', '2018-09-13 15:32:40', '2018-09-13 15:32:40', '2018-09-13 15:32:40', 'salah', NULL, NULL, NULL, 196, 61, 39, 14, '2018-09-13 01:32:40', '2018-09-13 01:32:40'),
(251, 'Kondisional-and-or', 'true', '2018-09-13 15:33:06', '2018-09-13 15:33:06', '2018-09-13 15:33:06', 'salah', NULL, NULL, NULL, 198, 61, 39, 15, '2018-09-13 01:33:06', '2018-09-13 01:33:06'),
(252, 'TulisRumus-bulan', 'bulan=hari//30', '2018-09-13 15:33:50', '2018-09-13 15:33:50', '2018-09-13 15:33:50', 'salah', NULL, NULL, NULL, 212, 61, 39, 16, '2018-09-13 01:33:50', '2018-09-13 01:33:50'),
(253, 'Kondisional-and-or', 'true', '2018-09-13 15:34:12', '2018-09-13 15:34:12', '2018-09-13 15:34:12', 'salah', NULL, NULL, NULL, 196, 61, 39, 15, '2018-09-13 01:34:12', '2018-09-13 01:34:12'),
(254, 'TulisRumus-bulan', '2500%365', '2018-09-13 15:36:15', '2018-09-13 15:36:15', '2018-09-13 15:36:15', 'salah', NULL, NULL, NULL, 199, 61, 39, 16, '2018-09-13 01:34:29', '2018-09-13 01:36:15'),
(255, 'AksiSeq-NilaiData-2', '0', '2018-09-13 15:38:11', '2018-09-13 15:38:11', '2018-09-13 15:38:11', 'salah', NULL, NULL, NULL, 206, 61, 39, 14, '2018-09-13 01:34:38', '2018-09-13 01:38:11'),
(256, 'AksiSeq-NilaiData-2', '-43', '2018-09-13 15:34:51', '2018-09-13 15:34:51', '2018-09-13 15:34:51', 'salah', NULL, NULL, NULL, 212, 61, 39, 14, '2018-09-13 01:34:51', '2018-09-13 01:34:51'),
(257, 'TulisRumus-bulan', 'hari/30', '2018-09-13 15:34:51', '2018-09-13 15:34:51', '2018-09-13 15:34:51', 'salah', NULL, NULL, NULL, 195, 61, 39, 16, '2018-09-13 01:34:51', '2018-09-13 01:34:51'),
(258, 'TulisRumus-bulan', 'bulan=(hari%365)//30', '2018-09-13 15:35:02', '2018-09-13 15:35:02', '2018-09-13 15:35:02', 'salah', NULL, NULL, NULL, 202, 61, 39, 16, '2018-09-13 01:35:02', '2018-09-13 01:35:02'),
(259, 'AksiSeq-NilaiData-2', '0.4', '2018-09-13 15:35:11', '2018-09-13 15:35:11', '2018-09-13 15:35:11', 'salah', NULL, NULL, NULL, 200, 61, 39, 14, '2018-09-13 01:35:11', '2018-09-13 01:35:11'),
(260, 'Kondisional-and-or', 'false', '2018-09-13 15:35:20', '2018-09-13 15:35:20', '2018-09-13 15:35:20', 'salah', NULL, NULL, NULL, 195, 61, 39, 15, '2018-09-13 01:35:21', '2018-09-13 01:35:21'),
(261, 'AksiSeq-NilaiData-2', '1', '2018-09-13 15:35:31', '2018-09-13 15:35:31', '2018-09-13 15:35:31', 'salah', NULL, NULL, NULL, 208, 61, 39, 14, '2018-09-13 01:35:31', '2018-09-13 01:35:31'),
(262, 'AksiSeq-NilaiData-2', '0', '2018-09-13 15:35:48', '2018-09-13 15:35:48', '2018-09-13 15:35:48', 'salah', NULL, NULL, NULL, 199, 61, 39, 14, '2018-09-13 01:35:48', '2018-09-13 01:35:48');
INSERT INTO `jawabanisian` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `jawabanGambar`, `keterangan`, `bobot`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalisian`, `created_at`, `updated_at`) VALUES
(263, 'Kondisional-and-or', 'True', '2018-09-13 15:35:55', '2018-09-13 15:35:55', '2018-09-13 15:35:55', 'benar', NULL, NULL, NULL, 199, 61, 39, 15, '2018-09-13 01:35:55', '2018-09-13 01:35:55'),
(264, 'Kondisional-and-or', 'true', '2018-09-13 15:38:22', '2018-09-13 15:38:22', '2018-09-13 15:38:22', 'salah', NULL, NULL, NULL, 206, 61, 39, 15, '2018-09-13 01:36:03', '2018-09-13 01:38:22'),
(265, 'Kondisional-and-or', 'true', '2018-09-13 15:36:04', '2018-09-13 15:36:04', '2018-09-13 15:36:04', 'salah', NULL, NULL, NULL, 207, 61, 39, 15, '2018-09-13 01:36:04', '2018-09-13 01:36:04'),
(266, 'TulisRumus-bulan', '365\\30', '2018-09-13 15:36:08', '2018-09-13 15:36:08', '2018-09-13 15:36:08', 'salah', NULL, NULL, NULL, 196, 61, 39, 16, '2018-09-13 01:36:08', '2018-09-13 01:36:08'),
(267, 'Kondisional-and-or', 'false', '2018-09-13 15:36:32', '2018-09-13 15:36:32', '2018-09-13 15:36:32', 'salah', NULL, NULL, NULL, 200, 61, 39, 15, '2018-09-13 01:36:32', '2018-09-13 01:36:32'),
(268, 'TulisRumus-bulan', 'hari//30', '2018-09-13 15:36:33', '2018-09-13 15:36:33', '2018-09-13 15:36:33', 'salah', NULL, NULL, NULL, 198, 61, 39, 16, '2018-09-13 01:36:33', '2018-09-13 01:36:33'),
(269, 'TulisRumus-bulan', '2500%365', '2018-09-13 15:38:37', '2018-09-13 15:38:37', '2018-09-13 15:38:37', 'salah', NULL, NULL, NULL, 206, 61, 39, 16, '2018-09-13 01:36:50', '2018-09-13 01:38:37'),
(270, 'Kondisional-and-or', 'false', '2018-09-13 15:37:32', '2018-09-13 15:37:32', '2018-09-13 15:37:32', 'salah', NULL, NULL, NULL, 203, 61, 39, 15, '2018-09-13 01:37:32', '2018-09-13 01:37:32'),
(271, 'TulisRumus-bulan', 'hari//30', '2018-09-13 15:38:02', '2018-09-13 15:38:02', '2018-09-13 15:38:02', 'salah', NULL, NULL, NULL, 200, 61, 39, 16, '2018-09-13 01:38:02', '2018-09-13 01:38:02'),
(272, 'AksiSeq-NilaiData-2', 'Nilai e : 0', '2018-09-13 15:38:13', '2018-09-13 15:38:13', '2018-09-13 15:38:13', 'salah', NULL, NULL, NULL, 197, 61, 39, 14, '2018-09-13 01:38:13', '2018-09-13 01:38:13'),
(273, 'TulisRumus-bulan', 'hari/30', '2018-09-13 15:38:23', '2018-09-13 15:38:23', '2018-09-13 15:38:23', 'salah', NULL, NULL, NULL, 203, 61, 39, 16, '2018-09-13 01:38:23', '2018-09-13 01:38:23'),
(274, 'TulisRumus-bulan', 'hari % 365 // 30', '2018-09-13 15:38:50', '2018-09-13 15:38:50', '2018-09-13 15:38:50', 'salah', NULL, NULL, NULL, 197, 61, 39, 16, '2018-09-13 01:38:50', '2018-09-13 01:38:50'),
(275, 'TulisRumus-bulan', 'bulan=int(input(\"bulan:\"))\r\nbulan=2500/30', '2018-09-13 15:39:29', '2018-09-13 15:39:29', '2018-09-13 15:39:29', 'salah', NULL, NULL, NULL, 208, 61, 39, 16, '2018-09-13 01:39:29', '2018-09-13 01:39:29'),
(276, 'Kondisional-and-or', 'True', '2018-09-13 15:41:16', '2018-09-13 15:41:16', '2018-09-13 15:41:16', 'benar', NULL, NULL, NULL, 197, 61, 39, 15, '2018-09-13 01:39:38', '2018-09-13 01:41:16'),
(277, 'Kondisional-and-or', '3', '2018-09-13 15:39:42', '2018-09-13 15:39:42', '2018-09-13 15:39:42', 'salah', NULL, NULL, NULL, 208, 61, 39, 15, '2018-09-13 01:39:42', '2018-09-13 01:39:42'),
(278, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 16:39:59', '2018-09-13 16:39:59', '2018-09-13 16:39:59', 'salah', NULL, NULL, NULL, 152, 61, 39, 14, '2018-09-13 02:39:59', '2018-09-13 02:39:59'),
(279, 'Kondisional-and-or', 'TRUE', '2018-09-13 16:40:30', '2018-09-13 16:40:30', '2018-09-13 16:40:30', 'salah', NULL, NULL, NULL, 152, 61, 39, 15, '2018-09-13 02:40:30', '2018-09-13 02:40:30'),
(280, 'TulisRumus-bulan', 'hari%365//30', '2018-09-13 16:41:06', '2018-09-13 16:41:06', '2018-09-13 16:41:06', 'salah', NULL, NULL, NULL, 152, 61, 39, 16, '2018-09-13 02:41:06', '2018-09-13 02:41:06'),
(281, 'AksiSeq-NilaiData-2', '0', '2018-09-13 16:58:28', '2018-09-13 16:58:28', '2018-09-13 16:58:28', 'salah', NULL, NULL, NULL, 181, 61, 39, 14, '2018-09-13 02:58:28', '2018-09-13 02:58:28'),
(282, 'Kondisional-and-or', 'true', '2018-09-13 16:59:06', '2018-09-13 16:59:06', '2018-09-13 16:59:06', 'salah', NULL, NULL, NULL, 181, 61, 39, 15, '2018-09-13 02:59:06', '2018-09-13 02:59:06'),
(283, 'TulisRumus-bulan', '2500%360', '2018-09-13 16:59:24', '2018-09-13 16:59:24', '2018-09-13 16:59:24', 'salah', NULL, NULL, NULL, 181, 61, 39, 16, '2018-09-13 02:59:24', '2018-09-13 02:59:24'),
(284, 'AksiSeq-NilaiData-2', '2,66', '2018-09-13 17:17:11', '2018-09-13 17:17:11', '2018-09-13 17:17:11', 'salah', NULL, NULL, NULL, 174, 61, 39, 14, '2018-09-13 03:17:11', '2018-09-13 03:17:11'),
(285, 'AksiSeq-NilaiData-2', '-0.375', '2018-09-13 17:18:28', '2018-09-13 17:18:28', '2018-09-13 17:18:28', 'salah', NULL, NULL, NULL, 188, 61, 39, 14, '2018-09-13 03:18:28', '2018-09-13 03:18:28'),
(286, 'Kondisional-and-or', 'true', '2018-09-13 17:18:36', '2018-09-13 17:18:36', '2018-09-13 17:18:36', 'salah', NULL, NULL, NULL, 188, 61, 39, 15, '2018-09-13 03:18:36', '2018-09-13 03:18:36'),
(287, 'Kondisional-and-or', 'true', '2018-09-13 17:19:01', '2018-09-13 17:19:01', '2018-09-13 17:19:01', 'salah', NULL, NULL, NULL, 174, 61, 39, 15, '2018-09-13 03:19:01', '2018-09-13 03:19:01'),
(288, 'TulisRumus-bulan', 'hari/30', '2018-09-13 17:22:14', '2018-09-13 17:22:14', '2018-09-13 17:22:14', 'salah', NULL, NULL, NULL, 174, 61, 39, 16, '2018-09-13 03:22:14', '2018-09-13 03:22:14'),
(289, 'AksiSeq-NilaiData-2', '6', '2018-09-13 17:35:11', '2018-09-13 17:35:11', '2018-09-13 17:35:11', 'salah', NULL, NULL, NULL, 163, 61, 39, 14, '2018-09-13 03:35:11', '2018-09-13 03:35:11'),
(290, 'Kondisional-and-or', 'True', '2018-09-13 17:37:27', '2018-09-13 17:37:27', '2018-09-13 17:37:27', 'benar', NULL, NULL, NULL, 163, 61, 39, 15, '2018-09-13 03:37:27', '2018-09-13 03:37:27'),
(291, 'TulisRumus-bulan', 'Umur=(360*tahun+30*bulan)-hari', '2018-09-13 17:40:34', '2018-09-13 17:40:34', '2018-09-13 17:40:34', 'salah', NULL, NULL, NULL, 163, 61, 39, 16, '2018-09-13 03:40:34', '2018-09-13 03:40:34'),
(292, 'AksiSeq-NilaiData-2', '8', '2018-09-13 17:42:50', '2018-09-13 17:42:50', '2018-09-13 17:42:50', 'salah', NULL, NULL, NULL, 161, 61, 39, 14, '2018-09-13 03:42:50', '2018-09-13 03:42:50'),
(293, 'Kondisional-and-or', 'true', '2018-09-13 17:43:48', '2018-09-13 17:43:48', '2018-09-13 17:43:48', 'salah', NULL, NULL, NULL, 161, 61, 39, 15, '2018-09-13 03:43:48', '2018-09-13 03:43:48'),
(294, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 17:44:11', '2018-09-13 17:44:11', '2018-09-13 17:44:11', 'salah', NULL, NULL, NULL, 153, 61, 39, 14, '2018-09-13 03:44:11', '2018-09-13 03:44:11'),
(295, 'TulisRumus-bulan', 'bulan//30', '2018-09-13 17:44:53', '2018-09-13 17:44:53', '2018-09-13 17:44:53', 'salah', NULL, NULL, NULL, 161, 61, 39, 16, '2018-09-13 03:44:53', '2018-09-13 03:44:53'),
(296, 'Kondisional-and-or', 'TRUE', '2018-09-13 17:44:55', '2018-09-13 17:44:55', '2018-09-13 17:44:55', 'salah', NULL, NULL, NULL, 153, 61, 39, 15, '2018-09-13 03:44:55', '2018-09-13 03:44:55'),
(297, 'AksiSeq-NilaiData-2', '0', '2018-09-13 17:56:27', '2018-09-13 17:56:27', '2018-09-13 17:56:27', 'salah', NULL, NULL, NULL, 151, 61, 39, 14, '2018-09-13 03:56:27', '2018-09-13 03:56:27'),
(298, 'Kondisional-and-or', 'true', '2018-09-13 17:57:10', '2018-09-13 17:57:10', '2018-09-13 17:57:10', 'salah', NULL, NULL, NULL, 151, 61, 39, 15, '2018-09-13 03:57:10', '2018-09-13 03:57:10'),
(299, 'TulisRumus-bulan', 'hari//30', '2018-09-13 18:00:16', '2018-09-13 18:00:16', '2018-09-13 18:00:16', 'salah', NULL, NULL, NULL, 151, 61, 39, 16, '2018-09-13 03:59:37', '2018-09-13 04:00:16'),
(300, 'AksiSeq-NilaiData-2', '-43', '2018-09-13 18:03:22', '2018-09-13 18:03:22', '2018-09-13 18:03:22', 'salah', NULL, NULL, NULL, 184, 61, 39, 14, '2018-09-13 04:03:22', '2018-09-13 04:03:22'),
(301, 'Kondisional-and-or', 'True', '2018-09-13 18:04:11', '2018-09-13 18:04:11', '2018-09-13 18:04:11', 'benar', NULL, NULL, NULL, 184, 61, 39, 15, '2018-09-13 04:04:11', '2018-09-13 04:04:11'),
(302, 'TulisRumus-bulan', 'hari%365', '2018-09-13 18:04:40', '2018-09-13 18:04:40', '2018-09-13 18:04:40', 'salah', NULL, NULL, NULL, 184, 61, 39, 16, '2018-09-13 04:04:40', '2018-09-13 04:04:40'),
(303, 'AksiSeq-NilaiData-2', '0', '2018-09-13 18:05:50', '2018-09-13 18:05:50', '2018-09-13 18:05:50', 'salah', NULL, NULL, NULL, 167, 61, 39, 14, '2018-09-13 04:05:50', '2018-09-13 04:05:50'),
(304, 'Kondisional-and-or', 'true', '2018-09-13 18:06:09', '2018-09-13 18:06:09', '2018-09-13 18:06:09', 'salah', NULL, NULL, NULL, 167, 61, 39, 15, '2018-09-13 04:06:09', '2018-09-13 04:06:09'),
(305, 'TulisRumus-bulan', 'hari%30', '2018-09-13 18:08:40', '2018-09-13 18:08:40', '2018-09-13 18:08:40', 'salah', NULL, NULL, NULL, 167, 61, 39, 16, '2018-09-13 04:08:40', '2018-09-13 04:08:40'),
(306, 'AksiSeq-NilaiData-2', '0', '2018-09-13 18:11:23', '2018-09-13 18:11:23', '2018-09-13 18:11:23', 'salah', NULL, NULL, NULL, 182, 61, 39, 14, '2018-09-13 04:11:23', '2018-09-13 04:11:23'),
(307, 'Kondisional-and-or', 'true', '2018-09-13 18:11:35', '2018-09-13 18:11:35', '2018-09-13 18:11:35', 'salah', NULL, NULL, NULL, 182, 61, 39, 15, '2018-09-13 04:11:35', '2018-09-13 04:11:35'),
(308, 'TulisRumus-bulan', 'hari % 30', '2018-09-13 18:12:00', '2018-09-13 18:12:00', '2018-09-13 18:12:00', 'salah', NULL, NULL, NULL, 182, 61, 39, 16, '2018-09-13 04:12:00', '2018-09-13 04:12:00'),
(309, 'AksiSeq-NilaiData-2', '0', '2018-09-13 18:13:47', '2018-09-13 18:13:47', '2018-09-13 18:13:47', 'salah', NULL, NULL, NULL, 179, 61, 39, 14, '2018-09-13 04:13:47', '2018-09-13 04:13:47'),
(310, 'Kondisional-and-or', 'true', '2018-09-13 18:13:55', '2018-09-13 18:13:55', '2018-09-13 18:13:55', 'salah', NULL, NULL, NULL, 179, 61, 39, 15, '2018-09-13 04:13:55', '2018-09-13 04:13:55'),
(311, 'TulisRumus-bulan', 'hari%30', '2018-09-13 18:14:04', '2018-09-13 18:14:04', '2018-09-13 18:14:04', 'salah', NULL, NULL, NULL, 179, 61, 39, 16, '2018-09-13 04:14:04', '2018-09-13 04:14:04'),
(312, 'AksiSeq-NilaiData-2', '0', '2018-09-13 18:55:06', '2018-09-13 18:55:06', '2018-09-13 18:55:06', 'salah', NULL, NULL, NULL, 180, 61, 39, 14, '2018-09-13 04:55:06', '2018-09-13 04:55:06'),
(313, 'AksiSeq-NilaiData-2', '0', '2018-09-13 18:59:17', '2018-09-13 18:59:17', '2018-09-13 18:59:17', 'salah', NULL, NULL, NULL, 185, 61, 39, 14, '2018-09-13 04:59:17', '2018-09-13 04:59:17'),
(314, 'AksiSeq-NilaiData-2', '1', '2018-09-13 19:09:02', '2018-09-13 19:09:02', '2018-09-13 19:09:02', 'salah', NULL, NULL, NULL, 172, 61, 39, 14, '2018-09-13 05:09:02', '2018-09-13 05:09:02'),
(315, 'Kondisional-and-or', '12', '2018-09-13 19:10:23', '2018-09-13 19:10:23', '2018-09-13 19:10:23', 'salah', NULL, NULL, NULL, 172, 61, 39, 15, '2018-09-13 05:10:23', '2018-09-13 05:10:23'),
(316, 'TulisRumus-bulan', '365//30', '2018-09-13 19:11:12', '2018-09-13 19:11:12', '2018-09-13 19:11:12', 'salah', NULL, NULL, NULL, 172, 61, 39, 16, '2018-09-13 05:11:12', '2018-09-13 05:11:12'),
(317, 'AksiSeq-NilaiData-2', '0.0', '2018-09-13 19:49:36', '2018-09-13 19:49:36', '2018-09-13 19:49:36', 'salah', NULL, NULL, NULL, 170, 61, 39, 14, '2018-09-13 05:49:36', '2018-09-13 05:49:36'),
(318, 'AksiSeq-NilaiData-2', '43', '2018-09-13 19:52:47', '2018-09-13 19:52:47', '2018-09-13 19:52:47', 'salah', NULL, NULL, NULL, 148, 61, 39, 14, '2018-09-13 05:52:47', '2018-09-13 05:52:47'),
(319, 'Kondisional-and-or', 'true', '2018-09-13 19:54:24', '2018-09-13 19:54:24', '2018-09-13 19:54:24', 'salah', NULL, NULL, NULL, 148, 61, 39, 15, '2018-09-13 05:54:24', '2018-09-13 05:54:24'),
(320, 'TulisRumus-bulan', '(2500%365)//30', '2018-09-13 19:57:45', '2018-09-13 19:57:45', '2018-09-13 19:57:45', 'salah', NULL, NULL, NULL, 148, 61, 39, 16, '2018-09-13 05:57:45', '2018-09-13 05:57:45'),
(321, 'WhilePos', '17', '2018-09-17 09:12:53', '2018-09-17 09:12:53', '2018-09-17 09:12:53', 'salah', NULL, NULL, NULL, 193, 62, 42, 19, '2018-09-16 19:12:53', '2018-09-16 19:12:53'),
(322, 'WhilePos', '15', '2018-09-17 09:13:09', '2018-09-17 09:13:09', '2018-09-17 09:13:09', 'benar', NULL, NULL, NULL, 192, 62, 42, 19, '2018-09-16 19:13:09', '2018-09-16 19:13:09'),
(323, 'WhilePos', '17', '2018-09-17 09:15:23', '2018-09-17 09:15:23', '2018-09-17 09:15:23', 'salah', NULL, NULL, NULL, 180, 62, 42, 19, '2018-09-16 19:15:23', '2018-09-16 19:15:23'),
(324, 'WhilePos', '17', '2018-09-17 09:15:26', '2018-09-17 09:15:26', '2018-09-17 09:15:26', 'salah', NULL, NULL, NULL, 183, 62, 42, 19, '2018-09-16 19:15:26', '2018-09-16 19:15:26'),
(325, 'WhilePos', '0', '2018-09-17 09:15:26', '2018-09-17 09:15:26', '2018-09-17 09:15:26', 'salah', NULL, NULL, NULL, 184, 62, 42, 19, '2018-09-16 19:15:26', '2018-09-16 19:15:26'),
(326, 'WhilePos', '0', '2018-09-17 09:16:07', '2018-09-17 09:16:07', '2018-09-17 09:16:07', 'salah', NULL, NULL, NULL, 171, 62, 42, 19, '2018-09-16 19:16:07', '2018-09-16 19:16:07'),
(327, 'WhilePos', '14', '2018-09-17 09:18:16', '2018-09-17 09:18:16', '2018-09-17 09:18:16', 'salah', NULL, NULL, NULL, 182, 62, 42, 19, '2018-09-16 19:18:16', '2018-09-16 19:18:16'),
(328, 'WhilePos', '15', '2018-09-17 09:18:25', '2018-09-17 09:18:25', '2018-09-17 09:18:25', 'benar', NULL, NULL, NULL, 185, 62, 42, 19, '2018-09-16 19:18:25', '2018-09-16 19:18:25'),
(329, 'WhilePos', '15', '2018-09-17 09:18:25', '2018-09-17 09:18:25', '2018-09-17 09:18:25', 'benar', NULL, NULL, NULL, 169, 62, 42, 19, '2018-09-16 19:18:25', '2018-09-16 19:18:25'),
(330, 'WhilePos', '15', '2018-09-17 09:18:34', '2018-09-17 09:18:34', '2018-09-17 09:18:34', 'benar', NULL, NULL, NULL, 175, 62, 42, 19, '2018-09-16 19:18:34', '2018-09-16 19:18:34'),
(331, 'WhilePos', '15', '2018-09-17 09:18:36', '2018-09-17 09:18:36', '2018-09-17 09:18:36', 'benar', NULL, NULL, NULL, 174, 62, 42, 19, '2018-09-16 19:18:36', '2018-09-16 19:18:36'),
(332, 'WhilePos', '17', '2018-09-17 09:18:53', '2018-09-17 09:18:53', '2018-09-17 09:18:53', 'salah', NULL, NULL, NULL, 170, 62, 42, 19, '2018-09-16 19:18:53', '2018-09-16 19:18:53'),
(333, 'WhilePos', '15', '2018-09-17 09:18:56', '2018-09-17 09:18:56', '2018-09-17 09:18:56', 'benar', NULL, NULL, NULL, 189, 62, 42, 19, '2018-09-16 19:18:56', '2018-09-16 19:18:56'),
(334, 'WhilePos', '15', '2018-09-17 09:19:16', '2018-09-17 09:19:16', '2018-09-17 09:19:16', 'benar', NULL, NULL, NULL, 176, 62, 42, 19, '2018-09-16 19:19:16', '2018-09-16 19:19:16'),
(335, 'WhilePos', '17', '2018-09-17 09:19:54', '2018-09-17 09:19:54', '2018-09-17 09:19:54', 'salah', NULL, NULL, NULL, 181, 62, 42, 19, '2018-09-16 19:19:54', '2018-09-16 19:19:54'),
(336, 'WhilePos', '15', '2018-09-17 09:20:41', '2018-09-17 09:20:41', '2018-09-17 09:20:41', 'benar', NULL, NULL, NULL, 186, 62, 42, 19, '2018-09-16 19:20:41', '2018-09-16 19:20:41'),
(337, 'WhilePos', '17', '2018-09-17 09:20:55', '2018-09-17 09:20:55', '2018-09-17 09:20:55', 'salah', NULL, NULL, NULL, 172, 62, 42, 19, '2018-09-16 19:20:55', '2018-09-16 19:20:55'),
(338, 'WhilePos', '27', '2018-09-17 09:21:33', '2018-09-17 09:21:33', '2018-09-17 09:21:33', 'salah', NULL, NULL, NULL, 188, 62, 42, 19, '2018-09-16 19:21:33', '2018-09-16 19:21:33'),
(339, 'WhilePos', '17', '2018-09-17 09:21:39', '2018-09-17 09:21:39', '2018-09-17 09:21:39', 'salah', NULL, NULL, NULL, 177, 62, 42, 19, '2018-09-16 19:21:39', '2018-09-16 19:21:39'),
(340, 'WhilePos', '-3', '2018-09-17 09:22:17', '2018-09-17 09:22:17', '2018-09-17 09:22:17', 'salah', NULL, NULL, NULL, 173, 62, 42, 19, '2018-09-16 19:22:17', '2018-09-16 19:22:17'),
(341, 'WhilePos', '17', '2018-09-17 09:22:43', '2018-09-17 09:22:43', '2018-09-17 09:22:43', 'salah', NULL, NULL, NULL, 179, 62, 42, 19, '2018-09-16 19:22:43', '2018-09-16 19:22:43'),
(342, 'WhilePos', '15', '2018-09-17 09:23:39', '2018-09-17 09:23:39', '2018-09-17 09:23:39', 'benar', NULL, NULL, NULL, 190, 62, 42, 19, '2018-09-16 19:23:14', '2018-09-16 19:23:39'),
(343, 'WhilePos', '17', '2018-09-17 09:23:16', '2018-09-17 09:23:16', '2018-09-17 09:23:16', 'salah', NULL, NULL, NULL, 187, 62, 42, 19, '2018-09-16 19:23:16', '2018-09-16 19:23:16'),
(344, 'WhilePos', '-3', '2018-09-17 09:23:34', '2018-09-17 09:23:34', '2018-09-17 09:23:34', 'salah', NULL, NULL, NULL, 178, 62, 42, 19, '2018-09-16 19:23:34', '2018-09-16 19:23:34'),
(345, 'WhilePos', '14', '2018-09-17 17:12:55', '2018-09-17 17:12:55', '2018-09-17 17:12:55', 'salah', NULL, NULL, NULL, 208, 63, 42, 19, '2018-09-17 03:12:55', '2018-09-17 03:12:55'),
(346, 'WhilePos', '17', '2018-09-17 17:18:50', '2018-09-17 17:18:50', '2018-09-17 17:18:50', 'salah', NULL, NULL, NULL, 200, 63, 42, 19, '2018-09-17 03:13:41', '2018-09-17 03:18:50'),
(347, 'WhilePos', '17', '2018-09-17 17:14:09', '2018-09-17 17:14:09', '2018-09-17 17:14:09', 'salah', NULL, NULL, NULL, 196, 63, 42, 19, '2018-09-17 03:14:09', '2018-09-17 03:14:09'),
(348, 'WhilePos', '15', '2018-09-17 17:14:28', '2018-09-17 17:14:28', '2018-09-17 17:14:28', 'benar', NULL, NULL, NULL, 198, 63, 42, 19, '2018-09-17 03:14:28', '2018-09-17 03:14:28'),
(349, 'WhilePos', '17', '2018-09-17 17:14:34', '2018-09-17 17:14:34', '2018-09-17 17:14:34', 'salah', NULL, NULL, NULL, 203, 63, 42, 19, '2018-09-17 03:14:34', '2018-09-17 03:14:34'),
(350, 'WhilePos', '17', '2018-09-17 17:16:27', '2018-09-17 17:16:27', '2018-09-17 17:16:27', 'salah', NULL, NULL, NULL, 197, 63, 42, 19, '2018-09-17 03:16:27', '2018-09-17 03:16:27'),
(351, 'WhilePos', '17', '2018-09-17 17:17:29', '2018-09-17 17:17:29', '2018-09-17 17:17:29', 'salah', NULL, NULL, NULL, 207, 63, 42, 19, '2018-09-17 03:17:29', '2018-09-17 03:17:29'),
(352, 'WhilePos', '15', '2018-09-17 17:19:05', '2018-09-17 17:19:05', '2018-09-17 17:19:05', 'benar', NULL, NULL, NULL, 202, 63, 42, 19, '2018-09-17 03:19:05', '2018-09-17 03:19:05'),
(353, 'WhilePos', '17', '2018-09-17 17:19:12', '2018-09-17 17:19:12', '2018-09-17 17:19:12', 'salah', NULL, NULL, NULL, 195, 63, 42, 19, '2018-09-17 03:19:12', '2018-09-17 03:19:12'),
(354, 'WhilePos', '10\r\n5\r\ntrue\r\n2', '2018-09-17 17:20:02', '2018-09-17 17:20:02', '2018-09-17 17:20:02', 'salah', NULL, NULL, NULL, 201, 63, 42, 19, '2018-09-17 03:20:02', '2018-09-17 03:20:02'),
(355, 'WhilePos', '17', '2018-09-17 17:22:20', '2018-09-17 17:22:20', '2018-09-17 17:22:20', 'salah', NULL, NULL, NULL, 199, 63, 42, 19, '2018-09-17 03:22:20', '2018-09-17 03:22:20'),
(356, 'WhilePos', '10,15,False,17', '2018-09-17 17:22:36', '2018-09-17 17:22:36', '2018-09-17 17:22:36', 'salah', NULL, NULL, NULL, 212, 63, 42, 19, '2018-09-17 03:22:36', '2018-09-17 03:22:36'),
(357, 'WhilePos', '17', '2018-09-17 17:26:47', '2018-09-17 17:26:47', '2018-09-17 17:26:47', 'salah', NULL, NULL, NULL, 204, 63, 42, 19, '2018-09-17 03:22:36', '2018-09-17 03:26:47'),
(358, 'WhilePos', '10,15 FALSE', '2018-09-17 17:24:39', '2018-09-17 17:24:39', '2018-09-17 17:24:39', 'salah', NULL, NULL, NULL, 206, 63, 42, 19, '2018-09-17 03:22:37', '2018-09-17 03:24:39'),
(359, 'WhilePos', '7', '2018-09-17 17:23:09', '2018-09-17 17:23:09', '2018-09-17 17:23:09', 'salah', NULL, NULL, NULL, 194, 63, 42, 19, '2018-09-17 03:23:09', '2018-09-17 03:23:09'),
(360, 'AksiSeq-NilaiData-1', '2,3', '2018-09-18 16:45:40', '2018-09-18 16:45:40', '2018-09-18 16:45:40', 'benar', NULL, NULL, NULL, 197, 56, 38, 12, '2018-09-18 02:45:40', '2018-09-18 02:45:40'),
(361, 'Tulis Rumus-1', '2500//365', '2018-09-18 16:50:32', '2018-09-18 16:50:32', '2018-09-18 16:50:32', 'salah', NULL, NULL, NULL, 197, 56, 38, 13, '2018-09-18 02:50:32', '2018-09-18 02:50:32'),
(362, 'WhilePos', '15', '2018-09-19 11:40:28', '2018-09-19 11:40:28', '2018-09-19 11:40:28', 'benar', NULL, NULL, NULL, 152, 64, 42, 19, '2018-09-18 21:40:28', '2018-09-18 21:40:28'),
(363, 'WhilePos', '15', '2018-09-19 11:40:55', '2018-09-19 11:40:55', '2018-09-19 11:40:55', 'benar', NULL, NULL, NULL, 149, 64, 42, 19, '2018-09-18 21:40:55', '2018-09-18 21:40:55'),
(364, 'WhilePos', '17', '2018-09-19 11:41:28', '2018-09-19 11:41:28', '2018-09-19 11:41:28', 'salah', NULL, NULL, NULL, 151, 64, 42, 19, '2018-09-18 21:41:28', '2018-09-18 21:41:28'),
(365, 'WhilePos', '17', '2018-09-19 11:41:57', '2018-09-19 11:41:57', '2018-09-19 11:41:57', 'salah', NULL, NULL, NULL, 148, 64, 42, 19, '2018-09-18 21:41:57', '2018-09-18 21:41:57'),
(366, 'WhilePos', '-3', '2018-09-19 11:43:37', '2018-09-19 11:43:37', '2018-09-19 11:43:37', 'salah', NULL, NULL, NULL, 163, 64, 42, 19, '2018-09-18 21:43:37', '2018-09-18 21:43:37'),
(367, 'WhilePos', '17', '2018-09-19 11:44:00', '2018-09-19 11:44:00', '2018-09-19 11:44:00', 'salah', NULL, NULL, NULL, 150, 64, 42, 19, '2018-09-18 21:44:00', '2018-09-18 21:44:00'),
(368, 'WhilePos', '17', '2018-09-19 11:44:40', '2018-09-19 11:44:40', '2018-09-19 11:44:40', 'salah', NULL, NULL, NULL, 165, 64, 42, 19, '2018-09-18 21:44:40', '2018-09-18 21:44:40'),
(369, 'WhilePos', '10, 5, -3, 2', '2018-09-19 11:45:25', '2018-09-19 11:45:25', '2018-09-19 11:45:25', 'salah', NULL, NULL, NULL, 154, 64, 42, 19, '2018-09-18 21:45:25', '2018-09-18 21:45:25'),
(370, 'WhilePos', '17', '2018-09-19 11:50:03', '2018-09-19 11:50:03', '2018-09-19 11:50:03', 'salah', NULL, NULL, NULL, 166, 64, 42, 19, '2018-09-18 21:45:53', '2018-09-18 21:50:03'),
(371, 'WhilePos', '14', '2018-09-19 11:47:35', '2018-09-19 11:47:35', '2018-09-19 11:47:35', 'salah', NULL, NULL, NULL, 145, 64, 42, 19, '2018-09-18 21:47:35', '2018-09-18 21:47:35'),
(372, 'WhilePos', '2', '2018-09-19 11:47:44', '2018-09-19 11:47:44', '2018-09-19 11:47:44', 'salah', NULL, NULL, NULL, 155, 64, 42, 19, '2018-09-18 21:47:44', '2018-09-18 21:47:44'),
(373, 'WhilePos', '15', '2018-09-19 11:48:42', '2018-09-19 11:48:42', '2018-09-19 11:48:42', 'benar', NULL, NULL, NULL, 147, 64, 42, 19, '2018-09-18 21:48:42', '2018-09-18 21:48:42'),
(374, 'WhilePos', '17', '2018-09-19 11:49:29', '2018-09-19 11:49:29', '2018-09-19 11:49:29', 'salah', NULL, NULL, NULL, 160, 64, 42, 19, '2018-09-18 21:49:29', '2018-09-18 21:49:29'),
(375, 'WhilePos', '10.0,15.0,17.0', '2018-09-19 11:51:13', '2018-09-19 11:51:13', '2018-09-19 11:51:13', 'salah', NULL, NULL, NULL, 146, 64, 42, 19, '2018-09-18 21:51:13', '2018-09-18 21:51:13'),
(376, 'WhilePos', '14', '2018-09-19 11:51:34', '2018-09-19 11:51:34', '2018-09-19 11:51:34', 'salah', NULL, NULL, NULL, 158, 64, 42, 19, '2018-09-18 21:51:34', '2018-09-18 21:51:34'),
(377, 'AksiSeq-NilaiData-2', '15', '2018-09-19 16:45:58', '2018-09-19 16:45:58', '2018-09-19 16:45:58', 'salah', NULL, NULL, NULL, 190, 61, 39, 14, '2018-09-19 02:45:58', '2018-09-19 02:45:58'),
(378, 'Kondisional-and-or', '24', '2018-09-19 16:46:03', '2018-09-19 16:46:03', '2018-09-19 16:46:03', 'salah', NULL, NULL, NULL, 190, 61, 39, 15, '2018-09-19 02:46:03', '2018-09-19 02:46:03'),
(379, 'TulisRumus-bulan', 'hari=(input(int))', '2018-09-19 16:48:02', '2018-09-19 16:48:02', '2018-09-19 16:48:02', 'salah', NULL, NULL, NULL, 190, 61, 39, 16, '2018-09-19 02:48:02', '2018-09-19 02:48:02'),
(380, 'If-elif-1', 'mk<20', '2018-09-20 12:47:21', '2018-09-20 12:47:21', '2018-09-20 12:47:21', 'benar', NULL, NULL, NULL, 183, 65, 41, 18, '2018-09-19 22:46:23', '2018-09-19 22:47:21'),
(381, 'If-elif-1', 'mk < 20', '2018-09-20 12:46:44', '2018-09-20 12:46:44', '2018-09-20 12:46:44', 'salah', NULL, NULL, NULL, 207, 65, 41, 18, '2018-09-19 22:46:44', '2018-09-19 22:46:44'),
(382, 'If-elif-1', 'mk<20', '2018-09-20 12:48:34', '2018-09-20 12:48:34', '2018-09-20 12:48:34', 'benar', NULL, NULL, NULL, 198, 65, 41, 18, '2018-09-19 22:48:34', '2018-09-19 22:48:34'),
(383, 'If-elif-1', 'mk<20', '2018-09-20 12:53:45', '2018-09-20 12:53:45', '2018-09-20 12:53:45', 'benar', NULL, NULL, NULL, 169, 65, 41, 18, '2018-09-19 22:53:45', '2018-09-19 22:53:45'),
(384, 'If-elif-1', 'mk>=20', '2018-09-20 12:54:33', '2018-09-20 12:54:33', '2018-09-20 12:54:33', 'salah', NULL, NULL, NULL, 163, 65, 41, 18, '2018-09-19 22:54:33', '2018-09-19 22:54:33'),
(385, 'If-elif-1', 'mk < 20', '2018-09-20 12:55:19', '2018-09-20 12:55:19', '2018-09-20 12:55:19', 'salah', NULL, NULL, NULL, 185, 65, 41, 18, '2018-09-19 22:55:19', '2018-09-19 22:55:19'),
(386, 'If-elif-1', 'MK>20', '2018-09-20 12:58:23', '2018-09-20 12:58:23', '2018-09-20 12:58:23', 'salah', NULL, NULL, NULL, 200, 65, 41, 18, '2018-09-19 22:58:23', '2018-09-19 22:58:23'),
(387, 'If-elif-1', 'mk<20', '2018-09-20 12:59:29', '2018-09-20 12:59:29', '2018-09-20 12:59:29', 'benar', NULL, NULL, NULL, 172, 65, 41, 18, '2018-09-19 22:59:29', '2018-09-19 22:59:29'),
(388, 'If-elif-1', 'mk<20', '2018-09-20 14:55:29', '2018-09-20 14:55:29', '2018-09-20 14:55:29', 'benar', NULL, NULL, NULL, 206, 65, 41, 18, '2018-09-19 23:01:42', '2018-09-20 00:55:29'),
(389, 'If-elif-1', 'MK<20', '2018-09-20 13:02:23', '2018-09-20 13:02:23', '2018-09-20 13:02:23', 'salah', NULL, NULL, NULL, 195, 65, 41, 18, '2018-09-19 23:02:23', '2018-09-19 23:02:23'),
(390, 'If-elif-1', 'mk<20', '2018-09-20 13:03:25', '2018-09-20 13:03:25', '2018-09-20 13:03:25', 'benar', NULL, NULL, NULL, 182, 65, 41, 18, '2018-09-19 23:03:25', '2018-09-19 23:03:25'),
(391, 'If-elif-1', 'mk<20', '2018-09-20 13:03:32', '2018-09-20 13:03:32', '2018-09-20 13:03:32', 'benar', NULL, NULL, NULL, 197, 65, 41, 18, '2018-09-19 23:03:32', '2018-09-19 23:03:32'),
(392, 'If-elif-1', 'mk<20', '2018-09-20 13:06:16', '2018-09-20 13:06:16', '2018-09-20 13:06:16', 'benar', NULL, NULL, NULL, 181, 65, 41, 18, '2018-09-19 23:06:02', '2018-09-19 23:06:16'),
(393, 'If-elif-1', '(mk<20)', '2018-09-20 13:19:57', '2018-09-20 13:19:57', '2018-09-20 13:19:57', 'salah', NULL, NULL, NULL, 188, 65, 41, 18, '2018-09-19 23:19:57', '2018-09-19 23:19:57'),
(394, 'If-elif-1', 'mk<15', '2018-09-20 13:20:51', '2018-09-20 13:20:51', '2018-09-20 13:20:51', 'salah', NULL, NULL, NULL, 201, 65, 41, 18, '2018-09-19 23:20:51', '2018-09-19 23:20:51'),
(395, 'If-elif-1', 'mk<20', '2018-09-20 13:23:26', '2018-09-20 13:23:26', '2018-09-20 13:23:26', 'benar', NULL, NULL, NULL, 194, 65, 41, 18, '2018-09-19 23:23:26', '2018-09-19 23:23:26'),
(396, 'If-elif-1', 'mk<15', '2018-09-20 13:29:43', '2018-09-20 13:29:43', '2018-09-20 13:29:43', 'salah', NULL, NULL, NULL, 166, 65, 41, 18, '2018-09-19 23:29:43', '2018-09-19 23:29:43'),
(397, 'If-elif-1', 'mk < 20', '2018-09-20 13:30:27', '2018-09-20 13:30:27', '2018-09-20 13:30:27', 'salah', NULL, NULL, NULL, 171, 65, 41, 18, '2018-09-19 23:30:27', '2018-09-19 23:30:27'),
(398, 'If-elif-1', 'mk<20', '2018-09-20 13:39:26', '2018-09-20 13:39:26', '2018-09-20 13:39:26', 'benar', NULL, NULL, NULL, 173, 65, 41, 18, '2018-09-19 23:39:26', '2018-09-19 23:39:26'),
(399, 'If-elif-1', 'mk<20', '2018-09-20 14:00:14', '2018-09-20 14:00:14', '2018-09-20 14:00:14', 'benar', NULL, NULL, NULL, 190, 65, 41, 18, '2018-09-20 00:00:14', '2018-09-20 00:00:14'),
(400, 'If-elif-1', 'mk<20', '2018-09-20 14:01:38', '2018-09-20 14:01:38', '2018-09-20 14:01:38', 'benar', NULL, NULL, NULL, 189, 65, 41, 18, '2018-09-20 00:01:38', '2018-09-20 00:01:38'),
(401, 'If-elif-1', 'mk<20', '2018-09-20 14:03:12', '2018-09-20 14:03:12', '2018-09-20 14:03:12', 'benar', NULL, NULL, NULL, 186, 65, 41, 18, '2018-09-20 00:03:12', '2018-09-20 00:03:12'),
(402, 'If-elif-1', 'mk<20', '2018-09-20 14:09:53', '2018-09-20 14:09:53', '2018-09-20 14:09:53', 'benar', NULL, NULL, NULL, 204, 65, 41, 18, '2018-09-20 00:09:53', '2018-09-20 00:09:53'),
(403, 'If-elif-1', 'mk>=10 or mk<20', '2018-09-20 14:21:32', '2018-09-20 14:21:32', '2018-09-20 14:21:32', 'salah', NULL, NULL, NULL, 170, 65, 41, 18, '2018-09-20 00:21:32', '2018-09-20 00:21:32'),
(404, 'If-elif-1', 'mk<20', '2018-09-20 14:46:59', '2018-09-20 14:46:59', '2018-09-20 14:46:59', 'benar', NULL, NULL, NULL, 160, 65, 41, 18, '2018-09-20 00:46:59', '2018-09-20 00:46:59'),
(405, 'If-elif-1', 'mk<20', '2018-09-20 14:53:07', '2018-09-20 14:53:07', '2018-09-20 14:53:07', 'benar', NULL, NULL, NULL, 165, 65, 41, 18, '2018-09-20 00:52:16', '2018-09-20 00:53:07'),
(406, 'If-elif-1', 'mk<20', '2018-09-20 15:11:18', '2018-09-20 15:11:18', '2018-09-20 15:11:18', 'benar', NULL, NULL, NULL, 202, 65, 41, 18, '2018-09-20 01:11:18', '2018-09-20 01:11:18'),
(407, 'If-elif-1', 'mk<20', '2018-09-20 15:27:44', '2018-09-20 15:27:44', '2018-09-20 15:27:44', 'benar', NULL, NULL, NULL, 212, 65, 41, 18, '2018-09-20 01:27:44', '2018-09-20 01:27:44'),
(408, 'If-elif-1', 'mk<20', '2018-09-20 15:43:50', '2018-09-20 15:43:50', '2018-09-20 15:43:50', 'benar', NULL, NULL, NULL, 184, 65, 41, 18, '2018-09-20 01:43:50', '2018-09-20 01:43:50'),
(409, 'If-elif-1', 'mk<20', '2018-09-20 15:45:32', '2018-09-20 15:45:32', '2018-09-20 15:45:32', 'benar', NULL, NULL, NULL, 175, 65, 41, 18, '2018-09-20 01:45:17', '2018-09-20 01:45:32'),
(410, 'If-elif-1', 'mk<20', '2018-09-20 15:46:08', '2018-09-20 15:46:08', '2018-09-20 15:46:08', 'benar', NULL, NULL, NULL, 179, 65, 41, 18, '2018-09-20 01:46:08', '2018-09-20 01:46:08'),
(411, 'If-elif-1', 'mk<20', '2018-09-20 15:47:01', '2018-09-20 15:47:01', '2018-09-20 15:47:01', 'benar', NULL, NULL, NULL, 180, 65, 41, 18, '2018-09-20 01:47:01', '2018-09-20 01:47:01'),
(412, 'If-elif-1', 'mk<20', '2018-09-20 15:47:28', '2018-09-20 15:47:28', '2018-09-20 15:47:28', 'benar', NULL, NULL, NULL, 203, 65, 41, 18, '2018-09-20 01:47:28', '2018-09-20 01:47:28'),
(413, 'If-elif-1', 'mk<20', '2018-09-20 15:47:54', '2018-09-20 15:47:54', '2018-09-20 15:47:54', 'benar', NULL, NULL, NULL, 174, 65, 41, 18, '2018-09-20 01:47:54', '2018-09-20 01:47:54'),
(414, 'If-elif-1', 'mk<20', '2018-09-20 15:49:27', '2018-09-20 15:49:27', '2018-09-20 15:49:27', 'benar', NULL, NULL, NULL, 196, 65, 41, 18, '2018-09-20 01:49:27', '2018-09-20 01:49:27'),
(415, 'If-elif-1', '(mk < 1 )', '2018-09-20 16:05:41', '2018-09-20 16:05:41', '2018-09-20 16:05:41', 'salah', NULL, NULL, NULL, 161, 65, 41, 18, '2018-09-20 02:05:41', '2018-09-20 02:05:41'),
(416, 'If-elif-1', 'mk<20', '2018-09-20 16:16:05', '2018-09-20 16:16:05', '2018-09-20 16:16:05', 'benar', NULL, NULL, NULL, 149, 65, 41, 18, '2018-09-20 02:16:05', '2018-09-20 02:16:05'),
(417, 'If-elif-1', 'mk < 20', '2018-09-20 16:22:02', '2018-09-20 16:22:02', '2018-09-20 16:22:02', 'salah', NULL, NULL, NULL, 187, 65, 41, 18, '2018-09-20 02:22:02', '2018-09-20 02:22:02'),
(418, 'If-elif-1', 'mk<20', '2018-09-20 16:23:12', '2018-09-20 16:23:12', '2018-09-20 16:23:12', 'benar', NULL, NULL, NULL, 152, 65, 41, 18, '2018-09-20 02:23:12', '2018-09-20 02:23:12'),
(419, 'If-elif-1', 'mk<20', '2018-09-20 16:23:15', '2018-09-20 16:23:15', '2018-09-20 16:23:15', 'benar', NULL, NULL, NULL, 145, 65, 41, 18, '2018-09-20 02:23:15', '2018-09-20 02:23:15'),
(420, 'If-elif-1', 'mk<20', '2018-09-20 16:23:52', '2018-09-20 16:23:52', '2018-09-20 16:23:52', 'benar', NULL, NULL, NULL, 193, 65, 41, 18, '2018-09-20 02:23:52', '2018-09-20 02:23:52'),
(421, 'If-elif-1', 'mk < 20', '2018-09-20 17:48:46', '2018-09-20 17:48:46', '2018-09-20 17:48:46', 'salah', NULL, NULL, NULL, 157, 65, 41, 18, '2018-09-20 03:48:46', '2018-09-20 03:48:46'),
(422, 'If-elif-1', 'mk<20', '2018-09-20 17:50:20', '2018-09-20 17:50:20', '2018-09-20 17:50:20', 'benar', NULL, NULL, NULL, 148, 65, 41, 18, '2018-09-20 03:50:20', '2018-09-20 03:50:20'),
(423, 'If-elif-1', 'mk<20', '2018-09-20 17:50:47', '2018-09-20 17:50:47', '2018-09-20 17:50:47', 'benar', NULL, NULL, NULL, 150, 65, 41, 18, '2018-09-20 03:50:47', '2018-09-20 03:50:47'),
(424, 'If-elif-1', 'mk<20', '2018-09-20 17:55:01', '2018-09-20 17:55:01', '2018-09-20 17:55:01', 'benar', NULL, NULL, NULL, 153, 65, 41, 18, '2018-09-20 03:55:01', '2018-09-20 03:55:01'),
(425, 'If-elif-1', 'mk<20', '2018-09-20 17:59:30', '2018-09-20 17:59:30', '2018-09-20 17:59:30', 'benar', NULL, NULL, NULL, 167, 65, 41, 18, '2018-09-20 03:59:30', '2018-09-20 03:59:30'),
(426, 'If-elif-1', '<20', '2018-09-20 18:12:30', '2018-09-20 18:12:30', '2018-09-20 18:12:30', 'salah', NULL, NULL, NULL, 192, 65, 41, 18, '2018-09-20 04:12:30', '2018-09-20 04:12:30'),
(427, 'If-elif-1', 'mk<0', '2018-09-20 18:20:40', '2018-09-20 18:20:40', '2018-09-20 18:20:40', 'salah', NULL, NULL, NULL, 155, 65, 41, 18, '2018-09-20 04:20:40', '2018-09-20 04:20:40'),
(428, 'If-elif-1', 'mk<20', '2018-09-20 18:24:43', '2018-09-20 18:24:43', '2018-09-20 18:24:43', 'benar', NULL, NULL, NULL, 156, 65, 41, 18, '2018-09-20 04:24:43', '2018-09-20 04:24:43'),
(429, 'If-elif-1', 'mk<20', '2018-09-20 18:25:13', '2018-09-20 18:25:13', '2018-09-20 18:25:13', 'benar', NULL, NULL, NULL, 158, 65, 41, 18, '2018-09-20 04:25:13', '2018-09-20 04:25:13'),
(430, 'If-elif-1', 'mk < 20', '2018-09-20 18:26:14', '2018-09-20 18:26:14', '2018-09-20 18:26:14', 'salah', NULL, NULL, NULL, 151, 65, 41, 18, '2018-09-20 04:26:14', '2018-09-20 04:26:14'),
(431, 'If-elif-1', 'mk<20', '2018-09-20 18:36:35', '2018-09-20 18:36:35', '2018-09-20 18:36:35', 'benar', NULL, NULL, NULL, 146, 65, 41, 18, '2018-09-20 04:36:35', '2018-09-20 04:36:35'),
(432, 'If-elif-1', 'mk<20', '2018-09-20 18:40:08', '2018-09-20 18:40:08', '2018-09-20 18:40:08', 'benar', NULL, NULL, NULL, 147, 65, 41, 18, '2018-09-20 04:40:08', '2018-09-20 04:40:08'),
(433, 'If-elif-1', 'mk<20', '2018-09-20 19:20:01', '2018-09-20 19:20:01', '2018-09-20 19:20:01', 'benar', NULL, NULL, NULL, 199, 65, 41, 18, '2018-09-20 05:20:01', '2018-09-20 05:20:01'),
(434, 'If-elif-1', 'mk<20', '2018-09-20 19:53:04', '2018-09-20 19:53:04', '2018-09-20 19:53:04', 'benar', NULL, NULL, NULL, 178, 65, 41, 18, '2018-09-20 05:53:04', '2018-09-20 05:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `jawabanpg`
--

CREATE TABLE `jawabanpg` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `jawabanmhs` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `finish` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `idMhs` int(255) NOT NULL,
  `idTournament` int(255) NOT NULL,
  `idBanksoal` int(255) NOT NULL,
  `idsoalpg` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawabanpg`
--

INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(2, 'Soal1-PG', 'b', '2018-07-16 07:24:38', '2018-07-16 07:24:38', '2018-07-16 07:24:38', 'salah', 119, 46, 31, 88, '2018-07-15 17:24:38', '2018-07-15 17:24:38'),
(4, 'Soal2-PG', 'e', '2018-07-16 09:34:08', '2018-07-16 09:34:08', '2018-07-16 09:34:08', 'salah', 119, 46, 31, 89, '2018-07-16 02:34:08', '2018-07-15 19:34:08'),
(5, 'Soal1-PG', 'a', '2018-07-16 10:23:21', '2018-07-16 10:23:21', '2018-07-16 10:23:21', 'benar', 119, 48, 33, 90, '2018-07-16 03:23:21', '2018-07-15 20:23:21'),
(6, 'Soal2-PG', 'e', '2018-07-16 10:23:10', '2018-07-16 10:23:10', '2018-07-16 10:23:10', 'salah', 119, 48, 33, 91, '2018-07-15 20:23:10', '2018-07-15 20:23:10'),
(7, 'Soal1-PG', 'a', '2018-07-16 10:48:34', '2018-07-16 10:48:34', '2018-07-16 10:48:34', 'benar', 119, 50, 35, 92, '2018-07-15 20:48:34', '2018-07-15 20:48:34'),
(8, 'Soal2-PG', 'c', '2018-07-16 10:48:38', '2018-07-16 10:48:38', '2018-07-16 10:48:38', 'salah', 119, 50, 35, 93, '2018-07-15 20:48:39', '2018-07-15 20:48:39'),
(9, 'Soal-1', '4', '2018-07-18 09:42:34', '2018-07-18 09:42:34', '2018-07-18 09:42:34', 'benar', 119, 51, 36, 94, '2018-07-17 19:42:34', '2018-07-17 19:42:34'),
(10, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-07-31 13:20:06', '2018-07-31 13:20:06', '2018-07-31 13:20:06', 'benar', 119, 52, 37, 95, '2018-07-30 23:20:06', '2018-07-30 23:20:06'),
(11, 'Soal Btree-Tambah-2', '44 50 85', '2018-07-31 13:20:40', '2018-07-31 13:20:40', '2018-07-31 13:20:40', 'benar', 119, 52, 37, 96, '2018-07-30 23:20:40', '2018-07-30 23:20:40'),
(12, 'Soal Btree-Hapus', '48 dan 85', '2018-07-31 13:20:59', '2018-07-31 13:20:59', '2018-07-31 13:20:59', 'benar', 119, 52, 37, 97, '2018-07-30 23:20:59', '2018-07-30 23:20:59'),
(13, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-07-31 13:21:12', '2018-07-31 13:21:12', '2018-07-31 13:21:12', 'benar', 119, 52, 37, 98, '2018-07-30 23:21:12', '2018-07-30 23:21:12'),
(14, 'Soal Graph-BFS', 'ABFEDGC', '2018-07-31 13:21:31', '2018-07-31 13:21:31', '2018-07-31 13:21:31', 'benar', 119, 52, 37, 99, '2018-07-30 23:21:31', '2018-07-30 23:21:31'),
(15, 'Soal Matrix-PG', '0012223', '2018-07-31 13:21:53', '2018-07-31 13:21:53', '2018-07-31 13:21:53', 'benar', 119, 52, 37, 100, '2018-07-30 23:21:53', '2018-07-30 23:21:53'),
(16, 'Soal Hash-1', '1', '2018-07-31 13:22:11', '2018-07-31 13:22:11', '2018-07-31 13:22:11', 'benar', 119, 52, 37, 101, '2018-07-30 23:22:11', '2018-07-30 23:22:11'),
(17, 'Soal Hash-2', '25 dan 4', '2018-07-31 13:22:30', '2018-07-31 13:22:30', '2018-07-31 13:22:30', 'benar', 119, 52, 37, 102, '2018-07-30 23:22:31', '2018-07-30 23:22:31'),
(18, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:23', '2018-08-06 13:52:23', '2018-08-06 13:52:23', 'benar', 134, 52, 37, 95, '2018-08-05 23:52:23', '2018-08-05 23:52:23'),
(19, 'Soal Btree-Tambah-1', '20 42 dan 44 48', '2018-08-06 13:52:25', '2018-08-06 13:52:25', '2018-08-06 13:52:25', 'salah', 139, 52, 37, 95, '2018-08-05 23:52:25', '2018-08-05 23:52:25'),
(20, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:37', '2018-08-06 13:52:37', '2018-08-06 13:52:37', 'benar', 136, 52, 37, 95, '2018-08-05 23:52:37', '2018-08-05 23:52:37'),
(21, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:42', '2018-08-06 13:52:42', '2018-08-06 13:52:42', 'benar', 142, 52, 37, 95, '2018-08-05 23:52:42', '2018-08-05 23:52:42'),
(22, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:42', '2018-08-06 13:52:42', '2018-08-06 13:52:42', 'benar', 127, 52, 37, 95, '2018-08-05 23:52:42', '2018-08-05 23:52:42'),
(23, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:42', '2018-08-06 13:52:42', '2018-08-06 13:52:42', 'benar', 137, 52, 37, 95, '2018-08-05 23:52:42', '2018-08-05 23:52:42'),
(24, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:52:45', '2018-08-06 13:52:45', '2018-08-06 13:52:45', 'benar', 134, 52, 37, 96, '2018-08-05 23:52:45', '2018-08-05 23:52:45'),
(25, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:53:51', '2018-08-06 13:53:51', '2018-08-06 13:53:51', 'benar', 140, 52, 37, 95, '2018-08-06 06:53:51', '2018-08-05 23:53:51'),
(26, 'Soal Btree-Tambah-1', '20 34 42 dan 44 48', '2018-08-06 13:52:54', '2018-08-06 13:52:54', '2018-08-06 13:52:54', 'salah', 131, 52, 37, 95, '2018-08-05 23:52:54', '2018-08-05 23:52:54'),
(27, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:52:56', '2018-08-06 13:52:56', '2018-08-06 13:52:56', 'benar', 141, 52, 37, 95, '2018-08-05 23:52:56', '2018-08-05 23:52:56'),
(28, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:52:56', '2018-08-06 13:52:56', '2018-08-06 13:52:56', 'benar', 139, 52, 37, 96, '2018-08-05 23:52:56', '2018-08-05 23:52:56'),
(29, 'Soal Btree-Tambah-2', '46 50 85', '2018-08-06 13:53:03', '2018-08-06 13:53:03', '2018-08-06 13:53:03', 'salah', 127, 52, 37, 96, '2018-08-05 23:53:03', '2018-08-05 23:53:03'),
(30, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:53:05', '2018-08-06 13:53:05', '2018-08-06 13:53:05', 'benar', 130, 52, 37, 95, '2018-08-05 23:53:05', '2018-08-05 23:53:05'),
(31, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 14:09:37', '2018-08-06 14:09:37', '2018-08-06 14:09:37', 'benar', 138, 52, 37, 95, '2018-08-06 07:09:37', '2018-08-06 00:09:37'),
(32, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:53:10', '2018-08-06 13:53:10', '2018-08-06 13:53:10', 'benar', 134, 52, 37, 97, '2018-08-05 23:53:10', '2018-08-05 23:53:10'),
(33, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:53:14', '2018-08-06 13:53:14', '2018-08-06 13:53:14', 'benar', 141, 52, 37, 96, '2018-08-05 23:53:14', '2018-08-05 23:53:14'),
(34, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:53:17', '2018-08-06 13:53:17', '2018-08-06 13:53:17', 'benar', 136, 52, 37, 96, '2018-08-05 23:53:17', '2018-08-05 23:53:17'),
(35, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:53:17', '2018-08-06 13:53:17', '2018-08-06 13:53:17', 'benar', 142, 52, 37, 96, '2018-08-05 23:53:17', '2018-08-05 23:53:17'),
(36, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:53:21', '2018-08-06 13:53:21', '2018-08-06 13:53:21', 'benar', 139, 52, 37, 97, '2018-08-05 23:53:21', '2018-08-05 23:53:21'),
(37, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:53:21', '2018-08-06 13:53:21', '2018-08-06 13:53:21', 'benar', 126, 52, 37, 95, '2018-08-05 23:53:21', '2018-08-05 23:53:21'),
(38, 'Soal Btree-Tambah-1', '20 42 dan 44 48', '2018-08-06 13:53:25', '2018-08-06 13:53:25', '2018-08-06 13:53:25', 'salah', 132, 52, 37, 95, '2018-08-05 23:53:25', '2018-08-05 23:53:25'),
(39, 'Soal Btree-Tambah-2', '46 50 85', '2018-08-06 13:53:36', '2018-08-06 13:53:36', '2018-08-06 13:53:36', 'salah', 137, 52, 37, 96, '2018-08-05 23:53:36', '2018-08-05 23:53:36'),
(40, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:53:38', '2018-08-06 13:53:38', '2018-08-06 13:53:38', 'benar', 134, 52, 37, 98, '2018-08-05 23:53:38', '2018-08-05 23:53:38'),
(41, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:53:44', '2018-08-06 13:53:44', '2018-08-06 13:53:44', 'benar', 141, 52, 37, 97, '2018-08-05 23:53:44', '2018-08-05 23:53:44'),
(42, 'Soal Graph-Memori', 'Adjacency list', '2018-08-06 13:54:00', '2018-08-06 13:54:00', '2018-08-06 13:54:00', 'salah', 139, 52, 37, 98, '2018-08-05 23:54:00', '2018-08-05 23:54:00'),
(43, 'Soal Btree-Hapus', 'Hanya tinggal 85', '2018-08-06 13:54:00', '2018-08-06 13:54:00', '2018-08-06 13:54:00', 'salah', 137, 52, 37, 97, '2018-08-05 23:54:01', '2018-08-05 23:54:01'),
(44, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:54:04', '2018-08-06 13:54:04', '2018-08-06 13:54:04', 'benar', 130, 52, 37, 96, '2018-08-05 23:54:04', '2018-08-05 23:54:04'),
(45, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:54:07', '2018-08-06 13:54:07', '2018-08-06 13:54:07', 'benar', 140, 52, 37, 96, '2018-08-05 23:54:07', '2018-08-05 23:54:07'),
(46, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:54:09', '2018-08-06 13:54:09', '2018-08-06 13:54:09', 'benar', 132, 52, 37, 96, '2018-08-05 23:54:09', '2018-08-05 23:54:09'),
(47, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:54:11', '2018-08-06 13:54:11', '2018-08-06 13:54:11', 'benar', 136, 52, 37, 97, '2018-08-05 23:54:11', '2018-08-05 23:54:11'),
(48, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:54:14', '2018-08-06 13:54:14', '2018-08-06 13:54:14', 'benar', 131, 52, 37, 96, '2018-08-05 23:54:14', '2018-08-05 23:54:14'),
(49, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 14:09:55', '2018-08-06 14:09:55', '2018-08-06 14:09:55', 'benar', 138, 52, 37, 96, '2018-08-06 07:09:55', '2018-08-06 00:09:55'),
(50, 'Soal Btree-Hapus', 'Hanya tinggal 85', '2018-08-06 13:54:35', '2018-08-06 13:54:35', '2018-08-06 13:54:35', 'salah', 140, 52, 37, 97, '2018-08-06 06:54:35', '2018-08-05 23:54:35'),
(51, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:54:27', '2018-08-06 13:54:27', '2018-08-06 13:54:27', 'benar', 137, 52, 37, 98, '2018-08-05 23:54:27', '2018-08-05 23:54:27'),
(52, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:54:28', '2018-08-06 13:54:28', '2018-08-06 13:54:28', 'benar', 136, 52, 37, 98, '2018-08-05 23:54:28', '2018-08-05 23:54:28'),
(53, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 13:54:36', '2018-08-06 13:54:36', '2018-08-06 13:54:36', 'benar', 141, 52, 37, 99, '2018-08-05 23:54:36', '2018-08-05 23:54:36'),
(54, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:54:41', '2018-08-06 13:54:41', '2018-08-06 13:54:41', 'benar', 126, 52, 37, 96, '2018-08-05 23:54:41', '2018-08-05 23:54:41'),
(55, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 14:10:27', '2018-08-06 14:10:27', '2018-08-06 14:10:27', 'benar', 138, 52, 37, 97, '2018-08-06 07:10:27', '2018-08-06 00:10:27'),
(56, 'Soal Btree-Tambah-1', '20 34 dan 44 48', '2018-08-06 13:54:57', '2018-08-06 13:54:57', '2018-08-06 13:54:57', 'benar', 133, 52, 37, 95, '2018-08-05 23:54:57', '2018-08-05 23:54:57'),
(57, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:54:57', '2018-08-06 13:54:57', '2018-08-06 13:54:57', 'benar', 142, 52, 37, 97, '2018-08-05 23:54:57', '2018-08-05 23:54:57'),
(58, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:55:00', '2018-08-06 13:55:00', '2018-08-06 13:55:00', 'benar', 130, 52, 37, 97, '2018-08-05 23:55:00', '2018-08-05 23:55:00'),
(59, 'Soal Matrix-PG', '0012223', '2018-08-06 13:55:06', '2018-08-06 13:55:06', '2018-08-06 13:55:06', 'benar', 141, 52, 37, 100, '2018-08-05 23:55:06', '2018-08-05 23:55:06'),
(60, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 13:55:08', '2018-08-06 13:55:08', '2018-08-06 13:55:08', 'benar', 139, 52, 37, 99, '2018-08-05 23:55:08', '2018-08-05 23:55:08'),
(61, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:55:16', '2018-08-06 13:55:16', '2018-08-06 13:55:16', 'salah', 137, 52, 37, 99, '2018-08-05 23:55:16', '2018-08-05 23:55:16'),
(62, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 13:55:18', '2018-08-06 13:55:18', '2018-08-06 13:55:18', 'benar', 134, 52, 37, 99, '2018-08-05 23:55:18', '2018-08-05 23:55:18'),
(63, 'Soal Graph-Memori', 'List Linier', '2018-08-06 14:10:46', '2018-08-06 14:10:46', '2018-08-06 14:10:46', 'salah', 138, 52, 37, 98, '2018-08-06 07:10:46', '2018-08-06 00:10:46'),
(64, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:55:27', '2018-08-06 13:55:27', '2018-08-06 13:55:27', 'benar', 130, 52, 37, 98, '2018-08-05 23:55:27', '2018-08-05 23:55:27'),
(65, 'Soal Btree-Hapus', '48 dan 85', '2018-08-06 13:55:28', '2018-08-06 13:55:28', '2018-08-06 13:55:28', 'benar', 127, 52, 37, 97, '2018-08-05 23:55:28', '2018-08-05 23:55:28'),
(66, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:55:34', '2018-08-06 13:55:34', '2018-08-06 13:55:34', 'benar', 132, 52, 37, 98, '2018-08-05 23:55:34', '2018-08-05 23:55:34'),
(67, 'Soal Btree-Tambah-2', '44 50 85', '2018-08-06 13:55:44', '2018-08-06 13:55:44', '2018-08-06 13:55:44', 'benar', 133, 52, 37, 96, '2018-08-05 23:55:44', '2018-08-05 23:55:44'),
(68, 'Soal Hash-1', '1', '2018-08-06 13:55:49', '2018-08-06 13:55:49', '2018-08-06 13:55:49', 'benar', 141, 52, 37, 101, '2018-08-05 23:55:49', '2018-08-05 23:55:49'),
(69, 'Soal Matrix-PG', '0012223', '2018-08-06 13:55:50', '2018-08-06 13:55:50', '2018-08-06 13:55:50', 'benar', 139, 52, 37, 100, '2018-08-05 23:55:50', '2018-08-05 23:55:50'),
(70, 'Soal Graph-Memori', 'Adjacency list', '2018-08-06 13:56:12', '2018-08-06 13:56:12', '2018-08-06 13:56:12', 'salah', 142, 52, 37, 98, '2018-08-05 23:56:12', '2018-08-05 23:56:12'),
(71, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:56:18', '2018-08-06 13:56:18', '2018-08-06 13:56:18', 'salah', 132, 52, 37, 99, '2018-08-05 23:56:18', '2018-08-05 23:56:18'),
(72, 'Soal Btree-Hapus', '44 dan 85', '2018-08-06 13:56:21', '2018-08-06 13:56:21', '2018-08-06 13:56:21', 'salah', 126, 52, 37, 97, '2018-08-05 23:56:21', '2018-08-05 23:56:21'),
(73, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:56:26', '2018-08-06 13:56:26', '2018-08-06 13:56:26', 'salah', 130, 52, 37, 99, '2018-08-05 23:56:26', '2018-08-05 23:56:26'),
(74, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 13:56:31', '2018-08-06 13:56:31', '2018-08-06 13:56:31', 'benar', 136, 52, 37, 99, '2018-08-05 23:56:31', '2018-08-05 23:56:31'),
(75, 'Soal Matrix-PG', '0011223', '2018-08-06 13:56:35', '2018-08-06 13:56:35', '2018-08-06 13:56:35', 'salah', 137, 52, 37, 100, '2018-08-05 23:56:35', '2018-08-05 23:56:35'),
(76, 'Soal Hash-1', '8', '2018-08-06 13:56:36', '2018-08-06 13:56:36', '2018-08-06 13:56:36', 'salah', 139, 52, 37, 101, '2018-08-05 23:56:36', '2018-08-05 23:56:36'),
(77, 'Soal Btree-Hapus', '44 dan 85', '2018-08-06 13:56:41', '2018-08-06 13:56:41', '2018-08-06 13:56:41', 'salah', 131, 52, 37, 97, '2018-08-05 23:56:41', '2018-08-05 23:56:41'),
(78, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:56:46', '2018-08-06 13:56:46', '2018-08-06 13:56:46', 'salah', 127, 52, 37, 99, '2018-08-05 23:56:46', '2018-08-05 23:56:46'),
(79, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 13:56:46', '2018-08-06 13:56:46', '2018-08-06 13:56:46', 'benar', 140, 52, 37, 99, '2018-08-05 23:56:46', '2018-08-05 23:56:46'),
(80, 'Soal Graph-BFS', 'ABFDEGC', '2018-08-06 14:11:14', '2018-08-06 14:11:14', '2018-08-06 14:11:14', 'salah', 138, 52, 37, 99, '2018-08-06 07:11:14', '2018-08-06 00:11:14'),
(81, 'Soal Matrix-PG', '0112223', '2018-08-06 13:57:09', '2018-08-06 13:57:09', '2018-08-06 13:57:09', 'salah', 127, 52, 37, 100, '2018-08-05 23:57:09', '2018-08-05 23:57:09'),
(82, 'Soal Btree-Hapus', '44 dan 85', '2018-08-06 13:57:09', '2018-08-06 13:57:09', '2018-08-06 13:57:09', 'salah', 133, 52, 37, 97, '2018-08-05 23:57:09', '2018-08-05 23:57:09'),
(83, 'Soal Hash-1', '8', '2018-08-06 13:57:17', '2018-08-06 13:57:17', '2018-08-06 13:57:17', 'salah', 137, 52, 37, 101, '2018-08-05 23:57:17', '2018-08-05 23:57:17'),
(84, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:57:22', '2018-08-06 13:57:22', '2018-08-06 13:57:22', 'benar', 126, 52, 37, 98, '2018-08-05 23:57:22', '2018-08-05 23:57:22'),
(85, 'Soal Matrix-PG', '0012223', '2018-08-06 13:57:24', '2018-08-06 13:57:24', '2018-08-06 13:57:24', 'benar', 136, 52, 37, 100, '2018-08-05 23:57:24', '2018-08-05 23:57:24'),
(86, 'Soal Matrix-PG', '0011223', '2018-08-06 13:57:39', '2018-08-06 13:57:39', '2018-08-06 13:57:39', 'salah', 130, 52, 37, 100, '2018-08-05 23:57:39', '2018-08-05 23:57:39'),
(87, 'Soal Matrix-PG', '0012223', '2018-08-06 13:57:46', '2018-08-06 13:57:46', '2018-08-06 13:57:46', 'benar', 140, 52, 37, 100, '2018-08-05 23:57:46', '2018-08-05 23:57:46'),
(88, 'Soal Matrix-PG', '0012223', '2018-08-06 14:11:28', '2018-08-06 14:11:28', '2018-08-06 14:11:28', 'benar', 138, 52, 37, 100, '2018-08-06 07:11:29', '2018-08-06 00:11:29'),
(89, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:57:59', '2018-08-06 13:57:59', '2018-08-06 13:57:59', 'salah', 126, 52, 37, 99, '2018-08-05 23:57:59', '2018-08-05 23:57:59'),
(90, 'Soal Hash-1', '1', '2018-08-06 13:58:06', '2018-08-06 13:58:06', '2018-08-06 13:58:06', 'benar', 127, 52, 37, 101, '2018-08-05 23:58:06', '2018-08-05 23:58:06'),
(91, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:58:06', '2018-08-06 13:58:06', '2018-08-06 13:58:06', 'benar', 131, 52, 37, 98, '2018-08-05 23:58:06', '2018-08-05 23:58:06'),
(92, 'Soal Hash-2', '25 dan 4', '2018-08-06 13:58:15', '2018-08-06 13:58:15', '2018-08-06 13:58:15', 'benar', 141, 52, 37, 102, '2018-08-05 23:58:15', '2018-08-05 23:58:15'),
(93, 'Soal Hash-1', '1', '2018-08-06 13:58:22', '2018-08-06 13:58:22', '2018-08-06 13:58:22', 'benar', 136, 52, 37, 101, '2018-08-05 23:58:22', '2018-08-05 23:58:22'),
(94, 'Soal Btree-Tambah-1', '20 42 dan 44 48', '2018-08-06 13:58:23', '2018-08-06 13:58:23', '2018-08-06 13:58:23', 'salah', 128, 52, 37, 95, '2018-08-05 23:58:23', '2018-08-05 23:58:23'),
(95, 'Soal Hash-1', '1', '2018-08-06 13:58:28', '2018-08-06 13:58:28', '2018-08-06 13:58:28', 'benar', 140, 52, 37, 101, '2018-08-05 23:58:28', '2018-08-05 23:58:28'),
(96, 'Soal Matrix-PG', '0012223', '2018-08-06 13:58:31', '2018-08-06 13:58:31', '2018-08-06 13:58:31', 'benar', 134, 52, 37, 100, '2018-08-05 23:58:31', '2018-08-05 23:58:31'),
(97, 'Soal Matrix-PG', '0012223', '2018-08-06 13:58:32', '2018-08-06 13:58:32', '2018-08-06 13:58:32', 'benar', 126, 52, 37, 100, '2018-08-05 23:58:32', '2018-08-05 23:58:32'),
(98, 'Soal Hash-1', '3', '2018-08-06 13:58:40', '2018-08-06 13:58:40', '2018-08-06 13:58:40', 'salah', 130, 52, 37, 101, '2018-08-05 23:58:40', '2018-08-05 23:58:40'),
(99, 'Soal Hash-2', '25 dan 4', '2018-08-06 13:58:54', '2018-08-06 13:58:54', '2018-08-06 13:58:54', 'benar', 137, 52, 37, 102, '2018-08-06 06:58:54', '2018-08-05 23:58:54'),
(100, 'Soal Hash-1', '8', '2018-08-06 14:11:37', '2018-08-06 14:11:37', '2018-08-06 14:11:37', 'salah', 138, 52, 37, 101, '2018-08-06 07:11:37', '2018-08-06 00:11:37'),
(101, 'Soal Hash-2', '25 dan 4', '2018-08-06 13:58:49', '2018-08-06 13:58:49', '2018-08-06 13:58:49', 'benar', 139, 52, 37, 102, '2018-08-05 23:58:49', '2018-08-05 23:58:49'),
(102, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:58:49', '2018-08-06 13:58:49', '2018-08-06 13:58:49', 'salah', 133, 52, 37, 99, '2018-08-05 23:58:49', '2018-08-05 23:58:49'),
(103, 'Soal Graph-Memori', 'Array dua dimensi', '2018-08-06 13:58:58', '2018-08-06 13:58:58', '2018-08-06 13:58:58', 'salah', 127, 52, 37, 98, '2018-08-05 23:58:58', '2018-08-05 23:58:58'),
(104, 'Soal Hash-1', '1', '2018-08-06 13:59:06', '2018-08-06 13:59:06', '2018-08-06 13:59:06', 'benar', 126, 52, 37, 101, '2018-08-05 23:59:06', '2018-08-05 23:59:06'),
(105, 'Soal Btree-Tambah-2', '34 50 85', '2018-08-06 13:59:21', '2018-08-06 13:59:21', '2018-08-06 13:59:21', 'salah', 128, 52, 37, 96, '2018-08-05 23:59:21', '2018-08-05 23:59:21'),
(106, 'Soal Graph-Memori', 'Adjacency list atau adjacency matrix', '2018-08-06 13:59:24', '2018-08-06 13:59:24', '2018-08-06 13:59:24', 'benar', 141, 52, 37, 98, '2018-08-05 23:59:24', '2018-08-05 23:59:24'),
(107, 'Soal Graph-BFS', 'ABECDFG', '2018-08-06 13:59:26', '2018-08-06 13:59:26', '2018-08-06 13:59:26', 'salah', 142, 52, 37, 99, '2018-08-05 23:59:26', '2018-08-05 23:59:26'),
(108, 'Soal Btree-Hapus', 'Hanya tinggal 85', '2018-08-06 13:59:29', '2018-08-06 13:59:29', '2018-08-06 13:59:29', 'salah', 128, 52, 37, 97, '2018-08-05 23:59:29', '2018-08-05 23:59:29'),
(109, 'Soal Graph-Memori', 'Array dua dimensi', '2018-08-06 13:59:53', '2018-08-06 13:59:53', '2018-08-06 13:59:53', 'salah', 128, 52, 37, 98, '2018-08-05 23:59:53', '2018-08-05 23:59:53'),
(110, 'Soal Hash-2', '25 dan 4', '2018-08-06 14:11:46', '2018-08-06 14:11:46', '2018-08-06 14:11:46', 'benar', 138, 52, 37, 102, '2018-08-06 07:11:46', '2018-08-06 00:11:46'),
(111, 'Soal Hash-1', '1', '2018-08-06 14:00:07', '2018-08-06 14:00:07', '2018-08-06 14:00:07', 'benar', 134, 52, 37, 101, '2018-08-06 00:00:07', '2018-08-06 00:00:07'),
(112, 'Soal Hash-2', '25 dan 4', '2018-08-06 14:00:14', '2018-08-06 14:00:14', '2018-08-06 14:00:14', 'benar', 126, 52, 37, 102, '2018-08-06 00:00:14', '2018-08-06 00:00:14'),
(113, 'Soal Hash-2', '25 dan 4', '2018-08-06 14:00:46', '2018-08-06 14:00:46', '2018-08-06 14:00:46', 'benar', 136, 52, 37, 102, '2018-08-06 00:00:46', '2018-08-06 00:00:46'),
(114, 'Soal Hash-2', '12 dan 25', '2018-08-06 14:00:56', '2018-08-06 14:00:56', '2018-08-06 14:00:56', 'salah', 130, 52, 37, 102, '2018-08-06 00:00:56', '2018-08-06 00:00:56'),
(115, 'Soal Btree-Hapus', 'Hanya tinggal 85', '2018-08-06 14:01:02', '2018-08-06 14:01:02', '2018-08-06 14:01:02', 'salah', 132, 52, 37, 97, '2018-08-06 00:01:02', '2018-08-06 00:01:02'),
(116, 'Soal Hash-2', '25 dan 4', '2018-08-06 14:01:18', '2018-08-06 14:01:18', '2018-08-06 14:01:18', 'benar', 140, 52, 37, 102, '2018-08-06 07:01:18', '2018-08-06 00:01:18'),
(117, 'Soal Matrix-PG', '0012223', '2018-08-06 14:01:08', '2018-08-06 14:01:08', '2018-08-06 14:01:08', 'benar', 142, 52, 37, 100, '2018-08-06 00:01:08', '2018-08-06 00:01:08'),
(118, 'Soal Matrix-PG', '0012223', '2018-08-06 14:01:45', '2018-08-06 14:01:45', '2018-08-06 14:01:45', 'benar', 133, 52, 37, 100, '2018-08-06 00:01:45', '2018-08-06 00:01:45'),
(119, 'Soal Hash-1', '8', '2018-08-06 14:01:58', '2018-08-06 14:01:58', '2018-08-06 14:01:58', 'salah', 142, 52, 37, 101, '2018-08-06 00:01:58', '2018-08-06 00:01:58'),
(120, 'Soal Matrix-PG', '0012233', '2018-08-06 14:02:01', '2018-08-06 14:02:01', '2018-08-06 14:02:01', 'salah', 132, 52, 37, 100, '2018-08-06 00:02:01', '2018-08-06 00:02:01'),
(121, 'Soal Graph-BFS', 'ABCEDFG', '2018-08-06 14:02:07', '2018-08-06 14:02:07', '2018-08-06 14:02:07', 'salah', 128, 52, 37, 99, '2018-08-06 00:02:07', '2018-08-06 00:02:07'),
(122, 'Soal Graph-BFS', 'ABFEDGC', '2018-08-06 14:02:32', '2018-08-06 14:02:32', '2018-08-06 14:02:32', 'benar', 131, 52, 37, 99, '2018-08-06 00:02:32', '2018-08-06 00:02:32'),
(123, 'Soal Hash-1', '1', '2018-08-06 14:02:34', '2018-08-06 14:02:34', '2018-08-06 14:02:34', 'benar', 133, 52, 37, 101, '2018-08-06 00:02:34', '2018-08-06 00:02:34'),
(124, 'Soal Matrix-PG', '0012233', '2018-08-06 14:02:34', '2018-08-06 14:02:34', '2018-08-06 14:02:34', 'salah', 128, 52, 37, 100, '2018-08-06 00:02:34', '2018-08-06 00:02:34'),
(125, 'Soal Graph-Memori', 'List Linier', '2018-08-06 14:02:58', '2018-08-06 14:02:58', '2018-08-06 14:02:58', 'salah', 133, 52, 37, 98, '2018-08-06 00:02:58', '2018-08-06 00:02:58'),
(126, 'Soal Hash-1', '8', '2018-08-06 14:02:59', '2018-08-06 14:02:59', '2018-08-06 14:02:59', 'salah', 132, 52, 37, 101, '2018-08-06 00:02:59', '2018-08-06 00:02:59'),
(127, 'Soal Hash-1', '8', '2018-08-06 14:03:21', '2018-08-06 14:03:21', '2018-08-06 14:03:21', 'salah', 128, 52, 37, 101, '2018-08-06 00:03:21', '2018-08-06 00:03:21'),
(128, 'Soal Hash-2', '4 dan 9', '2018-08-06 14:03:26', '2018-08-06 14:03:26', '2018-08-06 14:03:26', 'salah', 127, 52, 37, 102, '2018-08-06 00:03:26', '2018-08-06 00:03:26'),
(129, 'Soal Hash-2', '4 dan 9', '2018-08-06 14:04:02', '2018-08-06 14:04:02', '2018-08-06 14:04:02', 'salah', 133, 52, 37, 102, '2018-08-06 00:04:02', '2018-08-06 00:04:02'),
(130, 'Soal Graph-Memori', 'Adjacency list', '2018-08-06 14:04:03', '2018-08-06 14:04:03', '2018-08-06 14:04:03', 'salah', 140, 52, 37, 98, '2018-08-06 00:04:03', '2018-08-06 00:04:03'),
(131, 'Soal Hash-2', '25 dan 4', '2018-08-06 14:05:35', '2018-08-06 14:05:35', '2018-08-06 14:05:35', 'benar', 142, 52, 37, 102, '2018-08-06 07:05:35', '2018-08-06 00:05:35'),
(132, 'Soal Hash-2', '4 dan 9', '2018-08-06 14:04:58', '2018-08-06 14:04:58', '2018-08-06 14:04:58', 'salah', 134, 52, 37, 102, '2018-08-06 00:04:58', '2018-08-06 00:04:58'),
(133, 'Soal Hash-2', '12 dan 17', '2018-08-06 14:05:22', '2018-08-06 14:05:22', '2018-08-06 14:05:22', 'salah', 132, 52, 37, 102, '2018-08-06 00:05:22', '2018-08-06 00:05:22'),
(134, 'Soal Hash-2', '12 dan 17', '2018-08-06 14:05:26', '2018-08-06 14:05:26', '2018-08-06 14:05:26', 'salah', 128, 52, 37, 102, '2018-08-06 00:05:26', '2018-08-06 00:05:26'),
(135, 'Soal Matrix-PG', '0012223', '2018-08-06 14:05:47', '2018-08-06 14:05:47', '2018-08-06 14:05:47', 'benar', 131, 52, 37, 100, '2018-08-06 00:05:47', '2018-08-06 00:05:47'),
(136, 'Soal Hash-1', '8', '2018-08-06 14:07:25', '2018-08-06 14:07:25', '2018-08-06 14:07:25', 'salah', 131, 52, 37, 101, '2018-08-06 07:07:25', '2018-08-06 00:07:25'),
(137, 'Soal Hash-2', '4 dan 9', '2018-08-06 14:09:32', '2018-08-06 14:09:32', '2018-08-06 14:09:32', 'salah', 131, 52, 37, 102, '2018-08-06 07:09:32', '2018-08-06 00:09:32'),
(138, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:08:46', '2018-09-03 09:08:46', '2018-09-03 09:08:46', 'benar', 172, 55, 38, 103, '2018-09-02 19:08:46', '2018-09-02 19:08:46'),
(139, 'TIPE DATA-1', 'x = 2; z = 2', '2018-09-03 09:08:48', '2018-09-03 09:08:48', '2018-09-03 09:08:48', 'salah', 191, 55, 38, 103, '2018-09-02 19:08:48', '2018-09-02 19:08:48'),
(140, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:24:03', '2018-09-03 09:24:03', '2018-09-03 09:24:03', 'salah', 171, 55, 38, 103, '2018-09-03 02:24:03', '2018-09-02 19:24:03'),
(141, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:09:08', '2018-09-03 09:09:08', '2018-09-03 09:09:08', 'salah', 174, 55, 38, 103, '2018-09-02 19:09:08', '2018-09-02 19:09:08'),
(142, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:09:09', '2018-09-03 09:09:09', '2018-09-03 09:09:09', 'benar', 175, 55, 38, 103, '2018-09-02 19:09:09', '2018-09-02 19:09:09'),
(143, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:18:46', '2018-09-03 09:18:46', '2018-09-03 09:18:46', 'salah', 177, 55, 38, 103, '2018-09-03 02:18:46', '2018-09-02 19:18:46'),
(144, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-10 09:18:46', '2018-09-10 09:18:46', '2018-09-10 09:18:46', 'salah', 185, 55, 38, 103, '2018-09-10 02:18:46', '2018-09-09 19:18:46'),
(145, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:09:35', '2018-09-03 09:09:35', '2018-09-03 09:09:35', 'benar', 169, 55, 38, 103, '2018-09-02 19:09:35', '2018-09-02 19:09:35'),
(146, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:09:36', '2018-09-03 09:09:36', '2018-09-03 09:09:36', 'salah', 173, 55, 38, 103, '2018-09-02 19:09:36', '2018-09-02 19:09:36'),
(147, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:09:42', '2018-09-03 09:09:42', '2018-09-03 09:09:42', 'benar', 189, 55, 38, 103, '2018-09-02 19:09:42', '2018-09-02 19:09:42'),
(148, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-03 09:09:43', '2018-09-03 09:09:43', '2018-09-03 09:09:43', 'salah', 171, 55, 38, 104, '2018-09-02 19:09:43', '2018-09-02 19:09:43'),
(149, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:09:47', '2018-09-03 09:09:47', '2018-09-03 09:09:47', 'benar', 191, 55, 38, 104, '2018-09-02 19:09:47', '2018-09-02 19:09:47'),
(150, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:09:52', '2018-09-03 09:09:52', '2018-09-03 09:09:52', 'benar', 175, 55, 38, 104, '2018-09-02 19:09:52', '2018-09-02 19:09:52'),
(151, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:12:00', '2018-09-03 09:12:00', '2018-09-03 09:12:00', 'benar', 184, 55, 38, 103, '2018-09-03 02:12:00', '2018-09-02 19:12:00'),
(152, 'TIPE DATA-2', 'float, integer, boolean', '2018-09-03 09:09:58', '2018-09-03 09:09:58', '2018-09-03 09:09:58', 'salah', 172, 55, 38, 104, '2018-09-02 19:09:58', '2018-09-02 19:09:58'),
(153, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:10:04', '2018-09-03 09:10:04', '2018-09-03 09:10:04', 'benar', 188, 55, 38, 103, '2018-09-02 19:10:04', '2018-09-02 19:10:04'),
(154, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 09:10:11', '2018-09-03 09:10:11', '2018-09-03 09:10:11', 'salah', 191, 55, 38, 105, '2018-09-02 19:10:11', '2018-09-02 19:10:11'),
(155, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-03 09:10:18', '2018-09-03 09:10:18', '2018-09-03 09:10:18', 'salah', 180, 55, 38, 103, '2018-09-02 19:10:18', '2018-09-02 19:10:18'),
(156, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:10:19', '2018-09-03 09:10:19', '2018-09-03 09:10:19', 'benar', 169, 55, 38, 104, '2018-09-02 19:10:19', '2018-09-02 19:10:19'),
(157, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:10:25', '2018-09-03 09:10:25', '2018-09-03 09:10:25', 'benar', 178, 55, 38, 104, '2018-09-02 19:10:25', '2018-09-02 19:10:25'),
(158, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:10:25', '2018-09-03 09:10:25', '2018-09-03 09:10:25', 'benar', 171, 55, 38, 105, '2018-09-02 19:10:25', '2018-09-02 19:10:25'),
(159, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-10 09:20:38', '2018-09-10 09:20:38', '2018-09-10 09:20:38', 'benar', 185, 55, 38, 104, '2018-09-10 02:20:38', '2018-09-09 19:20:39'),
(160, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:12:08', '2018-09-03 09:12:08', '2018-09-03 09:12:08', 'benar', 192, 55, 38, 103, '2018-09-03 02:12:08', '2018-09-02 19:12:08'),
(161, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:12:54', '2018-09-03 09:12:54', '2018-09-03 09:12:54', 'salah', 170, 55, 38, 103, '2018-09-03 02:12:55', '2018-09-02 19:12:55'),
(162, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:11:13', '2018-09-03 09:11:13', '2018-09-03 09:11:13', 'benar', 175, 55, 38, 105, '2018-09-03 02:11:13', '2018-09-02 19:11:13'),
(163, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:10:40', '2018-09-03 09:10:40', '2018-09-03 09:10:40', 'benar', 172, 55, 38, 105, '2018-09-02 19:10:40', '2018-09-02 19:10:40'),
(164, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:10:41', '2018-09-03 09:10:41', '2018-09-03 09:10:41', 'salah', 182, 55, 38, 103, '2018-09-02 19:10:41', '2018-09-02 19:10:41'),
(165, 'Program AksiT', '7 3', '2018-09-03 09:10:55', '2018-09-03 09:10:55', '2018-09-03 09:10:55', 'benar', 191, 55, 38, 106, '2018-09-02 19:10:55', '2018-09-02 19:10:55'),
(166, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-10 09:21:03', '2018-09-10 09:21:03', '2018-09-10 09:21:03', 'benar', 185, 55, 38, 105, '2018-09-10 02:21:03', '2018-09-09 19:21:03'),
(167, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:11:35', '2018-09-03 09:11:35', '2018-09-03 09:11:35', 'benar', 169, 55, 38, 105, '2018-09-03 02:11:35', '2018-09-02 19:11:35'),
(168, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-03 09:11:09', '2018-09-03 09:11:09', '2018-09-03 09:11:09', 'salah', 180, 55, 38, 104, '2018-09-02 19:11:09', '2018-09-02 19:11:09'),
(169, 'Program AksiT', '7 3', '2018-09-03 09:24:43', '2018-09-03 09:24:43', '2018-09-03 09:24:43', 'benar', 171, 55, 38, 106, '2018-09-03 02:24:43', '2018-09-02 19:24:43'),
(170, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:11:12', '2018-09-03 09:11:12', '2018-09-03 09:11:12', 'benar', 178, 55, 38, 105, '2018-09-02 19:11:13', '2018-09-02 19:11:13'),
(171, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:11:24', '2018-09-03 09:11:24', '2018-09-03 09:11:24', 'benar', 173, 55, 38, 104, '2018-09-02 19:11:24', '2018-09-02 19:11:24'),
(172, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:18:51', '2018-09-03 09:18:51', '2018-09-03 09:18:51', 'benar', 177, 55, 38, 104, '2018-09-03 02:18:51', '2018-09-02 19:18:51'),
(173, 'Program AksiT', '7 3', '2018-09-03 09:11:26', '2018-09-03 09:11:26', '2018-09-03 09:11:26', 'benar', 172, 55, 38, 106, '2018-09-02 19:11:26', '2018-09-02 19:11:26'),
(174, 'Program AksiT', '7 3', '2018-09-03 09:11:49', '2018-09-03 09:11:49', '2018-09-03 09:11:49', 'benar', 175, 55, 38, 106, '2018-09-02 19:11:49', '2018-09-02 19:11:49'),
(175, 'ProgramHitung', '3  1', '2018-09-03 09:11:51', '2018-09-03 09:11:51', '2018-09-03 09:11:51', 'benar', 172, 55, 38, 107, '2018-09-02 19:11:51', '2018-09-02 19:11:51'),
(176, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:11:54', '2018-09-03 09:11:54', '2018-09-03 09:11:54', 'benar', 189, 55, 38, 104, '2018-09-02 19:11:54', '2018-09-02 19:11:54'),
(177, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:11:54', '2018-09-03 09:11:54', '2018-09-03 09:11:54', 'benar', 180, 55, 38, 105, '2018-09-02 19:11:54', '2018-09-02 19:11:54'),
(178, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:12:07', '2018-09-03 09:12:07', '2018-09-03 09:12:07', 'benar', 173, 55, 38, 105, '2018-09-02 19:12:07', '2018-09-02 19:12:07'),
(179, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:12:09', '2018-09-03 09:12:09', '2018-09-03 09:12:09', 'benar', 188, 55, 38, 104, '2018-09-02 19:12:09', '2018-09-02 19:12:09'),
(180, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:12:12', '2018-09-03 09:12:12', '2018-09-03 09:12:12', 'benar', 174, 55, 38, 104, '2018-09-02 19:12:12', '2018-09-02 19:12:12'),
(181, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:18:55', '2018-09-03 09:18:55', '2018-09-03 09:18:55', 'benar', 177, 55, 38, 105, '2018-09-03 02:18:55', '2018-09-02 19:18:55'),
(182, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-03 09:12:19', '2018-09-03 09:12:19', '2018-09-03 09:12:19', 'salah', 184, 55, 38, 104, '2018-09-02 19:12:19', '2018-09-02 19:12:19'),
(183, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:12:21', '2018-09-03 09:12:21', '2018-09-03 09:12:21', 'benar', 192, 55, 38, 104, '2018-09-02 19:12:21', '2018-09-02 19:12:21'),
(184, 'Program AksiT', '7 3', '2018-09-03 09:12:41', '2018-09-03 09:12:41', '2018-09-03 09:12:41', 'benar', 169, 55, 38, 106, '2018-09-02 19:12:41', '2018-09-02 19:12:41'),
(185, 'TIPE DATA-1', 'x = 2.0; z = 2', '2018-09-03 09:12:42', '2018-09-03 09:12:42', '2018-09-03 09:12:42', 'salah', 187, 55, 38, 103, '2018-09-02 19:12:42', '2018-09-02 19:12:42'),
(186, 'ProgramHitung', '3  1', '2018-09-03 09:12:44', '2018-09-03 09:12:44', '2018-09-03 09:12:44', 'benar', 191, 55, 38, 107, '2018-09-02 19:12:44', '2018-09-02 19:12:44'),
(187, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:12:48', '2018-09-03 09:12:48', '2018-09-03 09:12:48', 'benar', 187, 55, 38, 104, '2018-09-02 19:12:48', '2018-09-02 19:12:48'),
(188, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-03 09:12:53', '2018-09-03 09:12:53', '2018-09-03 09:12:53', 'salah', 187, 55, 38, 105, '2018-09-02 19:12:53', '2018-09-02 19:12:53'),
(189, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:12:54', '2018-09-03 09:12:54', '2018-09-03 09:12:54', 'benar', 174, 55, 38, 105, '2018-09-02 19:12:54', '2018-09-02 19:12:54'),
(190, 'Program AksiT', '3 7', '2018-09-03 09:12:58', '2018-09-03 09:12:58', '2018-09-03 09:12:58', 'salah', 187, 55, 38, 106, '2018-09-02 19:12:58', '2018-09-02 19:12:58'),
(191, 'ProgramHitung', '3  1', '2018-09-03 09:13:00', '2018-09-03 09:13:00', '2018-09-03 09:13:00', 'benar', 169, 55, 38, 107, '2018-09-02 19:13:00', '2018-09-02 19:13:00'),
(192, 'Program AksiT', '7 3', '2018-09-03 09:13:04', '2018-09-03 09:13:04', '2018-09-03 09:13:04', 'benar', 180, 55, 38, 106, '2018-09-02 19:13:04', '2018-09-02 19:13:04'),
(193, 'Program AksiT', '7 3', '2018-09-03 09:13:04', '2018-09-03 09:13:04', '2018-09-03 09:13:04', 'benar', 178, 55, 38, 106, '2018-09-02 19:13:04', '2018-09-02 19:13:04'),
(194, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:13:09', '2018-09-03 09:13:09', '2018-09-03 09:13:09', 'benar', 182, 55, 38, 104, '2018-09-02 19:13:09', '2018-09-02 19:13:09'),
(195, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-03 09:13:12', '2018-09-03 09:13:12', '2018-09-03 09:13:12', 'salah', 184, 55, 38, 105, '2018-09-02 19:13:12', '2018-09-02 19:13:12'),
(196, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 09:13:18', '2018-09-03 09:13:18', '2018-09-03 09:13:18', 'salah', 192, 55, 38, 105, '2018-09-02 19:13:18', '2018-09-02 19:13:18'),
(197, 'Program AksiT', '7 3', '2018-09-03 09:13:22', '2018-09-03 09:13:22', '2018-09-03 09:13:22', 'benar', 189, 55, 38, 106, '2018-09-02 19:13:22', '2018-09-02 19:13:22'),
(198, 'ProgramHitung', '3  6', '2018-09-03 09:14:28', '2018-09-03 09:14:28', '2018-09-03 09:14:28', 'salah', 171, 55, 38, 107, '2018-09-03 02:14:28', '2018-09-02 19:14:28'),
(199, 'ProgramHitung', '3  1', '2018-09-03 09:13:34', '2018-09-03 09:13:34', '2018-09-03 09:13:34', 'benar', 175, 55, 38, 107, '2018-09-02 19:13:34', '2018-09-02 19:13:34'),
(200, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:13:46', '2018-09-03 09:13:46', '2018-09-03 09:13:46', 'benar', 170, 55, 38, 104, '2018-09-02 19:13:46', '2018-09-02 19:13:46'),
(201, 'Program AksiT', '7 3', '2018-09-03 09:13:49', '2018-09-03 09:13:49', '2018-09-03 09:13:49', 'benar', 173, 55, 38, 106, '2018-09-02 19:13:49', '2018-09-02 19:13:49'),
(202, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:13:50', '2018-09-03 09:13:50', '2018-09-03 09:13:50', 'benar', 182, 55, 38, 105, '2018-09-02 19:13:50', '2018-09-02 19:13:50'),
(203, 'Program AksiT', '7 3', '2018-09-03 09:18:59', '2018-09-03 09:18:59', '2018-09-03 09:18:59', 'benar', 177, 55, 38, 106, '2018-09-03 02:18:59', '2018-09-02 19:18:59'),
(204, 'Program AksiT', '7 3', '2018-09-03 09:13:53', '2018-09-03 09:13:53', '2018-09-03 09:13:53', 'benar', 184, 55, 38, 106, '2018-09-02 19:13:53', '2018-09-02 19:13:53'),
(205, 'Kondisional-1', 'True', '2018-09-03 09:14:05', '2018-09-03 09:14:05', '2018-09-03 09:14:05', 'benar', 191, 55, 38, 108, '2018-09-03 02:14:05', '2018-09-02 19:14:05'),
(206, 'Rumus-1', 'a(b-c)/b+d', '2018-09-03 09:17:44', '2018-09-03 09:17:44', '2018-09-03 09:17:44', 'salah', 190, 55, 38, 105, '2018-09-03 02:17:44', '2018-09-02 19:17:44'),
(207, 'ProgramHitung', '3  7', '2018-09-03 09:14:07', '2018-09-03 09:14:07', '2018-09-03 09:14:07', 'salah', 187, 55, 38, 107, '2018-09-02 19:14:07', '2018-09-02 19:14:07'),
(208, 'Program AksiT', '7 3', '2018-09-03 09:14:08', '2018-09-03 09:14:08', '2018-09-03 09:14:08', 'benar', 174, 55, 38, 106, '2018-09-02 19:14:08', '2018-09-02 19:14:08'),
(209, 'Kondisional-1', 'False', '2018-09-03 09:14:15', '2018-09-03 09:14:15', '2018-09-03 09:14:15', 'salah', 169, 55, 38, 108, '2018-09-02 19:14:15', '2018-09-02 19:14:15'),
(210, 'Kondisional-1', 'True', '2018-09-03 09:14:19', '2018-09-03 09:14:19', '2018-09-03 09:14:19', 'benar', 172, 55, 38, 108, '2018-09-02 19:14:19', '2018-09-02 19:14:19'),
(211, 'Kondisional-1', 'False', '2018-09-03 09:14:25', '2018-09-03 09:14:25', '2018-09-03 09:14:25', 'salah', 175, 55, 38, 108, '2018-09-02 19:14:25', '2018-09-02 19:14:25'),
(212, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:14:30', '2018-09-03 09:14:30', '2018-09-03 09:14:30', 'benar', 179, 55, 38, 104, '2018-09-02 19:14:30', '2018-09-02 19:14:30'),
(213, 'ProgramHitung', '3  7', '2018-09-03 09:14:38', '2018-09-03 09:14:38', '2018-09-03 09:14:38', 'salah', 178, 55, 38, 107, '2018-09-02 19:14:38', '2018-09-02 19:14:38'),
(214, 'Program AksiT', '7 3', '2018-09-03 09:14:39', '2018-09-03 09:14:39', '2018-09-03 09:14:39', 'benar', 192, 55, 38, 106, '2018-09-02 19:14:39', '2018-09-02 19:14:39'),
(215, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 09:14:41', '2018-09-03 09:14:41', '2018-09-03 09:14:41', 'salah', 188, 55, 38, 105, '2018-09-02 19:14:41', '2018-09-02 19:14:41'),
(216, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:14:46', '2018-09-03 09:14:46', '2018-09-03 09:14:46', 'benar', 170, 55, 38, 105, '2018-09-02 19:14:46', '2018-09-02 19:14:46'),
(217, 'ProgramHitung', '3  1', '2018-09-10 09:25:12', '2018-09-10 09:25:12', '2018-09-10 09:25:12', 'benar', 185, 55, 38, 107, '2018-09-10 02:25:12', '2018-09-09 19:25:12'),
(218, 'Kondisional-1', 'True', '2018-09-03 09:14:59', '2018-09-03 09:14:59', '2018-09-03 09:14:59', 'benar', 187, 55, 38, 108, '2018-09-03 02:14:59', '2018-09-02 19:14:59'),
(219, 'ProgramHitung', '3  1', '2018-09-03 09:15:03', '2018-09-03 09:15:03', '2018-09-03 09:15:03', 'benar', 189, 55, 38, 107, '2018-09-02 19:15:03', '2018-09-02 19:15:03'),
(220, 'Kondisional-1', 'False', '2018-09-03 09:15:09', '2018-09-03 09:15:09', '2018-09-03 09:15:09', 'salah', 185, 55, 38, 108, '2018-09-02 19:15:09', '2018-09-02 19:15:09'),
(221, 'Program AksiT', '7 7', '2018-09-03 09:17:55', '2018-09-03 09:17:55', '2018-09-03 09:17:55', 'salah', 190, 55, 38, 106, '2018-09-03 02:17:55', '2018-09-02 19:17:55'),
(222, 'ProgramHitung', '3  1', '2018-09-03 09:15:20', '2018-09-03 09:15:20', '2018-09-03 09:15:20', 'benar', 173, 55, 38, 107, '2018-09-02 19:15:20', '2018-09-02 19:15:20'),
(223, 'Program AksiT', '7 3', '2018-09-03 09:15:21', '2018-09-03 09:15:21', '2018-09-03 09:15:21', 'benar', 182, 55, 38, 106, '2018-09-02 19:15:21', '2018-09-02 19:15:21'),
(224, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:15:53', '2018-09-03 09:15:53', '2018-09-03 09:15:53', 'benar', 179, 55, 38, 105, '2018-09-02 19:15:53', '2018-09-02 19:15:53'),
(225, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:15:59', '2018-09-03 09:15:59', '2018-09-03 09:15:59', 'benar', 178, 55, 38, 103, '2018-09-02 19:16:00', '2018-09-02 19:16:00'),
(226, 'ProgramHitung', '3  1', '2018-09-03 09:16:11', '2018-09-03 09:16:11', '2018-09-03 09:16:11', 'benar', 184, 55, 38, 107, '2018-09-02 19:16:11', '2018-09-02 19:16:11'),
(227, 'ProgramHitung', '3  1', '2018-09-03 09:16:22', '2018-09-03 09:16:22', '2018-09-03 09:16:22', 'benar', 174, 55, 38, 107, '2018-09-02 19:16:22', '2018-09-02 19:16:22'),
(228, 'Kondisional-1', 'False', '2018-09-03 09:16:41', '2018-09-03 09:16:41', '2018-09-03 09:16:41', 'salah', 173, 55, 38, 108, '2018-09-03 02:16:41', '2018-09-02 19:16:41'),
(229, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:16:31', '2018-09-03 09:16:31', '2018-09-03 09:16:31', 'benar', 193, 55, 38, 103, '2018-09-02 19:16:31', '2018-09-02 19:16:31'),
(230, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:16:39', '2018-09-03 09:16:39', '2018-09-03 09:16:39', 'benar', 193, 55, 38, 104, '2018-09-02 19:16:39', '2018-09-02 19:16:39'),
(231, 'Program AksiT', '7 3', '2018-09-03 09:16:39', '2018-09-03 09:16:39', '2018-09-03 09:16:39', 'benar', 188, 55, 38, 106, '2018-09-02 19:16:39', '2018-09-02 19:16:39'),
(232, 'ProgramHitung', '3  1', '2018-09-03 09:16:40', '2018-09-03 09:16:40', '2018-09-03 09:16:40', 'benar', 192, 55, 38, 107, '2018-09-02 19:16:40', '2018-09-02 19:16:40'),
(233, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:16:44', '2018-09-03 09:16:44', '2018-09-03 09:16:44', 'benar', 193, 55, 38, 105, '2018-09-02 19:16:44', '2018-09-02 19:16:44'),
(234, 'Program AksiT', '7 3', '2018-09-03 09:16:56', '2018-09-03 09:16:56', '2018-09-03 09:16:56', 'benar', 170, 55, 38, 106, '2018-09-02 19:16:56', '2018-09-02 19:16:56'),
(235, 'Program AksiT', '7 3', '2018-09-03 09:16:59', '2018-09-03 09:16:59', '2018-09-03 09:16:59', 'benar', 193, 55, 38, 106, '2018-09-02 19:16:59', '2018-09-02 19:16:59'),
(236, 'Kondisional-1', 'True', '2018-09-03 09:21:59', '2018-09-03 09:21:59', '2018-09-03 09:21:59', 'benar', 192, 55, 38, 108, '2018-09-03 02:21:59', '2018-09-02 19:21:59'),
(237, 'Kondisional-1', 'True', '2018-09-03 09:17:09', '2018-09-03 09:17:09', '2018-09-03 09:17:09', 'benar', 178, 55, 38, 108, '2018-09-02 19:17:09', '2018-09-02 19:17:09'),
(238, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-03 09:17:19', '2018-09-03 09:17:19', '2018-09-03 09:17:19', 'salah', 190, 55, 38, 103, '2018-09-02 19:17:19', '2018-09-02 19:17:19'),
(239, 'Kondisional-1', 'True', '2018-09-03 09:18:47', '2018-09-03 09:18:47', '2018-09-03 09:18:47', 'benar', 180, 55, 38, 108, '2018-09-03 02:18:47', '2018-09-02 19:18:47'),
(240, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-03 09:17:36', '2018-09-03 09:17:36', '2018-09-03 09:17:36', 'salah', 190, 55, 38, 104, '2018-09-02 19:17:36', '2018-09-02 19:17:36'),
(241, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 09:17:50', '2018-09-03 09:17:50', '2018-09-03 09:17:50', 'salah', 179, 55, 38, 103, '2018-09-02 19:17:50', '2018-09-02 19:17:50'),
(242, 'ProgramHitung', '3  1', '2018-09-03 09:17:54', '2018-09-03 09:17:54', '2018-09-03 09:17:54', 'benar', 182, 55, 38, 107, '2018-09-02 19:17:54', '2018-09-02 19:17:54'),
(243, 'Kondisional-1', 'False', '2018-09-03 09:17:54', '2018-09-03 09:17:54', '2018-09-03 09:17:54', 'salah', 189, 55, 38, 108, '2018-09-02 19:17:54', '2018-09-02 19:17:54'),
(244, 'Kondisional-1', 'False', '2018-09-03 09:17:59', '2018-09-03 09:17:59', '2018-09-03 09:17:59', 'salah', 174, 55, 38, 108, '2018-09-02 19:17:59', '2018-09-02 19:17:59'),
(245, 'ProgramHitung', '3  1', '2018-09-03 09:18:33', '2018-09-03 09:18:33', '2018-09-03 09:18:33', 'benar', 190, 55, 38, 107, '2018-09-03 02:18:33', '2018-09-02 19:18:33'),
(246, 'ProgramHitung', '3  1', '2018-09-03 09:18:12', '2018-09-03 09:18:12', '2018-09-03 09:18:12', 'benar', 193, 55, 38, 107, '2018-09-02 19:18:12', '2018-09-02 19:18:12'),
(247, 'Kondisional-1', 'False', '2018-09-03 09:18:17', '2018-09-03 09:18:17', '2018-09-03 09:18:17', 'salah', 190, 55, 38, 108, '2018-09-02 19:18:17', '2018-09-02 19:18:17'),
(248, 'Kondisional-1', 'False', '2018-09-03 09:18:23', '2018-09-03 09:18:23', '2018-09-03 09:18:23', 'salah', 193, 55, 38, 108, '2018-09-02 19:18:23', '2018-09-02 19:18:23'),
(249, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-03 09:18:26', '2018-09-03 09:18:26', '2018-09-03 09:18:26', 'salah', 181, 55, 38, 103, '2018-09-02 19:18:26', '2018-09-02 19:18:26'),
(250, 'ProgramHitung', '3  6', '2018-09-03 09:18:28', '2018-09-03 09:18:28', '2018-09-03 09:18:28', 'salah', 180, 55, 38, 107, '2018-09-02 19:18:28', '2018-09-02 19:18:28'),
(251, 'ProgramHitung', '3  1', '2018-09-03 09:18:42', '2018-09-03 09:18:42', '2018-09-03 09:18:42', 'benar', 170, 55, 38, 107, '2018-09-02 19:18:42', '2018-09-02 19:18:42'),
(252, 'ProgramHitung', '3  1', '2018-09-03 09:18:44', '2018-09-03 09:18:44', '2018-09-03 09:18:44', 'benar', 188, 55, 38, 107, '2018-09-02 19:18:44', '2018-09-02 19:18:44'),
(253, 'Program AksiT', '7 3', '2018-09-03 09:19:01', '2018-09-03 09:19:01', '2018-09-03 09:19:01', 'benar', 179, 55, 38, 106, '2018-09-02 19:19:01', '2018-09-02 19:19:01'),
(254, 'ProgramHitung', '3  7', '2018-09-03 09:19:07', '2018-09-03 09:19:07', '2018-09-03 09:19:07', 'salah', 177, 55, 38, 107, '2018-09-02 19:19:07', '2018-09-02 19:19:07'),
(255, 'Kondisional-1', 'True', '2018-09-03 09:19:45', '2018-09-03 09:19:45', '2018-09-03 09:19:45', 'benar', 188, 55, 38, 108, '2018-09-03 02:19:45', '2018-09-02 19:19:45'),
(256, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 09:19:47', '2018-09-03 09:19:47', '2018-09-03 09:19:47', 'salah', 181, 55, 38, 105, '2018-09-02 19:19:47', '2018-09-02 19:19:47'),
(257, 'Kondisional-1', 'True', '2018-09-03 09:20:30', '2018-09-03 09:20:30', '2018-09-03 09:20:30', 'benar', 170, 55, 38, 108, '2018-09-03 02:20:30', '2018-09-02 19:20:30'),
(258, 'Program AksiT', '7 3', '2018-09-10 09:22:26', '2018-09-10 09:22:26', '2018-09-10 09:22:26', 'benar', 185, 55, 38, 106, '2018-09-10 02:22:26', '2018-09-09 19:22:26'),
(259, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 09:21:04', '2018-09-03 09:21:04', '2018-09-03 09:21:04', 'benar', 189, 55, 38, 105, '2018-09-02 19:21:04', '2018-09-02 19:21:04'),
(260, 'ProgramHitung', '3  1', '2018-09-03 09:25:05', '2018-09-03 09:25:05', '2018-09-03 09:25:05', 'benar', 181, 55, 38, 107, '2018-09-03 02:25:05', '2018-09-02 19:25:05'),
(261, 'Kondisional-1', 'False', '2018-09-03 09:21:46', '2018-09-03 09:21:46', '2018-09-03 09:21:46', 'salah', 179, 55, 38, 108, '2018-09-02 19:21:46', '2018-09-02 19:21:46'),
(262, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 09:21:54', '2018-09-03 09:21:54', '2018-09-03 09:21:54', 'benar', 186, 55, 38, 103, '2018-09-02 19:21:54', '2018-09-02 19:21:54'),
(263, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:22:00', '2018-09-03 09:22:00', '2018-09-03 09:22:00', 'benar', 186, 55, 38, 104, '2018-09-02 19:22:00', '2018-09-02 19:22:00'),
(264, 'Kondisional-1', 'False', '2018-09-03 09:22:05', '2018-09-03 09:22:05', '2018-09-03 09:22:05', 'salah', 181, 55, 38, 108, '2018-09-02 19:22:05', '2018-09-02 19:22:05'),
(265, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-03 09:22:06', '2018-09-03 09:22:06', '2018-09-03 09:22:06', 'salah', 186, 55, 38, 105, '2018-09-02 19:22:06', '2018-09-02 19:22:06'),
(266, 'Program AksiT', '7 3', '2018-09-03 09:22:10', '2018-09-03 09:22:10', '2018-09-03 09:22:10', 'benar', 186, 55, 38, 106, '2018-09-02 19:22:10', '2018-09-02 19:22:10'),
(267, 'ProgramHitung', '3  1', '2018-09-03 09:22:14', '2018-09-03 09:22:14', '2018-09-03 09:22:14', 'benar', 186, 55, 38, 107, '2018-09-02 19:22:14', '2018-09-02 19:22:14'),
(268, 'Kondisional-1', 'False', '2018-09-03 09:22:18', '2018-09-03 09:22:18', '2018-09-03 09:22:18', 'salah', 186, 55, 38, 108, '2018-09-02 19:22:18', '2018-09-02 19:22:18'),
(269, 'Kondisional-1', 'False', '2018-09-03 09:23:54', '2018-09-03 09:23:54', '2018-09-03 09:23:54', 'salah', 182, 55, 38, 108, '2018-09-02 19:23:54', '2018-09-02 19:23:54'),
(270, 'Kondisional-1', 'True', '2018-09-03 09:24:10', '2018-09-03 09:24:10', '2018-09-03 09:24:10', 'benar', 184, 55, 38, 108, '2018-09-02 19:24:10', '2018-09-02 19:24:10'),
(271, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 09:24:18', '2018-09-03 09:24:18', '2018-09-03 09:24:18', 'benar', 181, 55, 38, 104, '2018-09-02 19:24:18', '2018-09-02 19:24:18'),
(272, 'ProgramHitung', '3  7', '2018-09-03 09:24:35', '2018-09-03 09:24:35', '2018-09-03 09:24:35', 'salah', 179, 55, 38, 107, '2018-09-02 19:24:35', '2018-09-02 19:24:35'),
(273, 'Program AksiT', '3 7', '2018-09-03 09:24:56', '2018-09-03 09:24:56', '2018-09-03 09:24:56', 'salah', 181, 55, 38, 106, '2018-09-02 19:24:56', '2018-09-02 19:24:56'),
(274, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:16:16', '2018-09-03 15:16:16', '2018-09-03 15:16:16', 'benar', 212, 56, 38, 103, '2018-09-03 01:16:16', '2018-09-03 01:16:16'),
(275, 'TIPE DATA-1', 'x = 2.0; z = 2', '2018-09-03 15:16:23', '2018-09-03 15:16:23', '2018-09-03 15:16:23', 'salah', 200, 56, 38, 103, '2018-09-03 01:16:23', '2018-09-03 01:16:23'),
(276, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:16:33', '2018-09-03 15:16:33', '2018-09-03 15:16:33', 'benar', 204, 56, 38, 103, '2018-09-03 01:16:33', '2018-09-03 01:16:33'),
(277, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:16:44', '2018-09-03 15:16:44', '2018-09-03 15:16:44', 'benar', 202, 56, 38, 103, '2018-09-03 01:16:45', '2018-09-03 01:16:45'),
(278, 'TIPE DATA-1', 'x = 2.0; z = 2', '2018-09-03 15:16:58', '2018-09-03 15:16:58', '2018-09-03 15:16:58', 'salah', 196, 56, 38, 103, '2018-09-03 01:16:58', '2018-09-03 01:16:58'),
(279, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-03 15:17:06', '2018-09-03 15:17:06', '2018-09-03 15:17:06', 'salah', 200, 56, 38, 104, '2018-09-03 01:17:06', '2018-09-03 01:17:06'),
(280, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 15:23:24', '2018-09-03 15:23:24', '2018-09-03 15:23:24', 'salah', 205, 56, 38, 103, '2018-09-03 08:23:24', '2018-09-03 01:23:25'),
(281, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:24:04', '2018-09-03 15:24:04', '2018-09-03 15:24:04', 'benar', 198, 56, 38, 103, '2018-09-03 08:24:04', '2018-09-03 01:24:04'),
(282, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:17:36', '2018-09-03 15:17:36', '2018-09-03 15:17:36', 'benar', 201, 56, 38, 103, '2018-09-03 01:17:36', '2018-09-03 01:17:36');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(283, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-03 15:17:36', '2018-09-03 15:17:36', '2018-09-03 15:17:36', 'salah', 200, 56, 38, 105, '2018-09-03 01:17:36', '2018-09-03 01:17:36'),
(284, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-03 15:17:38', '2018-09-03 15:17:38', '2018-09-03 15:17:38', 'salah', 202, 56, 38, 104, '2018-09-03 01:17:38', '2018-09-03 01:17:38'),
(285, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:17:38', '2018-09-03 15:17:38', '2018-09-03 15:17:38', 'benar', 207, 56, 38, 103, '2018-09-03 01:17:38', '2018-09-03 01:17:38'),
(286, 'TIPE DATA-2', 'float, integer, boolean', '2018-09-03 15:17:45', '2018-09-03 15:17:45', '2018-09-03 15:17:45', 'salah', 196, 56, 38, 104, '2018-09-03 01:17:45', '2018-09-03 01:17:45'),
(287, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:18:02', '2018-09-03 15:18:02', '2018-09-03 15:18:02', 'benar', 202, 56, 38, 105, '2018-09-03 01:18:02', '2018-09-03 01:18:02'),
(288, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-03 15:23:30', '2018-09-03 15:23:30', '2018-09-03 15:23:30', 'salah', 205, 56, 38, 104, '2018-09-03 08:23:30', '2018-09-03 01:23:30'),
(289, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:18:21', '2018-09-03 15:18:21', '2018-09-03 15:18:21', 'benar', 196, 56, 38, 105, '2018-09-03 01:18:21', '2018-09-03 01:18:21'),
(290, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:23:36', '2018-09-03 15:23:36', '2018-09-03 15:23:36', 'benar', 205, 56, 38, 105, '2018-09-03 08:23:36', '2018-09-03 01:23:36'),
(291, 'Program AksiT', '7 3', '2018-09-03 15:18:29', '2018-09-03 15:18:29', '2018-09-03 15:18:29', 'benar', 200, 56, 38, 106, '2018-09-03 01:18:29', '2018-09-03 01:18:29'),
(292, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-03 15:18:31', '2018-09-03 15:18:31', '2018-09-03 15:18:31', 'salah', 207, 56, 38, 104, '2018-09-03 01:18:31', '2018-09-03 01:18:31'),
(293, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:19:05', '2018-09-03 15:19:05', '2018-09-03 15:19:05', 'benar', 207, 56, 38, 105, '2018-09-03 01:19:05', '2018-09-03 01:19:05'),
(294, 'ProgramHitung', '3  1', '2018-09-03 15:19:11', '2018-09-03 15:19:11', '2018-09-03 15:19:11', 'benar', 200, 56, 38, 107, '2018-09-03 01:19:11', '2018-09-03 01:19:11'),
(295, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:19:26', '2018-09-03 15:19:26', '2018-09-03 15:19:26', 'benar', 204, 56, 38, 105, '2018-09-03 01:19:26', '2018-09-03 01:19:26'),
(296, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 15:19:31', '2018-09-03 15:19:31', '2018-09-03 15:19:31', 'benar', 201, 56, 38, 104, '2018-09-03 01:19:31', '2018-09-03 01:19:31'),
(297, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:21:18', '2018-09-03 15:21:18', '2018-09-03 15:21:18', 'benar', 212, 56, 38, 105, '2018-09-03 08:21:18', '2018-09-03 01:21:18'),
(298, 'Program AksiT', '7 3', '2018-09-03 15:21:26', '2018-09-03 15:21:26', '2018-09-03 15:21:26', 'benar', 212, 56, 38, 106, '2018-09-03 08:21:26', '2018-09-03 01:21:26'),
(299, 'Kondisional-1', 'True', '2018-09-03 15:20:48', '2018-09-03 15:20:48', '2018-09-03 15:20:48', 'benar', 200, 56, 38, 108, '2018-09-03 08:20:48', '2018-09-03 01:20:48'),
(300, 'ProgramHitung', '3  1', '2018-09-03 15:21:32', '2018-09-03 15:21:32', '2018-09-03 15:21:32', 'benar', 212, 56, 38, 107, '2018-09-03 08:21:32', '2018-09-03 01:21:32'),
(301, 'ProgramHitung', '3  1', '2018-09-03 15:20:09', '2018-09-03 15:20:09', '2018-09-03 15:20:09', 'benar', 202, 56, 38, 107, '2018-09-03 01:20:09', '2018-09-03 01:20:09'),
(302, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 15:24:23', '2018-09-03 15:24:23', '2018-09-03 15:24:23', 'salah', 195, 56, 38, 105, '2018-09-03 08:24:23', '2018-09-03 01:24:23'),
(303, 'Program AksiT', '7 3', '2018-09-03 15:20:18', '2018-09-03 15:20:18', '2018-09-03 15:20:18', 'benar', 207, 56, 38, 106, '2018-09-03 01:20:18', '2018-09-03 01:20:18'),
(304, 'Program AksiT', '7 3', '2018-09-03 15:20:21', '2018-09-03 15:20:21', '2018-09-03 15:20:21', 'benar', 204, 56, 38, 106, '2018-09-03 01:20:21', '2018-09-03 01:20:21'),
(305, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-03 15:20:23', '2018-09-03 15:20:23', '2018-09-03 15:20:23', 'salah', 201, 56, 38, 105, '2018-09-03 01:20:23', '2018-09-03 01:20:23'),
(306, 'Program AksiT', '7 3', '2018-09-03 15:20:28', '2018-09-03 15:20:28', '2018-09-03 15:20:28', 'benar', 196, 56, 38, 106, '2018-09-03 01:20:28', '2018-09-03 01:20:28'),
(307, 'Kondisional-1', 'True', '2018-09-03 15:20:39', '2018-09-03 15:20:39', '2018-09-03 15:20:39', 'benar', 202, 56, 38, 108, '2018-09-03 01:20:39', '2018-09-03 01:20:39'),
(308, 'TIPE DATA-2', 'float, integer, boolean', '2018-09-03 15:20:53', '2018-09-03 15:20:53', '2018-09-03 15:20:53', 'salah', 212, 56, 38, 104, '2018-09-03 01:20:53', '2018-09-03 01:20:53'),
(309, 'Program AksiT', '3 7', '2018-09-03 15:23:53', '2018-09-03 15:23:53', '2018-09-03 15:23:53', 'salah', 205, 56, 38, 106, '2018-09-03 08:23:53', '2018-09-03 01:23:53'),
(310, 'Kondisional-1', 'False', '2018-09-03 15:21:30', '2018-09-03 15:21:30', '2018-09-03 15:21:30', 'salah', 208, 56, 38, 108, '2018-09-03 01:21:30', '2018-09-03 01:21:30'),
(311, 'ProgramHitung', '3  7', '2018-09-03 15:24:05', '2018-09-03 15:24:05', '2018-09-03 15:24:05', 'salah', 205, 56, 38, 107, '2018-09-03 08:24:05', '2018-09-03 01:24:05'),
(312, 'Program AksiT', '7 3', '2018-09-03 15:24:30', '2018-09-03 15:24:30', '2018-09-03 15:24:30', 'benar', 195, 56, 38, 106, '2018-09-03 08:24:30', '2018-09-03 01:24:30'),
(313, 'Kondisional-1', '2', '2018-09-03 15:24:33', '2018-09-03 15:24:33', '2018-09-03 15:24:33', 'salah', 205, 56, 38, 108, '2018-09-03 08:24:33', '2018-09-03 01:24:33'),
(314, 'ProgramHitung', '3  7', '2018-09-03 15:21:50', '2018-09-03 15:21:50', '2018-09-03 15:21:50', 'salah', 196, 56, 38, 107, '2018-09-03 01:21:50', '2018-09-03 01:21:50'),
(315, 'Program AksiT', '3 7', '2018-09-03 15:21:59', '2018-09-03 15:21:59', '2018-09-03 15:21:59', 'salah', 201, 56, 38, 106, '2018-09-03 01:21:59', '2018-09-03 01:21:59'),
(316, 'ProgramHitung', '3  1', '2018-09-03 15:22:13', '2018-09-03 15:22:13', '2018-09-03 15:22:13', 'benar', 207, 56, 38, 107, '2018-09-03 01:22:13', '2018-09-03 01:22:13'),
(317, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-03 15:22:46', '2018-09-03 15:22:46', '2018-09-03 15:22:46', 'salah', 206, 56, 38, 103, '2018-09-03 01:22:46', '2018-09-03 01:22:46'),
(318, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 15:22:53', '2018-09-03 15:22:53', '2018-09-03 15:22:53', 'benar', 206, 56, 38, 104, '2018-09-03 01:22:53', '2018-09-03 01:22:53'),
(319, 'Kondisional-1', 'True', '2018-09-03 15:26:17', '2018-09-03 15:26:17', '2018-09-03 15:26:17', 'benar', 198, 56, 38, 108, '2018-09-03 08:26:17', '2018-09-03 01:26:17'),
(321, 'ProgramHitung', '3  1', '2018-09-03 15:24:36', '2018-09-03 15:24:36', '2018-09-03 15:24:36', 'benar', 195, 56, 38, 107, '2018-09-03 08:24:36', '2018-09-03 01:24:36'),
(322, 'Kondisional-1', 'True', '2018-09-03 15:23:46', '2018-09-03 15:23:46', '2018-09-03 15:23:46', 'benar', 196, 56, 38, 108, '2018-09-03 08:23:46', '2018-09-03 01:23:46'),
(323, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:23:24', '2018-09-03 15:23:24', '2018-09-03 15:23:24', 'benar', 206, 56, 38, 105, '2018-09-03 01:23:24', '2018-09-03 01:23:24'),
(324, 'ProgramHitung', '3  1', '2018-09-03 15:26:08', '2018-09-03 15:26:08', '2018-09-03 15:26:08', 'benar', 198, 56, 38, 107, '2018-09-03 08:26:08', '2018-09-03 01:26:08'),
(325, 'Program AksiT', '3 3', '2018-09-03 15:23:48', '2018-09-03 15:23:48', '2018-09-03 15:23:48', 'salah', 206, 56, 38, 106, '2018-09-03 01:23:48', '2018-09-03 01:23:48'),
(326, 'TIPE DATA-1', 'x = 2; z = 2', '2018-09-03 15:23:55', '2018-09-03 15:23:55', '2018-09-03 15:23:55', 'salah', 195, 56, 38, 103, '2018-09-03 01:23:55', '2018-09-03 01:23:55'),
(327, 'TIPE DATA-1', 'x = 2.0; z = 2', '2018-09-03 15:24:02', '2018-09-03 15:24:02', '2018-09-03 15:24:02', 'salah', 203, 56, 38, 103, '2018-09-03 01:24:02', '2018-09-03 01:24:02'),
(328, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 15:24:17', '2018-09-03 15:24:17', '2018-09-03 15:24:17', 'benar', 195, 56, 38, 104, '2018-09-03 01:24:17', '2018-09-03 01:24:17'),
(329, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-03 15:24:20', '2018-09-03 15:24:20', '2018-09-03 15:24:20', 'salah', 203, 56, 38, 104, '2018-09-03 01:24:20', '2018-09-03 01:24:20'),
(330, 'ProgramHitung', '3  6', '2018-09-03 15:24:21', '2018-09-03 15:24:21', '2018-09-03 15:24:21', 'salah', 201, 56, 38, 107, '2018-09-03 01:24:21', '2018-09-03 01:24:21'),
(331, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:24:25', '2018-09-03 15:24:25', '2018-09-03 15:24:25', 'benar', 203, 56, 38, 105, '2018-09-03 01:24:25', '2018-09-03 01:24:25'),
(332, 'Program AksiT', '7 3', '2018-09-03 15:24:39', '2018-09-03 15:24:39', '2018-09-03 15:24:39', 'benar', 203, 56, 38, 106, '2018-09-03 01:24:39', '2018-09-03 01:24:39'),
(333, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-03 15:24:47', '2018-09-03 15:24:47', '2018-09-03 15:24:47', 'benar', 194, 56, 38, 103, '2018-09-03 01:24:47', '2018-09-03 01:24:47'),
(334, 'Kondisional-1', '5', '2018-09-03 15:24:50', '2018-09-03 15:24:50', '2018-09-03 15:24:50', 'salah', 195, 56, 38, 108, '2018-09-03 01:24:50', '2018-09-03 01:24:50'),
(335, 'ProgramHitung', '3  1', '2018-09-03 15:24:52', '2018-09-03 15:24:52', '2018-09-03 15:24:52', 'benar', 206, 56, 38, 107, '2018-09-03 01:24:52', '2018-09-03 01:24:52'),
(336, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-03 15:24:53', '2018-09-03 15:24:53', '2018-09-03 15:24:53', 'benar', 198, 56, 38, 104, '2018-09-03 01:24:53', '2018-09-03 01:24:53'),
(337, 'ProgramHitung', '3  7', '2018-09-03 15:24:54', '2018-09-03 15:24:54', '2018-09-03 15:24:54', 'salah', 203, 56, 38, 107, '2018-09-03 01:24:54', '2018-09-03 01:24:54'),
(338, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-03 15:24:56', '2018-09-03 15:24:56', '2018-09-03 15:24:56', 'salah', 194, 56, 38, 104, '2018-09-03 01:24:56', '2018-09-03 01:24:56'),
(339, 'Kondisional-1', 'False', '2018-09-03 15:24:57', '2018-09-03 15:24:57', '2018-09-03 15:24:57', 'salah', 203, 56, 38, 108, '2018-09-03 01:24:57', '2018-09-03 01:24:57'),
(340, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:25:12', '2018-09-03 15:25:12', '2018-09-03 15:25:12', 'benar', 198, 56, 38, 105, '2018-09-03 01:25:12', '2018-09-03 01:25:12'),
(342, 'Kondisional-1', 'False', '2018-09-03 15:25:26', '2018-09-03 15:25:26', '2018-09-03 15:25:26', 'salah', 212, 56, 38, 108, '2018-09-03 01:25:26', '2018-09-03 01:25:26'),
(343, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-03 15:25:29', '2018-09-03 15:25:29', '2018-09-03 15:25:29', 'benar', 194, 56, 38, 105, '2018-09-03 01:25:29', '2018-09-03 01:25:29'),
(344, 'Program AksiT', '7 3', '2018-09-03 15:25:32', '2018-09-03 15:25:32', '2018-09-03 15:25:32', 'benar', 198, 56, 38, 106, '2018-09-03 01:25:32', '2018-09-03 01:25:32'),
(345, 'Kondisional-1', '\'a\'', '2018-09-03 15:26:11', '2018-09-03 15:26:11', '2018-09-03 15:26:11', 'salah', 206, 56, 38, 108, '2018-09-03 08:26:11', '2018-09-03 01:26:11'),
(346, 'Program AksiT', '7 3', '2018-09-03 15:25:43', '2018-09-03 15:25:43', '2018-09-03 15:25:43', 'benar', 194, 56, 38, 106, '2018-09-03 01:25:43', '2018-09-03 01:25:43'),
(347, 'ProgramHitung', '3  1', '2018-09-03 15:25:50', '2018-09-03 15:25:50', '2018-09-03 15:25:50', 'benar', 194, 56, 38, 107, '2018-09-03 01:25:50', '2018-09-03 01:25:50'),
(348, 'Kondisional-1', 'False', '2018-09-03 15:25:52', '2018-09-03 15:25:52', '2018-09-03 15:25:52', 'salah', 201, 56, 38, 108, '2018-09-03 01:25:52', '2018-09-03 01:25:52'),
(349, 'Kondisional-1', 'True', '2018-09-03 15:27:25', '2018-09-03 15:27:25', '2018-09-03 15:27:25', 'benar', 194, 56, 38, 108, '2018-09-03 01:27:25', '2018-09-03 01:27:25'),
(350, 'Kondisional-1', 'False', '2018-09-03 15:27:41', '2018-09-03 15:27:41', '2018-09-03 15:27:41', 'salah', 207, 56, 38, 108, '2018-09-03 01:27:41', '2018-09-03 01:27:41'),
(351, 'IF-1', '5', '2018-09-03 20:26:42', '2018-09-03 20:26:42', '2018-09-03 20:26:42', 'salah', 119, 48, 40, 114, '2018-09-03 13:26:42', '2018-09-03 06:26:42'),
(364, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-05 11:37:42', '2018-09-05 11:37:42', '2018-09-05 11:37:42', 'salah', 146, 54, 38, 103, '2018-09-04 21:37:42', '2018-09-04 21:37:42'),
(365, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:38:07', '2018-09-05 11:38:07', '2018-09-05 11:38:07', 'salah', 151, 54, 38, 103, '2018-09-04 21:38:07', '2018-09-04 21:38:07'),
(366, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-05 11:38:10', '2018-09-05 11:38:10', '2018-09-05 11:38:10', 'benar', 144, 54, 38, 103, '2018-09-04 21:38:10', '2018-09-04 21:38:10'),
(367, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-05 11:50:43', '2018-09-05 11:50:43', '2018-09-05 11:50:43', 'salah', 158, 54, 38, 103, '2018-09-05 04:50:43', '2018-09-04 21:50:43'),
(368, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-05 11:45:26', '2018-09-05 11:45:26', '2018-09-05 11:45:26', 'benar', 152, 54, 38, 103, '2018-09-05 04:45:26', '2018-09-04 21:45:26'),
(369, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:45:41', '2018-09-05 11:45:41', '2018-09-05 11:45:41', 'benar', 152, 54, 38, 104, '2018-09-05 04:45:41', '2018-09-04 21:45:41'),
(370, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-05 11:39:02', '2018-09-05 11:39:02', '2018-09-05 11:39:02', 'salah', 144, 54, 38, 104, '2018-09-04 21:39:02', '2018-09-04 21:39:02'),
(371, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:39:14', '2018-09-05 11:39:14', '2018-09-05 11:39:14', 'benar', 152, 54, 38, 105, '2018-09-04 21:39:14', '2018-09-04 21:39:14'),
(372, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-05 11:39:20', '2018-09-05 11:39:20', '2018-09-05 11:39:20', 'salah', 151, 54, 38, 104, '2018-09-04 21:39:20', '2018-09-04 21:39:20'),
(373, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:39:26', '2018-09-05 11:39:26', '2018-09-05 11:39:26', 'benar', 144, 54, 38, 105, '2018-09-04 21:39:26', '2018-09-04 21:39:26'),
(374, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-05 11:39:31', '2018-09-05 11:39:31', '2018-09-05 11:39:31', 'benar', 149, 54, 38, 103, '2018-09-04 21:39:31', '2018-09-04 21:39:31'),
(375, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:39:34', '2018-09-05 11:39:34', '2018-09-05 11:39:34', 'salah', 147, 54, 38, 103, '2018-09-04 21:39:34', '2018-09-04 21:39:34'),
(376, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-05 11:39:35', '2018-09-05 11:39:35', '2018-09-05 11:39:35', 'benar', 166, 54, 38, 103, '2018-09-04 21:39:35', '2018-09-04 21:39:35'),
(377, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:39:54', '2018-09-05 11:39:54', '2018-09-05 11:39:54', 'salah', 148, 54, 38, 103, '2018-09-05 04:39:54', '2018-09-04 21:39:54'),
(378, 'TIPE DATA-1', 'x = 2.0; z = 2', '2018-09-05 11:39:38', '2018-09-05 11:39:38', '2018-09-05 11:39:38', 'salah', 161, 54, 38, 103, '2018-09-04 21:39:38', '2018-09-04 21:39:38'),
(379, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:39:38', '2018-09-05 11:39:38', '2018-09-05 11:39:38', 'salah', 165, 54, 38, 103, '2018-09-04 21:39:38', '2018-09-04 21:39:38'),
(380, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:39:41', '2018-09-05 11:39:41', '2018-09-05 11:39:41', 'salah', 155, 54, 38, 103, '2018-09-04 21:39:41', '2018-09-04 21:39:41'),
(381, 'Program AksiT', '7 3', '2018-09-05 11:39:41', '2018-09-05 11:39:41', '2018-09-05 11:39:41', 'benar', 152, 54, 38, 106, '2018-09-04 21:39:41', '2018-09-04 21:39:41'),
(382, 'TIPE DATA-1', 'x = 2; z = 2', '2018-09-05 11:46:26', '2018-09-05 11:46:26', '2018-09-05 11:46:26', 'salah', 160, 54, 38, 103, '2018-09-05 04:46:26', '2018-09-04 21:46:26'),
(383, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:39:53', '2018-09-05 11:39:53', '2018-09-05 11:39:53', 'salah', 150, 54, 38, 103, '2018-09-04 21:39:53', '2018-09-04 21:39:53'),
(384, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:40:06', '2018-09-05 11:40:06', '2018-09-05 11:40:06', 'salah', 146, 54, 38, 104, '2018-09-04 21:40:06', '2018-09-04 21:40:06'),
(385, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:40:09', '2018-09-05 11:40:09', '2018-09-05 11:40:09', 'salah', 163, 54, 38, 103, '2018-09-04 21:40:09', '2018-09-04 21:40:09'),
(386, 'ProgramHitung', '3  1', '2018-09-05 11:47:05', '2018-09-05 11:47:05', '2018-09-05 11:47:05', 'benar', 152, 54, 38, 107, '2018-09-05 04:47:05', '2018-09-04 21:47:05'),
(387, 'Program AksiT', '7 3', '2018-09-05 11:40:15', '2018-09-05 11:40:15', '2018-09-05 11:40:15', 'benar', 144, 54, 38, 106, '2018-09-04 21:40:15', '2018-09-04 21:40:15'),
(388, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:40:21', '2018-09-05 11:40:21', '2018-09-05 11:40:21', 'benar', 149, 54, 38, 104, '2018-09-04 21:40:21', '2018-09-04 21:40:21'),
(389, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-05 11:40:26', '2018-09-05 11:40:26', '2018-09-05 11:40:26', 'benar', 156, 54, 38, 103, '2018-09-04 21:40:26', '2018-09-04 21:40:26'),
(390, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:40:29', '2018-09-05 11:40:29', '2018-09-05 11:40:29', 'salah', 154, 54, 38, 103, '2018-09-04 21:40:29', '2018-09-04 21:40:29'),
(391, 'Kondisional-1', 'True', '2018-09-05 11:47:28', '2018-09-05 11:47:28', '2018-09-05 11:47:28', 'benar', 152, 54, 38, 108, '2018-09-05 04:47:28', '2018-09-04 21:47:28'),
(392, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:40:41', '2018-09-05 11:40:41', '2018-09-05 11:40:41', 'salah', 161, 54, 38, 104, '2018-09-04 21:40:41', '2018-09-04 21:40:41'),
(393, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:40:47', '2018-09-05 11:40:47', '2018-09-05 11:40:47', 'benar', 149, 54, 38, 105, '2018-09-04 21:40:47', '2018-09-04 21:40:47'),
(394, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:41:00', '2018-09-05 11:41:00', '2018-09-05 11:41:00', 'benar', 163, 54, 38, 104, '2018-09-04 21:41:00', '2018-09-04 21:41:00'),
(395, 'Rumus-1', '(a*(b-c))/b+d', '2018-09-05 11:41:11', '2018-09-05 11:41:11', '2018-09-05 11:41:11', 'salah', 161, 54, 38, 105, '2018-09-04 21:41:11', '2018-09-04 21:41:11'),
(396, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:47:00', '2018-09-05 11:47:00', '2018-09-05 11:47:00', 'salah', 160, 54, 38, 104, '2018-09-05 04:47:00', '2018-09-04 21:47:00'),
(397, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:41:13', '2018-09-05 11:41:13', '2018-09-05 11:41:13', 'benar', 151, 54, 38, 105, '2018-09-04 21:41:13', '2018-09-04 21:41:13'),
(398, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-05 11:41:24', '2018-09-05 11:41:24', '2018-09-05 11:41:24', 'salah', 167, 54, 38, 103, '2018-09-04 21:41:24', '2018-09-04 21:41:24'),
(399, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:41:26', '2018-09-05 11:41:26', '2018-09-05 11:41:26', 'benar', 147, 54, 38, 104, '2018-09-04 21:41:26', '2018-09-04 21:41:26'),
(400, 'Program AksiT', '7 3', '2018-09-05 11:41:34', '2018-09-05 11:41:34', '2018-09-05 11:41:34', 'benar', 149, 54, 38, 106, '2018-09-04 21:41:34', '2018-09-04 21:41:34'),
(401, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:41:42', '2018-09-05 11:41:42', '2018-09-05 11:41:42', 'benar', 156, 54, 38, 104, '2018-09-04 21:41:42', '2018-09-04 21:41:42'),
(402, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:41:45', '2018-09-05 11:41:45', '2018-09-05 11:41:45', 'benar', 166, 54, 38, 104, '2018-09-04 21:41:45', '2018-09-04 21:41:45'),
(403, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:41:47', '2018-09-05 11:41:47', '2018-09-05 11:41:47', 'benar', 163, 54, 38, 105, '2018-09-04 21:41:47', '2018-09-04 21:41:47'),
(404, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:41:53', '2018-09-05 11:41:53', '2018-09-05 11:41:53', 'benar', 146, 54, 38, 105, '2018-09-04 21:41:53', '2018-09-04 21:41:53'),
(405, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:41:56', '2018-09-05 11:41:56', '2018-09-05 11:41:56', 'salah', 154, 54, 38, 104, '2018-09-04 21:41:56', '2018-09-04 21:41:56'),
(406, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:41:59', '2018-09-05 11:41:59', '2018-09-05 11:41:59', 'benar', 150, 54, 38, 105, '2018-09-04 21:41:59', '2018-09-04 21:41:59'),
(407, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-05 11:42:09', '2018-09-05 11:42:09', '2018-09-05 11:42:09', 'salah', 148, 54, 38, 104, '2018-09-04 21:42:09', '2018-09-04 21:42:09'),
(408, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:42:12', '2018-09-05 11:42:12', '2018-09-05 11:42:12', 'benar', 147, 54, 38, 105, '2018-09-04 21:42:12', '2018-09-04 21:42:12'),
(409, 'TIPE DATA-1', 'x = 2.0; z = 5', '2018-09-05 11:42:13', '2018-09-05 11:42:13', '2018-09-05 11:42:13', 'salah', 157, 54, 38, 103, '2018-09-04 21:42:13', '2018-09-04 21:42:13'),
(410, 'ProgramHitung', '3  1', '2018-09-05 11:42:15', '2018-09-05 11:42:15', '2018-09-05 11:42:15', 'benar', 149, 54, 38, 107, '2018-09-04 21:42:15', '2018-09-04 21:42:15'),
(411, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:42:15', '2018-09-05 11:42:15', '2018-09-05 11:42:15', 'benar', 160, 54, 38, 105, '2018-09-04 21:42:15', '2018-09-04 21:42:15'),
(412, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:42:35', '2018-09-05 11:42:35', '2018-09-05 11:42:35', 'benar', 148, 54, 38, 105, '2018-09-04 21:42:35', '2018-09-04 21:42:35'),
(413, 'Program AksiT', '7 3', '2018-09-05 11:44:25', '2018-09-05 11:44:25', '2018-09-05 11:44:25', 'benar', 161, 54, 38, 106, '2018-09-05 04:44:25', '2018-09-04 21:44:25'),
(414, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:42:36', '2018-09-05 11:42:36', '2018-09-05 11:42:36', 'benar', 165, 54, 38, 104, '2018-09-04 21:42:36', '2018-09-04 21:42:36'),
(415, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-05 11:42:40', '2018-09-05 11:42:40', '2018-09-05 11:42:40', 'salah', 155, 54, 38, 104, '2018-09-04 21:42:40', '2018-09-04 21:42:40'),
(416, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-05 11:42:58', '2018-09-05 11:42:58', '2018-09-05 11:42:58', 'salah', 166, 54, 38, 105, '2018-09-05 04:42:58', '2018-09-04 21:42:58'),
(417, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:42:48', '2018-09-05 11:42:48', '2018-09-05 11:42:48', 'benar', 156, 54, 38, 105, '2018-09-04 21:42:48', '2018-09-04 21:42:48'),
(418, 'Kondisional-1', 'True', '2018-09-05 11:43:00', '2018-09-05 11:43:00', '2018-09-05 11:43:00', 'benar', 149, 54, 38, 108, '2018-09-04 21:43:00', '2018-09-04 21:43:00'),
(419, 'TIPE DATA-2', 'float, integer, boolean', '2018-09-05 11:43:03', '2018-09-05 11:43:03', '2018-09-05 11:43:03', 'salah', 167, 54, 38, 104, '2018-09-04 21:43:03', '2018-09-04 21:43:03'),
(420, 'Program AksiT', '7 3', '2018-09-05 11:43:10', '2018-09-05 11:43:10', '2018-09-05 11:43:10', 'benar', 150, 54, 38, 106, '2018-09-04 21:43:10', '2018-09-04 21:43:10'),
(421, 'Program AksiT', '7 3', '2018-09-05 11:43:13', '2018-09-05 11:43:13', '2018-09-05 11:43:13', 'benar', 148, 54, 38, 106, '2018-09-04 21:43:13', '2018-09-04 21:43:13'),
(422, 'Program AksiT', '7 3', '2018-09-05 11:43:18', '2018-09-05 11:43:18', '2018-09-05 11:43:18', 'benar', 151, 54, 38, 106, '2018-09-04 21:43:18', '2018-09-04 21:43:18'),
(423, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:43:20', '2018-09-05 11:43:20', '2018-09-05 11:43:20', 'benar', 154, 54, 38, 105, '2018-09-04 21:43:20', '2018-09-04 21:43:20'),
(424, 'Program AksiT', '7 3', '2018-09-05 11:43:31', '2018-09-05 11:43:31', '2018-09-05 11:43:31', 'benar', 147, 54, 38, 106, '2018-09-04 21:43:31', '2018-09-04 21:43:31'),
(425, 'Program AksiT', '7 3', '2018-09-05 11:43:33', '2018-09-05 11:43:33', '2018-09-05 11:43:33', 'benar', 163, 54, 38, 106, '2018-09-04 21:43:33', '2018-09-04 21:43:33'),
(426, 'Program AksiT', '7 3', '2018-09-05 11:43:47', '2018-09-05 11:43:47', '2018-09-05 11:43:47', 'benar', 146, 54, 38, 106, '2018-09-04 21:43:47', '2018-09-04 21:43:47'),
(427, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-05 11:43:51', '2018-09-05 11:43:51', '2018-09-05 11:43:51', 'salah', 155, 54, 38, 105, '2018-09-04 21:43:51', '2018-09-04 21:43:51'),
(428, 'ProgramHitung', '3  1', '2018-09-05 11:43:56', '2018-09-05 11:43:56', '2018-09-05 11:43:56', 'benar', 144, 54, 38, 107, '2018-09-04 21:43:56', '2018-09-04 21:43:56'),
(429, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:44:01', '2018-09-05 11:44:01', '2018-09-05 11:44:01', 'salah', 157, 54, 38, 104, '2018-09-04 21:44:01', '2018-09-04 21:44:01'),
(430, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:44:04', '2018-09-05 11:44:04', '2018-09-05 11:44:04', 'benar', 165, 54, 38, 105, '2018-09-04 21:44:04', '2018-09-04 21:44:04'),
(431, 'Program AksiT', '7 3', '2018-09-05 11:44:18', '2018-09-05 11:44:18', '2018-09-05 11:44:18', 'benar', 156, 54, 38, 106, '2018-09-04 21:44:18', '2018-09-04 21:44:18'),
(432, 'Kondisional-1', 'True', '2018-09-05 11:44:52', '2018-09-05 11:44:52', '2018-09-05 11:44:52', 'benar', 144, 54, 38, 108, '2018-09-05 04:44:52', '2018-09-04 21:44:52'),
(433, 'Program AksiT', '7 3', '2018-09-05 11:44:34', '2018-09-05 11:44:34', '2018-09-05 11:44:34', 'benar', 160, 54, 38, 106, '2018-09-04 21:44:34', '2018-09-04 21:44:34'),
(434, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-05 11:44:50', '2018-09-05 11:44:50', '2018-09-05 11:44:50', 'salah', 167, 54, 38, 105, '2018-09-04 21:44:50', '2018-09-04 21:44:50'),
(435, 'ProgramHitung', '3  1', '2018-09-05 11:46:18', '2018-09-05 11:46:18', '2018-09-05 11:46:18', 'benar', 150, 54, 38, 107, '2018-09-05 04:46:18', '2018-09-04 21:46:18'),
(436, 'Program AksiT', '7 3', '2018-09-05 11:45:02', '2018-09-05 11:45:02', '2018-09-05 11:45:02', 'benar', 166, 54, 38, 106, '2018-09-04 21:45:02', '2018-09-04 21:45:02'),
(437, 'ProgramHitung', '3  1', '2018-09-05 11:45:15', '2018-09-05 11:45:15', '2018-09-05 11:45:15', 'benar', 147, 54, 38, 107, '2018-09-04 21:45:15', '2018-09-04 21:45:15'),
(438, 'ProgramHitung', '3  1', '2018-09-05 11:45:30', '2018-09-05 11:45:30', '2018-09-05 11:45:30', 'benar', 146, 54, 38, 107, '2018-09-04 21:45:30', '2018-09-04 21:45:30'),
(439, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-05 11:45:34', '2018-09-05 11:45:34', '2018-09-05 11:45:34', 'salah', 157, 54, 38, 105, '2018-09-04 21:45:34', '2018-09-04 21:45:34'),
(440, 'ProgramHitung', '3  1', '2018-09-05 11:45:42', '2018-09-05 11:45:42', '2018-09-05 11:45:42', 'benar', 151, 54, 38, 107, '2018-09-04 21:45:42', '2018-09-04 21:45:42'),
(441, 'ProgramHitung', '3  1', '2018-09-05 11:46:04', '2018-09-05 11:46:04', '2018-09-05 11:46:04', 'benar', 161, 54, 38, 107, '2018-09-04 21:46:04', '2018-09-04 21:46:04'),
(442, 'ProgramHitung', '3  7', '2018-09-05 11:46:08', '2018-09-05 11:46:08', '2018-09-05 11:46:08', 'salah', 156, 54, 38, 107, '2018-09-04 21:46:08', '2018-09-04 21:46:08'),
(443, 'ProgramHitung', '3  7', '2018-09-05 11:46:08', '2018-09-05 11:46:08', '2018-09-05 11:46:08', 'salah', 148, 54, 38, 107, '2018-09-04 21:46:08', '2018-09-04 21:46:08'),
(444, 'Program AksiT', '7 3', '2018-09-05 11:46:16', '2018-09-05 11:46:16', '2018-09-05 11:46:16', 'benar', 154, 54, 38, 106, '2018-09-04 21:46:16', '2018-09-04 21:46:16'),
(445, 'Kondisional-1', 'False', '2018-09-05 11:47:25', '2018-09-05 11:47:25', '2018-09-05 11:47:25', 'salah', 150, 54, 38, 108, '2018-09-05 04:47:25', '2018-09-04 21:47:25'),
(446, 'Program AksiT', '7 3', '2018-09-05 11:46:32', '2018-09-05 11:46:32', '2018-09-05 11:46:32', 'benar', 165, 54, 38, 106, '2018-09-04 21:46:32', '2018-09-04 21:46:32'),
(447, 'Kondisional-1', 'True', '2018-09-05 11:47:16', '2018-09-05 11:47:16', '2018-09-05 11:47:16', 'benar', 147, 54, 38, 108, '2018-09-05 04:47:16', '2018-09-04 21:47:16'),
(448, 'Kondisional-1', 'False', '2018-09-05 11:46:56', '2018-09-05 11:46:56', '2018-09-05 11:46:56', 'salah', 148, 54, 38, 108, '2018-09-04 21:46:56', '2018-09-04 21:46:56'),
(449, 'ProgramHitung', '6  3', '2018-09-05 11:46:59', '2018-09-05 11:46:59', '2018-09-05 11:46:59', 'salah', 163, 54, 38, 107, '2018-09-04 21:46:59', '2018-09-04 21:46:59'),
(450, 'Program AksiT', '7 3', '2018-09-05 11:47:03', '2018-09-05 11:47:03', '2018-09-05 11:47:03', 'benar', 167, 54, 38, 106, '2018-09-04 21:47:03', '2018-09-04 21:47:03'),
(451, 'Kondisional-1', 'True', '2018-09-05 11:47:12', '2018-09-05 11:47:12', '2018-09-05 11:47:12', 'benar', 151, 54, 38, 108, '2018-09-04 21:47:12', '2018-09-04 21:47:12'),
(452, 'Program AksiT', '7 3', '2018-09-05 11:47:16', '2018-09-05 11:47:16', '2018-09-05 11:47:16', 'benar', 157, 54, 38, 106, '2018-09-04 21:47:16', '2018-09-04 21:47:16'),
(453, 'Kondisional-1', 'True', '2018-09-05 11:47:17', '2018-09-05 11:47:17', '2018-09-05 11:47:17', 'benar', 155, 54, 38, 108, '2018-09-04 21:47:17', '2018-09-04 21:47:17'),
(454, 'ProgramHitung', '3  1', '2018-09-05 11:47:21', '2018-09-05 11:47:21', '2018-09-05 11:47:21', 'benar', 154, 54, 38, 107, '2018-09-04 21:47:21', '2018-09-04 21:47:21'),
(455, 'TIPE DATA-1', 'x = 2; z = 0', '2018-09-05 11:47:32', '2018-09-05 11:47:32', '2018-09-05 11:47:32', 'salah', 153, 54, 38, 103, '2018-09-04 21:47:32', '2018-09-04 21:47:32'),
(456, 'Kondisional-1', 'False', '2018-09-05 11:47:38', '2018-09-05 11:47:38', '2018-09-05 11:47:38', 'salah', 156, 54, 38, 108, '2018-09-04 21:47:38', '2018-09-04 21:47:38'),
(457, 'Kondisional-1', 'False', '2018-09-05 11:48:54', '2018-09-05 11:48:54', '2018-09-05 11:48:54', 'salah', 161, 54, 38, 108, '2018-09-05 04:48:54', '2018-09-04 21:48:54'),
(458, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:47:46', '2018-09-05 11:47:46', '2018-09-05 11:47:46', 'benar', 153, 54, 38, 104, '2018-09-04 21:47:46', '2018-09-04 21:47:46'),
(459, 'ProgramHitung', '3  1', '2018-09-05 11:47:48', '2018-09-05 11:47:48', '2018-09-05 11:47:48', 'benar', 166, 54, 38, 107, '2018-09-04 21:47:48', '2018-09-04 21:47:48'),
(460, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-05 11:47:53', '2018-09-05 11:47:53', '2018-09-05 11:47:53', 'benar', 153, 54, 38, 105, '2018-09-04 21:47:53', '2018-09-04 21:47:53'),
(461, 'ProgramHitung', '3  7', '2018-09-05 11:47:57', '2018-09-05 11:47:57', '2018-09-05 11:47:57', 'salah', 157, 54, 38, 107, '2018-09-04 21:47:57', '2018-09-04 21:47:57'),
(462, 'Program AksiT', '7 3', '2018-09-05 11:48:06', '2018-09-05 11:48:06', '2018-09-05 11:48:06', 'benar', 153, 54, 38, 106, '2018-09-04 21:48:06', '2018-09-04 21:48:06'),
(463, 'Kondisional-1', 'False', '2018-09-05 11:48:09', '2018-09-05 11:48:09', '2018-09-05 11:48:09', 'salah', 146, 54, 38, 108, '2018-09-04 21:48:09', '2018-09-04 21:48:09'),
(464, 'Kondisional-1', 'True', '2018-09-05 11:48:20', '2018-09-05 11:48:20', '2018-09-05 11:48:20', 'benar', 163, 54, 38, 108, '2018-09-04 21:48:20', '2018-09-04 21:48:20'),
(465, 'ProgramHitung', '3  1', '2018-09-05 11:48:22', '2018-09-05 11:48:22', '2018-09-05 11:48:22', 'benar', 153, 54, 38, 107, '2018-09-04 21:48:22', '2018-09-04 21:48:22'),
(466, 'Kondisional-1', 'True', '2018-09-05 11:48:26', '2018-09-05 11:48:26', '2018-09-05 11:48:26', 'benar', 154, 54, 38, 108, '2018-09-04 21:48:26', '2018-09-04 21:48:26'),
(467, 'Kondisional-1', 'False', '2018-09-05 11:48:39', '2018-09-05 11:48:39', '2018-09-05 11:48:39', 'salah', 153, 54, 38, 108, '2018-09-04 21:48:39', '2018-09-04 21:48:39'),
(468, 'Kondisional-1', 'True', '2018-09-05 11:48:53', '2018-09-05 11:48:53', '2018-09-05 11:48:53', 'benar', 166, 54, 38, 108, '2018-09-05 04:48:53', '2018-09-04 21:48:53'),
(469, 'Kondisional-1', 'True', '2018-09-05 11:49:49', '2018-09-05 11:49:49', '2018-09-05 11:49:49', 'benar', 157, 54, 38, 108, '2018-09-05 04:49:49', '2018-09-04 21:49:49'),
(470, 'ProgramHitung', '3  1', '2018-09-05 11:50:14', '2018-09-05 11:50:14', '2018-09-05 11:50:14', 'benar', 155, 54, 38, 107, '2018-09-04 21:50:14', '2018-09-04 21:50:14'),
(471, 'Kondisional-1', 'False', '2018-09-05 11:50:34', '2018-09-05 11:50:34', '2018-09-05 11:50:34', 'salah', 167, 54, 38, 108, '2018-09-04 21:50:34', '2018-09-04 21:50:34'),
(472, 'TIPE DATA-2', 'integer, float, boolean', '2018-09-05 11:50:53', '2018-09-05 11:50:53', '2018-09-05 11:50:53', 'benar', 158, 54, 38, 104, '2018-09-04 21:50:53', '2018-09-04 21:50:53'),
(473, 'Rumus-1', 'a*(b-c)/b+d', '2018-09-05 11:51:02', '2018-09-05 11:51:02', '2018-09-05 11:51:02', 'salah', 158, 54, 38, 105, '2018-09-04 21:51:02', '2018-09-04 21:51:02'),
(474, 'Program AksiT', '3 7', '2018-09-05 11:51:09', '2018-09-05 11:51:09', '2018-09-05 11:51:09', 'salah', 158, 54, 38, 106, '2018-09-04 21:51:09', '2018-09-04 21:51:09'),
(475, 'ProgramHitung', '3  6', '2018-09-05 11:51:21', '2018-09-05 11:51:21', '2018-09-05 11:51:21', 'salah', 158, 54, 38, 107, '2018-09-04 21:51:21', '2018-09-04 21:51:21'),
(476, 'Kondisional-1', 'True', '2018-09-05 11:51:28', '2018-09-05 11:51:28', '2018-09-05 11:51:28', 'benar', 158, 54, 38, 108, '2018-09-04 21:51:28', '2018-09-04 21:51:28'),
(477, 'TIPE DATA-2', 'semua bertipe integer', '2018-09-05 11:51:42', '2018-09-05 11:51:42', '2018-09-05 11:51:42', 'salah', 150, 54, 38, 104, '2018-09-04 21:51:42', '2018-09-04 21:51:42'),
(478, 'Program AksiT', '7 3', '2018-09-05 11:51:54', '2018-09-05 11:51:54', '2018-09-05 11:51:54', 'benar', 155, 54, 38, 106, '2018-09-04 21:51:54', '2018-09-04 21:51:54'),
(479, 'ProgramHitung', '3  7', '2018-09-05 11:52:31', '2018-09-05 11:52:31', '2018-09-05 11:52:31', 'salah', 165, 54, 38, 107, '2018-09-04 21:52:31', '2018-09-04 21:52:31'),
(480, 'Kondisional-1', 'True', '2018-09-05 11:52:35', '2018-09-05 11:52:35', '2018-09-05 11:52:35', 'benar', 165, 54, 38, 108, '2018-09-04 21:52:35', '2018-09-04 21:52:35'),
(481, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 20:27:52', '2018-09-07 20:27:52', '2018-09-07 20:27:52', 'benar', 149, 57, 39, 109, '2018-09-07 06:27:52', '2018-09-07 06:27:52'),
(482, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 20:36:51', '2018-09-07 20:36:51', '2018-09-07 20:36:51', 'benar', 149, 57, 39, 110, '2018-09-07 13:36:51', '2018-09-07 06:36:51'),
(483, 'ProgramAksiM', '7 3 5', '2018-09-07 20:29:40', '2018-09-07 20:29:40', '2018-09-07 20:29:40', 'benar', 149, 57, 39, 111, '2018-09-07 06:29:40', '2018-09-07 06:29:40'),
(484, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 20:30:18', '2018-09-07 20:30:18', '2018-09-07 20:30:18', 'benar', 149, 57, 39, 112, '2018-09-07 06:30:18', '2018-09-07 06:30:18'),
(485, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 20:30:54', '2018-09-07 20:30:54', '2018-09-07 20:30:54', 'benar', 149, 57, 39, 113, '2018-09-07 06:30:54', '2018-09-07 06:30:54'),
(486, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:21:23', '2018-09-07 21:21:23', '2018-09-07 21:21:23', 'benar', 199, 57, 39, 109, '2018-09-07 07:21:23', '2018-09-07 07:21:23'),
(487, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-07 21:21:52', '2018-09-07 21:21:52', '2018-09-07 21:21:52', 'salah', 199, 57, 39, 110, '2018-09-07 07:21:52', '2018-09-07 07:21:52'),
(488, 'ProgramAksiM', '7 3 5', '2018-09-07 21:22:27', '2018-09-07 21:22:27', '2018-09-07 21:22:27', 'benar', 199, 57, 39, 111, '2018-09-07 07:22:27', '2018-09-07 07:22:27'),
(489, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:23:01', '2018-09-07 21:23:01', '2018-09-07 21:23:01', 'benar', 199, 57, 39, 112, '2018-09-07 07:23:01', '2018-09-07 07:23:01'),
(490, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:31:29', '2018-09-07 21:31:29', '2018-09-07 21:31:29', 'benar', 169, 57, 39, 109, '2018-09-07 07:31:29', '2018-09-07 07:31:29'),
(491, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:32:25', '2018-09-07 21:32:25', '2018-09-07 21:32:25', 'benar', 169, 57, 39, 110, '2018-09-07 07:32:25', '2018-09-07 07:32:25'),
(492, 'ProgramAksiM', '7 5 3', '2018-09-07 21:33:41', '2018-09-07 21:33:41', '2018-09-07 21:33:41', 'salah', 169, 57, 39, 111, '2018-09-07 07:33:41', '2018-09-07 07:33:41'),
(493, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-07 21:34:22', '2018-09-07 21:34:22', '2018-09-07 21:34:22', 'salah', 199, 57, 39, 113, '2018-09-07 07:34:22', '2018-09-07 07:34:22'),
(494, 'ProgramHitungL', 'SS = Bil % 100; pl = Bil // 10', '2018-09-07 21:37:02', '2018-09-07 21:37:02', '2018-09-07 21:37:02', 'salah', 169, 57, 39, 112, '2018-09-07 07:37:02', '2018-09-07 07:37:02'),
(495, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:50:41', '2018-09-07 21:50:41', '2018-09-07 21:50:41', 'benar', 152, 57, 39, 110, '2018-09-07 14:50:41', '2018-09-07 07:50:41'),
(496, 'UrutanRumus', 'Rumus-1 dengan rumus-4', '2018-09-07 21:37:44', '2018-09-07 21:37:44', '2018-09-07 21:37:44', 'salah', 169, 57, 39, 113, '2018-09-07 07:37:44', '2018-09-07 07:37:44'),
(497, 'ProgramAksiM', '7 3 5', '2018-09-07 21:52:59', '2018-09-07 21:52:59', '2018-09-07 21:52:59', 'benar', 152, 57, 39, 111, '2018-09-07 14:52:59', '2018-09-07 07:52:59'),
(498, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-07 22:37:22', '2018-09-07 22:37:22', '2018-09-07 22:37:22', 'salah', 145, 57, 39, 109, '2018-09-07 15:37:22', '2018-09-07 08:37:22'),
(499, 'RumusPG-2', 'a(b-c)(d*d-b)/b+d(c-a)', '2018-09-07 22:37:27', '2018-09-07 22:37:27', '2018-09-07 22:37:27', 'salah', 145, 57, 39, 110, '2018-09-07 15:37:27', '2018-09-07 08:37:27'),
(500, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:57:21', '2018-09-07 21:57:21', '2018-09-07 21:57:21', 'benar', 152, 57, 39, 112, '2018-09-07 14:57:21', '2018-09-07 07:57:21'),
(501, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-07 21:40:57', '2018-09-07 21:40:57', '2018-09-07 21:40:57', 'salah', 183, 57, 39, 109, '2018-09-07 07:40:57', '2018-09-07 07:40:57'),
(502, 'RumusPG-2', '(a*(b-c)*(d*d-b))/b+d*(c-a)', '2018-09-07 21:41:09', '2018-09-07 21:41:09', '2018-09-07 21:41:09', 'salah', 183, 57, 39, 110, '2018-09-07 07:41:09', '2018-09-07 07:41:09'),
(503, 'ProgramAksiM', '7 3 5', '2018-09-07 22:37:31', '2018-09-07 22:37:31', '2018-09-07 22:37:31', 'benar', 145, 57, 39, 111, '2018-09-07 15:37:31', '2018-09-07 08:37:31'),
(504, 'ProgramAksiM', '7 3 5', '2018-09-07 21:41:16', '2018-09-07 21:41:16', '2018-09-07 21:41:16', 'benar', 183, 57, 39, 111, '2018-09-07 07:41:16', '2018-09-07 07:41:16'),
(505, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:41:16', '2018-09-07 21:41:16', '2018-09-07 21:41:16', 'benar', 152, 57, 39, 113, '2018-09-07 07:41:16', '2018-09-07 07:41:16'),
(506, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:49:19', '2018-09-07 21:49:19', '2018-09-07 21:49:19', 'benar', 152, 57, 39, 109, '2018-09-07 14:49:19', '2018-09-07 07:49:19'),
(507, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:42:12', '2018-09-07 21:42:12', '2018-09-07 21:42:12', 'benar', 192, 57, 39, 109, '2018-09-07 07:42:12', '2018-09-07 07:42:12'),
(508, 'UrutanRumus', 'Rumus-2 dengan rumus-3', '2018-09-07 21:42:51', '2018-09-07 21:42:51', '2018-09-07 21:42:51', 'salah', 183, 57, 39, 113, '2018-09-07 07:42:51', '2018-09-07 07:42:51'),
(509, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 22:37:36', '2018-09-07 22:37:36', '2018-09-07 22:37:36', 'benar', 145, 57, 39, 112, '2018-09-07 15:37:36', '2018-09-07 08:37:36'),
(510, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:43:13', '2018-09-07 21:43:13', '2018-09-07 21:43:13', 'benar', 192, 57, 39, 110, '2018-09-07 07:43:13', '2018-09-07 07:43:13'),
(511, 'ProgramAksiM', '7 3 5', '2018-09-07 21:44:22', '2018-09-07 21:44:22', '2018-09-07 21:44:22', 'benar', 192, 57, 39, 111, '2018-09-07 07:44:22', '2018-09-07 07:44:22'),
(512, 'ProgramHitungL', 'SS = Bil % 100; pl = SS % 10', '2018-09-07 21:44:41', '2018-09-07 21:44:41', '2018-09-07 21:44:41', 'salah', 183, 57, 39, 112, '2018-09-07 07:44:41', '2018-09-07 07:44:41'),
(513, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:44:53', '2018-09-07 21:44:53', '2018-09-07 21:44:53', 'benar', 163, 57, 39, 109, '2018-09-07 07:44:53', '2018-09-07 07:44:53'),
(514, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 22:35:39', '2018-09-07 22:35:39', '2018-09-07 22:35:39', 'benar', 145, 57, 39, 113, '2018-09-07 15:35:39', '2018-09-07 08:35:39'),
(515, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-07 21:47:07', '2018-09-07 21:47:07', '2018-09-07 21:47:07', 'salah', 194, 57, 39, 109, '2018-09-07 14:47:07', '2018-09-07 07:47:07'),
(516, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-07 21:45:39', '2018-09-07 21:45:39', '2018-09-07 21:45:39', 'salah', 151, 57, 39, 109, '2018-09-07 07:45:39', '2018-09-07 07:45:39'),
(517, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-07 21:46:00', '2018-09-07 21:46:00', '2018-09-07 21:46:00', 'salah', 163, 57, 39, 110, '2018-09-07 07:46:00', '2018-09-07 07:46:00'),
(518, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:46:03', '2018-09-07 21:46:03', '2018-09-07 21:46:03', 'benar', 192, 57, 39, 112, '2018-09-07 07:46:03', '2018-09-07 07:46:03'),
(519, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:47:20', '2018-09-07 21:47:20', '2018-09-07 21:47:20', 'benar', 194, 57, 39, 110, '2018-09-07 14:47:20', '2018-09-07 07:47:20'),
(520, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:46:29', '2018-09-07 21:46:29', '2018-09-07 21:46:29', 'benar', 194, 57, 39, 110, '2018-09-07 07:46:29', '2018-09-07 07:46:29'),
(521, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:46:53', '2018-09-07 21:46:53', '2018-09-07 21:46:53', 'benar', 160, 57, 39, 110, '2018-09-07 07:46:53', '2018-09-07 07:46:53'),
(522, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:47:12', '2018-09-07 21:47:12', '2018-09-07 21:47:12', 'benar', 193, 57, 39, 109, '2018-09-07 07:47:12', '2018-09-07 07:47:12'),
(523, 'ProgramAksiM', '7 3 5', '2018-09-07 21:47:36', '2018-09-07 21:47:36', '2018-09-07 21:47:36', 'benar', 163, 57, 39, 111, '2018-09-07 07:47:36', '2018-09-07 07:47:36'),
(524, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:47:36', '2018-09-07 21:47:36', '2018-09-07 21:47:36', 'benar', 151, 57, 39, 110, '2018-09-07 07:47:36', '2018-09-07 07:47:36'),
(525, 'ProgramAksiM', '7 5 3', '2018-09-07 21:48:19', '2018-09-07 21:48:19', '2018-09-07 21:48:19', 'salah', 151, 57, 39, 111, '2018-09-07 07:48:19', '2018-09-07 07:48:19'),
(526, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:48:31', '2018-09-07 21:48:31', '2018-09-07 21:48:31', 'benar', 192, 57, 39, 113, '2018-09-07 07:48:31', '2018-09-07 07:48:31'),
(527, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:48:58', '2018-09-07 21:48:58', '2018-09-07 21:48:58', 'benar', 193, 57, 39, 110, '2018-09-07 07:48:58', '2018-09-07 07:48:58'),
(528, 'ProgramAksiM', '7 3 5', '2018-09-07 21:49:24', '2018-09-07 21:49:24', '2018-09-07 21:49:24', 'benar', 160, 57, 39, 111, '2018-09-07 07:49:24', '2018-09-07 07:49:24'),
(529, 'ProgramAksiM', '7 3 5', '2018-09-07 21:49:51', '2018-09-07 21:49:51', '2018-09-07 21:49:51', 'benar', 193, 57, 39, 111, '2018-09-07 07:49:51', '2018-09-07 07:49:51'),
(530, 'ProgramAksiM', '7 3 5', '2018-09-07 21:49:59', '2018-09-07 21:49:59', '2018-09-07 21:49:59', 'benar', 194, 57, 39, 111, '2018-09-07 07:49:59', '2018-09-07 07:49:59'),
(531, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:50:00', '2018-09-07 21:50:00', '2018-09-07 21:50:00', 'benar', 147, 57, 39, 109, '2018-09-07 07:50:00', '2018-09-07 07:50:00'),
(532, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:50:21', '2018-09-07 21:50:21', '2018-09-07 21:50:21', 'benar', 151, 57, 39, 112, '2018-09-07 07:50:21', '2018-09-07 07:50:21'),
(533, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-07 21:50:23', '2018-09-07 21:50:23', '2018-09-07 21:50:23', 'salah', 197, 57, 39, 109, '2018-09-07 07:50:23', '2018-09-07 07:50:23'),
(534, 'UrutanRumus', 'Rumus-1 dengan rumus-4', '2018-09-07 21:51:29', '2018-09-07 21:51:29', '2018-09-07 21:51:29', 'salah', 197, 57, 39, 113, '2018-09-07 14:51:29', '2018-09-07 07:51:29'),
(535, 'TIPE DATA-3', 'float, boolean, integer', '2018-09-07 21:51:06', '2018-09-07 21:51:06', '2018-09-07 21:51:06', 'salah', 172, 57, 39, 109, '2018-09-07 07:51:06', '2018-09-07 07:51:06'),
(536, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-07 21:51:26', '2018-09-07 21:51:26', '2018-09-07 21:51:26', 'benar', 147, 57, 39, 110, '2018-09-07 07:51:26', '2018-09-07 07:51:26'),
(537, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:52:23', '2018-09-07 21:52:23', '2018-09-07 21:52:23', 'benar', 193, 57, 39, 112, '2018-09-07 07:52:23', '2018-09-07 07:52:23'),
(538, 'ProgramAksiM', '7 3 5', '2018-09-07 21:52:38', '2018-09-07 21:52:38', '2018-09-07 21:52:38', 'benar', 147, 57, 39, 111, '2018-09-07 07:52:38', '2018-09-07 07:52:38'),
(539, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:52:44', '2018-09-07 21:52:44', '2018-09-07 21:52:44', 'benar', 194, 57, 39, 112, '2018-09-07 07:52:44', '2018-09-07 07:52:44'),
(540, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:53:22', '2018-09-07 21:53:22', '2018-09-07 21:53:22', 'benar', 151, 57, 39, 113, '2018-09-07 07:53:22', '2018-09-07 07:53:22'),
(541, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:53:22', '2018-09-07 21:53:22', '2018-09-07 21:53:22', 'benar', 193, 57, 39, 113, '2018-09-07 07:53:22', '2018-09-07 07:53:22'),
(542, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-07 21:53:36', '2018-09-07 21:53:36', '2018-09-07 21:53:36', 'salah', 172, 57, 39, 110, '2018-09-07 07:53:36', '2018-09-07 07:53:36'),
(543, 'ProgramHitungL', 'SS = SS % 100; pl = Bil // 10', '2018-09-07 21:54:07', '2018-09-07 21:54:07', '2018-09-07 21:54:07', 'salah', 163, 57, 39, 112, '2018-09-07 07:54:07', '2018-09-07 07:54:07'),
(544, 'ProgramAksiM', '7 3 5', '2018-09-07 21:54:38', '2018-09-07 21:54:38', '2018-09-07 21:54:38', 'benar', 172, 57, 39, 111, '2018-09-07 07:54:38', '2018-09-07 07:54:38'),
(545, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-07 21:55:40', '2018-09-07 21:55:40', '2018-09-07 21:55:40', 'salah', 163, 57, 39, 113, '2018-09-07 07:55:40', '2018-09-07 07:55:40'),
(546, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-07 21:55:48', '2018-09-07 21:55:48', '2018-09-07 21:55:48', 'salah', 147, 57, 39, 112, '2018-09-07 07:55:48', '2018-09-07 07:55:48'),
(547, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 21:55:54', '2018-09-07 21:55:54', '2018-09-07 21:55:54', 'benar', 167, 57, 39, 109, '2018-09-07 07:55:54', '2018-09-07 07:55:54'),
(548, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:56:40', '2018-09-07 21:56:40', '2018-09-07 21:56:40', 'benar', 194, 57, 39, 113, '2018-09-07 07:56:40', '2018-09-07 07:56:40'),
(549, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:56:50', '2018-09-07 21:56:50', '2018-09-07 21:56:50', 'benar', 172, 57, 39, 112, '2018-09-07 07:56:50', '2018-09-07 07:56:50'),
(550, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-07 21:57:08', '2018-09-07 21:57:08', '2018-09-07 21:57:08', 'salah', 167, 57, 39, 110, '2018-09-07 07:57:08', '2018-09-07 07:57:08'),
(551, 'ProgramAksiM', '7 3 5', '2018-09-07 21:57:53', '2018-09-07 21:57:53', '2018-09-07 21:57:53', 'benar', 167, 57, 39, 111, '2018-09-07 07:57:53', '2018-09-07 07:57:53'),
(552, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 21:58:12', '2018-09-07 21:58:12', '2018-09-07 21:58:12', 'benar', 147, 57, 39, 113, '2018-09-07 07:58:12', '2018-09-07 07:58:12'),
(553, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 21:58:26', '2018-09-07 21:58:26', '2018-09-07 21:58:26', 'benar', 167, 57, 39, 112, '2018-09-07 07:58:26', '2018-09-07 07:58:26'),
(554, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-07 21:58:28', '2018-09-07 21:58:28', '2018-09-07 21:58:28', 'salah', 172, 57, 39, 113, '2018-09-07 07:58:28', '2018-09-07 07:58:28'),
(555, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 22:03:42', '2018-09-07 22:03:42', '2018-09-07 22:03:42', 'benar', 167, 57, 39, 113, '2018-09-07 08:03:42', '2018-09-07 08:03:42'),
(556, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-07 22:11:43', '2018-09-07 22:11:43', '2018-09-07 22:11:43', 'salah', 146, 57, 39, 109, '2018-09-07 08:11:43', '2018-09-07 08:11:43'),
(557, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-07 22:12:17', '2018-09-07 22:12:17', '2018-09-07 22:12:17', 'salah', 146, 57, 39, 110, '2018-09-07 08:12:17', '2018-09-07 08:12:17'),
(558, 'ProgramAksiM', '3 5 7', '2018-09-07 22:13:39', '2018-09-07 22:13:39', '2018-09-07 22:13:39', 'salah', 146, 57, 39, 111, '2018-09-07 08:13:39', '2018-09-07 08:13:39'),
(559, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-07 22:14:50', '2018-09-07 22:14:50', '2018-09-07 22:14:50', 'salah', 146, 57, 39, 112, '2018-09-07 08:14:50', '2018-09-07 08:14:50'),
(560, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 22:16:07', '2018-09-07 22:16:07', '2018-09-07 22:16:07', 'benar', 146, 57, 39, 113, '2018-09-07 08:16:07', '2018-09-07 08:16:07'),
(561, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 22:17:14', '2018-09-07 22:17:14', '2018-09-07 22:17:14', 'benar', 189, 57, 39, 109, '2018-09-07 08:17:14', '2018-09-07 08:17:14'),
(562, 'ProgramAksiM', '7 3 5', '2018-09-07 22:17:30', '2018-09-07 22:17:30', '2018-09-07 22:17:30', 'benar', 189, 57, 39, 111, '2018-09-07 08:17:30', '2018-09-07 08:17:30'),
(563, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 22:17:39', '2018-09-07 22:17:39', '2018-09-07 22:17:39', 'benar', 189, 57, 39, 112, '2018-09-07 08:17:39', '2018-09-07 08:17:39'),
(564, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 22:17:52', '2018-09-07 22:17:52', '2018-09-07 22:17:52', 'benar', 189, 57, 39, 113, '2018-09-07 15:17:52', '2018-09-07 08:17:52'),
(565, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-07 22:21:34', '2018-09-07 22:21:34', '2018-09-07 22:21:34', 'salah', 189, 57, 39, 110, '2018-09-07 15:21:34', '2018-09-07 08:21:34'),
(566, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-07 22:22:47', '2018-09-07 22:22:47', '2018-09-07 22:22:47', 'benar', 204, 57, 39, 109, '2018-09-07 08:22:47', '2018-09-07 08:22:47'),
(567, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-07 22:22:53', '2018-09-07 22:22:53', '2018-09-07 22:22:53', 'salah', 204, 57, 39, 110, '2018-09-07 08:22:53', '2018-09-07 08:22:53'),
(568, 'ProgramAksiM', '7 3 5', '2018-09-07 22:23:15', '2018-09-07 22:23:15', '2018-09-07 22:23:15', 'benar', 204, 57, 39, 111, '2018-09-07 08:23:15', '2018-09-07 08:23:15'),
(569, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-07 22:23:49', '2018-09-07 22:23:49', '2018-09-07 22:23:49', 'benar', 204, 57, 39, 113, '2018-09-07 08:23:49', '2018-09-07 08:23:49'),
(570, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-07 22:28:54', '2018-09-07 22:28:54', '2018-09-07 22:28:54', 'benar', 204, 57, 39, 112, '2018-09-07 08:28:54', '2018-09-07 08:28:54'),
(571, 'IF-1', '6', '2018-09-10 09:17:36', '2018-09-10 09:17:36', '2018-09-10 09:17:36', 'benar', 192, 58, 40, 114, '2018-09-09 19:17:36', '2018-09-09 19:17:36'),
(572, 'IF-1', '6', '2018-09-10 09:17:39', '2018-09-10 09:17:39', '2018-09-10 09:17:39', 'benar', 169, 58, 40, 114, '2018-09-09 19:17:39', '2018-09-09 19:17:39'),
(573, 'IF-1', '6', '2018-09-10 09:17:44', '2018-09-10 09:17:44', '2018-09-10 09:17:44', 'benar', 189, 58, 40, 114, '2018-09-09 19:17:44', '2018-09-09 19:17:44');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(574, 'IF-2', '7  5', '2018-09-10 09:18:10', '2018-09-10 09:18:10', '2018-09-10 09:18:10', 'benar', 189, 58, 40, 115, '2018-09-09 19:18:10', '2018-09-09 19:18:10'),
(575, 'IF-1', '6', '2018-09-10 09:18:19', '2018-09-10 09:18:19', '2018-09-10 09:18:19', 'benar', 193, 58, 40, 114, '2018-09-09 19:18:19', '2018-09-09 19:18:19'),
(576, 'IF-1', '6', '2018-09-10 09:18:19', '2018-09-10 09:18:19', '2018-09-10 09:18:19', 'benar', 186, 58, 40, 114, '2018-09-09 19:18:19', '2018-09-09 19:18:19'),
(577, 'IF-2', '7  5', '2018-09-10 09:18:21', '2018-09-10 09:18:21', '2018-09-10 09:18:21', 'benar', 192, 58, 40, 115, '2018-09-09 19:18:21', '2018-09-09 19:18:21'),
(578, 'IF-1', '6', '2018-09-10 09:18:23', '2018-09-10 09:18:23', '2018-09-10 09:18:23', 'benar', 190, 58, 40, 114, '2018-09-09 19:18:23', '2018-09-09 19:18:23'),
(579, 'IF-1', '6', '2018-09-10 09:18:28', '2018-09-10 09:18:28', '2018-09-10 09:18:28', 'benar', 172, 58, 40, 114, '2018-09-09 19:18:28', '2018-09-09 19:18:28'),
(580, 'IF-1', '6', '2018-09-10 09:18:42', '2018-09-10 09:18:42', '2018-09-10 09:18:42', 'benar', 175, 58, 40, 114, '2018-09-09 19:18:42', '2018-09-09 19:18:42'),
(581, 'IF-1', '6', '2018-09-10 09:18:45', '2018-09-10 09:18:45', '2018-09-10 09:18:45', 'benar', 174, 58, 40, 114, '2018-09-09 19:18:45', '2018-09-09 19:18:45'),
(582, 'IF-2', '7  5', '2018-09-10 09:18:50', '2018-09-10 09:18:50', '2018-09-10 09:18:50', 'benar', 172, 58, 40, 115, '2018-09-09 19:18:50', '2018-09-09 19:18:50'),
(583, 'IF-1', '6', '2018-09-10 09:18:51', '2018-09-10 09:18:51', '2018-09-10 09:18:51', 'benar', 179, 58, 40, 114, '2018-09-09 19:18:51', '2018-09-09 19:18:51'),
(584, 'IF-2', '7  5', '2018-09-10 09:18:51', '2018-09-10 09:18:51', '2018-09-10 09:18:51', 'benar', 169, 58, 40, 115, '2018-09-09 19:18:51', '2018-09-09 19:18:51'),
(585, 'IF-3', '0  5', '2018-09-10 09:18:55', '2018-09-10 09:18:55', '2018-09-10 09:18:55', 'benar', 189, 58, 40, 116, '2018-09-09 19:18:55', '2018-09-09 19:18:55'),
(586, 'IF-2', '7  5', '2018-09-10 09:18:57', '2018-09-10 09:18:57', '2018-09-10 09:18:57', 'benar', 186, 58, 40, 115, '2018-09-09 19:18:57', '2018-09-09 19:18:57'),
(587, 'IF-2', '7  5', '2018-09-10 09:19:05', '2018-09-10 09:19:05', '2018-09-10 09:19:05', 'benar', 190, 58, 40, 115, '2018-09-09 19:19:05', '2018-09-09 19:19:05'),
(588, 'IF-1', '6', '2018-09-10 09:19:06', '2018-09-10 09:19:06', '2018-09-10 09:19:06', 'benar', 177, 58, 40, 114, '2018-09-09 19:19:06', '2018-09-09 19:19:06'),
(589, 'IF-3', '0  5', '2018-09-10 09:19:16', '2018-09-10 09:19:16', '2018-09-10 09:19:16', 'benar', 172, 58, 40, 116, '2018-09-09 19:19:17', '2018-09-09 19:19:17'),
(590, 'IF-3', '0  5', '2018-09-10 09:19:17', '2018-09-10 09:19:17', '2018-09-10 09:19:17', 'benar', 192, 58, 40, 116, '2018-09-09 19:19:17', '2018-09-09 19:19:17'),
(591, 'IF-3', '0  5', '2018-09-10 09:19:19', '2018-09-10 09:19:19', '2018-09-10 09:19:19', 'benar', 169, 58, 40, 116, '2018-09-09 19:19:19', '2018-09-09 19:19:19'),
(592, 'IF-and-1', '5 9', '2018-09-10 09:19:23', '2018-09-10 09:19:23', '2018-09-10 09:19:23', 'benar', 189, 58, 40, 117, '2018-09-09 19:19:23', '2018-09-09 19:19:23'),
(593, 'IF-1', '6', '2018-09-10 09:19:26', '2018-09-10 09:19:26', '2018-09-10 09:19:26', 'benar', 180, 58, 40, 114, '2018-09-09 19:19:26', '2018-09-09 19:19:26'),
(594, 'IF-1', '6', '2018-09-10 09:19:26', '2018-09-10 09:19:26', '2018-09-10 09:19:26', 'benar', 184, 58, 40, 114, '2018-09-09 19:19:26', '2018-09-09 19:19:26'),
(595, 'IF-2', '7  5', '2018-09-10 09:19:30', '2018-09-10 09:19:30', '2018-09-10 09:19:30', 'benar', 175, 58, 40, 115, '2018-09-09 19:19:30', '2018-09-09 19:19:30'),
(596, 'IF-1', '6', '2018-09-10 09:19:35', '2018-09-10 09:19:35', '2018-09-10 09:19:35', 'benar', 170, 58, 40, 114, '2018-09-09 19:19:35', '2018-09-09 19:19:35'),
(597, 'IF-1', '2', '2018-09-10 09:19:37', '2018-09-10 09:19:37', '2018-09-10 09:19:37', 'salah', 171, 58, 40, 114, '2018-09-09 19:19:37', '2018-09-09 19:19:37'),
(598, 'IF-3', '0  5', '2018-09-10 09:19:41', '2018-09-10 09:19:41', '2018-09-10 09:19:41', 'benar', 186, 58, 40, 116, '2018-09-09 19:19:41', '2018-09-09 19:19:41'),
(599, 'IF-2', '7  5', '2018-09-10 09:19:42', '2018-09-10 09:19:42', '2018-09-10 09:19:42', 'benar', 193, 58, 40, 115, '2018-09-09 19:19:42', '2018-09-09 19:19:42'),
(600, 'IF-1', '6', '2018-09-10 09:19:44', '2018-09-10 09:19:44', '2018-09-10 09:19:44', 'benar', 182, 58, 40, 114, '2018-09-09 19:19:44', '2018-09-09 19:19:44'),
(601, 'IF-1', '6', '2018-09-10 09:19:48', '2018-09-10 09:19:48', '2018-09-10 09:19:48', 'benar', 178, 58, 40, 114, '2018-09-09 19:19:48', '2018-09-09 19:19:48'),
(602, 'IF-3', '0  5', '2018-09-10 09:19:52', '2018-09-10 09:19:52', '2018-09-10 09:19:52', 'benar', 175, 58, 40, 116, '2018-09-09 19:19:52', '2018-09-09 19:19:52'),
(603, 'IF-2', '7  5', '2018-09-10 09:19:55', '2018-09-10 09:19:55', '2018-09-10 09:19:55', 'benar', 178, 58, 40, 115, '2018-09-09 19:19:55', '2018-09-09 19:19:55'),
(604, 'IF-2', '7  5', '2018-09-10 09:19:58', '2018-09-10 09:19:58', '2018-09-10 09:19:58', 'benar', 184, 58, 40, 115, '2018-09-09 19:19:58', '2018-09-09 19:19:58'),
(605, 'IF-and-1', '5 9', '2018-09-10 09:19:58', '2018-09-10 09:19:58', '2018-09-10 09:19:58', 'benar', 192, 58, 40, 117, '2018-09-09 19:19:58', '2018-09-09 19:19:58'),
(606, 'IF-3', '0  5', '2018-09-10 09:19:58', '2018-09-10 09:19:58', '2018-09-10 09:19:58', 'benar', 190, 58, 40, 116, '2018-09-09 19:19:58', '2018-09-09 19:19:58'),
(607, 'If-or-1', '6 -6', '2018-09-10 09:19:58', '2018-09-10 09:19:58', '2018-09-10 09:19:58', 'benar', 189, 58, 40, 118, '2018-09-09 19:19:58', '2018-09-09 19:19:58'),
(608, 'IF-1', '6', '2018-09-10 09:24:57', '2018-09-10 09:24:57', '2018-09-10 09:24:57', 'benar', 188, 58, 40, 114, '2018-09-10 02:24:57', '2018-09-09 19:24:57'),
(609, 'IF-2', '7  5', '2018-09-10 09:20:03', '2018-09-10 09:20:03', '2018-09-10 09:20:03', 'benar', 174, 58, 40, 115, '2018-09-09 19:20:03', '2018-09-09 19:20:03'),
(610, 'IF-and-1', '5 9', '2018-09-10 09:20:03', '2018-09-10 09:20:03', '2018-09-10 09:20:03', 'benar', 186, 58, 40, 117, '2018-09-09 19:20:03', '2018-09-09 19:20:03'),
(611, 'IF-and-1', '5 9', '2018-09-10 09:20:05', '2018-09-10 09:20:05', '2018-09-10 09:20:05', 'benar', 169, 58, 40, 117, '2018-09-09 19:20:05', '2018-09-09 19:20:05'),
(612, 'IF-2', '7  5', '2018-09-10 09:20:12', '2018-09-10 09:20:12', '2018-09-10 09:20:12', 'benar', 170, 58, 40, 115, '2018-09-09 19:20:12', '2018-09-09 19:20:12'),
(613, 'IF-2', '7  5', '2018-09-10 09:20:17', '2018-09-10 09:20:17', '2018-09-10 09:20:17', 'benar', 182, 58, 40, 115, '2018-09-09 19:20:17', '2018-09-09 19:20:17'),
(614, 'IF-3', '0  5', '2018-09-10 09:20:18', '2018-09-10 09:20:18', '2018-09-10 09:20:18', 'benar', 193, 58, 40, 116, '2018-09-09 19:20:18', '2018-09-09 19:20:18'),
(615, 'IF-3', '0  5', '2018-09-10 09:20:20', '2018-09-10 09:20:20', '2018-09-10 09:20:20', 'benar', 184, 58, 40, 116, '2018-09-09 19:20:20', '2018-09-09 19:20:20'),
(616, 'IF-1', '6', '2018-09-10 09:20:21', '2018-09-10 09:20:21', '2018-09-10 09:20:21', 'benar', 187, 58, 40, 114, '2018-09-09 19:20:21', '2018-09-09 19:20:21'),
(617, 'IF-and-1', '5 9', '2018-09-10 09:20:26', '2018-09-10 09:20:26', '2018-09-10 09:20:26', 'benar', 172, 58, 40, 117, '2018-09-09 19:20:26', '2018-09-09 19:20:26'),
(618, 'IF-2', '4  3', '2018-09-10 09:28:21', '2018-09-10 09:28:21', '2018-09-10 09:28:21', 'salah', 177, 58, 40, 115, '2018-09-10 02:28:21', '2018-09-09 19:28:21'),
(619, 'IF-2', '7  5', '2018-09-10 09:20:28', '2018-09-10 09:20:28', '2018-09-10 09:20:28', 'benar', 180, 58, 40, 115, '2018-09-09 19:20:28', '2018-09-09 19:20:28'),
(620, 'IF-and-1', '5 9', '2018-09-10 09:20:29', '2018-09-10 09:20:29', '2018-09-10 09:20:29', 'benar', 175, 58, 40, 117, '2018-09-09 19:20:29', '2018-09-09 19:20:29'),
(621, 'IF-3', '0  5', '2018-09-10 09:20:30', '2018-09-10 09:20:30', '2018-09-10 09:20:30', 'benar', 178, 58, 40, 116, '2018-09-09 19:20:30', '2018-09-09 19:20:30'),
(622, 'IF-3', '0  5', '2018-09-10 09:20:33', '2018-09-10 09:20:33', '2018-09-10 09:20:33', 'benar', 174, 58, 40, 116, '2018-09-09 19:20:33', '2018-09-09 19:20:33'),
(623, 'If-or-1', '6 -6', '2018-09-10 09:20:34', '2018-09-10 09:20:34', '2018-09-10 09:20:34', 'benar', 186, 58, 40, 118, '2018-09-09 19:20:34', '2018-09-09 19:20:34'),
(624, 'If-or-1', '9 -1', '2018-09-10 09:20:35', '2018-09-10 09:20:35', '2018-09-10 09:20:35', 'salah', 192, 58, 40, 118, '2018-09-09 19:20:35', '2018-09-09 19:20:35'),
(625, 'IF-3', '3  7', '2018-09-10 09:20:39', '2018-09-10 09:20:39', '2018-09-10 09:20:39', 'salah', 170, 58, 40, 116, '2018-09-09 19:20:39', '2018-09-09 19:20:39'),
(626, 'If-or-1', '6 -1', '2018-09-10 09:23:25', '2018-09-10 09:23:25', '2018-09-10 09:23:25', 'salah', 190, 58, 40, 118, '2018-09-10 02:23:25', '2018-09-09 19:23:25'),
(627, 'IF-3', '0  5', '2018-09-10 09:20:44', '2018-09-10 09:20:44', '2018-09-10 09:20:44', 'benar', 182, 58, 40, 116, '2018-09-09 19:20:44', '2018-09-09 19:20:44'),
(628, 'IF-2', '7  5', '2018-09-10 09:20:45', '2018-09-10 09:20:45', '2018-09-10 09:20:45', 'benar', 188, 58, 40, 115, '2018-09-09 19:20:45', '2018-09-09 19:20:45'),
(629, 'IF-3', '0  5', '2018-09-10 09:20:46', '2018-09-10 09:20:46', '2018-09-10 09:20:46', 'benar', 177, 58, 40, 116, '2018-09-09 19:20:46', '2018-09-09 19:20:46'),
(630, 'IF-and-1', '5 9', '2018-09-10 09:20:49', '2018-09-10 09:20:49', '2018-09-10 09:20:49', 'benar', 193, 58, 40, 117, '2018-09-09 19:20:49', '2018-09-09 19:20:49'),
(631, 'If-or-1', '6 -6', '2018-09-10 09:20:51', '2018-09-10 09:20:51', '2018-09-10 09:20:51', 'benar', 169, 58, 40, 118, '2018-09-09 19:20:52', '2018-09-09 19:20:52'),
(632, 'IF-2', '4  3', '2018-09-10 09:20:53', '2018-09-10 09:20:53', '2018-09-10 09:20:53', 'salah', 171, 58, 40, 115, '2018-09-09 19:20:53', '2018-09-09 19:20:53'),
(633, 'IF-and-1', '5 9', '2018-09-10 09:20:59', '2018-09-10 09:20:59', '2018-09-10 09:20:59', 'benar', 184, 58, 40, 117, '2018-09-09 19:20:59', '2018-09-09 19:20:59'),
(634, 'IF-3', '0  5', '2018-09-10 09:21:10', '2018-09-10 09:21:10', '2018-09-10 09:21:10', 'benar', 180, 58, 40, 116, '2018-09-09 19:21:10', '2018-09-09 19:21:10'),
(635, 'IF-2', '7  5', '2018-09-10 09:21:14', '2018-09-10 09:21:14', '2018-09-10 09:21:14', 'benar', 187, 58, 40, 115, '2018-09-09 19:21:14', '2018-09-09 19:21:14'),
(636, 'If-or-1', '6 -6', '2018-09-10 09:21:16', '2018-09-10 09:21:16', '2018-09-10 09:21:16', 'benar', 175, 58, 40, 118, '2018-09-09 19:21:16', '2018-09-09 19:21:16'),
(637, 'IF-and-1', '5 9', '2018-09-10 09:21:20', '2018-09-10 09:21:20', '2018-09-10 09:21:20', 'benar', 178, 58, 40, 117, '2018-09-09 19:21:20', '2018-09-09 19:21:20'),
(638, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:21:20', '2018-09-10 09:21:20', '2018-09-10 09:21:20', 'benar', 186, 58, 40, 119, '2018-09-09 19:21:20', '2018-09-09 19:21:20'),
(639, 'If-or-1', '6 -6', '2018-09-10 09:21:23', '2018-09-10 09:21:23', '2018-09-10 09:21:23', 'benar', 193, 58, 40, 118, '2018-09-09 19:21:23', '2018-09-09 19:21:23'),
(640, 'IF-and-1', '5 9', '2018-09-10 09:21:26', '2018-09-10 09:21:26', '2018-09-10 09:21:26', 'benar', 182, 58, 40, 117, '2018-09-09 19:21:26', '2018-09-09 19:21:26'),
(641, 'IF-3', '0  5', '2018-09-10 09:21:26', '2018-09-10 09:21:26', '2018-09-10 09:21:26', 'benar', 188, 58, 40, 116, '2018-09-09 19:21:26', '2018-09-09 19:21:26'),
(642, 'If-or-1', '6 -6', '2018-09-10 09:21:28', '2018-09-10 09:21:28', '2018-09-10 09:21:28', 'benar', 184, 58, 40, 118, '2018-09-09 19:21:28', '2018-09-09 19:21:28'),
(643, 'IF-and-1', '5 9', '2018-09-10 09:21:29', '2018-09-10 09:21:29', '2018-09-10 09:21:29', 'benar', 174, 58, 40, 117, '2018-09-09 19:21:29', '2018-09-09 19:21:29'),
(644, 'IF-and-1', '5 9', '2018-09-10 09:21:32', '2018-09-10 09:21:32', '2018-09-10 09:21:32', 'benar', 170, 58, 40, 117, '2018-09-09 19:21:32', '2018-09-09 19:21:32'),
(645, 'IF-and-1', '5 4', '2018-09-10 09:21:33', '2018-09-10 09:21:33', '2018-09-10 09:21:33', 'salah', 190, 58, 40, 117, '2018-09-09 19:21:33', '2018-09-09 19:21:33'),
(646, 'IF-3', '0  5', '2018-09-10 09:21:35', '2018-09-10 09:21:35', '2018-09-10 09:21:35', 'benar', 171, 58, 40, 116, '2018-09-09 19:21:35', '2018-09-09 19:21:35'),
(647, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:21:39', '2018-09-10 09:21:39', '2018-09-10 09:21:39', 'benar', 192, 58, 40, 119, '2018-09-09 19:21:39', '2018-09-09 19:21:39'),
(648, 'IF-3', '3  7', '2018-09-10 09:21:43', '2018-09-10 09:21:43', '2018-09-10 09:21:43', 'salah', 179, 58, 40, 116, '2018-09-09 19:21:43', '2018-09-09 19:21:43'),
(649, 'IF-and-1', '5 9', '2018-09-10 09:21:52', '2018-09-10 09:21:52', '2018-09-10 09:21:52', 'benar', 177, 58, 40, 117, '2018-09-09 19:21:52', '2018-09-09 19:21:52'),
(650, 'If-or-1', '6 -6', '2018-09-10 09:21:55', '2018-09-10 09:21:55', '2018-09-10 09:21:55', 'benar', 174, 58, 40, 118, '2018-09-09 19:21:55', '2018-09-09 19:21:55'),
(651, 'IF-3', '0  7', '2018-09-10 09:28:19', '2018-09-10 09:28:19', '2018-09-10 09:28:19', 'salah', 181, 58, 40, 116, '2018-09-10 02:28:19', '2018-09-09 19:28:19'),
(652, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:22:00', '2018-09-10 09:22:00', '2018-09-10 09:22:00', 'benar', 193, 58, 40, 119, '2018-09-09 19:22:00', '2018-09-09 19:22:00'),
(653, 'IF-3', '0  5', '2018-09-10 09:22:02', '2018-09-10 09:22:02', '2018-09-10 09:22:02', 'benar', 187, 58, 40, 116, '2018-09-09 19:22:02', '2018-09-09 19:22:02'),
(654, 'If-or-1', '6 -6', '2018-09-10 09:22:03', '2018-09-10 09:22:03', '2018-09-10 09:22:03', 'benar', 182, 58, 40, 118, '2018-09-09 19:22:03', '2018-09-09 19:22:03'),
(655, 'If-or-1', '9 -1', '2018-09-10 09:22:03', '2018-09-10 09:22:03', '2018-09-10 09:22:03', 'salah', 170, 58, 40, 118, '2018-09-09 19:22:03', '2018-09-09 19:22:03'),
(656, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:22:06', '2018-09-10 09:22:06', '2018-09-10 09:22:06', 'benar', 184, 58, 40, 119, '2018-09-09 19:22:06', '2018-09-09 19:22:06'),
(657, 'If-or-1', '6 -6', '2018-09-10 09:22:07', '2018-09-10 09:22:07', '2018-09-10 09:22:07', 'benar', 178, 58, 40, 118, '2018-09-09 19:22:07', '2018-09-09 19:22:07'),
(658, 'IF-and-1', '5 9', '2018-09-10 09:22:09', '2018-09-10 09:22:09', '2018-09-10 09:22:09', 'benar', 171, 58, 40, 117, '2018-09-09 19:22:09', '2018-09-09 19:22:09'),
(659, 'If-or-1', '6 -6', '2018-09-10 09:22:11', '2018-09-10 09:22:11', '2018-09-10 09:22:11', 'benar', 177, 58, 40, 118, '2018-09-09 19:22:11', '2018-09-09 19:22:11'),
(660, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:22:11', '2018-09-10 09:22:11', '2018-09-10 09:22:11', 'benar', 175, 58, 40, 119, '2018-09-09 19:22:11', '2018-09-09 19:22:11'),
(661, 'If-or-1', '6 -6', '2018-09-10 09:22:12', '2018-09-10 09:22:12', '2018-09-10 09:22:12', 'benar', 172, 58, 40, 118, '2018-09-09 19:22:12', '2018-09-09 19:22:12'),
(662, 'IF-and-1', '5 9', '2018-09-10 09:22:12', '2018-09-10 09:22:12', '2018-09-10 09:22:12', 'benar', 180, 58, 40, 117, '2018-09-09 19:22:13', '2018-09-09 19:22:13'),
(663, 'If-nested-1', '3', '2018-09-10 09:22:15', '2018-09-10 09:22:15', '2018-09-10 09:22:15', 'benar', 189, 58, 40, 120, '2018-09-09 19:22:15', '2018-09-09 19:22:15'),
(664, 'If-nested-1', '3', '2018-09-10 09:22:17', '2018-09-10 09:22:17', '2018-09-10 09:22:17', 'benar', 192, 58, 40, 120, '2018-09-09 19:22:17', '2018-09-09 19:22:17'),
(665, 'IF-1', '3', '2018-09-10 09:26:43', '2018-09-10 09:26:43', '2018-09-10 09:26:43', 'salah', 181, 58, 40, 114, '2018-09-10 02:26:43', '2018-09-09 19:26:43'),
(666, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:22:20', '2018-09-10 09:22:20', '2018-09-10 09:22:20', 'benar', 169, 58, 40, 119, '2018-09-09 19:22:20', '2018-09-09 19:22:20'),
(667, 'IF-and-1', '5 9', '2018-09-10 09:22:23', '2018-09-10 09:22:23', '2018-09-10 09:22:23', 'benar', 179, 58, 40, 117, '2018-09-09 19:22:23', '2018-09-09 19:22:23'),
(668, 'IF-and-1', '5 9', '2018-09-10 09:22:27', '2018-09-10 09:22:27', '2018-09-10 09:22:27', 'benar', 188, 58, 40, 117, '2018-09-09 19:22:27', '2018-09-09 19:22:27'),
(669, 'IF-2', '5  4', '2018-09-10 09:27:39', '2018-09-10 09:27:39', '2018-09-10 09:27:39', 'salah', 181, 58, 40, 115, '2018-09-10 02:27:39', '2018-09-09 19:27:39'),
(670, 'If-or-1', '6 -6', '2018-09-10 09:22:44', '2018-09-10 09:22:44', '2018-09-10 09:22:44', 'benar', 171, 58, 40, 118, '2018-09-09 19:22:44', '2018-09-09 19:22:44'),
(671, 'If-nested-1', '3', '2018-09-10 09:22:46', '2018-09-10 09:22:46', '2018-09-10 09:22:46', 'benar', 184, 58, 40, 120, '2018-09-09 19:22:46', '2018-09-09 19:22:46'),
(672, 'Kondisi-if-1', 'if (x <= 0) and (x >= n):', '2018-09-10 09:22:46', '2018-09-10 09:22:46', '2018-09-10 09:22:46', 'salah', 174, 58, 40, 119, '2018-09-09 19:22:46', '2018-09-09 19:22:46'),
(673, 'If-nested-1', '14', '2018-09-10 09:22:48', '2018-09-10 09:22:48', '2018-09-10 09:22:48', 'salah', 175, 58, 40, 120, '2018-09-09 19:22:48', '2018-09-09 19:22:48'),
(674, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:22:52', '2018-09-10 09:22:52', '2018-09-10 09:22:52', 'benar', 170, 58, 40, 119, '2018-09-09 19:22:52', '2018-09-09 19:22:52'),
(675, 'If-or-1', '6 -6', '2018-09-10 09:22:55', '2018-09-10 09:22:55', '2018-09-10 09:22:55', 'benar', 179, 58, 40, 118, '2018-09-09 19:22:55', '2018-09-09 19:22:55'),
(676, 'Kondisi-if-1', 'if (x >= 0) or (x <= n):', '2018-09-10 09:22:58', '2018-09-10 09:22:58', '2018-09-10 09:22:58', 'salah', 182, 58, 40, 119, '2018-09-09 19:22:58', '2018-09-09 19:22:58'),
(677, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:23:04', '2018-09-10 09:23:04', '2018-09-10 09:23:04', 'benar', 178, 58, 40, 119, '2018-09-09 19:23:04', '2018-09-09 19:23:04'),
(678, 'If-nested-1', '3', '2018-09-10 09:23:05', '2018-09-10 09:23:05', '2018-09-10 09:23:05', 'benar', 193, 58, 40, 120, '2018-09-09 19:23:05', '2018-09-09 19:23:05'),
(679, 'IF-1', '3', '2018-09-10 09:23:18', '2018-09-10 09:23:18', '2018-09-10 09:23:18', 'salah', 183, 58, 40, 114, '2018-09-10 02:23:18', '2018-09-09 19:23:18'),
(680, 'Kondisi-if-1', 'Semua salah', '2018-09-10 09:23:11', '2018-09-10 09:23:11', '2018-09-10 09:23:11', 'salah', 171, 58, 40, 119, '2018-09-09 19:23:11', '2018-09-09 19:23:11'),
(681, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:24:21', '2018-09-10 09:24:21', '2018-09-10 09:24:21', 'benar', 177, 58, 40, 119, '2018-09-10 02:24:21', '2018-09-09 19:24:21'),
(682, 'If-or-1', '6 -6', '2018-09-10 09:23:21', '2018-09-10 09:23:21', '2018-09-10 09:23:21', 'benar', 188, 58, 40, 118, '2018-09-09 19:23:21', '2018-09-09 19:23:21'),
(683, 'If-nested-1', '3', '2018-09-10 09:23:24', '2018-09-10 09:23:24', '2018-09-10 09:23:24', 'benar', 169, 58, 40, 120, '2018-09-09 19:23:24', '2018-09-09 19:23:24'),
(684, 'If-or-1', '6 -6', '2018-09-10 09:23:30', '2018-09-10 09:23:30', '2018-09-10 09:23:30', 'benar', 180, 58, 40, 118, '2018-09-09 19:23:30', '2018-09-09 19:23:30'),
(685, 'If-nested-1', '3', '2018-09-10 09:25:13', '2018-09-10 09:25:13', '2018-09-10 09:25:13', 'benar', 186, 58, 40, 120, '2018-09-10 02:25:13', '2018-09-09 19:25:13'),
(686, 'If-nested-1', '14', '2018-09-10 09:23:34', '2018-09-10 09:23:34', '2018-09-10 09:23:34', 'salah', 170, 58, 40, 120, '2018-09-09 19:23:34', '2018-09-09 19:23:34'),
(687, 'IF-and-1', '5 9', '2018-09-10 09:23:38', '2018-09-10 09:23:38', '2018-09-10 09:23:38', 'benar', 187, 58, 40, 117, '2018-09-09 19:23:38', '2018-09-09 19:23:38'),
(688, 'If-nested-1', '1', '2018-09-10 09:23:39', '2018-09-10 09:23:39', '2018-09-10 09:23:39', 'salah', 174, 58, 40, 120, '2018-09-09 19:23:39', '2018-09-09 19:23:39'),
(689, 'If-nested-1', '3', '2018-09-10 09:24:22', '2018-09-10 09:24:22', '2018-09-10 09:24:22', 'benar', 182, 58, 40, 120, '2018-09-10 02:24:22', '2018-09-09 19:24:22'),
(690, 'Kondisi-if-1', 'if (x >= 0) or (x <= n):', '2018-09-10 09:23:49', '2018-09-10 09:23:49', '2018-09-10 09:23:49', 'salah', 172, 58, 40, 119, '2018-09-09 19:23:49', '2018-09-09 19:23:49'),
(691, 'IF-1', '3', '2018-09-10 09:24:23', '2018-09-10 09:24:23', '2018-09-10 09:24:23', 'salah', 173, 58, 40, 114, '2018-09-10 02:24:23', '2018-09-09 19:24:23'),
(692, 'Kondisi-if-1', 'Semua salah', '2018-09-10 09:23:53', '2018-09-10 09:23:53', '2018-09-10 09:23:53', 'salah', 190, 58, 40, 119, '2018-09-09 19:23:53', '2018-09-09 19:23:53'),
(693, 'IF-2', '7  5', '2018-09-10 09:23:54', '2018-09-10 09:23:54', '2018-09-10 09:23:54', 'benar', 183, 58, 40, 115, '2018-09-09 19:23:54', '2018-09-09 19:23:54'),
(694, 'If-nested-1', '1', '2018-09-10 09:24:29', '2018-09-10 09:24:29', '2018-09-10 09:24:29', 'salah', 177, 58, 40, 120, '2018-09-10 02:24:29', '2018-09-09 19:24:29'),
(695, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:24:00', '2018-09-10 09:24:00', '2018-09-10 09:24:00', 'benar', 173, 58, 40, 119, '2018-09-09 19:24:00', '2018-09-09 19:24:00'),
(696, 'If-nested-1', '3', '2018-09-10 09:24:04', '2018-09-10 09:24:04', '2018-09-10 09:24:04', 'benar', 173, 58, 40, 120, '2018-09-09 19:24:04', '2018-09-09 19:24:04'),
(697, 'Kondisi-if-1', 'Semua salah', '2018-09-10 09:24:12', '2018-09-10 09:24:12', '2018-09-10 09:24:12', 'salah', 180, 58, 40, 119, '2018-09-09 19:24:12', '2018-09-09 19:24:12'),
(698, 'Kondisi-if-1', 'if (x <= 0) or (x >= n):', '2018-09-10 09:24:18', '2018-09-10 09:24:18', '2018-09-10 09:24:18', 'salah', 179, 58, 40, 119, '2018-09-09 19:24:18', '2018-09-09 19:24:18'),
(699, 'If-nested-1', '3.5', '2018-09-10 09:24:18', '2018-09-10 09:24:18', '2018-09-10 09:24:18', 'salah', 190, 58, 40, 120, '2018-09-09 19:24:18', '2018-09-09 19:24:18'),
(700, 'If-nested-1', '3', '2018-09-10 09:24:24', '2018-09-10 09:24:24', '2018-09-10 09:24:24', 'benar', 171, 58, 40, 120, '2018-09-09 19:24:24', '2018-09-09 19:24:24'),
(701, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:24:28', '2018-09-10 09:24:28', '2018-09-10 09:24:28', 'benar', 189, 58, 40, 119, '2018-09-09 19:24:28', '2018-09-09 19:24:28'),
(702, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:26:32', '2018-09-10 09:26:32', '2018-09-10 09:26:32', 'benar', 188, 58, 40, 119, '2018-09-10 02:26:32', '2018-09-09 19:26:32'),
(703, 'IF-3', '0  5', '2018-09-10 09:24:30', '2018-09-10 09:24:30', '2018-09-10 09:24:30', 'benar', 183, 58, 40, 116, '2018-09-09 19:24:30', '2018-09-09 19:24:30'),
(704, 'IF-2', '7  5', '2018-09-10 09:24:34', '2018-09-10 09:24:34', '2018-09-10 09:24:34', 'benar', 173, 58, 40, 115, '2018-09-09 19:24:34', '2018-09-09 19:24:34'),
(705, 'IF-3', '0  5', '2018-09-10 09:24:45', '2018-09-10 09:24:45', '2018-09-10 09:24:45', 'benar', 173, 58, 40, 116, '2018-09-09 19:24:45', '2018-09-09 19:24:45'),
(706, 'IF-and-1', '5 9', '2018-09-10 09:24:48', '2018-09-10 09:24:48', '2018-09-10 09:24:48', 'benar', 183, 58, 40, 117, '2018-09-09 19:24:48', '2018-09-09 19:24:48'),
(707, 'If-nested-1', '3', '2018-09-10 09:24:55', '2018-09-10 09:24:55', '2018-09-10 09:24:55', 'benar', 178, 58, 40, 120, '2018-09-09 19:24:55', '2018-09-09 19:24:55'),
(708, 'If-or-1', '6 -6', '2018-09-10 09:25:00', '2018-09-10 09:25:00', '2018-09-10 09:25:00', 'benar', 187, 58, 40, 118, '2018-09-09 19:25:00', '2018-09-09 19:25:00'),
(709, 'If-or-1', '6 -6', '2018-09-10 09:25:06', '2018-09-10 09:25:06', '2018-09-10 09:25:06', 'benar', 183, 58, 40, 118, '2018-09-09 19:25:06', '2018-09-09 19:25:06'),
(710, 'IF-and-1', '5 9', '2018-09-10 09:25:10', '2018-09-10 09:25:10', '2018-09-10 09:25:10', 'benar', 173, 58, 40, 117, '2018-09-09 19:25:10', '2018-09-09 19:25:10'),
(711, 'If-or-1', '6 -6', '2018-09-10 09:25:19', '2018-09-10 09:25:19', '2018-09-10 09:25:19', 'benar', 173, 58, 40, 118, '2018-09-09 19:25:19', '2018-09-09 19:25:19'),
(712, 'If-nested-1', '3', '2018-09-10 09:25:28', '2018-09-10 09:25:28', '2018-09-10 09:25:28', 'benar', 180, 58, 40, 120, '2018-09-09 19:25:28', '2018-09-09 19:25:28'),
(713, 'If-nested-1', '3', '2018-09-10 09:25:37', '2018-09-10 09:25:37', '2018-09-10 09:25:37', 'benar', 172, 58, 40, 120, '2018-09-09 19:25:37', '2018-09-09 19:25:37'),
(714, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:25:54', '2018-09-10 09:25:54', '2018-09-10 09:25:54', 'benar', 187, 58, 40, 119, '2018-09-09 19:25:54', '2018-09-09 19:25:54'),
(715, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:26:32', '2018-09-10 09:26:32', '2018-09-10 09:26:32', 'benar', 183, 58, 40, 119, '2018-09-09 19:26:32', '2018-09-09 19:26:32'),
(716, 'If-nested-1', '9', '2018-09-10 09:26:50', '2018-09-10 09:26:50', '2018-09-10 09:26:50', 'salah', 179, 58, 40, 120, '2018-09-09 19:26:50', '2018-09-09 19:26:50'),
(717, 'IF-1', '3', '2018-09-10 09:26:58', '2018-09-10 09:26:58', '2018-09-10 09:26:58', 'salah', 185, 58, 40, 114, '2018-09-09 19:26:58', '2018-09-09 19:26:58'),
(718, 'If-nested-1', '3', '2018-09-10 09:27:05', '2018-09-10 09:27:05', '2018-09-10 09:27:05', 'benar', 183, 58, 40, 120, '2018-09-09 19:27:05', '2018-09-09 19:27:05'),
(719, 'If-nested-1', '14', '2018-09-10 09:27:15', '2018-09-10 09:27:15', '2018-09-10 09:27:15', 'salah', 187, 58, 40, 120, '2018-09-09 19:27:15', '2018-09-09 19:27:15'),
(720, 'IF-2', '7  5', '2018-09-10 09:27:27', '2018-09-10 09:27:27', '2018-09-10 09:27:27', 'benar', 185, 58, 40, 115, '2018-09-09 19:27:27', '2018-09-09 19:27:27'),
(721, 'If-nested-1', '3', '2018-09-10 09:27:35', '2018-09-10 09:27:35', '2018-09-10 09:27:35', 'benar', 188, 58, 40, 120, '2018-09-09 19:27:35', '2018-09-09 19:27:35'),
(722, 'IF-3', '0  5', '2018-09-10 09:27:45', '2018-09-10 09:27:45', '2018-09-10 09:27:45', 'benar', 185, 58, 40, 116, '2018-09-09 19:27:45', '2018-09-09 19:27:45'),
(723, 'IF-and-1', '5 9', '2018-09-10 09:28:07', '2018-09-10 09:28:07', '2018-09-10 09:28:07', 'benar', 185, 58, 40, 117, '2018-09-09 19:28:07', '2018-09-09 19:28:07'),
(724, 'If-or-1', '6 -6', '2018-09-10 09:28:20', '2018-09-10 09:28:20', '2018-09-10 09:28:20', 'benar', 185, 58, 40, 118, '2018-09-09 19:28:20', '2018-09-09 19:28:20'),
(725, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 09:28:42', '2018-09-10 09:28:42', '2018-09-10 09:28:42', 'benar', 185, 58, 40, 119, '2018-09-09 19:28:42', '2018-09-09 19:28:42'),
(726, 'IF-and-1', '5 4', '2018-09-10 09:28:43', '2018-09-10 09:28:43', '2018-09-10 09:28:43', 'salah', 181, 58, 40, 117, '2018-09-09 19:28:43', '2018-09-09 19:28:43'),
(727, 'If-or-1', '9 -6', '2018-09-10 09:29:22', '2018-09-10 09:29:22', '2018-09-10 09:29:22', 'salah', 181, 58, 40, 118, '2018-09-09 19:29:22', '2018-09-09 19:29:22'),
(728, 'If-nested-1', '14', '2018-09-10 09:29:25', '2018-09-10 09:29:25', '2018-09-10 09:29:25', 'salah', 185, 58, 40, 120, '2018-09-09 19:29:25', '2018-09-09 19:29:25'),
(729, 'Kondisi-if-1', 'if (x <= 0) or (x >= n):', '2018-09-10 09:29:55', '2018-09-10 09:29:55', '2018-09-10 09:29:55', 'salah', 181, 58, 40, 119, '2018-09-09 19:29:55', '2018-09-09 19:29:55'),
(730, 'If-nested-1', '9', '2018-09-10 09:30:16', '2018-09-10 09:30:16', '2018-09-10 09:30:16', 'salah', 181, 58, 40, 120, '2018-09-09 19:30:16', '2018-09-09 19:30:16'),
(731, 'IF-1', '6', '2018-09-10 17:12:50', '2018-09-10 17:12:50', '2018-09-10 17:12:50', 'benar', 198, 59, 40, 114, '2018-09-10 03:12:50', '2018-09-10 03:12:50'),
(732, 'IF-1', '6', '2018-09-10 17:12:53', '2018-09-10 17:12:53', '2018-09-10 17:12:53', 'benar', 203, 59, 40, 114, '2018-09-10 03:12:53', '2018-09-10 03:12:53'),
(733, 'IF-1', '6', '2018-09-10 17:21:10', '2018-09-10 17:21:10', '2018-09-10 17:21:10', 'benar', 202, 59, 40, 114, '2018-09-10 10:21:10', '2018-09-10 03:21:10'),
(734, 'IF-1', '6', '2018-09-10 17:13:07', '2018-09-10 17:13:07', '2018-09-10 17:13:07', 'benar', 196, 59, 40, 114, '2018-09-10 03:13:07', '2018-09-10 03:13:07'),
(735, 'IF-1', '6', '2018-09-10 17:13:07', '2018-09-10 17:13:07', '2018-09-10 17:13:07', 'benar', 196, 59, 40, 114, '2018-09-10 03:13:07', '2018-09-10 03:13:07'),
(736, 'IF-1', '6', '2018-09-10 17:13:08', '2018-09-10 17:13:08', '2018-09-10 17:13:08', 'benar', 195, 59, 40, 114, '2018-09-10 03:13:08', '2018-09-10 03:13:08'),
(737, 'IF-1', '3', '2018-09-10 17:13:10', '2018-09-10 17:13:10', '2018-09-10 17:13:10', 'salah', 200, 59, 40, 114, '2018-09-10 03:13:10', '2018-09-10 03:13:10'),
(738, 'IF-1', '3', '2018-09-10 17:22:46', '2018-09-10 17:22:46', '2018-09-10 17:22:46', 'salah', 208, 59, 40, 114, '2018-09-10 10:22:46', '2018-09-10 03:22:46'),
(739, 'IF-2', '7  5', '2018-09-10 17:13:21', '2018-09-10 17:13:21', '2018-09-10 17:13:21', 'benar', 198, 59, 40, 115, '2018-09-10 03:13:21', '2018-09-10 03:13:21'),
(740, 'IF-2', '7  5', '2018-09-10 17:13:24', '2018-09-10 17:13:24', '2018-09-10 17:13:24', 'benar', 203, 59, 40, 115, '2018-09-10 03:13:24', '2018-09-10 03:13:24'),
(741, 'IF-1', '6', '2018-09-10 17:27:51', '2018-09-10 17:27:51', '2018-09-10 17:27:51', 'benar', 201, 59, 40, 114, '2018-09-10 10:27:51', '2018-09-10 03:27:51'),
(742, 'IF-1', '6', '2018-09-10 17:13:30', '2018-09-10 17:13:30', '2018-09-10 17:13:30', 'benar', 207, 59, 40, 114, '2018-09-10 03:13:30', '2018-09-10 03:13:30'),
(743, 'IF-2', '7  5', '2018-09-10 17:13:36', '2018-09-10 17:13:36', '2018-09-10 17:13:36', 'benar', 204, 59, 40, 115, '2018-09-10 03:13:36', '2018-09-10 03:13:36'),
(744, 'IF-2', '7  5', '2018-09-10 17:13:39', '2018-09-10 17:13:39', '2018-09-10 17:13:39', 'benar', 202, 59, 40, 115, '2018-09-10 03:13:39', '2018-09-10 03:13:39'),
(745, 'IF-2', '7  5', '2018-09-10 17:13:41', '2018-09-10 17:13:41', '2018-09-10 17:13:41', 'benar', 195, 59, 40, 115, '2018-09-10 03:13:41', '2018-09-10 03:13:41'),
(746, 'IF-1', '2', '2018-09-10 17:13:42', '2018-09-10 17:13:42', '2018-09-10 17:13:42', 'salah', 206, 59, 40, 114, '2018-09-10 03:13:42', '2018-09-10 03:13:42'),
(747, 'IF-2', '7  5', '2018-09-10 17:13:43', '2018-09-10 17:13:43', '2018-09-10 17:13:43', 'benar', 196, 59, 40, 115, '2018-09-10 03:13:43', '2018-09-10 03:13:43'),
(748, 'IF-2', '7  5', '2018-09-10 17:25:13', '2018-09-10 17:25:13', '2018-09-10 17:25:13', 'benar', 212, 59, 40, 115, '2018-09-10 10:25:13', '2018-09-10 03:25:13'),
(749, 'IF-3', '0  5', '2018-09-10 17:13:47', '2018-09-10 17:13:47', '2018-09-10 17:13:47', 'benar', 203, 59, 40, 116, '2018-09-10 03:13:48', '2018-09-10 03:13:48'),
(750, 'IF-3', '0  5', '2018-09-10 17:13:48', '2018-09-10 17:13:48', '2018-09-10 17:13:48', 'benar', 198, 59, 40, 116, '2018-09-10 03:13:48', '2018-09-10 03:13:48'),
(751, 'IF-2', '5  7', '2018-09-10 17:13:55', '2018-09-10 17:13:55', '2018-09-10 17:13:55', 'salah', 200, 59, 40, 115, '2018-09-10 03:13:55', '2018-09-10 03:13:55'),
(752, 'IF-2', '7  5', '2018-09-10 17:14:01', '2018-09-10 17:14:01', '2018-09-10 17:14:01', 'benar', 197, 59, 40, 115, '2018-09-10 03:14:01', '2018-09-10 03:14:01'),
(753, 'IF-3', '0  5', '2018-09-10 17:14:02', '2018-09-10 17:14:02', '2018-09-10 17:14:02', 'benar', 202, 59, 40, 116, '2018-09-10 03:14:02', '2018-09-10 03:14:02'),
(754, 'IF-3', '0  5', '2018-09-10 17:14:05', '2018-09-10 17:14:05', '2018-09-10 17:14:05', 'benar', 196, 59, 40, 116, '2018-09-10 03:14:05', '2018-09-10 03:14:05'),
(755, 'IF-2', '7  5', '2018-09-10 17:14:14', '2018-09-10 17:14:14', '2018-09-10 17:14:14', 'benar', 207, 59, 40, 115, '2018-09-10 03:14:14', '2018-09-10 03:14:14'),
(756, 'IF-and-1', '5 9', '2018-09-10 17:14:17', '2018-09-10 17:14:17', '2018-09-10 17:14:17', 'benar', 203, 59, 40, 117, '2018-09-10 03:14:17', '2018-09-10 03:14:17'),
(757, 'IF-3', '0  5', '2018-09-10 17:14:24', '2018-09-10 17:14:24', '2018-09-10 17:14:24', 'benar', 195, 59, 40, 116, '2018-09-10 03:14:24', '2018-09-10 03:14:24'),
(758, 'IF-and-1', '5 9', '2018-09-10 17:14:27', '2018-09-10 17:14:27', '2018-09-10 17:14:27', 'benar', 198, 59, 40, 117, '2018-09-10 03:14:27', '2018-09-10 03:14:27'),
(759, 'IF-3', '0  5', '2018-09-10 17:14:29', '2018-09-10 17:14:29', '2018-09-10 17:14:29', 'benar', 200, 59, 40, 116, '2018-09-10 03:14:29', '2018-09-10 03:14:29'),
(760, 'IF-2', '4  5', '2018-09-10 17:14:32', '2018-09-10 17:14:32', '2018-09-10 17:14:32', 'salah', 206, 59, 40, 115, '2018-09-10 03:14:32', '2018-09-10 03:14:32'),
(761, 'IF-3', '0  5', '2018-09-10 17:26:08', '2018-09-10 17:26:08', '2018-09-10 17:26:08', 'benar', 212, 59, 40, 116, '2018-09-10 10:26:08', '2018-09-10 03:26:08'),
(762, 'IF-and-1', '5 9', '2018-09-10 17:14:33', '2018-09-10 17:14:33', '2018-09-10 17:14:33', 'benar', 196, 59, 40, 117, '2018-09-10 03:14:33', '2018-09-10 03:14:33'),
(763, 'IF-1', '6', '2018-09-10 17:14:36', '2018-09-10 17:14:36', '2018-09-10 17:14:36', 'benar', 204, 59, 40, 114, '2018-09-10 03:14:36', '2018-09-10 03:14:36'),
(764, 'IF-2', '5  7', '2018-09-10 17:28:22', '2018-09-10 17:28:22', '2018-09-10 17:28:22', 'salah', 201, 59, 40, 115, '2018-09-10 10:28:22', '2018-09-10 03:28:22'),
(765, 'IF-3', '0  5', '2018-09-10 17:14:38', '2018-09-10 17:14:38', '2018-09-10 17:14:38', 'benar', 197, 59, 40, 116, '2018-09-10 03:14:38', '2018-09-10 03:14:38'),
(766, 'IF-1', '5', '2018-09-10 17:21:30', '2018-09-10 17:21:30', '2018-09-10 17:21:30', 'salah', 194, 59, 40, 114, '2018-09-10 10:21:30', '2018-09-10 03:21:30'),
(767, 'IF-and-1', '5 9', '2018-09-10 17:14:45', '2018-09-10 17:14:45', '2018-09-10 17:14:45', 'benar', 202, 59, 40, 117, '2018-09-10 03:14:45', '2018-09-10 03:14:45'),
(768, 'If-or-1', '6 -6', '2018-09-10 17:14:47', '2018-09-10 17:14:47', '2018-09-10 17:14:47', 'benar', 203, 59, 40, 118, '2018-09-10 03:14:47', '2018-09-10 03:14:47'),
(769, 'IF-and-1', '5 9', '2018-09-10 17:14:47', '2018-09-10 17:14:47', '2018-09-10 17:14:47', 'benar', 195, 59, 40, 117, '2018-09-10 03:14:47', '2018-09-10 03:14:47'),
(770, 'IF-2', '4  5', '2018-09-10 17:14:48', '2018-09-10 17:14:48', '2018-09-10 17:14:48', 'salah', 208, 59, 40, 115, '2018-09-10 03:14:48', '2018-09-10 03:14:48'),
(771, 'IF-3', '0  5', '2018-09-10 17:14:53', '2018-09-10 17:14:53', '2018-09-10 17:14:53', 'benar', 207, 59, 40, 116, '2018-09-10 03:14:53', '2018-09-10 03:14:53'),
(772, 'IF-and-1', '5 9', '2018-09-10 17:15:05', '2018-09-10 17:15:05', '2018-09-10 17:15:05', 'benar', 197, 59, 40, 117, '2018-09-10 03:15:05', '2018-09-10 03:15:05'),
(773, 'If-or-1', '6 -6', '2018-09-10 17:15:06', '2018-09-10 17:15:06', '2018-09-10 17:15:06', 'benar', 202, 59, 40, 118, '2018-09-10 03:15:06', '2018-09-10 03:15:06'),
(774, 'If-or-1', '6 -6', '2018-09-10 17:15:07', '2018-09-10 17:15:07', '2018-09-10 17:15:07', 'benar', 195, 59, 40, 118, '2018-09-10 03:15:07', '2018-09-10 03:15:07'),
(775, 'IF-3', '0  5', '2018-09-10 17:15:08', '2018-09-10 17:15:08', '2018-09-10 17:15:08', 'benar', 204, 59, 40, 116, '2018-09-10 03:15:08', '2018-09-10 03:15:08'),
(776, 'IF-and-1', '5 9', '2018-09-10 17:15:08', '2018-09-10 17:15:08', '2018-09-10 17:15:08', 'benar', 200, 59, 40, 117, '2018-09-10 03:15:08', '2018-09-10 03:15:08'),
(777, 'IF-and-1', '5 9', '2018-09-10 17:26:37', '2018-09-10 17:26:37', '2018-09-10 17:26:37', 'benar', 212, 59, 40, 117, '2018-09-10 10:26:37', '2018-09-10 03:26:37'),
(778, 'If-or-1', '6 -6', '2018-09-10 17:15:12', '2018-09-10 17:15:12', '2018-09-10 17:15:12', 'benar', 198, 59, 40, 118, '2018-09-10 03:15:12', '2018-09-10 03:15:12'),
(779, 'If-or-1', '6 -6', '2018-09-10 17:15:13', '2018-09-10 17:15:13', '2018-09-10 17:15:13', 'benar', 196, 59, 40, 118, '2018-09-10 03:15:13', '2018-09-10 03:15:13'),
(780, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:15:24', '2018-09-10 17:15:24', '2018-09-10 17:15:24', 'benar', 203, 59, 40, 119, '2018-09-10 03:15:24', '2018-09-10 03:15:24'),
(781, 'IF-3', '0  7', '2018-09-10 17:15:26', '2018-09-10 17:15:26', '2018-09-10 17:15:26', 'salah', 208, 59, 40, 116, '2018-09-10 03:15:26', '2018-09-10 03:15:26'),
(782, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:15:27', '2018-09-10 17:15:27', '2018-09-10 17:15:27', 'benar', 195, 59, 40, 119, '2018-09-10 03:15:27', '2018-09-10 03:15:27'),
(783, 'IF-and-1', '5 9', '2018-09-10 17:15:35', '2018-09-10 17:15:35', '2018-09-10 17:15:35', 'benar', 204, 59, 40, 117, '2018-09-10 03:15:35', '2018-09-10 03:15:35'),
(784, 'If-or-1', '6 -6', '2018-09-10 17:15:38', '2018-09-10 17:15:38', '2018-09-10 17:15:38', 'benar', 197, 59, 40, 118, '2018-09-10 03:15:38', '2018-09-10 03:15:38'),
(785, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:15:41', '2018-09-10 17:15:41', '2018-09-10 17:15:41', 'benar', 202, 59, 40, 119, '2018-09-10 03:15:42', '2018-09-10 03:15:42'),
(786, 'IF-3', '7  3', '2018-09-10 17:15:48', '2018-09-10 17:15:48', '2018-09-10 17:15:48', 'salah', 206, 59, 40, 116, '2018-09-10 03:15:48', '2018-09-10 03:15:48'),
(787, 'If-or-1', '6 -6', '2018-09-10 17:15:52', '2018-09-10 17:15:52', '2018-09-10 17:15:52', 'benar', 212, 59, 40, 118, '2018-09-10 03:15:52', '2018-09-10 03:15:52'),
(788, 'IF-3', '0  5', '2018-09-10 17:28:58', '2018-09-10 17:28:58', '2018-09-10 17:28:58', 'benar', 201, 59, 40, 116, '2018-09-10 10:28:58', '2018-09-10 03:28:58'),
(789, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:15:56', '2018-09-10 17:15:56', '2018-09-10 17:15:56', 'benar', 198, 59, 40, 119, '2018-09-10 03:15:56', '2018-09-10 03:15:56'),
(790, 'IF-2', '7  5', '2018-09-10 17:15:58', '2018-09-10 17:15:58', '2018-09-10 17:15:58', 'benar', 194, 59, 40, 115, '2018-09-10 03:15:58', '2018-09-10 03:15:58'),
(791, 'IF-and-1', '5 4', '2018-09-10 17:16:00', '2018-09-10 17:16:00', '2018-09-10 17:16:00', 'salah', 208, 59, 40, 117, '2018-09-10 03:16:00', '2018-09-10 03:16:00'),
(792, 'Kondisi-if-1', 'if (x >= 0) or (x <= n):', '2018-09-10 17:16:12', '2018-09-10 17:16:12', '2018-09-10 17:16:12', 'salah', 196, 59, 40, 119, '2018-09-10 03:16:12', '2018-09-10 03:16:12'),
(793, 'IF-and-1', '5 9', '2018-09-10 17:16:14', '2018-09-10 17:16:14', '2018-09-10 17:16:14', 'benar', 207, 59, 40, 117, '2018-09-10 03:16:14', '2018-09-10 03:16:14'),
(794, 'If-or-1', '6 -6', '2018-09-10 17:16:16', '2018-09-10 17:16:16', '2018-09-10 17:16:16', 'benar', 204, 59, 40, 118, '2018-09-10 03:16:16', '2018-09-10 03:16:16'),
(795, 'If-nested-1', '3', '2018-09-10 17:16:22', '2018-09-10 17:16:22', '2018-09-10 17:16:22', 'benar', 203, 59, 40, 120, '2018-09-10 03:16:22', '2018-09-10 03:16:22'),
(796, 'If-nested-1', '3', '2018-09-10 17:16:22', '2018-09-10 17:16:22', '2018-09-10 17:16:22', 'benar', 202, 59, 40, 120, '2018-09-10 03:16:23', '2018-09-10 03:16:23'),
(797, 'If-nested-1', '3', '2018-09-10 17:16:24', '2018-09-10 17:16:24', '2018-09-10 17:16:24', 'benar', 195, 59, 40, 120, '2018-09-10 03:16:24', '2018-09-10 03:16:24'),
(798, 'IF-3', '0  5', '2018-09-10 17:16:35', '2018-09-10 17:16:35', '2018-09-10 17:16:35', 'benar', 194, 59, 40, 116, '2018-09-10 03:16:35', '2018-09-10 03:16:35'),
(799, 'If-or-1', '9 -6', '2018-09-10 17:16:36', '2018-09-10 17:16:36', '2018-09-10 17:16:36', 'salah', 208, 59, 40, 118, '2018-09-10 03:16:36', '2018-09-10 03:16:36'),
(800, 'If-nested-1', '3', '2018-09-10 17:16:51', '2018-09-10 17:16:51', '2018-09-10 17:16:51', 'benar', 197, 59, 40, 120, '2018-09-10 03:16:51', '2018-09-10 03:16:51'),
(801, 'If-or-1', '6 -1', '2018-09-10 17:16:51', '2018-09-10 17:16:51', '2018-09-10 17:16:51', 'salah', 200, 59, 40, 118, '2018-09-10 03:16:51', '2018-09-10 03:16:51'),
(802, 'IF-and-1', '9 5', '2018-09-10 17:16:53', '2018-09-10 17:16:53', '2018-09-10 17:16:53', 'salah', 206, 59, 40, 117, '2018-09-10 03:16:53', '2018-09-10 03:16:53'),
(803, 'IF-and-1', '5 9', '2018-09-10 17:16:56', '2018-09-10 17:16:56', '2018-09-10 17:16:56', 'benar', 194, 59, 40, 117, '2018-09-10 03:16:56', '2018-09-10 03:16:56'),
(804, 'If-nested-1', '3', '2018-09-10 17:17:05', '2018-09-10 17:17:05', '2018-09-10 17:17:05', 'benar', 198, 59, 40, 120, '2018-09-10 03:17:05', '2018-09-10 03:17:05'),
(805, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:17:09', '2018-09-10 17:17:09', '2018-09-10 17:17:09', 'benar', 204, 59, 40, 119, '2018-09-10 03:17:09', '2018-09-10 03:17:09'),
(806, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:17:12', '2018-09-10 17:17:12', '2018-09-10 17:17:12', 'benar', 200, 59, 40, 119, '2018-09-10 03:17:12', '2018-09-10 03:17:12'),
(807, 'IF-and-1', '5 9', '2018-09-10 17:20:45', '2018-09-10 17:20:45', '2018-09-10 17:20:45', 'benar', 201, 59, 40, 117, '2018-09-10 10:20:45', '2018-09-10 03:20:45'),
(808, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:17:21', '2018-09-10 17:17:21', '2018-09-10 17:17:21', 'benar', 208, 59, 40, 119, '2018-09-10 03:17:21', '2018-09-10 03:17:21'),
(809, 'If-or-1', '6 -6', '2018-09-10 17:17:42', '2018-09-10 17:17:42', '2018-09-10 17:17:42', 'benar', 207, 59, 40, 118, '2018-09-10 03:17:42', '2018-09-10 03:17:42'),
(810, 'If-nested-1', '3', '2018-09-10 17:17:43', '2018-09-10 17:17:43', '2018-09-10 17:17:43', 'benar', 204, 59, 40, 120, '2018-09-10 03:17:43', '2018-09-10 03:17:43'),
(811, 'If-or-1', '9 -6', '2018-09-10 17:17:57', '2018-09-10 17:17:57', '2018-09-10 17:17:57', 'salah', 206, 59, 40, 118, '2018-09-10 03:17:57', '2018-09-10 03:17:57'),
(812, 'If-or-1', '6 -6', '2018-09-10 17:20:52', '2018-09-10 17:20:52', '2018-09-10 17:20:52', 'benar', 201, 59, 40, 118, '2018-09-10 10:20:52', '2018-09-10 03:20:52'),
(813, 'If-nested-1', '9', '2018-09-10 17:18:30', '2018-09-10 17:18:30', '2018-09-10 17:18:30', 'salah', 196, 59, 40, 120, '2018-09-10 10:18:30', '2018-09-10 03:18:30'),
(814, 'If-nested-1', '14', '2018-09-10 17:18:17', '2018-09-10 17:18:17', '2018-09-10 17:18:17', 'salah', 208, 59, 40, 120, '2018-09-10 03:18:17', '2018-09-10 03:18:17'),
(815, 'IF-1', '6', '2018-09-10 17:18:42', '2018-09-10 17:18:42', '2018-09-10 17:18:42', 'benar', 197, 59, 40, 114, '2018-09-10 03:18:42', '2018-09-10 03:18:42'),
(816, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:18:43', '2018-09-10 17:18:43', '2018-09-10 17:18:43', 'benar', 206, 59, 40, 119, '2018-09-10 03:18:43', '2018-09-10 03:18:43'),
(817, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:18:44', '2018-09-10 17:18:44', '2018-09-10 17:18:44', 'benar', 207, 59, 40, 119, '2018-09-10 03:18:44', '2018-09-10 03:18:44'),
(818, 'If-nested-1', '3', '2018-09-10 17:18:55', '2018-09-10 17:18:55', '2018-09-10 17:18:55', 'benar', 200, 59, 40, 120, '2018-09-10 03:18:55', '2018-09-10 03:18:55'),
(819, 'If-nested-1', '3', '2018-09-10 17:20:42', '2018-09-10 17:20:42', '2018-09-10 17:20:42', 'benar', 206, 59, 40, 120, '2018-09-10 10:20:42', '2018-09-10 03:20:42'),
(820, 'If-nested-1', '3', '2018-09-10 17:20:00', '2018-09-10 17:20:00', '2018-09-10 17:20:00', 'benar', 207, 59, 40, 120, '2018-09-10 03:20:00', '2018-09-10 03:20:00'),
(821, 'IF-1', '6', '2018-09-10 17:24:23', '2018-09-10 17:24:23', '2018-09-10 17:24:23', 'benar', 212, 59, 40, 114, '2018-09-10 10:24:23', '2018-09-10 03:24:23'),
(822, 'Kondisi-if-1', 'if (x <= 0) or (x >= n):', '2018-09-10 17:21:40', '2018-09-10 17:21:40', '2018-09-10 17:21:40', 'salah', 201, 59, 40, 119, '2018-09-10 03:21:40', '2018-09-10 03:21:40'),
(823, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:22:06', '2018-09-10 17:22:06', '2018-09-10 17:22:06', 'benar', 197, 59, 40, 119, '2018-09-10 03:22:06', '2018-09-10 03:22:06'),
(824, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-10 17:22:09', '2018-09-10 17:22:09', '2018-09-10 17:22:09', 'benar', 194, 59, 40, 119, '2018-09-10 03:22:09', '2018-09-10 03:22:09'),
(825, 'If-nested-1', '1', '2018-09-10 17:22:47', '2018-09-10 17:22:47', '2018-09-10 17:22:47', 'salah', 201, 59, 40, 120, '2018-09-10 10:22:47', '2018-09-10 03:22:47'),
(826, 'If-nested-1', '3', '2018-09-10 17:23:40', '2018-09-10 17:23:40', '2018-09-10 17:23:40', 'benar', 212, 59, 40, 120, '2018-09-10 03:23:40', '2018-09-10 03:23:40'),
(827, 'If-nested-1', '3.5', '2018-09-10 17:24:58', '2018-09-10 17:24:58', '2018-09-10 17:24:58', 'salah', 194, 59, 40, 120, '2018-09-10 03:24:58', '2018-09-10 03:24:58'),
(828, 'Kondisi-if-1', 'Semua salah', '2018-09-10 17:27:24', '2018-09-10 17:27:24', '2018-09-10 17:27:24', 'salah', 212, 59, 40, 119, '2018-09-10 03:27:24', '2018-09-10 03:27:24'),
(829, 'IF-1', '6', '2018-09-12 11:19:45', '2018-09-12 11:19:45', '2018-09-12 11:19:45', 'benar', 163, 60, 40, 114, '2018-09-11 21:19:45', '2018-09-11 21:19:45'),
(830, 'IF-1', '6', '2018-09-12 11:21:01', '2018-09-12 11:21:01', '2018-09-12 11:21:01', 'benar', 152, 60, 40, 114, '2018-09-11 21:21:01', '2018-09-11 21:21:01'),
(831, 'IF-2', '7  5', '2018-09-12 11:21:21', '2018-09-12 11:21:21', '2018-09-12 11:21:21', 'benar', 152, 60, 40, 115, '2018-09-11 21:21:21', '2018-09-11 21:21:21'),
(832, 'IF-2', '7  5', '2018-09-12 11:21:27', '2018-09-12 11:21:27', '2018-09-12 11:21:27', 'benar', 163, 60, 40, 115, '2018-09-11 21:21:27', '2018-09-11 21:21:27'),
(833, 'IF-3', '0  5', '2018-09-12 11:21:46', '2018-09-12 11:21:46', '2018-09-12 11:21:46', 'benar', 152, 60, 40, 116, '2018-09-11 21:21:46', '2018-09-11 21:21:46'),
(834, 'IF-1', '6', '2018-09-12 11:21:57', '2018-09-12 11:21:57', '2018-09-12 11:21:57', 'benar', 149, 60, 40, 114, '2018-09-11 21:21:57', '2018-09-11 21:21:57'),
(835, 'IF-1', '6', '2018-09-12 11:30:44', '2018-09-12 11:30:44', '2018-09-12 11:30:44', 'benar', 165, 60, 40, 114, '2018-09-12 04:30:44', '2018-09-11 21:30:44'),
(836, 'IF-3', '0  5', '2018-09-12 11:22:14', '2018-09-12 11:22:14', '2018-09-12 11:22:14', 'benar', 163, 60, 40, 116, '2018-09-11 21:22:14', '2018-09-11 21:22:14'),
(837, 'IF-and-1', '5 9', '2018-09-12 11:22:17', '2018-09-12 11:22:17', '2018-09-12 11:22:17', 'benar', 152, 60, 40, 117, '2018-09-11 21:22:17', '2018-09-11 21:22:17'),
(838, 'IF-1', '2', '2018-09-12 11:22:22', '2018-09-12 11:22:22', '2018-09-12 11:22:22', 'salah', 145, 60, 40, 114, '2018-09-11 21:22:22', '2018-09-11 21:22:22'),
(839, 'IF-2', '7  5', '2018-09-12 11:22:23', '2018-09-12 11:22:23', '2018-09-12 11:22:23', 'benar', 149, 60, 40, 115, '2018-09-11 21:22:23', '2018-09-11 21:22:23'),
(840, 'If-or-1', '6 -6', '2018-09-12 11:22:37', '2018-09-12 11:22:37', '2018-09-12 11:22:37', 'benar', 152, 60, 40, 118, '2018-09-11 21:22:37', '2018-09-11 21:22:37'),
(841, 'IF-3', '0  5', '2018-09-12 11:22:52', '2018-09-12 11:22:52', '2018-09-12 11:22:52', 'benar', 149, 60, 40, 116, '2018-09-11 21:22:52', '2018-09-11 21:22:52'),
(842, 'IF-1', '3', '2018-09-12 11:33:18', '2018-09-12 11:33:18', '2018-09-12 11:33:18', 'salah', 144, 60, 40, 114, '2018-09-12 04:33:18', '2018-09-11 21:33:18'),
(843, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:23:04', '2018-09-12 11:23:04', '2018-09-12 11:23:04', 'benar', 152, 60, 40, 119, '2018-09-11 21:23:04', '2018-09-11 21:23:04'),
(844, 'IF-and-1', '5 9', '2018-09-12 11:23:08', '2018-09-12 11:23:08', '2018-09-12 11:23:08', 'benar', 163, 60, 40, 117, '2018-09-11 21:23:08', '2018-09-11 21:23:08'),
(845, 'IF-2', '7  5', '2018-09-12 11:23:22', '2018-09-12 11:23:22', '2018-09-12 11:23:22', 'benar', 165, 60, 40, 115, '2018-09-11 21:23:22', '2018-09-11 21:23:22'),
(846, 'IF-2', '7  5', '2018-09-12 11:23:23', '2018-09-12 11:23:23', '2018-09-12 11:23:23', 'benar', 145, 60, 40, 115, '2018-09-11 21:23:23', '2018-09-11 21:23:23'),
(847, 'IF-3', '0  5', '2018-09-12 11:23:40', '2018-09-12 11:23:40', '2018-09-12 11:23:40', 'benar', 165, 60, 40, 116, '2018-09-11 21:23:40', '2018-09-11 21:23:40'),
(848, 'IF-and-1', '5 9', '2018-09-12 11:23:47', '2018-09-12 11:23:47', '2018-09-12 11:23:47', 'benar', 149, 60, 40, 117, '2018-09-11 21:23:47', '2018-09-11 21:23:47'),
(849, 'IF-and-1', '5 9', '2018-09-12 11:24:01', '2018-09-12 11:24:01', '2018-09-12 11:24:01', 'benar', 165, 60, 40, 117, '2018-09-11 21:24:01', '2018-09-11 21:24:01'),
(850, 'IF-3', '0  5', '2018-09-12 11:24:07', '2018-09-12 11:24:07', '2018-09-12 11:24:07', 'benar', 145, 60, 40, 116, '2018-09-11 21:24:07', '2018-09-11 21:24:07'),
(851, 'IF-2', '4  5', '2018-09-12 11:24:10', '2018-09-12 11:24:10', '2018-09-12 11:24:10', 'salah', 144, 60, 40, 115, '2018-09-11 21:24:10', '2018-09-11 21:24:10'),
(852, 'If-or-1', '6 -6', '2018-09-12 11:24:14', '2018-09-12 11:24:14', '2018-09-12 11:24:14', 'benar', 149, 60, 40, 118, '2018-09-11 21:24:14', '2018-09-11 21:24:14'),
(853, 'If-nested-1', '3', '2018-09-12 11:24:17', '2018-09-12 11:24:17', '2018-09-12 11:24:17', 'benar', 152, 60, 40, 120, '2018-09-11 21:24:17', '2018-09-11 21:24:17'),
(854, 'If-or-1', '6 -6', '2018-09-12 11:24:28', '2018-09-12 11:24:28', '2018-09-12 11:24:28', 'benar', 165, 60, 40, 118, '2018-09-11 21:24:28', '2018-09-11 21:24:28'),
(855, 'If-or-1', '9 -1', '2018-09-12 11:24:34', '2018-09-12 11:24:34', '2018-09-12 11:24:34', 'salah', 163, 60, 40, 118, '2018-09-11 21:24:34', '2018-09-11 21:24:34'),
(856, 'IF-and-1', '5 9', '2018-09-12 11:24:40', '2018-09-12 11:24:40', '2018-09-12 11:24:40', 'benar', 145, 60, 40, 117, '2018-09-11 21:24:40', '2018-09-11 21:24:40'),
(857, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:25:02', '2018-09-12 11:25:02', '2018-09-12 11:25:02', 'benar', 149, 60, 40, 119, '2018-09-11 21:25:02', '2018-09-11 21:25:02'),
(858, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:25:06', '2018-09-12 11:25:06', '2018-09-12 11:25:06', 'benar', 165, 60, 40, 119, '2018-09-11 21:25:06', '2018-09-11 21:25:06'),
(859, 'IF-3', '3  7', '2018-09-12 11:25:08', '2018-09-12 11:25:08', '2018-09-12 11:25:08', 'salah', 144, 60, 40, 116, '2018-09-11 21:25:08', '2018-09-11 21:25:08'),
(860, 'Kondisi-if-1', 'if (x >= 0) or (x <= n):', '2018-09-12 11:25:18', '2018-09-12 11:25:18', '2018-09-12 11:25:18', 'salah', 163, 60, 40, 119, '2018-09-11 21:25:18', '2018-09-11 21:25:18'),
(861, 'IF-1', '6', '2018-09-12 11:25:20', '2018-09-12 11:25:20', '2018-09-12 11:25:20', 'benar', 148, 60, 40, 114, '2018-09-11 21:25:20', '2018-09-11 21:25:20'),
(862, 'IF-1', '6', '2018-09-12 11:25:27', '2018-09-12 11:25:27', '2018-09-12 11:25:27', 'benar', 151, 60, 40, 114, '2018-09-11 21:25:27', '2018-09-11 21:25:27'),
(863, 'If-or-1', '9 -1', '2018-09-12 11:25:42', '2018-09-12 11:25:42', '2018-09-12 11:25:42', 'salah', 145, 60, 40, 118, '2018-09-11 21:25:42', '2018-09-11 21:25:42'),
(864, 'IF-1', '3', '2018-09-12 11:25:42', '2018-09-12 11:25:42', '2018-09-12 11:25:42', 'salah', 150, 60, 40, 114, '2018-09-11 21:25:42', '2018-09-11 21:25:42'),
(865, 'If-nested-1', '3', '2018-09-12 11:25:44', '2018-09-12 11:25:44', '2018-09-12 11:25:44', 'benar', 149, 60, 40, 120, '2018-09-11 21:25:44', '2018-09-11 21:25:44'),
(866, 'IF-1', '6', '2018-09-12 11:25:46', '2018-09-12 11:25:46', '2018-09-12 11:25:46', 'benar', 160, 60, 40, 114, '2018-09-11 21:25:46', '2018-09-11 21:25:46'),
(867, 'IF-1', '6', '2018-09-12 11:25:49', '2018-09-12 11:25:49', '2018-09-12 11:25:49', 'benar', 153, 60, 40, 114, '2018-09-11 21:25:49', '2018-09-11 21:25:49'),
(868, 'IF-2', '7  5', '2018-09-12 11:25:57', '2018-09-12 11:25:57', '2018-09-12 11:25:57', 'benar', 148, 60, 40, 115, '2018-09-11 21:25:57', '2018-09-11 21:25:57'),
(869, 'IF-and-1', '5 4', '2018-09-12 11:25:58', '2018-09-12 11:25:58', '2018-09-12 11:25:58', 'salah', 144, 60, 40, 117, '2018-09-11 21:25:58', '2018-09-11 21:25:58'),
(870, 'IF-1', '6', '2018-09-12 11:25:59', '2018-09-12 11:25:59', '2018-09-12 11:25:59', 'benar', 154, 60, 40, 114, '2018-09-11 21:25:59', '2018-09-11 21:25:59');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(871, 'IF-1', '3', '2018-09-12 11:26:06', '2018-09-12 11:26:06', '2018-09-12 11:26:06', 'salah', 156, 60, 40, 114, '2018-09-11 21:26:06', '2018-09-11 21:26:06'),
(872, 'IF-2', '7  5', '2018-09-12 11:26:17', '2018-09-12 11:26:17', '2018-09-12 11:26:17', 'benar', 150, 60, 40, 115, '2018-09-11 21:26:17', '2018-09-11 21:26:17'),
(873, 'IF-2', '7  5', '2018-09-12 11:26:20', '2018-09-12 11:26:20', '2018-09-12 11:26:20', 'benar', 151, 60, 40, 115, '2018-09-11 21:26:20', '2018-09-11 21:26:20'),
(874, 'IF-2', '7  5', '2018-09-12 11:26:21', '2018-09-12 11:26:21', '2018-09-12 11:26:21', 'benar', 160, 60, 40, 115, '2018-09-11 21:26:21', '2018-09-11 21:26:21'),
(875, 'IF-3', '0  5', '2018-09-12 11:26:22', '2018-09-12 11:26:22', '2018-09-12 11:26:22', 'benar', 148, 60, 40, 116, '2018-09-11 21:26:22', '2018-09-11 21:26:22'),
(876, 'Kondisi-if-1', 'Semua salah', '2018-09-12 11:26:23', '2018-09-12 11:26:23', '2018-09-12 11:26:23', 'salah', 145, 60, 40, 119, '2018-09-11 21:26:23', '2018-09-11 21:26:23'),
(877, 'If-or-1', '9 -6', '2018-09-12 11:26:25', '2018-09-12 11:26:25', '2018-09-12 11:26:25', 'salah', 144, 60, 40, 118, '2018-09-11 21:26:25', '2018-09-11 21:26:25'),
(878, 'IF-1', '6', '2018-09-12 11:26:28', '2018-09-12 11:26:28', '2018-09-12 11:26:28', 'benar', 147, 60, 40, 114, '2018-09-11 21:26:28', '2018-09-11 21:26:28'),
(879, 'IF-1', '5', '2018-09-12 11:26:37', '2018-09-12 11:26:37', '2018-09-12 11:26:37', 'salah', 146, 60, 40, 114, '2018-09-11 21:26:37', '2018-09-11 21:26:37'),
(880, 'IF-2', '7  5', '2018-09-12 11:26:39', '2018-09-12 11:26:39', '2018-09-12 11:26:39', 'benar', 153, 60, 40, 115, '2018-09-11 21:26:39', '2018-09-11 21:26:39'),
(881, 'IF-2', '7  5', '2018-09-12 11:26:40', '2018-09-12 11:26:40', '2018-09-12 11:26:40', 'benar', 154, 60, 40, 115, '2018-09-11 21:26:40', '2018-09-11 21:26:40'),
(882, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:26:42', '2018-09-12 11:26:42', '2018-09-12 11:26:42', 'benar', 161, 60, 40, 119, '2018-09-11 21:26:42', '2018-09-11 21:26:42'),
(883, 'IF-1', '3', '2018-09-12 11:26:44', '2018-09-12 11:26:44', '2018-09-12 11:26:44', 'salah', 157, 60, 40, 114, '2018-09-11 21:26:44', '2018-09-11 21:26:44'),
(884, 'IF-3', '5  0', '2018-09-12 11:26:44', '2018-09-12 11:26:44', '2018-09-12 11:26:44', 'salah', 160, 60, 40, 116, '2018-09-11 21:26:44', '2018-09-11 21:26:44'),
(885, 'IF-3', '0  5', '2018-09-12 11:26:52', '2018-09-12 11:26:52', '2018-09-12 11:26:52', 'benar', 150, 60, 40, 116, '2018-09-11 21:26:52', '2018-09-11 21:26:52'),
(886, 'IF-and-1', '5 9', '2018-09-12 11:26:57', '2018-09-12 11:26:57', '2018-09-12 11:26:57', 'benar', 148, 60, 40, 117, '2018-09-11 21:26:57', '2018-09-11 21:26:57'),
(887, 'IF-3', '0  5', '2018-09-12 11:27:01', '2018-09-12 11:27:01', '2018-09-12 11:27:01', 'benar', 151, 60, 40, 116, '2018-09-11 21:27:01', '2018-09-11 21:27:01'),
(888, 'Kondisi-if-1', 'Semua salah', '2018-09-12 11:27:08', '2018-09-12 11:27:08', '2018-09-12 11:27:08', 'salah', 144, 60, 40, 119, '2018-09-11 21:27:08', '2018-09-11 21:27:08'),
(889, 'IF-2', '7  5', '2018-09-12 11:27:11', '2018-09-12 11:27:11', '2018-09-12 11:27:11', 'benar', 147, 60, 40, 115, '2018-09-11 21:27:11', '2018-09-11 21:27:11'),
(890, 'IF-3', '0  5', '2018-09-12 11:27:15', '2018-09-12 11:27:15', '2018-09-12 11:27:15', 'benar', 153, 60, 40, 116, '2018-09-11 21:27:15', '2018-09-11 21:27:15'),
(891, 'IF-and-1', '5 9', '2018-09-12 11:27:16', '2018-09-12 11:27:16', '2018-09-12 11:27:16', 'benar', 160, 60, 40, 117, '2018-09-11 21:27:16', '2018-09-11 21:27:16'),
(892, 'If-nested-1', '3', '2018-09-12 11:27:17', '2018-09-12 11:27:17', '2018-09-12 11:27:17', 'benar', 163, 60, 40, 120, '2018-09-11 21:27:17', '2018-09-11 21:27:17'),
(893, 'IF-1', '6', '2018-09-12 11:27:23', '2018-09-12 11:27:23', '2018-09-12 11:27:23', 'benar', 167, 60, 40, 114, '2018-09-11 21:27:23', '2018-09-11 21:27:23'),
(894, 'IF-1', '6', '2018-09-12 11:27:24', '2018-09-12 11:27:24', '2018-09-12 11:27:24', 'benar', 155, 60, 40, 114, '2018-09-11 21:27:24', '2018-09-11 21:27:24'),
(895, 'If-or-1', '6 -6', '2018-09-12 11:36:08', '2018-09-12 11:36:08', '2018-09-12 11:36:08', 'benar', 148, 60, 40, 118, '2018-09-12 04:36:08', '2018-09-11 21:36:08'),
(896, 'IF-3', '0  5', '2018-09-12 11:27:30', '2018-09-12 11:27:30', '2018-09-12 11:27:30', 'benar', 154, 60, 40, 116, '2018-09-11 21:27:30', '2018-09-11 21:27:30'),
(897, 'IF-and-1', '5 9', '2018-09-12 11:27:41', '2018-09-12 11:27:41', '2018-09-12 11:27:41', 'benar', 151, 60, 40, 117, '2018-09-11 21:27:41', '2018-09-11 21:27:41'),
(898, 'IF-3', '0  5', '2018-09-12 11:27:47', '2018-09-12 11:27:47', '2018-09-12 11:27:47', 'benar', 147, 60, 40, 116, '2018-09-11 21:27:47', '2018-09-11 21:27:47'),
(899, 'If-or-1', '6 -6', '2018-09-12 11:27:47', '2018-09-12 11:27:47', '2018-09-12 11:27:47', 'benar', 160, 60, 40, 118, '2018-09-11 21:27:47', '2018-09-11 21:27:47'),
(900, 'IF-and-1', '5 9', '2018-09-12 11:27:50', '2018-09-12 11:27:50', '2018-09-12 11:27:50', 'benar', 150, 60, 40, 117, '2018-09-11 21:27:50', '2018-09-11 21:27:50'),
(901, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:27:51', '2018-09-12 11:27:51', '2018-09-12 11:27:51', 'benar', 148, 60, 40, 119, '2018-09-11 21:27:51', '2018-09-11 21:27:51'),
(902, 'IF-1', '3', '2018-09-12 11:27:52', '2018-09-12 11:27:52', '2018-09-12 11:27:52', 'salah', 158, 60, 40, 114, '2018-09-11 21:27:52', '2018-09-11 21:27:52'),
(903, 'IF-2', '7  5', '2018-09-12 11:27:53', '2018-09-12 11:27:53', '2018-09-12 11:27:53', 'benar', 146, 60, 40, 115, '2018-09-11 21:27:53', '2018-09-11 21:27:53'),
(904, 'If-or-1', '6 -6', '2018-09-12 11:28:04', '2018-09-12 11:28:04', '2018-09-12 11:28:04', 'benar', 151, 60, 40, 118, '2018-09-11 21:28:04', '2018-09-11 21:28:04'),
(905, 'IF-2', '7  5', '2018-09-12 11:28:12', '2018-09-12 11:28:12', '2018-09-12 11:28:12', 'benar', 157, 60, 40, 115, '2018-09-11 21:28:12', '2018-09-11 21:28:12'),
(906, 'IF-3', '0  5', '2018-09-12 11:28:14', '2018-09-12 11:28:14', '2018-09-12 11:28:14', 'benar', 146, 60, 40, 116, '2018-09-11 21:28:14', '2018-09-11 21:28:14'),
(907, 'IF-and-1', '5 9', '2018-09-12 11:28:19', '2018-09-12 11:28:19', '2018-09-12 11:28:19', 'benar', 154, 60, 40, 117, '2018-09-11 21:28:19', '2018-09-11 21:28:19'),
(908, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:28:20', '2018-09-12 11:28:20', '2018-09-12 11:28:20', 'benar', 160, 60, 40, 119, '2018-09-11 21:28:20', '2018-09-11 21:28:20'),
(909, 'IF-and-1', '5 9', '2018-09-12 11:28:25', '2018-09-12 11:28:25', '2018-09-12 11:28:25', 'benar', 153, 60, 40, 117, '2018-09-11 21:28:25', '2018-09-11 21:28:25'),
(910, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:28:27', '2018-09-12 11:28:27', '2018-09-12 11:28:27', 'benar', 151, 60, 40, 119, '2018-09-11 21:28:27', '2018-09-11 21:28:27'),
(911, 'If-or-1', '6 -6', '2018-09-12 11:28:31', '2018-09-12 11:28:31', '2018-09-12 11:28:31', 'benar', 150, 60, 40, 118, '2018-09-11 21:28:31', '2018-09-11 21:28:31'),
(912, 'IF-and-1', '5 9', '2018-09-12 11:28:48', '2018-09-12 11:28:48', '2018-09-12 11:28:48', 'benar', 147, 60, 40, 117, '2018-09-11 21:28:48', '2018-09-11 21:28:48'),
(913, 'If-nested-1', '9', '2018-09-12 11:29:04', '2018-09-12 11:29:04', '2018-09-12 11:29:04', 'salah', 145, 60, 40, 120, '2018-09-12 04:29:04', '2018-09-11 21:29:04'),
(914, 'IF-3', '0  5', '2018-09-12 11:28:54', '2018-09-12 11:28:54', '2018-09-12 11:28:54', 'benar', 157, 60, 40, 116, '2018-09-11 21:28:54', '2018-09-11 21:28:54'),
(915, 'IF-and-1', '2 4', '2018-09-12 11:28:56', '2018-09-12 11:28:56', '2018-09-12 11:28:56', 'salah', 146, 60, 40, 117, '2018-09-11 21:28:56', '2018-09-11 21:28:56'),
(916, 'If-or-1', '6 -6', '2018-09-12 11:29:05', '2018-09-12 11:29:05', '2018-09-12 11:29:05', 'benar', 154, 60, 40, 118, '2018-09-11 21:29:05', '2018-09-11 21:29:05'),
(917, 'If-or-1', '6 -6', '2018-09-12 11:29:08', '2018-09-12 11:29:08', '2018-09-12 11:29:08', 'benar', 153, 60, 40, 118, '2018-09-11 21:29:08', '2018-09-11 21:29:08'),
(918, 'If-nested-1', '3', '2018-09-12 11:29:08', '2018-09-12 11:29:08', '2018-09-12 11:29:08', 'benar', 151, 60, 40, 120, '2018-09-11 21:29:08', '2018-09-11 21:29:08'),
(919, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:29:09', '2018-09-12 11:29:09', '2018-09-12 11:29:09', 'benar', 150, 60, 40, 119, '2018-09-11 21:29:09', '2018-09-11 21:29:09'),
(920, 'IF-2', '7  5', '2018-09-12 11:29:25', '2018-09-12 11:29:25', '2018-09-12 11:29:25', 'benar', 155, 60, 40, 115, '2018-09-12 04:29:25', '2018-09-11 21:29:25'),
(921, 'If-or-1', '6 -6', '2018-09-12 11:29:27', '2018-09-12 11:29:27', '2018-09-12 11:29:27', 'benar', 147, 60, 40, 118, '2018-09-11 21:29:27', '2018-09-11 21:29:27'),
(922, 'If-nested-1', '3.5', '2018-09-12 11:29:38', '2018-09-12 11:29:38', '2018-09-12 11:29:38', 'salah', 144, 60, 40, 120, '2018-09-11 21:29:38', '2018-09-11 21:29:38'),
(923, 'IF-and-1', '2 4', '2018-09-12 11:29:39', '2018-09-12 11:29:39', '2018-09-12 11:29:39', 'salah', 157, 60, 40, 117, '2018-09-11 21:29:39', '2018-09-11 21:29:39'),
(924, 'If-nested-1', '9', '2018-09-12 11:30:53', '2018-09-12 11:30:53', '2018-09-12 11:30:53', 'salah', 165, 60, 40, 120, '2018-09-12 04:30:53', '2018-09-11 21:30:53'),
(925, 'If-nested-1', '3', '2018-09-12 11:29:43', '2018-09-12 11:29:43', '2018-09-12 11:29:43', 'benar', 160, 60, 40, 120, '2018-09-11 21:29:43', '2018-09-11 21:29:43'),
(926, 'IF-2', '5  7', '2018-09-12 11:29:46', '2018-09-12 11:29:46', '2018-09-12 11:29:46', 'salah', 167, 60, 40, 115, '2018-09-11 21:29:46', '2018-09-11 21:29:46'),
(927, 'IF-1', '3', '2018-09-12 11:29:49', '2018-09-12 11:29:49', '2018-09-12 11:29:49', 'salah', 161, 60, 40, 114, '2018-09-11 21:29:49', '2018-09-11 21:29:49'),
(928, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:30:16', '2018-09-12 11:30:16', '2018-09-12 11:30:16', 'benar', 147, 60, 40, 119, '2018-09-11 21:30:16', '2018-09-11 21:30:16'),
(929, 'If-nested-1', '3', '2018-09-12 11:30:20', '2018-09-12 11:30:20', '2018-09-12 11:30:20', 'benar', 150, 60, 40, 120, '2018-09-11 21:30:20', '2018-09-11 21:30:20'),
(930, 'IF-2', '7  5', '2018-09-12 11:30:27', '2018-09-12 11:30:27', '2018-09-12 11:30:27', 'benar', 156, 60, 40, 115, '2018-09-11 21:30:27', '2018-09-11 21:30:27'),
(931, 'If-or-1', '6 -6', '2018-09-12 11:30:28', '2018-09-12 11:30:28', '2018-09-12 11:30:28', 'benar', 146, 60, 40, 118, '2018-09-11 21:30:28', '2018-09-11 21:30:28'),
(932, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:30:31', '2018-09-12 11:30:31', '2018-09-12 11:30:31', 'benar', 153, 60, 40, 119, '2018-09-11 21:30:31', '2018-09-11 21:30:31'),
(933, 'IF-3', '0  7', '2018-09-12 11:30:38', '2018-09-12 11:30:38', '2018-09-12 11:30:38', 'salah', 158, 60, 40, 116, '2018-09-11 21:30:38', '2018-09-11 21:30:38'),
(934, 'IF-3', '0  5', '2018-09-12 11:30:48', '2018-09-12 11:30:48', '2018-09-12 11:30:48', 'benar', 155, 60, 40, 116, '2018-09-11 21:30:48', '2018-09-11 21:30:48'),
(935, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:30:52', '2018-09-12 11:30:52', '2018-09-12 11:30:52', 'benar', 154, 60, 40, 119, '2018-09-11 21:30:52', '2018-09-11 21:30:52'),
(936, 'IF-3', '0  5', '2018-09-12 11:30:57', '2018-09-12 11:30:57', '2018-09-12 11:30:57', 'benar', 167, 60, 40, 116, '2018-09-11 21:30:57', '2018-09-11 21:30:57'),
(937, 'IF-2', '7  5', '2018-09-12 11:31:03', '2018-09-12 11:31:03', '2018-09-12 11:31:03', 'benar', 161, 60, 40, 115, '2018-09-11 21:31:03', '2018-09-11 21:31:03'),
(938, 'If-nested-1', '3', '2018-09-12 11:31:18', '2018-09-12 11:31:18', '2018-09-12 11:31:18', 'benar', 147, 60, 40, 120, '2018-09-11 21:31:18', '2018-09-11 21:31:18'),
(939, 'If-nested-1', '3', '2018-09-12 11:31:21', '2018-09-12 11:31:21', '2018-09-12 11:31:21', 'benar', 148, 60, 40, 120, '2018-09-11 21:31:21', '2018-09-11 21:31:21'),
(940, 'IF-3', '0  5', '2018-09-12 11:31:30', '2018-09-12 11:31:30', '2018-09-12 11:31:30', 'benar', 156, 60, 40, 116, '2018-09-11 21:31:30', '2018-09-11 21:31:30'),
(941, 'IF-and-1', '5 4', '2018-09-12 11:31:40', '2018-09-12 11:31:40', '2018-09-12 11:31:40', 'salah', 158, 60, 40, 117, '2018-09-11 21:31:40', '2018-09-11 21:31:40'),
(942, 'IF-3', '0  5', '2018-09-12 11:31:41', '2018-09-12 11:31:41', '2018-09-12 11:31:41', 'benar', 161, 60, 40, 116, '2018-09-11 21:31:41', '2018-09-11 21:31:41'),
(943, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:31:44', '2018-09-12 11:31:44', '2018-09-12 11:31:44', 'benar', 146, 60, 40, 119, '2018-09-11 21:31:44', '2018-09-11 21:31:44'),
(944, 'IF-and-1', '5 9', '2018-09-12 11:31:47', '2018-09-12 11:31:47', '2018-09-12 11:31:47', 'benar', 161, 60, 40, 117, '2018-09-11 21:31:47', '2018-09-11 21:31:47'),
(945, 'IF-and-1', '5 9', '2018-09-12 11:32:09', '2018-09-12 11:32:09', '2018-09-12 11:32:09', 'benar', 155, 60, 40, 117, '2018-09-11 21:32:09', '2018-09-11 21:32:09'),
(946, 'If-or-1', '9 -6', '2018-09-12 11:32:11', '2018-09-12 11:32:11', '2018-09-12 11:32:11', 'salah', 158, 60, 40, 118, '2018-09-11 21:32:11', '2018-09-11 21:32:11'),
(947, 'If-nested-1', '3', '2018-09-12 11:32:34', '2018-09-12 11:32:34', '2018-09-12 11:32:34', 'benar', 154, 60, 40, 120, '2018-09-11 21:32:34', '2018-09-11 21:32:34'),
(948, 'If-or-1', '6 -6', '2018-09-12 11:32:59', '2018-09-12 11:32:59', '2018-09-12 11:32:59', 'benar', 161, 60, 40, 118, '2018-09-11 21:32:59', '2018-09-11 21:32:59'),
(949, 'If-or-1', '6 -6', '2018-09-12 11:32:59', '2018-09-12 11:32:59', '2018-09-12 11:32:59', 'benar', 157, 60, 40, 118, '2018-09-11 21:32:59', '2018-09-11 21:32:59'),
(950, 'IF-and-1', '5 9', '2018-09-12 11:33:01', '2018-09-12 11:33:01', '2018-09-12 11:33:01', 'benar', 167, 60, 40, 117, '2018-09-11 21:33:01', '2018-09-11 21:33:01'),
(951, 'If-or-1', '6 -6', '2018-09-12 11:33:17', '2018-09-12 11:33:17', '2018-09-12 11:33:17', 'benar', 155, 60, 40, 118, '2018-09-11 21:33:17', '2018-09-11 21:33:17'),
(952, 'If-nested-1', '9', '2018-09-12 11:33:18', '2018-09-12 11:33:18', '2018-09-12 11:33:18', 'salah', 161, 60, 40, 120, '2018-09-11 21:33:18', '2018-09-11 21:33:18'),
(953, 'IF-1', '6', '2018-09-12 11:33:29', '2018-09-12 11:33:29', '2018-09-12 11:33:29', 'benar', 166, 60, 40, 114, '2018-09-11 21:33:29', '2018-09-11 21:33:29'),
(954, 'Kondisi-if-1', 'if (x <= 0) or (x >= n):', '2018-09-12 11:33:30', '2018-09-12 11:33:30', '2018-09-12 11:33:30', 'salah', 158, 60, 40, 119, '2018-09-11 21:33:30', '2018-09-11 21:33:30'),
(955, 'IF-2', '7  5', '2018-09-12 11:33:52', '2018-09-12 11:33:52', '2018-09-12 11:33:52', 'benar', 166, 60, 40, 115, '2018-09-11 21:33:52', '2018-09-11 21:33:52'),
(956, 'IF-and-1', '5 4', '2018-09-12 11:33:54', '2018-09-12 11:33:54', '2018-09-12 11:33:54', 'salah', 156, 60, 40, 117, '2018-09-11 21:33:54', '2018-09-11 21:33:54'),
(957, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:34:09', '2018-09-12 11:34:09', '2018-09-12 11:34:09', 'benar', 157, 60, 40, 119, '2018-09-11 21:34:09', '2018-09-11 21:34:09'),
(958, 'IF-3', '0  5', '2018-09-12 11:34:10', '2018-09-12 11:34:10', '2018-09-12 11:34:10', 'benar', 166, 60, 40, 116, '2018-09-11 21:34:10', '2018-09-11 21:34:10'),
(959, 'If-or-1', '6 -6', '2018-09-12 11:34:14', '2018-09-12 11:34:14', '2018-09-12 11:34:14', 'benar', 167, 60, 40, 118, '2018-09-11 21:34:14', '2018-09-11 21:34:14'),
(960, 'If-or-1', '9 -6', '2018-09-12 11:34:47', '2018-09-12 11:34:47', '2018-09-12 11:34:47', 'salah', 156, 60, 40, 118, '2018-09-11 21:34:47', '2018-09-11 21:34:47'),
(961, 'IF-and-1', '2 4', '2018-09-12 11:34:52', '2018-09-12 11:34:52', '2018-09-12 11:34:52', 'salah', 166, 60, 40, 117, '2018-09-11 21:34:52', '2018-09-11 21:34:52'),
(962, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:34:55', '2018-09-12 11:34:55', '2018-09-12 11:34:55', 'benar', 155, 60, 40, 119, '2018-09-11 21:34:55', '2018-09-11 21:34:55'),
(963, 'Kondisi-if-1', 'Semua salah', '2018-09-12 11:34:59', '2018-09-12 11:34:59', '2018-09-12 11:34:59', 'salah', 167, 60, 40, 119, '2018-09-11 21:34:59', '2018-09-11 21:34:59'),
(964, 'If-nested-1', '9', '2018-09-12 11:35:04', '2018-09-12 11:35:04', '2018-09-12 11:35:04', 'salah', 146, 60, 40, 120, '2018-09-11 21:35:04', '2018-09-11 21:35:04'),
(965, 'If-nested-1', '3', '2018-09-12 11:35:27', '2018-09-12 11:35:27', '2018-09-12 11:35:27', 'benar', 157, 60, 40, 120, '2018-09-11 21:35:27', '2018-09-11 21:35:27'),
(966, 'Kondisi-if-1', 'if (x <= 0) and (x >= n):', '2018-09-12 11:35:43', '2018-09-12 11:35:43', '2018-09-12 11:35:43', 'salah', 156, 60, 40, 119, '2018-09-11 21:35:43', '2018-09-11 21:35:43'),
(967, 'If-or-1', '6 -6', '2018-09-12 11:35:46', '2018-09-12 11:35:46', '2018-09-12 11:35:46', 'benar', 166, 60, 40, 118, '2018-09-11 21:35:46', '2018-09-11 21:35:46'),
(968, 'Kondisi-if-1', 'if (x >= 0) and (x <= n):', '2018-09-12 11:35:51', '2018-09-12 11:35:51', '2018-09-12 11:35:51', 'benar', 166, 60, 40, 119, '2018-09-11 21:35:51', '2018-09-11 21:35:51'),
(969, 'If-nested-1', '3', '2018-09-12 11:35:59', '2018-09-12 11:35:59', '2018-09-12 11:35:59', 'benar', 166, 60, 40, 120, '2018-09-11 21:35:59', '2018-09-11 21:35:59'),
(970, 'If-nested-1', '3', '2018-09-12 11:36:13', '2018-09-12 11:36:13', '2018-09-12 11:36:13', 'benar', 155, 60, 40, 120, '2018-09-11 21:36:13', '2018-09-11 21:36:13'),
(971, 'If-nested-1', '14', '2018-09-12 11:36:19', '2018-09-12 11:36:19', '2018-09-12 11:36:19', 'salah', 156, 60, 40, 120, '2018-09-11 21:36:19', '2018-09-11 21:36:19'),
(972, 'If-nested-1', '3', '2018-09-12 11:36:31', '2018-09-12 11:36:31', '2018-09-12 11:36:31', 'benar', 167, 60, 40, 120, '2018-09-11 21:36:31', '2018-09-11 21:36:31'),
(973, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 12:37:07', '2018-09-13 12:37:07', '2018-09-13 12:37:07', 'salah', 146, 61, 39, 109, '2018-09-12 22:37:07', '2018-09-12 22:37:07'),
(974, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 12:37:52', '2018-09-13 12:37:52', '2018-09-13 12:37:52', 'salah', 146, 61, 39, 110, '2018-09-12 22:37:52', '2018-09-12 22:37:52'),
(975, 'ProgramAksiM', '7 3 5', '2018-09-13 12:41:43', '2018-09-13 12:41:43', '2018-09-13 12:41:43', 'benar', 146, 61, 39, 111, '2018-09-12 22:41:43', '2018-09-12 22:41:43'),
(976, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 12:43:35', '2018-09-13 12:43:35', '2018-09-13 12:43:35', 'salah', 146, 61, 39, 112, '2018-09-12 22:43:35', '2018-09-12 22:43:35'),
(977, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 12:45:31', '2018-09-13 12:45:31', '2018-09-13 12:45:31', 'benar', 146, 61, 39, 113, '2018-09-12 22:45:31', '2018-09-12 22:45:31'),
(978, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:21:55', '2018-09-13 13:21:55', '2018-09-13 13:21:55', 'benar', 175, 61, 39, 109, '2018-09-12 23:21:55', '2018-09-12 23:21:55'),
(979, 'RumusPG-2', '(a*(b-c)*(d*d-b))/b+d*(c-a)', '2018-09-13 13:22:57', '2018-09-13 13:22:57', '2018-09-13 13:22:57', 'salah', 175, 61, 39, 110, '2018-09-12 23:22:57', '2018-09-12 23:22:57'),
(980, 'ProgramAksiM', '7 3 5', '2018-09-13 13:24:39', '2018-09-13 13:24:39', '2018-09-13 13:24:39', 'benar', 175, 61, 39, 111, '2018-09-12 23:24:39', '2018-09-12 23:24:39'),
(981, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:26:44', '2018-09-13 13:26:44', '2018-09-13 13:26:44', 'benar', 175, 61, 39, 113, '2018-09-12 23:26:44', '2018-09-12 23:26:44'),
(982, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:31:42', '2018-09-13 13:31:42', '2018-09-13 13:31:42', 'benar', 175, 61, 39, 112, '2018-09-12 23:31:42', '2018-09-12 23:31:42'),
(983, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 13:42:28', '2018-09-13 13:42:28', '2018-09-13 13:42:28', 'salah', 154, 61, 39, 109, '2018-09-12 23:42:28', '2018-09-12 23:42:28'),
(984, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:42:33', '2018-09-13 13:42:33', '2018-09-13 13:42:33', 'benar', 192, 61, 39, 109, '2018-09-12 23:42:33', '2018-09-12 23:42:33'),
(985, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:42:45', '2018-09-13 13:42:45', '2018-09-13 13:42:45', 'benar', 193, 61, 39, 109, '2018-09-12 23:42:45', '2018-09-12 23:42:45'),
(986, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:43:05', '2018-09-13 13:43:05', '2018-09-13 13:43:05', 'benar', 192, 61, 39, 110, '2018-09-12 23:43:05', '2018-09-12 23:43:05'),
(987, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:43:14', '2018-09-13 13:43:14', '2018-09-13 13:43:14', 'salah', 154, 61, 39, 110, '2018-09-12 23:43:14', '2018-09-12 23:43:14'),
(988, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:44:02', '2018-09-13 13:44:02', '2018-09-13 13:44:02', 'benar', 193, 61, 39, 110, '2018-09-12 23:44:02', '2018-09-12 23:44:02'),
(989, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:44:11', '2018-09-13 13:44:11', '2018-09-13 13:44:11', 'benar', 149, 61, 39, 109, '2018-09-12 23:44:11', '2018-09-12 23:44:11'),
(990, 'ProgramAksiM', '7 3 5', '2018-09-13 13:44:23', '2018-09-13 13:44:23', '2018-09-13 13:44:23', 'benar', 154, 61, 39, 111, '2018-09-12 23:44:23', '2018-09-12 23:44:23'),
(991, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:44:27', '2018-09-13 13:44:27', '2018-09-13 13:44:27', 'benar', 149, 61, 39, 110, '2018-09-12 23:44:27', '2018-09-12 23:44:27'),
(992, 'ProgramAksiM', '7 3 5', '2018-09-13 13:44:30', '2018-09-13 13:44:30', '2018-09-13 13:44:30', 'benar', 193, 61, 39, 111, '2018-09-12 23:44:30', '2018-09-12 23:44:30'),
(993, 'ProgramAksiM', '7 3 5', '2018-09-13 13:44:41', '2018-09-13 13:44:41', '2018-09-13 13:44:41', 'benar', 192, 61, 39, 111, '2018-09-12 23:44:41', '2018-09-12 23:44:41'),
(994, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:45:02', '2018-09-13 13:45:02', '2018-09-13 13:45:02', 'benar', 193, 61, 39, 112, '2018-09-12 23:45:02', '2018-09-12 23:45:02'),
(995, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:45:10', '2018-09-13 13:45:10', '2018-09-13 13:45:10', 'benar', 192, 61, 39, 112, '2018-09-12 23:45:10', '2018-09-12 23:45:10'),
(996, 'ProgramAksiM', '7 3 5', '2018-09-13 13:45:12', '2018-09-13 13:45:12', '2018-09-13 13:45:12', 'benar', 149, 61, 39, 111, '2018-09-12 23:45:12', '2018-09-12 23:45:12'),
(997, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:45:16', '2018-09-13 13:45:16', '2018-09-13 13:45:16', 'benar', 193, 61, 39, 113, '2018-09-12 23:45:16', '2018-09-12 23:45:16'),
(998, 'ProgramHitungL', 'SS = Bil % 100; pl = SS % 10', '2018-09-13 13:45:43', '2018-09-13 13:45:43', '2018-09-13 13:45:43', 'salah', 154, 61, 39, 112, '2018-09-12 23:45:43', '2018-09-12 23:45:43'),
(999, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:45:43', '2018-09-13 13:45:43', '2018-09-13 13:45:43', 'benar', 149, 61, 39, 112, '2018-09-12 23:45:43', '2018-09-12 23:45:43'),
(1000, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:45:44', '2018-09-13 13:45:44', '2018-09-13 13:45:44', 'benar', 166, 61, 39, 109, '2018-09-12 23:45:44', '2018-09-12 23:45:44'),
(1001, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:45:54', '2018-09-13 13:45:54', '2018-09-13 13:45:54', 'benar', 149, 61, 39, 113, '2018-09-12 23:45:54', '2018-09-12 23:45:54'),
(1002, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:45:54', '2018-09-13 13:45:54', '2018-09-13 13:45:54', 'benar', 192, 61, 39, 113, '2018-09-12 23:45:54', '2018-09-12 23:45:54'),
(1003, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:46:19', '2018-09-13 13:46:19', '2018-09-13 13:46:19', 'salah', 165, 61, 39, 110, '2018-09-12 23:46:19', '2018-09-12 23:46:19'),
(1004, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 13:46:33', '2018-09-13 13:46:33', '2018-09-13 13:46:33', 'salah', 154, 61, 39, 113, '2018-09-12 23:46:33', '2018-09-12 23:46:33'),
(1005, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 13:46:40', '2018-09-13 13:46:40', '2018-09-13 13:46:40', 'salah', 147, 61, 39, 109, '2018-09-12 23:46:40', '2018-09-12 23:46:40'),
(1006, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 13:59:32', '2018-09-13 13:59:32', '2018-09-13 13:59:32', 'salah', 183, 61, 39, 109, '2018-09-13 06:59:32', '2018-09-12 23:59:32'),
(1007, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:46:51', '2018-09-13 13:46:51', '2018-09-13 13:46:51', 'salah', 166, 61, 39, 110, '2018-09-12 23:46:51', '2018-09-12 23:46:51'),
(1008, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 13:47:14', '2018-09-13 13:47:14', '2018-09-13 13:47:14', 'salah', 169, 61, 39, 109, '2018-09-12 23:47:14', '2018-09-12 23:47:14'),
(1009, 'ProgramAksiM', '7 3 5', '2018-09-13 13:56:14', '2018-09-13 13:56:14', '2018-09-13 13:56:14', 'benar', 165, 61, 39, 111, '2018-09-13 06:56:14', '2018-09-12 23:56:14'),
(1010, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 13:47:33', '2018-09-13 13:47:33', '2018-09-13 13:47:33', 'salah', 187, 61, 39, 109, '2018-09-12 23:47:33', '2018-09-12 23:47:33'),
(1011, 'ProgramAksiM', '7 3 5', '2018-09-13 13:47:46', '2018-09-13 13:47:46', '2018-09-13 13:47:46', 'benar', 166, 61, 39, 111, '2018-09-12 23:47:46', '2018-09-12 23:47:46'),
(1012, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:59:37', '2018-09-13 13:59:37', '2018-09-13 13:59:37', 'salah', 183, 61, 39, 110, '2018-09-13 06:59:37', '2018-09-12 23:59:37'),
(1013, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:48:07', '2018-09-13 13:48:07', '2018-09-13 13:48:07', 'salah', 187, 61, 39, 110, '2018-09-12 23:48:07', '2018-09-12 23:48:07'),
(1014, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:48:20', '2018-09-13 13:48:20', '2018-09-13 13:48:20', 'benar', 169, 61, 39, 110, '2018-09-12 23:48:20', '2018-09-12 23:48:20'),
(1015, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:49:48', '2018-09-13 13:49:48', '2018-09-13 13:49:48', 'benar', 147, 61, 39, 110, '2018-09-13 06:49:48', '2018-09-12 23:49:48'),
(1016, 'ProgramAksiM', '7 3 5', '2018-09-13 13:48:41', '2018-09-13 13:48:41', '2018-09-13 13:48:41', 'benar', 169, 61, 39, 111, '2018-09-12 23:48:41', '2018-09-12 23:48:41'),
(1017, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:48:58', '2018-09-13 13:48:58', '2018-09-13 13:48:58', 'benar', 166, 61, 39, 112, '2018-09-12 23:48:58', '2018-09-12 23:48:58'),
(1018, 'ProgramAksiM', '7 3 5', '2018-09-13 13:59:43', '2018-09-13 13:59:43', '2018-09-13 13:59:43', 'benar', 183, 61, 39, 111, '2018-09-13 06:59:43', '2018-09-12 23:59:43'),
(1019, 'ProgramAksiM', '7 3 5', '2018-09-13 13:49:25', '2018-09-13 13:49:25', '2018-09-13 13:49:25', 'benar', 147, 61, 39, 111, '2018-09-12 23:49:25', '2018-09-12 23:49:25'),
(1020, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:54:18', '2018-09-13 13:54:18', '2018-09-13 13:54:18', 'benar', 155, 61, 39, 109, '2018-09-13 06:54:18', '2018-09-12 23:54:18'),
(1021, 'ProgramAksiM', '7 5 3', '2018-09-13 13:50:40', '2018-09-13 13:50:40', '2018-09-13 13:50:40', 'salah', 187, 61, 39, 111, '2018-09-12 23:50:40', '2018-09-12 23:50:40'),
(1022, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 13:50:43', '2018-09-13 13:50:43', '2018-09-13 13:50:43', 'salah', 165, 61, 39, 109, '2018-09-12 23:50:43', '2018-09-12 23:50:43'),
(1023, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:59:49', '2018-09-13 13:59:49', '2018-09-13 13:59:49', 'salah', 183, 61, 39, 112, '2018-09-13 06:59:49', '2018-09-12 23:59:49'),
(1024, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:51:55', '2018-09-13 13:51:55', '2018-09-13 13:51:55', 'benar', 155, 61, 39, 110, '2018-09-12 23:51:55', '2018-09-12 23:51:55'),
(1025, 'ProgramAksiM', '7 3 5', '2018-09-13 13:52:07', '2018-09-13 13:52:07', '2018-09-13 13:52:07', 'benar', 155, 61, 39, 111, '2018-09-12 23:52:07', '2018-09-12 23:52:07'),
(1026, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:52:24', '2018-09-13 13:52:24', '2018-09-13 13:52:24', 'salah', 147, 61, 39, 112, '2018-09-12 23:52:24', '2018-09-12 23:52:24'),
(1027, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:52:28', '2018-09-13 13:52:28', '2018-09-13 13:52:28', 'salah', 169, 61, 39, 112, '2018-09-12 23:52:28', '2018-09-12 23:52:28'),
(1028, 'UrutanRumus', 'Rumus-2 dengan rumus-3', '2018-09-13 13:52:35', '2018-09-13 13:52:35', '2018-09-13 13:52:35', 'salah', 166, 61, 39, 113, '2018-09-12 23:52:35', '2018-09-12 23:52:35'),
(1029, 'ProgramHitungL', 'SS = SS % 100; pl = Bil // 10', '2018-09-13 13:52:36', '2018-09-13 13:52:36', '2018-09-13 13:52:36', 'salah', 187, 61, 39, 112, '2018-09-12 23:52:36', '2018-09-12 23:52:36'),
(1030, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 13:53:50', '2018-09-13 13:53:50', '2018-09-13 13:53:50', 'salah', 187, 61, 39, 113, '2018-09-13 06:53:50', '2018-09-12 23:53:50'),
(1031, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:53:15', '2018-09-13 13:53:15', '2018-09-13 13:53:15', 'benar', 177, 61, 39, 109, '2018-09-12 23:53:15', '2018-09-12 23:53:15'),
(1032, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:53:20', '2018-09-13 13:53:20', '2018-09-13 13:53:20', 'salah', 155, 61, 39, 112, '2018-09-12 23:53:20', '2018-09-12 23:53:20'),
(1033, 'UrutanRumus', 'Rumus-2 dengan rumus-3', '2018-09-13 13:59:54', '2018-09-13 13:59:54', '2018-09-13 13:59:54', 'salah', 183, 61, 39, 113, '2018-09-13 06:59:54', '2018-09-12 23:59:54'),
(1034, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:53:33', '2018-09-13 13:53:33', '2018-09-13 13:53:33', 'benar', 147, 61, 39, 113, '2018-09-12 23:53:34', '2018-09-12 23:53:34'),
(1035, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:53:45', '2018-09-13 13:53:45', '2018-09-13 13:53:45', 'benar', 173, 61, 39, 109, '2018-09-12 23:53:45', '2018-09-12 23:53:45'),
(1036, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:53:45', '2018-09-13 13:53:45', '2018-09-13 13:53:45', 'benar', 171, 61, 39, 109, '2018-09-12 23:53:45', '2018-09-12 23:53:45'),
(1037, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 13:54:16', '2018-09-13 13:54:16', '2018-09-13 13:54:16', 'benar', 178, 61, 39, 109, '2018-09-12 23:54:16', '2018-09-12 23:54:16'),
(1038, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:54:18', '2018-09-13 13:54:18', '2018-09-13 13:54:18', 'salah', 173, 61, 39, 110, '2018-09-12 23:54:18', '2018-09-12 23:54:18'),
(1039, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 13:54:19', '2018-09-13 13:54:19', '2018-09-13 13:54:19', 'salah', 171, 61, 39, 110, '2018-09-12 23:54:19', '2018-09-12 23:54:19'),
(1040, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 13:54:20', '2018-09-13 13:54:20', '2018-09-13 13:54:20', 'benar', 177, 61, 39, 110, '2018-09-12 23:54:20', '2018-09-12 23:54:20'),
(1041, 'ProgramHitungL', 'SS = SS % 100; pl = Bil // 10', '2018-09-13 13:54:31', '2018-09-13 13:54:31', '2018-09-13 13:54:31', 'salah', 165, 61, 39, 112, '2018-09-12 23:54:31', '2018-09-12 23:54:31'),
(1042, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 13:54:54', '2018-09-13 13:54:54', '2018-09-13 13:54:54', 'salah', 169, 61, 39, 113, '2018-09-12 23:54:54', '2018-09-12 23:54:54'),
(1043, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:54:56', '2018-09-13 13:54:56', '2018-09-13 13:54:56', 'benar', 155, 61, 39, 113, '2018-09-12 23:54:56', '2018-09-12 23:54:56'),
(1044, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 13:55:39', '2018-09-13 13:55:39', '2018-09-13 13:55:39', 'salah', 178, 61, 39, 110, '2018-09-12 23:55:39', '2018-09-12 23:55:39'),
(1045, 'UrutanRumus', 'Rumus-1 dengan rumus-3', '2018-09-13 13:56:01', '2018-09-13 13:56:01', '2018-09-13 13:56:01', 'salah', 165, 61, 39, 113, '2018-09-12 23:56:01', '2018-09-12 23:56:01'),
(1046, 'ProgramAksiM', '7 5 3', '2018-09-13 13:56:47', '2018-09-13 13:56:47', '2018-09-13 13:56:47', 'salah', 173, 61, 39, 111, '2018-09-12 23:56:47', '2018-09-12 23:56:47'),
(1047, 'ProgramAksiM', '7 3 5', '2018-09-13 14:03:54', '2018-09-13 14:03:54', '2018-09-13 14:03:54', 'benar', 171, 61, 39, 111, '2018-09-13 07:03:54', '2018-09-13 00:03:54'),
(1048, 'ProgramAksiM', '7 3 5', '2018-09-13 13:56:55', '2018-09-13 13:56:55', '2018-09-13 13:56:55', 'benar', 178, 61, 39, 111, '2018-09-12 23:56:55', '2018-09-12 23:56:55'),
(1049, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:58:11', '2018-09-13 13:58:11', '2018-09-13 13:58:11', 'salah', 173, 61, 39, 112, '2018-09-12 23:58:11', '2018-09-12 23:58:11'),
(1050, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 13:58:18', '2018-09-13 13:58:18', '2018-09-13 13:58:18', 'salah', 171, 61, 39, 112, '2018-09-12 23:58:18', '2018-09-12 23:58:18'),
(1051, 'ProgramAksiM', '7 5 3', '2018-09-13 13:58:34', '2018-09-13 13:58:34', '2018-09-13 13:58:34', 'salah', 177, 61, 39, 111, '2018-09-12 23:58:34', '2018-09-12 23:58:34'),
(1052, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:59:00', '2018-09-13 13:59:00', '2018-09-13 13:59:00', 'benar', 173, 61, 39, 113, '2018-09-12 23:59:00', '2018-09-12 23:59:00'),
(1053, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 13:59:01', '2018-09-13 13:59:01', '2018-09-13 13:59:01', 'benar', 171, 61, 39, 113, '2018-09-12 23:59:01', '2018-09-12 23:59:01'),
(1054, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 13:59:42', '2018-09-13 13:59:42', '2018-09-13 13:59:42', 'benar', 177, 61, 39, 112, '2018-09-12 23:59:42', '2018-09-12 23:59:42'),
(1055, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 14:00:12', '2018-09-13 14:00:12', '2018-09-13 14:00:12', 'benar', 178, 61, 39, 113, '2018-09-13 00:00:12', '2018-09-13 00:00:12'),
(1056, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 14:00:32', '2018-09-13 14:00:32', '2018-09-13 14:00:32', 'benar', 177, 61, 39, 113, '2018-09-13 00:00:32', '2018-09-13 00:00:32'),
(1057, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 14:03:45', '2018-09-13 14:03:45', '2018-09-13 14:03:45', 'benar', 160, 61, 39, 109, '2018-09-13 07:03:45', '2018-09-13 00:03:45'),
(1058, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 14:04:42', '2018-09-13 14:04:42', '2018-09-13 14:04:42', 'benar', 160, 61, 39, 110, '2018-09-13 00:04:42', '2018-09-13 00:04:42'),
(1059, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 14:05:19', '2018-09-13 14:05:19', '2018-09-13 14:05:19', 'benar', 178, 61, 39, 112, '2018-09-13 00:05:19', '2018-09-13 00:05:19'),
(1060, 'ProgramAksiM', '7 3 5', '2018-09-13 14:05:27', '2018-09-13 14:05:27', '2018-09-13 14:05:27', 'benar', 160, 61, 39, 111, '2018-09-13 00:05:27', '2018-09-13 00:05:27'),
(1061, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 14:20:11', '2018-09-13 14:20:11', '2018-09-13 14:20:11', 'benar', 186, 61, 39, 109, '2018-09-13 00:20:11', '2018-09-13 00:20:11'),
(1062, 'RumusPG-2', 'a(b-c)(d*d-b)/b+d(c-a)', '2018-09-13 14:20:41', '2018-09-13 14:20:41', '2018-09-13 14:20:41', 'salah', 186, 61, 39, 110, '2018-09-13 00:20:41', '2018-09-13 00:20:41'),
(1063, 'ProgramAksiM', '7 3 5', '2018-09-13 14:21:44', '2018-09-13 14:21:44', '2018-09-13 14:21:44', 'benar', 186, 61, 39, 111, '2018-09-13 00:21:44', '2018-09-13 00:21:44'),
(1064, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 14:23:38', '2018-09-13 14:23:38', '2018-09-13 14:23:38', 'salah', 186, 61, 39, 112, '2018-09-13 00:23:38', '2018-09-13 00:23:38'),
(1065, 'UrutanRumus', 'Rumus-2 dengan rumus-3', '2018-09-13 14:24:55', '2018-09-13 14:24:55', '2018-09-13 14:24:55', 'salah', 186, 61, 39, 113, '2018-09-13 00:24:55', '2018-09-13 00:24:55'),
(1066, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:22:13', '2018-09-13 15:22:13', '2018-09-13 15:22:13', 'salah', 195, 61, 39, 109, '2018-09-13 01:22:13', '2018-09-13 01:22:13'),
(1067, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 15:22:22', '2018-09-13 15:22:22', '2018-09-13 15:22:22', 'benar', 199, 61, 39, 109, '2018-09-13 01:22:22', '2018-09-13 01:22:22'),
(1068, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:22:42', '2018-09-13 15:22:42', '2018-09-13 15:22:42', 'salah', 194, 61, 39, 109, '2018-09-13 01:22:42', '2018-09-13 01:22:42'),
(1069, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:22:43', '2018-09-13 15:22:43', '2018-09-13 15:22:43', 'salah', 201, 61, 39, 109, '2018-09-13 01:22:43', '2018-09-13 01:22:43'),
(1070, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 15:22:59', '2018-09-13 15:22:59', '2018-09-13 15:22:59', 'benar', 195, 61, 39, 110, '2018-09-13 01:22:59', '2018-09-13 01:22:59'),
(1071, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 15:23:01', '2018-09-13 15:23:01', '2018-09-13 15:23:01', 'benar', 194, 61, 39, 110, '2018-09-13 01:23:01', '2018-09-13 01:23:01'),
(1072, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:23:06', '2018-09-13 15:23:06', '2018-09-13 15:23:06', 'salah', 196, 61, 39, 109, '2018-09-13 01:23:06', '2018-09-13 01:23:06'),
(1073, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 15:23:07', '2018-09-13 15:23:07', '2018-09-13 15:23:07', 'salah', 199, 61, 39, 110, '2018-09-13 01:23:07', '2018-09-13 01:23:07'),
(1074, 'ProgramAksiM', '7 3 5', '2018-09-13 15:23:35', '2018-09-13 15:23:35', '2018-09-13 15:23:35', 'benar', 199, 61, 39, 111, '2018-09-13 01:23:35', '2018-09-13 01:23:35'),
(1075, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 15:23:37', '2018-09-13 15:23:37', '2018-09-13 15:23:37', 'salah', 207, 61, 39, 109, '2018-09-13 01:23:37', '2018-09-13 01:23:37'),
(1076, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 15:23:39', '2018-09-13 15:23:39', '2018-09-13 15:23:39', 'salah', 202, 61, 39, 109, '2018-09-13 01:23:39', '2018-09-13 01:23:39'),
(1077, 'ProgramAksiM', '7 3 5', '2018-09-13 15:24:01', '2018-09-13 15:24:01', '2018-09-13 15:24:01', 'benar', 194, 61, 39, 111, '2018-09-13 01:24:01', '2018-09-13 01:24:01'),
(1078, 'ProgramAksiM', '7 3 5', '2018-09-13 15:24:02', '2018-09-13 15:24:02', '2018-09-13 15:24:02', 'benar', 195, 61, 39, 111, '2018-09-13 01:24:02', '2018-09-13 01:24:02'),
(1079, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:24:05', '2018-09-13 15:24:05', '2018-09-13 15:24:05', 'benar', 199, 61, 39, 112, '2018-09-13 01:24:05', '2018-09-13 01:24:05'),
(1080, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 15:24:14', '2018-09-13 15:24:14', '2018-09-13 15:24:14', 'benar', 201, 61, 39, 110, '2018-09-13 01:24:14', '2018-09-13 01:24:14'),
(1081, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 15:24:23', '2018-09-13 15:24:23', '2018-09-13 15:24:23', 'salah', 196, 61, 39, 110, '2018-09-13 01:24:23', '2018-09-13 01:24:23'),
(1082, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 15:24:30', '2018-09-13 15:24:30', '2018-09-13 15:24:30', 'benar', 206, 61, 39, 109, '2018-09-13 01:24:30', '2018-09-13 01:24:30'),
(1083, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 15:24:32', '2018-09-13 15:24:32', '2018-09-13 15:24:32', 'salah', 207, 61, 39, 110, '2018-09-13 01:24:32', '2018-09-13 01:24:32'),
(1084, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:24:35', '2018-09-13 15:24:35', '2018-09-13 15:24:35', 'salah', 202, 61, 39, 110, '2018-09-13 01:24:35', '2018-09-13 01:24:35'),
(1085, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:24:38', '2018-09-13 15:24:38', '2018-09-13 15:24:38', 'salah', 206, 61, 39, 110, '2018-09-13 01:24:38', '2018-09-13 01:24:38'),
(1086, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:25:00', '2018-09-13 15:25:00', '2018-09-13 15:25:00', 'salah', 203, 61, 39, 109, '2018-09-13 01:25:00', '2018-09-13 01:25:00'),
(1087, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:25:04', '2018-09-13 15:25:04', '2018-09-13 15:25:04', 'salah', 212, 61, 39, 110, '2018-09-13 01:25:04', '2018-09-13 01:25:04'),
(1088, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 15:25:04', '2018-09-13 15:25:04', '2018-09-13 15:25:04', 'benar', 198, 61, 39, 109, '2018-09-13 01:25:04', '2018-09-13 01:25:04'),
(1089, 'ProgramAksiM', '7 3 5', '2018-09-13 15:25:20', '2018-09-13 15:25:20', '2018-09-13 15:25:20', 'benar', 196, 61, 39, 111, '2018-09-13 01:25:20', '2018-09-13 01:25:20'),
(1090, 'ProgramAksiM', '5 7 3', '2018-09-13 15:25:29', '2018-09-13 15:25:29', '2018-09-13 15:25:29', 'salah', 206, 61, 39, 111, '2018-09-13 01:25:29', '2018-09-13 01:25:29'),
(1091, 'UrutanRumus', 'Rumus-2 dengan rumus-3', '2018-09-13 15:25:31', '2018-09-13 15:25:31', '2018-09-13 15:25:31', 'salah', 199, 61, 39, 113, '2018-09-13 01:25:31', '2018-09-13 01:25:31'),
(1092, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:39:51', '2018-09-13 15:39:51', '2018-09-13 15:39:51', 'salah', 204, 61, 39, 109, '2018-09-13 08:39:51', '2018-09-13 01:39:51'),
(1093, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:25:42', '2018-09-13 15:25:42', '2018-09-13 15:25:42', 'salah', 204, 61, 39, 110, '2018-09-13 01:25:42', '2018-09-13 01:25:42'),
(1094, 'ProgramAksiM', '7 5 3', '2018-09-13 15:25:55', '2018-09-13 15:25:55', '2018-09-13 15:25:55', 'salah', 202, 61, 39, 111, '2018-09-13 01:25:55', '2018-09-13 01:25:55'),
(1095, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:25:57', '2018-09-13 15:25:57', '2018-09-13 15:25:57', 'salah', 198, 61, 39, 110, '2018-09-13 01:25:57', '2018-09-13 01:25:57'),
(1096, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:37:20', '2018-09-13 15:37:20', '2018-09-13 15:37:20', 'benar', 206, 61, 39, 112, '2018-09-13 08:37:20', '2018-09-13 01:37:20'),
(1097, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 15:26:15', '2018-09-13 15:26:15', '2018-09-13 15:26:15', 'benar', 203, 61, 39, 110, '2018-09-13 01:26:15', '2018-09-13 01:26:15'),
(1098, 'ProgramAksiM', '7 3 5', '2018-09-13 15:26:22', '2018-09-13 15:26:22', '2018-09-13 15:26:22', 'benar', 212, 61, 39, 111, '2018-09-13 01:26:22', '2018-09-13 01:26:22'),
(1099, 'ProgramAksiM', '7 3 5', '2018-09-13 15:26:29', '2018-09-13 15:26:29', '2018-09-13 15:26:29', 'benar', 204, 61, 39, 111, '2018-09-13 01:26:29', '2018-09-13 01:26:29'),
(1100, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:26:52', '2018-09-13 15:26:52', '2018-09-13 15:26:52', 'benar', 204, 61, 39, 112, '2018-09-13 01:26:52', '2018-09-13 01:26:52'),
(1101, 'ProgramAksiM', '7 3 5', '2018-09-13 15:26:55', '2018-09-13 15:26:55', '2018-09-13 15:26:55', 'benar', 198, 61, 39, 111, '2018-09-13 01:26:55', '2018-09-13 01:26:55'),
(1102, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:27:02', '2018-09-13 15:27:02', '2018-09-13 15:27:02', 'benar', 202, 61, 39, 112, '2018-09-13 01:27:02', '2018-09-13 01:27:02'),
(1103, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:27:33', '2018-09-13 15:27:33', '2018-09-13 15:27:33', 'benar', 196, 61, 39, 112, '2018-09-13 01:27:33', '2018-09-13 01:27:33'),
(1104, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 15:27:36', '2018-09-13 15:27:36', '2018-09-13 15:27:36', 'salah', 194, 61, 39, 112, '2018-09-13 01:27:36', '2018-09-13 01:27:36'),
(1105, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 15:27:44', '2018-09-13 15:27:44', '2018-09-13 15:27:44', 'salah', 195, 61, 39, 112, '2018-09-13 01:27:44', '2018-09-13 01:27:44'),
(1106, 'ProgramAksiM', '7 3 5', '2018-09-13 15:27:55', '2018-09-13 15:27:55', '2018-09-13 15:27:55', 'benar', 203, 61, 39, 111, '2018-09-13 01:27:55', '2018-09-13 01:27:55'),
(1107, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:37:49', '2018-09-13 15:37:49', '2018-09-13 15:37:49', 'benar', 206, 61, 39, 113, '2018-09-13 08:37:49', '2018-09-13 01:37:49'),
(1108, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 15:28:11', '2018-09-13 15:28:11', '2018-09-13 15:28:11', 'salah', 212, 61, 39, 112, '2018-09-13 01:28:11', '2018-09-13 01:28:11'),
(1109, 'ProgramHitungL', 'SS = SS % 100; pl = Bil // 10', '2018-09-13 15:28:35', '2018-09-13 15:28:35', '2018-09-13 15:28:35', 'salah', 201, 61, 39, 112, '2018-09-13 01:28:35', '2018-09-13 01:28:35'),
(1110, 'ProgramAksiM', '7 3 5', '2018-09-13 15:28:47', '2018-09-13 15:28:47', '2018-09-13 15:28:47', 'benar', 207, 61, 39, 111, '2018-09-13 01:28:47', '2018-09-13 01:28:47'),
(1111, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:29:02', '2018-09-13 15:29:02', '2018-09-13 15:29:02', 'benar', 198, 61, 39, 112, '2018-09-13 01:29:02', '2018-09-13 01:29:02'),
(1112, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:29:07', '2018-09-13 15:29:07', '2018-09-13 15:29:07', 'salah', 208, 61, 39, 109, '2018-09-13 01:29:07', '2018-09-13 01:29:07'),
(1113, 'UrutanRumus', 'Rumus-1 dengan rumus-3', '2018-09-13 15:29:18', '2018-09-13 15:29:18', '2018-09-13 15:29:18', 'salah', 202, 61, 39, 113, '2018-09-13 01:29:18', '2018-09-13 01:29:18'),
(1114, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 15:29:22', '2018-09-13 15:29:22', '2018-09-13 15:29:22', 'salah', 196, 61, 39, 113, '2018-09-13 01:29:22', '2018-09-13 01:29:22'),
(1115, 'TIPE DATA-3', 'integer, float, boolean', '2018-09-13 15:29:25', '2018-09-13 15:29:25', '2018-09-13 15:29:25', 'salah', 200, 61, 39, 109, '2018-09-13 01:29:25', '2018-09-13 01:29:25'),
(1116, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:29:38', '2018-09-13 15:29:38', '2018-09-13 15:29:38', 'benar', 212, 61, 39, 113, '2018-09-13 01:29:38', '2018-09-13 01:29:38'),
(1117, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 15:29:48', '2018-09-13 15:29:48', '2018-09-13 15:29:48', 'salah', 200, 61, 39, 110, '2018-09-13 01:29:48', '2018-09-13 01:29:48'),
(1118, 'RumusPG-2', 'a(b-c)(d*d-b)/b+d(c-a)', '2018-09-13 15:29:58', '2018-09-13 15:29:58', '2018-09-13 15:29:58', 'salah', 208, 61, 39, 110, '2018-09-13 01:29:58', '2018-09-13 01:29:58'),
(1119, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:30:13', '2018-09-13 15:30:13', '2018-09-13 15:30:13', 'benar', 198, 61, 39, 113, '2018-09-13 01:30:13', '2018-09-13 01:30:13'),
(1120, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 15:30:47', '2018-09-13 15:30:47', '2018-09-13 15:30:47', 'salah', 197, 61, 39, 109, '2018-09-13 01:30:47', '2018-09-13 01:30:47'),
(1121, 'ProgramAksiM', '7 3 5', '2018-09-13 15:31:15', '2018-09-13 15:31:15', '2018-09-13 15:31:15', 'benar', 208, 61, 39, 111, '2018-09-13 01:31:15', '2018-09-13 01:31:15'),
(1122, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 15:31:17', '2018-09-13 15:31:17', '2018-09-13 15:31:17', 'salah', 197, 61, 39, 110, '2018-09-13 01:31:17', '2018-09-13 01:31:17'),
(1123, 'ProgramAksiM', '7 3 5', '2018-09-13 15:31:18', '2018-09-13 15:31:18', '2018-09-13 15:31:18', 'benar', 200, 61, 39, 111, '2018-09-13 01:31:18', '2018-09-13 01:31:18'),
(1124, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:31:33', '2018-09-13 15:31:33', '2018-09-13 15:31:33', 'benar', 207, 61, 39, 112, '2018-09-13 01:31:33', '2018-09-13 01:31:33'),
(1125, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:32:09', '2018-09-13 15:32:09', '2018-09-13 15:32:09', 'benar', 201, 61, 39, 113, '2018-09-13 08:32:09', '2018-09-13 01:32:09'),
(1126, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:32:07', '2018-09-13 15:32:07', '2018-09-13 15:32:07', 'benar', 200, 61, 39, 112, '2018-09-13 01:32:07', '2018-09-13 01:32:07'),
(1127, 'ProgramAksiM', '7 3 5', '2018-09-13 15:32:09', '2018-09-13 15:32:09', '2018-09-13 15:32:09', 'benar', 197, 61, 39, 111, '2018-09-13 01:32:09', '2018-09-13 01:32:09'),
(1128, 'ProgramHitungL', 'SS = Bil % 100; pl = SS % 10', '2018-09-13 15:32:31', '2018-09-13 15:32:31', '2018-09-13 15:32:31', 'salah', 208, 61, 39, 112, '2018-09-13 01:32:31', '2018-09-13 01:32:31'),
(1129, 'UrutanRumus', 'Rumus-1 dengan rumus-4', '2018-09-13 15:32:40', '2018-09-13 15:32:40', '2018-09-13 15:32:40', 'salah', 200, 61, 39, 113, '2018-09-13 01:32:40', '2018-09-13 01:32:40'),
(1130, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:32:55', '2018-09-13 15:32:55', '2018-09-13 15:32:55', 'benar', 207, 61, 39, 113, '2018-09-13 01:32:55', '2018-09-13 01:32:55'),
(1131, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:33:12', '2018-09-13 15:33:12', '2018-09-13 15:33:12', 'benar', 203, 61, 39, 112, '2018-09-13 01:33:12', '2018-09-13 01:33:12'),
(1132, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:33:13', '2018-09-13 15:33:13', '2018-09-13 15:33:13', 'benar', 197, 61, 39, 113, '2018-09-13 01:33:13', '2018-09-13 01:33:13'),
(1133, 'ProgramAksiM', '3 7 5', '2018-09-13 15:33:18', '2018-09-13 15:33:18', '2018-09-13 15:33:18', 'salah', 201, 61, 39, 111, '2018-09-13 01:33:18', '2018-09-13 01:33:18'),
(1134, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 15:33:26', '2018-09-13 15:33:26', '2018-09-13 15:33:26', 'salah', 208, 61, 39, 113, '2018-09-13 01:33:26', '2018-09-13 01:33:26'),
(1135, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:33:30', '2018-09-13 15:33:30', '2018-09-13 15:33:30', 'benar', 204, 61, 39, 113, '2018-09-13 01:33:30', '2018-09-13 01:33:30'),
(1136, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:33:45', '2018-09-13 15:33:45', '2018-09-13 15:33:45', 'benar', 194, 61, 39, 113, '2018-09-13 01:33:45', '2018-09-13 01:33:45'),
(1137, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:34:09', '2018-09-13 15:34:09', '2018-09-13 15:34:09', 'benar', 203, 61, 39, 113, '2018-09-13 01:34:09', '2018-09-13 01:34:09'),
(1138, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 15:35:59', '2018-09-13 15:35:59', '2018-09-13 15:35:59', 'benar', 195, 61, 39, 113, '2018-09-13 01:35:59', '2018-09-13 01:35:59'),
(1139, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 15:36:02', '2018-09-13 15:36:02', '2018-09-13 15:36:02', 'salah', 212, 61, 39, 109, '2018-09-13 01:36:02', '2018-09-13 01:36:02'),
(1140, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 15:40:19', '2018-09-13 15:40:19', '2018-09-13 15:40:19', 'benar', 197, 61, 39, 112, '2018-09-13 01:40:19', '2018-09-13 01:40:19'),
(1141, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 16:36:53', '2018-09-13 16:36:53', '2018-09-13 16:36:53', 'benar', 152, 61, 39, 109, '2018-09-13 02:36:53', '2018-09-13 02:36:53'),
(1142, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 16:37:34', '2018-09-13 16:37:34', '2018-09-13 16:37:34', 'benar', 152, 61, 39, 110, '2018-09-13 09:37:34', '2018-09-13 02:37:34'),
(1143, 'ProgramAksiM', '7 3 5', '2018-09-13 16:38:11', '2018-09-13 16:38:11', '2018-09-13 16:38:11', 'benar', 152, 61, 39, 111, '2018-09-13 02:38:11', '2018-09-13 02:38:11'),
(1144, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 16:39:14', '2018-09-13 16:39:14', '2018-09-13 16:39:14', 'benar', 152, 61, 39, 112, '2018-09-13 02:39:14', '2018-09-13 02:39:14'),
(1145, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 16:39:47', '2018-09-13 16:39:47', '2018-09-13 16:39:47', 'benar', 152, 61, 39, 113, '2018-09-13 02:39:47', '2018-09-13 02:39:47');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(1146, 'TIPE DATA-3', 'integer, float, boolean', '2018-09-13 17:00:57', '2018-09-13 17:00:57', '2018-09-13 17:00:57', 'salah', 181, 61, 39, 109, '2018-09-13 10:00:57', '2018-09-13 03:00:57'),
(1147, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 16:57:13', '2018-09-13 16:57:13', '2018-09-13 16:57:13', 'salah', 181, 61, 39, 110, '2018-09-13 02:57:13', '2018-09-13 02:57:13'),
(1148, 'ProgramAksiM', '5 7 3', '2018-09-13 16:57:48', '2018-09-13 16:57:48', '2018-09-13 16:57:48', 'salah', 181, 61, 39, 111, '2018-09-13 02:57:48', '2018-09-13 02:57:48'),
(1149, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 16:57:56', '2018-09-13 16:57:56', '2018-09-13 16:57:56', 'benar', 181, 61, 39, 112, '2018-09-13 02:57:56', '2018-09-13 02:57:56'),
(1150, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 16:58:18', '2018-09-13 16:58:18', '2018-09-13 16:58:18', 'benar', 181, 61, 39, 113, '2018-09-13 09:58:18', '2018-09-13 02:58:18'),
(1151, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 17:09:32', '2018-09-13 17:09:32', '2018-09-13 17:09:32', 'salah', 174, 61, 39, 109, '2018-09-13 03:09:32', '2018-09-13 03:09:32'),
(1152, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 17:10:46', '2018-09-13 17:10:46', '2018-09-13 17:10:46', 'benar', 174, 61, 39, 110, '2018-09-13 03:10:46', '2018-09-13 03:10:46'),
(1153, 'ProgramAksiM', '7 3 5', '2018-09-13 17:11:54', '2018-09-13 17:11:54', '2018-09-13 17:11:54', 'benar', 174, 61, 39, 111, '2018-09-13 03:11:54', '2018-09-13 03:11:54'),
(1154, 'ProgramHitungL', 'SS = Bil % 100; pl = Bil // 10', '2018-09-13 17:12:57', '2018-09-13 17:12:57', '2018-09-13 17:12:57', 'salah', 174, 61, 39, 112, '2018-09-13 03:12:57', '2018-09-13 03:12:57'),
(1155, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 17:13:08', '2018-09-13 17:13:08', '2018-09-13 17:13:08', 'salah', 188, 61, 39, 109, '2018-09-13 03:13:08', '2018-09-13 03:13:08'),
(1156, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 17:14:04', '2018-09-13 17:14:04', '2018-09-13 17:14:04', 'benar', 174, 61, 39, 113, '2018-09-13 03:14:04', '2018-09-13 03:14:04'),
(1157, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 17:14:10', '2018-09-13 17:14:10', '2018-09-13 17:14:10', 'salah', 188, 61, 39, 110, '2018-09-13 03:14:10', '2018-09-13 03:14:10'),
(1158, 'ProgramAksiM', '7 3 5', '2018-09-13 17:15:12', '2018-09-13 17:15:12', '2018-09-13 17:15:12', 'benar', 188, 61, 39, 111, '2018-09-13 03:15:12', '2018-09-13 03:15:12'),
(1159, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 17:16:14', '2018-09-13 17:16:14', '2018-09-13 17:16:14', 'benar', 188, 61, 39, 112, '2018-09-13 03:16:14', '2018-09-13 03:16:14'),
(1160, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 17:17:51', '2018-09-13 17:17:51', '2018-09-13 17:17:51', 'benar', 188, 61, 39, 113, '2018-09-13 03:17:51', '2018-09-13 03:17:51'),
(1161, 'TIPE DATA-3', 'integer, boolean, float', '2018-09-13 17:27:57', '2018-09-13 17:27:57', '2018-09-13 17:27:57', 'salah', 163, 61, 39, 109, '2018-09-13 03:27:57', '2018-09-13 03:27:57'),
(1162, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 17:28:39', '2018-09-13 17:28:39', '2018-09-13 17:28:39', 'salah', 163, 61, 39, 110, '2018-09-13 03:28:39', '2018-09-13 03:28:39'),
(1163, 'ProgramAksiM', '7 5 3', '2018-09-13 17:30:05', '2018-09-13 17:30:05', '2018-09-13 17:30:05', 'salah', 163, 61, 39, 111, '2018-09-13 03:30:05', '2018-09-13 03:30:05'),
(1164, 'ProgramHitungL', 'SS = Bil % 100; pl = Bil // 10', '2018-09-13 17:30:38', '2018-09-13 17:30:38', '2018-09-13 17:30:38', 'salah', 163, 61, 39, 112, '2018-09-13 03:30:38', '2018-09-13 03:30:38'),
(1165, 'UrutanRumus', 'Rumus-1 dengan rumus-4', '2018-09-13 17:31:46', '2018-09-13 17:31:46', '2018-09-13 17:31:46', 'salah', 163, 61, 39, 113, '2018-09-13 03:31:47', '2018-09-13 03:31:47'),
(1166, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 17:33:19', '2018-09-13 17:33:19', '2018-09-13 17:33:19', 'benar', 153, 61, 39, 109, '2018-09-13 03:33:19', '2018-09-13 03:33:19'),
(1167, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-13 17:34:41', '2018-09-13 17:34:41', '2018-09-13 17:34:41', 'salah', 153, 61, 39, 110, '2018-09-13 03:34:41', '2018-09-13 03:34:41'),
(1168, 'ProgramAksiM', '7 3 5', '2018-09-13 17:36:02', '2018-09-13 17:36:02', '2018-09-13 17:36:02', 'benar', 153, 61, 39, 111, '2018-09-13 03:36:02', '2018-09-13 03:36:02'),
(1169, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 17:37:57', '2018-09-13 17:37:57', '2018-09-13 17:37:57', 'benar', 153, 61, 39, 112, '2018-09-13 03:37:57', '2018-09-13 03:37:57'),
(1170, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 17:40:43', '2018-09-13 17:40:43', '2018-09-13 17:40:43', 'benar', 161, 61, 39, 109, '2018-09-13 03:40:43', '2018-09-13 03:40:43'),
(1171, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 17:40:47', '2018-09-13 17:40:47', '2018-09-13 17:40:47', 'benar', 161, 61, 39, 110, '2018-09-13 03:40:47', '2018-09-13 03:40:47'),
(1172, 'UrutanRumus', 'Rumus-2 dengan rumus-4', '2018-09-13 17:40:49', '2018-09-13 17:40:49', '2018-09-13 17:40:49', 'salah', 153, 61, 39, 113, '2018-09-13 03:40:49', '2018-09-13 03:40:49'),
(1173, 'ProgramAksiM', '7 3 5', '2018-09-13 17:40:52', '2018-09-13 17:40:52', '2018-09-13 17:40:52', 'benar', 161, 61, 39, 111, '2018-09-13 03:40:52', '2018-09-13 03:40:52'),
(1174, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 17:40:56', '2018-09-13 17:40:56', '2018-09-13 17:40:56', 'salah', 161, 61, 39, 112, '2018-09-13 03:40:56', '2018-09-13 03:40:56'),
(1175, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 17:41:03', '2018-09-13 17:41:03', '2018-09-13 17:41:03', 'benar', 161, 61, 39, 113, '2018-09-13 03:41:03', '2018-09-13 03:41:03'),
(1176, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 17:43:32', '2018-09-13 17:43:32', '2018-09-13 17:43:32', 'benar', 157, 61, 39, 109, '2018-09-13 03:43:32', '2018-09-13 03:43:32'),
(1177, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 17:43:50', '2018-09-13 17:43:50', '2018-09-13 17:43:50', 'benar', 157, 61, 39, 110, '2018-09-13 03:43:50', '2018-09-13 03:43:50'),
(1178, 'ProgramAksiM', '7 3 5', '2018-09-13 17:43:59', '2018-09-13 17:43:59', '2018-09-13 17:43:59', 'benar', 157, 61, 39, 111, '2018-09-13 03:43:59', '2018-09-13 03:43:59'),
(1179, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 17:44:10', '2018-09-13 17:44:10', '2018-09-13 17:44:10', 'salah', 157, 61, 39, 112, '2018-09-13 03:44:10', '2018-09-13 03:44:10'),
(1180, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 17:44:22', '2018-09-13 17:44:22', '2018-09-13 17:44:22', 'benar', 157, 61, 39, 113, '2018-09-13 03:44:22', '2018-09-13 03:44:22'),
(1181, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 17:50:53', '2018-09-13 17:50:53', '2018-09-13 17:50:53', 'salah', 151, 61, 39, 109, '2018-09-13 03:50:53', '2018-09-13 03:50:53'),
(1182, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 17:51:49', '2018-09-13 17:51:49', '2018-09-13 17:51:49', 'benar', 151, 61, 39, 110, '2018-09-13 03:51:49', '2018-09-13 03:51:49'),
(1183, 'ProgramAksiM', '7 3 5', '2018-09-13 17:52:27', '2018-09-13 17:52:27', '2018-09-13 17:52:27', 'benar', 151, 61, 39, 111, '2018-09-13 03:52:27', '2018-09-13 03:52:27'),
(1184, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 17:53:34', '2018-09-13 17:53:34', '2018-09-13 17:53:34', 'benar', 151, 61, 39, 112, '2018-09-13 03:53:34', '2018-09-13 03:53:34'),
(1185, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 17:54:55', '2018-09-13 17:54:55', '2018-09-13 17:54:55', 'benar', 151, 61, 39, 113, '2018-09-13 03:54:55', '2018-09-13 03:54:55'),
(1186, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 18:00:04', '2018-09-13 18:00:04', '2018-09-13 18:00:04', 'benar', 158, 61, 39, 109, '2018-09-13 04:00:04', '2018-09-13 04:00:04'),
(1187, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:00:09', '2018-09-13 18:00:09', '2018-09-13 18:00:09', 'benar', 158, 61, 39, 110, '2018-09-13 04:00:09', '2018-09-13 04:00:09'),
(1188, 'ProgramAksiM', '7 3 5', '2018-09-13 18:00:13', '2018-09-13 18:00:13', '2018-09-13 18:00:13', 'benar', 158, 61, 39, 111, '2018-09-13 04:00:13', '2018-09-13 04:00:13'),
(1189, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 18:00:25', '2018-09-13 18:00:25', '2018-09-13 18:00:25', 'salah', 158, 61, 39, 112, '2018-09-13 04:00:25', '2018-09-13 04:00:25'),
(1190, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 18:00:34', '2018-09-13 18:00:34', '2018-09-13 18:00:34', 'benar', 158, 61, 39, 113, '2018-09-13 04:00:34', '2018-09-13 04:00:34'),
(1191, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 18:02:10', '2018-09-13 18:02:10', '2018-09-13 18:02:10', 'benar', 184, 61, 39, 109, '2018-09-13 04:02:10', '2018-09-13 04:02:10'),
(1192, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:02:15', '2018-09-13 18:02:15', '2018-09-13 18:02:15', 'benar', 184, 61, 39, 110, '2018-09-13 04:02:15', '2018-09-13 04:02:15'),
(1193, 'ProgramAksiM', '7 3 5', '2018-09-13 18:02:19', '2018-09-13 18:02:19', '2018-09-13 18:02:19', 'benar', 184, 61, 39, 111, '2018-09-13 04:02:19', '2018-09-13 04:02:19'),
(1194, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 18:02:22', '2018-09-13 18:02:22', '2018-09-13 18:02:22', 'salah', 184, 61, 39, 112, '2018-09-13 04:02:22', '2018-09-13 04:02:22'),
(1195, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 18:02:26', '2018-09-13 18:02:26', '2018-09-13 18:02:26', 'benar', 184, 61, 39, 113, '2018-09-13 04:02:26', '2018-09-13 04:02:26'),
(1196, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 18:02:41', '2018-09-13 18:02:41', '2018-09-13 18:02:41', 'benar', 167, 61, 39, 109, '2018-09-13 04:02:41', '2018-09-13 04:02:41'),
(1197, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:03:03', '2018-09-13 18:03:03', '2018-09-13 18:03:03', 'benar', 167, 61, 39, 110, '2018-09-13 04:03:03', '2018-09-13 04:03:03'),
(1198, 'ProgramAksiM', '7 3 5', '2018-09-13 18:04:14', '2018-09-13 18:04:14', '2018-09-13 18:04:14', 'benar', 167, 61, 39, 111, '2018-09-13 04:04:14', '2018-09-13 04:04:14'),
(1199, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 18:04:55', '2018-09-13 18:04:55', '2018-09-13 18:04:55', 'salah', 167, 61, 39, 112, '2018-09-13 04:04:55', '2018-09-13 04:04:55'),
(1200, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 18:05:22', '2018-09-13 18:05:22', '2018-09-13 18:05:22', 'benar', 167, 61, 39, 113, '2018-09-13 04:05:22', '2018-09-13 04:05:22'),
(1201, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 18:09:23', '2018-09-13 18:09:23', '2018-09-13 18:09:23', 'benar', 182, 61, 39, 109, '2018-09-13 04:09:24', '2018-09-13 04:09:24'),
(1202, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:09:27', '2018-09-13 18:09:27', '2018-09-13 18:09:27', 'benar', 182, 61, 39, 110, '2018-09-13 04:09:27', '2018-09-13 04:09:27'),
(1203, 'ProgramAksiM', '7 3 5', '2018-09-13 18:09:30', '2018-09-13 18:09:30', '2018-09-13 18:09:30', 'benar', 182, 61, 39, 111, '2018-09-13 04:09:30', '2018-09-13 04:09:30'),
(1204, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 18:09:34', '2018-09-13 18:09:34', '2018-09-13 18:09:34', 'salah', 182, 61, 39, 112, '2018-09-13 04:09:34', '2018-09-13 04:09:34'),
(1205, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 18:09:38', '2018-09-13 18:09:38', '2018-09-13 18:09:38', 'benar', 182, 61, 39, 113, '2018-09-13 04:09:38', '2018-09-13 04:09:38'),
(1206, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 18:13:20', '2018-09-13 18:13:20', '2018-09-13 18:13:20', 'benar', 179, 61, 39, 109, '2018-09-13 04:13:20', '2018-09-13 04:13:20'),
(1207, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:13:24', '2018-09-13 18:13:24', '2018-09-13 18:13:24', 'benar', 179, 61, 39, 110, '2018-09-13 04:13:24', '2018-09-13 04:13:24'),
(1208, 'ProgramAksiM', '7 3 5', '2018-09-13 18:13:27', '2018-09-13 18:13:27', '2018-09-13 18:13:27', 'benar', 179, 61, 39, 111, '2018-09-13 04:13:28', '2018-09-13 04:13:28'),
(1209, 'ProgramHitungL', 'SS = Bil % 100; pl = SS // 10', '2018-09-13 18:13:31', '2018-09-13 18:13:31', '2018-09-13 18:13:31', 'salah', 179, 61, 39, 112, '2018-09-13 04:13:31', '2018-09-13 04:13:31'),
(1210, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 18:13:34', '2018-09-13 18:13:34', '2018-09-13 18:13:34', 'benar', 179, 61, 39, 113, '2018-09-13 04:13:34', '2018-09-13 04:13:34'),
(1211, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 18:47:22', '2018-09-13 18:47:22', '2018-09-13 18:47:22', 'salah', 180, 61, 39, 109, '2018-09-13 04:47:22', '2018-09-13 04:47:22'),
(1212, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 18:48:40', '2018-09-13 18:48:40', '2018-09-13 18:48:40', 'benar', 180, 61, 39, 110, '2018-09-13 04:48:40', '2018-09-13 04:48:40'),
(1213, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 18:49:39', '2018-09-13 18:49:39', '2018-09-13 18:49:39', 'salah', 185, 61, 39, 110, '2018-09-13 04:49:39', '2018-09-13 04:49:39'),
(1214, 'ProgramAksiM', '7 3 5', '2018-09-13 18:49:49', '2018-09-13 18:49:49', '2018-09-13 18:49:49', 'benar', 180, 61, 39, 111, '2018-09-13 04:49:49', '2018-09-13 04:49:49'),
(1215, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 18:50:56', '2018-09-13 18:50:56', '2018-09-13 18:50:56', 'benar', 180, 61, 39, 112, '2018-09-13 04:50:56', '2018-09-13 04:50:56'),
(1216, 'TIPE DATA-3', 'integer, float, boolean', '2018-09-13 18:50:59', '2018-09-13 18:50:59', '2018-09-13 18:50:59', 'salah', 185, 61, 39, 109, '2018-09-13 04:50:59', '2018-09-13 04:50:59'),
(1217, 'ProgramAksiM', '7 3 5', '2018-09-13 18:51:13', '2018-09-13 18:51:13', '2018-09-13 18:51:13', 'benar', 185, 61, 39, 111, '2018-09-13 04:51:13', '2018-09-13 04:51:13'),
(1218, 'UrutanRumus', 'Rumus-1 dengan rumus-4', '2018-09-13 18:51:58', '2018-09-13 18:51:58', '2018-09-13 18:51:58', 'salah', 180, 61, 39, 113, '2018-09-13 04:51:58', '2018-09-13 04:51:58'),
(1219, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 18:54:48', '2018-09-13 18:54:48', '2018-09-13 18:54:48', 'benar', 185, 61, 39, 112, '2018-09-13 04:54:48', '2018-09-13 04:54:48'),
(1220, 'TIPE DATA-3', 'integer, float, boolean', '2018-09-13 19:00:47', '2018-09-13 19:00:47', '2018-09-13 19:00:47', 'salah', 172, 61, 39, 109, '2018-09-13 05:00:47', '2018-09-13 05:00:47'),
(1221, 'RumusPG-2', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '2018-09-13 19:02:01', '2018-09-13 19:02:01', '2018-09-13 19:02:01', 'salah', 172, 61, 39, 110, '2018-09-13 05:02:01', '2018-09-13 05:02:01'),
(1222, 'ProgramAksiM', '3 7 5', '2018-09-13 19:04:35', '2018-09-13 19:04:35', '2018-09-13 19:04:35', 'salah', 172, 61, 39, 111, '2018-09-13 05:04:35', '2018-09-13 05:04:35'),
(1223, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 19:05:58', '2018-09-13 19:05:58', '2018-09-13 19:05:58', 'benar', 172, 61, 39, 112, '2018-09-13 05:05:58', '2018-09-13 05:05:58'),
(1224, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 19:07:18', '2018-09-13 19:07:18', '2018-09-13 19:07:18', 'benar', 172, 61, 39, 113, '2018-09-13 05:07:18', '2018-09-13 05:07:18'),
(1225, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-13 19:42:30', '2018-09-13 19:42:30', '2018-09-13 19:42:30', 'benar', 170, 61, 39, 109, '2018-09-13 12:42:30', '2018-09-13 05:42:30'),
(1226, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 19:42:45', '2018-09-13 19:42:45', '2018-09-13 19:42:45', 'benar', 170, 61, 39, 110, '2018-09-13 05:42:45', '2018-09-13 05:42:45'),
(1227, 'ProgramAksiM', '7 3 5', '2018-09-13 19:43:51', '2018-09-13 19:43:51', '2018-09-13 19:43:51', 'benar', 170, 61, 39, 111, '2018-09-13 05:43:51', '2018-09-13 05:43:51'),
(1228, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-13 19:45:34', '2018-09-13 19:45:34', '2018-09-13 19:45:34', 'benar', 170, 61, 39, 112, '2018-09-13 05:45:34', '2018-09-13 05:45:34'),
(1229, 'TIPE DATA-3', 'integer, integer, boolean', '2018-09-13 19:46:08', '2018-09-13 19:46:08', '2018-09-13 19:46:08', 'salah', 148, 61, 39, 109, '2018-09-13 05:46:08', '2018-09-13 05:46:08'),
(1230, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 19:47:12', '2018-09-13 19:47:12', '2018-09-13 19:47:12', 'benar', 170, 61, 39, 113, '2018-09-13 12:47:12', '2018-09-13 05:47:12'),
(1231, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-13 19:47:03', '2018-09-13 19:47:03', '2018-09-13 19:47:03', 'benar', 148, 61, 39, 110, '2018-09-13 05:47:03', '2018-09-13 05:47:03'),
(1232, 'ProgramAksiM', '7 3 5', '2018-09-13 19:48:04', '2018-09-13 19:48:04', '2018-09-13 19:48:04', 'benar', 148, 61, 39, 111, '2018-09-13 05:48:04', '2018-09-13 05:48:04'),
(1233, 'ProgramHitungL', 'SS = SS % 100; pl = Bil // 10', '2018-09-13 19:48:58', '2018-09-13 19:48:58', '2018-09-13 19:48:58', 'salah', 148, 61, 39, 112, '2018-09-13 05:48:58', '2018-09-13 05:48:58'),
(1234, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-13 19:50:19', '2018-09-13 19:50:19', '2018-09-13 19:50:19', 'benar', 148, 61, 39, 113, '2018-09-13 05:50:19', '2018-09-13 05:50:19'),
(1235, 'while-1', '-2', '2018-09-17 09:06:39', '2018-09-17 09:06:39', '2018-09-17 09:06:39', 'benar', 172, 62, 42, 128, '2018-09-16 19:06:39', '2018-09-16 19:06:39'),
(1236, 'while-1', '-2', '2018-09-17 09:06:55', '2018-09-17 09:06:55', '2018-09-17 09:06:55', 'benar', 193, 62, 42, 128, '2018-09-16 19:06:55', '2018-09-16 19:06:55'),
(1237, 'while-1', '1', '2018-09-17 09:07:06', '2018-09-17 09:07:06', '2018-09-17 09:07:06', 'salah', 186, 62, 42, 128, '2018-09-16 19:07:06', '2018-09-16 19:07:06'),
(1238, 'while-1', '-2', '2018-09-17 09:19:21', '2018-09-17 09:19:21', '2018-09-17 09:19:21', 'benar', 185, 62, 42, 128, '2018-09-17 02:19:21', '2018-09-16 19:19:21'),
(1239, 'while-1', '-2', '2018-09-17 09:16:12', '2018-09-17 09:16:12', '2018-09-17 09:16:12', 'benar', 183, 62, 42, 128, '2018-09-17 02:16:12', '2018-09-16 19:16:12'),
(1240, 'while-1', '1', '2018-09-17 09:07:17', '2018-09-17 09:07:17', '2018-09-17 09:07:17', 'salah', 175, 62, 42, 128, '2018-09-16 19:07:17', '2018-09-16 19:07:17'),
(1241, 'while-1', '1', '2018-09-17 09:07:28', '2018-09-17 09:07:28', '2018-09-17 09:07:28', 'salah', 192, 62, 42, 128, '2018-09-16 19:07:28', '2018-09-16 19:07:28'),
(1242, 'while-1', '-2', '2018-09-17 09:07:30', '2018-09-17 09:07:30', '2018-09-17 09:07:30', 'benar', 170, 62, 42, 128, '2018-09-16 19:07:30', '2018-09-16 19:07:30'),
(1243, 'while-1', '-2', '2018-09-17 09:07:31', '2018-09-17 09:07:31', '2018-09-17 09:07:31', 'benar', 184, 62, 42, 128, '2018-09-16 19:07:31', '2018-09-16 19:07:31'),
(1244, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 09:07:32', '2018-09-17 09:07:32', '2018-09-17 09:07:32', 'salah', 193, 62, 42, 129, '2018-09-16 19:07:32', '2018-09-16 19:07:32'),
(1245, 'while-1', '-2', '2018-09-17 09:07:41', '2018-09-17 09:07:41', '2018-09-17 09:07:41', 'benar', 177, 62, 42, 128, '2018-09-16 19:07:41', '2018-09-16 19:07:41'),
(1246, 'while-1', '1', '2018-09-17 09:07:41', '2018-09-17 09:07:41', '2018-09-17 09:07:41', 'salah', 174, 62, 42, 128, '2018-09-16 19:07:41', '2018-09-16 19:07:41'),
(1247, 'while-1', '1', '2018-09-17 09:07:49', '2018-09-17 09:07:49', '2018-09-17 09:07:49', 'salah', 182, 62, 42, 128, '2018-09-16 19:07:49', '2018-09-16 19:07:49'),
(1248, 'while-1', '1', '2018-09-17 09:07:59', '2018-09-17 09:07:59', '2018-09-17 09:07:59', 'salah', 173, 62, 42, 128, '2018-09-16 19:07:59', '2018-09-16 19:07:59'),
(1249, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 09:17:34', '2018-09-17 09:17:34', '2018-09-17 09:17:34', 'salah', 190, 62, 42, 129, '2018-09-17 02:17:34', '2018-09-16 19:17:34'),
(1250, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:01', '2018-09-17 09:08:01', '2018-09-17 09:08:01', 'benar', 192, 62, 42, 129, '2018-09-16 19:08:01', '2018-09-16 19:08:01'),
(1251, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:08:05', '2018-09-17 09:08:05', '2018-09-17 09:08:05', 'benar', 193, 62, 42, 130, '2018-09-16 19:08:05', '2018-09-16 19:08:05'),
(1252, 'while-1', '-2', '2018-09-17 09:08:09', '2018-09-17 09:08:09', '2018-09-17 09:08:09', 'benar', 169, 62, 42, 128, '2018-09-16 19:08:09', '2018-09-16 19:08:09'),
(1253, 'while-1', '1', '2018-09-17 09:19:08', '2018-09-17 09:19:08', '2018-09-17 09:19:08', 'salah', 171, 62, 42, 128, '2018-09-17 02:19:08', '2018-09-16 19:19:08'),
(1254, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:15', '2018-09-17 09:08:15', '2018-09-17 09:08:15', 'benar', 175, 62, 42, 129, '2018-09-16 19:08:15', '2018-09-16 19:08:15'),
(1255, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:21:35', '2018-09-17 09:21:35', '2018-09-17 09:21:35', 'benar', 185, 62, 42, 129, '2018-09-17 02:21:35', '2018-09-16 19:21:35'),
(1256, 'while-1', '-2', '2018-09-17 09:08:18', '2018-09-17 09:08:18', '2018-09-17 09:08:18', 'benar', 189, 62, 42, 128, '2018-09-16 19:08:18', '2018-09-16 19:08:18'),
(1257, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:26', '2018-09-17 09:08:26', '2018-09-17 09:08:26', 'benar', 184, 62, 42, 129, '2018-09-16 19:08:26', '2018-09-16 19:08:26'),
(1258, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:31', '2018-09-17 09:08:31', '2018-09-17 09:08:31', 'benar', 177, 62, 42, 129, '2018-09-16 19:08:31', '2018-09-16 19:08:31'),
(1259, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:34', '2018-09-17 09:08:34', '2018-09-17 09:08:34', 'benar', 182, 62, 42, 129, '2018-09-16 19:08:34', '2018-09-16 19:08:34'),
(1260, 'WhileDeret-1', '9 8 7 6', '2018-09-17 09:17:50', '2018-09-17 09:17:50', '2018-09-17 09:17:50', 'salah', 183, 62, 42, 129, '2018-09-17 02:17:50', '2018-09-16 19:17:50'),
(1261, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:16', '2018-09-17 09:09:16', '2018-09-17 09:09:16', 'benar', 180, 62, 42, 129, '2018-09-17 02:09:16', '2018-09-16 19:09:16'),
(1262, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:08:47', '2018-09-17 09:08:47', '2018-09-17 09:08:47', 'benar', 192, 62, 42, 130, '2018-09-16 19:08:47', '2018-09-16 19:08:47'),
(1263, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:08:47', '2018-09-17 09:08:47', '2018-09-17 09:08:47', 'benar', 175, 62, 42, 130, '2018-09-16 19:08:47', '2018-09-16 19:08:47'),
(1264, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:08:47', '2018-09-17 09:08:47', '2018-09-17 09:08:47', 'benar', 172, 62, 42, 129, '2018-09-16 19:08:47', '2018-09-16 19:08:47'),
(1265, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:22:25', '2018-09-17 09:22:25', '2018-09-17 09:22:25', 'benar', 185, 62, 42, 130, '2018-09-17 02:22:25', '2018-09-16 19:22:25'),
(1266, 'WhileDeret-1', '9 8 7 6', '2018-09-17 09:08:56', '2018-09-17 09:08:56', '2018-09-17 09:08:56', 'salah', 179, 62, 42, 129, '2018-09-16 19:08:56', '2018-09-16 19:08:56'),
(1267, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:01', '2018-09-17 09:09:01', '2018-09-17 09:09:01', 'benar', 186, 62, 42, 129, '2018-09-16 19:09:01', '2018-09-16 19:09:01'),
(1268, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:09:02', '2018-09-17 09:09:02', '2018-09-17 09:09:02', 'benar', 184, 62, 42, 130, '2018-09-16 19:09:02', '2018-09-16 19:09:02'),
(1269, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:09:04', '2018-09-17 09:09:04', '2018-09-17 09:09:04', 'benar', 193, 62, 42, 131, '2018-09-16 19:09:04', '2018-09-16 19:09:04'),
(1270, 'while-1', '2', '2018-09-17 09:09:10', '2018-09-17 09:09:10', '2018-09-17 09:09:10', 'salah', 187, 62, 42, 128, '2018-09-16 19:09:10', '2018-09-16 19:09:10'),
(1271, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:15', '2018-09-17 09:09:15', '2018-09-17 09:09:15', 'benar', 169, 62, 42, 129, '2018-09-16 19:09:15', '2018-09-16 19:09:15'),
(1272, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:23', '2018-09-17 09:09:23', '2018-09-17 09:09:23', 'benar', 170, 62, 42, 129, '2018-09-16 19:09:23', '2018-09-16 19:09:23'),
(1273, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:09:24', '2018-09-17 09:09:24', '2018-09-17 09:09:24', 'benar', 177, 62, 42, 130, '2018-09-16 19:09:24', '2018-09-16 19:09:24'),
(1274, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:09:27', '2018-09-17 09:09:27', '2018-09-17 09:09:27', 'benar', 182, 62, 42, 130, '2018-09-16 19:09:27', '2018-09-16 19:09:27'),
(1275, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:09:28', '2018-09-17 09:09:28', '2018-09-17 09:09:28', 'benar', 192, 62, 42, 131, '2018-09-16 19:09:28', '2018-09-16 19:09:28'),
(1276, 'WhileDeret-1', '9 8 7 6', '2018-09-17 09:09:29', '2018-09-17 09:09:29', '2018-09-17 09:09:29', 'salah', 171, 62, 42, 129, '2018-09-16 19:09:29', '2018-09-16 19:09:29'),
(1277, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:34', '2018-09-17 09:09:34', '2018-09-17 09:09:34', 'benar', 189, 62, 42, 129, '2018-09-16 19:09:34', '2018-09-16 19:09:34'),
(1278, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:09:37', '2018-09-17 09:09:37', '2018-09-17 09:09:37', 'benar', 172, 62, 42, 130, '2018-09-16 19:09:37', '2018-09-16 19:09:37'),
(1279, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:09:38', '2018-09-17 09:09:38', '2018-09-17 09:09:38', 'benar', 193, 62, 42, 132, '2018-09-16 19:09:38', '2018-09-16 19:09:38'),
(1280, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:40', '2018-09-17 09:09:40', '2018-09-17 09:09:40', 'benar', 174, 62, 42, 129, '2018-09-16 19:09:40', '2018-09-16 19:09:40'),
(1281, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:09:40', '2018-09-17 09:09:40', '2018-09-17 09:09:40', 'benar', 175, 62, 42, 131, '2018-09-16 19:09:40', '2018-09-16 19:09:40'),
(1282, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:09:42', '2018-09-17 09:09:42', '2018-09-17 09:09:42', 'benar', 184, 62, 42, 131, '2018-09-16 19:09:42', '2018-09-16 19:09:42'),
(1283, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 5,6,7,8,9,10', '2018-09-17 09:09:47', '2018-09-17 09:09:47', '2018-09-17 09:09:47', 'salah', 180, 62, 42, 130, '2018-09-16 19:09:47', '2018-09-16 19:09:47'),
(1284, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:18:40', '2018-09-17 09:18:40', '2018-09-17 09:18:40', 'benar', 183, 62, 42, 130, '2018-09-17 02:18:40', '2018-09-16 19:18:40'),
(1285, 'WhileDeret-1', '9 8 7 6', '2018-09-17 09:17:13', '2018-09-17 09:17:13', '2018-09-17 09:17:13', 'salah', 181, 62, 42, 129, '2018-09-17 02:17:13', '2018-09-16 19:17:13'),
(1286, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:09:59', '2018-09-17 09:09:59', '2018-09-17 09:09:59', 'benar', 188, 62, 42, 129, '2018-09-16 19:09:59', '2018-09-16 19:09:59'),
(1287, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:09:59', '2018-09-17 09:09:59', '2018-09-17 09:09:59', 'benar', 169, 62, 42, 130, '2018-09-16 19:09:59', '2018-09-16 19:09:59'),
(1288, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:09:59', '2018-09-17 09:09:59', '2018-09-17 09:09:59', 'benar', 192, 62, 42, 132, '2018-09-16 19:09:59', '2018-09-16 19:09:59'),
(1289, 'WhileDeret-2', 'Tidak ada nilai yang dicetak, karena kondisi (i > N)  tidak pernah dipenuhi.', '2018-09-17 09:10:06', '2018-09-17 09:10:06', '2018-09-17 09:10:06', 'salah', 171, 62, 42, 130, '2018-09-16 19:10:06', '2018-09-16 19:10:06'),
(1290, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:10:11', '2018-09-17 09:10:11', '2018-09-17 09:10:11', 'benar', 173, 62, 42, 129, '2018-09-16 19:10:11', '2018-09-16 19:10:11'),
(1291, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:10:14', '2018-09-17 09:10:14', '2018-09-17 09:10:14', 'benar', 186, 62, 42, 130, '2018-09-16 19:10:14', '2018-09-16 19:10:14'),
(1292, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:22:59', '2018-09-17 09:22:59', '2018-09-17 09:22:59', 'benar', 185, 62, 42, 131, '2018-09-17 02:22:59', '2018-09-16 19:22:59'),
(1293, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:10:26', '2018-09-17 09:10:26', '2018-09-17 09:10:26', 'benar', 170, 62, 42, 130, '2018-09-16 19:10:26', '2018-09-16 19:10:26'),
(1294, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:18:23', '2018-09-17 09:18:23', '2018-09-17 09:18:23', 'benar', 190, 62, 42, 130, '2018-09-17 02:18:23', '2018-09-16 19:18:23'),
(1295, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:10:30', '2018-09-17 09:10:30', '2018-09-17 09:10:30', 'benar', 192, 62, 42, 133, '2018-09-16 19:10:30', '2018-09-16 19:10:30'),
(1296, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 09:25:32', '2018-09-17 09:25:32', '2018-09-17 09:25:32', 'salah', 178, 62, 42, 129, '2018-09-17 02:25:32', '2018-09-16 19:25:32'),
(1297, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:10:49', '2018-09-17 09:10:49', '2018-09-17 09:10:49', 'benar', 184, 62, 42, 132, '2018-09-16 19:10:49', '2018-09-16 19:10:49'),
(1298, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:10:49', '2018-09-17 09:10:49', '2018-09-17 09:10:49', 'benar', 189, 62, 42, 130, '2018-09-16 19:10:49', '2018-09-16 19:10:49'),
(1299, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:11:03', '2018-09-17 09:11:03', '2018-09-17 09:11:03', 'benar', 177, 62, 42, 132, '2018-09-17 02:11:03', '2018-09-16 19:11:03'),
(1300, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:20:23', '2018-09-17 09:20:23', '2018-09-17 09:20:23', 'benar', 183, 62, 42, 131, '2018-09-17 02:20:23', '2018-09-16 19:20:23'),
(1301, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 09:10:57', '2018-09-17 09:10:57', '2018-09-17 09:10:57', 'salah', 180, 62, 42, 131, '2018-09-16 19:10:57', '2018-09-16 19:10:57'),
(1302, 'WhileDeret-2', 'Semua salah', '2018-09-17 09:10:58', '2018-09-17 09:10:58', '2018-09-17 09:10:58', 'salah', 188, 62, 42, 130, '2018-09-16 19:10:58', '2018-09-16 19:10:58'),
(1303, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:11:04', '2018-09-17 09:11:04', '2018-09-17 09:11:04', 'benar', 193, 62, 42, 133, '2018-09-16 19:11:04', '2018-09-16 19:11:04'),
(1304, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:11:05', '2018-09-17 09:11:05', '2018-09-17 09:11:05', 'benar', 174, 62, 42, 130, '2018-09-16 19:11:05', '2018-09-16 19:11:05'),
(1305, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:11:06', '2018-09-17 09:11:06', '2018-09-17 09:11:06', 'salah', 192, 62, 42, 134, '2018-09-16 19:11:06', '2018-09-16 19:11:06'),
(1306, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:11:08', '2018-09-17 09:11:08', '2018-09-17 09:11:08', 'benar', 182, 62, 42, 131, '2018-09-16 19:11:08', '2018-09-16 19:11:08'),
(1307, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:11:09', '2018-09-17 09:11:09', '2018-09-17 09:11:09', 'benar', 171, 62, 42, 131, '2018-09-16 19:11:09', '2018-09-16 19:11:09'),
(1308, 'while-1', '-2', '2018-09-17 09:11:13', '2018-09-17 09:11:13', '2018-09-17 09:11:13', 'benar', 176, 62, 42, 128, '2018-09-16 19:11:13', '2018-09-16 19:11:13'),
(1309, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 09:11:17', '2018-09-17 09:11:17', '2018-09-17 09:11:17', 'benar', 173, 62, 42, 130, '2018-09-16 19:11:17', '2018-09-16 19:11:17'),
(1310, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 09:11:21', '2018-09-17 09:11:21', '2018-09-17 09:11:21', 'salah', 187, 62, 42, 129, '2018-09-16 19:11:21', '2018-09-16 19:11:21'),
(1311, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:11:32', '2018-09-17 09:11:32', '2018-09-17 09:11:32', 'benar', 184, 62, 42, 133, '2018-09-16 19:11:32', '2018-09-16 19:11:32'),
(1312, 'While-kondisi1', 'Semua salah', '2018-09-17 09:11:38', '2018-09-17 09:11:38', '2018-09-17 09:11:38', 'salah', 175, 62, 42, 132, '2018-09-16 19:11:38', '2018-09-16 19:11:38'),
(1313, 'while-1', '2', '2018-09-17 09:11:39', '2018-09-17 09:11:39', '2018-09-17 09:11:39', 'salah', 179, 62, 42, 128, '2018-09-16 19:11:39', '2018-09-16 19:11:39'),
(1314, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:11:39', '2018-09-17 09:11:39', '2018-09-17 09:11:39', 'benar', 180, 62, 42, 132, '2018-09-16 19:11:39', '2018-09-16 19:11:39'),
(1315, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:11:44', '2018-09-17 09:11:44', '2018-09-17 09:11:44', 'benar', 171, 62, 42, 132, '2018-09-16 19:11:44', '2018-09-16 19:11:44'),
(1316, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-17 09:11:45', '2018-09-17 09:11:45', '2018-09-17 09:11:45', 'salah', 193, 62, 42, 134, '2018-09-16 19:11:45', '2018-09-16 19:11:45'),
(1317, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 09:12:03', '2018-09-17 09:12:03', '2018-09-17 09:12:03', 'benar', 176, 62, 42, 129, '2018-09-17 02:12:03', '2018-09-16 19:12:03'),
(1318, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 09:11:54', '2018-09-17 09:11:54', '2018-09-17 09:11:54', 'salah', 181, 62, 42, 131, '2018-09-16 19:11:54', '2018-09-16 19:11:54'),
(1319, 'While-kondisi1', 'Semua salah', '2018-09-17 09:20:46', '2018-09-17 09:20:46', '2018-09-17 09:20:46', 'salah', 183, 62, 42, 132, '2018-09-17 02:20:46', '2018-09-16 19:20:46'),
(1320, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:00', '2018-09-17 09:12:00', '2018-09-17 09:12:00', 'benar', 172, 62, 42, 131, '2018-09-16 19:12:00', '2018-09-16 19:12:00'),
(1321, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:00', '2018-09-17 09:12:00', '2018-09-17 09:12:00', 'benar', 186, 62, 42, 131, '2018-09-16 19:12:00', '2018-09-16 19:12:00'),
(1322, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:00', '2018-09-17 09:12:00', '2018-09-17 09:12:00', 'benar', 170, 62, 42, 131, '2018-09-16 19:12:00', '2018-09-16 19:12:00'),
(1323, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:24:15', '2018-09-17 09:24:15', '2018-09-17 09:24:15', 'benar', 185, 62, 42, 132, '2018-09-17 02:24:15', '2018-09-16 19:24:15'),
(1324, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:12:05', '2018-09-17 09:12:05', '2018-09-17 09:12:05', 'benar', 182, 62, 42, 132, '2018-09-16 19:12:05', '2018-09-16 19:12:05'),
(1325, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:12:11', '2018-09-17 09:12:11', '2018-09-17 09:12:11', 'salah', 184, 62, 42, 134, '2018-09-16 19:12:11', '2018-09-16 19:12:11'),
(1326, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:12:12', '2018-09-17 09:12:12', '2018-09-17 09:12:12', 'benar', 177, 62, 42, 133, '2018-09-16 19:12:12', '2018-09-16 19:12:12'),
(1327, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-17 09:17:55', '2018-09-17 09:17:55', '2018-09-17 09:17:55', 'salah', 171, 62, 42, 133, '2018-09-17 02:17:55', '2018-09-16 19:17:55'),
(1328, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:19:43', '2018-09-17 09:19:43', '2018-09-17 09:19:43', 'benar', 190, 62, 42, 132, '2018-09-17 02:19:43', '2018-09-16 19:19:43'),
(1329, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:12:30', '2018-09-17 09:12:30', '2018-09-17 09:12:30', 'benar', 175, 62, 42, 133, '2018-09-16 19:12:30', '2018-09-16 19:12:30'),
(1330, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:21:02', '2018-09-17 09:21:02', '2018-09-17 09:21:02', 'benar', 183, 62, 42, 133, '2018-09-17 02:21:02', '2018-09-16 19:21:02'),
(1331, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:12:36', '2018-09-17 09:12:36', '2018-09-17 09:12:36', 'benar', 181, 62, 42, 132, '2018-09-16 19:12:36', '2018-09-16 19:12:36'),
(1332, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:37', '2018-09-17 09:12:37', '2018-09-17 09:12:37', 'benar', 169, 62, 42, 131, '2018-09-16 19:12:37', '2018-09-16 19:12:37'),
(1333, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:24:23', '2018-09-17 09:24:23', '2018-09-17 09:24:23', 'benar', 185, 62, 42, 133, '2018-09-17 02:24:23', '2018-09-16 19:24:23'),
(1334, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:40', '2018-09-17 09:12:40', '2018-09-17 09:12:40', 'benar', 174, 62, 42, 131, '2018-09-16 19:12:40', '2018-09-16 19:12:40'),
(1335, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:41', '2018-09-17 09:12:41', '2018-09-17 09:12:41', 'benar', 173, 62, 42, 131, '2018-09-16 19:12:41', '2018-09-16 19:12:41'),
(1336, 'WhileDeret-2', 'Semua salah', '2018-09-17 09:12:42', '2018-09-17 09:12:42', '2018-09-17 09:12:42', 'salah', 187, 62, 42, 130, '2018-09-16 19:12:42', '2018-09-16 19:12:42'),
(1337, 'whileDeret-3', 'Semua salah', '2018-09-17 09:12:42', '2018-09-17 09:12:42', '2018-09-17 09:12:42', 'salah', 188, 62, 42, 131, '2018-09-16 19:12:42', '2018-09-16 19:12:42'),
(1338, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-17 09:12:45', '2018-09-17 09:12:45', '2018-09-17 09:12:45', 'salah', 180, 62, 42, 133, '2018-09-16 19:12:45', '2018-09-16 19:12:45'),
(1339, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:48', '2018-09-17 09:12:48', '2018-09-17 09:12:48', 'benar', 177, 62, 42, 131, '2018-09-16 19:12:49', '2018-09-16 19:12:49'),
(1340, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:12:49', '2018-09-17 09:12:49', '2018-09-17 09:12:49', 'benar', 172, 62, 42, 132, '2018-09-16 19:12:49', '2018-09-16 19:12:49'),
(1341, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:12:51', '2018-09-17 09:12:51', '2018-09-17 09:12:51', 'benar', 189, 62, 42, 131, '2018-09-16 19:12:51', '2018-09-16 19:12:51'),
(1342, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:13:00', '2018-09-17 09:13:00', '2018-09-17 09:13:00', 'benar', 188, 62, 42, 132, '2018-09-16 19:13:00', '2018-09-16 19:13:00'),
(1343, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:13:14', '2018-09-17 09:13:14', '2018-09-17 09:13:14', 'salah', 171, 62, 42, 134, '2018-09-16 19:13:14', '2018-09-16 19:13:14'),
(1344, 'While-kondisi1', 'Semua salah', '2018-09-17 09:13:16', '2018-09-17 09:13:16', '2018-09-17 09:13:16', 'salah', 170, 62, 42, 132, '2018-09-16 19:13:16', '2018-09-16 19:13:16'),
(1345, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-17 09:13:22', '2018-09-17 09:13:22', '2018-09-17 09:13:22', 'salah', 179, 62, 42, 131, '2018-09-16 19:13:22', '2018-09-16 19:13:22'),
(1346, 'WhileDeret-2', 'Semua salah', '2018-09-17 09:13:27', '2018-09-17 09:13:27', '2018-09-17 09:13:27', 'salah', 176, 62, 42, 130, '2018-09-16 19:13:27', '2018-09-16 19:13:27'),
(1347, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:13:38', '2018-09-17 09:13:38', '2018-09-17 09:13:38', 'benar', 169, 62, 42, 132, '2018-09-16 19:13:38', '2018-09-16 19:13:38'),
(1348, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-17 09:13:39', '2018-09-17 09:13:39', '2018-09-17 09:13:39', 'salah', 182, 62, 42, 133, '2018-09-16 19:13:39', '2018-09-16 19:13:39'),
(1349, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:24:29', '2018-09-17 09:24:29', '2018-09-17 09:24:29', 'salah', 185, 62, 42, 134, '2018-09-17 02:24:29', '2018-09-16 19:24:29'),
(1350, 'While-kondisi1', 'Semua salah', '2018-09-17 09:13:45', '2018-09-17 09:13:45', '2018-09-17 09:13:45', 'salah', 186, 62, 42, 132, '2018-09-16 19:13:45', '2018-09-16 19:13:45'),
(1351, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:13:46', '2018-09-17 09:13:46', '2018-09-17 09:13:46', 'salah', 175, 62, 42, 134, '2018-09-16 19:13:46', '2018-09-16 19:13:46'),
(1352, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:13:49', '2018-09-17 09:13:49', '2018-09-17 09:13:49', 'benar', 188, 62, 42, 133, '2018-09-16 19:13:49', '2018-09-16 19:13:49'),
(1353, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:13:54', '2018-09-17 09:13:54', '2018-09-17 09:13:54', 'salah', 183, 62, 42, 134, '2018-09-16 19:13:54', '2018-09-16 19:13:54'),
(1354, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 09:14:01', '2018-09-17 09:14:01', '2018-09-17 09:14:01', 'salah', 187, 62, 42, 131, '2018-09-16 19:14:01', '2018-09-16 19:14:01'),
(1355, 'whileVal', '(x >= 0) and (x >= 100)', '2018-09-17 09:14:10', '2018-09-17 09:14:10', '2018-09-17 09:14:10', 'salah', 180, 62, 42, 134, '2018-09-16 19:14:10', '2018-09-16 19:14:10'),
(1356, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:14:15', '2018-09-17 09:14:15', '2018-09-17 09:14:15', 'benar', 169, 62, 42, 133, '2018-09-16 19:14:15', '2018-09-16 19:14:15'),
(1357, 'While-kondisi1', 'Semua salah', '2018-09-17 09:14:18', '2018-09-17 09:14:18', '2018-09-17 09:14:18', 'salah', 189, 62, 42, 132, '2018-09-16 19:14:18', '2018-09-16 19:14:18'),
(1358, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:14:26', '2018-09-17 09:14:26', '2018-09-17 09:14:26', 'benar', 173, 62, 42, 132, '2018-09-16 19:14:26', '2018-09-16 19:14:26'),
(1359, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:14:26', '2018-09-17 09:14:26', '2018-09-17 09:14:26', 'benar', 170, 62, 42, 133, '2018-09-16 19:14:26', '2018-09-16 19:14:26'),
(1360, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:14:28', '2018-09-17 09:14:28', '2018-09-17 09:14:28', 'salah', 182, 62, 42, 134, '2018-09-16 19:14:28', '2018-09-16 19:14:28'),
(1361, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:14:28', '2018-09-17 09:14:28', '2018-09-17 09:14:28', 'benar', 176, 62, 42, 131, '2018-09-16 19:14:29', '2018-09-16 19:14:29'),
(1362, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:14:31', '2018-09-17 09:14:31', '2018-09-17 09:14:31', 'benar', 174, 62, 42, 132, '2018-09-16 19:14:31', '2018-09-16 19:14:31'),
(1363, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-17 09:25:37', '2018-09-17 09:25:37', '2018-09-17 09:25:37', 'salah', 178, 62, 42, 130, '2018-09-17 02:25:37', '2018-09-16 19:25:37'),
(1364, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:15:16', '2018-09-17 09:15:16', '2018-09-17 09:15:16', 'salah', 188, 62, 42, 134, '2018-09-17 02:15:16', '2018-09-16 19:15:16'),
(1365, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-17 09:14:49', '2018-09-17 09:14:49', '2018-09-17 09:14:49', 'benar', 177, 62, 42, 134, '2018-09-16 19:14:49', '2018-09-16 19:14:49'),
(1366, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:14:49', '2018-09-17 09:14:49', '2018-09-17 09:14:49', 'benar', 181, 62, 42, 133, '2018-09-16 19:14:49', '2018-09-16 19:14:49'),
(1367, 'While-kondisi1', 'while (i >= N)', '2018-09-17 09:14:58', '2018-09-17 09:14:58', '2018-09-17 09:14:58', 'salah', 176, 62, 42, 132, '2018-09-16 19:14:58', '2018-09-16 19:14:58'),
(1368, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:21:21', '2018-09-17 09:21:21', '2018-09-17 09:21:21', 'benar', 190, 62, 42, 133, '2018-09-17 02:21:21', '2018-09-16 19:21:21'),
(1369, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:15:06', '2018-09-17 09:15:06', '2018-09-17 09:15:06', 'benar', 187, 62, 42, 132, '2018-09-16 19:15:06', '2018-09-16 19:15:06'),
(1370, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-17 09:15:17', '2018-09-17 09:15:17', '2018-09-17 09:15:17', 'salah', 172, 62, 42, 133, '2018-09-16 19:15:17', '2018-09-16 19:15:17'),
(1371, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:15:26', '2018-09-17 09:15:26', '2018-09-17 09:15:26', 'benar', 189, 62, 42, 133, '2018-09-16 19:15:26', '2018-09-16 19:15:26'),
(1372, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:15:34', '2018-09-17 09:15:34', '2018-09-17 09:15:34', 'benar', 174, 62, 42, 133, '2018-09-16 19:15:34', '2018-09-16 19:15:34'),
(1373, 'while-1', '0', '2018-09-17 09:17:22', '2018-09-17 09:17:22', '2018-09-17 09:17:22', 'salah', 190, 62, 42, 128, '2018-09-17 02:17:22', '2018-09-16 19:17:22'),
(1374, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:15:48', '2018-09-17 09:15:48', '2018-09-17 09:15:48', 'salah', 170, 62, 42, 134, '2018-09-16 19:15:48', '2018-09-16 19:15:48'),
(1375, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-17 09:16:02', '2018-09-17 09:16:02', '2018-09-17 09:16:02', 'benar', 181, 62, 42, 134, '2018-09-16 19:16:02', '2018-09-16 19:16:02'),
(1376, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:16:19', '2018-09-17 09:16:19', '2018-09-17 09:16:19', 'salah', 189, 62, 42, 134, '2018-09-16 19:16:19', '2018-09-16 19:16:19'),
(1377, 'WhileDeret-2', 'Tidak ada nilai yang dicetak, karena kondisi (i > N)  tidak pernah dipenuhi.', '2018-09-17 09:16:32', '2018-09-17 09:16:32', '2018-09-17 09:16:32', 'salah', 179, 62, 42, 130, '2018-09-16 19:16:32', '2018-09-16 19:16:32'),
(1378, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:16:34', '2018-09-17 09:16:34', '2018-09-17 09:16:34', 'benar', 186, 62, 42, 133, '2018-09-16 19:16:34', '2018-09-16 19:16:34'),
(1379, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:16:43', '2018-09-17 09:16:43', '2018-09-17 09:16:43', 'salah', 172, 62, 42, 134, '2018-09-16 19:16:43', '2018-09-16 19:16:43'),
(1380, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:16:44', '2018-09-17 09:16:44', '2018-09-17 09:16:44', 'benar', 176, 62, 42, 133, '2018-09-16 19:16:44', '2018-09-16 19:16:44'),
(1381, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:16:49', '2018-09-17 09:16:49', '2018-09-17 09:16:49', 'salah', 174, 62, 42, 134, '2018-09-16 19:16:49', '2018-09-16 19:16:49'),
(1382, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:16:53', '2018-09-17 09:16:53', '2018-09-17 09:16:53', 'benar', 178, 62, 42, 131, '2018-09-16 19:16:53', '2018-09-16 19:16:53'),
(1383, 'while-1', '-2', '2018-09-17 09:17:09', '2018-09-17 09:17:09', '2018-09-17 09:17:09', 'benar', 188, 62, 42, 128, '2018-09-16 19:17:09', '2018-09-16 19:17:09'),
(1384, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:17:10', '2018-09-17 09:17:10', '2018-09-17 09:17:10', 'salah', 176, 62, 42, 134, '2018-09-16 19:17:10', '2018-09-16 19:17:10'),
(1385, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:17:41', '2018-09-17 09:17:41', '2018-09-17 09:17:41', 'salah', 186, 62, 42, 134, '2018-09-16 19:17:41', '2018-09-16 19:17:41'),
(1386, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:17:45', '2018-09-17 09:17:45', '2018-09-17 09:17:45', 'benar', 173, 62, 42, 133, '2018-09-16 19:17:45', '2018-09-16 19:17:45'),
(1387, 'While-kondisi1', 'while (i <= N)', '2018-09-17 09:18:03', '2018-09-17 09:18:03', '2018-09-17 09:18:03', 'benar', 178, 62, 42, 132, '2018-09-16 19:18:03', '2018-09-16 19:18:03'),
(1388, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:18:12', '2018-09-17 09:18:12', '2018-09-17 09:18:12', 'benar', 179, 62, 42, 133, '2018-09-16 19:18:12', '2018-09-16 19:18:12'),
(1389, 'While-kondisi1', 'Semua salah', '2018-09-17 09:18:24', '2018-09-17 09:18:24', '2018-09-17 09:18:24', 'salah', 179, 62, 42, 132, '2018-09-16 19:18:24', '2018-09-16 19:18:24'),
(1390, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:18:34', '2018-09-17 09:18:34', '2018-09-17 09:18:34', 'salah', 173, 62, 42, 134, '2018-09-16 19:18:34', '2018-09-16 19:18:34'),
(1391, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-17 09:18:47', '2018-09-17 09:18:47', '2018-09-17 09:18:47', 'salah', 169, 62, 42, 134, '2018-09-16 19:18:47', '2018-09-16 19:18:47'),
(1392, 'while-1', '0', '2018-09-17 09:18:58', '2018-09-17 09:18:58', '2018-09-17 09:18:58', 'salah', 180, 62, 42, 128, '2018-09-16 19:18:58', '2018-09-16 19:18:58'),
(1393, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 09:19:36', '2018-09-17 09:19:36', '2018-09-17 09:19:36', 'benar', 190, 62, 42, 131, '2018-09-16 19:19:36', '2018-09-16 19:19:36'),
(1394, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-17 09:21:41', '2018-09-17 09:21:41', '2018-09-17 09:21:41', 'salah', 187, 62, 42, 133, '2018-09-17 02:21:41', '2018-09-16 19:21:41'),
(1395, 'whileVal', '(x >= 0) or (x <= 100)', '2018-09-17 09:19:58', '2018-09-17 09:19:58', '2018-09-17 09:19:58', 'salah', 179, 62, 42, 134, '2018-09-16 19:19:58', '2018-09-16 19:19:58'),
(1396, 'whileVal', '(x >= 0) and (x >= 100)', '2018-09-17 09:20:44', '2018-09-17 09:20:44', '2018-09-17 09:20:44', 'salah', 187, 62, 42, 134, '2018-09-16 19:20:44', '2018-09-16 19:20:44'),
(1397, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 09:21:17', '2018-09-17 09:21:17', '2018-09-17 09:21:17', 'benar', 178, 62, 42, 133, '2018-09-16 19:21:17', '2018-09-16 19:21:17'),
(1398, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 5,6,7,8,9,10', '2018-09-17 09:21:28', '2018-09-17 09:21:28', '2018-09-17 09:21:28', 'salah', 181, 62, 42, 130, '2018-09-16 19:21:28', '2018-09-16 19:21:28'),
(1399, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-17 09:22:36', '2018-09-17 09:22:36', '2018-09-17 09:22:36', 'benar', 190, 62, 42, 134, '2018-09-17 02:22:36', '2018-09-16 19:22:36'),
(1400, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 09:22:14', '2018-09-17 09:22:14', '2018-09-17 09:22:14', 'salah', 178, 62, 42, 134, '2018-09-16 19:22:14', '2018-09-16 19:22:14'),
(1401, 'while-1', '1', '2018-09-17 09:25:20', '2018-09-17 09:25:20', '2018-09-17 09:25:20', 'salah', 178, 62, 42, 128, '2018-09-16 19:25:20', '2018-09-16 19:25:20');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(1402, 'while-1', '-2', '2018-09-17 17:04:22', '2018-09-17 17:04:22', '2018-09-17 17:04:22', 'benar', 208, 63, 42, 128, '2018-09-17 03:04:22', '2018-09-17 03:04:22'),
(1403, 'while-1', '-2', '2018-09-17 17:05:25', '2018-09-17 17:05:25', '2018-09-17 17:05:25', 'benar', 198, 63, 42, 128, '2018-09-17 03:05:25', '2018-09-17 03:05:25'),
(1404, 'while-1', '-2', '2018-09-17 17:18:50', '2018-09-17 17:18:50', '2018-09-17 17:18:50', 'benar', 196, 63, 42, 128, '2018-09-17 10:18:50', '2018-09-17 03:18:50'),
(1405, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:05:42', '2018-09-17 17:05:42', '2018-09-17 17:05:42', 'benar', 203, 63, 42, 129, '2018-09-17 03:05:42', '2018-09-17 03:05:42'),
(1406, 'while-1', '-2', '2018-09-17 17:05:42', '2018-09-17 17:05:42', '2018-09-17 17:05:42', 'benar', 200, 63, 42, 128, '2018-09-17 03:05:42', '2018-09-17 03:05:42'),
(1407, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 17:06:17', '2018-09-17 17:06:17', '2018-09-17 17:06:17', 'salah', 196, 63, 42, 129, '2018-09-17 03:06:17', '2018-09-17 03:06:17'),
(1408, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 17:06:19', '2018-09-17 17:06:19', '2018-09-17 17:06:19', 'salah', 208, 63, 42, 129, '2018-09-17 03:06:19', '2018-09-17 03:06:19'),
(1409, 'WhileDeret-1', 'Semua salah', '2018-09-17 17:14:55', '2018-09-17 17:14:55', '2018-09-17 17:14:55', 'salah', 200, 63, 42, 129, '2018-09-17 10:14:55', '2018-09-17 03:14:55'),
(1410, 'while-1', '1', '2018-09-17 17:06:38', '2018-09-17 17:06:38', '2018-09-17 17:06:38', 'salah', 194, 63, 42, 128, '2018-09-17 03:06:38', '2018-09-17 03:06:38'),
(1411, 'while-1', '-2', '2018-09-17 17:06:50', '2018-09-17 17:06:50', '2018-09-17 17:06:50', 'benar', 195, 63, 42, 128, '2018-09-17 03:06:50', '2018-09-17 03:06:50'),
(1412, 'while-1', '-2', '2018-09-17 17:06:50', '2018-09-17 17:06:50', '2018-09-17 17:06:50', 'benar', 202, 63, 42, 128, '2018-09-17 03:06:50', '2018-09-17 03:06:50'),
(1413, 'while-1', '-2', '2018-09-17 17:06:52', '2018-09-17 17:06:52', '2018-09-17 17:06:52', 'benar', 201, 63, 42, 128, '2018-09-17 03:06:52', '2018-09-17 03:06:52'),
(1414, 'while-1', '1', '2018-09-17 17:25:35', '2018-09-17 17:25:35', '2018-09-17 17:25:35', 'salah', 206, 63, 42, 128, '2018-09-17 10:25:35', '2018-09-17 03:25:35'),
(1415, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 5,6,7,8,9,10', '2018-09-17 17:06:55', '2018-09-17 17:06:55', '2018-09-17 17:06:55', 'salah', 196, 63, 42, 130, '2018-09-17 03:06:55', '2018-09-17 03:06:55'),
(1416, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 5,6,7,8,9,10', '2018-09-17 17:06:57', '2018-09-17 17:06:57', '2018-09-17 17:06:57', 'salah', 208, 63, 42, 130, '2018-09-17 03:06:57', '2018-09-17 03:06:57'),
(1417, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:07:33', '2018-09-17 17:07:33', '2018-09-17 17:07:33', 'benar', 198, 63, 42, 129, '2018-09-17 03:07:33', '2018-09-17 03:07:33'),
(1418, 'while-1', '1', '2018-09-17 17:07:36', '2018-09-17 17:07:36', '2018-09-17 17:07:36', 'salah', 199, 63, 42, 128, '2018-09-17 03:07:36', '2018-09-17 03:07:36'),
(1419, 'while-1', '-2', '2018-09-17 17:07:37', '2018-09-17 17:07:37', '2018-09-17 17:07:37', 'benar', 207, 63, 42, 128, '2018-09-17 03:07:37', '2018-09-17 03:07:37'),
(1420, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:07:44', '2018-09-17 17:07:44', '2018-09-17 17:07:44', 'benar', 195, 63, 42, 129, '2018-09-17 03:07:44', '2018-09-17 03:07:44'),
(1421, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:07:45', '2018-09-17 17:07:45', '2018-09-17 17:07:45', 'benar', 202, 63, 42, 129, '2018-09-17 03:07:45', '2018-09-17 03:07:45'),
(1422, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:08:20', '2018-09-17 17:08:20', '2018-09-17 17:08:20', 'benar', 206, 63, 42, 129, '2018-09-17 10:08:20', '2018-09-17 03:08:20'),
(1423, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:08:02', '2018-09-17 17:08:02', '2018-09-17 17:08:02', 'benar', 194, 63, 42, 129, '2018-09-17 03:08:02', '2018-09-17 03:08:02'),
(1424, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-17 17:16:29', '2018-09-17 17:16:29', '2018-09-17 17:16:29', 'salah', 200, 63, 42, 130, '2018-09-17 10:16:29', '2018-09-17 03:16:29'),
(1425, 'WhileDeret-2', 'Semua salah', '2018-09-17 17:19:50', '2018-09-17 17:19:50', '2018-09-17 17:19:50', 'salah', 203, 63, 42, 130, '2018-09-17 10:19:50', '2018-09-17 03:19:50'),
(1426, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 17:09:16', '2018-09-17 17:09:16', '2018-09-17 17:09:16', 'salah', 201, 63, 42, 129, '2018-09-17 10:09:16', '2018-09-17 03:09:16'),
(1427, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:08:29', '2018-09-17 17:08:29', '2018-09-17 17:08:29', 'benar', 198, 63, 42, 130, '2018-09-17 03:08:29', '2018-09-17 03:08:29'),
(1428, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:08:32', '2018-09-17 17:08:32', '2018-09-17 17:08:32', 'benar', 207, 63, 42, 129, '2018-09-17 03:08:32', '2018-09-17 03:08:32'),
(1429, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:08:33', '2018-09-17 17:08:33', '2018-09-17 17:08:33', 'benar', 195, 63, 42, 130, '2018-09-17 03:08:33', '2018-09-17 03:08:33'),
(1430, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:08:33', '2018-09-17 17:08:33', '2018-09-17 17:08:33', 'benar', 202, 63, 42, 130, '2018-09-17 03:08:33', '2018-09-17 03:08:33'),
(1431, 'while-1', '-2', '2018-09-17 17:08:37', '2018-09-17 17:08:37', '2018-09-17 17:08:37', 'benar', 203, 63, 42, 128, '2018-09-17 03:08:37', '2018-09-17 03:08:37'),
(1432, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 17:08:43', '2018-09-17 17:08:43', '2018-09-17 17:08:43', 'salah', 199, 63, 42, 129, '2018-09-17 03:08:43', '2018-09-17 03:08:43'),
(1433, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:08:55', '2018-09-17 17:08:55', '2018-09-17 17:08:55', 'benar', 194, 63, 42, 130, '2018-09-17 03:08:55', '2018-09-17 03:08:55'),
(1434, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 17:08:57', '2018-09-17 17:08:57', '2018-09-17 17:08:57', 'salah', 196, 63, 42, 131, '2018-09-17 03:08:57', '2018-09-17 03:08:57'),
(1435, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:09:02', '2018-09-17 17:09:02', '2018-09-17 17:09:02', 'benar', 208, 63, 42, 131, '2018-09-17 03:09:02', '2018-09-17 03:09:02'),
(1436, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:19:11', '2018-09-17 17:19:11', '2018-09-17 17:19:11', 'benar', 203, 63, 42, 131, '2018-09-17 10:19:11', '2018-09-17 03:19:11'),
(1437, 'while-1', '-2', '2018-09-17 17:25:24', '2018-09-17 17:25:24', '2018-09-17 17:25:24', 'benar', 204, 63, 42, 128, '2018-09-17 10:25:24', '2018-09-17 03:25:24'),
(1438, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:09:24', '2018-09-17 17:09:24', '2018-09-17 17:09:24', 'benar', 207, 63, 42, 130, '2018-09-17 03:09:24', '2018-09-17 03:09:24'),
(1439, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:09:26', '2018-09-17 17:09:26', '2018-09-17 17:09:26', 'benar', 198, 63, 42, 131, '2018-09-17 03:09:26', '2018-09-17 03:09:26'),
(1440, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:09:33', '2018-09-17 17:09:33', '2018-09-17 17:09:33', 'benar', 195, 63, 42, 131, '2018-09-17 03:09:33', '2018-09-17 03:09:33'),
(1441, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:09:43', '2018-09-17 17:09:43', '2018-09-17 17:09:43', 'benar', 196, 63, 42, 132, '2018-09-17 03:09:43', '2018-09-17 03:09:43'),
(1442, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:09:46', '2018-09-17 17:09:46', '2018-09-17 17:09:46', 'benar', 202, 63, 42, 131, '2018-09-17 03:09:46', '2018-09-17 03:09:46'),
(1443, 'While-kondisi1', 'while (i >= N)', '2018-09-17 17:09:55', '2018-09-17 17:09:55', '2018-09-17 17:09:55', 'salah', 208, 63, 42, 132, '2018-09-17 03:09:55', '2018-09-17 03:09:55'),
(1444, 'While-kondisi1', 'Semua salah', '2018-09-17 17:10:05', '2018-09-17 17:10:05', '2018-09-17 17:10:05', 'salah', 198, 63, 42, 132, '2018-09-17 03:10:05', '2018-09-17 03:10:05'),
(1445, 'whileDeret-3', 'Semua salah', '2018-09-17 17:10:11', '2018-09-17 17:10:11', '2018-09-17 17:10:11', 'salah', 194, 63, 42, 131, '2018-09-17 03:10:11', '2018-09-17 03:10:11'),
(1446, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 17:17:23', '2018-09-17 17:17:23', '2018-09-17 17:17:23', 'salah', 200, 63, 42, 131, '2018-09-17 10:17:23', '2018-09-17 03:17:23'),
(1447, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:10:18', '2018-09-17 17:10:18', '2018-09-17 17:10:18', 'benar', 196, 63, 42, 133, '2018-09-17 03:10:18', '2018-09-17 03:10:18'),
(1448, 'while-1', '-2', '2018-09-17 17:10:19', '2018-09-17 17:10:19', '2018-09-17 17:10:19', 'benar', 212, 63, 42, 128, '2018-09-17 03:10:19', '2018-09-17 03:10:19'),
(1449, 'While-kondisi1', 'while (i >= N)', '2018-09-17 17:10:26', '2018-09-17 17:10:26', '2018-09-17 17:10:26', 'salah', 203, 63, 42, 132, '2018-09-17 03:10:26', '2018-09-17 03:10:26'),
(1450, 'while999', 'sum = 1 	; sum = sum + 1', '2018-09-17 17:10:31', '2018-09-17 17:10:31', '2018-09-17 17:10:31', 'salah', 208, 63, 42, 133, '2018-09-17 03:10:31', '2018-09-17 03:10:31'),
(1451, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:10:40', '2018-09-17 17:10:40', '2018-09-17 17:10:40', 'benar', 195, 63, 42, 132, '2018-09-17 03:10:40', '2018-09-17 03:10:40'),
(1452, 'While-kondisi1', 'while (i < N)', '2018-09-17 17:18:06', '2018-09-17 17:18:06', '2018-09-17 17:18:06', 'salah', 200, 63, 42, 132, '2018-09-17 10:18:06', '2018-09-17 03:18:06'),
(1453, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-17 17:10:42', '2018-09-17 17:10:42', '2018-09-17 17:10:42', 'salah', 197, 63, 42, 129, '2018-09-17 03:10:42', '2018-09-17 03:10:42'),
(1454, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:10:43', '2018-09-17 17:10:43', '2018-09-17 17:10:43', 'benar', 206, 63, 42, 130, '2018-09-17 03:10:43', '2018-09-17 03:10:43'),
(1455, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:25:31', '2018-09-17 17:25:31', '2018-09-17 17:25:31', 'benar', 204, 63, 42, 129, '2018-09-17 10:25:31', '2018-09-17 03:25:31'),
(1456, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:10:59', '2018-09-17 17:10:59', '2018-09-17 17:10:59', 'benar', 202, 63, 42, 132, '2018-09-17 03:10:59', '2018-09-17 03:10:59'),
(1457, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:11:10', '2018-09-17 17:11:10', '2018-09-17 17:11:10', 'benar', 198, 63, 42, 133, '2018-09-17 03:11:10', '2018-09-17 03:11:10'),
(1458, 'whileDeret-3', 'Semua salah', '2018-09-17 17:11:13', '2018-09-17 17:11:13', '2018-09-17 17:11:13', 'salah', 207, 63, 42, 131, '2018-09-17 03:11:13', '2018-09-17 03:11:13'),
(1459, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:11:21', '2018-09-17 17:11:21', '2018-09-17 17:11:21', 'benar', 203, 63, 42, 133, '2018-09-17 03:11:21', '2018-09-17 03:11:21'),
(1460, 'WhileDeret-2', 'Tidak ada nilai yang dicetak, karena kondisi (i > N)  tidak pernah dipenuhi.', '2018-09-17 17:11:25', '2018-09-17 17:11:25', '2018-09-17 17:11:25', 'salah', 201, 63, 42, 130, '2018-09-17 03:11:25', '2018-09-17 03:11:25'),
(1461, 'whileVal', '(x >= 0) or (x <= 100)', '2018-09-17 17:11:26', '2018-09-17 17:11:26', '2018-09-17 17:11:26', 'salah', 196, 63, 42, 134, '2018-09-17 03:11:26', '2018-09-17 03:11:26'),
(1462, 'whileVal', '(x >= 0) or (x <= 100)', '2018-09-17 17:11:30', '2018-09-17 17:11:30', '2018-09-17 17:11:30', 'salah', 208, 63, 42, 134, '2018-09-17 03:11:30', '2018-09-17 03:11:30'),
(1463, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:11:49', '2018-09-17 17:11:49', '2018-09-17 17:11:49', 'benar', 195, 63, 42, 133, '2018-09-17 03:11:49', '2018-09-17 03:11:49'),
(1464, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:11:49', '2018-09-17 17:11:49', '2018-09-17 17:11:49', 'benar', 202, 63, 42, 133, '2018-09-17 03:11:49', '2018-09-17 03:11:49'),
(1465, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:11:51', '2018-09-17 17:11:51', '2018-09-17 17:11:51', 'benar', 200, 63, 42, 133, '2018-09-17 03:11:51', '2018-09-17 03:11:51'),
(1466, 'whileDeret-3', 'Tidak ada nilai yang dicetak, karena kondisi (i < N) tidak pernah dipenuhi.', '2018-09-17 17:12:01', '2018-09-17 17:12:01', '2018-09-17 17:12:01', 'salah', 206, 63, 42, 131, '2018-09-17 03:12:01', '2018-09-17 03:12:01'),
(1467, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-17 17:20:58', '2018-09-17 17:20:58', '2018-09-17 17:20:58', 'salah', 197, 63, 42, 131, '2018-09-17 10:20:58', '2018-09-17 03:20:58'),
(1468, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:12:08', '2018-09-17 17:12:08', '2018-09-17 17:12:08', 'benar', 199, 63, 42, 131, '2018-09-17 03:12:08', '2018-09-17 03:12:08'),
(1469, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:12:15', '2018-09-17 17:12:15', '2018-09-17 17:12:15', 'benar', 207, 63, 42, 132, '2018-09-17 03:12:15', '2018-09-17 03:12:15'),
(1470, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-17 17:12:34', '2018-09-17 17:12:34', '2018-09-17 17:12:34', 'benar', 200, 63, 42, 134, '2018-09-17 03:12:34', '2018-09-17 03:12:34'),
(1471, 'WhileDeret-1', '10 9 8 7 6', '2018-09-17 17:12:35', '2018-09-17 17:12:35', '2018-09-17 17:12:35', 'benar', 212, 63, 42, 129, '2018-09-17 03:12:35', '2018-09-17 03:12:35'),
(1472, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:12:50', '2018-09-17 17:12:50', '2018-09-17 17:12:50', 'benar', 197, 63, 42, 132, '2018-09-17 03:12:50', '2018-09-17 03:12:50'),
(1473, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:12:53', '2018-09-17 17:12:53', '2018-09-17 17:12:53', 'salah', 198, 63, 42, 134, '2018-09-17 03:12:53', '2018-09-17 03:12:53'),
(1474, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:12:54', '2018-09-17 17:12:54', '2018-09-17 17:12:54', 'salah', 203, 63, 42, 134, '2018-09-17 03:12:54', '2018-09-17 03:12:54'),
(1475, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:12:57', '2018-09-17 17:12:57', '2018-09-17 17:12:57', 'benar', 206, 63, 42, 132, '2018-09-17 03:12:57', '2018-09-17 03:12:57'),
(1476, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:12:59', '2018-09-17 17:12:59', '2018-09-17 17:12:59', 'benar', 199, 63, 42, 132, '2018-09-17 03:12:59', '2018-09-17 03:12:59'),
(1477, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-17 17:13:09', '2018-09-17 17:13:09', '2018-09-17 17:13:09', 'salah', 201, 63, 42, 131, '2018-09-17 03:13:09', '2018-09-17 03:13:09'),
(1478, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:13:39', '2018-09-17 17:13:39', '2018-09-17 17:13:39', 'benar', 207, 63, 42, 133, '2018-09-17 03:13:39', '2018-09-17 03:13:39'),
(1479, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:25:39', '2018-09-17 17:25:39', '2018-09-17 17:25:39', 'benar', 204, 63, 42, 130, '2018-09-17 10:25:39', '2018-09-17 03:25:39'),
(1480, 'while999', 'sum = x 	; sum = sum + x', '2018-09-17 17:13:45', '2018-09-17 17:13:45', '2018-09-17 17:13:45', 'salah', 197, 63, 42, 133, '2018-09-17 03:13:45', '2018-09-17 03:13:45'),
(1481, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:13:50', '2018-09-17 17:13:50', '2018-09-17 17:13:50', 'benar', 201, 63, 42, 132, '2018-09-17 03:13:50', '2018-09-17 03:13:50'),
(1482, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:13:52', '2018-09-17 17:13:52', '2018-09-17 17:13:52', 'benar', 199, 63, 42, 133, '2018-09-17 03:13:52', '2018-09-17 03:13:52'),
(1483, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:13:58', '2018-09-17 17:13:58', '2018-09-17 17:13:58', 'salah', 202, 63, 42, 134, '2018-09-17 03:13:58', '2018-09-17 03:13:58'),
(1484, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:13:58', '2018-09-17 17:13:58', '2018-09-17 17:13:58', 'salah', 195, 63, 42, 134, '2018-09-17 03:13:58', '2018-09-17 03:13:58'),
(1485, 'while999', 'sum = 1 	; sum = sum + 1', '2018-09-17 17:13:59', '2018-09-17 17:13:59', '2018-09-17 17:13:59', 'salah', 206, 63, 42, 133, '2018-09-17 03:13:59', '2018-09-17 03:13:59'),
(1486, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:14:19', '2018-09-17 17:14:19', '2018-09-17 17:14:19', 'benar', 194, 63, 42, 132, '2018-09-17 03:14:19', '2018-09-17 03:14:19'),
(1487, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:14:27', '2018-09-17 17:14:27', '2018-09-17 17:14:27', 'salah', 197, 63, 42, 134, '2018-09-17 03:14:27', '2018-09-17 03:14:27'),
(1488, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:14:47', '2018-09-17 17:14:47', '2018-09-17 17:14:47', 'salah', 207, 63, 42, 134, '2018-09-17 03:14:47', '2018-09-17 03:14:47'),
(1489, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:14:52', '2018-09-17 17:14:52', '2018-09-17 17:14:52', 'benar', 201, 63, 42, 133, '2018-09-17 03:14:52', '2018-09-17 03:14:52'),
(1490, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:15:08', '2018-09-17 17:15:08', '2018-09-17 17:15:08', 'salah', 199, 63, 42, 134, '2018-09-17 03:15:08', '2018-09-17 03:15:08'),
(1491, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:15:50', '2018-09-17 17:15:50', '2018-09-17 17:15:50', 'benar', 199, 63, 42, 130, '2018-09-17 03:15:50', '2018-09-17 03:15:50'),
(1492, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:25:49', '2018-09-17 17:25:49', '2018-09-17 17:25:49', 'benar', 204, 63, 42, 131, '2018-09-17 10:25:49', '2018-09-17 03:25:49'),
(1493, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:16:02', '2018-09-17 17:16:02', '2018-09-17 17:16:02', 'salah', 201, 63, 42, 134, '2018-09-17 03:16:02', '2018-09-17 03:16:02'),
(1494, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-17 17:16:07', '2018-09-17 17:16:07', '2018-09-17 17:16:07', 'benar', 206, 63, 42, 134, '2018-09-17 03:16:07', '2018-09-17 03:16:07'),
(1495, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:17:14', '2018-09-17 17:17:14', '2018-09-17 17:17:14', 'benar', 194, 63, 42, 133, '2018-09-17 10:17:14', '2018-09-17 03:17:14'),
(1496, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-17 17:16:39', '2018-09-17 17:16:39', '2018-09-17 17:16:39', 'benar', 212, 63, 42, 130, '2018-09-17 03:16:40', '2018-09-17 03:16:40'),
(1497, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-17 17:23:07', '2018-09-17 17:23:07', '2018-09-17 17:23:07', 'salah', 197, 63, 42, 130, '2018-09-17 10:23:07', '2018-09-17 03:23:07'),
(1498, 'While-kondisi1', 'while (i <= N)', '2018-09-17 17:26:01', '2018-09-17 17:26:01', '2018-09-17 17:26:01', 'benar', 204, 63, 42, 132, '2018-09-17 10:26:01', '2018-09-17 03:26:01'),
(1499, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-17 17:18:48', '2018-09-17 17:18:48', '2018-09-17 17:18:48', 'salah', 194, 63, 42, 134, '2018-09-17 03:18:48', '2018-09-17 03:18:48'),
(1500, 'while-1', '0', '2018-09-17 17:19:33', '2018-09-17 17:19:33', '2018-09-17 17:19:33', 'salah', 197, 63, 42, 128, '2018-09-17 03:19:33', '2018-09-17 03:19:33'),
(1501, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:26:07', '2018-09-17 17:26:07', '2018-09-17 17:26:07', 'benar', 204, 63, 42, 133, '2018-09-17 10:26:07', '2018-09-17 03:26:07'),
(1502, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-17 17:21:42', '2018-09-17 17:21:42', '2018-09-17 17:21:42', 'benar', 212, 63, 42, 131, '2018-09-17 03:21:42', '2018-09-17 03:21:42'),
(1503, 'whileVal', '(x >= 0) or (x <= 100)', '2018-09-17 17:26:20', '2018-09-17 17:26:20', '2018-09-17 17:26:20', 'salah', 204, 63, 42, 134, '2018-09-17 10:26:20', '2018-09-17 03:26:20'),
(1504, 'While-kondisi1', 'while (i >= N)', '2018-09-17 17:22:45', '2018-09-17 17:22:45', '2018-09-17 17:22:45', 'salah', 212, 63, 42, 132, '2018-09-17 03:22:45', '2018-09-17 03:22:45'),
(1505, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-17 17:22:57', '2018-09-17 17:22:57', '2018-09-17 17:22:57', 'benar', 212, 63, 42, 133, '2018-09-17 03:22:57', '2018-09-17 03:22:57'),
(1506, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-17 17:23:42', '2018-09-17 17:23:42', '2018-09-17 17:23:42', 'salah', 212, 63, 42, 134, '2018-09-17 03:23:42', '2018-09-17 03:23:42'),
(1507, 'TIPE DATA-1', 'x = 2.0 ; z = 0', '2018-09-18 16:37:37', '2018-09-18 16:37:37', '2018-09-18 16:37:37', 'benar', 197, 56, 38, 103, '2018-09-18 02:37:37', '2018-09-18 02:37:37'),
(1508, 'TIPE DATA-2', 'integer, integer, boolean', '2018-09-18 16:39:28', '2018-09-18 16:39:28', '2018-09-18 16:39:28', 'salah', 197, 56, 38, 104, '2018-09-18 02:39:28', '2018-09-18 02:39:28'),
(1509, 'Program AksiT', '7 3', '2018-09-18 16:40:56', '2018-09-18 16:40:56', '2018-09-18 16:40:56', 'benar', 197, 56, 38, 106, '2018-09-18 02:40:56', '2018-09-18 02:40:56'),
(1510, 'ProgramHitung', '3  1', '2018-09-18 16:42:37', '2018-09-18 16:42:37', '2018-09-18 16:42:37', 'benar', 197, 56, 38, 107, '2018-09-18 02:42:37', '2018-09-18 02:42:37'),
(1511, 'Kondisional-1', 'True', '2018-09-18 16:43:53', '2018-09-18 16:43:53', '2018-09-18 16:43:53', 'benar', 197, 56, 38, 108, '2018-09-18 02:43:53', '2018-09-18 02:43:53'),
(1512, 'Rumus-1', 'a*(b-c)/(b+d)', '2018-09-18 16:49:12', '2018-09-18 16:49:12', '2018-09-18 16:49:12', 'benar', 197, 56, 38, 105, '2018-09-18 02:49:12', '2018-09-18 02:49:12'),
(1513, 'while-1', '1', '2018-09-19 11:46:37', '2018-09-19 11:46:37', '2018-09-19 11:46:37', 'salah', 154, 64, 42, 128, '2018-09-19 04:46:37', '2018-09-18 21:46:37'),
(1514, 'while-1', '-2', '2018-09-19 11:33:28', '2018-09-19 11:33:28', '2018-09-19 11:33:28', 'benar', 149, 64, 42, 128, '2018-09-18 21:33:28', '2018-09-18 21:33:28'),
(1515, 'while-1', '-2', '2018-09-19 11:33:29', '2018-09-19 11:33:29', '2018-09-19 11:33:29', 'benar', 152, 64, 42, 128, '2018-09-18 21:33:29', '2018-09-18 21:33:29'),
(1516, 'while-1', '-2', '2018-09-19 11:33:34', '2018-09-19 11:33:34', '2018-09-19 11:33:34', 'benar', 151, 64, 42, 128, '2018-09-18 21:33:34', '2018-09-18 21:33:34'),
(1517, 'while-1', '1', '2018-09-19 11:33:41', '2018-09-19 11:33:41', '2018-09-19 11:33:41', 'salah', 147, 64, 42, 128, '2018-09-18 21:33:41', '2018-09-18 21:33:41'),
(1518, 'WhileDeret-1', '9 8 7 6', '2018-09-19 11:47:37', '2018-09-19 11:47:37', '2018-09-19 11:47:37', 'salah', 154, 64, 42, 129, '2018-09-19 04:47:37', '2018-09-18 21:47:37'),
(1519, 'while-1', '-2', '2018-09-19 11:33:56', '2018-09-19 11:33:56', '2018-09-19 11:33:56', 'benar', 146, 64, 42, 128, '2018-09-18 21:33:56', '2018-09-18 21:33:56'),
(1520, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:33:58', '2018-09-19 11:33:58', '2018-09-19 11:33:58', 'benar', 149, 64, 42, 129, '2018-09-18 21:33:58', '2018-09-18 21:33:58'),
(1521, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:34:34', '2018-09-19 11:34:34', '2018-09-19 11:34:34', 'benar', 149, 64, 42, 130, '2018-09-18 21:34:34', '2018-09-18 21:34:34'),
(1522, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:34:36', '2018-09-19 11:34:36', '2018-09-19 11:34:36', 'benar', 147, 64, 42, 129, '2018-09-18 21:34:36', '2018-09-18 21:34:36'),
(1523, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:34:40', '2018-09-19 11:34:40', '2018-09-19 11:34:40', 'benar', 152, 64, 42, 129, '2018-09-18 21:34:40', '2018-09-18 21:34:40'),
(1524, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:34:48', '2018-09-19 11:34:48', '2018-09-19 11:34:48', 'benar', 151, 64, 42, 129, '2018-09-18 21:34:48', '2018-09-18 21:34:48'),
(1525, 'while-1', '-2', '2018-09-19 11:34:50', '2018-09-19 11:34:50', '2018-09-19 11:34:50', 'benar', 148, 64, 42, 128, '2018-09-18 21:34:50', '2018-09-18 21:34:50'),
(1526, 'while-1', '-2', '2018-09-19 11:48:53', '2018-09-19 11:48:53', '2018-09-19 11:48:53', 'benar', 145, 64, 42, 128, '2018-09-19 04:48:53', '2018-09-18 21:48:53'),
(1527, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:35:44', '2018-09-19 11:35:44', '2018-09-19 11:35:44', 'benar', 163, 64, 42, 129, '2018-09-19 04:35:44', '2018-09-18 21:35:44'),
(1528, 'while-1', '1', '2018-09-19 11:35:07', '2018-09-19 11:35:07', '2018-09-19 11:35:07', 'salah', 160, 64, 42, 128, '2018-09-18 21:35:07', '2018-09-18 21:35:07'),
(1529, 'while-1', '-2', '2018-09-19 11:35:09', '2018-09-19 11:35:09', '2018-09-19 11:35:09', 'benar', 150, 64, 42, 128, '2018-09-18 21:35:09', '2018-09-18 21:35:09'),
(1530, 'while-1', '-2', '2018-09-19 11:35:09', '2018-09-19 11:35:09', '2018-09-19 11:35:09', 'benar', 144, 64, 42, 128, '2018-09-18 21:35:09', '2018-09-18 21:35:09'),
(1531, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:35:14', '2018-09-19 11:35:14', '2018-09-19 11:35:14', 'benar', 152, 64, 42, 130, '2018-09-18 21:35:14', '2018-09-18 21:35:14'),
(1532, 'while-1', '1', '2018-09-19 11:35:20', '2018-09-19 11:35:20', '2018-09-19 11:35:20', 'salah', 157, 64, 42, 128, '2018-09-18 21:35:20', '2018-09-18 21:35:20'),
(1533, 'while-1', '-2', '2018-09-19 11:35:23', '2018-09-19 11:35:23', '2018-09-19 11:35:23', 'benar', 153, 64, 42, 128, '2018-09-18 21:35:23', '2018-09-18 21:35:23'),
(1534, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:35:29', '2018-09-19 11:35:29', '2018-09-19 11:35:29', 'benar', 146, 64, 42, 129, '2018-09-18 21:35:29', '2018-09-18 21:35:29'),
(1535, 'while-1', '-2', '2018-09-19 11:35:33', '2018-09-19 11:35:33', '2018-09-19 11:35:33', 'benar', 166, 64, 42, 128, '2018-09-18 21:35:33', '2018-09-18 21:35:33'),
(1536, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:35:35', '2018-09-19 11:35:35', '2018-09-19 11:35:35', 'benar', 165, 64, 42, 130, '2018-09-18 21:35:35', '2018-09-18 21:35:35'),
(1537, 'while-1', '0', '2018-09-19 11:35:38', '2018-09-19 11:35:38', '2018-09-19 11:35:38', 'salah', 163, 64, 42, 128, '2018-09-18 21:35:38', '2018-09-18 21:35:38'),
(1538, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:43:02', '2018-09-19 11:43:02', '2018-09-19 11:43:02', 'benar', 149, 64, 42, 131, '2018-09-19 04:43:02', '2018-09-18 21:43:02'),
(1539, 'while-1', '-2', '2018-09-19 11:35:41', '2018-09-19 11:35:41', '2018-09-19 11:35:41', 'benar', 165, 64, 42, 128, '2018-09-18 21:35:41', '2018-09-18 21:35:41'),
(1540, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-19 11:35:43', '2018-09-19 11:35:43', '2018-09-19 11:35:43', 'salah', 154, 64, 42, 130, '2018-09-18 21:35:43', '2018-09-18 21:35:43'),
(1541, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:35:43', '2018-09-19 11:35:43', '2018-09-19 11:35:43', 'benar', 147, 64, 42, 130, '2018-09-18 21:35:43', '2018-09-18 21:35:43'),
(1542, 'while-1', '1', '2018-09-19 11:35:59', '2018-09-19 11:35:59', '2018-09-19 11:35:59', 'salah', 158, 64, 42, 128, '2018-09-18 21:35:59', '2018-09-18 21:35:59'),
(1543, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:36:01', '2018-09-19 11:36:01', '2018-09-19 11:36:01', 'benar', 152, 64, 42, 131, '2018-09-18 21:36:01', '2018-09-18 21:36:01'),
(1544, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:36:05', '2018-09-19 11:36:05', '2018-09-19 11:36:05', 'benar', 151, 64, 42, 130, '2018-09-18 21:36:05', '2018-09-18 21:36:05'),
(1545, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:36:11', '2018-09-19 11:36:11', '2018-09-19 11:36:11', 'benar', 146, 64, 42, 130, '2018-09-18 21:36:11', '2018-09-18 21:36:11'),
(1546, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:36:16', '2018-09-19 11:36:16', '2018-09-19 11:36:16', 'benar', 160, 64, 42, 129, '2018-09-18 21:36:16', '2018-09-18 21:36:16'),
(1547, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-19 11:47:05', '2018-09-19 11:47:05', '2018-09-19 11:47:05', 'salah', 150, 64, 42, 129, '2018-09-19 04:47:05', '2018-09-18 21:47:05'),
(1548, 'while-1', '-2', '2018-09-19 11:36:27', '2018-09-19 11:36:27', '2018-09-19 11:36:27', 'benar', 155, 64, 42, 128, '2018-09-18 21:36:27', '2018-09-18 21:36:27'),
(1549, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-19 11:37:35', '2018-09-19 11:37:35', '2018-09-19 11:37:35', 'salah', 148, 64, 42, 129, '2018-09-19 04:37:35', '2018-09-18 21:37:35'),
(1550, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:36:33', '2018-09-19 11:36:33', '2018-09-19 11:36:33', 'benar', 157, 64, 42, 129, '2018-09-18 21:36:33', '2018-09-18 21:36:33'),
(1551, 'WhileDeret-1', '10 9 8 7 6 5', '2018-09-19 11:36:38', '2018-09-19 11:36:38', '2018-09-19 11:36:38', 'salah', 153, 64, 42, 129, '2018-09-18 21:36:38', '2018-09-18 21:36:38'),
(1552, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:36:45', '2018-09-19 11:36:45', '2018-09-19 11:36:45', 'benar', 166, 64, 42, 129, '2018-09-18 21:36:45', '2018-09-18 21:36:45'),
(1553, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:36:50', '2018-09-19 11:36:50', '2018-09-19 11:36:50', 'benar', 152, 64, 42, 132, '2018-09-18 21:36:51', '2018-09-18 21:36:51'),
(1554, 'WhileDeret-1', 'Semua salah', '2018-09-19 11:36:51', '2018-09-19 11:36:51', '2018-09-19 11:36:51', 'salah', 144, 64, 42, 129, '2018-09-18 21:36:52', '2018-09-18 21:36:52'),
(1555, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:45:17', '2018-09-19 11:45:17', '2018-09-19 11:45:17', 'benar', 149, 64, 42, 132, '2018-09-19 04:45:17', '2018-09-18 21:45:17'),
(1556, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:37:05', '2018-09-19 11:37:05', '2018-09-19 11:37:05', 'benar', 147, 64, 42, 131, '2018-09-18 21:37:05', '2018-09-18 21:37:05'),
(1557, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:37:05', '2018-09-19 11:37:05', '2018-09-19 11:37:05', 'benar', 160, 64, 42, 130, '2018-09-18 21:37:05', '2018-09-18 21:37:05'),
(1558, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:37:07', '2018-09-19 11:37:07', '2018-09-19 11:37:07', 'benar', 165, 64, 42, 131, '2018-09-18 21:37:07', '2018-09-18 21:37:07'),
(1559, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-19 11:37:08', '2018-09-19 11:37:08', '2018-09-19 11:37:08', 'salah', 163, 64, 42, 130, '2018-09-18 21:37:08', '2018-09-18 21:37:08'),
(1560, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:37:23', '2018-09-19 11:37:23', '2018-09-19 11:37:23', 'benar', 151, 64, 42, 131, '2018-09-18 21:37:23', '2018-09-18 21:37:23'),
(1561, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:37:25', '2018-09-19 11:37:25', '2018-09-19 11:37:25', 'benar', 148, 64, 42, 130, '2018-09-18 21:37:25', '2018-09-18 21:37:25'),
(1562, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:37:27', '2018-09-19 11:37:27', '2018-09-19 11:37:27', 'benar', 150, 64, 42, 130, '2018-09-18 21:37:27', '2018-09-18 21:37:27'),
(1563, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-19 11:49:48', '2018-09-19 11:49:48', '2018-09-19 11:49:48', 'salah', 154, 64, 42, 131, '2018-09-19 04:49:48', '2018-09-18 21:49:48'),
(1564, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:41:52', '2018-09-19 11:41:52', '2018-09-19 11:41:52', 'benar', 167, 64, 42, 129, '2018-09-19 04:41:52', '2018-09-18 21:41:52'),
(1565, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:37:38', '2018-09-19 11:37:38', '2018-09-19 11:37:38', 'benar', 149, 64, 42, 133, '2018-09-18 21:37:38', '2018-09-18 21:37:38'),
(1566, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-19 11:37:41', '2018-09-19 11:37:41', '2018-09-19 11:37:41', 'salah', 146, 64, 42, 131, '2018-09-18 21:37:41', '2018-09-18 21:37:41'),
(1567, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:37:53', '2018-09-19 11:37:53', '2018-09-19 11:37:53', 'benar', 166, 64, 42, 130, '2018-09-18 21:37:53', '2018-09-18 21:37:53'),
(1568, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:38:00', '2018-09-19 11:38:00', '2018-09-19 11:38:00', 'benar', 163, 64, 42, 131, '2018-09-18 21:38:00', '2018-09-18 21:38:00'),
(1569, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:38:02', '2018-09-19 11:38:02', '2018-09-19 11:38:02', 'benar', 151, 64, 42, 132, '2018-09-18 21:38:02', '2018-09-18 21:38:02'),
(1570, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:38:03', '2018-09-19 11:38:03', '2018-09-19 11:38:03', 'benar', 158, 64, 42, 129, '2018-09-18 21:38:03', '2018-09-18 21:38:03'),
(1571, 'WhileDeret-1', '9 8 7 6', '2018-09-19 11:50:50', '2018-09-19 11:50:50', '2018-09-19 11:50:50', 'salah', 145, 64, 42, 129, '2018-09-19 04:50:50', '2018-09-18 21:50:50'),
(1572, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:44:05', '2018-09-19 11:44:05', '2018-09-19 11:44:05', 'benar', 152, 64, 42, 133, '2018-09-19 04:44:05', '2018-09-18 21:44:05'),
(1573, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:38:06', '2018-09-19 11:38:06', '2018-09-19 11:38:06', 'benar', 157, 64, 42, 130, '2018-09-18 21:38:06', '2018-09-18 21:38:06'),
(1574, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:45:24', '2018-09-19 11:45:24', '2018-09-19 11:45:24', 'benar', 148, 64, 42, 131, '2018-09-19 04:45:24', '2018-09-18 21:45:24'),
(1575, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:38:17', '2018-09-19 11:38:17', '2018-09-19 11:38:17', 'benar', 147, 64, 42, 132, '2018-09-18 21:38:17', '2018-09-18 21:38:17'),
(1576, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:38:27', '2018-09-19 11:38:27', '2018-09-19 11:38:27', 'benar', 158, 64, 42, 130, '2018-09-18 21:38:27', '2018-09-18 21:38:27'),
(1577, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:38:33', '2018-09-19 11:38:33', '2018-09-19 11:38:33', 'benar', 150, 64, 42, 131, '2018-09-18 21:38:33', '2018-09-18 21:38:33'),
(1578, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:38:39', '2018-09-19 11:38:39', '2018-09-19 11:38:39', 'benar', 163, 64, 42, 132, '2018-09-18 21:38:39', '2018-09-18 21:38:39'),
(1579, 'While-kondisi1', 'while (i < N)', '2018-09-19 11:38:40', '2018-09-19 11:38:40', '2018-09-19 11:38:40', 'salah', 165, 64, 42, 132, '2018-09-18 21:38:40', '2018-09-18 21:38:40'),
(1580, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:38:50', '2018-09-19 11:38:50', '2018-09-19 11:38:50', 'benar', 144, 64, 42, 130, '2018-09-18 21:38:50', '2018-09-18 21:38:50'),
(1581, 'While-kondisi1', 'Semua salah', '2018-09-19 11:38:53', '2018-09-19 11:38:53', '2018-09-19 11:38:53', 'salah', 154, 64, 42, 132, '2018-09-18 21:38:53', '2018-09-18 21:38:53'),
(1582, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:38:54', '2018-09-19 11:38:54', '2018-09-19 11:38:54', 'benar', 148, 64, 42, 132, '2018-09-18 21:38:54', '2018-09-18 21:38:54'),
(1583, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:45:38', '2018-09-19 11:45:38', '2018-09-19 11:45:38', 'benar', 152, 64, 42, 134, '2018-09-19 04:45:38', '2018-09-18 21:45:38'),
(1584, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:39:02', '2018-09-19 11:39:02', '2018-09-19 11:39:02', 'benar', 153, 64, 42, 130, '2018-09-18 21:39:02', '2018-09-18 21:39:02'),
(1585, 'WhileDeret-1', '9 8 7 6 5', '2018-09-19 11:39:05', '2018-09-19 11:39:05', '2018-09-19 11:39:05', 'salah', 155, 64, 42, 129, '2018-09-18 21:39:05', '2018-09-18 21:39:05'),
(1586, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:39:05', '2018-09-19 11:39:05', '2018-09-19 11:39:05', 'benar', 151, 64, 42, 133, '2018-09-18 21:39:05', '2018-09-18 21:39:05'),
(1587, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:39:12', '2018-09-19 11:39:12', '2018-09-19 11:39:12', 'benar', 157, 64, 42, 131, '2018-09-18 21:39:12', '2018-09-18 21:39:12'),
(1588, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:39:13', '2018-09-19 11:39:13', '2018-09-19 11:39:13', 'benar', 149, 64, 42, 134, '2018-09-18 21:39:13', '2018-09-18 21:39:13'),
(1589, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:39:29', '2018-09-19 11:39:29', '2018-09-19 11:39:29', 'benar', 147, 64, 42, 133, '2018-09-18 21:39:29', '2018-09-18 21:39:29'),
(1590, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:39:36', '2018-09-19 11:39:36', '2018-09-19 11:39:36', 'benar', 163, 64, 42, 133, '2018-09-18 21:39:36', '2018-09-18 21:39:36'),
(1591, 'while999', 'sum = 1 	; sum = sum + x', '2018-09-19 11:39:46', '2018-09-19 11:39:46', '2018-09-19 11:39:46', 'salah', 154, 64, 42, 133, '2018-09-18 21:39:46', '2018-09-18 21:39:46'),
(1592, 'WhileDeret-1', '10 9 8 7 6', '2018-09-19 11:39:49', '2018-09-19 11:39:49', '2018-09-19 11:39:49', 'benar', 165, 64, 42, 129, '2018-09-18 21:39:49', '2018-09-18 21:39:49'),
(1593, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:39:52', '2018-09-19 11:39:52', '2018-09-19 11:39:52', 'benar', 148, 64, 42, 133, '2018-09-18 21:39:52', '2018-09-18 21:39:52'),
(1594, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:39:55', '2018-09-19 11:39:55', '2018-09-19 11:39:55', 'benar', 157, 64, 42, 132, '2018-09-18 21:39:55', '2018-09-18 21:39:55'),
(1595, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:39:56', '2018-09-19 11:39:56', '2018-09-19 11:39:56', 'benar', 166, 64, 42, 131, '2018-09-18 21:39:56', '2018-09-18 21:39:56'),
(1596, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', '2018-09-19 11:51:27', '2018-09-19 11:51:27', '2018-09-19 11:51:27', 'salah', 145, 64, 42, 130, '2018-09-19 04:51:27', '2018-09-18 21:51:27'),
(1597, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:40:20', '2018-09-19 11:40:20', '2018-09-19 11:40:20', 'salah', 151, 64, 42, 134, '2018-09-18 21:40:20', '2018-09-18 21:40:20'),
(1598, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-19 11:40:28', '2018-09-19 11:40:28', '2018-09-19 11:40:28', 'salah', 144, 64, 42, 131, '2018-09-18 21:40:28', '2018-09-18 21:40:28'),
(1599, 'whileVal', '(x >= 0) or (x <= 100)', '2018-09-19 11:40:28', '2018-09-19 11:40:28', '2018-09-19 11:40:28', 'salah', 163, 64, 42, 134, '2018-09-18 21:40:28', '2018-09-18 21:40:28'),
(1600, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:50:48', '2018-09-19 11:50:48', '2018-09-19 11:50:48', 'salah', 154, 64, 42, 134, '2018-09-19 04:50:48', '2018-09-18 21:50:48'),
(1601, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:40:33', '2018-09-19 11:40:33', '2018-09-19 11:40:33', 'benar', 160, 64, 42, 131, '2018-09-18 21:40:33', '2018-09-18 21:40:33'),
(1602, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:40:34', '2018-09-19 11:40:34', '2018-09-19 11:40:34', 'salah', 147, 64, 42, 134, '2018-09-18 21:40:34', '2018-09-18 21:40:34'),
(1603, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:40:39', '2018-09-19 11:40:39', '2018-09-19 11:40:39', 'salah', 148, 64, 42, 134, '2018-09-18 21:40:39', '2018-09-18 21:40:39'),
(1604, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:40:57', '2018-09-19 11:40:57', '2018-09-19 11:40:57', 'benar', 144, 64, 42, 132, '2018-09-18 21:40:57', '2018-09-18 21:40:57'),
(1605, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:41:10', '2018-09-19 11:41:10', '2018-09-19 11:41:10', 'benar', 146, 64, 42, 132, '2018-09-18 21:41:10', '2018-09-18 21:41:10'),
(1606, 'whileDeret-3', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', '2018-09-19 11:41:23', '2018-09-19 11:41:23', '2018-09-19 11:41:23', 'benar', 158, 64, 42, 131, '2018-09-18 21:41:23', '2018-09-18 21:41:23'),
(1607, 'While-kondisi1', 'while (i < N)', '2018-09-19 11:47:41', '2018-09-19 11:47:41', '2018-09-19 11:47:41', 'salah', 166, 64, 42, 132, '2018-09-19 04:47:41', '2018-09-18 21:47:41'),
(1608, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', '2018-09-19 11:41:31', '2018-09-19 11:41:31', '2018-09-19 11:41:31', 'salah', 153, 64, 42, 131, '2018-09-18 21:41:31', '2018-09-18 21:41:31'),
(1609, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-19 11:41:33', '2018-09-19 11:41:33', '2018-09-19 11:41:33', 'salah', 155, 64, 42, 131, '2018-09-18 21:41:33', '2018-09-18 21:41:33'),
(1610, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-19 11:51:40', '2018-09-19 11:51:40', '2018-09-19 11:51:40', 'salah', 145, 64, 42, 131, '2018-09-19 04:51:40', '2018-09-18 21:51:40'),
(1611, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:41:57', '2018-09-19 11:41:57', '2018-09-19 11:41:57', 'salah', 150, 64, 42, 134, '2018-09-18 21:41:57', '2018-09-18 21:41:57'),
(1612, 'While-kondisi1', 'while (i < N)', '2018-09-19 11:42:03', '2018-09-19 11:42:03', '2018-09-19 11:42:03', 'salah', 153, 64, 42, 132, '2018-09-18 21:42:03', '2018-09-18 21:42:03'),
(1613, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:42:13', '2018-09-19 11:42:13', '2018-09-19 11:42:13', 'benar', 166, 64, 42, 133, '2018-09-18 21:42:13', '2018-09-18 21:42:13'),
(1614, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-19 11:42:19', '2018-09-19 11:42:19', '2018-09-19 11:42:19', 'salah', 144, 64, 42, 133, '2018-09-18 21:42:19', '2018-09-18 21:42:19'),
(1615, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-19 11:42:29', '2018-09-19 11:42:29', '2018-09-19 11:42:29', 'salah', 157, 64, 42, 133, '2018-09-18 21:42:29', '2018-09-18 21:42:29'),
(1616, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:42:35', '2018-09-19 11:42:35', '2018-09-19 11:42:35', 'benar', 155, 64, 42, 132, '2018-09-18 21:42:35', '2018-09-18 21:42:35'),
(1617, 'While-kondisi1', 'while (i >= N)', '2018-09-19 11:52:01', '2018-09-19 11:52:01', '2018-09-19 11:52:01', 'salah', 145, 64, 42, 132, '2018-09-19 04:52:01', '2018-09-18 21:52:01'),
(1618, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-19 11:43:40', '2018-09-19 11:43:40', '2018-09-19 11:43:40', 'salah', 144, 64, 42, 134, '2018-09-19 04:43:40', '2018-09-18 21:43:40'),
(1619, 'while999', 'sum = 1 	; sum = sum + x', '2018-09-19 11:52:39', '2018-09-19 11:52:39', '2018-09-19 11:52:39', 'salah', 145, 64, 42, 133, '2018-09-19 04:52:39', '2018-09-18 21:52:39'),
(1620, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:43:41', '2018-09-19 11:43:41', '2018-09-19 11:43:41', 'benar', 160, 64, 42, 132, '2018-09-18 21:43:41', '2018-09-18 21:43:41'),
(1621, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-19 11:45:45', '2018-09-19 11:45:45', '2018-09-19 11:45:45', 'salah', 153, 64, 42, 133, '2018-09-19 04:45:45', '2018-09-18 21:45:45'),
(1622, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:44:03', '2018-09-19 11:44:03', '2018-09-19 11:44:03', 'benar', 155, 64, 42, 133, '2018-09-18 21:44:03', '2018-09-18 21:44:03'),
(1623, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:44:04', '2018-09-19 11:44:04', '2018-09-19 11:44:04', 'benar', 158, 64, 42, 132, '2018-09-18 21:44:04', '2018-09-18 21:44:04'),
(1624, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:44:07', '2018-09-19 11:44:07', '2018-09-19 11:44:07', 'salah', 165, 64, 42, 134, '2018-09-18 21:44:07', '2018-09-18 21:44:07'),
(1625, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:44:24', '2018-09-19 11:44:24', '2018-09-19 11:44:24', 'benar', 166, 64, 42, 134, '2018-09-18 21:44:24', '2018-09-18 21:44:24'),
(1626, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:44:32', '2018-09-19 11:44:32', '2018-09-19 11:44:32', 'benar', 150, 64, 42, 133, '2018-09-18 21:44:32', '2018-09-18 21:44:32'),
(1627, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-19 11:44:40', '2018-09-19 11:44:40', '2018-09-19 11:44:40', 'salah', 157, 64, 42, 134, '2018-09-18 21:44:40', '2018-09-18 21:44:40'),
(1628, 'whileDeret-3', 'Deretan nilai yang dicetak adalah 1,2,3,4', '2018-09-19 11:44:46', '2018-09-19 11:44:46', '2018-09-19 11:44:46', 'salah', 167, 64, 42, 131, '2018-09-18 21:44:46', '2018-09-18 21:44:46'),
(1629, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:44:50', '2018-09-19 11:44:50', '2018-09-19 11:44:50', 'benar', 155, 64, 42, 134, '2018-09-18 21:44:50', '2018-09-18 21:44:50'),
(1630, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:53:16', '2018-09-19 11:53:16', '2018-09-19 11:53:16', 'benar', 145, 64, 42, 134, '2018-09-19 04:53:16', '2018-09-18 21:53:16'),
(1631, 'whileVal', '(x <= 0) or (x >= 100)', '2018-09-19 11:45:55', '2018-09-19 11:45:55', '2018-09-19 11:45:55', 'benar', 153, 64, 42, 134, '2018-09-19 04:45:55', '2018-09-18 21:45:55'),
(1632, 'While-kondisi1', 'while (i >= N)', '2018-09-19 11:45:18', '2018-09-19 11:45:18', '2018-09-19 11:45:18', 'salah', 167, 64, 42, 132, '2018-09-18 21:45:18', '2018-09-18 21:45:18'),
(1633, 'While-kondisi1', 'while (i <= N)', '2018-09-19 11:45:25', '2018-09-19 11:45:25', '2018-09-19 11:45:25', 'benar', 150, 64, 42, 132, '2018-09-18 21:45:25', '2018-09-18 21:45:25'),
(1634, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-19 11:46:18', '2018-09-19 11:46:18', '2018-09-19 11:46:18', 'salah', 158, 64, 42, 133, '2018-09-18 21:46:18', '2018-09-18 21:46:18'),
(1635, 'whileVal', '(x >= 0) and (x <= 100)', '2018-09-19 11:46:52', '2018-09-19 11:46:52', '2018-09-19 11:46:52', 'salah', 146, 64, 42, 134, '2018-09-18 21:46:52', '2018-09-18 21:46:52'),
(1636, 'while999', 'sum = 1 	; sum = sum + x', '2018-09-19 11:47:03', '2018-09-19 11:47:03', '2018-09-19 11:47:03', 'salah', 167, 64, 42, 133, '2018-09-18 21:47:03', '2018-09-18 21:47:03'),
(1637, 'whileVal', '(x <= 0) and (x <= 100)', '2018-09-19 11:47:40', '2018-09-19 11:47:40', '2018-09-19 11:47:40', 'salah', 158, 64, 42, 134, '2018-09-18 21:47:40', '2018-09-18 21:47:40'),
(1638, 'while999', 'sum = x 	; sum = sum + x', '2018-09-19 11:48:03', '2018-09-19 11:48:03', '2018-09-19 11:48:03', 'salah', 146, 64, 42, 133, '2018-09-18 21:48:03', '2018-09-18 21:48:03'),
(1639, 'while999', 'sum = 0 	; sum = sum + x', '2018-09-19 11:48:43', '2018-09-19 11:48:43', '2018-09-19 11:48:43', 'benar', 165, 64, 42, 133, '2018-09-18 21:48:43', '2018-09-18 21:48:43'),
(1640, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:49:41', '2018-09-19 11:49:41', '2018-09-19 11:49:41', 'benar', 155, 64, 42, 130, '2018-09-18 21:49:41', '2018-09-18 21:49:41'),
(1641, 'WhileDeret-2', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', '2018-09-19 11:50:08', '2018-09-19 11:50:08', '2018-09-19 11:50:08', 'benar', 167, 64, 42, 130, '2018-09-18 21:50:08', '2018-09-18 21:50:08'),
(1642, 'while-1', '0', '2018-09-19 11:51:26', '2018-09-19 11:51:26', '2018-09-19 11:51:26', 'salah', 167, 64, 42, 128, '2018-09-18 21:51:26', '2018-09-18 21:51:26'),
(1643, 'while999', 'sum = 0 	; sum = sum + 1', '2018-09-19 11:51:28', '2018-09-19 11:51:28', '2018-09-19 11:51:28', 'salah', 160, 64, 42, 133, '2018-09-18 21:51:28', '2018-09-18 21:51:28'),
(1644, 'whileVal', '(x >= 0) and (x >= 100)', '2018-09-19 11:51:36', '2018-09-19 11:51:36', '2018-09-19 11:51:36', 'salah', 160, 64, 42, 134, '2018-09-18 21:51:36', '2018-09-18 21:51:36'),
(1645, 'TIPE DATA-3', 'float, integer, boolean', '2018-09-19 16:39:57', '2018-09-19 16:39:57', '2018-09-19 16:39:57', 'benar', 189, 61, 39, 109, '2018-09-19 02:39:57', '2018-09-19 02:39:57'),
(1646, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '2018-09-19 16:41:04', '2018-09-19 16:41:04', '2018-09-19 16:41:04', 'salah', 189, 61, 39, 110, '2018-09-19 02:41:04', '2018-09-19 02:41:04'),
(1647, 'RumusPG-2', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '2018-09-19 16:41:16', '2018-09-19 16:41:16', '2018-09-19 16:41:16', 'benar', 190, 61, 39, 110, '2018-09-19 02:41:16', '2018-09-19 02:41:16'),
(1648, 'TIPE DATA-3', 'integer, float, boolean', '2018-09-19 16:48:17', '2018-09-19 16:48:17', '2018-09-19 16:48:17', 'salah', 190, 61, 39, 109, '2018-09-19 09:48:17', '2018-09-19 02:48:17'),
(1649, 'ProgramAksiM', '7 3 5', '2018-09-19 16:44:16', '2018-09-19 16:44:16', '2018-09-19 16:44:16', 'benar', 189, 61, 39, 111, '2018-09-19 09:44:16', '2018-09-19 02:44:16'),
(1650, 'ProgramAksiM', '3 5 7', '2018-09-19 16:43:47', '2018-09-19 16:43:47', '2018-09-19 16:43:47', 'salah', 190, 61, 39, 111, '2018-09-19 02:43:47', '2018-09-19 02:43:47'),
(1651, 'ProgramHitungL', 'SS = Bil % 100; pl = SS % 10', '2018-09-19 16:44:02', '2018-09-19 16:44:02', '2018-09-19 16:44:02', 'salah', 190, 61, 39, 112, '2018-09-19 02:44:02', '2018-09-19 02:44:02'),
(1652, 'ProgramHitungL', 'SS = SS % 100; pl = SS // 10', '2018-09-19 16:46:36', '2018-09-19 16:46:36', '2018-09-19 16:46:36', 'benar', 189, 61, 39, 112, '2018-09-19 02:46:36', '2018-09-19 02:46:36'),
(1653, 'UrutanRumus', 'Rumus-1 dengan rumus-2', '2018-09-19 16:46:46', '2018-09-19 16:46:46', '2018-09-19 16:46:46', 'benar', 189, 61, 39, 113, '2018-09-19 02:46:46', '2018-09-19 02:46:46'),
(1654, 'If-Nested-2', '9', '2018-09-20 12:34:07', '2018-09-20 12:34:07', '2018-09-20 12:34:07', 'benar', 183, 65, 41, 121, '2018-09-19 22:34:07', '2018-09-19 22:34:07');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(1655, 'If-Nested-2', '9', '2018-09-20 12:35:51', '2018-09-20 12:35:51', '2018-09-20 12:35:51', 'benar', 207, 65, 41, 121, '2018-09-19 22:35:51', '2018-09-19 22:35:51'),
(1656, 'If-Nested-3', '3  2', '2018-09-20 12:38:27', '2018-09-20 12:38:27', '2018-09-20 12:38:27', 'benar', 207, 65, 41, 122, '2018-09-19 22:38:27', '2018-09-19 22:38:27'),
(1657, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:39:18', '2018-09-20 12:39:18', '2018-09-20 12:39:18', 'benar', 183, 65, 41, 123, '2018-09-19 22:39:18', '2018-09-19 22:39:18'),
(1658, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:39:48', '2018-09-20 12:39:48', '2018-09-20 12:39:48', 'benar', 207, 65, 41, 123, '2018-09-19 22:39:48', '2018-09-19 22:39:48'),
(1659, 'If-nested-error', '4 dan 7', '2018-09-20 12:39:51', '2018-09-20 12:39:51', '2018-09-20 12:39:51', 'benar', 183, 65, 41, 124, '2018-09-19 22:39:51', '2018-09-19 22:39:51'),
(1660, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 12:40:27', '2018-09-20 12:40:27', '2018-09-20 12:40:27', 'benar', 183, 65, 41, 125, '2018-09-19 22:40:27', '2018-09-19 22:40:27'),
(1661, 'If-nested-error', '4 dan 7', '2018-09-20 12:40:49', '2018-09-20 12:40:49', '2018-09-20 12:40:49', 'benar', 207, 65, 41, 124, '2018-09-19 22:40:49', '2018-09-19 22:40:49'),
(1662, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:41:03', '2018-09-20 12:41:03', '2018-09-20 12:41:03', 'benar', 183, 65, 41, 126, '2018-09-19 22:41:03', '2018-09-19 22:41:03'),
(1663, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 12:42:15', '2018-09-20 12:42:15', '2018-09-20 12:42:15', 'benar', 207, 65, 41, 125, '2018-09-19 22:42:15', '2018-09-19 22:42:15'),
(1664, 'If-max3', 'x3 > x2', '2018-09-20 12:42:45', '2018-09-20 12:42:45', '2018-09-20 12:42:45', 'salah', 183, 65, 41, 127, '2018-09-19 22:42:45', '2018-09-19 22:42:45'),
(1665, 'If-Nested-2', '9', '2018-09-20 12:43:06', '2018-09-20 12:43:06', '2018-09-20 12:43:06', 'benar', 198, 65, 41, 121, '2018-09-19 22:43:06', '2018-09-19 22:43:06'),
(1666, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:43:19', '2018-09-20 12:43:19', '2018-09-20 12:43:19', 'benar', 207, 65, 41, 126, '2018-09-19 22:43:19', '2018-09-19 22:43:19'),
(1667, 'If-Nested-3', '3  2', '2018-09-20 12:44:07', '2018-09-20 12:44:07', '2018-09-20 12:44:07', 'benar', 198, 65, 41, 122, '2018-09-19 22:44:07', '2018-09-19 22:44:07'),
(1668, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:44:22', '2018-09-20 12:44:22', '2018-09-20 12:44:22', 'benar', 198, 65, 41, 123, '2018-09-19 22:44:22', '2018-09-19 22:44:22'),
(1669, 'If-nested-error', '4 dan 7', '2018-09-20 12:44:44', '2018-09-20 12:44:44', '2018-09-20 12:44:44', 'benar', 198, 65, 41, 124, '2018-09-19 22:44:44', '2018-09-19 22:44:44'),
(1670, 'If-Nested-2', '9', '2018-09-20 12:44:45', '2018-09-20 12:44:45', '2018-09-20 12:44:45', 'benar', 185, 65, 41, 121, '2018-09-19 22:44:45', '2018-09-19 22:44:45'),
(1671, 'If-Nested-3', '3  2', '2018-09-20 12:44:52', '2018-09-20 12:44:52', '2018-09-20 12:44:52', 'benar', 183, 65, 41, 122, '2018-09-19 22:44:52', '2018-09-19 22:44:52'),
(1672, 'If-max3', 'm < x3', '2018-09-20 12:44:54', '2018-09-20 12:44:54', '2018-09-20 12:44:54', 'benar', 207, 65, 41, 127, '2018-09-19 22:44:54', '2018-09-19 22:44:54'),
(1673, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 12:45:30', '2018-09-20 12:45:30', '2018-09-20 12:45:30', 'benar', 198, 65, 41, 125, '2018-09-19 22:45:30', '2018-09-19 22:45:30'),
(1674, 'If-Nested-2', '9', '2018-09-20 12:46:07', '2018-09-20 12:46:07', '2018-09-20 12:46:07', 'benar', 169, 65, 41, 121, '2018-09-19 22:46:07', '2018-09-19 22:46:07'),
(1675, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:46:21', '2018-09-20 12:46:21', '2018-09-20 12:46:21', 'benar', 198, 65, 41, 126, '2018-09-19 22:46:21', '2018-09-19 22:46:21'),
(1676, 'If-Nested-2', '9', '2018-09-20 12:46:28', '2018-09-20 12:46:28', '2018-09-20 12:46:28', 'benar', 163, 65, 41, 121, '2018-09-19 22:46:28', '2018-09-19 22:46:28'),
(1677, 'If-Nested-3', '3  2', '2018-09-20 12:46:34', '2018-09-20 12:46:34', '2018-09-20 12:46:34', 'benar', 169, 65, 41, 122, '2018-09-19 22:46:34', '2018-09-19 22:46:34'),
(1678, 'If-Nested-3', '3  2', '2018-09-20 12:46:46', '2018-09-20 12:46:46', '2018-09-20 12:46:46', 'benar', 185, 65, 41, 122, '2018-09-19 22:46:46', '2018-09-19 22:46:46'),
(1679, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:46:47', '2018-09-20 12:46:47', '2018-09-20 12:46:47', 'benar', 169, 65, 41, 123, '2018-09-19 22:46:47', '2018-09-19 22:46:47'),
(1680, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:47:09', '2018-09-20 12:47:09', '2018-09-20 12:47:09', 'benar', 185, 65, 41, 123, '2018-09-19 22:47:09', '2018-09-19 22:47:09'),
(1681, 'If-nested-error', '4 dan 6', '2018-09-20 12:47:25', '2018-09-20 12:47:25', '2018-09-20 12:47:25', 'salah', 169, 65, 41, 124, '2018-09-19 22:47:25', '2018-09-19 22:47:25'),
(1682, 'If-max3', 'm < x3', '2018-09-20 12:47:31', '2018-09-20 12:47:31', '2018-09-20 12:47:31', 'benar', 198, 65, 41, 127, '2018-09-19 22:47:31', '2018-09-19 22:47:31'),
(1683, 'If-Nested-3', '3  2', '2018-09-20 12:48:58', '2018-09-20 12:48:58', '2018-09-20 12:48:58', 'benar', 163, 65, 41, 122, '2018-09-19 22:48:58', '2018-09-19 22:48:58'),
(1684, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:49:20', '2018-09-20 12:49:20', '2018-09-20 12:49:20', 'benar', 163, 65, 41, 123, '2018-09-19 22:49:20', '2018-09-19 22:49:20'),
(1685, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 12:49:47', '2018-09-20 12:49:47', '2018-09-20 12:49:47', 'benar', 185, 65, 41, 125, '2018-09-20 05:49:47', '2018-09-19 22:49:47'),
(1686, 'If-Nested-2', '12', '2018-09-20 12:59:51', '2018-09-20 12:59:51', '2018-09-20 12:59:51', 'salah', 200, 65, 41, 121, '2018-09-20 05:59:51', '2018-09-19 22:59:51'),
(1687, 'If-kondisi-3', 'if (x <= 10) and (x >= 45):', '2018-09-20 12:50:16', '2018-09-20 12:50:16', '2018-09-20 12:50:16', 'salah', 169, 65, 41, 125, '2018-09-19 22:50:16', '2018-09-19 22:50:16'),
(1688, 'If-nested-error', '2 dan 7', '2018-09-20 12:50:38', '2018-09-20 12:50:38', '2018-09-20 12:50:38', 'salah', 163, 65, 41, 124, '2018-09-19 22:50:38', '2018-09-19 22:50:38'),
(1689, 'If-Nested-2', '9', '2018-09-20 12:50:38', '2018-09-20 12:50:38', '2018-09-20 12:50:38', 'benar', 195, 65, 41, 121, '2018-09-19 22:50:38', '2018-09-19 22:50:38'),
(1690, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:50:49', '2018-09-20 12:50:49', '2018-09-20 12:50:49', 'benar', 185, 65, 41, 126, '2018-09-19 22:50:49', '2018-09-19 22:50:49'),
(1691, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:50:51', '2018-09-20 12:50:51', '2018-09-20 12:50:51', 'benar', 169, 65, 41, 126, '2018-09-19 22:50:51', '2018-09-19 22:50:51'),
(1692, 'If-Nested-2', '9', '2018-09-20 12:51:28', '2018-09-20 12:51:28', '2018-09-20 12:51:28', 'benar', 172, 65, 41, 121, '2018-09-19 22:51:28', '2018-09-19 22:51:28'),
(1693, 'If-kondisi-3', 'if (x <= 10) or (x >= 45):', '2018-09-20 12:51:31', '2018-09-20 12:51:31', '2018-09-20 12:51:31', 'salah', 163, 65, 41, 125, '2018-09-19 22:51:31', '2018-09-19 22:51:31'),
(1694, 'If-Nested-3', '5  1', '2018-09-20 12:51:50', '2018-09-20 12:51:50', '2018-09-20 12:51:50', 'salah', 200, 65, 41, 122, '2018-09-19 22:51:50', '2018-09-19 22:51:50'),
(1695, 'If-Nested-3', '3  2', '2018-09-20 12:51:56', '2018-09-20 12:51:56', '2018-09-20 12:51:56', 'benar', 172, 65, 41, 122, '2018-09-19 22:51:56', '2018-09-19 22:51:56'),
(1696, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:52:09', '2018-09-20 12:52:09', '2018-09-20 12:52:09', 'benar', 172, 65, 41, 123, '2018-09-19 22:52:09', '2018-09-19 22:52:09'),
(1697, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:52:15', '2018-09-20 12:52:15', '2018-09-20 12:52:15', 'benar', 163, 65, 41, 126, '2018-09-19 22:52:15', '2018-09-19 22:52:15'),
(1698, 'If-max3', 'm < x3', '2018-09-20 12:52:30', '2018-09-20 12:52:30', '2018-09-20 12:52:30', 'benar', 169, 65, 41, 127, '2018-09-19 22:52:30', '2018-09-19 22:52:30'),
(1699, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:52:43', '2018-09-20 12:52:43', '2018-09-20 12:52:43', 'benar', 200, 65, 41, 123, '2018-09-19 22:52:43', '2018-09-19 22:52:43'),
(1700, 'If-max3', 'm < x3', '2018-09-20 12:52:50', '2018-09-20 12:52:50', '2018-09-20 12:52:50', 'benar', 185, 65, 41, 127, '2018-09-19 22:52:50', '2018-09-19 22:52:50'),
(1701, 'If-max3', 'x3 > x2', '2018-09-20 12:53:09', '2018-09-20 12:53:09', '2018-09-20 12:53:09', 'salah', 163, 65, 41, 127, '2018-09-19 22:53:09', '2018-09-19 22:53:09'),
(1702, 'If-nested-error', '4 dan 7', '2018-09-20 12:53:17', '2018-09-20 12:53:17', '2018-09-20 12:53:17', 'benar', 172, 65, 41, 124, '2018-09-19 22:53:17', '2018-09-19 22:53:17'),
(1703, 'If-nested-error', '4 dan 7', '2018-09-20 12:54:05', '2018-09-20 12:54:05', '2018-09-20 12:54:05', 'benar', 200, 65, 41, 124, '2018-09-19 22:54:05', '2018-09-19 22:54:05'),
(1704, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 12:54:13', '2018-09-20 12:54:13', '2018-09-20 12:54:13', 'salah', 172, 65, 41, 125, '2018-09-19 22:54:13', '2018-09-19 22:54:13'),
(1705, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 12:54:35', '2018-09-20 12:54:35', '2018-09-20 12:54:35', 'benar', 200, 65, 41, 125, '2018-09-19 22:54:35', '2018-09-19 22:54:35'),
(1706, 'If-Nested-3', '3  2', '2018-09-20 12:55:08', '2018-09-20 12:55:08', '2018-09-20 12:55:08', 'benar', 195, 65, 41, 122, '2018-09-19 22:55:08', '2018-09-19 22:55:08'),
(1707, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:55:08', '2018-09-20 12:55:08', '2018-09-20 12:55:08', 'benar', 200, 65, 41, 126, '2018-09-19 22:55:09', '2018-09-19 22:55:09'),
(1708, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 12:55:19', '2018-09-20 12:55:19', '2018-09-20 12:55:19', 'benar', 195, 65, 41, 123, '2018-09-19 22:55:19', '2018-09-19 22:55:19'),
(1709, 'If-max3', 'x1 < x3', '2018-09-20 12:56:03', '2018-09-20 12:56:03', '2018-09-20 12:56:03', 'salah', 200, 65, 41, 127, '2018-09-19 22:56:03', '2018-09-19 22:56:03'),
(1710, 'If-nested-error', '4 dan 7', '2018-09-20 12:56:34', '2018-09-20 12:56:34', '2018-09-20 12:56:34', 'benar', 185, 65, 41, 124, '2018-09-19 22:56:34', '2018-09-19 22:56:34'),
(1711, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:56:45', '2018-09-20 12:56:45', '2018-09-20 12:56:45', 'benar', 172, 65, 41, 126, '2018-09-19 22:56:45', '2018-09-19 22:56:45'),
(1712, 'If-max3', 'x1 < x3', '2018-09-20 12:58:09', '2018-09-20 12:58:09', '2018-09-20 12:58:09', 'salah', 172, 65, 41, 127, '2018-09-19 22:58:09', '2018-09-19 22:58:09'),
(1713, 'If-Nested-2', '9', '2018-09-20 14:54:48', '2018-09-20 14:54:48', '2018-09-20 14:54:48', 'benar', 206, 65, 41, 121, '2018-09-20 07:54:48', '2018-09-20 00:54:48'),
(1714, 'If-nested-error', '4 dan 7', '2018-09-20 12:58:36', '2018-09-20 12:58:36', '2018-09-20 12:58:36', 'benar', 195, 65, 41, 124, '2018-09-19 22:58:36', '2018-09-19 22:58:36'),
(1715, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 12:59:18', '2018-09-20 12:59:18', '2018-09-20 12:59:18', 'salah', 195, 65, 41, 125, '2018-09-19 22:59:18', '2018-09-19 22:59:18'),
(1716, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 12:59:45', '2018-09-20 12:59:45', '2018-09-20 12:59:45', 'benar', 195, 65, 41, 126, '2018-09-19 22:59:45', '2018-09-19 22:59:45'),
(1717, 'If-Nested-3', '3  2', '2018-09-20 14:54:52', '2018-09-20 14:54:52', '2018-09-20 14:54:52', 'benar', 206, 65, 41, 122, '2018-09-20 07:54:52', '2018-09-20 00:54:52'),
(1718, 'If-Nested-2', '9', '2018-09-20 13:00:35', '2018-09-20 13:00:35', '2018-09-20 13:00:35', 'benar', 182, 65, 41, 121, '2018-09-19 23:00:35', '2018-09-19 23:00:35'),
(1719, 'If-Nested-3', '3  2', '2018-09-20 13:00:42', '2018-09-20 13:00:42', '2018-09-20 13:00:42', 'benar', 182, 65, 41, 122, '2018-09-19 23:00:42', '2018-09-19 23:00:42'),
(1720, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:54:57', '2018-09-20 14:54:57', '2018-09-20 14:54:57', 'benar', 206, 65, 41, 123, '2018-09-20 07:54:57', '2018-09-20 00:54:57'),
(1721, 'If-nested-error', '4 dan 7', '2018-09-20 14:55:00', '2018-09-20 14:55:00', '2018-09-20 14:55:00', 'benar', 206, 65, 41, 124, '2018-09-20 07:55:00', '2018-09-20 00:55:00'),
(1722, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:00:53', '2018-09-20 13:00:53', '2018-09-20 13:00:53', 'benar', 182, 65, 41, 123, '2018-09-19 23:00:53', '2018-09-19 23:00:53'),
(1723, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:55:05', '2018-09-20 14:55:05', '2018-09-20 14:55:05', 'benar', 206, 65, 41, 125, '2018-09-20 07:55:05', '2018-09-20 00:55:05'),
(1724, 'If-nested-error', '4 dan 7', '2018-09-20 13:01:07', '2018-09-20 13:01:07', '2018-09-20 13:01:07', 'benar', 182, 65, 41, 124, '2018-09-19 23:01:07', '2018-09-19 23:01:07'),
(1725, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:55:08', '2018-09-20 14:55:08', '2018-09-20 14:55:08', 'benar', 206, 65, 41, 126, '2018-09-20 07:55:08', '2018-09-20 00:55:08'),
(1726, 'If-max3', 'm < x3', '2018-09-20 14:55:19', '2018-09-20 14:55:19', '2018-09-20 14:55:19', 'benar', 206, 65, 41, 127, '2018-09-20 07:55:19', '2018-09-20 00:55:19'),
(1727, 'If-max3', 'm > x3', '2018-09-20 13:01:32', '2018-09-20 13:01:32', '2018-09-20 13:01:32', 'salah', 195, 65, 41, 127, '2018-09-19 23:01:32', '2018-09-19 23:01:32'),
(1728, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 13:01:47', '2018-09-20 13:01:47', '2018-09-20 13:01:47', 'salah', 182, 65, 41, 125, '2018-09-19 23:01:47', '2018-09-19 23:01:47'),
(1729, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:01:55', '2018-09-20 13:01:55', '2018-09-20 13:01:55', 'benar', 182, 65, 41, 126, '2018-09-19 23:01:55', '2018-09-19 23:01:55'),
(1730, 'If-Nested-2', '9', '2018-09-20 13:02:39', '2018-09-20 13:02:39', '2018-09-20 13:02:39', 'benar', 197, 65, 41, 121, '2018-09-19 23:02:39', '2018-09-19 23:02:39'),
(1731, 'If-Nested-3', '3  2', '2018-09-20 13:02:43', '2018-09-20 13:02:43', '2018-09-20 13:02:43', 'benar', 197, 65, 41, 122, '2018-09-19 23:02:43', '2018-09-19 23:02:43'),
(1732, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:02:52', '2018-09-20 13:02:52', '2018-09-20 13:02:52', 'benar', 197, 65, 41, 123, '2018-09-19 23:02:53', '2018-09-19 23:02:53'),
(1733, 'If-nested-error', '4 dan 7', '2018-09-20 13:02:57', '2018-09-20 13:02:57', '2018-09-20 13:02:57', 'benar', 197, 65, 41, 124, '2018-09-19 23:02:57', '2018-09-19 23:02:57'),
(1734, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:03:12', '2018-09-20 13:03:12', '2018-09-20 13:03:12', 'benar', 197, 65, 41, 125, '2018-09-19 23:03:12', '2018-09-19 23:03:12'),
(1735, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:03:18', '2018-09-20 13:03:18', '2018-09-20 13:03:18', 'benar', 197, 65, 41, 126, '2018-09-19 23:03:18', '2018-09-19 23:03:18'),
(1736, 'If-max3', 'm < x3', '2018-09-20 13:03:22', '2018-09-20 13:03:22', '2018-09-20 13:03:22', 'benar', 197, 65, 41, 127, '2018-09-19 23:03:22', '2018-09-19 23:03:22'),
(1737, 'If-max3', 'x3 > x1', '2018-09-20 13:03:54', '2018-09-20 13:03:54', '2018-09-20 13:03:54', 'salah', 182, 65, 41, 127, '2018-09-19 23:03:54', '2018-09-19 23:03:54'),
(1738, 'If-Nested-2', '9', '2018-09-20 13:05:16', '2018-09-20 13:05:16', '2018-09-20 13:05:16', 'benar', 181, 65, 41, 121, '2018-09-19 23:05:16', '2018-09-19 23:05:16'),
(1739, 'If-Nested-3', '3  2', '2018-09-20 13:05:21', '2018-09-20 13:05:21', '2018-09-20 13:05:21', 'benar', 181, 65, 41, 122, '2018-09-19 23:05:21', '2018-09-19 23:05:21'),
(1740, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:05:26', '2018-09-20 13:05:26', '2018-09-20 13:05:26', 'benar', 181, 65, 41, 123, '2018-09-19 23:05:26', '2018-09-19 23:05:26'),
(1741, 'If-nested-error', '4 dan 7', '2018-09-20 13:05:30', '2018-09-20 13:05:30', '2018-09-20 13:05:30', 'benar', 181, 65, 41, 124, '2018-09-19 23:05:30', '2018-09-19 23:05:30'),
(1742, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:05:35', '2018-09-20 13:05:35', '2018-09-20 13:05:35', 'benar', 181, 65, 41, 125, '2018-09-19 23:05:35', '2018-09-19 23:05:35'),
(1743, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:05:43', '2018-09-20 13:05:43', '2018-09-20 13:05:43', 'benar', 181, 65, 41, 126, '2018-09-19 23:05:43', '2018-09-19 23:05:43'),
(1744, 'If-max3', 'm < x3', '2018-09-20 13:05:49', '2018-09-20 13:05:49', '2018-09-20 13:05:49', 'benar', 181, 65, 41, 127, '2018-09-19 23:05:49', '2018-09-19 23:05:49'),
(1745, 'If-Nested-2', '9', '2018-09-20 13:08:55', '2018-09-20 13:08:55', '2018-09-20 13:08:55', 'benar', 188, 65, 41, 121, '2018-09-19 23:08:55', '2018-09-19 23:08:55'),
(1746, 'If-Nested-2', '8', '2018-09-20 16:19:26', '2018-09-20 16:19:26', '2018-09-20 16:19:26', 'salah', 201, 65, 41, 121, '2018-09-20 09:19:26', '2018-09-20 02:19:26'),
(1747, 'If-Nested-3', '3  2', '2018-09-20 13:10:39', '2018-09-20 13:10:39', '2018-09-20 13:10:39', 'benar', 188, 65, 41, 122, '2018-09-19 23:10:39', '2018-09-19 23:10:39'),
(1748, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:10:52', '2018-09-20 13:10:52', '2018-09-20 13:10:52', 'benar', 188, 65, 41, 123, '2018-09-19 23:10:52', '2018-09-19 23:10:52'),
(1749, 'If-Nested-3', '3  2', '2018-09-20 16:33:23', '2018-09-20 16:33:23', '2018-09-20 16:33:23', 'benar', 201, 65, 41, 122, '2018-09-20 09:33:23', '2018-09-20 02:33:23'),
(1750, 'If-nested-error', '2 dan 7', '2018-09-20 13:12:30', '2018-09-20 13:12:30', '2018-09-20 13:12:30', 'salah', 188, 65, 41, 124, '2018-09-19 23:12:30', '2018-09-19 23:12:30'),
(1751, 'If-kondisi-2', 'if(x % 2 == 0):', '2018-09-20 16:33:45', '2018-09-20 16:33:45', '2018-09-20 16:33:45', 'salah', 201, 65, 41, 123, '2018-09-20 09:33:45', '2018-09-20 02:33:45'),
(1752, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:13:36', '2018-09-20 13:13:36', '2018-09-20 13:13:36', 'benar', 188, 65, 41, 125, '2018-09-19 23:13:36', '2018-09-19 23:13:36'),
(1753, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:14:31', '2018-09-20 13:14:31', '2018-09-20 13:14:31', 'benar', 188, 65, 41, 126, '2018-09-19 23:14:31', '2018-09-19 23:14:31'),
(1754, 'If-nested-error', '4 dan 7', '2018-09-20 16:35:05', '2018-09-20 16:35:05', '2018-09-20 16:35:05', 'benar', 201, 65, 41, 124, '2018-09-20 09:35:05', '2018-09-20 02:35:05'),
(1755, 'If-Nested-2', '9', '2018-09-20 13:15:14', '2018-09-20 13:15:14', '2018-09-20 13:15:14', 'benar', 194, 65, 41, 121, '2018-09-19 23:15:14', '2018-09-19 23:15:14'),
(1756, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 16:35:54', '2018-09-20 16:35:54', '2018-09-20 16:35:54', 'benar', 201, 65, 41, 125, '2018-09-20 09:35:54', '2018-09-20 02:35:54'),
(1757, 'If-Nested-3', '3  2', '2018-09-20 13:16:16', '2018-09-20 13:16:16', '2018-09-20 13:16:16', 'benar', 194, 65, 41, 122, '2018-09-19 23:16:16', '2018-09-19 23:16:16'),
(1758, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:16:29', '2018-09-20 13:16:29', '2018-09-20 13:16:29', 'benar', 194, 65, 41, 123, '2018-09-19 23:16:29', '2018-09-19 23:16:29'),
(1759, 'If-kondisi-4', 'if (A%3==0) or (A%5!=0):', '2018-09-20 16:37:59', '2018-09-20 16:37:59', '2018-09-20 16:37:59', 'salah', 201, 65, 41, 126, '2018-09-20 09:37:59', '2018-09-20 02:37:59'),
(1760, 'If-max3', 'x1 < x3', '2018-09-20 16:38:47', '2018-09-20 16:38:47', '2018-09-20 16:38:47', 'salah', 201, 65, 41, 127, '2018-09-20 09:38:47', '2018-09-20 02:38:47'),
(1761, 'If-max3', 'm < x3', '2018-09-20 13:18:38', '2018-09-20 13:18:38', '2018-09-20 13:18:38', 'benar', 188, 65, 41, 127, '2018-09-20 06:18:38', '2018-09-19 23:18:38'),
(1762, 'If-nested-error', '4 dan 7', '2018-09-20 13:18:38', '2018-09-20 13:18:38', '2018-09-20 13:18:38', 'benar', 194, 65, 41, 124, '2018-09-19 23:18:38', '2018-09-19 23:18:38'),
(1763, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:19:27', '2018-09-20 13:19:27', '2018-09-20 13:19:27', 'benar', 194, 65, 41, 125, '2018-09-19 23:19:27', '2018-09-19 23:19:27'),
(1764, 'If-Nested-2', '9', '2018-09-20 13:20:02', '2018-09-20 13:20:02', '2018-09-20 13:20:02', 'benar', 166, 65, 41, 121, '2018-09-19 23:20:02', '2018-09-19 23:20:02'),
(1765, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:20:09', '2018-09-20 13:20:09', '2018-09-20 13:20:09', 'benar', 194, 65, 41, 126, '2018-09-19 23:20:09', '2018-09-19 23:20:09'),
(1766, 'If-max3', 'm < x3', '2018-09-20 13:22:28', '2018-09-20 13:22:28', '2018-09-20 13:22:28', 'benar', 194, 65, 41, 127, '2018-09-19 23:22:28', '2018-09-19 23:22:28'),
(1767, 'If-Nested-3', '3  2', '2018-09-20 13:22:35', '2018-09-20 13:22:35', '2018-09-20 13:22:35', 'benar', 166, 65, 41, 122, '2018-09-19 23:22:35', '2018-09-19 23:22:35'),
(1768, 'If-Nested-2', '9', '2018-09-20 13:22:39', '2018-09-20 13:22:39', '2018-09-20 13:22:39', 'benar', 171, 65, 41, 121, '2018-09-19 23:22:39', '2018-09-19 23:22:39'),
(1769, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:23:40', '2018-09-20 13:23:40', '2018-09-20 13:23:40', 'benar', 166, 65, 41, 123, '2018-09-19 23:23:40', '2018-09-19 23:23:40'),
(1770, 'If-Nested-3', '3  2', '2018-09-20 13:24:20', '2018-09-20 13:24:20', '2018-09-20 13:24:20', 'benar', 171, 65, 41, 122, '2018-09-19 23:24:20', '2018-09-19 23:24:20'),
(1771, 'If-kondisi-2', 'if(x // 2 == 0):', '2018-09-20 13:25:00', '2018-09-20 13:25:00', '2018-09-20 13:25:00', 'salah', 171, 65, 41, 123, '2018-09-19 23:25:00', '2018-09-19 23:25:00'),
(1772, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:25:43', '2018-09-20 13:25:43', '2018-09-20 13:25:43', 'benar', 166, 65, 41, 125, '2018-09-19 23:25:43', '2018-09-19 23:25:43'),
(1773, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:26:45', '2018-09-20 13:26:45', '2018-09-20 13:26:45', 'benar', 166, 65, 41, 126, '2018-09-19 23:26:45', '2018-09-19 23:26:45'),
(1774, 'If-nested-error', '4 dan 7', '2018-09-20 13:27:22', '2018-09-20 13:27:22', '2018-09-20 13:27:22', 'benar', 171, 65, 41, 124, '2018-09-19 23:27:22', '2018-09-19 23:27:22'),
(1775, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:27:38', '2018-09-20 13:27:38', '2018-09-20 13:27:38', 'benar', 171, 65, 41, 125, '2018-09-19 23:27:38', '2018-09-19 23:27:38'),
(1776, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:28:25', '2018-09-20 13:28:25', '2018-09-20 13:28:25', 'benar', 171, 65, 41, 126, '2018-09-19 23:28:25', '2018-09-19 23:28:25'),
(1777, 'If-max3', 'x3 > x1', '2018-09-20 13:28:33', '2018-09-20 13:28:33', '2018-09-20 13:28:33', 'salah', 166, 65, 41, 127, '2018-09-19 23:28:33', '2018-09-19 23:28:33'),
(1778, 'If-Nested-2', '9', '2018-09-20 13:29:29', '2018-09-20 13:29:29', '2018-09-20 13:29:29', 'benar', 173, 65, 41, 121, '2018-09-19 23:29:29', '2018-09-19 23:29:29'),
(1779, 'If-max3', 'x3 > x2', '2018-09-20 13:29:34', '2018-09-20 13:29:34', '2018-09-20 13:29:34', 'salah', 171, 65, 41, 127, '2018-09-19 23:29:34', '2018-09-19 23:29:34'),
(1780, 'If-Nested-3', '3  2', '2018-09-20 13:32:20', '2018-09-20 13:32:20', '2018-09-20 13:32:20', 'benar', 173, 65, 41, 122, '2018-09-19 23:32:20', '2018-09-19 23:32:20'),
(1781, 'If-nested-error', '4 dan 7', '2018-09-20 13:33:09', '2018-09-20 13:33:09', '2018-09-20 13:33:09', 'benar', 166, 65, 41, 124, '2018-09-19 23:33:09', '2018-09-19 23:33:09'),
(1782, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:33:18', '2018-09-20 13:33:18', '2018-09-20 13:33:18', 'benar', 173, 65, 41, 123, '2018-09-19 23:33:18', '2018-09-19 23:33:18'),
(1783, 'If-nested-error', '4 dan 6', '2018-09-20 13:34:26', '2018-09-20 13:34:26', '2018-09-20 13:34:26', 'salah', 173, 65, 41, 124, '2018-09-19 23:34:26', '2018-09-19 23:34:26'),
(1784, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:35:18', '2018-09-20 13:35:18', '2018-09-20 13:35:18', 'benar', 173, 65, 41, 125, '2018-09-19 23:35:18', '2018-09-19 23:35:18'),
(1785, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:36:39', '2018-09-20 13:36:39', '2018-09-20 13:36:39', 'benar', 173, 65, 41, 126, '2018-09-19 23:36:39', '2018-09-19 23:36:39'),
(1786, 'If-max3', 'm < x3', '2018-09-20 13:38:29', '2018-09-20 13:38:29', '2018-09-20 13:38:29', 'benar', 173, 65, 41, 127, '2018-09-20 06:38:29', '2018-09-19 23:38:29'),
(1787, 'If-Nested-2', '9', '2018-09-20 13:59:22', '2018-09-20 13:59:22', '2018-09-20 13:59:22', 'benar', 190, 65, 41, 121, '2018-09-19 23:59:22', '2018-09-19 23:59:22'),
(1788, 'If-Nested-3', '3  2', '2018-09-20 13:59:29', '2018-09-20 13:59:29', '2018-09-20 13:59:29', 'benar', 190, 65, 41, 122, '2018-09-19 23:59:29', '2018-09-19 23:59:29'),
(1789, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 13:59:34', '2018-09-20 13:59:34', '2018-09-20 13:59:34', 'benar', 190, 65, 41, 123, '2018-09-19 23:59:34', '2018-09-19 23:59:34'),
(1790, 'If-nested-error', '4 dan 7', '2018-09-20 13:59:38', '2018-09-20 13:59:38', '2018-09-20 13:59:38', 'benar', 190, 65, 41, 124, '2018-09-19 23:59:38', '2018-09-19 23:59:38'),
(1791, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 13:59:52', '2018-09-20 13:59:52', '2018-09-20 13:59:52', 'benar', 190, 65, 41, 125, '2018-09-19 23:59:52', '2018-09-19 23:59:52'),
(1792, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 13:59:57', '2018-09-20 13:59:57', '2018-09-20 13:59:57', 'benar', 190, 65, 41, 126, '2018-09-19 23:59:57', '2018-09-19 23:59:57'),
(1793, 'If-max3', 'm < x3', '2018-09-20 14:00:01', '2018-09-20 14:00:01', '2018-09-20 14:00:01', 'benar', 190, 65, 41, 127, '2018-09-20 00:00:01', '2018-09-20 00:00:01'),
(1794, 'If-Nested-2', '9', '2018-09-20 14:01:01', '2018-09-20 14:01:01', '2018-09-20 14:01:01', 'benar', 189, 65, 41, 121, '2018-09-20 00:01:01', '2018-09-20 00:01:01'),
(1795, 'If-Nested-3', '3  2', '2018-09-20 14:01:05', '2018-09-20 14:01:05', '2018-09-20 14:01:05', 'benar', 189, 65, 41, 122, '2018-09-20 00:01:06', '2018-09-20 00:01:06'),
(1796, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:01:09', '2018-09-20 14:01:09', '2018-09-20 14:01:09', 'benar', 189, 65, 41, 123, '2018-09-20 00:01:10', '2018-09-20 00:01:10'),
(1797, 'If-nested-error', '4 dan 7', '2018-09-20 14:01:13', '2018-09-20 14:01:13', '2018-09-20 14:01:13', 'benar', 189, 65, 41, 124, '2018-09-20 00:01:13', '2018-09-20 00:01:13'),
(1798, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:01:19', '2018-09-20 14:01:19', '2018-09-20 14:01:19', 'benar', 189, 65, 41, 125, '2018-09-20 00:01:19', '2018-09-20 00:01:19'),
(1799, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:01:22', '2018-09-20 14:01:22', '2018-09-20 14:01:22', 'benar', 189, 65, 41, 126, '2018-09-20 00:01:22', '2018-09-20 00:01:22'),
(1800, 'If-max3', 'm < x3', '2018-09-20 14:01:26', '2018-09-20 14:01:26', '2018-09-20 14:01:26', 'benar', 189, 65, 41, 127, '2018-09-20 00:01:26', '2018-09-20 00:01:26'),
(1801, 'If-Nested-2', '9', '2018-09-20 14:02:18', '2018-09-20 14:02:18', '2018-09-20 14:02:18', 'benar', 186, 65, 41, 121, '2018-09-20 00:02:18', '2018-09-20 00:02:18'),
(1802, 'If-Nested-3', '3  2', '2018-09-20 14:02:25', '2018-09-20 14:02:25', '2018-09-20 14:02:25', 'benar', 186, 65, 41, 122, '2018-09-20 00:02:25', '2018-09-20 00:02:25'),
(1803, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:02:30', '2018-09-20 14:02:30', '2018-09-20 14:02:30', 'benar', 186, 65, 41, 123, '2018-09-20 00:02:30', '2018-09-20 00:02:30'),
(1804, 'If-nested-error', '4 dan 7', '2018-09-20 14:02:34', '2018-09-20 14:02:34', '2018-09-20 14:02:34', 'benar', 186, 65, 41, 124, '2018-09-20 00:02:34', '2018-09-20 00:02:34'),
(1805, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:02:37', '2018-09-20 14:02:37', '2018-09-20 14:02:37', 'benar', 186, 65, 41, 125, '2018-09-20 00:02:37', '2018-09-20 00:02:37'),
(1806, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:02:41', '2018-09-20 14:02:41', '2018-09-20 14:02:41', 'benar', 186, 65, 41, 126, '2018-09-20 00:02:41', '2018-09-20 00:02:41'),
(1807, 'If-max3', 'm < x3', '2018-09-20 14:02:53', '2018-09-20 14:02:53', '2018-09-20 14:02:53', 'benar', 186, 65, 41, 127, '2018-09-20 00:02:53', '2018-09-20 00:02:53'),
(1808, 'If-Nested-2', '9', '2018-09-20 14:04:28', '2018-09-20 14:04:28', '2018-09-20 14:04:28', 'benar', 204, 65, 41, 121, '2018-09-20 00:04:28', '2018-09-20 00:04:28'),
(1809, 'If-Nested-3', '3  2', '2018-09-20 14:05:31', '2018-09-20 14:05:31', '2018-09-20 14:05:31', 'benar', 204, 65, 41, 122, '2018-09-20 00:05:31', '2018-09-20 00:05:31'),
(1810, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:05:38', '2018-09-20 14:05:38', '2018-09-20 14:05:38', 'benar', 204, 65, 41, 123, '2018-09-20 00:05:38', '2018-09-20 00:05:38'),
(1811, 'If-nested-error', '4 dan 7', '2018-09-20 14:06:16', '2018-09-20 14:06:16', '2018-09-20 14:06:16', 'benar', 204, 65, 41, 124, '2018-09-20 00:06:16', '2018-09-20 00:06:16'),
(1812, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:06:29', '2018-09-20 14:06:29', '2018-09-20 14:06:29', 'benar', 204, 65, 41, 125, '2018-09-20 00:06:29', '2018-09-20 00:06:29'),
(1813, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:06:42', '2018-09-20 14:06:42', '2018-09-20 14:06:42', 'benar', 204, 65, 41, 126, '2018-09-20 00:06:42', '2018-09-20 00:06:42'),
(1814, 'If-max3', 'm < x3', '2018-09-20 14:07:38', '2018-09-20 14:07:38', '2018-09-20 14:07:38', 'benar', 204, 65, 41, 127, '2018-09-20 00:07:38', '2018-09-20 00:07:38'),
(1815, 'If-Nested-2', '9', '2018-09-20 14:08:10', '2018-09-20 14:08:10', '2018-09-20 14:08:10', 'benar', 170, 65, 41, 121, '2018-09-20 00:08:10', '2018-09-20 00:08:10'),
(1816, 'If-Nested-3', '3  2', '2018-09-20 14:09:53', '2018-09-20 14:09:53', '2018-09-20 14:09:53', 'benar', 170, 65, 41, 122, '2018-09-20 00:09:53', '2018-09-20 00:09:53'),
(1817, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:11:56', '2018-09-20 14:11:56', '2018-09-20 14:11:56', 'benar', 170, 65, 41, 123, '2018-09-20 00:11:57', '2018-09-20 00:11:57'),
(1818, 'If-nested-error', '4 dan 7', '2018-09-20 14:13:38', '2018-09-20 14:13:38', '2018-09-20 14:13:38', 'benar', 170, 65, 41, 124, '2018-09-20 00:13:38', '2018-09-20 00:13:38'),
(1819, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 14:14:40', '2018-09-20 14:14:40', '2018-09-20 14:14:40', 'salah', 170, 65, 41, 125, '2018-09-20 00:14:40', '2018-09-20 00:14:40'),
(1820, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:16:37', '2018-09-20 14:16:37', '2018-09-20 14:16:37', 'benar', 170, 65, 41, 126, '2018-09-20 00:16:37', '2018-09-20 00:16:37'),
(1821, 'If-max3', 'm < x3', '2018-09-20 14:18:24', '2018-09-20 14:18:24', '2018-09-20 14:18:24', 'benar', 170, 65, 41, 127, '2018-09-20 00:18:24', '2018-09-20 00:18:24'),
(1822, 'If-Nested-2', '9', '2018-09-20 14:46:25', '2018-09-20 14:46:25', '2018-09-20 14:46:25', 'benar', 160, 65, 41, 121, '2018-09-20 07:46:25', '2018-09-20 00:46:25'),
(1823, 'If-Nested-3', '3  2', '2018-09-20 14:46:29', '2018-09-20 14:46:29', '2018-09-20 14:46:29', 'benar', 160, 65, 41, 122, '2018-09-20 07:46:29', '2018-09-20 00:46:29'),
(1824, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:46:34', '2018-09-20 14:46:34', '2018-09-20 14:46:34', 'benar', 160, 65, 41, 123, '2018-09-20 07:46:34', '2018-09-20 00:46:34'),
(1825, 'If-nested-error', '4 dan 7', '2018-09-20 14:46:38', '2018-09-20 14:46:38', '2018-09-20 14:46:38', 'benar', 160, 65, 41, 124, '2018-09-20 00:46:38', '2018-09-20 00:46:38'),
(1826, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:46:41', '2018-09-20 14:46:41', '2018-09-20 14:46:41', 'benar', 160, 65, 41, 125, '2018-09-20 00:46:41', '2018-09-20 00:46:41'),
(1827, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:46:45', '2018-09-20 14:46:45', '2018-09-20 14:46:45', 'benar', 160, 65, 41, 126, '2018-09-20 00:46:45', '2018-09-20 00:46:45'),
(1828, 'If-max3', 'm < x3', '2018-09-20 14:46:50', '2018-09-20 14:46:50', '2018-09-20 14:46:50', 'benar', 160, 65, 41, 127, '2018-09-20 00:46:50', '2018-09-20 00:46:50'),
(1829, 'If-Nested-2', '9', '2018-09-20 14:52:33', '2018-09-20 14:52:33', '2018-09-20 14:52:33', 'benar', 165, 65, 41, 121, '2018-09-20 07:52:33', '2018-09-20 00:52:33'),
(1830, 'If-Nested-3', '3  2', '2018-09-20 14:52:38', '2018-09-20 14:52:38', '2018-09-20 14:52:38', 'benar', 165, 65, 41, 122, '2018-09-20 07:52:38', '2018-09-20 00:52:38'),
(1831, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 14:52:41', '2018-09-20 14:52:41', '2018-09-20 14:52:41', 'benar', 165, 65, 41, 123, '2018-09-20 07:52:41', '2018-09-20 00:52:41'),
(1832, 'If-nested-error', '4 dan 7', '2018-09-20 14:52:46', '2018-09-20 14:52:46', '2018-09-20 14:52:46', 'benar', 165, 65, 41, 124, '2018-09-20 07:52:46', '2018-09-20 00:52:46'),
(1833, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 14:52:50', '2018-09-20 14:52:50', '2018-09-20 14:52:50', 'benar', 165, 65, 41, 125, '2018-09-20 07:52:50', '2018-09-20 00:52:50'),
(1834, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 14:52:54', '2018-09-20 14:52:54', '2018-09-20 14:52:54', 'benar', 165, 65, 41, 126, '2018-09-20 07:52:54', '2018-09-20 00:52:54'),
(1835, 'If-max3', 'm < x3', '2018-09-20 14:52:58', '2018-09-20 14:52:58', '2018-09-20 14:52:58', 'benar', 165, 65, 41, 127, '2018-09-20 07:52:58', '2018-09-20 00:52:58'),
(1836, 'If-Nested-2', '9', '2018-09-20 15:10:45', '2018-09-20 15:10:45', '2018-09-20 15:10:45', 'benar', 202, 65, 41, 121, '2018-09-20 01:10:45', '2018-09-20 01:10:45'),
(1837, 'If-Nested-3', '3  2', '2018-09-20 15:10:49', '2018-09-20 15:10:49', '2018-09-20 15:10:49', 'benar', 202, 65, 41, 122, '2018-09-20 01:10:49', '2018-09-20 01:10:49'),
(1838, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:10:53', '2018-09-20 15:10:53', '2018-09-20 15:10:53', 'benar', 202, 65, 41, 123, '2018-09-20 01:10:53', '2018-09-20 01:10:53'),
(1839, 'If-nested-error', '4 dan 7', '2018-09-20 15:10:57', '2018-09-20 15:10:57', '2018-09-20 15:10:57', 'benar', 202, 65, 41, 124, '2018-09-20 01:10:57', '2018-09-20 01:10:57'),
(1840, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:11:00', '2018-09-20 15:11:00', '2018-09-20 15:11:00', 'benar', 202, 65, 41, 125, '2018-09-20 01:11:00', '2018-09-20 01:11:00'),
(1841, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:11:04', '2018-09-20 15:11:04', '2018-09-20 15:11:04', 'benar', 202, 65, 41, 126, '2018-09-20 01:11:04', '2018-09-20 01:11:04'),
(1842, 'If-max3', 'm < x3', '2018-09-20 15:11:10', '2018-09-20 15:11:10', '2018-09-20 15:11:10', 'benar', 202, 65, 41, 127, '2018-09-20 01:11:10', '2018-09-20 01:11:10'),
(1843, 'If-Nested-2', '9', '2018-09-20 15:26:41', '2018-09-20 15:26:41', '2018-09-20 15:26:41', 'benar', 212, 65, 41, 121, '2018-09-20 01:26:41', '2018-09-20 01:26:41'),
(1844, 'If-Nested-3', '3  2', '2018-09-20 15:27:31', '2018-09-20 15:27:31', '2018-09-20 15:27:31', 'benar', 212, 65, 41, 122, '2018-09-20 01:27:31', '2018-09-20 01:27:31'),
(1845, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:28:13', '2018-09-20 15:28:13', '2018-09-20 15:28:13', 'benar', 212, 65, 41, 123, '2018-09-20 01:28:13', '2018-09-20 01:28:13'),
(1846, 'If-nested-error', '4 dan 7', '2018-09-20 15:30:49', '2018-09-20 15:30:49', '2018-09-20 15:30:49', 'benar', 212, 65, 41, 124, '2018-09-20 01:30:49', '2018-09-20 01:30:49'),
(1847, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:32:05', '2018-09-20 15:32:05', '2018-09-20 15:32:05', 'benar', 212, 65, 41, 125, '2018-09-20 01:32:05', '2018-09-20 01:32:05'),
(1848, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:33:38', '2018-09-20 15:33:38', '2018-09-20 15:33:38', 'benar', 212, 65, 41, 126, '2018-09-20 01:33:38', '2018-09-20 01:33:38'),
(1849, 'If-max3', 'm < x3', '2018-09-20 15:34:25', '2018-09-20 15:34:25', '2018-09-20 15:34:25', 'benar', 212, 65, 41, 127, '2018-09-20 01:34:25', '2018-09-20 01:34:25'),
(1850, 'If-Nested-2', '9', '2018-09-20 15:42:31', '2018-09-20 15:42:31', '2018-09-20 15:42:31', 'benar', 180, 65, 41, 121, '2018-09-20 01:42:31', '2018-09-20 01:42:31'),
(1851, 'If-Nested-2', '9', '2018-09-20 15:42:38', '2018-09-20 15:42:38', '2018-09-20 15:42:38', 'benar', 184, 65, 41, 121, '2018-09-20 01:42:38', '2018-09-20 01:42:38'),
(1852, 'If-Nested-3', '3  2', '2018-09-20 15:42:41', '2018-09-20 15:42:41', '2018-09-20 15:42:41', 'benar', 180, 65, 41, 122, '2018-09-20 01:42:41', '2018-09-20 01:42:41'),
(1853, 'If-Nested-3', '3  2', '2018-09-20 15:42:43', '2018-09-20 15:42:43', '2018-09-20 15:42:43', 'benar', 184, 65, 41, 122, '2018-09-20 01:42:43', '2018-09-20 01:42:43'),
(1854, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:42:55', '2018-09-20 15:42:55', '2018-09-20 15:42:55', 'benar', 184, 65, 41, 123, '2018-09-20 01:42:55', '2018-09-20 01:42:55'),
(1855, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:42:56', '2018-09-20 15:42:56', '2018-09-20 15:42:56', 'benar', 180, 65, 41, 123, '2018-09-20 01:42:56', '2018-09-20 01:42:56'),
(1856, 'If-nested-error', '4 dan 7', '2018-09-20 15:43:01', '2018-09-20 15:43:01', '2018-09-20 15:43:01', 'benar', 184, 65, 41, 124, '2018-09-20 01:43:01', '2018-09-20 01:43:01'),
(1857, 'If-nested-error', '4 dan 7', '2018-09-20 15:43:04', '2018-09-20 15:43:04', '2018-09-20 15:43:04', 'benar', 180, 65, 41, 124, '2018-09-20 01:43:04', '2018-09-20 01:43:04'),
(1858, 'If-Nested-2', '9', '2018-09-20 15:43:08', '2018-09-20 15:43:08', '2018-09-20 15:43:08', 'benar', 175, 65, 41, 121, '2018-09-20 01:43:08', '2018-09-20 01:43:08'),
(1859, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:43:17', '2018-09-20 15:43:17', '2018-09-20 15:43:17', 'benar', 184, 65, 41, 125, '2018-09-20 01:43:17', '2018-09-20 01:43:17'),
(1860, 'If-Nested-2', '9', '2018-09-20 15:43:19', '2018-09-20 15:43:19', '2018-09-20 15:43:19', 'benar', 179, 65, 41, 121, '2018-09-20 01:43:19', '2018-09-20 01:43:19'),
(1861, 'If-Nested-3', '3  2', '2018-09-20 15:43:23', '2018-09-20 15:43:23', '2018-09-20 15:43:23', 'benar', 175, 65, 41, 122, '2018-09-20 01:43:23', '2018-09-20 01:43:23'),
(1862, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:43:25', '2018-09-20 15:43:25', '2018-09-20 15:43:25', 'benar', 180, 65, 41, 125, '2018-09-20 01:43:25', '2018-09-20 01:43:25'),
(1863, 'If-Nested-3', '3  2', '2018-09-20 15:43:25', '2018-09-20 15:43:25', '2018-09-20 15:43:25', 'benar', 179, 65, 41, 122, '2018-09-20 01:43:25', '2018-09-20 01:43:25'),
(1864, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:43:28', '2018-09-20 15:43:28', '2018-09-20 15:43:28', 'benar', 184, 65, 41, 126, '2018-09-20 01:43:28', '2018-09-20 01:43:28'),
(1865, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:43:33', '2018-09-20 15:43:33', '2018-09-20 15:43:33', 'benar', 175, 65, 41, 123, '2018-09-20 01:43:33', '2018-09-20 01:43:33'),
(1866, 'If-max3', 'm < x3', '2018-09-20 15:43:36', '2018-09-20 15:43:36', '2018-09-20 15:43:36', 'benar', 184, 65, 41, 127, '2018-09-20 01:43:36', '2018-09-20 01:43:36'),
(1867, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:43:37', '2018-09-20 15:43:37', '2018-09-20 15:43:37', 'benar', 179, 65, 41, 123, '2018-09-20 01:43:37', '2018-09-20 01:43:37'),
(1868, 'If-nested-error', '4 dan 7', '2018-09-20 15:43:39', '2018-09-20 15:43:39', '2018-09-20 15:43:39', 'benar', 175, 65, 41, 124, '2018-09-20 01:43:39', '2018-09-20 01:43:39'),
(1869, 'If-nested-error', '4 dan 7', '2018-09-20 15:43:45', '2018-09-20 15:43:45', '2018-09-20 15:43:45', 'benar', 179, 65, 41, 124, '2018-09-20 01:43:45', '2018-09-20 01:43:45'),
(1870, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:43:59', '2018-09-20 15:43:59', '2018-09-20 15:43:59', 'benar', 175, 65, 41, 125, '2018-09-20 01:43:59', '2018-09-20 01:43:59'),
(1871, 'If-Nested-2', '9', '2018-09-20 15:44:08', '2018-09-20 15:44:08', '2018-09-20 15:44:08', 'benar', 174, 65, 41, 121, '2018-09-20 01:44:08', '2018-09-20 01:44:08'),
(1872, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:44:13', '2018-09-20 15:44:13', '2018-09-20 15:44:13', 'benar', 175, 65, 41, 126, '2018-09-20 01:44:13', '2018-09-20 01:44:13'),
(1873, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:44:13', '2018-09-20 15:44:13', '2018-09-20 15:44:13', 'benar', 179, 65, 41, 125, '2018-09-20 01:44:13', '2018-09-20 01:44:13'),
(1874, 'If-max3', 'm < x3', '2018-09-20 15:44:23', '2018-09-20 15:44:23', '2018-09-20 15:44:23', 'benar', 175, 65, 41, 127, '2018-09-20 01:44:23', '2018-09-20 01:44:23'),
(1875, 'If-Nested-2', '9', '2018-09-20 15:46:57', '2018-09-20 15:46:57', '2018-09-20 15:46:57', 'benar', 196, 65, 41, 121, '2018-09-20 08:46:57', '2018-09-20 01:46:57'),
(1876, 'If-Nested-3', '3  2', '2018-09-20 15:45:31', '2018-09-20 15:45:31', '2018-09-20 15:45:31', 'benar', 174, 65, 41, 122, '2018-09-20 01:45:32', '2018-09-20 01:45:32'),
(1877, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:45:33', '2018-09-20 15:45:33', '2018-09-20 15:45:33', 'benar', 179, 65, 41, 126, '2018-09-20 01:45:33', '2018-09-20 01:45:33'),
(1878, 'If-max3', 'm < x3', '2018-09-20 15:45:49', '2018-09-20 15:45:49', '2018-09-20 15:45:49', 'benar', 179, 65, 41, 127, '2018-09-20 01:45:49', '2018-09-20 01:45:49'),
(1879, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:46:10', '2018-09-20 15:46:10', '2018-09-20 15:46:10', 'benar', 174, 65, 41, 123, '2018-09-20 01:46:10', '2018-09-20 01:46:10'),
(1880, 'If-nested-error', '4 dan 7', '2018-09-20 15:46:16', '2018-09-20 15:46:16', '2018-09-20 15:46:16', 'benar', 174, 65, 41, 124, '2018-09-20 01:46:16', '2018-09-20 01:46:16'),
(1881, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:46:33', '2018-09-20 15:46:33', '2018-09-20 15:46:33', 'benar', 174, 65, 41, 125, '2018-09-20 01:46:33', '2018-09-20 01:46:33'),
(1882, 'If-Nested-2', '9', '2018-09-20 15:46:46', '2018-09-20 15:46:46', '2018-09-20 15:46:46', 'benar', 203, 65, 41, 121, '2018-09-20 01:46:46', '2018-09-20 01:46:46'),
(1883, 'If-Nested-3', '3  2', '2018-09-20 15:46:50', '2018-09-20 15:46:50', '2018-09-20 15:46:50', 'benar', 203, 65, 41, 122, '2018-09-20 01:46:50', '2018-09-20 01:46:50'),
(1884, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:46:54', '2018-09-20 15:46:54', '2018-09-20 15:46:54', 'benar', 203, 65, 41, 123, '2018-09-20 01:46:54', '2018-09-20 01:46:54'),
(1885, 'If-nested-error', '4 dan 7', '2018-09-20 15:46:57', '2018-09-20 15:46:57', '2018-09-20 15:46:57', 'benar', 203, 65, 41, 124, '2018-09-20 01:46:57', '2018-09-20 01:46:57'),
(1886, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:47:01', '2018-09-20 15:47:01', '2018-09-20 15:47:01', 'benar', 174, 65, 41, 126, '2018-09-20 01:47:01', '2018-09-20 01:47:01'),
(1887, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 15:47:02', '2018-09-20 15:47:02', '2018-09-20 15:47:02', 'benar', 203, 65, 41, 125, '2018-09-20 01:47:02', '2018-09-20 01:47:02'),
(1888, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:47:11', '2018-09-20 15:47:11', '2018-09-20 15:47:11', 'benar', 203, 65, 41, 126, '2018-09-20 01:47:11', '2018-09-20 01:47:11'),
(1889, 'If-Nested-3', '3  2', '2018-09-20 15:47:11', '2018-09-20 15:47:11', '2018-09-20 15:47:11', 'benar', 196, 65, 41, 122, '2018-09-20 01:47:11', '2018-09-20 01:47:11'),
(1890, 'If-max3', 'm < x3', '2018-09-20 15:47:12', '2018-09-20 15:47:12', '2018-09-20 15:47:12', 'benar', 174, 65, 41, 127, '2018-09-20 01:47:12', '2018-09-20 01:47:12'),
(1891, 'If-max3', 'm < x3', '2018-09-20 15:47:15', '2018-09-20 15:47:15', '2018-09-20 15:47:15', 'benar', 203, 65, 41, 127, '2018-09-20 01:47:15', '2018-09-20 01:47:15'),
(1892, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:47:20', '2018-09-20 15:47:20', '2018-09-20 15:47:20', 'benar', 180, 65, 41, 126, '2018-09-20 01:47:20', '2018-09-20 01:47:20'),
(1893, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 15:47:22', '2018-09-20 15:47:22', '2018-09-20 15:47:22', 'benar', 196, 65, 41, 123, '2018-09-20 01:47:22', '2018-09-20 01:47:22'),
(1894, 'If-max3', 'm < x3', '2018-09-20 15:47:37', '2018-09-20 15:47:37', '2018-09-20 15:47:37', 'benar', 180, 65, 41, 127, '2018-09-20 01:47:37', '2018-09-20 01:47:37'),
(1895, 'If-nested-error', '4 dan 7', '2018-09-20 15:47:40', '2018-09-20 15:47:40', '2018-09-20 15:47:40', 'benar', 196, 65, 41, 124, '2018-09-20 01:47:40', '2018-09-20 01:47:40'),
(1896, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 15:48:13', '2018-09-20 15:48:13', '2018-09-20 15:48:13', 'salah', 196, 65, 41, 125, '2018-09-20 01:48:13', '2018-09-20 01:48:13'),
(1897, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 15:48:42', '2018-09-20 15:48:42', '2018-09-20 15:48:42', 'benar', 196, 65, 41, 126, '2018-09-20 01:48:42', '2018-09-20 01:48:42'),
(1898, 'If-max3', 'm < x3', '2018-09-20 15:48:51', '2018-09-20 15:48:51', '2018-09-20 15:48:51', 'benar', 196, 65, 41, 127, '2018-09-20 01:48:51', '2018-09-20 01:48:51'),
(1899, 'If-Nested-2', '12', '2018-09-20 16:01:16', '2018-09-20 16:01:16', '2018-09-20 16:01:16', 'salah', 161, 65, 41, 121, '2018-09-20 02:01:16', '2018-09-20 02:01:16'),
(1900, 'If-Nested-3', '7  2', '2018-09-20 16:02:14', '2018-09-20 16:02:14', '2018-09-20 16:02:14', 'salah', 161, 65, 41, 122, '2018-09-20 02:02:14', '2018-09-20 02:02:14'),
(1901, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 16:02:36', '2018-09-20 16:02:36', '2018-09-20 16:02:36', 'benar', 161, 65, 41, 123, '2018-09-20 02:02:36', '2018-09-20 02:02:36'),
(1902, 'If-nested-error', '2 dan 5', '2018-09-20 16:03:07', '2018-09-20 16:03:07', '2018-09-20 16:03:07', 'salah', 161, 65, 41, 124, '2018-09-20 02:03:07', '2018-09-20 02:03:07'),
(1903, 'If-kondisi-3', 'if (x <= 10) or (x >= 45):', '2018-09-20 16:03:43', '2018-09-20 16:03:43', '2018-09-20 16:03:43', 'salah', 161, 65, 41, 125, '2018-09-20 02:03:43', '2018-09-20 02:03:43'),
(1904, 'If-kondisi-4', 'if (A%3!=0) or (A%5==0):', '2018-09-20 16:04:12', '2018-09-20 16:04:12', '2018-09-20 16:04:12', 'salah', 161, 65, 41, 126, '2018-09-20 02:04:12', '2018-09-20 02:04:12'),
(1905, 'If-max3', 'x3 > x1', '2018-09-20 16:04:38', '2018-09-20 16:04:38', '2018-09-20 16:04:38', 'salah', 161, 65, 41, 127, '2018-09-20 02:04:38', '2018-09-20 02:04:38'),
(1906, 'If-Nested-2', '8', '2018-09-20 16:12:24', '2018-09-20 16:12:24', '2018-09-20 16:12:24', 'salah', 187, 65, 41, 121, '2018-09-20 02:12:24', '2018-09-20 02:12:24'),
(1907, 'If-Nested-2', '9', '2018-09-20 16:12:49', '2018-09-20 16:12:49', '2018-09-20 16:12:49', 'benar', 149, 65, 41, 121, '2018-09-20 02:12:49', '2018-09-20 02:12:49'),
(1908, 'If-Nested-3', '3  2', '2018-09-20 16:13:17', '2018-09-20 16:13:17', '2018-09-20 16:13:17', 'benar', 149, 65, 41, 122, '2018-09-20 02:13:17', '2018-09-20 02:13:17'),
(1909, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 16:13:30', '2018-09-20 16:13:30', '2018-09-20 16:13:30', 'benar', 149, 65, 41, 123, '2018-09-20 02:13:30', '2018-09-20 02:13:30'),
(1910, 'If-nested-error', '4 dan 7', '2018-09-20 16:13:48', '2018-09-20 16:13:48', '2018-09-20 16:13:48', 'benar', 149, 65, 41, 124, '2018-09-20 02:13:48', '2018-09-20 02:13:48'),
(1911, 'If-kondisi-3', 'if (x <= 10) and (x >= 45):', '2018-09-20 16:14:16', '2018-09-20 16:14:16', '2018-09-20 16:14:16', 'salah', 149, 65, 41, 125, '2018-09-20 02:14:16', '2018-09-20 02:14:16'),
(1912, 'If-Nested-2', '9', '2018-09-20 16:14:19', '2018-09-20 16:14:19', '2018-09-20 16:14:19', 'benar', 193, 65, 41, 121, '2018-09-20 02:14:19', '2018-09-20 02:14:19'),
(1913, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 16:14:39', '2018-09-20 16:14:39', '2018-09-20 16:14:39', 'benar', 149, 65, 41, 126, '2018-09-20 02:14:39', '2018-09-20 02:14:39'),
(1914, 'If-Nested-3', '3  2', '2018-09-20 16:14:54', '2018-09-20 16:14:54', '2018-09-20 16:14:54', 'benar', 187, 65, 41, 122, '2018-09-20 02:14:54', '2018-09-20 02:14:54'),
(1915, 'If-kondisi-2', 'if(x % 2 == 0):', '2018-09-20 16:15:15', '2018-09-20 16:15:15', '2018-09-20 16:15:15', 'salah', 187, 65, 41, 123, '2018-09-20 02:15:15', '2018-09-20 02:15:15'),
(1916, 'If-Nested-3', '3  2', '2018-09-20 16:15:28', '2018-09-20 16:15:28', '2018-09-20 16:15:28', 'benar', 193, 65, 41, 122, '2018-09-20 02:15:28', '2018-09-20 02:15:28'),
(1917, 'If-max3', 'm < x3', '2018-09-20 16:15:29', '2018-09-20 16:15:29', '2018-09-20 16:15:29', 'benar', 149, 65, 41, 127, '2018-09-20 02:15:29', '2018-09-20 02:15:29'),
(1918, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 16:16:23', '2018-09-20 16:16:23', '2018-09-20 16:16:23', 'benar', 193, 65, 41, 123, '2018-09-20 02:16:23', '2018-09-20 02:16:23'),
(1919, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 16:16:49', '2018-09-20 16:16:49', '2018-09-20 16:16:49', 'benar', 187, 65, 41, 125, '2018-09-20 02:16:49', '2018-09-20 02:16:49'),
(1920, 'If-nested-error', '4 dan 7', '2018-09-20 16:17:02', '2018-09-20 16:17:02', '2018-09-20 16:17:02', 'benar', 193, 65, 41, 124, '2018-09-20 02:17:02', '2018-09-20 02:17:02'),
(1921, 'If-Nested-2', '9', '2018-09-20 16:17:37', '2018-09-20 16:17:37', '2018-09-20 16:17:37', 'benar', 152, 65, 41, 121, '2018-09-20 02:17:37', '2018-09-20 02:17:37'),
(1922, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 16:17:38', '2018-09-20 16:17:38', '2018-09-20 16:17:38', 'benar', 193, 65, 41, 125, '2018-09-20 02:17:38', '2018-09-20 02:17:38'),
(1923, 'If-Nested-2', '9', '2018-09-20 16:17:46', '2018-09-20 16:17:46', '2018-09-20 16:17:46', 'benar', 145, 65, 41, 121, '2018-09-20 02:17:46', '2018-09-20 02:17:46'),
(1924, 'If-kondisi-4', 'if (A%3==0) or (A%5!=0):', '2018-09-20 16:17:58', '2018-09-20 16:17:58', '2018-09-20 16:17:58', 'salah', 187, 65, 41, 126, '2018-09-20 02:17:58', '2018-09-20 02:17:58'),
(1925, 'If-Nested-3', '3  2', '2018-09-20 16:18:17', '2018-09-20 16:18:17', '2018-09-20 16:18:17', 'benar', 145, 65, 41, 122, '2018-09-20 02:18:17', '2018-09-20 02:18:17'),
(1926, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 16:18:22', '2018-09-20 16:18:22', '2018-09-20 16:18:22', 'benar', 193, 65, 41, 126, '2018-09-20 02:18:22', '2018-09-20 02:18:22'),
(1927, 'If-Nested-3', '3  2', '2018-09-20 16:18:35', '2018-09-20 16:18:35', '2018-09-20 16:18:35', 'benar', 152, 65, 41, 122, '2018-09-20 02:18:35', '2018-09-20 02:18:35'),
(1928, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 16:18:57', '2018-09-20 16:18:57', '2018-09-20 16:18:57', 'benar', 152, 65, 41, 123, '2018-09-20 02:18:57', '2018-09-20 02:18:57'),
(1929, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 16:18:57', '2018-09-20 16:18:57', '2018-09-20 16:18:57', 'benar', 145, 65, 41, 123, '2018-09-20 02:18:57', '2018-09-20 02:18:57'),
(1930, 'If-nested-error', '4 dan 7', '2018-09-20 16:19:34', '2018-09-20 16:19:34', '2018-09-20 16:19:34', 'benar', 152, 65, 41, 124, '2018-09-20 02:19:34', '2018-09-20 02:19:34'),
(1931, 'If-nested-error', '4 dan 7', '2018-09-20 16:19:35', '2018-09-20 16:19:35', '2018-09-20 16:19:35', 'benar', 145, 65, 41, 124, '2018-09-20 02:19:35', '2018-09-20 02:19:35');
INSERT INTO `jawabanpg` (`id`, `title`, `jawabanmhs`, `start`, `finish`, `duration`, `status`, `idMhs`, `idTournament`, `idBanksoal`, `idsoalpg`, `created_at`, `updated_at`) VALUES
(1932, 'If-nested-error', '4 dan 7', '2018-09-20 16:19:57', '2018-09-20 16:19:57', '2018-09-20 16:19:57', 'benar', 187, 65, 41, 124, '2018-09-20 02:19:57', '2018-09-20 02:19:57'),
(1933, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 16:20:18', '2018-09-20 16:20:18', '2018-09-20 16:20:18', 'benar', 145, 65, 41, 125, '2018-09-20 02:20:18', '2018-09-20 02:20:18'),
(1934, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 16:20:18', '2018-09-20 16:20:18', '2018-09-20 16:20:18', 'benar', 152, 65, 41, 125, '2018-09-20 02:20:18', '2018-09-20 02:20:18'),
(1935, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 16:20:42', '2018-09-20 16:20:42', '2018-09-20 16:20:42', 'benar', 152, 65, 41, 126, '2018-09-20 02:20:42', '2018-09-20 02:20:42'),
(1936, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 16:20:42', '2018-09-20 16:20:42', '2018-09-20 16:20:42', 'benar', 145, 65, 41, 126, '2018-09-20 02:20:42', '2018-09-20 02:20:42'),
(1937, 'If-max3', 'x3 > x1', '2018-09-20 16:20:59', '2018-09-20 16:20:59', '2018-09-20 16:20:59', 'salah', 187, 65, 41, 127, '2018-09-20 02:20:59', '2018-09-20 02:20:59'),
(1938, 'If-max3', 'm < x3', '2018-09-20 16:21:43', '2018-09-20 16:21:43', '2018-09-20 16:21:43', 'benar', 193, 65, 41, 127, '2018-09-20 02:21:43', '2018-09-20 02:21:43'),
(1939, 'If-max3', 'm < x3', '2018-09-20 16:22:10', '2018-09-20 16:22:10', '2018-09-20 16:22:10', 'benar', 152, 65, 41, 127, '2018-09-20 02:22:10', '2018-09-20 02:22:10'),
(1940, 'If-max3', 'm < x3', '2018-09-20 16:22:34', '2018-09-20 16:22:34', '2018-09-20 16:22:34', 'benar', 145, 65, 41, 127, '2018-09-20 02:22:34', '2018-09-20 02:22:34'),
(1941, 'If-Nested-2', '9', '2018-09-20 17:43:11', '2018-09-20 17:43:11', '2018-09-20 17:43:11', 'benar', 157, 65, 41, 121, '2018-09-20 03:43:11', '2018-09-20 03:43:11'),
(1942, 'If-Nested-3', '3  2', '2018-09-20 17:43:20', '2018-09-20 17:43:20', '2018-09-20 17:43:20', 'benar', 157, 65, 41, 122, '2018-09-20 03:43:20', '2018-09-20 03:43:20'),
(1943, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:43:42', '2018-09-20 17:43:42', '2018-09-20 17:43:42', 'benar', 157, 65, 41, 123, '2018-09-20 03:43:42', '2018-09-20 03:43:42'),
(1944, 'If-nested-error', '2 dan 5', '2018-09-20 17:43:55', '2018-09-20 17:43:55', '2018-09-20 17:43:55', 'salah', 157, 65, 41, 124, '2018-09-20 03:43:55', '2018-09-20 03:43:55'),
(1945, 'If-Nested-2', '9', '2018-09-20 17:44:18', '2018-09-20 17:44:18', '2018-09-20 17:44:18', 'benar', 148, 65, 41, 121, '2018-09-20 03:44:19', '2018-09-20 03:44:19'),
(1946, 'If-Nested-2', '9', '2018-09-20 17:44:26', '2018-09-20 17:44:26', '2018-09-20 17:44:26', 'benar', 154, 65, 41, 121, '2018-09-20 03:44:26', '2018-09-20 03:44:26'),
(1947, 'If-Nested-3', '3  2', '2018-09-20 17:44:31', '2018-09-20 17:44:31', '2018-09-20 17:44:31', 'benar', 154, 65, 41, 122, '2018-09-20 03:44:31', '2018-09-20 03:44:31'),
(1948, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:44:39', '2018-09-20 17:44:39', '2018-09-20 17:44:39', 'benar', 154, 65, 41, 123, '2018-09-20 03:44:39', '2018-09-20 03:44:39'),
(1949, 'If-Nested-3', '3  2', '2018-09-20 17:44:44', '2018-09-20 17:44:44', '2018-09-20 17:44:44', 'benar', 148, 65, 41, 122, '2018-09-20 03:44:44', '2018-09-20 03:44:44'),
(1950, 'If-Nested-2', '9', '2018-09-20 17:44:46', '2018-09-20 17:44:46', '2018-09-20 17:44:46', 'benar', 150, 65, 41, 121, '2018-09-20 03:44:46', '2018-09-20 03:44:46'),
(1951, 'If-nested-error', '4 dan 7', '2018-09-20 17:44:46', '2018-09-20 17:44:46', '2018-09-20 17:44:46', 'benar', 154, 65, 41, 124, '2018-09-20 03:44:46', '2018-09-20 03:44:46'),
(1952, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 17:44:49', '2018-09-20 17:44:49', '2018-09-20 17:44:49', 'benar', 157, 65, 41, 125, '2018-09-20 03:44:49', '2018-09-20 03:44:49'),
(1953, 'If-kondisi-3', 'if (x >= 10) or (x <= 45):', '2018-09-20 17:44:57', '2018-09-20 17:44:57', '2018-09-20 17:44:57', 'salah', 154, 65, 41, 125, '2018-09-20 03:44:57', '2018-09-20 03:44:57'),
(1954, 'If-Nested-3', '3  2', '2018-09-20 17:45:07', '2018-09-20 17:45:07', '2018-09-20 17:45:07', 'benar', 150, 65, 41, 122, '2018-09-20 03:45:07', '2018-09-20 03:45:07'),
(1955, 'If-kondisi-4', 'if (A%3==0) or (A%5!=0):', '2018-09-20 17:45:10', '2018-09-20 17:45:10', '2018-09-20 17:45:10', 'salah', 154, 65, 41, 126, '2018-09-20 03:45:10', '2018-09-20 03:45:10'),
(1956, 'If-max3', 'm < x3', '2018-09-20 17:45:18', '2018-09-20 17:45:18', '2018-09-20 17:45:18', 'benar', 154, 65, 41, 127, '2018-09-20 03:45:18', '2018-09-20 03:45:18'),
(1957, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 17:45:21', '2018-09-20 17:45:21', '2018-09-20 17:45:21', 'benar', 157, 65, 41, 126, '2018-09-20 03:45:21', '2018-09-20 03:45:21'),
(1958, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:45:39', '2018-09-20 17:45:39', '2018-09-20 17:45:39', 'benar', 148, 65, 41, 123, '2018-09-20 03:45:39', '2018-09-20 03:45:39'),
(1959, 'If-nested-error', '4 dan 6', '2018-09-20 17:46:18', '2018-09-20 17:46:18', '2018-09-20 17:46:18', 'salah', 150, 65, 41, 124, '2018-09-20 03:46:18', '2018-09-20 03:46:18'),
(1960, 'If-nested-error', '4 dan 6', '2018-09-20 17:46:18', '2018-09-20 17:46:18', '2018-09-20 17:46:18', 'salah', 148, 65, 41, 124, '2018-09-20 03:46:18', '2018-09-20 03:46:18'),
(1961, 'If-max3', 'm < x3', '2018-09-20 17:46:21', '2018-09-20 17:46:21', '2018-09-20 17:46:21', 'benar', 157, 65, 41, 127, '2018-09-20 03:46:21', '2018-09-20 03:46:21'),
(1962, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 17:47:29', '2018-09-20 17:47:29', '2018-09-20 17:47:29', 'benar', 150, 65, 41, 125, '2018-09-20 03:47:29', '2018-09-20 03:47:29'),
(1963, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 17:47:29', '2018-09-20 17:47:29', '2018-09-20 17:47:29', 'benar', 148, 65, 41, 125, '2018-09-20 03:47:29', '2018-09-20 03:47:29'),
(1964, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 17:48:22', '2018-09-20 17:48:22', '2018-09-20 17:48:22', 'benar', 148, 65, 41, 126, '2018-09-20 03:48:22', '2018-09-20 03:48:22'),
(1965, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 17:48:23', '2018-09-20 17:48:23', '2018-09-20 17:48:23', 'benar', 150, 65, 41, 126, '2018-09-20 03:48:23', '2018-09-20 03:48:23'),
(1966, 'If-max3', 'x3 > x2', '2018-09-20 17:49:18', '2018-09-20 17:49:18', '2018-09-20 17:49:18', 'salah', 148, 65, 41, 127, '2018-09-20 03:49:18', '2018-09-20 03:49:18'),
(1967, 'If-max3', 'x3 > x2', '2018-09-20 17:49:19', '2018-09-20 17:49:19', '2018-09-20 17:49:19', 'salah', 150, 65, 41, 127, '2018-09-20 03:49:19', '2018-09-20 03:49:19'),
(1968, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:49:33', '2018-09-20 17:49:33', '2018-09-20 17:49:33', 'benar', 150, 65, 41, 123, '2018-09-20 03:49:33', '2018-09-20 03:49:33'),
(1969, 'If-Nested-2', '9', '2018-09-20 17:52:02', '2018-09-20 17:52:02', '2018-09-20 17:52:02', 'benar', 153, 65, 41, 121, '2018-09-20 03:52:02', '2018-09-20 03:52:02'),
(1970, 'If-Nested-3', '3  2', '2018-09-20 17:52:09', '2018-09-20 17:52:09', '2018-09-20 17:52:09', 'benar', 153, 65, 41, 122, '2018-09-20 03:52:09', '2018-09-20 03:52:09'),
(1971, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:52:33', '2018-09-20 17:52:33', '2018-09-20 17:52:33', 'benar', 153, 65, 41, 123, '2018-09-20 03:52:33', '2018-09-20 03:52:33'),
(1972, 'If-nested-error', '4 dan 7', '2018-09-20 17:52:41', '2018-09-20 17:52:41', '2018-09-20 17:52:41', 'benar', 153, 65, 41, 124, '2018-09-20 03:52:41', '2018-09-20 03:52:41'),
(1973, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 17:53:12', '2018-09-20 17:53:12', '2018-09-20 17:53:12', 'benar', 153, 65, 41, 125, '2018-09-20 03:53:12', '2018-09-20 03:53:12'),
(1974, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 17:53:29', '2018-09-20 17:53:29', '2018-09-20 17:53:29', 'benar', 153, 65, 41, 126, '2018-09-20 03:53:29', '2018-09-20 03:53:29'),
(1975, 'If-max3', 'm < x3', '2018-09-20 17:54:40', '2018-09-20 17:54:40', '2018-09-20 17:54:40', 'benar', 153, 65, 41, 127, '2018-09-20 03:54:40', '2018-09-20 03:54:40'),
(1976, 'If-Nested-2', '9', '2018-09-20 17:58:17', '2018-09-20 17:58:17', '2018-09-20 17:58:17', 'benar', 167, 65, 41, 121, '2018-09-20 03:58:17', '2018-09-20 03:58:17'),
(1977, 'If-Nested-3', '3  2', '2018-09-20 17:58:23', '2018-09-20 17:58:23', '2018-09-20 17:58:23', 'benar', 167, 65, 41, 122, '2018-09-20 03:58:23', '2018-09-20 03:58:23'),
(1978, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 17:58:30', '2018-09-20 17:58:30', '2018-09-20 17:58:30', 'benar', 167, 65, 41, 123, '2018-09-20 03:58:30', '2018-09-20 03:58:30'),
(1979, 'If-nested-error', '4 dan 7', '2018-09-20 17:58:36', '2018-09-20 17:58:36', '2018-09-20 17:58:36', 'benar', 167, 65, 41, 124, '2018-09-20 03:58:36', '2018-09-20 03:58:36'),
(1980, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 17:58:50', '2018-09-20 17:58:50', '2018-09-20 17:58:50', 'benar', 167, 65, 41, 125, '2018-09-20 03:58:50', '2018-09-20 03:58:50'),
(1981, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 17:59:01', '2018-09-20 17:59:01', '2018-09-20 17:59:01', 'benar', 167, 65, 41, 126, '2018-09-20 03:59:01', '2018-09-20 03:59:01'),
(1982, 'If-max3', 'm < x3', '2018-09-20 17:59:11', '2018-09-20 17:59:11', '2018-09-20 17:59:11', 'benar', 167, 65, 41, 127, '2018-09-20 03:59:11', '2018-09-20 03:59:11'),
(1983, 'If-Nested-2', '9', '2018-09-20 18:07:45', '2018-09-20 18:07:45', '2018-09-20 18:07:45', 'benar', 192, 65, 41, 121, '2018-09-20 04:07:45', '2018-09-20 04:07:45'),
(1984, 'If-Nested-3', '3  2', '2018-09-20 18:08:16', '2018-09-20 18:08:16', '2018-09-20 18:08:16', 'benar', 192, 65, 41, 122, '2018-09-20 04:08:16', '2018-09-20 04:08:16'),
(1985, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:08:33', '2018-09-20 18:08:33', '2018-09-20 18:08:33', 'benar', 192, 65, 41, 123, '2018-09-20 04:08:33', '2018-09-20 04:08:33'),
(1986, 'If-nested-error', '4 dan 7', '2018-09-20 18:09:17', '2018-09-20 18:09:17', '2018-09-20 18:09:17', 'benar', 192, 65, 41, 124, '2018-09-20 04:09:17', '2018-09-20 04:09:17'),
(1987, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:09:58', '2018-09-20 18:09:58', '2018-09-20 18:09:58', 'benar', 192, 65, 41, 125, '2018-09-20 04:09:58', '2018-09-20 04:09:58'),
(1988, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:10:26', '2018-09-20 18:10:26', '2018-09-20 18:10:26', 'benar', 192, 65, 41, 126, '2018-09-20 04:10:26', '2018-09-20 04:10:26'),
(1989, 'If-max3', 'm < x3', '2018-09-20 18:11:14', '2018-09-20 18:11:14', '2018-09-20 18:11:14', 'benar', 192, 65, 41, 127, '2018-09-20 04:11:14', '2018-09-20 04:11:14'),
(1990, 'If-Nested-2', '9', '2018-09-20 18:17:56', '2018-09-20 18:17:56', '2018-09-20 18:17:56', 'benar', 151, 65, 41, 121, '2018-09-20 04:17:56', '2018-09-20 04:17:56'),
(1991, 'If-Nested-3', '3  2', '2018-09-20 18:19:08', '2018-09-20 18:19:08', '2018-09-20 18:19:08', 'benar', 151, 65, 41, 122, '2018-09-20 04:19:08', '2018-09-20 04:19:08'),
(1992, 'If-Nested-2', '9', '2018-09-20 18:20:18', '2018-09-20 18:20:18', '2018-09-20 18:20:18', 'benar', 155, 65, 41, 121, '2018-09-20 04:20:18', '2018-09-20 04:20:18'),
(1993, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:20:20', '2018-09-20 18:20:20', '2018-09-20 18:20:20', 'benar', 151, 65, 41, 123, '2018-09-20 04:20:20', '2018-09-20 04:20:20'),
(1994, 'If-nested-error', '4 dan 7', '2018-09-20 18:20:56', '2018-09-20 18:20:56', '2018-09-20 18:20:56', 'benar', 151, 65, 41, 124, '2018-09-20 04:20:56', '2018-09-20 04:20:56'),
(1995, 'If-Nested-2', '9', '2018-09-20 18:21:04', '2018-09-20 18:21:04', '2018-09-20 18:21:04', 'benar', 158, 65, 41, 121, '2018-09-20 04:21:04', '2018-09-20 04:21:04'),
(1996, 'If-Nested-3', '3  2', '2018-09-20 18:21:10', '2018-09-20 18:21:10', '2018-09-20 18:21:10', 'benar', 158, 65, 41, 122, '2018-09-20 04:21:10', '2018-09-20 04:21:10'),
(1997, 'If-Nested-3', '3  2', '2018-09-20 18:21:20', '2018-09-20 18:21:20', '2018-09-20 18:21:20', 'benar', 155, 65, 41, 122, '2018-09-20 04:21:20', '2018-09-20 04:21:20'),
(1998, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:21:32', '2018-09-20 18:21:32', '2018-09-20 18:21:32', 'benar', 158, 65, 41, 123, '2018-09-20 04:21:32', '2018-09-20 04:21:32'),
(1999, 'If-nested-error', '4 dan 6', '2018-09-20 18:22:04', '2018-09-20 18:22:04', '2018-09-20 18:22:04', 'salah', 158, 65, 41, 124, '2018-09-20 04:22:04', '2018-09-20 04:22:04'),
(2000, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:22:06', '2018-09-20 18:22:06', '2018-09-20 18:22:06', 'benar', 151, 65, 41, 125, '2018-09-20 04:22:06', '2018-09-20 04:22:06'),
(2001, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:22:38', '2018-09-20 18:22:38', '2018-09-20 18:22:38', 'benar', 151, 65, 41, 126, '2018-09-20 04:22:38', '2018-09-20 04:22:38'),
(2002, 'If-Nested-2', '9', '2018-09-20 18:22:47', '2018-09-20 18:22:47', '2018-09-20 18:22:47', 'benar', 156, 65, 41, 121, '2018-09-20 04:22:47', '2018-09-20 04:22:47'),
(2003, 'If-nested-error', '4 dan 6', '2018-09-20 18:22:57', '2018-09-20 18:22:57', '2018-09-20 18:22:57', 'salah', 155, 65, 41, 124, '2018-09-20 04:22:57', '2018-09-20 04:22:57'),
(2004, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:23:02', '2018-09-20 18:23:02', '2018-09-20 18:23:02', 'benar', 158, 65, 41, 125, '2018-09-20 04:23:02', '2018-09-20 04:23:02'),
(2005, 'If-Nested-3', '3  2', '2018-09-20 18:23:13', '2018-09-20 18:23:13', '2018-09-20 18:23:13', 'benar', 156, 65, 41, 122, '2018-09-20 04:23:13', '2018-09-20 04:23:13'),
(2006, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:23:18', '2018-09-20 18:23:18', '2018-09-20 18:23:18', 'benar', 156, 65, 41, 123, '2018-09-20 04:23:18', '2018-09-20 04:23:18'),
(2007, 'If-nested-error', '4 dan 6', '2018-09-20 18:23:23', '2018-09-20 18:23:23', '2018-09-20 18:23:23', 'salah', 156, 65, 41, 124, '2018-09-20 04:23:23', '2018-09-20 04:23:23'),
(2008, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:23:32', '2018-09-20 18:23:32', '2018-09-20 18:23:32', 'benar', 155, 65, 41, 123, '2018-09-20 04:23:32', '2018-09-20 04:23:32'),
(2009, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:23:34', '2018-09-20 18:23:34', '2018-09-20 18:23:34', 'benar', 156, 65, 41, 125, '2018-09-20 04:23:34', '2018-09-20 04:23:34'),
(2010, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:23:43', '2018-09-20 18:23:43', '2018-09-20 18:23:43', 'benar', 156, 65, 41, 126, '2018-09-20 04:23:43', '2018-09-20 04:23:43'),
(2011, 'If-max3', 'm < x3', '2018-09-20 18:23:53', '2018-09-20 18:23:53', '2018-09-20 18:23:53', 'benar', 151, 65, 41, 127, '2018-09-20 04:23:53', '2018-09-20 04:23:53'),
(2012, 'If-Nested-2', '9', '2018-09-20 18:24:06', '2018-09-20 18:24:06', '2018-09-20 18:24:06', 'benar', 146, 65, 41, 121, '2018-09-20 04:24:06', '2018-09-20 04:24:06'),
(2013, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:24:15', '2018-09-20 18:24:15', '2018-09-20 18:24:15', 'benar', 158, 65, 41, 126, '2018-09-20 04:24:15', '2018-09-20 04:24:15'),
(2014, 'If-max3', 'x3 > x2', '2018-09-20 18:24:15', '2018-09-20 18:24:15', '2018-09-20 18:24:15', 'salah', 156, 65, 41, 127, '2018-09-20 04:24:15', '2018-09-20 04:24:15'),
(2015, 'If-max3', 'm < x3', '2018-09-20 18:24:32', '2018-09-20 18:24:32', '2018-09-20 18:24:32', 'benar', 158, 65, 41, 127, '2018-09-20 04:24:32', '2018-09-20 04:24:32'),
(2016, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:24:50', '2018-09-20 18:24:50', '2018-09-20 18:24:50', 'benar', 155, 65, 41, 125, '2018-09-20 04:24:50', '2018-09-20 04:24:50'),
(2017, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:25:22', '2018-09-20 18:25:22', '2018-09-20 18:25:22', 'benar', 155, 65, 41, 126, '2018-09-20 04:25:22', '2018-09-20 04:25:22'),
(2018, 'If-Nested-3', '3  2', '2018-09-20 18:37:10', '2018-09-20 18:37:10', '2018-09-20 18:37:10', 'benar', 146, 65, 41, 122, '2018-09-20 11:37:10', '2018-09-20 04:37:10'),
(2019, 'If-max3', 'x3 > x2', '2018-09-20 18:26:25', '2018-09-20 18:26:25', '2018-09-20 18:26:25', 'salah', 155, 65, 41, 127, '2018-09-20 04:26:25', '2018-09-20 04:26:25'),
(2020, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:27:55', '2018-09-20 18:27:55', '2018-09-20 18:27:55', 'benar', 146, 65, 41, 123, '2018-09-20 04:27:55', '2018-09-20 04:27:55'),
(2021, 'If-nested-error', '4 dan 7', '2018-09-20 18:28:38', '2018-09-20 18:28:38', '2018-09-20 18:28:38', 'benar', 146, 65, 41, 124, '2018-09-20 04:28:38', '2018-09-20 04:28:38'),
(2022, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:29:55', '2018-09-20 18:29:55', '2018-09-20 18:29:55', 'benar', 146, 65, 41, 125, '2018-09-20 04:29:55', '2018-09-20 04:29:55'),
(2023, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:31:13', '2018-09-20 18:31:13', '2018-09-20 18:31:13', 'benar', 146, 65, 41, 126, '2018-09-20 04:31:13', '2018-09-20 04:31:13'),
(2024, 'If-Nested-2', '9', '2018-09-20 18:33:55', '2018-09-20 18:33:55', '2018-09-20 18:33:55', 'benar', 147, 65, 41, 121, '2018-09-20 04:33:55', '2018-09-20 04:33:55'),
(2025, 'If-Nested-3', '3  2', '2018-09-20 18:35:02', '2018-09-20 18:35:02', '2018-09-20 18:35:02', 'benar', 147, 65, 41, 122, '2018-09-20 04:35:02', '2018-09-20 04:35:02'),
(2026, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 18:35:29', '2018-09-20 18:35:29', '2018-09-20 18:35:29', 'benar', 147, 65, 41, 123, '2018-09-20 04:35:29', '2018-09-20 04:35:29'),
(2027, 'If-max3', 'm < x3', '2018-09-20 18:35:44', '2018-09-20 18:35:44', '2018-09-20 18:35:44', 'benar', 146, 65, 41, 127, '2018-09-20 04:35:44', '2018-09-20 04:35:44'),
(2028, 'If-nested-error', '4 dan 7', '2018-09-20 18:36:05', '2018-09-20 18:36:05', '2018-09-20 18:36:05', 'benar', 147, 65, 41, 124, '2018-09-20 04:36:05', '2018-09-20 04:36:05'),
(2029, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 18:36:53', '2018-09-20 18:36:53', '2018-09-20 18:36:53', 'benar', 147, 65, 41, 125, '2018-09-20 04:36:53', '2018-09-20 04:36:53'),
(2030, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 18:37:47', '2018-09-20 18:37:47', '2018-09-20 18:37:47', 'benar', 147, 65, 41, 126, '2018-09-20 04:37:47', '2018-09-20 04:37:47'),
(2031, 'If-max3', 'm < x3', '2018-09-20 18:38:54', '2018-09-20 18:38:54', '2018-09-20 18:38:54', 'benar', 147, 65, 41, 127, '2018-09-20 04:38:54', '2018-09-20 04:38:54'),
(2032, 'If-Nested-2', '9', '2018-09-20 19:14:26', '2018-09-20 19:14:26', '2018-09-20 19:14:26', 'benar', 199, 65, 41, 121, '2018-09-20 05:14:26', '2018-09-20 05:14:26'),
(2033, 'If-Nested-3', '5  2', '2018-09-20 19:15:48', '2018-09-20 19:15:48', '2018-09-20 19:15:48', 'salah', 199, 65, 41, 122, '2018-09-20 05:15:48', '2018-09-20 05:15:48'),
(2034, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 19:16:04', '2018-09-20 19:16:04', '2018-09-20 19:16:04', 'benar', 199, 65, 41, 123, '2018-09-20 05:16:04', '2018-09-20 05:16:04'),
(2035, 'If-nested-error', '2 dan 5', '2018-09-20 19:16:58', '2018-09-20 19:16:58', '2018-09-20 19:16:58', 'salah', 199, 65, 41, 124, '2018-09-20 05:16:58', '2018-09-20 05:16:58'),
(2036, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 19:17:36', '2018-09-20 19:17:36', '2018-09-20 19:17:36', 'benar', 199, 65, 41, 125, '2018-09-20 05:17:36', '2018-09-20 05:17:36'),
(2037, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 19:18:05', '2018-09-20 19:18:05', '2018-09-20 19:18:05', 'benar', 199, 65, 41, 126, '2018-09-20 05:18:05', '2018-09-20 05:18:05'),
(2038, 'If-max3', 'x3 > x1', '2018-09-20 19:18:57', '2018-09-20 19:18:57', '2018-09-20 19:18:57', 'salah', 199, 65, 41, 127, '2018-09-20 05:18:57', '2018-09-20 05:18:57'),
(2039, 'If-Nested-2', '7', '2018-09-20 19:24:23', '2018-09-20 19:24:23', '2018-09-20 19:24:23', 'salah', 205, 65, 41, 121, '2018-09-20 05:24:23', '2018-09-20 05:24:23'),
(2040, 'If-Nested-3', '3  2', '2018-09-20 19:25:58', '2018-09-20 19:25:58', '2018-09-20 19:25:58', 'benar', 205, 65, 41, 122, '2018-09-20 05:25:58', '2018-09-20 05:25:58'),
(2041, 'If-kondisi-2', 'if(x / 2 == 0):', '2018-09-20 19:26:24', '2018-09-20 19:26:24', '2018-09-20 19:26:24', 'salah', 205, 65, 41, 123, '2018-09-20 05:26:24', '2018-09-20 05:26:24'),
(2042, 'If-nested-error', '4 dan 7', '2018-09-20 19:27:41', '2018-09-20 19:27:41', '2018-09-20 19:27:41', 'benar', 205, 65, 41, 124, '2018-09-20 05:27:41', '2018-09-20 05:27:41'),
(2043, 'If-kondisi-3', 'if (x <= 10) or (x >= 45):', '2018-09-20 19:28:15', '2018-09-20 19:28:15', '2018-09-20 19:28:15', 'salah', 205, 65, 41, 125, '2018-09-20 05:28:15', '2018-09-20 05:28:15'),
(2044, 'If-kondisi-4', 'if (A%3>0) or (A%5!=0):', '2018-09-20 19:29:42', '2018-09-20 19:29:42', '2018-09-20 19:29:42', 'salah', 205, 65, 41, 126, '2018-09-20 05:29:42', '2018-09-20 05:29:42'),
(2045, 'If-max3', 'm < x3', '2018-09-20 19:30:49', '2018-09-20 19:30:49', '2018-09-20 19:30:49', 'benar', 205, 65, 41, 127, '2018-09-20 05:30:49', '2018-09-20 05:30:49'),
(2046, 'If-Nested-2', '9', '2018-09-20 19:41:56', '2018-09-20 19:41:56', '2018-09-20 19:41:56', 'benar', 178, 65, 41, 121, '2018-09-20 05:41:56', '2018-09-20 05:41:56'),
(2047, 'If-Nested-3', '3  2', '2018-09-20 19:44:42', '2018-09-20 19:44:42', '2018-09-20 19:44:42', 'benar', 178, 65, 41, 122, '2018-09-20 05:44:42', '2018-09-20 05:44:42'),
(2048, 'If-kondisi-2', 'if(x % 2 == 1):', '2018-09-20 19:45:10', '2018-09-20 19:45:10', '2018-09-20 19:45:10', 'benar', 178, 65, 41, 123, '2018-09-20 05:45:10', '2018-09-20 05:45:10'),
(2049, 'If-nested-error', '4 dan 7', '2018-09-20 19:46:11', '2018-09-20 19:46:11', '2018-09-20 19:46:11', 'benar', 178, 65, 41, 124, '2018-09-20 05:46:11', '2018-09-20 05:46:11'),
(2050, 'If-kondisi-3', 'if (x >= 10) and (x <= 45):', '2018-09-20 19:47:42', '2018-09-20 19:47:42', '2018-09-20 19:47:42', 'benar', 178, 65, 41, 125, '2018-09-20 05:47:42', '2018-09-20 05:47:42'),
(2051, 'If-kondisi-4', 'if (A%3==0) and (A%5!=0):', '2018-09-20 19:48:22', '2018-09-20 19:48:22', '2018-09-20 19:48:22', 'benar', 178, 65, 41, 126, '2018-09-20 05:48:22', '2018-09-20 05:48:22'),
(2052, 'If-max3', 'm < x3', '2018-09-20 19:50:08', '2018-09-20 19:50:08', '2018-09-20 19:50:08', 'benar', 178, 65, 41, 127, '2018-09-20 05:50:08', '2018-09-20 05:50:08'),
(2053, 'Soal1-PG', 'a', '2019-01-06 21:23:28', '2019-01-06 21:23:28', '2019-01-06 21:23:28', 'benar', 123, 53, 31, 88, '2019-01-06 07:23:28', '2019-01-06 07:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `komentarmk`
--

CREATE TABLE `komentarmk` (
  `idKomentar` int(11) NOT NULL,
  `detaildkbs_idDetailDKBS` int(11) NOT NULL,
  `isiKomentar` varchar(500) NOT NULL,
  `pelapor` int(7) NOT NULL,
  `updated_at` date NOT NULL,
  `messagesStatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentarmk`
--

INSERT INTO `komentarmk` (`idKomentar`, `detaildkbs_idDetailDKBS`, `isiKomentar`, `pelapor`, `updated_at`, `messagesStatus`) VALUES
(3, 128, 'Materi yang diberika masih lama', 1772044, '0000-00-00', 1),
(4, 133, 'Dosen hadir telat 20 menit', 1772044, '0000-00-00', 1),
(5, 138, 'Dosen tidak menguasai Materi', 1772000, '0000-00-00', 1),
(6, 131, '.', 1772000, '0000-00-00', 1),
(7, 128, 'matakuliah', 1772044, '2019-11-21', 0),
(8, 127, 'aaa', 1772046, '0000-00-00', 1);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `nama`, `nrp`, `emas`, `perak`, `perunggu`, `total`, `created_at`, `updated_at`) VALUES
(1, 'elvina', '1472002', 1, 0, 0, 5, '2018-07-16 03:06:32', '2018-07-15 20:06:32'),
(89, 'WILLY BUDIANTO', '1672055', 0, 0, 0, 0, '2018-07-17 03:43:15', '2018-07-17 03:43:15'),
(90, 'YOKO WILYAM SIGAN', '1672011', 0, 0, 0, 0, '2018-07-17 03:43:43', '2018-07-17 03:43:43'),
(91, 'BRYAN', '1672013', 0, 0, 0, 0, '2018-08-02 09:52:01', '2018-08-02 09:52:01'),
(92, 'LYDIA NOVIANI KUSUMO', '1672014', 0, 0, 0, 0, '2018-08-02 22:20:16', '2018-08-02 22:20:16'),
(93, 'Wilson Sembiring', '1372097', 0, 0, 0, 0, '2018-08-05 13:03:14', '2018-08-05 13:03:14'),
(94, 'ADITYA WIRYA YUTAMA', '1672054', 0, 0, 0, 0, '2018-02-15 01:45:23', '2018-02-15 01:45:23'),
(95, 'STEFANUS HERMAWAN', '1772023', 0, 0, 0, 0, '2018-02-07 04:47:26', '2018-02-07 04:47:26'),
(96, 'JONATHAN BERNAD', '1772004', 0, 0, 0, 0, '2018-02-07 04:47:31', '2018-02-07 04:47:31'),
(97, 'KAFKA FEBIANTO AGIHARTA', '1772012', 0, 0, 0, 0, '2018-02-07 04:48:04', '2018-02-07 04:48:04'),
(98, 'ARIEF KURNIAWAN', '1772049', 0, 0, 0, 0, '2018-02-07 04:47:15', '2018-02-07 04:47:15'),
(99, 'RONALD ADI SETIAWAN', '1772008', 0, 0, 0, 0, '2018-02-07 04:47:18', '2018-02-07 04:47:18'),
(100, 'STEVEN RUMANTO HARNANDY', '1772026', 0, 0, 0, 0, '2018-02-07 04:48:20', '2018-02-07 04:48:20'),
(101, 'ALEXIUS SURYA', '1772043', 0, 0, 0, 0, '2018-02-07 04:48:25', '2018-02-07 04:48:25'),
(102, 'ARIYANTO SANI', '1772046', 0, 0, 0, 0, '2018-02-07 04:48:32', '2018-02-07 04:48:32'),
(103, 'ROY PARSAORAN', '1772044', 0, 0, 0, 0, '2018-02-07 04:48:51', '2018-02-07 04:48:51'),
(104, 'WILLIAM', '1672036', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(105, 'PRAKHAS PRAKOSO DIEN', '1672049', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(106, 'RIFALDI', '1672068', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(107, 'YOSMART PANGIDOAN BARAKHIEL', '1672068', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(108, 'CHRISTOPHER D.A.W', '1173012', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(109, 'HENDY J.H.', '1173014', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(110, 'YUNITARI U.P', '1173043', 0, 0, 0, 0, '2018-03-20 03:00:01', '2018-03-20 03:00:01'),
(111, 'Test1', '1972999', 0, 0, 0, 0, '2018-08-21 09:35:49', '2018-08-21 09:35:49'),
(112, 'ALDI MALDIANO TADE', '1772019', 0, 0, 0, 0, '2018-08-21 09:37:21', '2018-08-21 09:37:21'),
(113, 'WIRA ANDIKA', '1772036', 0, 0, 0, 0, '2018-08-21 09:37:34', '2018-08-21 09:37:34'),
(114, 'ANDREW ANDRIANUS', '1872001', 0, 0, 0, 0, '2018-08-21 09:37:46', '2018-08-21 09:37:46'),
(115, 'EDWARD', '1872002', 0, 0, 0, 0, '2018-08-21 09:37:59', '2018-08-21 09:37:59'),
(116, 'EDWARD MICHAEL SETYADHI', '1872003', 0, 0, 0, 0, '2018-08-21 09:38:12', '2018-08-21 09:38:12'),
(117, 'JOSEF AGUSTINUS SUKIMTO TANGSUL ALAM', '1872004', 0, 0, 0, 0, '2018-08-21 09:38:32', '2018-08-21 09:38:32'),
(118, 'ROLANDO VIERI', '1872010', 0, 0, 0, 0, '2018-08-21 09:38:48', '2018-08-21 09:38:48'),
(119, 'FERDINAND YUSAK LISTIANTO', '1872016', 0, 0, 0, 0, '2018-08-21 09:39:01', '2018-08-21 09:39:01'),
(120, 'KELVIN WILLIAM', '1872020', 0, 0, 0, 0, '2018-08-21 09:39:16', '2018-08-21 09:39:16'),
(121, 'VANIKA IPSANDY', '1872022', 0, 0, 0, 0, '2018-08-21 09:39:36', '2018-08-21 09:39:36'),
(122, 'JOSREL CHANDRA KUMALA', '1872024', 0, 0, 0, 0, '2018-08-21 09:40:02', '2018-08-21 09:40:02'),
(123, 'ANTHONY HALIM SAPUTRA', '1872027', 0, 0, 0, 0, '2018-08-21 09:40:19', '2018-08-21 09:40:19'),
(124, 'GERALDI', '1872028', 0, 0, 0, 0, '2018-08-21 09:43:10', '2018-08-21 09:43:10'),
(125, 'KHARIS SATRIA PAMBUDI', '1872032', 0, 0, 0, 0, '2018-08-21 09:43:27', '2018-08-21 09:43:27'),
(126, 'BILLY ARYA ANUGRAH', '1872034', 0, 0, 0, 0, '2018-08-21 09:43:47', '2018-08-21 09:43:47'),
(127, 'CHRISTOPHER ARLINSON', '1872036', 0, 0, 0, 0, '2018-08-21 09:44:01', '2018-08-21 09:44:01'),
(128, 'LUCKY', '1872039', 0, 0, 0, 0, '2018-08-21 09:44:11', '2018-08-21 09:44:11'),
(129, 'MUHAMMAD FIKRI BAFADHAL', '1872040', 0, 0, 0, 0, '2018-08-21 09:44:25', '2018-08-21 09:44:25'),
(130, 'VABESSA METAYANI', '1872044', 0, 0, 0, 0, '2018-08-21 09:44:45', '2018-08-21 09:44:45'),
(131, 'VANESSA METAYANI', '1872044', 0, 0, 0, 0, '2018-08-21 09:45:53', '2018-08-21 09:45:53'),
(132, 'MARIA IVAH DAMAYRA', '1872046', 0, 0, 0, 0, '2018-08-21 09:46:11', '2018-08-21 09:46:11'),
(133, 'RAJA RYAN SAPUTRA', '1872048', 0, 0, 0, 0, '2018-08-21 09:46:32', '2018-08-21 09:46:32'),
(134, 'EDWIN DESEMSKY SITUMORANG', '1872051', 0, 0, 0, 0, '2018-08-21 09:46:50', '2018-08-21 09:46:50'),
(135, 'DAVID HALOMOAN SINAGA', '1872052', 0, 0, 0, 0, '2018-08-21 09:47:02', '2018-08-21 09:47:02'),
(136, 'RIOUNG ALFAYEAD', '1872056', 0, 0, 0, 0, '2018-08-21 09:47:23', '2018-08-21 09:47:23'),
(137, 'MICHAEL WIDJAJAHALIM', '1872006', 0, 0, 0, 0, '2018-08-21 09:47:43', '2018-08-21 09:47:43'),
(138, 'JUAN DAVID', '1872008', 0, 0, 0, 0, '2018-08-21 09:47:53', '2018-08-21 09:47:53'),
(139, 'DENNIS LEONARDO', '1872009', 0, 0, 0, 0, '2018-08-21 09:48:03', '2018-08-21 09:48:03'),
(140, 'STEPHEN CANDRA', '1872011', 0, 0, 0, 0, '2018-08-21 09:48:13', '2018-08-21 09:48:13'),
(141, 'NATANAEL HALIM', '1872012', 0, 0, 0, 0, '2018-08-21 09:48:20', '2018-08-21 09:48:20'),
(142, 'NATHANAEL LIMAN', '1872014', 0, 0, 0, 0, '2018-08-21 09:48:38', '2018-08-21 09:48:38'),
(143, 'TOBIAS RENAL ARIANTO NAINGGOLAN', '1872015', 0, 0, 0, 0, '2018-08-21 09:48:51', '2018-08-21 09:48:51'),
(144, 'ARIA BIMANTARA', '1872017', 0, 0, 0, 0, '2018-08-21 09:49:00', '2018-08-21 09:49:00'),
(145, 'JONATHAN LEONARDI HALIM', '1872018', 0, 0, 0, 0, '2018-08-21 09:49:09', '2018-08-21 09:49:09'),
(146, 'HOSEA ADIPRATAMA SANTOSO', '1872021', 0, 0, 0, 0, '2018-08-21 09:49:19', '2018-08-21 09:49:19'),
(147, 'JOHANES ELIAN FARREL KUMARA', '1872023', 0, 0, 0, 0, '2018-08-21 09:49:29', '2018-08-21 09:49:29'),
(148, 'MICHAEL JEREMY TAPPANG', '1872026', 0, 0, 0, 0, '2018-08-21 09:49:39', '2018-08-21 09:49:39'),
(149, 'FEBRIANTI SINGKALI', '1872029', 0, 0, 0, 0, '2018-08-21 09:49:58', '2018-08-21 09:49:58'),
(150, 'RONALDO TASMAN', '1872030', 0, 0, 0, 0, '2018-08-21 09:50:11', '2018-08-21 09:50:11'),
(151, 'RAY CHRISTIAN KUSTIAWAN', '1872033', 0, 0, 0, 0, '2018-08-21 09:50:22', '2018-08-21 09:50:22'),
(152, 'RIVALDO STUART WATTIMENA', '1872035', 0, 0, 0, 0, '2018-08-21 09:50:48', '2018-08-21 09:50:48'),
(153, 'JASON', '1872038', 0, 0, 0, 0, '2018-08-21 09:50:59', '2018-08-21 09:50:59'),
(154, 'ADHITYA BATHARA SATYA PASANDE', '1872041', 0, 0, 0, 0, '2018-08-21 09:51:24', '2018-08-21 09:51:24'),
(155, 'KEVIN SENJAYA', '1872042', 0, 0, 0, 0, '2018-08-21 09:51:34', '2018-08-21 09:51:34'),
(156, 'YOLANDA TRIXIE HERNITA', '1872045', 0, 0, 0, 0, '2018-08-21 09:51:47', '2018-08-21 09:51:47'),
(157, 'STEVEN PETER SANGIAN', '1872047', 0, 0, 0, 0, '2018-08-21 09:52:04', '2018-08-21 09:52:04'),
(158, 'WILIAM CAESAR SENAS', '1872050', 0, 0, 0, 0, '2018-08-21 09:52:17', '2018-08-21 09:52:17'),
(159, 'EDOARDO ROBERTHO VINCEN MANIAGASI', '1872053', 0, 0, 0, 0, '2018-08-21 09:52:37', '2018-08-21 09:52:37'),
(160, 'SALIM ARIZI', '1872054', 0, 0, 0, 0, '2018-08-21 09:52:59', '2018-08-21 09:52:59'),
(161, 'DAVID JOHN ELIEZER', '1872057', 0, 0, 0, 0, '2018-08-21 09:53:29', '2018-08-21 09:53:29'),
(162, 'MICHAEL SEBASTIAN GUNADI', '1872005', 0, 0, 0, 0, '2018-08-21 09:54:21', '2018-08-21 09:54:21'),
(163, 'AXL BINTANG PARDAMEAN SIMANJUNTAK', '1872007', 0, 0, 0, 0, '2018-08-21 09:54:44', '2018-08-21 09:54:44'),
(164, 'ANDRE RIVALDO PRASETYO', '1872013', 0, 0, 0, 0, '2018-08-21 09:54:57', '2018-08-21 09:54:57'),
(165, 'RYAN NATHANIEL', '1872019', 0, 0, 0, 0, '2018-08-21 09:55:12', '2018-08-21 09:55:12'),
(166, 'VARDINA NAVA MADYA KASMAN', '1872025', 0, 0, 0, 0, '2018-08-21 09:55:32', '2018-08-21 09:55:32'),
(167, 'DAVID HARTONO', '1872031', 0, 0, 0, 0, '2018-08-21 09:55:53', '2018-08-21 09:55:53'),
(168, 'YONATHAN WAHYU SATRIYO HADDY', '1872037', 0, 0, 0, 0, '2018-08-21 09:56:11', '2018-08-21 09:56:11'),
(169, 'DINDA AYU FEBRIANI', '1872043', 0, 0, 0, 0, '2018-08-21 09:56:29', '2018-08-21 09:56:29'),
(170, 'ABHIPRAYA RADHITYAQSO ESMANO', '1872049', 0, 0, 0, 0, '2018-08-21 09:57:00', '2018-08-21 09:57:00'),
(171, 'MATTHEW DESAILLY', '1872055', 0, 0, 0, 0, '2018-08-21 09:57:37', '2018-08-21 09:57:37'),
(172, 'ALDRICH SANCHO SAPATA NEGARA', '1872058', 0, 0, 0, 0, '2018-08-21 09:57:54', '2018-08-21 09:57:54'),
(173, 'HAWILA BRYAN YUDHA DENILSON SIALLAGAN', '1872059', 0, 0, 0, 0, '2018-08-21 09:58:26', '2018-08-21 09:58:26'),
(174, 'TIFANI ASTADINI TARIGAN', '1872060', 0, 0, 0, 0, '2018-08-21 09:59:23', '2018-08-21 09:59:23'),
(175, 'HELMY HAKIM HAN', '1872061', 0, 0, 0, 0, '2018-08-21 09:59:34', '2018-08-21 09:59:34'),
(176, 'ALFIN HIDAYATULLOH', '1872062', 0, 0, 0, 0, '2018-08-21 09:59:51', '2018-08-21 09:59:51'),
(177, 'Test1', '1972999', 0, 0, 0, 0, '2018-08-22 05:20:55', '2018-08-22 05:20:55'),
(178, 'Test1', '1972001', 0, 0, 0, 0, '2018-08-22 06:21:30', '2018-08-22 06:21:30'),
(179, 'YAFET RAPHAEL', '1672066', 0, 0, 0, 0, '2018-08-22 06:43:25', '2018-08-22 06:43:25'),
(180, 'WEDDY ALVINO MARTIN', '1872063', 0, 0, 0, 0, '2018-09-03 01:09:11', '2018-09-03 01:09:11'),
(181, 'ANDRE', '1572007', 0, 0, 0, 0, '2018-09-07 06:12:22', '2018-09-07 06:12:22'),
(182, 'STEVEN CHRISTIAN HERYAWAN', '1672056', 0, 0, 0, 0, '2018-09-09 23:35:52', '2018-09-09 23:35:52'),
(183, 'ANDRE CHRISTIAN', '1573018', 0, 0, 0, 0, '2018-09-13 19:15:41', '2018-09-13 19:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `livestream`
--

CREATE TABLE `livestream` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hlink` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `about` text DEFAULT NULL,
  `channel` varchar(255) NOT NULL,
  `jadwal` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livestream`
--

INSERT INTO `livestream` (`id`, `nama`, `hlink`, `link`, `about`, `channel`, `jadwal`, `created_at`, `updated_at`) VALUES
(1, 'BRYAN', 'http://youtu.be/FEk_Rvjbwb8', '<iframe width=\"420\" height=\"315\" src=\"http://www.youtube.com/embed/FEk_Rvjbwb8\" frameborder=\"0\" allowfullscreen></iframe>', NULL, '', '2019-01-06 21:16:18', '2019-01-06 07:19:17', '2019-01-06 07:19:17');

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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nrp`, `namaMhs`, `password`, `fakultas`, `prodi`, `email`, `email2`, `tanggalLahir`, `alamat`, `gender`, `telephone`, `kota`, `level`, `experience`, `streamlink`, `role`, `foto`, `warna`, `status`, `about`, `created_at`, `updated_at`) VALUES
(119, 1472002, 'Elvina', 'f4a9bdd7a328c6f106e4eaf570185cbc', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'elvina@gmail.com', 'elvina22@gmail.com', '2018-06-22', 'Jalan gracia no 11', 'Wanita', '081221097433', 'Bandung', 1, 1, NULL, 'Mahasiswa', '20180630125313.jpeg', 'red', 'aktif', 'Hidup ini adalah pencobaan', '2018-06-23 00:37:38', '2018-07-16 00:12:13'),
(121, 1672055, 'WILLY BUDIANTO', 'd3a9278a011ebdf14623650d4147f02d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672055@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. AHMAD YANI NO.200 GARUT', 'Pria', '081378909991', 'Kab. Garut', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-07-17 03:43:15', '2018-07-17 03:43:15'),
(122, 1672011, 'YOKO WILYAM SIGAN', 'c446dc4e550bdfc3acf07dc35ef0a374', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672011@student.it.maranatha.edu', NULL, '1970-01-01', 'JLN PASUNDAN,GG PASUNDAN I NO 9', 'Pria', '087720740068', 'Sukabumi', 1, 1, NULL, 'Mahasiswa', '20180717104755.jpg', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-07-17 03:43:43', '2018-07-17 03:47:55'),
(123, 1672013, 'BRYAN', '21accf9313f025f321f772c7f862f8f4', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672013@student.it.maranatha.edu', NULL, '1970-01-01', 'JLN. PASAR BARU RUKO NO. 241', 'Pria', '087822348093', 'Cianjur', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-08-02 09:52:01', '2018-08-02 09:52:01'),
(124, 1672014, 'LYDIA NOVIANI KUSUMO', 'b0dcec6a9ae1fd6b72335274e917f6c3', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672014@student.it.maranatha.edu', NULL, '1999-11-21', 'KP. PENGAPON 354', 'Wanita', '081904410896', 'Semarang', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-08-02 22:20:16', '2018-08-02 23:57:35'),
(125, 1372097, 'WILSON SEMBIRING', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'white.cat@gmail.com', NULL, '1995-02-05', 'Jalan Setraduta N28 Dago', 'Pria', '0812312412354', 'Bandung', 1, 1, 'UCpvQjgWDlaqUzh16qzoFNmw', 'Mahasiswa', '20180205182356.png', 'red', 'aktif', 'bonzomydog', '2018-01-14 11:33:41', '2018-08-05 11:40:59'),
(126, 1672036, 'WILLIAM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672036@gmail.com', NULL, '1997-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-03-08 20:19:05'),
(127, 1672049, 'PRAKHAS PRAKOSO DIEN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672049@gmail.com', NULL, '1997-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-03-08 20:19:05'),
(128, 1672068, 'RIFALDI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672068@gmail.com', NULL, '1997-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-03-08 20:19:05'),
(129, 1772022, 'YOSMART PANGIDOAN BARAKHIEL', '57372e106f20d9afcef17ceec585249f', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772022@gmail.com', NULL, '1999-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-07-10 16:53:12'),
(130, 1173012, 'CHRISTOPHER D.A.W', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1173012@gmail.com', NULL, '1993-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-03-08 20:19:05'),
(131, 1173014, 'HENDY J.H.', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1173014@gmail.com', NULL, '1993-07-04', 'Jalan Surya Sumantri no 68', 'Pria', '081221666354', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-03-08 20:19:05'),
(132, 1173043, 'YUNITARI U.P', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it11730436@gmail.com', NULL, '1993-07-04', 'Jln Babakan Jeruk 1 no 139', 'Wanita', '085956284557', 'Bandung', 1, 1, 'UCOmXp2CK9kxYOzteeQcFuPQ', 'Mahasiswa', 'user.png', 'red', 'aktif', 'apa aja lah', '2018-01-14 00:36:07', '2018-08-05 23:50:47'),
(133, 1672054, 'ADITYA WIRYA YUTAMA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672054@student.it.maranatha.edu', NULL, '1998-04-07', 'JL. RAYA KELAPA II ENTROP', 'Pria', '082198052220', 'Jayapura', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-15 01:45:23', '2018-06-06 06:06:44'),
(134, 1772004, 'JONATHAN BERNAD', 'b427ebd39c845eb5417b7f7aaf1f9724', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772004@student.it.maranatha.edu', NULL, '1999-10-08', 'BUKIT PALEM JL LOTUS JINGGA NO 30.', 'Pria', '087774883131', 'CILEGON', 1, 1, 'UCgYzU_QkgaXGAxFPHqB3AZg', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:47:31', '2018-02-07 04:51:37'),
(135, 1772008, 'RONALD ADI SETIAWAN', 'fbb2530798b4b48433e0d8cd8795f7a8', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772008@student.it.maranatha.edu', NULL, '1998-10-18', 'KOMPLEK CIBOLERANG BLOK C NO. 13', 'Pria', '087818101998', 'Kebumen', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:47:18', '2018-02-07 04:49:53'),
(136, 1772012, 'KAFKA FEBIANTO AGIHARTA', 'ef6f010380d247b8026d2152fae31d0d', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772012@student.it.maranatha.edu', NULL, '1999-02-07', 'JL. PEJAGALAN DALAM NO.36/65', 'Pria', '085603753379', 'SUKABUMI', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:04', '2018-02-07 04:50:52'),
(137, 1772023, 'STEFANUS HERMAWAN', 'eb0019924d12a137ef901c0639a61292', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772023@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. BELAKANG KANTOR POS NO. 34, PARITTIGA, DESA PUPUT, KEC. PARITTIGA', 'Pria', '-', 'KAB. BANGKA BARAT', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:47:26', '2018-02-07 04:47:26'),
(138, 1772026, 'STEVEN RUMANTO HARNANDY', '606be481922cfccbc3d31d21d176c71a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772026@student.it.maranatha.edu', NULL, '1998-06-18', 'KOMPLEK KOPO PERMAI II BLOK 5CD NO. 67, KEC. MARGAHAYU, KEL. SUKAMENAK', 'Pria', '082216605990', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:20', '2018-02-07 04:50:22'),
(139, 1772043, 'ALEXIUS SURYA', 'f6cd715bcca7fa415020fcc1cde2afcf', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772043@student.it.maranatha.edu', NULL, '1999-02-20', 'TAMAN HOLIS INDAH BLOCK A NOMER 1 C', 'Pria', '081313753332', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:25', '2018-02-07 04:49:46'),
(140, 1772046, 'ARIYANTO SANI', '4cbdae85420104b97fa274235f9252cc', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772046@student.it.maranatha.edu', NULL, '1999-05-05', 'JL. RUMAH SAKIT UMUM NO 23', 'Pria', '082316997753', 'TASIKMALAYA', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:32', '2019-10-29 04:50:59'),
(141, 1772044, 'ROY PARSAORAN', '4cbdae85420104b97fa274235f9252cc', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772044@student.it.maranatha.edu', NULL, '1999-01-06', 'JALAN DAKOTA RAYA NO  456', 'Pria', '2263001111', 'BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:51', '2019-10-29 04:50:38'),
(142, 1772049, 'ARIEF KURNIAWAN', '38d5122945f80a925dd5b8b94cd9f15b', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772049@student.it.maranatha.edu', NULL, '1995-12-01', 'GADING TUTUKA 1 BLOK G.3 NO. 11-12', 'Pria', '082218880048', 'KAB. BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:47:15', '2018-02-07 04:59:05'),
(144, 1772019, 'ALDI MALDIANO TADE', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772019@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '082126607267', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:37:21', '2018-09-04 21:34:53'),
(145, 1772036, 'WIRA ANDIKA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772036@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:37:34', '2018-08-22 13:24:14'),
(146, 1872001, 'ANDREW ANDRIANUS', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872001@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:37:46', '2018-08-22 13:34:34'),
(147, 1872002, 'EDWARD', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872002@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:37:59', '2018-08-22 13:34:34'),
(148, 1872003, 'EDWARD MICHAEL SETYADHI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872003@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:38:12', '2018-08-22 13:34:34'),
(149, 1872004, 'JOSEF AGUSTINUS SUKIMTO TANGSUL ALAM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872004@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:38:32', '2018-08-22 13:34:34'),
(150, 1872010, 'ROLANDO VIERI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872010@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:38:48', '2018-08-22 13:34:34'),
(151, 1872016, 'FERDINAND YUSAK LISTIANTO', 'b293294f012bb95f574dac4b35525042', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872016@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:39:01', '2018-09-07 07:40:29'),
(152, 1872020, 'KELVIN WILLIAM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872020@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:39:16', '2018-08-22 13:34:34'),
(153, 1872022, 'VANIKA IPSANDY', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872022@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:39:36', '2018-08-22 13:34:34'),
(154, 1872024, 'JOSREL CHANDRA KUMALA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872024@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:40:02', '2018-08-22 13:34:34'),
(155, 1872027, 'ANTHONY HALIM SAPUTRA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872027@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:40:19', '2018-08-22 13:34:34'),
(156, 1872028, 'GERALDI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872028@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:43:10', '2018-08-22 13:34:34'),
(157, 1872032, 'KHARIS SATRIA PAMBUDI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872032@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:43:27', '2018-08-22 13:34:34'),
(158, 1872034, 'BILLY ARYA ANUGRAH', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872034@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:43:47', '2018-08-22 13:34:34'),
(159, 1872036, 'CHRISTOPHER ARLINSON', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872036@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:44:01', '2018-08-22 13:34:34'),
(160, 1872039, 'LUCKY', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872039@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:44:11', '2018-08-22 13:34:34'),
(161, 1872040, 'MUHAMMAD FIKRI BAFADHAL', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872040@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:44:25', '2018-08-22 13:34:34'),
(163, 1872044, 'VANESSA METAYANI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872044@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:45:53', '2018-08-22 13:34:34'),
(164, 1872046, 'MARIA IVAH DAMAYRA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872046@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:46:11', '2018-08-22 13:34:34'),
(165, 1872048, 'RAJA RYAN SAPUTRA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872048@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:46:32', '2018-08-22 13:34:34'),
(166, 1872051, 'EDWIN DESEMSKY SITUMORANG', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872051@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:46:50', '2018-08-22 13:34:34'),
(167, 1872052, 'DAVID HALOMOAN SINAGA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872052@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:47:02', '2018-08-22 13:34:34'),
(168, 1872056, 'RIOUNG ALFAYEAD', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872056@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:47:23', '2018-08-22 13:34:34'),
(169, 1872006, 'MICHAEL WIDJAJAHALIM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872006@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:47:43', '2018-08-22 13:34:34'),
(170, 1872008, 'JUAN DAVID', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872008@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:47:53', '2018-08-22 13:34:34'),
(171, 1872009, 'DENNIS LEONARDO', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872009@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:48:03', '2018-08-22 13:34:34'),
(172, 1872011, 'STEPHEN CANDRA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872011@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:48:13', '2018-08-22 13:34:34'),
(173, 1872012, 'NATANAEL HALIM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872012@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:48:20', '2018-08-22 13:34:34'),
(174, 1872014, 'NATHANAEL LIMAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872014@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:48:38', '2018-08-22 13:34:34'),
(175, 1872015, 'TOBIAS RENAL ARIANTO NAINGGOLAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872015@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:48:51', '2018-08-22 13:34:34'),
(176, 1872017, 'ARIA BIMANTARA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872017@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:00', '2018-08-22 13:34:34'),
(177, 1872018, 'JONATHAN LEONARDI HALIM', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872018@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:09', '2018-08-22 13:34:34'),
(178, 1872021, 'HOSEA ADIPRATAMA SANTOSO', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872021@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:19', '2018-08-22 13:34:34'),
(179, 1872023, 'JOHANES ELIAN FARREL KUMARA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872023@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:29', '2018-08-22 13:34:34'),
(180, 1872026, 'MICHAEL JEREMY TAPPANG', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872026@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:39', '2018-08-22 13:34:34'),
(181, 1872029, 'FEBRIANTI SINGKALI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872029@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:49:58', '2018-08-22 13:34:34'),
(182, 1872030, 'RONALDO TASMAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872030@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:50:11', '2018-08-22 13:34:34'),
(183, 1872033, 'RAY CHRISTIAN KUSTIAWAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872033@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:50:22', '2018-08-22 13:34:34'),
(184, 1872035, 'RIVALDO STUART WATTIMENA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872035@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:50:48', '2018-08-22 13:34:34'),
(185, 1872038, 'JASON', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872038@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:50:59', '2018-08-22 13:34:34'),
(186, 1872041, 'ADHITYA BATHARA SATYA PASANDE', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872041@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:51:24', '2018-08-22 13:34:34'),
(187, 1872042, 'KEVIN SENJAYA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872042@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:51:34', '2018-08-22 13:34:34'),
(188, 1872045, 'YOLANDA TRIXIE HERNITA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872045@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:51:47', '2018-08-22 13:34:34'),
(189, 1872047, 'STEVEN PETER SANGIAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872047@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:52:04', '2018-08-22 13:34:34'),
(190, 1872050, 'WILIAM CAESAR SENAS', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872050@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:52:17', '2018-09-20 01:21:17'),
(191, 1872053, 'EDOARDO ROBERTHO VINCEN MANIAGASI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872053@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:52:37', '2018-08-22 13:34:34'),
(192, 1872054, 'SALIM ARIZI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872054@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:52:59', '2018-08-22 13:34:34'),
(193, 1872057, 'DAVID JOHN ELIEZER', '813681621438f8cdbb1b9651bb0d5e58', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872057@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:53:29', '2018-09-09 19:13:52'),
(194, 1872005, 'MICHAEL SEBASTIAN GUNADI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872005@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:54:21', '2018-08-22 13:34:34'),
(195, 1872007, 'AXL BINTANG PARDAMEAN SIMANJUNTAK', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872007@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:54:44', '2018-08-22 13:34:34'),
(196, 1872013, 'ANDRE RIVALDO PRASETYO', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872013@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:54:57', '2018-08-22 13:34:34'),
(197, 1872019, 'RYAN NATHANIEL', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872019@student.it.maranatha.edu', NULL, '2000-01-01', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:55:12', '2018-09-13 01:27:08'),
(198, 1872025, 'VARDINA NAVA MADYA KASMAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872025@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:55:32', '2018-08-22 13:34:34'),
(199, 1872031, 'DAVID HARTONO', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872031@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:55:53', '2018-08-22 13:34:34'),
(200, 1872037, 'YONATHAN WAHYU SATRIYO HADDY', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872037@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:56:11', '2018-08-22 13:34:34'),
(201, 1872043, 'DINDA AYU FEBRIANI', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872043@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:56:29', '2018-08-22 13:34:34'),
(202, 1872049, 'ABHIPRAYA RADHITYAQSO ESMANO', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872049@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:57:00', '2018-08-22 13:34:34'),
(203, 1872055, 'MATTHEW DESAILLY', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872055@student.it.maranatha.edu', NULL, '2000-03-24', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Karawang', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:57:37', '2018-09-03 01:13:01'),
(204, 1872058, 'ALDRICH SANCHO SAPATA NEGARA', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872058@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:57:54', '2018-08-22 13:34:34'),
(205, 1872059, 'HAWILA BRYAN YUDHA DENILSON SIALLAGAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872059@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:58:26', '2018-08-22 13:34:34'),
(206, 1872060, 'TIFANI ASTADINI TARIGAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872060@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Wanita', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:59:23', '2018-08-22 13:34:34'),
(207, 1872061, 'HELMY HAKIM HAN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872061@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:59:34', '2018-08-22 13:34:34'),
(208, 1872062, 'ALFIN HIDAYATULLOH', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872062@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-21 09:59:51', '2018-08-22 13:34:34'),
(210, 1972001, 'Test1', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1972001@student.it.maranatha.edu', NULL, '0000-00-00', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-08-22 06:21:30', '2018-08-22 06:21:30'),
(211, 1672066, 'YAFET RAPHAEL', '6bb26f33544bd26bdc323b3efa702f5a', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672066@student.it.maranatha.edu', NULL, '1970-01-01', 'JL. RAWASARI BARAT III/47', 'Pria', '081298889753', 'Jakarta Pusat', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-08-22 06:43:25', '2018-08-22 06:43:25'),
(212, 1872063, 'WEDDY ALVINO MARTIN', 'a0bb28c06d64bf126af4a521581b7ffb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1872063@student.it.maranatha.edu', NULL, '2000-01-01', 'Jalan Surya Sumantri No.65', 'Pria', '081221669924', 'Bandung', 0, 0, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'CLSReborn_GEN', '2018-09-03 01:09:11', '2018-09-03 01:10:45'),
(213, 1572007, 'ANDRE', 'd18ec0d0545279601827e7efe8f08725', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1572007@student.it.maranatha.edu', NULL, '1970-01-01', 'TAMAN HOLIS INDAH F5/28A', 'Pria', '089693057205', '', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-09-07 06:12:22', '2018-09-07 06:12:22'),
(214, 1672056, 'STEVEN CHRISTIAN HERYAWAN', 'd676b5a733913b68346e8ccacadf05fb', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1672056@student.it.maranatha.edu', NULL, '1998-09-08', 'JL. HALTEU UTARA 2 NO.46', 'Pria', '081322604930', 'Bandung', 1, 1, '', 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-09-09 23:35:52', '2018-09-09 23:35:52'),
(215, 1573018, 'ANDRE CHRISTIAN', '181ff164e89c56cc9e2c8d01aa63e3cd', 'Fakultas Teknologi Informasi', 'S-1 Sistem Informasi Bisnis', 'it1573018@student.it.maranatha.edu', NULL, '1970-01-01', 'JLN. MADESA NO. 89', 'Pria', '081288294287', 'KOTA BANDUNG', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-09-13 19:15:41', '2018-09-13 19:20:17'),
(216, 177777, 'Mahasiswa 1', '4cbdae85420104b97fa274235f9252cc', 'Teknologi Informasi', 'Teknik Informatika', 'tes@gmail.com', NULL, '2019-09-02', 'TKI 2', 'Pria', '000000000', 'Bandung', 1, 1, NULL, 'mahasiswa', NULL, 'biru', 'aktif', 'adsadadsadasd', '2019-09-27 03:03:50', '0000-00-00 00:00:00'),
(217, 1472099, 'Mahasiswa', 'f4a9bdd7a328c6f106e4eaf570185cbc', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'elvina@gmail.com', 'elvina22@gmail.com', '2018-06-22', 'Jalan gracia no 11', 'Wanita', '081221097433', 'Bandung', 1, 1, NULL, 'Mahasiswa', '20180630125313.jpeg', 'red', 'aktif', 'Hidup ini adalah pencobaan', '2018-06-23 00:37:38', '2018-07-16 00:12:13'),
(218, 1772000, 'Mahasiswa', '4cbdae85420104b97fa274235f9252cc', 'Fakultas Teknologi Informasi', 'S-1 Teknik Informatika', 'it1772046@student.it.maranatha.edu', NULL, '1999-05-05', 'JL. RUMAH SAKIT UMUM NO 23', 'Pria', '082316997753', 'TASIKMALAYA', 1, 1, NULL, 'Mahasiswa', 'user.png', 'red', 'aktif', 'Mahasiswa Fakultas Teknologi Informasi', '2018-02-07 04:48:32', '2018-02-07 04:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `masterdkbs`
--

CREATE TABLE `masterdkbs` (
  `idMasterDKBS` int(11) NOT NULL,
  `matakuliah_kodeMK` varchar(255) NOT NULL,
  `semester_namaSemester` varchar(50) NOT NULL,
  `dosen_nik` varchar(255) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jamMulai` time NOT NULL,
  `jamBerakir` time NOT NULL,
  `ruangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterdkbs`
--

INSERT INTO `masterdkbs` (`idMasterDKBS`, `matakuliah_kodeMK`, `semester_namaSemester`, `dosen_nik`, `kelas`, `hari`, `jamMulai`, `jamBerakir`, `ruangan`) VALUES
(42, 'IN010', 'GNP1920', '720721', 'A', 'Senin', '07:00:00', '10:00:00', 'ADV'),
(43, 'IN010', 'GNP1920', '720722', 'B', 'Selasa', '12:00:00', '15:00:00', 'ADV'),
(44, 'IN010', 'GNP1920', '720723', 'C', 'Rabu', '15:00:00', '17:30:00', 'ADV'),
(45, 'IN011', 'GNP1920', '720721', 'A', 'Kamis', '15:00:00', '17:30:00', 'ADV'),
(46, 'IN013', 'GNP1920', '720723', 'A', 'Kamis', '15:00:00', '17:30:00', 'ADV'),
(47, 'IN014', 'GNP1920', '720722', 'B', 'Senin', '09:30:00', '12:00:00', 'ADV'),
(48, 'MK024', 'GNP1920', '720722', 'B', 'Rabu', '15:00:00', '17:30:00', 'ADV');

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
('BS101', 'Sistem Informasi', 3, 1),
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
-- Table structure for table `paketquestion`
--

CREATE TABLE `paketquestion` (
  `idPaketQuestion` int(11) NOT NULL,
  `namaPaketQuestion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketquestion`
--

INSERT INTO `paketquestion` (`idPaketQuestion`, `namaPaketQuestion`) VALUES
(1, 'Paket Standard');

-- --------------------------------------------------------

--
-- Table structure for table `pertemuan`
--

CREATE TABLE `pertemuan` (
  `idPertemuan` int(11) NOT NULL,
  `masterdkbs_idMasterDKBS` int(11) NOT NULL,
  `paketquestion_idPaketQuestion` int(11) NOT NULL,
  `namaPertemuan` varchar(50) NOT NULL,
  `timePertemuan` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertemuan`
--

INSERT INTO `pertemuan` (`idPertemuan`, `masterdkbs_idMasterDKBS`, `paketquestion_idPaketQuestion`, `namaPertemuan`, `timePertemuan`, `status`, `updated_at`) VALUES
(12, 42, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(13, 45, 1, 'Pertemuan 1 : Perkenalan', '2019-09-05', 0, '0000-00-00'),
(14, 43, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(15, 47, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(16, 48, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(17, 44, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(18, 46, 1, 'Pertemuan 1 : Perkenalan', '2019-09-02', 0, '0000-00-00'),
(19, 42, 1, 'Pertemuan 2 : Variable', '2019-09-09', 0, '0000-00-00'),
(20, 42, 1, 'Pertemuan 3 : Mat Programming', '2019-09-16', 0, '0000-00-00'),
(21, 42, 1, 'Pertemuan 4 : IF Conditional', '2019-09-23', 0, '0000-00-00'),
(22, 42, 1, 'Pertemuan 5 : Mat Programming', '2019-09-30', 0, '0000-00-00'),
(23, 42, 1, 'Pertemuan 6 : If Conditional', '2019-10-06', 0, '0000-00-00'),
(24, 42, 1, 'Pertemuan 7 : If Conditional 2', '2019-10-13', 0, '0000-00-00'),
(25, 42, 1, 'Pertemuan 8 : For looping', '2019-10-20', 0, '0000-00-00'),
(26, 42, 1, 'Pertemuan 9 : While looping', '2019-10-27', 0, '0000-00-00'),
(27, 42, 1, 'Pertemuan 10 : Nested For', '2019-11-04', 0, '0000-00-00'),
(28, 42, 1, 'Pertemuan 11 : Array', '2019-11-11', 0, '0000-00-00'),
(29, 42, 1, 'Pertemuan 12 : Array 2', '2019-11-18', 0, '0000-00-00'),
(30, 42, 1, 'Pertemuan 13 : Matrix', '2019-11-25', 0, '0000-00-00'),
(31, 42, 1, 'Pertemuan 14 : Sort', '2019-12-01', 0, '0000-00-00'),
(32, 43, 1, 'Pertemuan 2 : Variable', '2019-09-09', 0, '0000-00-00'),
(33, 43, 1, 'Pertemuan 3 : input', '2019-09-16', 0, '0000-00-00'),
(34, 43, 1, 'Pertemuan 4 : Mat Programming', '2019-09-23', 0, '0000-00-00'),
(35, 43, 1, 'Pertemuan 5 : Mat Programming 2', '2019-09-30', 0, '0000-00-00'),
(36, 43, 1, 'Pertemuan 6 : If Conditional', '2019-10-06', 0, '0000-00-00'),
(37, 43, 1, 'Pertemuan 7 : If Conditional 2', '2019-10-13', 0, '0000-00-00'),
(38, 43, 1, 'Pertemuan 8 : For looping', '2019-10-20', 0, '0000-00-00'),
(39, 43, 1, 'Pertemuan 9 : While looping', '2019-10-27', 0, '0000-00-00'),
(40, 43, 1, 'Pertemuan 10 : Nested For', '2019-11-04', 0, '0000-00-00'),
(41, 43, 1, 'Pertemuan 11 : Array', '2019-11-11', 0, '0000-00-00'),
(42, 43, 1, 'Pertemuan 12 : Array 2', '2019-11-18', 0, '0000-00-00'),
(43, 43, 1, 'Pertemuan 13 : Matrix', '2019-11-25', 0, '0000-00-00'),
(44, 43, 1, 'Pertemuan 14 : Sort', '2019-12-01', 0, '0000-00-00'),
(45, 44, 1, 'Pertemuan 2 : Variable', '2019-09-09', 0, '0000-00-00'),
(46, 44, 1, 'Pertemuan 3 : input', '2019-09-16', 0, '0000-00-00'),
(47, 44, 1, 'Pertemuan 4 : Mat Programming', '2019-09-23', 0, '0000-00-00'),
(48, 44, 1, 'Pertemuan 5 : Mat Programming 2', '2019-09-30', 0, '0000-00-00'),
(49, 44, 1, 'Pertemuan 6 : If Conditional', '2019-10-06', 0, '0000-00-00'),
(50, 44, 1, 'Pertemuan 7 : If Conditional 2', '2019-10-13', 0, '0000-00-00'),
(51, 44, 1, 'Pertemuan 8 : For looping', '2019-10-20', 0, '0000-00-00'),
(52, 44, 1, 'Pertemuan 9 : While looping', '2019-10-27', 0, '0000-00-00'),
(53, 44, 1, 'Pertemuan 10 : Nested For', '2019-11-04', 0, '0000-00-00'),
(54, 44, 1, 'Pertemuan 11 : Array', '2019-11-11', 0, '0000-00-00'),
(55, 44, 1, 'Pertemuan 12 : Array 2', '2019-11-18', 0, '0000-00-00'),
(56, 44, 1, 'Pertemuan 13 : Matrix', '2019-11-25', 0, '0000-00-00'),
(57, 44, 1, 'Pertemuan 14 : Sort', '2019-12-01', 0, '0000-00-00'),
(58, 45, 1, 'Pertemuan 2 : Komputer', '2019-09-12', 0, '0000-00-00'),
(59, 45, 1, 'Pertemuan 3 : Komputer 2', '2019-09-19', 0, '0000-00-00'),
(60, 45, 1, 'Pertemuan 4 : Teknologi UI', '2019-09-26', 0, '0000-00-00'),
(61, 45, 1, 'Pertemuan 5 : Teknologi Komputer', '2019-10-03', 0, '0000-00-00'),
(62, 45, 1, 'Pertemuan 6 : Games', '2019-10-10', 0, '0000-00-00'),
(63, 45, 1, 'Pertemuan 7 : AI', '2019-10-17', 0, '0000-00-00'),
(64, 45, 1, 'Pertemuan 8 : TUBES', '2019-10-24', 0, '0000-00-00'),
(65, 45, 1, 'Pertemuan 9 : TUBES', '2019-10-31', 0, '0000-00-00'),
(66, 45, 1, 'Pertemuan 10 : TUBES', '2019-11-07', 0, '0000-00-00'),
(67, 45, 1, 'Pertemuan 11 : TUBES', '2019-11-14', 0, '0000-00-00'),
(68, 45, 1, 'Pertemuan 12 : Presentasi', '2019-11-21', 0, '0000-00-00'),
(69, 45, 1, 'Pertemuan 13 : Presentasi', '2019-11-28', 0, '0000-00-00'),
(70, 45, 1, 'Pertemuan 14 : Presentasi', '2019-12-05', 0, '0000-00-00'),
(71, 46, 1, 'Pertemuan 2 : Math', '2019-09-12', 0, '0000-00-00'),
(72, 46, 1, 'Pertemuan 3 : Prima', '2019-09-19', 0, '0000-00-00'),
(73, 46, 1, 'Pertemuan 4 : Akar kuadrat', '2019-09-26', 0, '0000-00-00'),
(74, 46, 1, 'Pertemuan 5 : Penjumlahan', '2019-10-03', 0, '0000-00-00'),
(75, 46, 1, 'Pertemuan 6 : linear', '2019-10-10', 0, '0000-00-00'),
(76, 46, 1, 'Pertemuan 7 : Quiz', '2019-10-17', 0, '0000-00-00'),
(77, 46, 1, 'Pertemuan 8 : graff', '2019-10-24', 0, '0000-00-00'),
(78, 46, 1, 'Pertemuan 9 : Jarak 2 titik', '2019-10-31', 0, '0000-00-00'),
(79, 46, 1, 'Pertemuan 10 : Divide ', '2019-11-07', 0, '0000-00-00'),
(80, 46, 1, 'Pertemuan 11 : Brute Force', '2019-11-14', 0, '0000-00-00'),
(81, 46, 1, 'Pertemuan 12 : Presentasi', '2019-11-21', 0, '0000-00-00'),
(82, 46, 1, 'Pertemuan 13 : Tubes', '2019-11-28', 0, '0000-00-00'),
(83, 46, 1, 'Pertemuan 14 : Quiz', '2019-12-05', 0, '0000-00-00'),
(84, 47, 1, 'Pertemuan 2 : Convertation', '2019-09-02', 0, '0000-00-00'),
(85, 47, 1, 'Pertemuan 3 : What', '2019-09-09', 0, '0000-00-00'),
(86, 47, 1, 'Pertemuan 4 : Where', '2019-09-16', 0, '0000-00-00'),
(87, 47, 1, 'Pertemuan 5 : Who', '2019-09-23', 0, '0000-00-00'),
(88, 47, 1, 'Pertemuan 6 : When', '2019-09-30', 0, '0000-00-00'),
(89, 47, 1, 'Pertemuan 7 : Why', '2019-10-07', 0, '0000-00-00'),
(90, 47, 1, 'Pertemuan 8 : How', '2019-10-14', 0, '0000-00-00'),
(91, 47, 1, 'Pertemuan 9 : Pastense', '2019-10-21', 0, '0000-00-00'),
(92, 47, 1, 'Pertemuan 10 : Doing ', '2019-10-28', 0, '0000-00-00'),
(93, 47, 1, 'Pertemuan 11 : V1', '2019-11-04', 0, '0000-00-00'),
(94, 47, 1, 'Pertemuan 12 : V2', '2019-11-11', 0, '0000-00-00'),
(95, 47, 1, 'Pertemuan 13 : V3', '2019-11-18', 0, '0000-00-00'),
(96, 47, 1, 'Pertemuan 14 : Quiz', '2019-11-25', 0, '0000-00-00'),
(97, 48, 1, 'Pertemuan 2 : Pancasila', '2019-09-11', 0, '0000-00-00'),
(98, 48, 1, 'Pertemuan 3 : WNI', '2019-09-18', 0, '0000-00-00'),
(99, 48, 1, 'Pertemuan 4 : Proklamasi', '2019-09-25', 0, '0000-00-00'),
(100, 48, 1, 'Pertemuan 5 : Sejarahh Indonesia', '2019-10-02', 0, '0000-00-00'),
(101, 48, 1, 'Pertemuan 6 : Sila ke 1', '2019-10-09', 0, '0000-00-00'),
(102, 48, 1, 'Pertemuan 7 : Sila ke 2', '2019-10-16', 0, '0000-00-00'),
(103, 48, 1, 'Pertemuan 8 : Sila ke 3', '2019-10-23', 0, '0000-00-00'),
(104, 48, 1, 'Pertemuan 9 : Sila ke 4', '2019-10-30', 0, '0000-00-00'),
(105, 48, 1, 'Pertemuan 10 : Sila ke 5 ', '2019-11-06', 0, '0000-00-00'),
(106, 48, 1, 'Pertemuan 11 : UUD', '2019-11-13', 0, '0000-00-00'),
(107, 48, 1, 'Pertemuan 12 : Museum', '2019-11-20', 0, '0000-00-00'),
(108, 48, 1, 'Pertemuan 13 : Museum', '2019-11-27', 0, '0000-00-00'),
(109, 48, 1, 'Pertemuan 14 : Quiz', '2019-12-04', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `idProject` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `about` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `namaPeserta`, `totalSolve`, `idTournament`, `nilaiPG`, `nilaiIsian`, `created_at`, `updated_at`) VALUES
(2, '1472002', 0, 46, NULL, NULL, '2018-07-15 19:45:47', '2018-07-15 19:45:47'),
(3, '1472002', 1, 47, NULL, NULL, '2018-07-15 19:56:01', '2018-07-15 19:56:01'),
(4, '1472002', 1, 48, NULL, NULL, '2018-07-15 20:33:18', '2018-07-15 20:33:18'),
(5, '1472002', 0, 49, NULL, NULL, '2018-07-15 20:38:57', '2018-07-15 20:38:57'),
(6, '1472002', 25, 50, 25, NULL, '2018-07-15 20:48:57', '2018-07-15 20:48:57'),
(7, '1472002', 2, 51, NULL, NULL, '2018-07-17 19:43:18', '2018-07-17 19:43:18'),
(8, '1472002', 10, 52, NULL, NULL, '2018-07-30 23:23:38', '2018-07-30 23:23:38'),
(9, '1772023', 4, 52, NULL, NULL, '2018-08-06 00:01:41', '2018-08-06 00:01:41'),
(10, '1772043', 7, 52, NULL, NULL, '2018-08-06 00:02:17', '2018-08-06 00:02:17'),
(11, '1772044', 10, 52, NULL, NULL, '2018-08-06 00:03:17', '2018-08-06 00:03:17'),
(12, '1772026', 7, 52, NULL, NULL, '2018-08-06 00:03:36', '2018-08-06 00:03:36'),
(13, '1672036', 6, 52, NULL, NULL, '2018-08-06 00:04:03', '2018-08-06 00:04:03'),
(14, '1772046', 8, 52, NULL, NULL, '2018-08-06 00:05:11', '2018-08-06 00:05:11'),
(15, '1173043', 3, 52, NULL, NULL, '2018-08-06 00:06:02', '2018-08-06 00:06:02'),
(16, '1672049', 3, 52, NULL, NULL, '2018-08-06 00:06:28', '2018-08-06 00:06:28'),
(17, '1772012', 9, 52, NULL, NULL, '2018-08-06 00:07:13', '2018-08-06 00:07:13'),
(18, '1772004', 9, 52, NULL, NULL, '2018-08-06 00:07:16', '2018-08-06 00:07:16'),
(19, '1672054', 4, 52, NULL, NULL, '2018-08-06 00:07:52', '2018-08-06 00:07:52'),
(20, '1772049', 7, 52, NULL, NULL, '2018-08-06 00:07:52', '2018-08-06 00:07:52'),
(21, '1672068', 0, 52, NULL, NULL, '2018-08-06 00:08:24', '2018-08-06 00:08:24'),
(22, '1173014', 4, 52, NULL, NULL, '2018-08-06 00:09:45', '2018-08-06 00:09:45'),
(23, '1173012', 5, 52, NULL, NULL, '2018-08-06 00:10:03', '2018-08-06 00:10:03'),
(24, '1872057', 7, 55, NULL, NULL, '2018-09-02 19:20:14', '2018-09-02 19:20:14'),
(25, '1872015', 7, 55, NULL, NULL, '2018-09-02 19:21:42', '2018-09-02 19:21:42'),
(26, '1872006', 6, 55, NULL, NULL, '2018-09-02 19:22:11', '2018-09-02 19:22:11'),
(27, '1872011', 6, 55, NULL, NULL, '2018-09-02 19:22:13', '2018-09-02 19:22:13'),
(28, '1872011', 6, 55, NULL, NULL, '2018-09-02 19:22:13', '2018-09-02 19:22:13'),
(29, '1872041', 6, 55, NULL, NULL, '2018-09-02 19:23:12', '2018-09-02 19:23:12'),
(30, '1872014', 4, 55, NULL, NULL, '2018-09-02 19:24:00', '2018-09-02 19:24:00'),
(31, '1872012', 6, 55, NULL, NULL, '2018-09-02 19:24:05', '2018-09-02 19:24:05'),
(32, '1872042', 2, 55, NULL, NULL, '2018-09-02 19:24:07', '2018-09-02 19:24:07'),
(33, '1872054', 7, 55, NULL, NULL, '2018-09-02 19:24:13', '2018-09-02 19:24:13'),
(34, '1872045', 5, 55, NULL, NULL, '2018-09-02 19:24:26', '2018-09-02 19:24:26'),
(35, '1872038', 4, 55, NULL, NULL, '2018-09-02 19:24:29', '2018-09-02 19:24:29'),
(36, '1872035', 4, 55, NULL, NULL, '2018-09-02 19:24:49', '2018-09-02 19:24:49'),
(37, '1872021', 5, 55, NULL, NULL, '2018-09-02 19:24:50', '2018-09-02 19:24:50'),
(38, '1872050', 1, 55, NULL, NULL, '2018-09-02 19:24:57', '2018-09-02 19:24:57'),
(39, '1872009', 3, 55, NULL, NULL, '2018-09-02 19:25:12', '2018-09-02 19:25:12'),
(40, '1872053', 5, 55, NULL, NULL, '2018-09-02 19:25:21', '2018-09-02 19:25:21'),
(41, '1872026', 3, 55, NULL, NULL, '2018-09-02 19:25:23', '2018-09-02 19:25:23'),
(42, '1872047', 6, 55, NULL, NULL, '2018-09-02 19:25:25', '2018-09-02 19:25:25'),
(43, '1872018', 4, 55, NULL, NULL, '2018-09-02 19:25:26', '2018-09-02 19:25:26'),
(44, '1872030', 4, 55, NULL, NULL, '2018-09-02 19:25:34', '2018-09-02 19:25:34'),
(45, '1872023', 3, 55, NULL, NULL, '2018-09-02 19:26:10', '2018-09-02 19:26:10'),
(46, '1872008', 6, 55, NULL, NULL, '2018-09-02 19:26:17', '2018-09-02 19:26:17'),
(47, '1872029', 2, 55, NULL, NULL, '2018-09-02 19:26:42', '2018-09-02 19:26:42'),
(48, '1872059', 1, 56, NULL, NULL, '2018-09-03 01:25:24', '2018-09-03 01:25:24'),
(49, '1872043', 2, 56, NULL, NULL, '2018-09-03 01:26:16', '2018-09-03 01:26:16'),
(50, '1872060', 3, 56, NULL, NULL, '2018-09-03 01:26:22', '2018-09-03 01:26:22'),
(51, '1872031', 0, 56, NULL, NULL, '2018-09-03 01:27:36', '2018-09-03 01:27:36'),
(52, '1872063', 5, 56, NULL, NULL, '2018-09-03 01:27:52', '2018-09-03 01:27:52'),
(53, '1872037', 3, 56, NULL, NULL, '2018-09-03 01:28:05', '2018-09-03 01:28:05'),
(54, '1872061', 5, 56, NULL, NULL, '2018-09-03 01:28:07', '2018-09-03 01:28:07'),
(55, '1872005', 5, 56, NULL, NULL, '2018-09-03 01:28:09', '2018-09-03 01:28:09'),
(56, '1872062', 0, 56, NULL, NULL, '2018-09-03 01:28:12', '2018-09-03 01:28:12'),
(57, '1872007', 3, 56, NULL, NULL, '2018-09-03 01:28:13', '2018-09-03 01:28:13'),
(58, '1872025', 7, 56, NULL, NULL, '2018-09-03 01:28:19', '2018-09-04 14:43:43'),
(59, '1872058', 4, 56, NULL, NULL, '2018-09-03 01:28:20', '2018-09-03 01:28:20'),
(60, '1872055', 2, 56, NULL, NULL, '2018-09-03 01:28:21', '2018-09-03 01:28:21'),
(61, '1872013', 3, 56, NULL, NULL, '2018-09-03 01:28:24', '2018-09-03 01:28:24'),
(62, '1872049', 4, 56, NULL, NULL, '2018-09-03 01:29:29', '2018-09-03 01:29:29'),
(65, '1872002', 5, 54, NULL, NULL, '2018-09-04 21:48:42', '2018-09-04 21:48:42'),
(66, '1772019', 5, 54, NULL, NULL, '2018-09-04 21:50:15', '2018-09-04 21:50:15'),
(67, '1872016', 4, 54, NULL, NULL, '2018-09-04 21:50:43', '2018-09-04 21:50:43'),
(68, '1872022', 4, 54, NULL, NULL, '2018-09-04 21:50:46', '2018-09-04 21:50:46'),
(69, '1872051', 5, 54, NULL, NULL, '2018-09-04 21:50:54', '2018-09-04 21:50:54'),
(70, '1872044', 4, 54, NULL, NULL, '2018-09-04 21:50:58', '2018-09-04 21:50:58'),
(71, '1872004', 7, 54, NULL, NULL, '2018-09-04 21:51:13', '2018-09-04 21:51:13'),
(72, '1872020', 7, 54, NULL, NULL, '2018-09-04 21:51:21', '2018-09-04 21:51:21'),
(73, '1872024', 4, 54, NULL, NULL, '2018-09-04 21:51:21', '2018-09-04 21:51:21'),
(74, '1872039', 2, 54, NULL, NULL, '2018-09-04 21:51:26', '2018-09-04 21:51:26'),
(75, '1872001', 4, 54, NULL, NULL, '2018-09-04 21:51:28', '2018-09-04 21:51:28'),
(76, '1872003', 2, 54, NULL, NULL, '2018-09-04 21:51:28', '2018-09-04 21:51:28'),
(77, '1872040', 2, 54, NULL, NULL, '2018-09-04 21:51:58', '2018-09-04 21:51:58'),
(78, '1872028', 4, 54, NULL, NULL, '2018-09-04 21:51:58', '2018-09-04 21:51:58'),
(79, '1872027', 3, 54, NULL, NULL, '2018-09-04 21:52:02', '2018-09-04 21:52:02'),
(80, '1872032', 2, 54, NULL, NULL, '2018-09-04 21:52:27', '2018-09-04 21:52:27'),
(81, '1872034', 2, 54, NULL, NULL, '2018-09-04 21:52:48', '2018-09-04 21:52:48'),
(82, '1872010', 4, 54, NULL, NULL, '2018-09-04 21:52:55', '2018-09-04 21:52:55'),
(83, '1872048', 4, 54, NULL, NULL, '2018-09-04 21:52:59', '2018-09-04 21:52:59'),
(84, '1872052', 1, 54, NULL, NULL, '2018-09-04 21:53:40', '2018-09-04 21:53:40'),
(85, '1872004', 6, 57, NULL, NULL, '2018-09-07 06:37:22', '2018-09-07 06:37:22'),
(86, '1872033', 0, 57, NULL, NULL, '2018-09-07 07:33:11', '2018-09-07 07:33:11'),
(87, '1872031', 4, 57, NULL, NULL, '2018-09-07 07:35:15', '2018-09-07 07:35:15'),
(88, '1872006', 2, 57, NULL, NULL, '2018-09-07 07:38:58', '2018-09-07 07:38:58'),
(89, '1772036', 1, 57, NULL, NULL, '2018-09-07 07:46:24', '2018-09-07 07:46:24'),
(90, '1872020', 5, 57, NULL, NULL, '2018-09-07 07:50:07', '2018-09-07 07:50:07'),
(91, '1872054', 5, 57, NULL, NULL, '2018-09-07 07:52:27', '2018-09-07 07:52:27'),
(92, '1872044', 2, 57, NULL, NULL, '2018-09-07 07:56:20', '2018-09-07 07:56:20'),
(93, '1872016', 4, 57, NULL, NULL, '2018-09-07 07:56:27', '2018-09-07 07:56:27'),
(94, '1872005', 5, 57, NULL, NULL, '2018-09-07 07:58:55', '2018-09-07 07:58:55'),
(95, '1872039', 2, 57, NULL, NULL, '2018-09-07 07:59:07', '2018-09-07 07:59:07'),
(96, '1872057', 6, 57, NULL, NULL, '2018-09-07 08:00:05', '2018-09-07 08:00:05'),
(97, '1872011', 2, 57, NULL, NULL, '2018-09-07 08:03:15', '2018-09-07 08:03:15'),
(98, '1872002', 4, 57, NULL, NULL, '2018-09-07 08:03:36', '2018-09-07 08:03:36'),
(99, '1872052', 5, 57, NULL, NULL, '2018-09-07 08:09:40', '2018-09-07 08:09:40'),
(100, '1872047', 5, 57, NULL, NULL, '2018-09-07 08:21:40', '2018-09-07 08:21:40'),
(101, '1872001', 1, 57, NULL, NULL, '2018-09-07 08:25:08', '2018-09-07 08:25:08'),
(102, '1872058', 5, 57, NULL, NULL, '2018-09-07 08:32:35', '2018-09-07 08:32:35'),
(103, '1872008', 4, 58, NULL, NULL, '2018-09-09 19:26:16', '2018-09-09 19:26:16'),
(104, '1872006', 7, 58, NULL, NULL, '2018-09-09 19:26:34', '2018-09-09 19:26:34'),
(105, '1872041', 7, 58, NULL, NULL, '2018-09-09 19:26:36', '2018-09-09 19:26:36'),
(106, '1872009', 4, 58, NULL, NULL, '2018-09-09 19:26:37', '2018-09-09 19:26:37'),
(107, '1872012', 7, 58, NULL, NULL, '2018-09-09 19:27:06', '2018-09-09 19:27:06'),
(108, '1872057', 8, 58, NULL, NULL, '2018-09-09 19:27:16', '2018-09-09 19:27:16'),
(109, '1872054', 7, 58, NULL, NULL, '2018-09-09 19:27:21', '2018-09-09 19:27:21'),
(110, '1872011', 6, 58, NULL, NULL, '2018-09-09 19:27:25', '2018-09-09 19:27:25'),
(111, '1872035', 7, 58, NULL, NULL, '2018-09-09 19:27:35', '2018-09-09 19:27:35'),
(112, '1872015', 7, 58, NULL, NULL, '2018-09-09 19:27:36', '2018-09-09 19:27:36'),
(113, '1872030', 6, 58, NULL, NULL, '2018-09-09 19:27:39', '2018-09-09 19:27:39'),
(114, '1872026', 7, 58, NULL, NULL, '2018-09-09 19:28:01', '2018-09-09 19:28:01'),
(115, '1872050', 3, 58, NULL, NULL, '2018-09-09 19:28:04', '2018-09-09 19:28:04'),
(116, '1872042', 6, 58, NULL, NULL, '2018-09-09 19:28:12', '2018-09-09 19:28:12'),
(117, '1872033', 6, 58, NULL, NULL, '2018-09-09 19:28:26', '2018-09-09 19:28:26'),
(118, '1872018', 6, 58, NULL, NULL, '2018-09-09 19:28:30', '2018-09-09 19:28:30'),
(119, '1872023', 3, 58, NULL, NULL, '2018-09-09 19:28:40', '2018-09-09 19:28:40'),
(120, '1872045', 7, 58, NULL, NULL, '2018-09-09 19:28:42', '2018-09-09 19:28:42'),
(121, '1872014', 5, 58, NULL, NULL, '2018-09-09 19:28:43', '2018-09-09 19:28:43'),
(122, '1872021', 7, 58, NULL, NULL, '2018-09-09 19:28:48', '2018-09-09 19:28:48'),
(123, '1872047', 7, 58, NULL, NULL, '2018-09-09 19:28:53', '2018-09-09 19:28:53'),
(124, '1872029', 0, 58, NULL, NULL, '2018-09-09 19:30:40', '2018-09-09 19:30:40'),
(125, '1872038', 5, 58, NULL, NULL, '2018-09-09 19:31:07', '2018-09-09 19:31:07'),
(126, '1872007', 7, 59, NULL, NULL, '2018-09-10 03:18:00', '2018-09-10 03:18:00'),
(127, '1872025', 8, 59, NULL, NULL, '2018-09-10 03:19:39', '2018-09-10 03:19:39'),
(128, '1872037', 5, 59, NULL, NULL, '2018-09-10 03:21:07', '2018-09-10 03:21:07'),
(129, '1872061', 8, 59, NULL, NULL, '2018-09-10 03:22:04', '2018-09-10 03:22:04'),
(130, '1872055', 8, 59, NULL, NULL, '2018-09-10 03:22:16', '2018-09-10 03:22:16'),
(131, '1872013', 7, 59, NULL, NULL, '2018-09-10 03:23:30', '2018-09-10 03:23:30'),
(132, '1872043', 5, 59, NULL, NULL, '2018-09-10 03:25:32', '2018-09-10 03:25:32'),
(133, '1872019', 7, 59, NULL, NULL, '2018-09-10 03:26:00', '2018-09-10 03:26:00'),
(134, '1872049', 7, 59, NULL, NULL, '2018-09-10 03:26:14', '2018-09-10 03:26:14'),
(135, '1872005', 4, 59, NULL, NULL, '2018-09-10 03:26:28', '2018-09-10 03:26:28'),
(136, '1872062', 1, 59, NULL, NULL, '2018-09-10 03:26:50', '2018-09-10 03:26:50'),
(137, '1872058', 7, 59, NULL, NULL, '2018-09-10 03:26:52', '2018-09-10 03:26:52'),
(138, '1872060', 2, 59, NULL, NULL, '2018-09-10 03:27:11', '2018-09-10 03:27:11'),
(139, '1872063', 7, 59, NULL, NULL, '2018-09-10 03:27:51', '2018-09-10 03:27:51'),
(140, '1872044', 5, 60, NULL, NULL, '2018-09-11 21:29:16', '2018-09-11 21:29:16'),
(141, '1772019', 0, 60, NULL, NULL, '2018-09-11 21:31:22', '2018-09-11 21:31:22'),
(142, '1872039', 7, 60, NULL, NULL, '2018-09-11 21:34:30', '2018-09-11 21:34:30'),
(143, '1772036', 3, 60, NULL, NULL, '2018-09-11 21:34:30', '2018-09-11 21:34:30'),
(144, '1872020', 8, 60, NULL, NULL, '2018-09-11 21:34:41', '2018-09-11 21:34:41'),
(145, '1872004', 8, 60, NULL, NULL, '2018-09-11 21:35:09', '2018-09-11 21:35:09'),
(146, '1872010', 7, 60, NULL, NULL, '2018-09-11 21:35:15', '2018-09-11 21:35:15'),
(147, '1872016', 8, 60, NULL, NULL, '2018-09-11 21:35:19', '2018-09-11 21:35:19'),
(148, '1872024', 7, 60, NULL, NULL, '2018-09-11 21:35:23', '2018-09-11 21:35:23'),
(149, '1872048', 6, 60, NULL, NULL, '2018-09-11 21:36:13', '2018-09-11 21:36:13'),
(150, '1872040', 5, 60, NULL, NULL, '2018-09-11 21:36:17', '2018-09-11 21:36:17'),
(151, '1872051', 6, 60, NULL, NULL, '2018-09-11 21:36:18', '2018-09-11 21:36:18'),
(152, '1872003', 8, 60, NULL, NULL, '2018-09-11 21:36:27', '2018-09-11 21:36:27'),
(153, '1872022', 7, 60, NULL, NULL, '2018-09-11 21:36:37', '2018-09-11 21:36:37'),
(154, '1872034', 0, 60, NULL, NULL, '2018-09-11 21:36:52', '2018-09-11 21:36:52'),
(155, '1872032', 5, 60, NULL, NULL, '2018-09-11 21:37:05', '2018-09-11 21:37:05'),
(156, '1872001', 4, 60, NULL, NULL, '2018-09-11 21:37:06', '2018-09-11 21:37:06'),
(157, '1872028', 2, 60, NULL, NULL, '2018-09-11 21:38:25', '2018-09-11 21:38:25'),
(158, '1872052', 6, 60, NULL, NULL, '2018-09-11 21:38:32', '2018-09-11 21:38:32'),
(159, '1872002', 8, 60, NULL, NULL, '2018-09-11 21:39:13', '2018-09-11 21:39:13'),
(160, '1872027', 8, 60, NULL, NULL, '2018-09-11 21:39:14', '2018-09-11 21:39:14'),
(161, '1872001', 2, 61, NULL, NULL, '2018-09-12 22:50:29', '2018-09-12 22:50:29'),
(162, '1872015', 4, 61, NULL, NULL, '2018-09-12 23:31:46', '2018-09-12 23:31:46'),
(163, '1872057', 6, 61, NULL, NULL, '2018-09-12 23:51:02', '2018-09-12 23:51:02'),
(164, '1872054', 6, 61, NULL, NULL, '2018-09-12 23:51:18', '2018-09-12 23:51:18'),
(165, '1872004', 6, 61, NULL, NULL, '2018-09-12 23:51:50', '2018-09-12 23:51:50'),
(166, '1872024', 1, 61, NULL, NULL, '2018-09-12 23:54:19', '2018-09-12 23:54:19'),
(167, '1872024', 1, 61, NULL, NULL, '2018-09-12 23:54:19', '2018-09-12 23:54:19'),
(168, '1872033', 1, 61, NULL, NULL, '2018-09-12 23:58:41', '2018-09-12 23:58:41'),
(169, '1872051', 3, 61, NULL, NULL, '2018-09-12 23:58:49', '2018-09-12 23:58:49'),
(170, '1872048', 1, 61, NULL, NULL, '2018-09-12 23:58:53', '2018-09-12 23:58:53'),
(171, '1872002', 3, 61, NULL, NULL, '2018-09-12 23:58:55', '2018-09-12 23:58:55'),
(172, '1872006', 2, 61, NULL, NULL, '2018-09-13 00:00:19', '2018-09-13 00:00:19'),
(173, '1872027', 4, 61, NULL, NULL, '2018-09-13 00:00:21', '2018-09-13 00:00:21'),
(174, '1872042', 0, 61, NULL, NULL, '2018-09-13 00:00:38', '2018-09-13 00:00:38'),
(175, '1872012', 2, 61, NULL, NULL, '2018-09-13 00:02:52', '2018-09-13 00:02:52'),
(176, '1872009', 4, 61, NULL, NULL, '2018-09-13 00:05:02', '2018-09-13 00:05:02'),
(177, '1872021', 4, 61, NULL, NULL, '2018-09-13 00:05:23', '2018-09-13 00:05:23'),
(178, '1872018', 4, 61, NULL, NULL, '2018-09-13 00:06:39', '2018-09-13 00:06:39'),
(179, '1872039', 3, 61, NULL, NULL, '2018-09-13 00:12:43', '2018-09-13 00:12:43'),
(180, '1872041', 2, 61, NULL, NULL, '2018-09-13 00:32:56', '2018-09-13 00:32:56'),
(181, '1872043', 2, 61, NULL, NULL, '2018-09-13 01:34:32', '2018-09-13 01:34:32'),
(182, '1872005', 3, 61, NULL, NULL, '2018-09-13 01:35:12', '2018-09-13 01:35:12'),
(183, '1872049', 1, 61, NULL, NULL, '2018-09-13 01:36:00', '2018-09-13 01:36:00'),
(184, '1872061', 3, 61, NULL, NULL, '2018-09-13 01:36:06', '2018-09-13 01:36:06'),
(185, '1872007', 3, 61, NULL, NULL, '2018-09-13 01:36:19', '2018-09-13 01:36:19'),
(186, '1872031', 4, 61, NULL, NULL, '2018-09-13 01:36:23', '2018-09-13 01:36:23'),
(187, '1872013', 2, 61, NULL, NULL, '2018-09-13 01:36:24', '2018-09-13 01:36:24'),
(188, '1872063', 2, 61, NULL, NULL, '2018-09-13 01:37:14', '2018-09-13 01:37:14'),
(189, '1872025', 4, 61, NULL, NULL, '2018-09-13 01:37:39', '2018-09-13 01:37:39'),
(190, '1872037', 2, 61, NULL, NULL, '2018-09-13 01:38:13', '2018-09-13 01:38:13'),
(191, '1872055', 4, 61, NULL, NULL, '2018-09-13 01:38:37', '2018-09-13 01:38:37'),
(192, '1872060', 3, 61, NULL, NULL, '2018-09-13 01:39:01', '2018-09-13 01:39:01'),
(193, '1872058', 3, 61, NULL, NULL, '2018-09-13 01:40:19', '2018-09-13 01:40:19'),
(194, '1872062', 1, 61, NULL, NULL, '2018-09-13 01:40:56', '2018-09-13 01:40:56'),
(195, '1872019', 4, 61, NULL, NULL, '2018-09-13 01:43:53', '2018-09-13 01:43:53'),
(196, '1872020', 5, 61, NULL, NULL, '2018-09-13 02:43:57', '2018-09-13 02:43:57'),
(197, '1872029', 2, 61, NULL, NULL, '2018-09-13 03:05:56', '2018-09-13 03:05:56'),
(198, '1872045', 3, 61, NULL, NULL, '2018-09-13 03:19:03', '2018-09-13 03:19:03'),
(199, '1872014', 3, 61, NULL, NULL, '2018-09-13 03:22:30', '2018-09-13 03:22:30'),
(200, '1872044', 1, 61, NULL, NULL, '2018-09-13 03:40:50', '2018-09-13 03:40:50'),
(201, '1872032', 4, 61, NULL, NULL, '2018-09-13 03:44:58', '2018-09-13 03:44:58'),
(202, '1872040', 4, 61, NULL, NULL, '2018-09-13 03:44:58', '2018-09-13 03:44:58'),
(203, '1872022', 3, 61, NULL, NULL, '2018-09-13 03:46:57', '2018-09-13 03:46:57'),
(204, '1872016', 4, 61, NULL, NULL, '2018-09-13 04:00:31', '2018-09-13 04:00:31'),
(205, '1872034', 4, 61, NULL, NULL, '2018-09-13 04:01:04', '2018-09-13 04:01:04'),
(206, '1872035', 5, 61, NULL, NULL, '2018-09-13 04:04:49', '2018-09-13 04:04:49'),
(207, '1872052', 4, 61, NULL, NULL, '2018-09-13 04:08:44', '2018-09-13 04:08:44'),
(208, '1872030', 4, 61, NULL, NULL, '2018-09-13 04:12:08', '2018-09-13 04:12:08'),
(209, '1872023', 4, 61, NULL, NULL, '2018-09-13 04:14:09', '2018-09-13 04:14:09'),
(210, '1872026', 3, 61, NULL, NULL, '2018-09-13 05:01:09', '2018-09-13 05:01:09'),
(211, '1872038', 2, 61, NULL, NULL, '2018-09-13 05:01:10', '2018-09-13 05:01:10'),
(212, '1872011', 2, 61, NULL, NULL, '2018-09-13 05:11:19', '2018-09-13 05:11:19'),
(213, '1872008', 5, 61, NULL, NULL, '2018-09-13 05:51:09', '2018-09-13 05:51:09'),
(214, '1872003', 3, 61, NULL, NULL, '2018-09-13 05:57:57', '2018-09-13 05:57:57'),
(215, '1872035', 6, 62, NULL, NULL, '2018-09-16 19:17:09', '2018-09-16 19:17:09'),
(216, '1872057', 5, 62, NULL, NULL, '2018-09-16 19:17:28', '2018-09-16 19:17:28'),
(217, '1872054', 6, 62, NULL, NULL, '2018-09-16 19:17:47', '2018-09-16 19:17:47'),
(218, '1872015', 5, 62, NULL, NULL, '2018-09-16 19:18:42', '2018-09-16 19:18:42'),
(219, '1872006', 7, 62, NULL, NULL, '2018-09-16 19:18:59', '2018-09-16 19:18:59'),
(220, '1872014', 6, 62, NULL, NULL, '2018-09-16 19:19:04', '2018-09-16 19:19:04'),
(221, '1872017', 5, 62, NULL, NULL, '2018-09-16 19:19:32', '2018-09-16 19:19:32'),
(222, '1872009', 2, 62, NULL, NULL, '2018-09-16 19:20:16', '2018-09-16 19:20:16'),
(223, '1872030', 4, 62, NULL, NULL, '2018-09-16 19:20:43', '2018-09-16 19:20:43'),
(224, '1872026', 2, 62, NULL, NULL, '2018-09-16 19:20:44', '2018-09-16 19:20:44'),
(225, '1872041', 5, 62, NULL, NULL, '2018-09-16 19:21:00', '2018-09-16 19:21:00'),
(226, '1872008', 5, 62, NULL, NULL, '2018-09-16 19:21:06', '2018-09-16 19:21:06'),
(227, '1872011', 5, 62, NULL, NULL, '2018-09-16 19:21:13', '2018-09-16 19:21:13'),
(228, '1872033', 4, 62, NULL, NULL, '2018-09-16 19:21:16', '2018-09-16 19:21:16'),
(229, '1872029', 3, 62, NULL, NULL, '2018-09-16 19:21:39', '2018-09-16 19:21:39'),
(230, '1872045', 4, 62, NULL, NULL, '2018-09-16 19:21:41', '2018-09-16 19:21:41'),
(231, '1872018', 7, 62, NULL, NULL, '2018-09-16 19:21:49', '2018-09-16 19:21:49'),
(232, '1872012', 5, 62, NULL, NULL, '2018-09-16 19:22:21', '2018-09-16 19:22:21'),
(233, '1872047', 6, 62, NULL, NULL, '2018-09-16 19:22:29', '2018-09-16 19:22:29'),
(234, '1872023', 1, 62, NULL, NULL, '2018-09-16 19:22:54', '2018-09-16 19:22:54'),
(235, '1872042', 1, 62, NULL, NULL, '2018-09-16 19:23:29', '2018-09-16 19:23:29'),
(236, '1872050', 6, 62, NULL, NULL, '2018-09-16 19:23:50', '2018-09-16 19:23:50'),
(237, '1872038', 7, 62, NULL, NULL, '2018-09-16 19:24:42', '2018-09-16 19:24:42'),
(238, '1872021', 3, 62, NULL, NULL, '2018-09-16 19:25:43', '2018-09-16 19:25:43'),
(239, '1872062', 2, 63, NULL, NULL, '2018-09-17 03:13:12', '2018-09-17 03:13:12'),
(240, '1872025', 6, 63, NULL, NULL, '2018-09-17 03:18:17', '2018-09-17 03:18:17'),
(241, '1872049', 7, 63, NULL, NULL, '2018-09-17 03:19:17', '2018-09-17 03:19:17'),
(242, '1872007', 6, 63, NULL, NULL, '2018-09-17 03:19:19', '2018-09-17 03:19:19'),
(243, '1872037', 3, 63, NULL, NULL, '2018-09-17 03:19:28', '2018-09-17 03:19:28'),
(244, '1872013', 3, 63, NULL, NULL, '2018-09-17 03:19:30', '2018-09-17 03:19:30'),
(245, '1872061', 5, 63, NULL, NULL, '2018-09-17 03:20:05', '2018-09-17 03:20:05'),
(246, '1872055', 4, 63, NULL, NULL, '2018-09-17 03:20:11', '2018-09-17 03:20:11'),
(247, '1872043', 3, 63, NULL, NULL, '2018-09-17 03:21:23', '2018-09-17 03:21:23'),
(248, '1872031', 4, 63, NULL, NULL, '2018-09-17 03:22:29', '2018-09-17 03:22:29'),
(249, '1872005', 4, 63, NULL, NULL, '2018-09-17 03:23:13', '2018-09-17 03:23:13'),
(250, '1872063', 5, 63, NULL, NULL, '2018-09-17 03:23:50', '2018-09-17 03:23:50'),
(251, '1872058', 7, 63, NULL, NULL, '2018-09-17 03:24:09', '2018-09-17 03:24:09'),
(252, '1872019', 1, 63, NULL, NULL, '2018-09-17 03:24:14', '2018-09-17 03:24:14'),
(253, '1872060', 4, 63, NULL, NULL, '2018-09-17 03:26:16', '2018-09-17 03:26:16'),
(254, '1872019', 6, 56, NULL, NULL, '2018-09-18 02:50:58', '2018-09-18 02:50:58'),
(255, '1772019', 3, 64, NULL, NULL, '2018-09-18 21:44:54', '2018-09-18 21:44:54'),
(256, '1872020', 8, 64, NULL, NULL, '2018-09-18 21:47:26', '2018-09-18 21:47:26'),
(257, '1772036', 1, 64, NULL, NULL, '2018-09-18 21:48:10', '2018-09-18 21:48:10'),
(258, '1872016', 6, 64, NULL, NULL, '2018-09-18 21:48:34', '2018-09-18 21:48:34'),
(259, '1872002', 6, 64, NULL, NULL, '2018-09-18 21:48:55', '2018-09-18 21:48:55'),
(260, '1872010', 5, 64, NULL, NULL, '2018-09-18 21:50:13', '2018-09-18 21:50:13'),
(261, '1872003', 5, 64, NULL, NULL, '2018-09-18 21:50:21', '2018-09-18 21:50:21'),
(262, '1872004', 8, 64, NULL, NULL, '2018-09-18 21:50:34', '2018-09-18 21:50:34'),
(263, '1872027', 5, 64, NULL, NULL, '2018-09-18 21:50:53', '2018-09-18 21:50:53'),
(264, '1872044', 4, 64, NULL, NULL, '2018-09-18 21:51:26', '2018-09-18 21:51:26'),
(265, '1872024', 0, 64, NULL, NULL, '2018-09-18 21:51:26', '2018-09-18 21:51:26'),
(266, '1872001', 4, 64, NULL, NULL, '2018-09-18 21:51:33', '2018-09-18 21:51:33'),
(267, '1872039', 4, 64, NULL, NULL, '2018-09-18 21:51:40', '2018-09-18 21:51:40'),
(268, '1872032', 4, 64, NULL, NULL, '2018-09-18 21:51:45', '2018-09-18 21:51:45'),
(269, '1872034', 4, 64, NULL, NULL, '2018-09-18 21:51:57', '2018-09-18 21:51:57'),
(270, '1872048', 5, 64, NULL, NULL, '2018-09-18 21:52:07', '2018-09-18 21:52:07'),
(271, '1872051', 6, 64, NULL, NULL, '2018-09-18 21:52:14', '2018-09-18 21:52:14'),
(272, '1872022', 3, 64, NULL, NULL, '2018-09-18 21:52:25', '2018-09-18 21:52:25'),
(273, '1872052', 2, 64, NULL, NULL, '2018-09-18 21:53:18', '2018-09-18 21:53:18'),
(274, '1872047', 4, 61, NULL, NULL, '2018-09-19 02:50:37', '2018-09-19 02:50:37'),
(275, '1872050', 1, 61, NULL, NULL, '2018-09-19 02:52:57', '2018-09-19 02:52:57'),
(276, '1872061', 7, 65, NULL, NULL, '2018-09-19 22:46:48', '2018-09-19 22:46:48'),
(277, '1872033', 7, 65, NULL, NULL, '2018-09-19 22:47:26', '2018-09-19 22:47:26'),
(278, '1872025', 8, 65, NULL, NULL, '2018-09-19 22:48:42', '2018-09-19 22:48:42'),
(279, '1872006', 6, 65, NULL, NULL, '2018-09-19 22:53:50', '2018-09-19 22:53:50'),
(280, '1872044', 4, 65, NULL, NULL, '2018-09-19 22:54:42', '2018-09-19 22:54:42'),
(281, '1872038', 7, 65, NULL, NULL, '2018-09-19 22:56:50', '2018-09-19 22:56:50'),
(282, '1872011', 6, 65, NULL, NULL, '2018-09-19 22:59:39', '2018-09-19 22:59:39'),
(283, '1872037', 4, 65, NULL, NULL, '2018-09-19 23:00:30', '2018-09-19 23:00:30'),
(284, '1872060', 8, 65, NULL, NULL, '2018-09-19 23:01:54', '2018-09-19 23:01:54'),
(285, '1872007', 5, 65, NULL, NULL, '2018-09-19 23:02:29', '2018-09-19 23:02:29'),
(286, '1872019', 8, 65, NULL, NULL, '2018-09-19 23:03:58', '2018-09-19 23:03:58'),
(287, '1872030', 6, 65, NULL, NULL, '2018-09-19 23:04:00', '2018-09-19 23:04:00'),
(288, '1872029', 8, 65, NULL, NULL, '2018-09-19 23:06:20', '2018-09-19 23:06:20'),
(289, '1872045', 6, 65, NULL, NULL, '2018-09-19 23:20:18', '2018-09-19 23:20:18'),
(290, '1872043', 3, 65, NULL, NULL, '2018-09-19 23:22:52', '2018-09-19 23:22:52'),
(291, '1872005', 8, 65, NULL, NULL, '2018-09-19 23:23:42', '2018-09-19 23:23:42'),
(292, '1872009', 5, 65, NULL, NULL, '2018-09-19 23:30:37', '2018-09-19 23:30:37'),
(293, '1872051', 6, 65, NULL, NULL, '2018-09-19 23:34:14', '2018-09-19 23:34:14'),
(294, '1872012', 7, 65, NULL, NULL, '2018-09-19 23:39:36', '2018-09-19 23:39:36'),
(295, '1872050', 8, 65, NULL, NULL, '2018-09-20 00:00:17', '2018-09-20 00:00:17'),
(296, '1872047', 8, 65, NULL, NULL, '2018-09-20 00:01:41', '2018-09-20 00:01:41'),
(297, '1872041', 8, 65, NULL, NULL, '2018-09-20 00:03:19', '2018-09-20 00:03:19'),
(298, '1872058', 8, 65, NULL, NULL, '2018-09-20 00:09:58', '2018-09-20 00:09:58'),
(299, '1872008', 6, 65, NULL, NULL, '2018-09-20 00:22:33', '2018-09-20 00:22:33'),
(300, '1872039', 8, 65, NULL, NULL, '2018-09-20 00:47:06', '2018-09-20 00:47:06'),
(301, '1872048', 8, 65, NULL, NULL, '2018-09-20 00:52:21', '2018-09-20 00:52:21'),
(302, '1872048', 8, 65, NULL, NULL, '2018-09-20 00:52:21', '2018-09-20 00:52:21'),
(303, '1872049', 8, 65, NULL, NULL, '2018-09-20 01:11:22', '2018-09-20 01:11:22'),
(304, '1872063', 8, 65, NULL, NULL, '2018-09-20 01:36:05', '2018-09-20 01:36:05'),
(305, '1872035', 8, 65, NULL, NULL, '2018-09-20 01:44:12', '2018-09-20 01:44:12'),
(306, '1872015', 8, 65, NULL, NULL, '2018-09-20 01:45:50', '2018-09-20 01:45:50'),
(307, '1872023', 8, 65, NULL, NULL, '2018-09-20 01:46:15', '2018-09-20 01:46:15'),
(308, '1872055', 8, 65, NULL, NULL, '2018-09-20 01:47:54', '2018-09-20 01:47:54'),
(309, '1872014', 8, 65, NULL, NULL, '2018-09-20 01:48:03', '2018-09-20 01:48:03'),
(310, '1872026', 8, 65, NULL, NULL, '2018-09-20 01:48:49', '2018-09-20 01:48:49'),
(311, '1872013', 7, 65, NULL, NULL, '2018-09-20 01:50:00', '2018-09-20 01:50:00'),
(312, '1872040', 1, 65, NULL, NULL, '2018-09-20 02:05:59', '2018-09-20 02:05:59'),
(313, '1872004', 7, 65, NULL, NULL, '2018-09-20 02:21:56', '2018-09-20 02:21:56'),
(314, '1872042', 3, 65, NULL, NULL, '2018-09-20 02:22:10', '2018-09-20 02:22:10'),
(315, '1772036', 8, 65, NULL, NULL, '2018-09-20 02:23:47', '2018-09-20 02:23:47'),
(316, '1872020', 8, 65, NULL, NULL, '2018-09-20 02:23:56', '2018-09-20 02:23:56'),
(317, '1872057', 8, 65, NULL, NULL, '2018-09-20 02:23:58', '2018-09-20 02:23:58'),
(318, '1872024', 5, 65, NULL, NULL, '2018-09-20 03:45:33', '2018-09-20 03:45:33'),
(319, '1872032', 6, 65, NULL, NULL, '2018-09-20 03:48:55', '2018-09-20 03:48:55'),
(320, '1872003', 6, 65, NULL, NULL, '2018-09-20 03:50:28', '2018-09-20 03:50:28'),
(321, '1872010', 6, 65, NULL, NULL, '2018-09-20 03:50:54', '2018-09-20 03:50:54'),
(322, '1872022', 8, 65, NULL, NULL, '2018-09-20 03:55:12', '2018-09-20 03:55:12'),
(323, '1872052', 8, 65, NULL, NULL, '2018-09-20 03:59:38', '2018-09-20 03:59:38'),
(324, '1872054', 7, 65, NULL, NULL, '2018-09-20 04:13:13', '2018-09-20 04:13:13'),
(325, '1872028', 6, 65, NULL, NULL, '2018-09-20 04:24:50', '2018-09-20 04:24:50'),
(326, '1872034', 7, 65, NULL, NULL, '2018-09-20 04:25:28', '2018-09-20 04:25:28'),
(327, '1872027', 5, 65, NULL, NULL, '2018-09-20 04:26:47', '2018-09-20 04:26:47'),
(328, '1872016', 7, 65, NULL, NULL, '2018-09-20 04:30:23', '2018-09-20 04:30:23'),
(329, '1872001', 8, 65, NULL, NULL, '2018-09-20 04:37:25', '2018-09-20 04:37:25'),
(330, '1872002', 8, 65, NULL, NULL, '2018-09-20 04:40:46', '2018-09-20 04:40:46'),
(331, '1872031', 5, 65, NULL, NULL, '2018-09-20 05:20:08', '2018-09-20 05:20:08'),
(332, '1872059', 3, 65, NULL, NULL, '2018-09-20 05:31:24', '2018-09-20 05:31:24'),
(333, '1872021', 8, 65, NULL, NULL, '2018-09-20 05:53:16', '2018-09-20 05:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `idSemester` int(11) NOT NULL,
  `namaSemester` varchar(50) NOT NULL,
  `actiiveSemester` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`idSemester`, `namaSemester`, `actiiveSemester`) VALUES
(1, 'GNJL1920', 1),
(2, 'GNP1920', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `fileName`, `created_at`, `updated_at`) VALUES
(21, 'ITPC', '20171208164321.jpg', '2018-07-16 07:21:43', '2018-07-16 07:21:43'),
(22, 'ACM-ICPC', '20180113195311.jpg', '2018-07-16 07:21:58', '2018-07-16 07:21:58'),
(25, 'POR', 'por.jpg', '2019-01-06 06:45:38', '2019-01-06 06:45:38'),
(26, 'POR', 'Add a heading (1).png', '2019-04-14 13:52:32', '2019-04-14 13:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `soalisian`
--

CREATE TABLE `soalisian` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `soal` longtext NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kunciJawaban` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `idBankSoal` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalisian`
--

INSERT INTO `soalisian` (`id`, `title`, `soal`, `gambar`, `kunciJawaban`, `kategori`, `level`, `idBankSoal`, `created_at`, `updated_at`) VALUES
(3, 'Soal1-Isian', 'Contoh soal1', '20180716035418.jfif', 'test1', 'programming', 'easy', 32, '2018-07-15 17:22:08', '2018-07-15 20:54:18'),
(4, 'Soal2-Isian', 'Contoh soal 2', '20180716002227.jpg', 'test2', 'programming', 'easy', 32, '2018-07-15 17:22:27', '2018-07-15 17:22:27'),
(5, 'Soal1-Isian', 'Contoh soal1', NULL, 'test1', 'programming', 'easy', 33, '2018-07-15 20:15:14', '2018-07-15 20:15:14'),
(6, 'Soal1-IsianCheck', 'contoh soal 1', '20180716033617.jpg', 'Readonly Text Input', 'programming', 'easy', 34, '2018-07-15 20:36:17', '2018-07-15 20:36:17'),
(7, 'Soal2-IsianCheck', 'contoh soal 2', '', 'Readonly Text Input', 'programming', 'easy', 34, '2018-07-15 20:36:37', '2018-07-15 20:36:37'),
(8, 'Soal1-Isian', 'Contoh soal1', NULL, 'test1', 'programming', 'easy', 35, '2018-07-15 20:40:44', '2018-07-15 20:40:44'),
(9, 'Soal-2', 'Berapakah balanced factor untuk tree di samping ini.', '20180718023231.PNG', '-1', 'programming', 'easy', 36, '2018-07-17 19:32:31', '2018-07-17 19:32:31'),
(10, 'Soal Graph-DFS', 'Hasil traversal Depth First Search (DFS) untuk graph di atas :', '20180725082324.png', 'ABECDFG', 'programming', 'easy', 37, '2018-07-25 01:23:24', '2018-07-25 01:23:24'),
(11, 'Matrix-Isian', 'Diberikan matriks berikut ini. Jika digunakan Coordinate Wise untuk menyimpan matriks sparse, maka isi array M yang menyimpan elemen matriks adalah :', '20180725083925.PNG', '3582374', 'programming', 'easy', 37, '2018-07-25 01:39:25', '2018-07-25 01:39:25'),
(12, 'AksiSeq-NilaiData-1', '# File : AksiS.py\r\n# Program  Aksi Sekuensial\r\n# Kamus Data\r\n# a : var. untuk menerima input (integer)\r\n# b : var. untuk menerima input (integer)\r\n# c,d : var. untuk perhitungan \r\n\r\na = int(input(\"Nilai a :\"))\r\nb = int(input(\"Nilai b :\"))\r\nc = (a+b)% a\r\nd =  a // c\r\nprint(\"Nilai c :\", c)\r\nprint(\"Nilai d :\", d)\r\n\r\nJika program di atas dijalankan dengan nilai input a = 7, dan b = 2, tuliskan nilai dari variabel c dan d  (jawaban dipisah dengan koma saja, tidak memakai spasi):', '', '2,3', 'programming', 'easy', 38, '2018-08-14 01:13:57', '2018-08-14 01:13:57'),
(13, 'Tulis Rumus-1', 'Dibaca input umur seorang anak dalam satuan hari. Akan dibuat program untuk menyatakan umur dalam satuan tahun dan bulan.\r\nContoh Input    :\r\nNama : Nani\r\nUmur (hari) : 2500\r\nOutput :  \r\nNani berumur 6 tahun 10 bulan. \r\n\r\nUntuk pembuatan program, disiapkan sbb :\r\nhari : variabel untuk input waktu dalam hari (integer)\r\ntahun : variabel untuk output dalam besaran tahun (integer)\r\nsatu tahun lamanya 365 hari\r\n\r\nTuliskan rumus untuk  tahun memakai variabel di atas (ditulis tanpa spasi):\r\ntahun = ................', '', 'hari//365', 'programming', 'easy', 38, '2018-08-14 01:15:39', '2018-08-14 01:15:39'),
(14, 'AksiSeq-NilaiData-2', '# File : AksiS.py\r\n# Program  Aksi Sekuensial\r\n# Kamus Data\r\n# a : var. untuk menerima input (integer)\r\n# b : var. untuk menerima input (integer)\r\n# c,d : var. untuk perhitungan \r\n\r\na = int(input(\"Nilai a :\"))\r\nb = int(input(\"Nilai b :\"))\r\nc = (a+b)//a\r\nd = (b – a) % c\r\ne = d/c\r\nprint(\"Nilai e :\", e)\r\n\r\nJika program di atas dijalankan dengan nilai input a = 50, dan b = 7, tuliskan nilai dari variabel e yang dicetak:', '', '0.625', 'programming', 'easy', 39, '2018-08-14 01:49:18', '2018-08-14 01:49:18'),
(15, 'Kondisional-and-or', 'Jika a = 7, b = 5, c = 3, d = \'a\' , dan e = \'x\' maka nilai dari pernyataan berikut :\r\n\r\n((a <= b)and(d==e)) or ((a > c)and (b+c > a))   adalah : ...................', '', 'True', 'programming', 'easy', 39, '2018-08-14 01:50:32', '2018-08-14 01:50:32'),
(16, 'TulisRumus-bulan', 'Dibaca input umur seorang anak dalam satuan hari. Akan dibuat program untuk menyatakan umur dalam satuan tahun dan bulan.\r\nContoh Input    :\r\nNama : Nani\r\nUmur (hari) : 2500\r\nOutput :  \r\nNani berumur 6 tahun 10 bulan. \r\n\r\nUntuk pembuatan program, disiapkan sbb :\r\nhari : variabel untuk input waktu dalam hari (integer)\r\nbulan : variabel untuk output dalam besaran bulan (integer)\r\nsatu bulan lamanya 30 hari\r\nsatu tahun lamanya 365 hari\r\n\r\nTuliskan rumus yang paling tepat untuk menghitung  bulan memakai variabel di atas (ditulis tanpa spasi):\r\nbulan = ................', '', '(hari%365)//30', 'programming', 'easy', 39, '2018-08-14 01:52:38', '2018-08-14 01:52:38'),
(17, 'IF-3', 'Pernyataan if di bawah ini akan mencetak bilangan terkecil antara a dan b.\r\nJika nilai a sama dengan nilai b, cetaklah nilai a.\r\n\r\nif  (...........):\r\n    print (\'Nilai terkecil :\',a)\r\nelse:  \r\n    print (\'Nilai terkecil :\',b)\r\n\r\nLengkapilah titik-titik pada kondisi if (ketik tanpa spasi) :', '', 'a<=b', 'programming', 'easy', 40, '2018-08-26 21:44:01', '2018-08-26 21:44:01'),
(18, 'If-elif-1', 'Ketentuan untuk perhitungan bonus adalah sbb : \r\nJika MK < 5 tahun, maka tidak dapat bonus; \r\nJika 5 <= MK < 10 tahun, maka Bonus = 50% ;\r\nJika 10 <= MK <20 tahun, maka bonus = 100% ; \r\nJika  MK>=20 tahun, maka Bonus =150%.\r\n\r\nPernyataan if untuk ketentuan di atas :\r\nif (mk < 5):   \r\n    bonus = 0\r\nelif (mk < 10):\r\n    bonus = 0.5\r\nelif (………..):\r\n    bonus = 1\r\nelse:\r\n    bonus = 1.5\r\n\r\nIsian yang paling tepat untuk bagian titik-titik dalam kondisi if adalah:', '', 'mk<20', 'programming', 'easy', 41, '2018-09-03 01:51:21', '2018-09-03 01:51:21'),
(19, 'WhilePos', 'Diberikan program berikut ini :\r\n   # File : WhileTrue.py\r\n   # Kamus Data\r\n   # x : var. utk input (integer)\r\n   # sum : var. hitung (integer)\r\n   # positif : var.kondisi (boolean)\r\n	\r\nsum = 0\r\npositif = True\r\nwhile (positif):\r\n    x=int(input())\r\n    if (x < 0):\r\n        positif =  False\r\n    else:\r\n        sum = sum + x\r\nprint(sum)\r\n\r\nJika data input x yang diberikan adalah 10, 5, -3, 2 maka nilai sum yang dicetak pada akhir program adalah :', '', '15', 'programming', 'easy', 42, '2018-09-09 21:19:40', '2018-09-09 21:19:40'),
(20, 'For-1', '# File : For.py\r\n# Kamus Data\r\n# N : var. input utk nilai N(integer)\r\n# i : var. counter utk pengendali for (integer)\r\n#hasil : var. utk perhitungan (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\nhasil = 10\r\nfor i in range (1,N,1):\r\n    if (i%2 != 0 and i%3 == 0):\r\n        hasil = hasil + i\r\nprint (hasil)\r\n\r\nJika diberikan input N = 10, tuliskan output yang dicetak program.\r\nTuliskan output, tanpa spasi.', '', '22', 'programming', 'easy', 43, '2018-09-19 01:57:28', '2018-09-19 01:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `soalpg`
--

CREATE TABLE `soalpg` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `soal` longtext NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `e` varchar(255) NOT NULL,
  `kunciJawaban` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `idBankSoal` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalpg`
--

INSERT INTO `soalpg` (`id`, `title`, `soal`, `gambar`, `a`, `b`, `c`, `d`, `e`, `kunciJawaban`, `kategori`, `level`, `idBankSoal`, `created_at`, `updated_at`) VALUES
(88, 'Soal1-PG', 'Contoh soal-1', '20180716035703.jfif', 'a', 'b', 'c', 'd', 'e', 'a', 'programming', 'easy', 31, '2018-07-15 17:18:36', '2018-07-15 20:57:03'),
(89, 'Soal2-PG', 'Contoh soal2', '20180716040140.jpg', 'a', 'b', 'c', 'd', 'e', 'a', 'sisteminformasi', 'easy', 31, '2018-07-15 17:21:18', '2018-07-15 21:01:40'),
(90, 'Soal1-PG', 'Contoh soal-1', NULL, 'a', 'b', 'c', 'd', 'e', 'a', 'programming', 'easy', 33, '2018-07-15 20:15:15', '2018-07-15 20:15:15'),
(91, 'Soal2-PG', 'Contoh soal2', '20180716002118.jpg', 'a', 'b', 'c', 'd', 'e', 'a', 'sisteminformasi', 'easy', 33, '2018-07-15 20:15:15', '2018-07-16 03:31:35'),
(92, 'Soal1-PG', 'Contoh soal-1', NULL, 'a', 'b', 'c', 'd', 'e', 'a', 'programming', 'easy', 35, '2018-07-15 20:40:44', '2018-07-15 20:40:44'),
(93, 'Soal2-PG', 'Contoh soal2', NULL, 'a', 'b', 'c', 'd', 'e', 'a', 'sisteminformasi', 'easy', 35, '2018-07-15 20:40:44', '2018-07-15 20:40:44'),
(94, 'Soal-1', 'Berapakah jumlah node daun dalam binary tree sbb :', '20180718022942.PNG', '4', '5', '6', '7', '8', '4', 'programming', 'easy', 36, '2018-07-17 19:29:42', '2018-07-17 19:29:42'),
(95, 'Soal Btree-Tambah-1', 'Pada gambar BTree(m=5) berikut ini, jika pada node A ditambahkan data 42, maka node A akan split menjadi dua node yaitu node yang terdiri dari:', '20180724090218.PNG', '20 34 42 dan 44 48', '20 34 dan 42 44', '20 34 dan 44 48', '20 44 dan 34 48', '20 42 dan 44 48', '20 34 dan 44 48', 'programming', 'easy', 37, '2018-07-24 02:02:18', '2018-07-24 02:02:18'),
(96, 'Soal Btree-Tambah-2', 'Pada gambar BTree(m=5) berikut ini, jika pada node A ditambahkan data 46, maka data di node Akar akan  menjadi :', '20180725080914.PNG', '20 50 85', '34 50 85', '46 50 85', '44 50 85', '48 50 85', '44 50 85', 'programming', 'easy', 37, '2018-07-25 01:09:14', '2018-07-25 01:09:14'),
(97, 'Soal Btree-Hapus', 'Pada gambar BTree(m=5) berikut ini, jika data 50 pada node akar dihapus, maka data di node akar menjadi :', '20180725081202.PNG', 'Hanya tinggal 85', '48 dan 85', '44 dan 85', '52 dan 85', '67 dan 85', '48 dan 85', 'programming', 'easy', 37, '2018-07-25 01:12:02', '2018-07-25 01:12:02'),
(98, 'Soal Graph-Memori', 'Struktur data yang dipakai untuk menyimpan graph dalam memori komputer adalah:', '20180725081632.PNG', 'List Linier', 'Array dua dimensi', 'Adjacency list', 'Adjacency matrix', 'Adjacency list atau adjacency matrix', 'Adjacency list atau adjacency matrix', 'programming', 'easy', 37, '2018-07-25 01:16:32', '2018-07-25 01:16:32'),
(99, 'Soal Graph-BFS', 'Hasil traversal Bread First Search (BFS) untuk graph berikut ini adalah :', '20180725082210.png', 'ABFEDGC', 'ABECDFG', 'ABCEDFG', 'ABFDEGC', 'ABCDEFG', 'ABFEDGC', 'programming', 'easy', 37, '2018-07-25 01:22:10', '2018-07-25 01:22:10'),
(100, 'Soal Matrix-PG', 'Diberikan matriks berikut ini. Jika digunakan Coordinate Wise untuk menyimpan matriks sparse, maka isi array Row adalah :', '20180725083444.PNG', '0012223', '0011223', '0012233', '0112223', '0011123', '0012223', 'programming', 'easy', 37, '2018-07-25 01:34:44', '2018-07-25 01:34:44'),
(101, 'Soal Hash-1', 'Diberikan tabel hash berikut ini yang menggunakan linear probing untuk mengatasi kolisi. Jika ditambahkan kunci bernilai 45 dan fungsi h(45) = 10, maka kunci 45 akan disimpan pada lokasi ke :', '20180725084141.PNG', '1', '2', '3', '8', '9', '1', 'programming', 'easy', 37, '2018-07-25 01:41:41', '2018-07-25 01:41:41'),
(102, 'Soal Hash-2', 'Diberikan beberapa kunci yang akan disimpan dalam tabel hash sbb: 12, 25, 4, 9, 17.\r\nUkuran tabel hash adalah 7, dan fungsi hash yang dipakai adalah h(K) = K mod M, \r\ndimana K = kunci dan M = ukuran tabel, mod adalah sisa pembagian bulat.\r\nBeberapa kunci yang mengalami kolisi adalah :', '', '12 dan 25', '25 dan 4', '4 dan 9', '9 dan 17', '12 dan 17', '25 dan 4', 'programming', 'easy', 37, '2018-07-25 01:43:56', '2018-07-25 01:43:56'),
(103, 'TIPE DATA-1', 'Diberikan program sbb :\r\n# File : Tipe-1.py\r\n# Program Kuis1 - Aksi Sequential\r\n# Kamus Data\r\n# x : var. utk perhitungan\r\n# y : var. utk input \r\n# z : var. utk input \r\n \r\ny = int(input(\" Nilai y :\"))\r\nz = int(input(\" Nilai z :\"))\r\n\r\nx = y / z\r\nz = y % z\r\n\r\nprint (\"Nilai x : \",x)\r\nprint (\"Nilai z baru : \",z)\r\nJika input untuk y = 10 dan z = 5, maka output yang dihasilkan  untuk nilai x dan z adalah :', '', 'x = 2; z = 2', 'x = 2; z = 0', 'x = 2.0 ; z = 0', 'x = 2.0; z = 2', 'x = 2.0; z = 5', 'x = 2.0 ; z = 0', 'programming', 'easy', 38, '2018-08-14 00:47:34', '2018-08-14 00:47:34'),
(104, 'TIPE DATA-2', 'Diberikan program berikut ini :\r\n# File : Tipe-2.py\r\n# Program  Tipe data\r\n# Kamus Data\r\n# a : var. untuk menerima input (integer)\r\n# b : var. untuk menerima input (integer)\r\n# c,e,f : var. untuk perhitungan \r\na = int(input(\"Nilai a :\"))\r\nb = int(input(\"Nilai b :\"))\r\nc = (a+b)% a\r\ne = (a+c)/b\r\nf = (a <= d)\r\nprint(\"Nilai c :\", c)\r\nprint(\"Nilai e :\", e)\r\nprint(\"Nilai f :\", f)\r\nTipe data dari variabel c, e, f adalah :', '', 'integer, integer, boolean', 'integer, float, boolean', 'float, integer, boolean', 'float, float, boolean', 'semua bertipe integer', 'integer, float, boolean', 'programming', 'easy', 38, '2018-08-14 00:49:39', '2018-08-14 00:49:39'),
(105, 'Rumus-1', 'Diberikan rumus sebagai berikut :\r\n \r\nPenulisan yang paling tepat untuk  rumus tersebut adalah :', '20180814081854.PNG', 'a(b-c)/b+d', 'a*(b-c)/b+d', 'a*(b-c)/(b+d)', '(a*(b-c))/b+d', 'a(b-c)/(b+d)', 'a*(b-c)/(b+d)', 'programming', 'easy', 38, '2018-08-14 01:05:59', '2018-08-14 01:18:54'),
(106, 'Program AksiT', 'Diberikan  program  sebagai berikut :\r\n# File : AksiT.py\r\n# Kamus Data\r\n# a : var. input utk nilai a(integer)\r\n# b : var. input utk nilai b (integer)\r\n# m : var. utk proses (integer)\r\n\r\na = int(input(\"a :\"))\r\nb = int(input(\"b :\"))\r\nm = a\r\na = b\r\nb = m\r\n\r\nprint (a,b)\r\n\r\nBila diberikan data masukan 3 untuk a, dan 7 untuk b maka nilai a dan b yang dicetak pada akhir program  adalah :', '', '3 7', '7 3', '7 7', '3 3', 'semua pilihan salah', '7 3', 'programming', 'easy', 38, '2018-08-14 01:08:13', '2018-08-14 01:08:13'),
(107, 'ProgramHitung', 'Diberikan program sebagai berikut :\r\n# File : Hitung.py\r\n# Kamus Data\r\n# Bil : var. input utk nilai Bil(integer)\r\n# SR : var. utk nilai SR (integer)\r\n# SS : var. utk nilai SS (integer)\r\n# LP : var. utk nilai LP (integer)\r\n\r\nBil = int(input(\"Nilai Bil:\"))\r\nSR = Bil // 100\r\nSS = Bil % 100\r\nLP = SS //50\r\nSS = SS % 50\r\nprint(SR,LP)\r\n\r\nJika input untuk data Bil adalah 367 maka keluaran yang dicetak program adalah :', '', '3  6', '3  7', '3  1', '6  3', '1  3', '3  1', 'programming', 'easy', 38, '2018-08-14 01:10:19', '2018-08-14 01:10:19'),
(108, 'Kondisional-1', 'Jika a = 2, b = 5,  dan kar = ’a’, maka nilai dari pernyataan berikut\r\n\r\n((a <= b) and (kar!=’c’))    adalah :', '', 'True', 'False', '2', '5', '\'a\'', 'True', 'programming', 'easy', 38, '2018-08-14 01:12:00', '2018-08-14 01:12:00'),
(109, 'TIPE DATA-3', 'Diberikan program berikut ini :\r\n# File : Tipe-2.py\r\n# Program  Tipe data\r\n# Kamus Data\r\n# a : var. untuk menerima input (integer)\r\n# b : var. untuk menerima input (integer)\r\n# c,e,f : var. untuk perhitungan \r\na = int(input(\"Nilai a :\"))\r\nb = int(input(\"Nilai b :\"))\r\ne = (a+c)//b\r\nf = (a == b) or (c < e)\r\nc = (a+b)/ a\r\nprint(\"Nilai c :\", c)\r\nprint(\"Nilai e :\", e)\r\nprint(\"Nilai f :\", f)\r\nTipe data dari variabel c, e, f adalah :', '', 'integer, integer, boolean', 'integer, float, boolean', 'float, integer, boolean', 'float, boolean, integer', 'integer, boolean, float', 'float, integer, boolean', 'programming', 'easy', 39, '2018-08-14 01:34:07', '2018-08-14 01:34:07'),
(110, 'RumusPG-2', 'Diberikan rumus sebagai berikut :\r\n \r\nPenulisan yang paling tepat untuk  rumus tersebut adalah :', '20180814084500.PNG', 'a(b-c)(d*d-b)/b+d(c-a)', 'a*(b-c)*(d*d-b)/b+d*(c-a)', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', '(a*(b-c)*(d*d-b))/b+d*(c-a)', '(a*(b-c)*(d*d-b))/(b+d)*(c-a)', '(a*(b-c)*(d*d-b))/(b+d*(c-a))', 'programming', 'easy', 39, '2018-08-14 01:36:19', '2018-08-14 01:45:00'),
(111, 'ProgramAksiM', 'Diberikan  program  sebagai berikut :\r\n# File : AksiM.py\r\n# Kamus Data\r\n# a : var. input utk nilai a(integer)\r\n# b : var. input utk nilai b (integer)\r\n# m : var. utk proses (integer)\r\n\r\na = int(input(\"a :\"))\r\nb = int(input(\"b :\"))\r\nc = int(input(\"c :\"))\r\nm = c\r\nc = b\r\nb = a\r\na = m\r\nprint (a,b,c)\r\n\r\nBila diberikan data masukan 3 untuk a, dan 5 untuk b, dan 7 untuk c maka nilai a, b, c yang dicetak pada akhir program  adalah :', '', '3 7 5', '7 5 3', '7 3 5', '5 7 3', '3 5 7', '7 3 5', 'programming', 'easy', 39, '2018-08-14 01:40:15', '2018-08-14 01:44:34'),
(112, 'ProgramHitungL', 'Program Berikut ini akan menerima input suatu bilangan integer maksimum 4 angka, kemudian menghitung angka ribuan, ratusan, dan puluhan.\r\nContoh :\r\nInput :\r\nBil = 4357\r\nOutput :\r\nRibuan : 4\r\nRatusan : 3\r\nPuluhan : 5\r\n\r\n# File : HitungL.py\r\n# Kamus Data\r\n# Bil : var. input utk nilai Bil(integer)\r\n# rb : var. utk nilai ribuan (integer)\r\n# rt : var. utk nilai ratusan (integer)\r\n# pl : var. utk nilai puluhan (integer)\r\n# SS : var. utk perhitungan (integer)\r\n\r\nBil = int(input(\"Nilai Bil:\"))\r\nrb = Bil // 1000\r\nSS = Bil % 1000   \r\nrt = SS //100\r\nSS = ...............\r\npl = ...............\r\nprint(\"Ribuan:\"rb)\r\nprint(\"Ratusan:\"rt)\r\nprint(\"Puluhan:\"pl)\r\n\r\nPilihlah, rumus mana yang paling tepat untuk melengkapi program di atas.', '', 'SS = Bil % 100; pl = SS % 10', 'SS = SS % 100; pl = SS // 10', 'SS = SS % 100; pl = Bil // 10', 'SS = Bil % 100; pl = SS // 10', 'SS = Bil % 100; pl = Bil // 10', 'SS = SS % 100; pl = SS // 10', 'programming', 'easy', 39, '2018-08-14 01:43:48', '2018-08-14 01:44:18'),
(113, 'UrutanRumus', 'Diberikan program sebagai berikut :\r\n# File : HitungJMD.py\r\n# Kamus Data\r\n# DD : var. input utk besaran detik(integer)\r\n# j: var. utk nilai jam (integer)\r\n# m : var. utk nilai menit (integer)\r\n# d : var. utk nilai detik (integer)\r\n# S : var. utk perhitungan (integer)\r\n\r\nDD = int(input(\"Detik:\"))\r\nj = DD // 3600       	#rumus-1\r\nS = DD % 3600      #rumus-2\r\nm = S //60	#rumus-3\r\nd = S % 60	#rumus-4\r\nprint(j,m,d)\r\n\r\nContoh :\r\nInput :\r\nDetik = 4000\r\nOutput :\r\n1 6 40\r\nManakah dari rumus-rumus di dalam program di atas yang BOLEH ditukar URUTAN Penulisannya :', '', 'Rumus-1 dengan rumus-3', 'Rumus-2 dengan rumus-3', 'Rumus-1 dengan rumus-4', 'Rumus-1 dengan rumus-2', 'Rumus-2 dengan rumus-4', 'Rumus-1 dengan rumus-2', 'programming', 'easy', 39, '2018-08-14 01:47:22', '2018-08-14 01:47:22'),
(114, 'IF-1', 'Diberikan  program  sebagai berikut :\r\n#File : IF.py\r\n#a : var.integer\r\n#b : var.integer\r\n\r\na=int(input(\"a:\"))\r\nb=int(input(\"b:\"))\r\nif (a <= b):\r\n    a = a - 3\r\na = a + 1\r\nprint(a)\r\nBila diberikan data masukan 5, 2 untuk a  dan b, maka nilai a  yang dicetak pada akhir program  adalah :', '', '5', '3', '2', '6', '4', '6', 'programming', 'easy', 40, '2018-08-24 01:54:01', '2018-08-24 01:54:01'),
(115, 'IF-2', 'Diberikan  program  sebagai berikut :\r\n# Kamus Data\r\n# a : var. input utk nilai a(integer)\r\n# b : var. input utk nilai b(integer)\r\na = int(input(\"a :\"))\r\nb = int(input(\"b :\"))\r\n\r\nif (a >= b):\r\n    b = b+2\r\nelse:\r\n    a = a-3\r\nprint(a,b)\r\n\r\nBila diberikan data masukan 7 dan 3 untuk a  dan b, maka nilai a dan b yang dicetak pada akhir program  adalah :', '', '4  5', '7  5', '5  4', '4  3', '5  7', '7  5', 'programming', 'easy', 40, '2018-08-24 01:59:04', '2018-08-24 01:59:04'),
(116, 'IF-3', 'Diberikan  program  sebagai berikut :\r\n# Kamus Data\r\n# a : var. input utk nilai a(integer)\r\n# b : var. input utk nilai b(integer)\r\na = int(input(\"a :\"))\r\nb = int(input(\"b :\"))\r\n\r\nif (a >= b):\r\n    b = b+2\r\nelse:\r\n    a = a-3\r\nprint(a,b)\r\n\r\nBila diberikan data masukan 3 dan 5 untuk a  dan b, maka nilai a dan b yang dicetak pada akhir program  adalah :', '', '3  7', '0  7', '0  5', '5  0', '7  3', '0  5', 'programming', 'easy', 40, '2018-08-24 02:01:53', '2018-08-24 02:02:10'),
(117, 'IF-and-1', 'Diberikan program sbb :\r\n# Program kasus-and\r\n# x,y : var. integer\r\nx = int(input())\r\ny = int(input())\r\nif (x <= 5) and (y > 0):\r\n    x = x + 3\r\nelse:\r\n    y = y - 5\r\nprint(x,y)\r\nJika program di atas dijalankan untuk input x = 2 dan y = 9, maka output yang dicetak :', '', '5 9', '5 4', '2 4', '2 9', '9 5', '5 9', 'programming', 'easy', 40, '2018-08-26 21:36:02', '2018-08-26 21:36:02'),
(118, 'If-or-1', 'Diberikan program sbb :\r\n# Program kasus-or\r\n# x,y : var. integer\r\nx = int(input())\r\ny = int(input())\r\nif (x <= 5) or (y > 0):\r\n    x = x + 3\r\nelse:\r\n    y = y - 5\r\nprint(x, y)\r\nJika program dijalankan dengan input x = 6 dan y = -1, maka output yang dicetak :', '', '6 -1', '6 -6', '9 -1', '9 -6', '2  1', '6 -6', 'programming', 'easy', 40, '2018-08-26 21:38:16', '2018-08-26 21:38:16'),
(119, 'Kondisi-if-1', 'Pernyataan if yang paling tepat untuk memeriksa apakah 0 <= x <= n adalah :', '', 'if (x >= 0) or (x <= n):', 'if (x >= 0) and (x <= n):', 'if (x <= 0) or (x >= n):', 'if (x <= 0) and (x >= n):', 'Semua salah', 'if (x >= 0) and (x <= n):', 'programming', 'easy', 40, '2018-08-26 21:40:20', '2018-08-26 21:44:57'),
(120, 'If-nested-1', 'Diberikan program berikut ini :\r\n\r\n# Program If Nested\r\n# a,b : var.integer\r\na = int(input())\r\nb = int(input())\r\nif (a > 10 - b):\r\n    if (b % 2 == 0):\r\n        print(a + b)\r\n    else:\r\n        print(a * b)\r\nelse:\r\n    print(a // b)\r\nJika program dijalankan dengan input a = 7 dan b = 2, maka output yang dicetak :\r\n9\r\n14\r\n3\r\n3.5\r\n1', '', '9', '14', '3', '3.5', '1', '3', 'programming', 'easy', 40, '2018-08-26 21:42:16', '2018-08-26 21:42:16'),
(121, 'If-Nested-2', 'Diberikan program sebagai berikut :\r\nx=int(input())\r\ny=int(input())\r\nz=int(input())\r\nif (x > y):\r\n    if (y > z):\r\n        if (x > z):\r\n            print(x+y)\r\n        else: print(y+z)\r\n    else:  print(x+z)\r\nelse: print(x+y+z)\r\nBila diberikan data masukan 5, 3, 4 untuk x, y, dan z, berapakah nilai yang dicetak pada layar :', '', '8', '9', '7', '12', '11', '9', 'programming', 'easy', 41, '2018-09-03 01:25:28', '2018-09-03 01:25:28'),
(122, 'If-Nested-3', 'Diberikan program sebagai berikut :\r\nx=int(input())\r\ny=int(input())\r\n\r\nif (x - y < 10):\r\n    if (x > 10) and (x < 50):\r\n        x = x + y\r\n    else:\r\n        x = x - y\r\nelif (y < 0) or (y > 100):\r\n    y = y % x\r\nelse:\r\n    y = y // x\r\nprint (x,y)\r\nBila diberikan data masukan 5 dan 2 untuk x dan y, maka nilai x dan y yang dicetak pada layar  adalah', '', '7  2', '3  5', '5  1', '3  2', '5  2', '3  2', 'programming', 'easy', 41, '2018-09-03 01:28:59', '2018-09-03 01:28:59'),
(123, 'If-kondisi-2', 'Pernyataan if yang paling tepat untuk memeriksa apakah x bilangan ganjil adalah :', '', 'if(x // 2 == 1):', 'if(x // 2 == 0):', 'if(x % 2 == 1):', 'if(x % 2 == 0):', 'if(x / 2 == 0):', 'if(x % 2 == 1):', 'programming', 'easy', 41, '2018-09-03 01:40:08', '2018-09-17 23:00:35'),
(124, 'If-nested-error', '# File : IFNested.py \r\n# Program IF banyak kasus\r\n# Kamus Data\r\n# a : var. input  (integer)\r\n# b : var. input  (integer)\r\na = int(input(\"Nilai a :\"))	\r\nb = int(input(\"Nilai b :\"))\r\nif (a - b >= 10): 		#baris-1\r\n    a = a % (a - b)		#baris-2\r\nelse:				#baris-3\r\n    if (a > 0) and (b <= 20)	#baris-4\r\n        a = a % b		#baris-5\r\n        b = b – a		#baris-6\r\n    else  b = a // b		#baris-7\r\nprint (\"a = \",a,\"b = \",b)\r\n\r\nKesalahan sintaks ditemukan pada baris ke :', '', '1 dan 3', '2 dan 5', '4 dan 7', '4 dan 6', '2 dan 7', '4 dan 7', 'programming', 'easy', 41, '2018-09-03 01:42:19', '2018-09-03 01:42:19'),
(125, 'If-kondisi-3', '#Program Kondisi IF\r\n#x : var.input (integer)\r\n\r\nx = int(input())\r\nif (...........................):\r\n        print(\"nilai x di antara 10 sampai dengan 45\")\r\nelse:\r\n        print(\"nilai x lebih kecil 10 atau lebih besar 45\")\r\nPernyataan kondisi yang paling tepat untuk if di atas:', '', 'if (x >= 10) or (x <= 45):', 'if (x >= 10) and (x <= 45):', 'if (x <= 10) or (x >= 45):', 'if (x <= 10) and (x >= 45):', 'if (x < 10) and (x > 45):', 'if (x >= 10) and (x <= 45):', 'programming', 'easy', 41, '2018-09-03 01:45:04', '2018-09-03 01:45:04'),
(126, 'If-kondisi-4', 'Pernyataan kondisi yang paling tepat untuk memeriksa apakah bilangan A habis dibagi 3 tapi tidak habis dibagi 5 adalah :', '', 'if (A%3==0) or (A%5!=0):', 'if (A%3==0) and (A%5!=0):', 'if (A%3>0) or (A%5!=0):', 'if (A%3>0) and (A%5!=0):', 'if (A%3!=0) or (A%5==0):', 'if (A%3==0) and (A%5!=0):', 'programming', 'easy', 41, '2018-09-03 01:47:19', '2018-09-03 01:47:19'),
(127, 'If-max3', 'Berikut ini adalah program untuk menentukan bilangan terbesar dari 3 bilangan x1,x2,x3.\r\n# File: If3.py\r\n# Kamus Data\r\n# x1,x2,x3 : var. input utk nilai x1,x2,x3(integer)\r\n# m : var. bantu (integer)\r\n\r\nx1 = int(input(\"x1 :\"))\r\nx2 = int(input(\"x2 :\"))\r\nx3 = int(input(\"x3 :\"))\r\n\r\nif (x1 > x2):   #if-1\r\n    m = x1\r\nelse:\r\n    m = x2\r\n\r\nif (……….):    #if-2\r\n    m = x3\r\nprint(\"m :\",m)\r\nIsian yang paling tepat untuk bagian titik-titik dalam kondisi if-2 adalah:', '', 'x3 > x2', 'x3 > x1', 'm < x3', 'x1 < x3', 'm > x3', 'm < x3', 'programming', 'easy', 41, '2018-09-03 01:49:54', '2018-09-03 01:49:54'),
(128, 'while-1', 'Diberikan program berikut ini :\r\n# File : While1.py\r\n# Kamus Data\r\n# x : var. counter utk pengendali while (integer)\r\n\r\nx = int(input(\"Nilai x :\"))\r\n\r\nwhile (x > 0):\r\n    x = x - 3\r\nprint(x)\r\nJika nilai x yang diinput adalah 10, maka nilai x yang dicetak pada akhir program adalah :', '', '0', '-2', '1', '-1', '2', '-2', 'programming', 'easy', 42, '2018-09-09 20:58:13', '2018-09-09 20:58:30'),
(129, 'WhileDeret-1', 'Diberikan :\r\n# File : WhileDeret.py\r\n# Kamus Data\r\n# i : var. counter utk pengendali while (integer)\r\n# N : var. input (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\ni = 10\r\n\r\nwhile (i >= N):\r\n    print(i,end=\' \')\r\n    i = i – 1\r\nJika N yang diinput adalah 6, maka deretan nilai i yang dicetak oleh program di atas adalah :', '', '10 9 8 7 6 5', '10 9 8 7 6', '9 8 7 6 5', '9 8 7 6', 'Semua salah', '10 9 8 7 6', 'programming', 'easy', 42, '2018-09-09 21:00:36', '2018-09-09 21:00:36'),
(130, 'WhileDeret-2', 'Diberikan :\r\n# File : WhileDeret.py\r\n# Kamus Data\r\n# i : var. counter utk pengendali while (integer)\r\n# N : var. input (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\ni = 10\r\nwhile (i > N):\r\n    print(i,end=\' \')\r\n    i = i + 1\r\nJika N yang diinput adalah 5 maka yang terjadi pada program di atas adalah :', '', 'Deretan nilai yang dicetak adalah 10,11,12,13,14,15', 'Deretan nilai yang dicetak adalah 5,6,7,8,9,10', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', 'Tidak ada nilai yang dicetak, karena kondisi (i > N)  tidak pernah dipenuhi.', 'Semua salah', 'Deretan nilai yang dicetak adalah 10,11,12,13,14, ... sampai tak terbatas karena kondisi    (i > N) selalu dipenuhi.', 'programming', 'easy', 42, '2018-09-09 21:03:01', '2018-09-09 21:03:01'),
(131, 'whileDeret-3', 'Diberikan :\r\n# File : WhileDeret.py\r\n# Kamus Data\r\n# i : var. counter utk pengendali while (integer)\r\n# N : var. input (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\ni = 1\r\n\r\nwhile (i < N):\r\n    print(i,end=\' \')\r\n   	\r\nJika  N yang diinput adalah 5 maka  pernyataan yang benar dalam pelaksanaan program di atas adalah :\r\na.	Diberikan :\r\n# File : WhileDeret.py\r\n# Kamus Data\r\n# i : var. counter utk pengendali while (integer)\r\n# N : var. input (integer)\r\n\r\nN = int(input(\"Nilai N :\"))\r\ni = 1\r\n\r\nwhile (i < N):\r\n    print(i,end=\' \')\r\n   	\r\nJika  N yang diinput adalah 5 maka  pernyataan yang benar dalam pelaksanaan program di atas adalah :', '', 'Deretan nilai yang dicetak adalah 1,2,3,4', 'Deretan nilai yang dicetak adalah 1,2,3,4,5', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', 'Tidak ada nilai yang dicetak, karena kondisi (i < N) tidak pernah dipenuhi.', 'Semua salah', 'Terjadi looping, karena kondisi (i < N) selalu dipenuhi', 'programming', 'easy', 42, '2018-09-09 21:08:18', '2018-09-09 21:08:18'),
(132, 'While-kondisi1', 'Diberikan :\r\n# File : WhileDeret.py\r\n# Kamus Data\r\n# i : var. counter utk pengendali while (integer)\r\n# N : var. pembatas (integer)\r\n\r\nN = 5\r\ni = 0\r\n\r\nwhile (………............……):\r\n    i = i + 1\r\n    print(i,end=\' \')\r\n\r\nSupaya keluaran yang dicetak program di atas adalah 1 2 3 4 5 6 maka kondisi while yang paling tepat adalah :', '', 'while (i < N)', 'while (i <= N)', 'while (i > N)', 'while (i >= N)', 'Semua salah', 'while (i <= N)', 'programming', 'easy', 42, '2018-09-09 21:10:53', '2018-09-09 21:10:53'),
(133, 'while999', 'Diberikan :\r\n# File : While999.py\r\n# Kamus Data\r\n# sum : var. utk jumlah (integer)\r\n# x : var. input (integer)\r\n\r\nsum = ........             #{1}\r\nx = int(input())\r\n\r\nwhile (x != 999):\r\n    sum = ..............   #{2}\r\n    x = int(input())\r\nprint(sum)    	\r\nProgram di atas akan menghitung jumlah semua data x yang dibaca kecuali x = 999.\r\nSebagai contoh bila input x adalah 20, 10, 45, 999 maka jumlah yang dicetak di akhir program adalah 75.\r\nMaka pasangan instruksi yang paling tepat adalah :', '', 'sum = 0 	; sum = sum + 1', 'sum = 0 	; sum = sum + x', 'sum = 1 	; sum = sum + 1', 'sum = 1 	; sum = sum + x', 'sum = x 	; sum = sum + x', 'sum = 0 	; sum = sum + x', 'programming', 'easy', 42, '2018-09-09 21:14:40', '2018-09-09 21:14:40'),
(134, 'whileVal', 'Diberikan \r\n# File : WhileVal.py\r\n# Kamus Data\r\n# x : var. utk input (integer)\r\n   \r\n   x = int(input())\r\n   while ( .................................):\r\n	x = int(input())\r\n   print(x)\r\n	\r\nAgar program validasi di atas dapat memperoleh nilai input X antara 0 sampai dengan 100,\r\nSebagai contoh jika nilai x yang diinput adalah 123, -8, 50, maka x yang diprint adalah 50.\r\nmaka kondisi di dalam while yang paling tepat adalah  :', '', '(x <= 0) and (x <= 100)', '(x >= 0) and (x <= 100)', '(x <= 0) or (x >= 100)', '(x >= 0) or (x <= 100)', '(x >= 0) and (x >= 100)', '(x <= 0) or (x >= 100)', 'programming', 'easy', 42, '2018-09-09 21:17:13', '2018-09-09 21:17:13'),
(135, 'IF-genap', 'Pernyataan if yang paling tepat untuk memeriksa apakah x bilangan genap adalah :', '', 'if(x // 2 != 1):', 'if(x // 2 != 0):', 'if(x % 2 != 1):', 'if(x % 2 != 0):', 'if(x / 2 != 0):', 'if(x % 2 != 1):', 'programming', 'easy', 43, '2018-09-19 01:39:14', '2018-09-19 01:39:14'),
(136, 'IF-range', '#Program Kondisi IF\r\n#x : var.input (integer)\r\n\r\nx = int(input())\r\nif (...........................):\r\n        print(\"nilai x lebih kecil 10 atau lebih besar 45\")\r\nelse:\r\n        print(\"nilai x di antara 10 sampai dengan 45\")\r\n\r\nPernyataan kondisi yang paling tepat untuk if di atas:', '', 'if (x >= 10) or (x <= 45):', 'if (x >= 10) and (x <= 45):', 'if (x <= 10) or (x >= 45):', 'if (x < 10) and (x > 45):', 'if (x < 10) or (x > 45):', 'if (x < 10) or (x > 45):', 'programming', 'easy', 43, '2018-09-19 01:41:40', '2018-09-19 01:41:40'),
(137, 'IF-terbesar', 'Berikut ini adalah program untuk menentukan bilangan terbesar dari 3 bilangan x1,x2,x3.\r\n# File: If3.py\r\n# Kamus Data\r\n# x1,x2,x3 : var. input utk nilai x1,x2,x3(integer)\r\n# m : var. bantu (integer)\r\n\r\nx1 = int(input(\"x1 :\"))\r\nx2 = int(input(\"x2 :\"))\r\nx3 = int(input(\"x3 :\"))\r\n\r\nif (………….):   #if-1\r\n    m = x1\r\nelse:\r\n    m = x2\r\n\r\nif (m < x3):    #if-2\r\n    m = x3\r\nprint(\"m :\",m)\r\nIsian yang paling tepat untuk bagian titik-titik dalam kondisi if-1 adalah:', '', 'x3 > x2', 'x3 > x1', 'x1 > x2', 'x1 < x2', 'x1 > x3', 'x1 > x2', 'programming', 'easy', 43, '2018-09-19 01:43:56', '2018-09-19 01:43:56'),
(138, 'IF-sintaks-2', '# File:IF1.py\r\n# Program IF banyak kasus\r\n# Kamus Data\r\n# a : var. input  (integer)\r\n# b : var. input  (integer)\r\na = int(input(\"Nilai a :\"))\r\nb = int(input(\"Nilai b :\"))\r\nif ( a // b < 10):	  	        #baris-1\r\n    if (a > 10) OR (a < 50):   	#baris-2   \r\n        a = a + b		        	#baris-3\r\n    else:				        #baris-4\r\n        b = b – a			#baris-5\r\nelif:				                #baris-6\r\n    b = a % b			       #baris-7\r\nprint (\"Nilai a: \",a,\"Nilai b\",b)\r\n\r\nKesalahan sintaks ditemukan pada baris ke :', '', '1 dan 2', '2 dan 4', '2 dan 6', '4 dan 6', '1 dan 6', '2 dan 6', 'programming', 'easy', 43, '2018-09-19 01:46:32', '2018-09-19 01:46:32'),
(139, 'While-hitungF', 'Diberikan :\r\n#File : While-F.py  \r\n# Program While-HitungF\r\n# Kamus Data\r\n# F : var. utk hasil perhitungan(integer)\r\n# i : var. counter utk pengendali while (integer)\r\n#N: var.input (integer)\r\nN = int(input())\r\nF = ………….  #isian1\r\ni = 1\r\nwhile (i <= N):\r\n	F = ……………  #isian2\r\n	i = i + 1\r\nprint(F)\r\nProgram di atas akan menghitung N! yaitu 1*2*3* ... * (N-1) * N\r\nContoh jika N = 3, maka F = 1*2*3 = 6\r\nMaka pasangan instruksi yang paling tepat untuk isian di atas adalah :', '', 'F = 0 	; F = F * i', 'F = 0 	; F = F * N', 'F = 1 	; F = F * i', 'F = 1 	; F = F * N', 'F = N	; F = F * i', 'F = 1 	; F = F * i', 'programming', 'easy', 43, '2018-09-19 01:50:26', '2018-09-19 01:50:26'),
(140, 'While-teks', '#File:printteks.py\r\n#Program untuk menentukan output dari program\r\n#a:var penerima input(int)\r\n#i:var pencacah pengulangan(int)\r\n\r\na=int(input(\"a:\"))\r\n\r\ni=1\r\nwhile(i<a):\r\n    if(i%3==0):\r\n        print(\"Da\",end=\"\")\r\n    elif(i%5==0):\r\n        print(\"Di\",end=\"\")\r\n    i+=2\r\n\r\nJika diberikan nilai 7 untuk input a, maka keluaran yang dicetak adalah :', '', 'Da', 'Di', 'DaDi', 'DiDa', 'Dada', 'DaDi', 'programming', 'easy', 43, '2018-09-19 01:52:44', '2018-09-19 01:52:44'),
(141, 'While-sintaks', '#File:tebakteks.py\r\n#Program untuk menentukan output dari program\r\n#a:var penerima input(int)\r\n#b:var penerima input(int)\r\n#i:var pencacah pengulangan(int)\r\na=int(input(\"a:\"))\r\nb=int(input(\"b:\"))\r\ni=1\r\nwhile(i<a+b):                   #baris-1\r\n    if(i%3=0):                     #baris-2\r\n        print(\"Ha\",end=\"\")   #baris-3\r\n    elif(i%5==0):		  #baris-4\r\n        print(Ho,end=\"\")     #baris-5\r\n    elif(i%4<>0):		 #baris-6\r\n        print(\"Hi\",end=\"\")   #baris-7\r\n    i+=2\r\nKesalahan sintaks ditemukan pada baris ke :', '', '1, 2 dan 3', '2, 3 dan 4', '2, 5 dan 6', '4, 5 dan 6', '3, 4 dan 7', '2, 5 dan 6', 'programming', 'easy', 43, '2018-09-19 01:55:33', '2018-09-19 01:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `idMahasiswa` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `task`, `status`, `idMahasiswa`, `created_at`, `updated_at`) VALUES
(1, 'Test-ToDo1', NULL, 119, '2018-07-16 14:23:11', '2018-07-16 14:23:11'),
(2, 'Ada tugas', NULL, 123, '2018-09-14 01:12:31', '2018-09-14 01:12:31'),
(3, 'a', NULL, 215, '2018-09-14 02:19:49', '2018-09-14 02:19:49');

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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`id`, `namaTournament`, `tanggalTournament`, `creator`, `status`, `point`, `gambar`, `about`, `tempat`, `start`, `finish`, `duration`, `namaMK`, `idBankSoal`, `jenis`, `kondisi`, `created_at`, `updated_at`) VALUES
(46, 'Tournament-PG', '2018-07-16', 'Rahmat', 'free', 10, '', 'Test Tournament-soalPG', 'Lab', '2018-07-16 07:22:00', '2018-07-17 07:23:00', '00:30:00', 'Dasar Pemrograman', 31, 'solo', 'belumselesai', '2018-07-15 17:23:36', '2018-07-15 19:53:44'),
(47, 'Tournament-Isian', '2018-07-16', 'Rahmat', 'free', 10, '20180716025456.jpg', 'test tournament isian', 'lab', '2018-07-16 09:53:00', '2018-07-17 09:54:00', '00:30:00', 'Algoritma dan struktur data 2', 32, 'solo', 'selesai', '2018-07-15 19:54:56', '2018-08-02 09:36:39'),
(48, 'Tournament-Gabungan', '2018-09-03', 'Rahmat', 'free', 10, '', 'test tournament gabungan', 'lab', '2018-09-03 20:25:00', '2018-09-04 20:26:00', '00:30:00', 'Pengantar Teknologi Informasi', 40, 'solo', 'belumselesai', '2018-07-15 19:57:53', '2018-09-03 06:26:03'),
(49, 'Tournament-IsianCheck', '2018-07-16', 'Rahmat', 'free', 10, '', 'Tournament test isian check', 'lab', '2018-07-16 10:36:00', '2018-07-17 10:37:00', '00:30:00', 'Algoritma dan struktur data 2', 34, 'solo', 'belumselesai', '2018-07-15 20:37:25', '2018-08-02 09:36:23'),
(50, 'Tournament-GabunganCheck', '2018-07-16', 'Rahmat', 'free', 10, '', 'tournament gabungan check', 'lab', '2018-07-16 10:41:00', '2018-07-17 10:42:00', '00:30:00', 'Pemrograman berorientasi objek 1 A', 35, 'solo', 'belumselesai', '2018-07-15 20:41:42', '2018-07-15 20:41:42'),
(51, 'Trial-ASD2', '2018-07-18', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 10, '', 'trial', 'Lab', '2018-07-18 09:33:00', '2018-07-18 19:34:00', '00:10:00', 'Algoritma dan struktur data 2', 36, 'solo', 'belumselesai', '2018-07-17 19:34:26', '2018-07-17 19:34:26'),
(52, 'Kuis2- ASD2', '2018-08-06', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 100, '', 'Kuis Online', 'Lab', '2018-08-06 00:00:00', '2018-08-06 18:01:00', '00:20:00', 'Algoritma dan struktur data 2', 37, 'solo', 'belumselesai', '2018-07-30 02:11:16', '2018-07-31 19:24:02'),
(53, 'Test-Tournament1', '2019-01-06', 'Rahmat', 'free', 10, '', 'Test', 'Lab', '2019-01-06 21:22:00', '2019-02-09 21:28:00', '00:30:00', 'Dasar Pemrograman', 31, 'solo', 'belumselesai', '2018-08-22 07:28:18', '2019-01-06 07:23:14'),
(54, 'Daspro-Kuis1-KelasA', '2018-09-05', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman', 'Laboratorium', '2018-09-05 10:00:00', '2018-09-05 12:30:00', '00:15:00', 'Dasar Pemrograman', 38, 'solo', 'belumselesai', '2018-08-23 07:50:09', '2018-09-02 19:22:03'),
(55, 'Daspro-Kuis1-kelasB', '2018-09-03', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman', 'Laboratorium', '2018-09-03 07:00:00', '2018-10-03 10:00:00', '00:15:00', 'Dasar Pemrograman', 38, 'solo', 'belumselesai', '2018-08-23 08:47:14', '2018-09-02 19:22:22'),
(56, 'Daspro-Kuis1-KelasC', '2018-09-18', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman', 'Laboratorium', '2018-09-18 15:00:00', '2018-09-18 17:00:00', '00:15:00', 'Dasar Pemrograman', 38, 'solo', 'belumselesai', '2018-08-23 08:52:06', '2018-09-17 22:43:08'),
(57, 'Daspro-Kuis2-KelasABC', '2018-09-07', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 100, '', 'Program Sederhana', 'Bandung', '2018-09-07 06:00:00', '2018-09-07 23:00:00', '00:15:00', 'Dasar Pemrograman', 39, 'solo', 'belumselesai', '2018-09-02 20:47:31', '2018-09-02 20:47:31'),
(58, 'Daspro-Kuis3-KelasB', '2018-09-10', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas B', 'Laboratorium', '2018-09-10 07:30:00', '2018-09-10 10:00:00', '00:15:00', 'Dasar Pemrograman', 40, 'solo', 'belumselesai', '2018-09-06 01:48:35', '2018-09-06 01:48:35'),
(59, 'Daspro-Kuis3-KelasC', '2018-09-10', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas C', 'Laboratorium', '2018-09-10 15:00:00', '2018-09-10 17:30:00', '00:15:00', 'Dasar Pemrograman', 40, 'solo', 'belumselesai', '2018-09-06 07:49:15', '2018-09-06 07:49:15'),
(60, 'Daspro-Kuis3-KelasA', '2018-09-12', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas A', 'Laboratorium', '2018-09-12 10:00:00', '2018-09-12 12:30:00', '00:15:00', 'Dasar Pemrograman', 40, 'solo', 'belumselesai', '2018-09-06 07:50:50', '2018-09-06 07:50:50'),
(61, 'NewDaspro-Kuis2-KelasABC', '2018-09-19', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas ABC', 'Laboratorium', '2018-09-19 15:30:00', '2018-09-19 17:00:00', '00:15:00', 'Dasar Pemrograman', 39, 'solo', 'belumselesai', '2018-09-11 21:24:31', '2018-09-18 23:00:39'),
(62, 'Daspro-Kuis4-KelasB', '2018-09-17', 'Rahmat', 'free', 100, '', 'Kuis 4 Dasar Pemograman', 'Kelas B', '2018-09-17 07:00:00', '2018-09-17 10:00:00', '00:20:00', 'Dasar Pemrograman', 42, 'solo', 'belumselesai', '2018-09-15 07:01:16', '2018-09-15 07:08:25'),
(63, 'Daspro-Kuis4-KelasC', '2018-09-17', 'Rahmat', 'free', 100, '', 'Kuis 4 Dasar Pemograman', 'Kelas C', '2018-09-17 15:00:00', '2018-09-17 17:30:00', '00:20:00', 'Dasar Pemrograman', 42, 'solo', 'belumselesai', '2018-09-15 07:03:24', '2018-09-15 07:08:35'),
(64, 'Daspro-Kuis4-KelasA', '2018-09-19', 'Rahmat', 'free', 100, '', 'Kuis 4 Dasar Pemograman', 'Kelas A', '2018-09-19 10:00:00', '2018-09-19 12:30:00', '00:20:00', 'Dasar Pemrograman', 42, 'solo', 'belumselesai', '2018-09-15 07:07:17', '2018-09-15 07:08:17'),
(65, 'Daspro-Kuis5-KelasABC', '2018-09-20', 'Dr. Ir. Mewati Ayub, M.T.', 'free', 100, '', 'Kuis', 'Lab.FIT', '2018-09-20 12:30:00', '2018-09-20 20:00:00', '00:15:00', 'Dasar Pemrograman', 41, 'solo', 'belumselesai', '2018-09-17 21:48:38', '2018-09-17 21:48:38'),
(66, 'Daspro-Kuis6-KelasB', '2018-09-24', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas B', 'Kelas B', '2018-09-24 07:00:00', '2018-09-24 10:00:00', '00:15:00', 'Dasar Pemrograman', 43, 'solo', 'belumselesai', '2018-09-20 18:30:32', '2018-09-20 18:35:26'),
(67, 'Daspro-Kuis6-KelasC', '2018-09-24', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas C', 'Kelas C', '2018-09-24 15:00:00', '2018-09-24 17:30:00', '00:15:00', 'Dasar Pemrograman', 43, 'solo', 'belumselesai', '2018-09-20 18:31:52', '2018-09-20 18:35:34'),
(68, 'Daspro-Kuis6-KelasA', '2018-09-26', 'Rahmat', 'free', 100, '', 'Kuis Dasar Pemograman Kelas A', 'Kelas A', '2018-09-26 10:00:00', '2018-09-26 12:30:00', '00:15:00', 'Dasar Pemrograman', 43, 'solo', 'belumselesai', '2018-09-20 18:34:48', '2018-09-20 18:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `tournamentregister`
--

CREATE TABLE `tournamentregister` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `idTournament` int(255) NOT NULL,
  `idTeam` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournamentregister`
--

INSERT INTO `tournamentregister` (`id`, `nama`, `idTournament`, `idTeam`, `created_at`, `updated_at`) VALUES
(71, '1472002', 46, 80, '2018-07-15 17:24:25', '2018-07-15 17:24:25'),
(72, '1472002', 47, 81, '2018-07-15 19:55:31', '2018-07-15 19:55:31'),
(73, '1472002', 48, 82, '2018-07-15 20:15:45', '2018-07-15 20:15:45'),
(74, '1472002', 49, 83, '2018-07-15 20:37:59', '2018-07-15 20:37:59'),
(75, '1472002', 50, 84, '2018-07-15 20:48:22', '2018-07-15 20:48:22'),
(76, '1472002', 51, 85, '2018-07-17 19:42:06', '2018-07-17 19:42:06'),
(77, '1472002', 52, 86, '2018-07-30 23:19:24', '2018-07-30 23:19:24'),
(78, '1672013', 52, 87, '2018-08-05 04:23:19', '2018-08-05 04:23:19'),
(79, '1372097', 52, 88, '2018-08-05 04:43:20', '2018-08-05 04:43:20'),
(80, '1173043', 52, 90, '2018-08-05 05:13:05', '2018-08-05 05:13:05'),
(81, '1173014', 52, 89, '2018-08-05 05:13:07', '2018-08-05 05:13:07'),
(82, '1173012', 52, 91, '2018-08-05 05:13:09', '2018-08-05 05:13:09'),
(83, '1672055', 52, 95, '2018-08-05 05:13:42', '2018-08-05 05:13:42'),
(84, '1672036', 52, 93, '2018-08-05 05:13:49', '2018-08-05 05:13:49'),
(85, '1672049', 52, 92, '2018-08-05 05:13:52', '2018-08-05 05:13:52'),
(86, '1672054', 52, 94, '2018-08-05 05:13:55', '2018-08-05 05:13:55'),
(87, '1672068', 52, 96, '2018-08-05 05:13:59', '2018-08-05 05:13:59'),
(88, '1772022', 52, 97, '2018-08-05 05:14:03', '2018-08-05 05:14:03'),
(89, '1772004', 52, 98, '2018-08-05 05:43:05', '2018-08-05 05:43:05'),
(90, '1772008', 52, 99, '2018-08-05 05:43:10', '2018-08-05 05:43:10'),
(91, '1772012', 52, 100, '2018-08-05 05:43:17', '2018-08-05 05:43:17'),
(92, '1772023', 52, 101, '2018-08-05 05:43:21', '2018-08-05 05:43:21'),
(93, '1772026', 52, 102, '2018-08-05 05:43:25', '2018-08-05 05:43:25'),
(94, '1772043', 52, 103, '2018-08-05 05:43:29', '2018-08-05 05:43:29'),
(95, '1772044', 52, 104, '2018-08-05 05:43:32', '2018-08-05 05:43:32'),
(96, '1772046', 52, 105, '2018-08-05 05:43:38', '2018-08-05 05:43:38'),
(97, '1772049', 52, 106, '2018-08-05 05:43:42', '2018-08-05 05:43:42'),
(98, '1872046', 54, 127, '2018-08-23 07:59:42', '2018-08-23 07:59:42'),
(99, '1372097', 54, 107, '2018-08-23 08:06:15', '2018-08-23 08:06:15'),
(100, '1772019', 54, 108, '2018-08-23 08:06:26', '2018-08-23 08:06:26'),
(101, '1772036', 54, 109, '2018-08-23 08:06:29', '2018-08-23 08:06:29'),
(102, '1872001', 54, 110, '2018-08-23 08:06:32', '2018-08-23 08:06:32'),
(103, '1872002', 54, 111, '2018-08-23 08:06:35', '2018-08-23 08:06:35'),
(104, '1872003', 54, 112, '2018-08-23 08:06:38', '2018-08-23 08:06:38'),
(105, '1872004', 54, 113, '2018-08-23 08:06:41', '2018-08-23 08:06:41'),
(106, '1872010', 54, 114, '2018-08-23 08:06:47', '2018-08-23 08:06:47'),
(107, '1872016', 54, 115, '2018-08-23 08:06:50', '2018-08-23 08:06:50'),
(108, '1872020', 54, 116, '2018-08-23 08:06:54', '2018-08-23 08:06:54'),
(109, '1872022', 54, 117, '2018-08-23 08:40:42', '2018-08-23 08:40:42'),
(110, '1872024', 54, 118, '2018-08-23 08:40:47', '2018-08-23 08:40:47'),
(111, '1872027', 54, 119, '2018-08-23 08:40:56', '2018-08-23 08:40:56'),
(112, '1872028', 54, 120, '2018-08-23 08:41:02', '2018-08-23 08:41:02'),
(113, '1872032', 54, 121, '2018-08-23 08:41:08', '2018-08-23 08:41:08'),
(114, '1872034', 54, 122, '2018-08-23 08:41:13', '2018-08-23 08:41:13'),
(115, '1872036', 54, 123, '2018-08-23 08:41:20', '2018-08-23 08:41:20'),
(116, '1872039', 54, 124, '2018-08-23 08:41:24', '2018-08-23 08:41:24'),
(117, '1872040', 54, 125, '2018-08-23 08:41:29', '2018-08-23 08:41:29'),
(118, '1872044', 54, 126, '2018-08-23 08:41:33', '2018-08-23 08:41:33'),
(119, '1872048', 54, 130, '2018-08-23 08:42:26', '2018-08-23 08:42:26'),
(120, '1872051', 54, 131, '2018-08-23 08:42:31', '2018-08-23 08:42:31'),
(121, '1872052', 54, 132, '2018-08-23 08:42:37', '2018-08-23 08:42:37'),
(122, '1872056', 54, 133, '2018-08-23 08:42:41', '2018-08-23 08:42:41'),
(123, '1872006', 55, 134, '2018-08-24 08:41:18', '2018-08-24 08:41:18'),
(124, '1872008', 55, 135, '2018-08-24 08:41:21', '2018-08-24 08:41:21'),
(125, '1872009', 55, 136, '2018-08-24 08:41:23', '2018-08-24 08:41:23'),
(126, '1872011', 55, 137, '2018-08-24 08:41:28', '2018-08-24 08:41:28'),
(127, '1872012', 55, 138, '2018-08-24 08:41:35', '2018-08-24 08:41:35'),
(128, '1872014', 55, 139, '2018-08-24 08:41:37', '2018-08-24 08:41:37'),
(129, '1872015', 55, 140, '2018-08-24 08:41:40', '2018-08-24 08:41:40'),
(130, '1872017', 55, 141, '2018-08-24 08:41:43', '2018-08-24 08:41:43'),
(131, '1872018', 55, 142, '2018-08-24 08:41:46', '2018-08-24 08:41:46'),
(132, '1872021', 55, 143, '2018-08-24 08:41:48', '2018-08-24 08:41:48'),
(133, '1872023', 55, 144, '2018-08-24 08:41:52', '2018-08-24 08:41:52'),
(134, '1872026', 55, 146, '2018-08-24 08:41:57', '2018-08-24 08:41:57'),
(135, '1872029', 55, 147, '2018-08-24 08:42:02', '2018-08-24 08:42:02'),
(136, '1872030', 55, 148, '2018-08-24 08:42:06', '2018-08-24 08:42:06'),
(137, '1872033', 55, 149, '2018-08-24 08:42:10', '2018-08-24 08:42:10'),
(138, '1872035', 55, 150, '2018-08-24 08:42:16', '2018-08-24 08:42:16'),
(139, '1872038', 55, 151, '2018-08-24 08:42:21', '2018-08-24 08:42:21'),
(140, '1872041', 55, 152, '2018-08-24 08:42:26', '2018-08-24 08:42:26'),
(141, '1872042', 55, 153, '2018-08-24 08:42:31', '2018-08-24 08:42:31'),
(142, '1872045', 55, 154, '2018-08-24 08:42:36', '2018-08-24 08:42:36'),
(143, '1872047', 55, 155, '2018-08-24 08:42:41', '2018-08-24 08:42:41'),
(144, '1872050', 55, 156, '2018-08-24 08:42:46', '2018-08-24 08:42:46'),
(145, '1872053', 55, 157, '2018-08-24 08:42:50', '2018-08-24 08:42:50'),
(146, '1872054', 55, 158, '2018-08-24 08:42:54', '2018-08-24 08:42:54'),
(147, '1872057', 55, 159, '2018-08-24 08:42:59', '2018-08-24 08:42:59'),
(148, '1872005', 56, 160, '2018-08-24 08:47:20', '2018-08-24 08:47:20'),
(149, '1872007', 56, 161, '2018-08-24 08:47:22', '2018-08-24 08:47:22'),
(150, '1872019', 56, 163, '2018-08-24 08:47:24', '2018-08-24 08:47:24'),
(151, '1872013', 56, 162, '2018-08-24 08:47:26', '2018-08-24 08:47:26'),
(152, '1872025', 56, 164, '2018-08-24 08:47:28', '2018-08-24 08:47:28'),
(153, '1872031', 56, 165, '2018-08-24 08:47:30', '2018-08-24 08:47:30'),
(154, '1872037', 56, 166, '2018-08-24 08:47:33', '2018-08-24 08:47:33'),
(155, '1872043', 56, 167, '2018-08-24 08:47:37', '2018-08-24 08:47:37'),
(156, '1872049', 56, 168, '2018-08-24 08:47:39', '2018-08-24 08:47:39'),
(157, '1872055', 56, 169, '2018-08-24 08:47:42', '2018-08-24 08:47:42'),
(158, '1872058', 56, 170, '2018-08-24 08:47:45', '2018-08-24 08:47:45'),
(159, '1872059', 56, 171, '2018-08-24 08:47:49', '2018-08-24 08:47:49'),
(160, '1872060', 56, 172, '2018-08-24 08:47:54', '2018-08-24 08:47:54'),
(161, '1872061', 56, 174, '2018-08-24 08:47:58', '2018-08-24 08:47:58'),
(162, '1872062', 56, 173, '2018-08-24 08:48:01', '2018-08-24 08:48:01'),
(163, '1872063', 56, 175, '2018-09-03 01:11:52', '2018-09-03 01:11:52'),
(166, '1372097', 57, 178, '2018-09-04 19:06:25', '2018-09-04 19:06:25'),
(167, '1872017', 57, 204, '2018-09-04 19:10:27', '2018-09-04 19:10:27'),
(168, '1772019', 57, 179, '2018-09-04 19:10:33', '2018-09-04 19:10:33'),
(169, '1772036', 57, 180, '2018-09-04 19:11:01', '2018-09-04 19:11:01'),
(170, '1872001', 57, 181, '2018-09-04 19:11:06', '2018-09-04 19:11:06'),
(171, '1872002', 57, 182, '2018-09-04 19:11:10', '2018-09-04 19:11:10'),
(172, '1872003', 57, 185, '2018-09-04 19:11:14', '2018-09-04 19:11:14'),
(173, '1872004', 57, 186, '2018-09-04 19:11:27', '2018-09-04 19:11:27'),
(174, '1872005', 57, 187, '2018-09-04 19:11:39', '2018-09-04 19:11:39'),
(175, '1872006', 57, 184, '2018-09-04 19:11:48', '2018-09-04 19:11:48'),
(176, '1872007', 57, 183, '2018-09-04 19:11:56', '2018-09-04 19:11:56'),
(177, '1872008', 57, 188, '2018-09-04 19:12:02', '2018-09-04 19:12:02'),
(178, '1872009', 57, 196, '2018-09-04 19:12:09', '2018-09-04 19:12:09'),
(179, '1872010', 57, 197, '2018-09-04 19:12:15', '2018-09-04 19:12:15'),
(180, '1872011', 57, 198, '2018-09-04 19:12:32', '2018-09-04 19:12:32'),
(181, '1872012', 57, 199, '2018-09-04 19:12:40', '2018-09-04 19:12:40'),
(182, '1872013', 57, 200, '2018-09-04 19:12:46', '2018-09-04 19:12:46'),
(183, '1872014', 57, 201, '2018-09-04 19:12:54', '2018-09-04 19:12:54'),
(184, '1872015', 57, 203, '2018-09-04 19:13:00', '2018-09-04 19:13:00'),
(185, '1872016', 57, 202, '2018-09-04 19:13:06', '2018-09-04 19:13:06'),
(186, '1872027', 57, 214, '2018-09-04 22:33:14', '2018-09-04 22:33:14'),
(187, '1872026', 57, 213, '2018-09-04 22:33:21', '2018-09-04 22:33:21'),
(188, '1872025', 57, 212, '2018-09-04 22:33:26', '2018-09-04 22:33:26'),
(189, '1872024', 57, 211, '2018-09-04 22:33:35', '2018-09-04 22:33:35'),
(190, '1872023', 57, 210, '2018-09-04 22:33:42', '2018-09-04 22:33:42'),
(191, '1872022', 57, 209, '2018-09-04 22:33:51', '2018-09-04 22:33:51'),
(192, '1872021', 57, 208, '2018-09-04 22:33:58', '2018-09-04 22:33:58'),
(193, '1872018', 57, 205, '2018-09-04 22:34:11', '2018-09-04 22:34:11'),
(194, '1872019', 57, 206, '2018-09-04 22:34:18', '2018-09-04 22:34:18'),
(195, '1872020', 57, 207, '2018-09-04 22:34:24', '2018-09-04 22:34:24'),
(196, '1872028', 57, 215, '2018-09-04 22:36:55', '2018-09-04 22:36:55'),
(197, '1872029', 57, 216, '2018-09-04 22:37:02', '2018-09-04 22:37:02'),
(198, '1872030', 57, 217, '2018-09-04 22:37:09', '2018-09-04 22:37:09'),
(199, '1872031', 57, 218, '2018-09-04 22:37:22', '2018-09-04 22:37:22'),
(200, '1872032', 57, 219, '2018-09-04 22:37:30', '2018-09-04 22:37:30'),
(201, '1872033', 57, 220, '2018-09-04 22:37:38', '2018-09-04 22:37:38'),
(202, '1872034', 57, 221, '2018-09-04 22:37:49', '2018-09-04 22:37:49'),
(203, '1872035', 57, 222, '2018-09-04 22:37:56', '2018-09-04 22:37:56'),
(204, '1872036', 57, 223, '2018-09-04 22:38:03', '2018-09-04 22:38:03'),
(205, '1872037', 57, 224, '2018-09-04 22:38:09', '2018-09-04 22:38:09'),
(206, '1872062', 57, 249, '2018-09-05 01:10:01', '2018-09-05 01:10:01'),
(207, '1872061', 57, 248, '2018-09-05 01:10:08', '2018-09-05 01:10:08'),
(208, '1872038', 57, 225, '2018-09-05 01:10:19', '2018-09-05 01:10:19'),
(209, '1872039', 57, 226, '2018-09-05 01:10:26', '2018-09-05 01:10:26'),
(210, '1872040', 57, 227, '2018-09-05 01:10:34', '2018-09-05 01:10:34'),
(211, '1872041', 57, 228, '2018-09-05 01:10:51', '2018-09-05 01:10:51'),
(212, '1872042', 57, 229, '2018-09-05 01:11:07', '2018-09-05 01:11:07'),
(213, '1872043', 57, 230, '2018-09-05 01:11:18', '2018-09-05 01:11:18'),
(214, '1872044', 57, 231, '2018-09-05 01:11:30', '2018-09-05 01:11:30'),
(215, '1872045', 57, 232, '2018-09-05 01:11:52', '2018-09-05 01:11:52'),
(216, '1872046', 57, 233, '2018-09-05 01:12:00', '2018-09-05 01:12:00'),
(217, '1872047', 57, 234, '2018-09-05 01:12:11', '2018-09-05 01:12:11'),
(218, '1872048', 57, 235, '2018-09-05 01:12:19', '2018-09-05 01:12:19'),
(219, '1872049', 57, 236, '2018-09-05 01:12:27', '2018-09-05 01:12:27'),
(220, '1872050', 57, 237, '2018-09-05 01:12:34', '2018-09-05 01:12:34'),
(221, '1872051', 57, 238, '2018-09-05 01:12:46', '2018-09-05 01:12:46'),
(222, '1872060', 57, 247, '2018-09-05 01:12:55', '2018-09-05 01:12:55'),
(223, '1872059', 57, 246, '2018-09-05 01:13:04', '2018-09-05 01:13:04'),
(224, '1872058', 57, 245, '2018-09-05 01:13:13', '2018-09-05 01:13:13'),
(225, '1872052', 57, 239, '2018-09-05 01:13:25', '2018-09-05 01:13:25'),
(226, '1872053', 57, 240, '2018-09-05 01:13:37', '2018-09-05 01:13:37'),
(227, '1872054', 57, 241, '2018-09-05 01:13:48', '2018-09-05 01:13:48'),
(228, '1872055', 57, 242, '2018-09-05 01:14:01', '2018-09-05 01:14:01'),
(229, '1872056', 57, 243, '2018-09-05 01:14:12', '2018-09-05 01:14:12'),
(230, '1872057', 57, 244, '2018-09-05 01:14:21', '2018-09-05 01:14:21'),
(231, '1872006', 58, 251, '2018-09-08 19:53:48', '2018-09-08 19:53:48'),
(232, '1872008', 58, 253, '2018-09-08 19:53:53', '2018-09-08 19:53:53'),
(233, '1872009', 58, 254, '2018-09-08 19:53:55', '2018-09-08 19:53:55'),
(234, '1872011', 58, 255, '2018-09-08 19:53:58', '2018-09-08 19:53:58'),
(235, '1872012', 58, 256, '2018-09-08 19:54:01', '2018-09-08 19:54:01'),
(236, '1872014', 58, 257, '2018-09-08 19:54:03', '2018-09-08 19:54:03'),
(237, '1872015', 58, 258, '2018-09-08 19:54:05', '2018-09-08 19:54:05'),
(238, '1872017', 58, 259, '2018-09-08 19:54:07', '2018-09-08 19:54:07'),
(239, '1872018', 58, 260, '2018-09-08 19:54:10', '2018-09-08 19:54:10'),
(240, '1872021', 58, 261, '2018-09-08 19:54:14', '2018-09-08 19:54:14'),
(241, '1872023', 58, 262, '2018-09-08 19:54:19', '2018-09-08 19:54:19'),
(242, '1872026', 58, 263, '2018-09-08 19:54:23', '2018-09-08 19:54:23'),
(243, '1872029', 58, 264, '2018-09-08 19:54:28', '2018-09-08 19:54:28'),
(244, '1872030', 58, 265, '2018-09-08 19:54:34', '2018-09-08 19:54:34'),
(245, '1872033', 58, 266, '2018-09-08 19:54:41', '2018-09-08 19:54:41'),
(246, '1872035', 58, 267, '2018-09-08 19:54:58', '2018-09-08 19:54:58'),
(247, '1872038', 58, 268, '2018-09-08 19:55:03', '2018-09-08 19:55:03'),
(248, '1872041', 58, 269, '2018-09-08 19:55:07', '2018-09-08 19:55:07'),
(249, '1872042', 58, 270, '2018-09-08 19:55:11', '2018-09-08 19:55:11'),
(250, '1872050', 58, 272, '2018-09-08 19:55:15', '2018-09-08 19:55:15'),
(251, '1872047', 58, 271, '2018-09-08 19:55:20', '2018-09-08 19:55:20'),
(252, '1872053', 58, 273, '2018-09-08 19:55:24', '2018-09-08 19:55:24'),
(253, '1872054', 58, 274, '2018-09-08 19:55:28', '2018-09-08 19:55:28'),
(254, '1872057', 58, 275, '2018-09-08 19:55:32', '2018-09-08 19:55:32'),
(255, '1872045', 58, 276, '2018-09-08 19:56:19', '2018-09-08 19:56:19'),
(256, '1872005', 59, 277, '2018-09-08 20:15:16', '2018-09-08 20:15:16'),
(257, '1872007', 59, 278, '2018-09-08 20:15:18', '2018-09-08 20:15:18'),
(258, '1872013', 59, 279, '2018-09-08 20:15:20', '2018-09-08 20:15:20'),
(259, '1872019', 59, 281, '2018-09-08 20:15:23', '2018-09-08 20:15:23'),
(260, '1872025', 59, 283, '2018-09-08 20:15:26', '2018-09-08 20:15:26'),
(261, '1872031', 59, 284, '2018-09-08 20:15:28', '2018-09-08 20:15:28'),
(262, '1872037', 59, 285, '2018-09-08 20:15:29', '2018-09-08 20:15:29'),
(263, '1872043', 59, 286, '2018-09-08 20:15:31', '2018-09-08 20:15:31'),
(264, '1872055', 59, 288, '2018-09-08 20:15:36', '2018-09-08 20:15:36'),
(265, '1872058', 59, 289, '2018-09-08 20:15:40', '2018-09-08 20:15:40'),
(266, '1872049', 59, 287, '2018-09-08 20:15:46', '2018-09-08 20:15:46'),
(267, '1872059', 59, 293, '2018-09-08 20:15:52', '2018-09-08 20:15:52'),
(268, '1872062', 59, 295, '2018-09-08 20:15:55', '2018-09-08 20:15:55'),
(269, '1872061', 59, 294, '2018-09-08 20:16:00', '2018-09-08 20:16:00'),
(270, '1872060', 59, 292, '2018-09-08 20:16:02', '2018-09-08 20:16:02'),
(271, '1372097', 60, 296, '2018-09-09 02:38:19', '2018-09-09 02:38:19'),
(272, '1772019', 60, 297, '2018-09-09 02:38:26', '2018-09-09 02:38:26'),
(273, '1772036', 60, 298, '2018-09-09 02:38:30', '2018-09-09 02:38:30'),
(274, '1872001', 60, 299, '2018-09-09 02:38:35', '2018-09-09 02:38:35'),
(275, '1872002', 60, 300, '2018-09-09 02:38:39', '2018-09-09 02:38:39'),
(276, '1872003', 60, 301, '2018-09-09 02:38:44', '2018-09-09 02:38:44'),
(277, '1872004', 60, 302, '2018-09-09 02:38:48', '2018-09-09 02:38:48'),
(278, '1872010', 60, 303, '2018-09-09 02:38:56', '2018-09-09 02:38:56'),
(279, '1872016', 60, 304, '2018-09-09 02:39:01', '2018-09-09 02:39:01'),
(280, '1872020', 60, 305, '2018-09-09 02:39:05', '2018-09-09 02:39:05'),
(281, '1872022', 60, 306, '2018-09-09 02:39:16', '2018-09-09 02:39:16'),
(282, '1872044', 60, 315, '2018-09-09 02:39:23', '2018-09-09 02:39:23'),
(283, '1872024', 60, 307, '2018-09-09 02:39:30', '2018-09-09 02:39:30'),
(284, '1872027', 60, 308, '2018-09-09 02:39:37', '2018-09-09 02:39:37'),
(285, '1872028', 60, 309, '2018-09-09 02:39:45', '2018-09-09 02:39:45'),
(286, '1872040', 60, 314, '2018-09-09 02:39:51', '2018-09-09 02:39:51'),
(287, '1872032', 60, 310, '2018-09-09 02:39:59', '2018-09-09 02:39:59'),
(288, '1872039', 60, 313, '2018-09-09 02:40:10', '2018-09-09 02:40:10'),
(289, '1872034', 60, 311, '2018-09-09 02:40:16', '2018-09-09 02:40:16'),
(290, '1872036', 60, 312, '2018-09-09 02:40:23', '2018-09-09 02:40:23'),
(291, '1872046', 60, 316, '2018-09-09 02:40:30', '2018-09-09 02:40:30'),
(292, '1872048', 60, 317, '2018-09-09 02:40:38', '2018-09-09 02:40:38'),
(293, '1872051', 60, 318, '2018-09-09 02:40:45', '2018-09-09 02:40:45'),
(294, '1872052', 60, 319, '2018-09-09 02:40:50', '2018-09-09 02:40:50'),
(295, '1872056', 60, 320, '2018-09-09 02:40:55', '2018-09-09 02:40:55'),
(296, '1872063', 59, 322, '2018-09-09 21:02:48', '2018-09-09 21:02:48'),
(297, '1372097', 61, 324, '2018-09-12 20:39:33', '2018-09-12 20:39:33'),
(298, '1772019', 61, 325, '2018-09-12 20:39:38', '2018-09-12 20:39:38'),
(299, '1772036', 61, 326, '2018-09-12 20:39:42', '2018-09-12 20:39:42'),
(300, '1872001', 61, 327, '2018-09-12 20:39:48', '2018-09-12 20:39:48'),
(301, '1872002', 61, 328, '2018-09-12 20:39:51', '2018-09-12 20:39:51'),
(302, '1872003', 61, 329, '2018-09-12 20:39:55', '2018-09-12 20:39:55'),
(303, '1872004', 61, 330, '2018-09-12 20:40:01', '2018-09-12 20:40:01'),
(304, '1872005', 61, 331, '2018-09-12 20:40:06', '2018-09-12 20:40:06'),
(305, '1872006', 61, 332, '2018-09-12 20:40:11', '2018-09-12 20:40:11'),
(306, '1872007', 61, 333, '2018-09-12 20:40:15', '2018-09-12 20:40:15'),
(307, '1872008', 61, 334, '2018-09-12 20:40:22', '2018-09-12 20:40:22'),
(308, '1872016', 61, 343, '2018-09-12 20:40:29', '2018-09-12 20:40:29'),
(309, '1872015', 61, 342, '2018-09-12 20:40:33', '2018-09-12 20:40:33'),
(310, '1872009', 61, 335, '2018-09-12 20:40:41', '2018-09-12 20:40:41'),
(311, '1872009', 61, 335, '2018-09-12 20:40:41', '2018-09-12 20:40:41'),
(312, '1872014', 61, 341, '2018-09-12 20:40:48', '2018-09-12 20:40:48'),
(313, '1872010', 61, 336, '2018-09-12 20:40:56', '2018-09-12 20:40:56'),
(314, '1872013', 61, 340, '2018-09-12 20:41:03', '2018-09-12 20:41:03'),
(315, '1872011', 61, 337, '2018-09-12 20:41:17', '2018-09-12 20:41:17'),
(316, '1872012', 61, 338, '2018-09-12 20:41:25', '2018-09-12 20:41:25'),
(317, '1872026', 61, 353, '2018-09-12 20:41:42', '2018-09-12 20:41:42'),
(318, '1872017', 61, 344, '2018-09-12 20:41:49', '2018-09-12 20:41:49'),
(319, '1872025', 61, 352, '2018-09-12 20:41:55', '2018-09-12 20:41:55'),
(320, '1872018', 61, 345, '2018-09-12 20:42:04', '2018-09-12 20:42:04'),
(321, '1872019', 61, 346, '2018-09-12 20:42:13', '2018-09-12 20:42:13'),
(322, '1872024', 61, 351, '2018-09-12 20:42:19', '2018-09-12 20:42:19'),
(323, '1872023', 61, 350, '2018-09-12 20:42:27', '2018-09-12 20:42:27'),
(324, '1872022', 61, 349, '2018-09-12 20:42:34', '2018-09-12 20:42:34'),
(325, '1872020', 61, 347, '2018-09-12 20:42:41', '2018-09-12 20:42:41'),
(326, '1872021', 61, 348, '2018-09-12 20:42:48', '2018-09-12 20:42:48'),
(327, '1872036', 61, 363, '2018-09-12 20:42:59', '2018-09-12 20:42:59'),
(328, '1872027', 61, 354, '2018-09-12 20:43:06', '2018-09-12 20:43:06'),
(329, '1872028', 61, 355, '2018-09-12 20:43:13', '2018-09-12 20:43:13'),
(330, '1872035', 61, 362, '2018-09-12 20:43:18', '2018-09-12 20:43:18'),
(331, '1872034', 61, 361, '2018-09-12 20:43:25', '2018-09-12 20:43:25'),
(332, '1872029', 61, 356, '2018-09-12 20:43:33', '2018-09-12 20:43:33'),
(333, '1872033', 61, 360, '2018-09-12 20:43:40', '2018-09-12 20:43:40'),
(334, '1872030', 61, 357, '2018-09-12 20:43:46', '2018-09-12 20:43:46'),
(335, '1872031', 61, 358, '2018-09-12 20:43:52', '2018-09-12 20:43:52'),
(336, '1872032', 61, 359, '2018-09-12 20:43:57', '2018-09-12 20:43:57'),
(337, '1872046', 61, 373, '2018-09-12 20:44:14', '2018-09-12 20:44:14'),
(338, '1872045', 61, 372, '2018-09-12 20:44:21', '2018-09-12 20:44:21'),
(339, '1872044', 61, 371, '2018-09-12 20:44:32', '2018-09-12 20:44:32'),
(340, '1872043', 61, 370, '2018-09-12 20:45:00', '2018-09-12 20:45:00'),
(341, '1872037', 61, 364, '2018-09-12 20:45:20', '2018-09-12 20:45:20'),
(342, '1872042', 61, 369, '2018-09-12 20:45:33', '2018-09-12 20:45:33'),
(343, '1872041', 61, 368, '2018-09-12 20:45:39', '2018-09-12 20:45:39'),
(344, '1872038', 61, 365, '2018-09-12 20:45:46', '2018-09-12 20:45:46'),
(345, '1872039', 61, 366, '2018-09-12 20:45:53', '2018-09-12 20:45:53'),
(346, '1872040', 61, 367, '2018-09-12 20:46:07', '2018-09-12 20:46:07'),
(347, '1872055', 61, 388, '2018-09-12 20:46:19', '2018-09-12 20:46:19'),
(348, '1872047', 61, 374, '2018-09-12 20:46:26', '2018-09-12 20:46:26'),
(349, '1872054', 61, 386, '2018-09-12 20:46:39', '2018-09-12 20:46:39'),
(350, '1872053', 61, 385, '2018-09-12 20:46:46', '2018-09-12 20:46:46'),
(351, '1872052', 61, 390, '2018-09-12 20:46:54', '2018-09-12 20:46:54'),
(352, '1872048', 61, 375, '2018-09-12 20:47:25', '2018-09-12 20:47:25'),
(353, '1872049', 61, 376, '2018-09-12 20:47:32', '2018-09-12 20:47:32'),
(354, '1872050', 61, 377, '2018-09-12 20:47:38', '2018-09-12 20:47:38'),
(355, '1872051', 61, 389, '2018-09-12 20:47:54', '2018-09-12 20:47:54'),
(356, '1872063', 61, 391, '2018-09-12 20:48:15', '2018-09-12 20:48:15'),
(357, '1872056', 61, 384, '2018-09-12 20:48:22', '2018-09-12 20:48:22'),
(358, '1872062', 61, 378, '2018-09-12 20:48:58', '2018-09-12 20:48:58'),
(359, '1872057', 61, 383, '2018-09-12 20:49:04', '2018-09-12 20:49:04'),
(360, '1872058', 61, 382, '2018-09-12 20:49:11', '2018-09-12 20:49:11'),
(361, '1872059', 61, 381, '2018-09-12 20:49:20', '2018-09-12 20:49:20'),
(362, '1872060', 61, 380, '2018-09-12 20:49:27', '2018-09-12 20:49:27'),
(363, '1872061', 61, 379, '2018-09-12 20:49:33', '2018-09-12 20:49:33'),
(364, '1372097', 64, 392, '2018-09-15 07:30:05', '2018-09-15 07:30:05'),
(365, '1772019', 64, 393, '2018-09-15 07:30:09', '2018-09-15 07:30:09'),
(366, '1772036', 64, 394, '2018-09-15 07:30:12', '2018-09-15 07:30:12'),
(367, '1872001', 64, 395, '2018-09-15 07:30:14', '2018-09-15 07:30:14'),
(368, '1872002', 64, 401, '2018-09-15 07:30:18', '2018-09-15 07:30:18'),
(369, '1872003', 64, 396, '2018-09-15 07:30:21', '2018-09-15 07:30:21'),
(370, '1872004', 64, 397, '2018-09-15 07:30:24', '2018-09-15 07:30:24'),
(371, '1872010', 64, 398, '2018-09-15 07:30:27', '2018-09-15 07:30:27'),
(372, '1872016', 64, 399, '2018-09-15 07:30:31', '2018-09-15 07:30:31'),
(373, '1872056', 64, 417, '2018-09-15 07:30:35', '2018-09-15 07:30:35'),
(374, '1872020', 64, 400, '2018-09-15 07:30:44', '2018-09-15 07:30:44'),
(375, '1872022', 64, 402, '2018-09-15 07:30:48', '2018-09-15 07:30:48'),
(376, '1872024', 64, 404, '2018-09-15 07:30:53', '2018-09-15 07:30:53'),
(377, '1872027', 64, 405, '2018-09-15 07:30:56', '2018-09-15 07:30:56'),
(378, '1872028', 64, 407, '2018-09-15 07:30:59', '2018-09-15 07:30:59'),
(379, '1872032', 64, 408, '2018-09-15 07:31:02', '2018-09-15 07:31:02'),
(380, '1872034', 64, 409, '2018-09-15 07:31:08', '2018-09-15 07:31:08'),
(381, '1872036', 64, 410, '2018-09-15 07:31:12', '2018-09-15 07:31:12'),
(382, '1872039', 64, 413, '2018-09-15 07:31:16', '2018-09-15 07:31:16'),
(383, '1872040', 64, 412, '2018-09-15 07:31:19', '2018-09-15 07:31:19'),
(384, '1872044', 64, 411, '2018-09-15 07:31:22', '2018-09-15 07:31:22'),
(385, '1872046', 64, 414, '2018-09-15 07:31:27', '2018-09-15 07:31:27'),
(386, '1872048', 64, 415, '2018-09-15 07:31:31', '2018-09-15 07:31:31'),
(387, '1872051', 64, 416, '2018-09-15 07:31:35', '2018-09-15 07:31:35'),
(388, '1872052', 64, 406, '2018-09-15 07:31:38', '2018-09-15 07:31:38'),
(389, '1872006', 62, 418, '2018-09-15 07:31:48', '2018-09-15 07:31:48'),
(390, '1872008', 62, 419, '2018-09-15 07:32:24', '2018-09-15 07:32:24'),
(391, '1872009', 62, 420, '2018-09-15 07:32:31', '2018-09-15 07:32:31'),
(392, '1872011', 62, 421, '2018-09-15 07:32:34', '2018-09-15 07:32:34'),
(393, '1872012', 62, 422, '2018-09-15 07:32:37', '2018-09-15 07:32:37'),
(394, '1872014', 62, 423, '2018-09-15 07:32:39', '2018-09-15 07:32:39'),
(395, '1872015', 62, 424, '2018-09-15 07:32:44', '2018-09-15 07:32:44'),
(396, '1872017', 62, 425, '2018-09-15 07:32:48', '2018-09-15 07:32:48'),
(397, '1872018', 62, 426, '2018-09-15 07:32:51', '2018-09-15 07:32:51'),
(398, '1872021', 62, 427, '2018-09-15 07:32:54', '2018-09-15 07:32:54'),
(399, '1872023', 62, 428, '2018-09-15 07:32:58', '2018-09-15 07:32:58'),
(400, '1872026', 62, 429, '2018-09-15 07:33:01', '2018-09-15 07:33:01'),
(401, '1872029', 62, 430, '2018-09-15 07:33:04', '2018-09-15 07:33:04'),
(402, '1872030', 62, 431, '2018-09-15 07:33:06', '2018-09-15 07:33:06'),
(403, '1872033', 62, 432, '2018-09-15 07:33:09', '2018-09-15 07:33:09'),
(404, '1872035', 62, 433, '2018-09-15 07:33:12', '2018-09-15 07:33:12'),
(405, '1872038', 62, 434, '2018-09-15 07:33:15', '2018-09-15 07:33:15'),
(406, '1872041', 62, 435, '2018-09-15 07:33:17', '2018-09-15 07:33:17'),
(407, '1872042', 62, 436, '2018-09-15 07:33:20', '2018-09-15 07:33:20'),
(408, '1872045', 62, 437, '2018-09-15 07:33:23', '2018-09-15 07:33:23'),
(409, '1872047', 62, 438, '2018-09-15 07:33:26', '2018-09-15 07:33:26'),
(410, '1872050', 62, 439, '2018-09-15 07:33:29', '2018-09-15 07:33:29'),
(411, '1872053', 62, 440, '2018-09-15 07:33:31', '2018-09-15 07:33:31'),
(412, '1872054', 62, 441, '2018-09-15 07:33:34', '2018-09-15 07:33:34'),
(413, '1872057', 62, 443, '2018-09-15 07:33:36', '2018-09-15 07:33:36'),
(414, '1872005', 63, 444, '2018-09-15 07:33:46', '2018-09-15 07:33:46'),
(415, '1872007', 63, 445, '2018-09-15 07:33:49', '2018-09-15 07:33:49'),
(416, '1872013', 63, 446, '2018-09-15 07:33:52', '2018-09-15 07:33:52'),
(417, '1872019', 63, 447, '2018-09-15 07:33:54', '2018-09-15 07:33:54'),
(418, '1872025', 63, 448, '2018-09-15 07:33:58', '2018-09-15 07:33:58'),
(419, '1872031', 63, 449, '2018-09-15 07:34:01', '2018-09-15 07:34:01'),
(420, '1872037', 63, 450, '2018-09-15 07:34:07', '2018-09-15 07:34:07'),
(421, '1872043', 63, 451, '2018-09-15 07:34:10', '2018-09-15 07:34:10'),
(422, '1872049', 63, 453, '2018-09-15 07:34:22', '2018-09-15 07:34:22'),
(423, '1872062', 63, 460, '2018-09-15 07:34:25', '2018-09-15 07:34:25'),
(424, '1872060', 63, 457, '2018-09-15 07:34:29', '2018-09-15 07:34:29'),
(425, '1872059', 63, 456, '2018-09-15 07:34:32', '2018-09-15 07:34:32'),
(426, '1872058', 63, 455, '2018-09-15 07:34:34', '2018-09-15 07:34:34'),
(427, '1872055', 63, 454, '2018-09-15 07:34:37', '2018-09-15 07:34:37'),
(428, '1872063', 63, 461, '2018-09-15 07:35:31', '2018-09-15 07:35:31'),
(429, '1872061', 63, 462, '2018-09-17 03:06:26', '2018-09-17 03:06:26'),
(430, '1372097', 65, 463, '2018-09-18 02:05:03', '2018-09-18 02:05:03'),
(431, '1772019', 65, 464, '2018-09-18 02:05:10', '2018-09-18 02:05:10'),
(432, '1772036', 65, 465, '2018-09-18 02:05:14', '2018-09-18 02:05:14'),
(433, '1872001', 65, 482, '2018-09-18 02:05:18', '2018-09-18 02:05:18'),
(434, '1872002', 65, 466, '2018-09-18 02:05:21', '2018-09-18 02:05:21'),
(435, '1872003', 65, 467, '2018-09-18 02:05:25', '2018-09-18 02:05:25'),
(436, '1872004', 65, 468, '2018-09-18 02:05:28', '2018-09-18 02:05:28'),
(437, '1872005', 65, 469, '2018-09-18 02:05:33', '2018-09-18 02:05:33'),
(438, '1872006', 65, 470, '2018-09-18 02:05:37', '2018-09-18 02:05:37'),
(439, '1872007', 65, 471, '2018-09-18 02:05:41', '2018-09-18 02:05:41'),
(440, '1872017', 65, 474, '2018-09-18 02:05:48', '2018-09-18 02:05:48'),
(441, '1872016', 65, 480, '2018-09-18 02:05:53', '2018-09-18 02:05:53'),
(442, '1872015', 65, 479, '2018-09-18 02:05:59', '2018-09-18 02:05:59'),
(443, '1872014', 65, 481, '2018-09-18 02:06:04', '2018-09-18 02:06:04'),
(444, '1872013', 65, 478, '2018-09-18 02:06:09', '2018-09-18 02:06:09'),
(445, '1872008', 65, 472, '2018-09-18 02:06:15', '2018-09-18 02:06:15'),
(446, '1872009', 65, 473, '2018-09-18 02:06:21', '2018-09-18 02:06:21'),
(447, '1872010', 65, 475, '2018-09-18 02:06:27', '2018-09-18 02:06:27'),
(448, '1872011', 65, 476, '2018-09-18 02:06:33', '2018-09-18 02:06:33'),
(449, '1872012', 65, 477, '2018-09-18 02:06:39', '2018-09-18 02:06:39'),
(450, '1872027', 65, 492, '2018-09-18 02:06:48', '2018-09-18 02:06:48'),
(451, '1872026', 65, 491, '2018-09-18 02:06:53', '2018-09-18 02:06:53'),
(452, '1872025', 65, 490, '2018-09-18 02:06:59', '2018-09-18 02:06:59'),
(453, '1872024', 65, 489, '2018-09-18 02:07:05', '2018-09-18 02:07:05'),
(454, '1872023', 65, 488, '2018-09-18 02:07:10', '2018-09-18 02:07:10'),
(455, '1872022', 65, 487, '2018-09-18 02:07:15', '2018-09-18 02:07:15'),
(456, '1872018', 65, 483, '2018-09-18 02:07:21', '2018-09-18 02:07:21'),
(457, '1872019', 65, 484, '2018-09-18 02:07:28', '2018-09-18 02:07:28'),
(458, '1872020', 65, 485, '2018-09-18 02:07:34', '2018-09-18 02:07:34'),
(459, '1872021', 65, 486, '2018-09-18 02:07:40', '2018-09-18 02:07:40'),
(460, '1872037', 65, 502, '2018-09-18 02:07:49', '2018-09-18 02:07:49'),
(461, '1872036', 65, 501, '2018-09-18 02:07:54', '2018-09-18 02:07:54'),
(462, '1872035', 65, 500, '2018-09-18 02:08:00', '2018-09-18 02:08:00'),
(463, '1872034', 65, 499, '2018-09-18 02:08:05', '2018-09-18 02:08:05'),
(464, '1872033', 65, 498, '2018-09-18 02:08:12', '2018-09-18 02:08:12'),
(465, '1872032', 65, 497, '2018-09-18 02:08:17', '2018-09-18 02:08:17'),
(466, '1872028', 65, 493, '2018-09-18 02:08:24', '2018-09-18 02:08:24'),
(467, '1872031', 65, 496, '2018-09-18 02:08:29', '2018-09-18 02:08:29'),
(468, '1872029', 65, 494, '2018-09-18 02:08:35', '2018-09-18 02:08:35'),
(469, '1872030', 65, 495, '2018-09-18 02:08:41', '2018-09-18 02:08:41'),
(470, '1872047', 65, 512, '2018-09-18 02:08:50', '2018-09-18 02:08:50'),
(471, '1872046', 65, 511, '2018-09-18 02:08:55', '2018-09-18 02:08:55'),
(472, '1872045', 65, 510, '2018-09-18 02:09:01', '2018-09-18 02:09:01'),
(473, '1872044', 65, 509, '2018-09-18 02:09:06', '2018-09-18 02:09:06'),
(474, '1872043', 65, 508, '2018-09-18 02:09:12', '2018-09-18 02:09:12'),
(475, '1872038', 65, 503, '2018-09-18 02:09:17', '2018-09-18 02:09:17'),
(476, '1872039', 65, 504, '2018-09-18 02:09:25', '2018-09-18 02:09:25'),
(477, '1872042', 65, 507, '2018-09-18 02:09:30', '2018-09-18 02:09:30'),
(478, '1872040', 65, 505, '2018-09-18 02:09:37', '2018-09-18 02:09:37'),
(479, '1872041', 65, 506, '2018-09-18 02:09:42', '2018-09-18 02:09:42'),
(480, '1872057', 65, 522, '2018-09-18 02:09:51', '2018-09-18 02:09:51'),
(481, '1872056', 65, 521, '2018-09-18 02:09:57', '2018-09-18 02:09:57'),
(482, '1872048', 65, 513, '2018-09-18 02:10:04', '2018-09-18 02:10:04'),
(483, '1872055', 65, 520, '2018-09-18 02:10:10', '2018-09-18 02:10:10'),
(484, '1872049', 65, 514, '2018-09-18 02:10:17', '2018-09-18 02:10:17'),
(485, '1872054', 65, 519, '2018-09-18 02:10:25', '2018-09-18 02:10:25'),
(486, '1872050', 65, 515, '2018-09-18 02:10:30', '2018-09-18 02:10:30'),
(487, '1872053', 65, 518, '2018-09-18 02:10:36', '2018-09-18 02:10:36'),
(488, '1872051', 65, 516, '2018-09-18 02:10:43', '2018-09-18 02:10:43'),
(489, '1872052', 65, 517, '2018-09-18 02:10:48', '2018-09-18 02:10:48'),
(490, '1872058', 65, 523, '2018-09-18 02:10:59', '2018-09-18 02:10:59'),
(491, '1872059', 65, 524, '2018-09-18 02:11:04', '2018-09-18 02:11:04'),
(492, '1872062', 65, 527, '2018-09-18 02:11:10', '2018-09-18 02:11:10'),
(493, '1872060', 65, 525, '2018-09-18 02:11:18', '2018-09-18 02:11:18'),
(494, '1872061', 65, 526, '2018-09-18 02:11:25', '2018-09-18 02:11:25'),
(495, '1872063', 65, 528, '2018-09-20 01:25:22', '2018-09-20 01:25:22'),
(496, '1372097', 68, 529, '2018-09-20 18:37:49', '2018-09-20 18:37:49'),
(497, '1772019', 68, 530, '2018-09-20 18:37:52', '2018-09-20 18:37:52'),
(498, '1772036', 68, 532, '2018-09-20 18:37:53', '2018-09-20 18:37:53'),
(499, '1872001', 68, 531, '2018-09-20 18:37:55', '2018-09-20 18:37:55'),
(500, '1872002', 68, 533, '2018-09-20 18:37:57', '2018-09-20 18:37:57'),
(501, '1872003', 68, 534, '2018-09-20 18:37:59', '2018-09-20 18:37:59'),
(502, '1872010', 68, 536, '2018-09-20 18:38:00', '2018-09-20 18:38:00'),
(503, '1872016', 68, 537, '2018-09-20 18:38:04', '2018-09-20 18:38:04'),
(504, '1872020', 68, 538, '2018-09-20 18:38:06', '2018-09-20 18:38:06'),
(505, '1872022', 68, 539, '2018-09-20 18:38:15', '2018-09-20 18:38:15'),
(506, '1872024', 68, 540, '2018-09-20 18:38:17', '2018-09-20 18:38:17'),
(507, '1872027', 68, 541, '2018-09-20 18:38:24', '2018-09-20 18:38:24'),
(508, '1872028', 68, 542, '2018-09-20 18:38:27', '2018-09-20 18:38:27'),
(509, '1872032', 68, 543, '2018-09-20 18:38:29', '2018-09-20 18:38:29'),
(510, '1872034', 68, 544, '2018-09-20 18:38:31', '2018-09-20 18:38:31'),
(511, '1872036', 68, 545, '2018-09-20 18:38:34', '2018-09-20 18:38:34'),
(512, '1872039', 68, 548, '2018-09-20 18:38:36', '2018-09-20 18:38:36'),
(513, '1872040', 68, 547, '2018-09-20 18:38:37', '2018-09-20 18:38:37'),
(514, '1872044', 68, 546, '2018-09-20 18:38:39', '2018-09-20 18:38:39'),
(515, '1872046', 68, 549, '2018-09-20 18:38:42', '2018-09-20 18:38:42'),
(516, '1872048', 68, 550, '2018-09-20 18:38:44', '2018-09-20 18:38:44'),
(517, '1872051', 68, 551, '2018-09-20 18:38:47', '2018-09-20 18:38:47'),
(518, '1872052', 68, 552, '2018-09-20 18:38:49', '2018-09-20 18:38:49'),
(519, '1872056', 68, 553, '2018-09-20 18:38:52', '2018-09-20 18:38:52'),
(520, '1872004', 68, 554, '2018-09-20 18:39:19', '2018-09-20 18:39:19'),
(521, '1872006', 66, 555, '2018-09-20 18:43:18', '2018-09-20 18:43:18'),
(522, '1872008', 66, 556, '2018-09-20 18:43:20', '2018-09-20 18:43:20'),
(523, '1872009', 66, 557, '2018-09-20 18:43:21', '2018-09-20 18:43:21'),
(524, '1872011', 66, 558, '2018-09-20 18:43:23', '2018-09-20 18:43:23'),
(525, '1872012', 66, 559, '2018-09-20 18:43:24', '2018-09-20 18:43:24'),
(526, '1872014', 66, 560, '2018-09-20 18:43:26', '2018-09-20 18:43:26'),
(527, '1872015', 66, 561, '2018-09-20 18:43:27', '2018-09-20 18:43:27'),
(528, '1872017', 66, 562, '2018-09-20 18:43:29', '2018-09-20 18:43:29'),
(529, '1872018', 66, 563, '2018-09-20 18:43:30', '2018-09-20 18:43:30'),
(530, '1872021', 66, 564, '2018-09-20 18:43:32', '2018-09-20 18:43:32'),
(531, '1872023', 66, 565, '2018-09-20 18:43:36', '2018-09-20 18:43:36'),
(532, '1872026', 66, 579, '2018-09-20 18:43:39', '2018-09-20 18:43:39'),
(533, '1872029', 66, 566, '2018-09-20 18:43:41', '2018-09-20 18:43:41'),
(534, '1872030', 66, 568, '2018-09-20 18:43:44', '2018-09-20 18:43:44'),
(535, '1872033', 66, 569, '2018-09-20 18:43:46', '2018-09-20 18:43:46'),
(536, '1872035', 66, 570, '2018-09-20 18:43:48', '2018-09-20 18:43:48'),
(537, '1872038', 66, 580, '2018-09-20 18:43:50', '2018-09-20 18:43:50'),
(538, '1872041', 66, 571, '2018-09-20 18:43:52', '2018-09-20 18:43:52'),
(539, '1872042', 66, 572, '2018-09-20 18:43:55', '2018-09-20 18:43:55'),
(540, '1872045', 66, 574, '2018-09-20 18:43:57', '2018-09-20 18:43:57'),
(541, '1872047', 66, 575, '2018-09-20 18:43:59', '2018-09-20 18:43:59'),
(542, '1872050', 66, 581, '2018-09-20 18:44:02', '2018-09-20 18:44:02'),
(543, '1872054', 66, 578, '2018-09-20 18:44:04', '2018-09-20 18:44:04'),
(544, '1872057', 66, 577, '2018-09-20 18:44:07', '2018-09-20 18:44:07'),
(545, '1872053', 66, 576, '2018-09-20 18:44:09', '2018-09-20 18:44:09'),
(546, '1872005', 67, 582, '2018-09-20 18:45:15', '2018-09-20 18:45:15'),
(547, '1872007', 67, 584, '2018-09-20 18:45:17', '2018-09-20 18:45:17'),
(548, '1872007', 67, 584, '2018-09-20 18:45:17', '2018-09-20 18:45:17'),
(549, '1872019', 67, 586, '2018-09-20 18:45:19', '2018-09-20 18:45:19'),
(550, '1872013', 67, 585, '2018-09-20 18:45:20', '2018-09-20 18:45:20'),
(551, '1872025', 67, 587, '2018-09-20 18:45:22', '2018-09-20 18:45:22'),
(552, '1872031', 67, 588, '2018-09-20 18:45:24', '2018-09-20 18:45:24'),
(553, '1872037', 67, 589, '2018-09-20 18:45:26', '2018-09-20 18:45:26'),
(554, '1872043', 67, 590, '2018-09-20 18:45:28', '2018-09-20 18:45:28'),
(555, '1872049', 67, 591, '2018-09-20 18:45:29', '2018-09-20 18:45:29'),
(556, '1872055', 67, 592, '2018-09-20 18:45:32', '2018-09-20 18:45:32'),
(557, '1872058', 67, 593, '2018-09-20 18:45:34', '2018-09-20 18:45:34'),
(558, '1872059', 67, 594, '2018-09-20 18:45:36', '2018-09-20 18:45:36'),
(559, '1872060', 67, 595, '2018-09-20 18:45:39', '2018-09-20 18:45:39'),
(560, '1872061', 67, 597, '2018-09-20 18:45:41', '2018-09-20 18:45:41'),
(561, '1872062', 67, 596, '2018-09-20 18:45:43', '2018-09-20 18:45:43'),
(562, '1872063', 67, 598, '2018-09-20 18:46:21', '2018-09-20 18:46:21'),
(564, '1672013', 53, 600, '2018-12-28 03:10:23', '2018-12-28 03:10:23'),
(565, '1672014', 53, 602, '2018-12-28 03:50:41', '2018-12-28 03:50:41'),
(566, '1472002', 53, 603, '2018-12-28 03:56:58', '2018-12-28 03:56:58'),
(567, '1173012', 54, 605, '2019-09-26 17:34:16', '2019-09-26 17:34:16');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `idTournament` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournamentteam`
--

INSERT INTO `tournamentteam` (`id`, `namaTeam`, `anggota1`, `anggota2`, `anggota3`, `anggota4`, `anggota5`, `status`, `created_at`, `updated_at`, `idTournament`) VALUES
(87, 'MCU_1672013', '1672013', '', '', '', '', 'terdaftar', '2018-08-05 04:23:16', '2018-08-05 04:23:19', 52),
(88, 'MCU_1372097', '1372097', '', '', '', '', 'terdaftar', '2018-08-05 04:43:18', '2018-08-05 04:43:20', 52),
(89, 'MCU_1173014', '1173014', '', '', '', '', 'terdaftar', '2018-08-05 05:12:00', '2018-08-05 05:13:07', 52),
(90, 'MCU_1173043', '1173043', '', '', '', '', 'terdaftar', '2018-08-05 05:12:07', '2018-08-05 05:13:05', 52),
(92, 'MCU_1672049', '1672049', '', '', '', '', 'terdaftar', '2018-08-05 05:12:21', '2018-08-05 05:13:52', 52),
(93, 'MCU_1672036', '1672036', '', '', '', '', 'terdaftar', '2018-08-05 05:13:14', '2018-08-05 05:13:49', 52),
(94, 'MCU_1672054', '1672054', '', '', '', '', 'terdaftar', '2018-08-05 05:13:21', '2018-08-05 05:13:55', 52),
(95, 'MCU_1672055', '1672055', '', '', '', '', 'terdaftar', '2018-08-05 05:13:26', '2018-08-05 05:13:42', 52),
(96, 'MCU_1672068', '1672068', '', '', '', '', 'terdaftar', '2018-08-05 05:13:34', '2018-08-05 05:13:59', 52),
(97, 'MCU_1772022', '1772022', '', '', '', '', 'terdaftar', '2018-08-05 05:13:39', '2018-08-05 05:14:03', 52),
(98, 'MCU_1772004', '1772004', '', '', '', '', 'terdaftar', '2018-08-05 05:41:43', '2018-08-05 05:43:05', 52),
(99, 'MCU_1772008', '1772008', '', '', '', '', 'terdaftar', '2018-08-05 05:41:58', '2018-08-05 05:43:10', 52),
(100, 'MCU_1772012', '1772012', '', '', '', '', 'terdaftar', '2018-08-05 05:42:14', '2018-08-05 05:43:17', 52),
(101, 'MCU_1772023', '1772023', '', '', '', '', 'terdaftar', '2018-08-05 05:42:24', '2018-08-05 05:43:21', 52),
(102, 'MCU_1772026', '1772026', '', '', '', '', 'terdaftar', '2018-08-05 05:42:31', '2018-08-05 05:43:25', 52),
(103, 'MCU_1772043', '1772043', '', '', '', '', 'terdaftar', '2018-08-05 05:42:37', '2018-08-05 05:43:29', 52),
(104, 'MCU_1772044', '1772044', '', '', '', '', 'terdaftar', '2018-08-05 05:42:44', '2018-08-05 05:43:32', 52),
(105, 'MCU_1772046', '1772046', '', '', '', '', 'terdaftar', '2018-08-05 05:42:53', '2018-08-05 05:43:38', 52),
(106, 'MCU_1772049', '1772049', '', '', '', '', 'terdaftar', '2018-08-05 05:42:57', '2018-08-05 05:43:42', 52),
(107, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-08-23 07:51:18', '2018-08-23 08:06:15', 54),
(108, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-08-23 07:51:22', '2018-08-23 08:06:26', 54),
(109, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-08-23 07:51:30', '2018-08-23 08:06:29', 54),
(110, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-08-23 07:51:35', '2018-08-23 08:06:32', 54),
(111, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-08-23 07:55:04', '2018-08-23 08:06:35', 54),
(112, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-08-23 07:55:30', '2018-08-23 08:06:38', 54),
(113, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-08-23 07:55:35', '2018-08-23 08:06:41', 54),
(114, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-08-23 07:55:54', '2018-08-23 08:06:47', 54),
(115, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-08-23 07:55:58', '2018-08-23 08:06:50', 54),
(116, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-08-23 07:56:01', '2018-08-23 08:06:54', 54),
(117, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-08-23 07:56:11', '2018-08-23 08:40:42', 54),
(118, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-08-23 07:56:17', '2018-08-23 08:40:47', 54),
(119, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-08-23 07:56:24', '2018-08-23 08:40:56', 54),
(120, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-08-23 07:56:47', '2018-08-23 08:41:02', 54),
(121, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-08-23 07:56:53', '2018-08-23 08:41:08', 54),
(122, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-08-23 07:57:02', '2018-08-23 08:41:13', 54),
(123, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-08-23 07:57:08', '2018-08-23 08:41:20', 54),
(124, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-08-23 07:58:47', '2018-08-23 08:41:24', 54),
(125, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-08-23 07:58:55', '2018-08-23 08:41:29', 54),
(126, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-08-23 07:59:01', '2018-08-23 08:41:33', 54),
(127, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-08-23 07:59:08', '2018-08-23 07:59:42', 54),
(130, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-08-23 08:41:44', '2018-08-23 08:42:26', 54),
(131, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-08-23 08:42:00', '2018-08-23 08:42:31', 54),
(132, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-08-23 08:42:09', '2018-08-23 08:42:37', 54),
(133, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-08-23 08:42:17', '2018-08-23 08:42:41', 54),
(135, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-08-24 08:28:07', '2018-08-24 08:41:21', 55),
(136, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-08-24 08:28:19', '2018-08-24 08:41:23', 55),
(137, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-08-24 08:28:31', '2018-08-24 08:41:28', 55),
(138, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-08-24 08:28:40', '2018-08-24 08:41:35', 55),
(139, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-08-24 08:28:47', '2018-08-24 08:41:37', 55),
(140, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-08-24 08:30:54', '2018-08-24 08:41:40', 55),
(141, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-08-24 08:31:04', '2018-08-24 08:41:43', 55),
(142, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-08-24 08:31:19', '2018-08-24 08:41:46', 55),
(143, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-08-24 08:31:35', '2018-08-24 08:41:48', 55),
(144, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-08-24 08:34:06', '2018-08-24 08:41:52', 55),
(146, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-08-24 08:34:44', '2018-08-24 08:41:57', 55),
(147, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-08-24 08:34:56', '2018-08-24 08:42:02', 55),
(148, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-08-24 08:37:10', '2018-08-24 08:42:06', 55),
(149, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-08-24 08:37:21', '2018-08-24 08:42:10', 55),
(150, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-08-24 08:37:29', '2018-08-24 08:42:16', 55),
(151, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-08-24 08:37:36', '2018-08-24 08:42:21', 55),
(152, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-08-24 08:37:45', '2018-08-24 08:42:26', 55),
(153, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-08-24 08:38:00', '2018-08-24 08:42:31', 55),
(154, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-08-24 08:38:16', '2018-08-24 08:42:36', 55),
(155, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-08-24 08:38:24', '2018-08-24 08:42:41', 55),
(156, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-08-24 08:38:34', '2018-08-24 08:42:46', 55),
(157, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-08-24 08:38:52', '2018-08-24 08:42:50', 55),
(158, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-08-24 08:39:06', '2018-08-24 08:42:54', 55),
(159, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-08-24 08:39:17', '2018-08-24 08:42:59', 55),
(160, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-08-24 08:43:28', '2018-08-24 08:47:20', 56),
(161, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-08-24 08:43:31', '2018-08-24 08:47:22', 56),
(162, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-08-24 08:43:34', '2018-08-24 08:47:26', 56),
(163, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-08-24 08:43:38', '2018-08-24 08:47:24', 56),
(164, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-08-24 08:43:42', '2018-08-24 08:47:28', 56),
(165, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-08-24 08:43:46', '2018-08-24 08:47:30', 56),
(166, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-08-24 08:43:54', '2018-08-24 08:47:33', 56),
(167, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-08-24 08:44:07', '2018-08-24 08:47:37', 56),
(168, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-08-24 08:44:12', '2018-08-24 08:47:39', 56),
(169, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-08-24 08:44:15', '2018-08-24 08:47:42', 56),
(170, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-08-24 08:46:30', '2018-08-24 08:47:45', 56),
(171, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-08-24 08:46:43', '2018-08-24 08:47:49', 56),
(172, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-08-24 08:46:54', '2018-08-24 08:47:54', 56),
(173, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-08-24 08:47:06', '2018-08-24 08:48:01', 56),
(174, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-08-24 08:47:17', '2018-08-24 08:47:58', 56),
(175, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-03 01:11:34', '2018-09-03 01:11:52', 56),
(178, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-04 19:05:21', '2018-09-04 19:06:25', 57),
(179, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-04 19:05:30', '2018-09-04 19:10:33', 57),
(180, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-04 19:05:33', '2018-09-04 19:11:01', 57),
(181, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-04 19:05:34', '2018-09-04 19:11:06', 57),
(182, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-04 19:05:36', '2018-09-04 19:11:10', 57),
(183, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-04 19:05:45', '2018-09-04 19:11:56', 57),
(185, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-04 19:06:07', '2018-09-04 19:11:14', 57),
(186, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-04 19:06:12', '2018-09-04 19:11:27', 57),
(187, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-04 19:06:16', '2018-09-04 19:11:39', 57),
(188, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-04 19:07:28', '2018-09-04 19:12:02', 57),
(189, 'MCU', '1772019', '', '', '', '', '', '2018-09-04 19:07:30', '2018-09-04 19:07:30', 57),
(190, 'MCU', '1772036', '', '', '', '', '', '2018-09-04 19:07:31', '2018-09-04 19:07:31', 57),
(191, 'MCU', '1872001', '', '', '', '', '', '2018-09-04 19:07:32', '2018-09-04 19:07:32', 57),
(192, 'MCU', '1872002', '', '', '', '', '', '2018-09-04 19:07:34', '2018-09-04 19:07:34', 57),
(193, 'MCU', '1872003', '', '', '', '', '', '2018-09-04 19:07:36', '2018-09-04 19:07:36', 57),
(194, 'MCU', '1872004', '', '', '', '', '', '2018-09-04 19:07:37', '2018-09-04 19:07:37', 57),
(195, 'MCU', '1872005', '', '', '', '', '', '2018-09-04 19:07:39', '2018-09-04 19:07:39', 57),
(196, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-04 19:08:06', '2018-09-04 19:12:09', 57),
(197, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-04 19:08:17', '2018-09-04 19:12:15', 57),
(198, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-04 19:08:31', '2018-09-04 19:12:32', 57),
(199, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-04 19:08:42', '2018-09-04 19:12:40', 57),
(200, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-04 19:08:49', '2018-09-04 19:12:46', 57),
(201, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-04 19:08:56', '2018-09-04 19:12:54', 57),
(202, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-04 19:09:05', '2018-09-04 19:13:06', 57),
(203, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-04 19:09:36', '2018-09-04 19:13:00', 57),
(204, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-04 19:09:45', '2018-09-04 19:10:27', 57),
(205, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-04 22:31:37', '2018-09-04 22:34:11', 57),
(206, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-04 22:31:46', '2018-09-04 22:34:18', 57),
(207, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-04 22:32:00', '2018-09-04 22:34:24', 57),
(208, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-04 22:32:11', '2018-09-04 22:33:58', 57),
(209, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-04 22:32:20', '2018-09-04 22:33:51', 57),
(210, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-04 22:32:27', '2018-09-04 22:33:42', 57),
(211, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-04 22:32:36', '2018-09-04 22:33:35', 57),
(212, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-04 22:32:44', '2018-09-04 22:33:26', 57),
(213, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-04 22:32:53', '2018-09-04 22:33:21', 57),
(214, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-04 22:32:59', '2018-09-04 22:33:14', 57),
(215, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-04 22:35:10', '2018-09-04 22:36:55', 57),
(216, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-04 22:35:21', '2018-09-04 22:37:02', 57),
(217, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-04 22:35:32', '2018-09-04 22:37:09', 57),
(218, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-04 22:35:56', '2018-09-04 22:37:22', 57),
(219, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-04 22:36:04', '2018-09-04 22:37:30', 57),
(220, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-04 22:36:12', '2018-09-04 22:37:38', 57),
(221, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-04 22:36:19', '2018-09-04 22:37:49', 57),
(222, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-04 22:36:28', '2018-09-04 22:37:56', 57),
(223, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-04 22:36:35', '2018-09-04 22:38:03', 57),
(224, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-04 22:36:45', '2018-09-04 22:38:09', 57),
(225, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-05 01:05:16', '2018-09-05 01:10:19', 57),
(226, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-05 01:05:25', '2018-09-05 01:10:26', 57),
(227, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-05 01:05:35', '2018-09-05 01:10:34', 57),
(228, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-05 01:05:46', '2018-09-05 01:10:51', 57),
(229, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-05 01:05:57', '2018-09-05 01:11:07', 57),
(230, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-05 01:06:09', '2018-09-05 01:11:18', 57),
(231, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-05 01:06:22', '2018-09-05 01:11:30', 57),
(232, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-05 01:06:31', '2018-09-05 01:11:52', 57),
(233, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-05 01:06:38', '2018-09-05 01:12:00', 57),
(234, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-05 01:06:44', '2018-09-05 01:12:11', 57),
(235, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-05 01:07:14', '2018-09-05 01:12:19', 57),
(236, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-05 01:07:25', '2018-09-05 01:12:27', 57),
(237, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-05 01:07:35', '2018-09-05 01:12:34', 57),
(238, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-05 01:07:45', '2018-09-05 01:12:46', 57),
(239, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-05 01:08:10', '2018-09-05 01:13:25', 57),
(240, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-05 01:08:27', '2018-09-05 01:13:37', 57),
(241, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-05 01:08:34', '2018-09-05 01:13:48', 57),
(242, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-05 01:08:40', '2018-09-05 01:14:01', 57),
(243, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-05 01:08:48', '2018-09-05 01:14:12', 57),
(244, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-05 01:08:54', '2018-09-05 01:14:21', 57),
(245, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-05 01:09:13', '2018-09-05 01:13:13', 57),
(246, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-05 01:09:19', '2018-09-05 01:13:04', 57),
(247, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-05 01:09:27', '2018-09-05 01:12:55', 57),
(248, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-05 01:09:35', '2018-09-05 01:10:08', 57),
(249, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-05 01:09:41', '2018-09-05 01:10:01', 57),
(250, '1772026', '1772026', NULL, NULL, NULL, NULL, 'belumterdaftar', '2018-09-07 07:41:13', '2018-09-07 07:41:13', 57),
(253, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-08 19:49:05', '2018-09-08 19:53:53', 58),
(254, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-08 19:49:11', '2018-09-08 19:53:55', 58),
(255, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-08 19:49:19', '2018-09-08 19:53:58', 58),
(256, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-08 19:49:25', '2018-09-08 19:54:01', 58),
(257, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-08 19:49:33', '2018-09-08 19:54:03', 58),
(258, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-08 19:49:42', '2018-09-08 19:54:05', 58),
(259, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-08 19:49:49', '2018-09-08 19:54:07', 58),
(260, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-08 19:49:56', '2018-09-08 19:54:10', 58),
(261, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-08 19:50:03', '2018-09-08 19:54:14', 58),
(262, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-08 19:50:10', '2018-09-08 19:54:19', 58),
(263, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-08 19:50:35', '2018-09-08 19:54:23', 58),
(264, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-08 19:50:45', '2018-09-08 19:54:28', 58),
(265, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-08 19:50:54', '2018-09-08 19:54:34', 58),
(266, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-08 19:51:10', '2018-09-08 19:54:41', 58),
(267, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-08 19:51:21', '2018-09-08 19:54:58', 58),
(268, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-08 19:51:26', '2018-09-08 19:55:03', 58),
(269, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-08 19:51:34', '2018-09-08 19:55:07', 58),
(270, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-08 19:51:42', '2018-09-08 19:55:11', 58),
(271, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-08 19:51:56', '2018-09-08 19:55:20', 58),
(272, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-08 19:52:06', '2018-09-08 19:55:15', 58),
(273, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-08 19:52:15', '2018-09-08 19:55:24', 58),
(274, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-08 19:52:21', '2018-09-08 19:55:28', 58),
(275, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-08 19:52:34', '2018-09-08 19:55:32', 58),
(276, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-08 19:56:14', '2018-09-08 19:56:19', 58),
(277, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-08 20:13:05', '2018-09-08 20:15:16', 59),
(278, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-08 20:13:08', '2018-09-08 20:15:18', 59),
(279, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-08 20:13:13', '2018-09-08 20:15:20', 59),
(280, 'MCU', '1872013', '', '', '', '', '', '2018-09-08 20:13:17', '2018-09-08 20:13:17', 59),
(281, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-08 20:13:21', '2018-09-08 20:15:23', 59),
(282, 'MCU', '1872019', '', '', '', '', '', '2018-09-08 20:13:25', '2018-09-08 20:13:25', 59),
(283, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-08 20:13:29', '2018-09-08 20:15:26', 59),
(284, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-08 20:13:32', '2018-09-08 20:15:28', 59),
(285, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-08 20:13:36', '2018-09-08 20:15:29', 59),
(286, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-08 20:13:40', '2018-09-08 20:15:31', 59),
(287, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-08 20:13:43', '2018-09-08 20:15:46', 59),
(288, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-08 20:13:47', '2018-09-08 20:15:36', 59),
(289, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-08 20:13:53', '2018-09-08 20:15:40', 59),
(290, 'MCU', '1872058', '', '', '', '', '', '2018-09-08 20:13:58', '2018-09-08 20:13:58', 59),
(291, 'MCU', '1872059', '', '', '', '', '', '2018-09-08 20:14:05', '2018-09-08 20:14:05', 59),
(292, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-08 20:14:10', '2018-09-08 20:16:02', 59),
(293, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-08 20:14:15', '2018-09-08 20:15:52', 59),
(294, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-08 20:14:21', '2018-09-08 20:16:00', 59),
(295, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-08 20:14:27', '2018-09-08 20:15:55', 59),
(296, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-09 02:33:45', '2018-09-09 02:38:19', 60),
(297, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-09 02:33:47', '2018-09-09 02:38:26', 60),
(298, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-09 02:33:49', '2018-09-09 02:38:30', 60),
(299, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-09 02:33:51', '2018-09-09 02:38:35', 60),
(300, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-09 02:33:52', '2018-09-09 02:38:39', 60),
(301, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-09 02:33:54', '2018-09-09 02:38:44', 60),
(302, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-09 02:34:03', '2018-09-09 02:38:48', 60),
(303, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-09 02:34:15', '2018-09-09 02:38:56', 60),
(304, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-09 02:34:22', '2018-09-09 02:39:01', 60),
(305, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-09 02:34:35', '2018-09-09 02:39:05', 60),
(306, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-09 02:34:47', '2018-09-09 02:39:16', 60),
(307, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-09 02:34:57', '2018-09-09 02:39:30', 60),
(308, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-09 02:35:09', '2018-09-09 02:39:37', 60),
(309, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-09 02:35:23', '2018-09-09 02:39:45', 60),
(310, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-09 02:35:34', '2018-09-09 02:39:59', 60),
(311, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-09 02:35:44', '2018-09-09 02:40:16', 60),
(312, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-09 02:35:52', '2018-09-09 02:40:23', 60),
(313, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-09 02:36:07', '2018-09-09 02:40:10', 60),
(314, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-09 02:36:15', '2018-09-09 02:39:51', 60),
(315, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-09 02:36:28', '2018-09-09 02:39:23', 60),
(316, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-09 02:36:35', '2018-09-09 02:40:30', 60),
(317, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-09 02:36:44', '2018-09-09 02:40:38', 60),
(318, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-09 02:36:51', '2018-09-09 02:40:45', 60),
(319, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-09 02:36:59', '2018-09-09 02:40:50', 60),
(320, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-09 02:37:11', '2018-09-09 02:40:55', 60),
(321, 'teven', '1772026', NULL, NULL, NULL, NULL, 'belumterdaftar', '2018-09-09 19:17:31', '2018-09-09 19:17:31', 58),
(322, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-09 21:02:28', '2018-09-09 21:02:48', 59),
(323, 'MCU', '1372097', '', '', '', '', '', '2018-09-11 17:40:44', '2018-09-11 17:40:44', 60),
(324, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-11 21:25:05', '2018-09-12 20:39:33', 61),
(325, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-11 21:25:07', '2018-09-12 20:39:38', 61),
(326, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-11 21:25:08', '2018-09-12 20:39:42', 61),
(327, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-11 21:25:10', '2018-09-12 20:39:48', 61),
(328, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-11 21:25:13', '2018-09-12 20:39:51', 61),
(329, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-11 21:25:18', '2018-09-12 20:39:55', 61),
(330, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-11 21:25:21', '2018-09-12 20:40:01', 61),
(331, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-11 21:25:28', '2018-09-12 20:40:06', 61),
(333, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-11 21:25:31', '2018-09-12 20:40:15', 61),
(334, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-11 21:25:48', '2018-09-12 20:40:22', 61),
(335, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-11 21:25:52', '2018-09-12 20:40:41', 61),
(336, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-11 21:25:57', '2018-09-12 20:40:56', 61),
(337, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-11 21:26:01', '2018-09-12 20:41:17', 61),
(338, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-11 21:26:11', '2018-09-12 20:41:25', 61),
(339, 'MCU', '1872013', '', '', '', '', '', '2018-09-11 21:26:17', '2018-09-11 21:26:17', 61),
(340, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-11 21:26:21', '2018-09-12 20:41:03', 61),
(341, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-11 21:26:36', '2018-09-12 20:40:48', 61),
(342, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-11 21:26:40', '2018-09-12 20:40:33', 61),
(343, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-11 21:26:44', '2018-09-12 20:40:29', 61),
(344, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-11 21:26:47', '2018-09-12 20:41:49', 61),
(345, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-11 21:26:51', '2018-09-12 20:42:04', 61),
(346, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-11 21:26:55', '2018-09-12 20:42:13', 61),
(347, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-11 21:27:11', '2018-09-12 20:42:41', 61),
(348, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-11 21:27:14', '2018-09-12 20:42:48', 61),
(349, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-11 21:27:19', '2018-09-12 20:42:34', 61),
(350, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-11 21:27:27', '2018-09-12 20:42:27', 61),
(351, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-11 21:27:32', '2018-09-12 20:42:19', 61),
(352, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-11 21:27:36', '2018-09-12 20:41:55', 61),
(353, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-11 21:27:41', '2018-09-12 20:41:42', 61),
(354, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-11 21:27:48', '2018-09-12 20:43:06', 61),
(355, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-11 21:27:55', '2018-09-12 20:43:13', 61),
(356, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-11 21:28:00', '2018-09-12 20:43:33', 61),
(357, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-11 21:28:04', '2018-09-12 20:43:46', 61),
(358, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-11 21:28:08', '2018-09-12 20:43:52', 61),
(359, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-11 21:28:13', '2018-09-12 20:43:57', 61),
(360, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-11 21:28:18', '2018-09-12 20:43:40', 61),
(361, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-11 21:28:22', '2018-09-12 20:43:25', 61),
(362, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-11 21:28:27', '2018-09-12 20:43:18', 61),
(363, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-11 21:28:32', '2018-09-12 20:42:59', 61),
(364, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-11 21:28:37', '2018-09-12 20:45:20', 61),
(365, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-11 21:28:42', '2018-09-12 20:45:46', 61),
(366, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-11 21:28:47', '2018-09-12 20:45:53', 61),
(367, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-11 21:28:55', '2018-09-12 20:46:07', 61),
(368, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-11 21:28:59', '2018-09-12 20:45:39', 61),
(369, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-11 21:29:04', '2018-09-12 20:45:33', 61),
(370, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-11 21:29:09', '2018-09-12 20:45:00', 61),
(371, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-11 21:29:14', '2018-09-12 20:44:32', 61),
(372, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-11 21:29:19', '2018-09-12 20:44:21', 61),
(373, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-11 21:29:24', '2018-09-12 20:44:14', 61),
(374, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-11 21:29:31', '2018-09-12 20:46:26', 61),
(375, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-11 21:29:38', '2018-09-12 20:47:25', 61),
(376, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-11 21:29:44', '2018-09-12 20:47:32', 61),
(377, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-11 21:29:50', '2018-09-12 20:47:38', 61),
(378, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-11 21:30:00', '2018-09-12 20:48:58', 61),
(379, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-11 21:30:02', '2018-09-12 20:49:33', 61),
(380, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-11 21:30:04', '2018-09-12 20:49:27', 61),
(381, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-11 21:30:07', '2018-09-12 20:49:20', 61),
(382, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-11 21:30:11', '2018-09-12 20:49:11', 61),
(383, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-11 21:30:14', '2018-09-12 20:49:04', 61),
(384, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-11 21:30:16', '2018-09-12 20:48:22', 61),
(385, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-11 21:30:19', '2018-09-12 20:46:46', 61),
(386, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-11 21:30:22', '2018-09-12 20:46:39', 61),
(387, 'MCU', '1872055', '', '', '', '', '', '2018-09-11 21:30:26', '2018-09-11 21:30:26', 61),
(388, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-11 21:30:29', '2018-09-12 20:46:19', 61),
(389, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-11 21:30:37', '2018-09-12 20:47:54', 61),
(390, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-11 21:30:41', '2018-09-12 20:46:54', 61),
(391, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-11 21:31:58', '2018-09-12 20:48:15', 61),
(392, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-15 07:22:05', '2018-09-15 07:30:05', 64),
(393, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-15 07:22:07', '2018-09-15 07:30:09', 64),
(394, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-15 07:22:10', '2018-09-15 07:30:12', 64),
(395, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-15 07:22:12', '2018-09-15 07:30:14', 64),
(396, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-15 07:22:15', '2018-09-15 07:30:21', 64),
(397, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-15 07:22:18', '2018-09-15 07:30:24', 64),
(398, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-15 07:22:22', '2018-09-15 07:30:27', 64),
(399, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-15 07:22:25', '2018-09-15 07:30:31', 64),
(400, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-15 07:22:27', '2018-09-15 07:30:44', 64),
(401, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-15 07:22:45', '2018-09-15 07:30:18', 64),
(402, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-15 07:22:51', '2018-09-15 07:30:48', 64),
(403, 'MCU', '1772019', '', '', '', '', '', '2018-09-15 07:22:56', '2018-09-15 07:22:56', 64),
(404, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-15 07:23:14', '2018-09-15 07:30:53', 64),
(405, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-15 07:23:18', '2018-09-15 07:30:56', 64),
(406, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-15 07:23:23', '2018-09-15 07:31:38', 64),
(407, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-15 07:23:37', '2018-09-15 07:30:59', 64),
(408, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-15 07:23:43', '2018-09-15 07:31:02', 64),
(409, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-15 07:23:48', '2018-09-15 07:31:08', 64),
(410, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-15 07:23:52', '2018-09-15 07:31:12', 64),
(411, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-15 07:23:59', '2018-09-15 07:31:22', 64),
(412, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-15 07:24:04', '2018-09-15 07:31:19', 64),
(413, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-15 07:24:08', '2018-09-15 07:31:16', 64),
(414, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-15 07:24:25', '2018-09-15 07:31:27', 64),
(415, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-15 07:24:32', '2018-09-15 07:31:31', 64),
(416, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-15 07:24:48', '2018-09-15 07:31:35', 64),
(417, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-15 07:25:12', '2018-09-15 07:30:35', 64),
(419, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-15 07:26:13', '2018-09-15 07:32:24', 62),
(420, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-15 07:26:20', '2018-09-15 07:32:31', 62),
(421, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-15 07:26:24', '2018-09-15 07:32:34', 62),
(422, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-15 07:26:27', '2018-09-15 07:32:37', 62),
(423, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-15 07:26:30', '2018-09-15 07:32:39', 62),
(424, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-15 07:26:35', '2018-09-15 07:32:44', 62),
(425, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-15 07:26:39', '2018-09-15 07:32:48', 62),
(426, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-15 07:26:42', '2018-09-15 07:32:51', 62),
(427, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-15 07:26:46', '2018-09-15 07:32:54', 62),
(428, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-15 07:26:51', '2018-09-15 07:32:58', 62),
(429, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-15 07:26:56', '2018-09-15 07:33:01', 62),
(430, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-15 07:27:01', '2018-09-15 07:33:04', 62),
(431, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-15 07:27:04', '2018-09-15 07:33:06', 62),
(432, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-15 07:27:10', '2018-09-15 07:33:09', 62),
(433, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-15 07:27:14', '2018-09-15 07:33:12', 62),
(434, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-15 07:27:19', '2018-09-15 07:33:15', 62),
(435, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-15 07:27:25', '2018-09-15 07:33:17', 62),
(436, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-15 07:27:32', '2018-09-15 07:33:20', 62),
(437, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-15 07:27:37', '2018-09-15 07:33:23', 62),
(438, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-15 07:27:42', '2018-09-15 07:33:26', 62),
(439, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-15 07:27:47', '2018-09-15 07:33:29', 62),
(440, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-15 07:27:53', '2018-09-15 07:33:31', 62),
(441, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-15 07:27:57', '2018-09-15 07:33:34', 62),
(442, 'MCU', '1872054', '', '', '', '', '', '2018-09-15 07:28:01', '2018-09-15 07:28:01', 62),
(443, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-15 07:28:04', '2018-09-15 07:33:36', 62),
(444, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-15 07:28:20', '2018-09-15 07:33:46', 63),
(445, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-15 07:28:22', '2018-09-15 07:33:49', 63),
(446, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-15 07:28:25', '2018-09-15 07:33:52', 63),
(447, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-15 07:28:28', '2018-09-15 07:33:54', 63),
(448, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-15 07:28:31', '2018-09-15 07:33:58', 63),
(449, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-15 07:28:35', '2018-09-15 07:34:01', 63),
(450, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-15 07:28:38', '2018-09-15 07:34:07', 63),
(451, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-15 07:28:40', '2018-09-15 07:34:10', 63),
(452, 'MCU', '1872043', '', '', '', '', '', '2018-09-15 07:28:40', '2018-09-15 07:28:40', 63),
(453, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-15 07:28:43', '2018-09-15 07:34:22', 63),
(454, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-15 07:28:46', '2018-09-15 07:34:37', 63),
(455, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-15 07:28:52', '2018-09-15 07:34:34', 63),
(456, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-15 07:28:57', '2018-09-15 07:34:32', 63),
(457, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-15 07:29:00', '2018-09-15 07:34:29', 63),
(458, 'MCU', '1872019', '', '', '', '', '', '2018-09-15 07:29:03', '2018-09-15 07:29:03', 63),
(459, 'MCU', '1872031', '', '', '', '', '', '2018-09-15 07:29:06', '2018-09-15 07:29:06', 63),
(460, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-15 07:29:10', '2018-09-15 07:34:25', 63),
(461, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-15 07:35:24', '2018-09-15 07:35:32', 63),
(462, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-17 03:06:21', '2018-09-17 03:06:26', 63),
(463, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-17 21:49:27', '2018-09-18 02:05:03', 65),
(464, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-17 21:49:32', '2018-09-18 02:05:10', 65),
(465, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-17 21:49:35', '2018-09-18 02:05:14', 65),
(466, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-17 21:49:38', '2018-09-18 02:05:21', 65),
(467, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-17 21:49:49', '2018-09-18 02:05:25', 65),
(468, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-17 21:49:54', '2018-09-18 02:05:28', 65),
(469, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-17 21:49:58', '2018-09-18 02:05:33', 65),
(471, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-17 21:50:05', '2018-09-18 02:05:41', 65),
(472, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-17 22:04:36', '2018-09-18 02:06:15', 65),
(473, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-17 22:04:44', '2018-09-18 02:06:21', 65),
(474, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-17 22:04:49', '2018-09-18 02:05:48', 65),
(475, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-17 22:04:57', '2018-09-18 02:06:27', 65),
(476, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-17 22:05:04', '2018-09-18 02:06:33', 65),
(477, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-17 22:05:35', '2018-09-18 02:06:39', 65),
(478, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-17 22:05:47', '2018-09-18 02:06:09', 65),
(479, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-17 22:05:56', '2018-09-18 02:05:59', 65),
(480, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-17 22:06:03', '2018-09-18 02:05:53', 65),
(481, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-17 22:07:08', '2018-09-18 02:06:04', 65),
(482, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-17 22:07:35', '2018-09-18 02:05:18', 65),
(483, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-17 22:10:03', '2018-09-18 02:07:21', 65),
(484, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-17 22:10:11', '2018-09-18 02:07:28', 65),
(485, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-17 22:10:18', '2018-09-18 02:07:34', 65),
(486, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-17 22:10:30', '2018-09-18 02:07:40', 65),
(487, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-17 22:10:39', '2018-09-18 02:07:15', 65),
(488, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-17 22:10:48', '2018-09-18 02:07:10', 65),
(489, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-17 22:10:59', '2018-09-18 02:07:05', 65),
(490, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-17 22:11:05', '2018-09-18 02:06:59', 65),
(491, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-17 22:11:12', '2018-09-18 02:06:53', 65),
(492, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-17 22:11:17', '2018-09-18 02:06:48', 65),
(493, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-17 22:11:42', '2018-09-18 02:08:24', 65),
(494, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-17 22:11:53', '2018-09-18 02:08:35', 65),
(495, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-17 22:12:00', '2018-09-18 02:08:41', 65),
(496, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-17 22:12:07', '2018-09-18 02:08:29', 65),
(497, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-17 22:12:15', '2018-09-18 02:08:17', 65),
(498, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-17 22:12:25', '2018-09-18 02:08:12', 65),
(499, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-17 22:12:38', '2018-09-18 02:08:05', 65),
(500, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-17 22:12:45', '2018-09-18 02:08:00', 65),
(501, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-17 22:12:51', '2018-09-18 02:07:54', 65),
(502, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-17 22:12:55', '2018-09-18 02:07:49', 65),
(503, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-17 22:14:30', '2018-09-18 02:09:17', 65),
(504, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-17 22:14:38', '2018-09-18 02:09:25', 65),
(505, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-17 22:14:45', '2018-09-18 02:09:37', 65),
(506, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-17 22:14:53', '2018-09-18 02:09:42', 65),
(507, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-17 22:15:00', '2018-09-18 02:09:30', 65),
(508, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-17 22:15:08', '2018-09-18 02:09:12', 65),
(509, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-17 22:15:19', '2018-09-18 02:09:06', 65),
(510, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-17 22:15:28', '2018-09-18 02:09:01', 65),
(511, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-17 22:15:33', '2018-09-18 02:08:55', 65),
(512, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-17 22:15:37', '2018-09-18 02:08:50', 65),
(513, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-17 22:16:06', '2018-09-18 02:10:04', 65),
(514, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-17 22:16:12', '2018-09-18 02:10:17', 65),
(515, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-17 22:16:19', '2018-09-18 02:10:30', 65),
(516, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-17 22:16:24', '2018-09-18 02:10:43', 65),
(517, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-17 22:16:32', '2018-09-18 02:10:48', 65),
(518, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-17 22:16:45', '2018-09-18 02:10:36', 65),
(519, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-17 22:17:17', '2018-09-18 02:10:25', 65),
(520, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-17 22:17:24', '2018-09-18 02:10:10', 65),
(521, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-17 22:17:32', '2018-09-18 02:09:57', 65),
(522, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-17 22:17:37', '2018-09-18 02:09:51', 65),
(523, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-17 22:17:51', '2018-09-18 02:10:59', 65),
(524, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-17 22:17:58', '2018-09-18 02:11:04', 65),
(525, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-17 22:18:05', '2018-09-18 02:11:18', 65),
(526, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-17 22:18:21', '2018-09-18 02:11:25', 65),
(527, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-17 22:18:26', '2018-09-18 02:11:10', 65),
(528, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-20 01:25:11', '2018-09-20 01:25:22', 65),
(529, 'MCU', '1372097', '', '', '', '', 'terdaftar', '2018-09-20 18:35:50', '2018-09-20 18:37:49', 68),
(530, 'MCU', '1772019', '', '', '', '', 'terdaftar', '2018-09-20 18:35:51', '2018-09-20 18:37:52', 68),
(531, 'MCU', '1872001', '', '', '', '', 'terdaftar', '2018-09-20 18:35:52', '2018-09-20 18:37:55', 68),
(532, 'MCU', '1772036', '', '', '', '', 'terdaftar', '2018-09-20 18:35:53', '2018-09-20 18:37:53', 68),
(533, 'MCU', '1872002', '', '', '', '', 'terdaftar', '2018-09-20 18:36:00', '2018-09-20 18:37:57', 68),
(534, 'MCU', '1872003', '', '', '', '', 'terdaftar', '2018-09-20 18:36:07', '2018-09-20 18:37:59', 68),
(535, 'MCU', '1872003', '', '', '', '', '', '2018-09-20 18:36:17', '2018-09-20 18:36:17', 68),
(536, 'MCU', '1872010', '', '', '', '', 'terdaftar', '2018-09-20 18:36:20', '2018-09-20 18:38:00', 68),
(537, 'MCU', '1872016', '', '', '', '', 'terdaftar', '2018-09-20 18:36:23', '2018-09-20 18:38:04', 68),
(538, 'MCU', '1872020', '', '', '', '', 'terdaftar', '2018-09-20 18:36:25', '2018-09-20 18:38:06', 68),
(539, 'MCU', '1872022', '', '', '', '', 'terdaftar', '2018-09-20 18:36:29', '2018-09-20 18:38:15', 68),
(540, 'MCU', '1872024', '', '', '', '', 'terdaftar', '2018-09-20 18:36:33', '2018-09-20 18:38:17', 68),
(541, 'MCU', '1872027', '', '', '', '', 'terdaftar', '2018-09-20 18:36:36', '2018-09-20 18:38:24', 68),
(542, 'MCU', '1872028', '', '', '', '', 'terdaftar', '2018-09-20 18:36:44', '2018-09-20 18:38:27', 68),
(543, 'MCU', '1872032', '', '', '', '', 'terdaftar', '2018-09-20 18:36:54', '2018-09-20 18:38:29', 68),
(544, 'MCU', '1872034', '', '', '', '', 'terdaftar', '2018-09-20 18:37:03', '2018-09-20 18:38:31', 68),
(545, 'MCU', '1872036', '', '', '', '', 'terdaftar', '2018-09-20 18:37:07', '2018-09-20 18:38:34', 68),
(546, 'MCU', '1872044', '', '', '', '', 'terdaftar', '2018-09-20 18:37:10', '2018-09-20 18:38:39', 68),
(547, 'MCU', '1872040', '', '', '', '', 'terdaftar', '2018-09-20 18:37:12', '2018-09-20 18:38:37', 68),
(548, 'MCU', '1872039', '', '', '', '', 'terdaftar', '2018-09-20 18:37:17', '2018-09-20 18:38:36', 68),
(549, 'MCU', '1872046', '', '', '', '', 'terdaftar', '2018-09-20 18:37:28', '2018-09-20 18:38:42', 68),
(550, 'MCU', '1872048', '', '', '', '', 'terdaftar', '2018-09-20 18:37:31', '2018-09-20 18:38:44', 68),
(551, 'MCU', '1872051', '', '', '', '', 'terdaftar', '2018-09-20 18:37:35', '2018-09-20 18:38:47', 68),
(552, 'MCU', '1872052', '', '', '', '', 'terdaftar', '2018-09-20 18:37:39', '2018-09-20 18:38:49', 68),
(553, 'MCU', '1872056', '', '', '', '', 'terdaftar', '2018-09-20 18:37:42', '2018-09-20 18:38:52', 68),
(554, 'MCU', '1872004', '', '', '', '', 'terdaftar', '2018-09-20 18:39:16', '2018-09-20 18:39:19', 68),
(556, 'MCU', '1872008', '', '', '', '', 'terdaftar', '2018-09-20 18:39:46', '2018-09-20 18:43:20', 66),
(557, 'MCU', '1872009', '', '', '', '', 'terdaftar', '2018-09-20 18:39:50', '2018-09-20 18:43:21', 66),
(558, 'MCU', '1872011', '', '', '', '', 'terdaftar', '2018-09-20 18:39:53', '2018-09-20 18:43:23', 66),
(559, 'MCU', '1872012', '', '', '', '', 'terdaftar', '2018-09-20 18:39:56', '2018-09-20 18:43:24', 66),
(560, 'MCU', '1872014', '', '', '', '', 'terdaftar', '2018-09-20 18:40:01', '2018-09-20 18:43:26', 66),
(561, 'MCU', '1872015', '', '', '', '', 'terdaftar', '2018-09-20 18:40:04', '2018-09-20 18:43:27', 66),
(562, 'MCU', '1872017', '', '', '', '', 'terdaftar', '2018-09-20 18:40:19', '2018-09-20 18:43:29', 66),
(563, 'MCU', '1872018', '', '', '', '', 'terdaftar', '2018-09-20 18:40:23', '2018-09-20 18:43:30', 66),
(564, 'MCU', '1872021', '', '', '', '', 'terdaftar', '2018-09-20 18:40:26', '2018-09-20 18:43:32', 66),
(565, 'MCU', '1872023', '', '', '', '', 'terdaftar', '2018-09-20 18:40:30', '2018-09-20 18:43:36', 66),
(566, 'MCU', '1872029', '', '', '', '', 'terdaftar', '2018-09-20 18:40:33', '2018-09-20 18:43:41', 66),
(567, 'MCU', '1872029', '', '', '', '', '', '2018-09-20 18:40:38', '2018-09-20 18:40:38', 66),
(568, 'MCU', '1872030', '', '', '', '', 'terdaftar', '2018-09-20 18:40:45', '2018-09-20 18:43:44', 66),
(569, 'MCU', '1872033', '', '', '', '', 'terdaftar', '2018-09-20 18:40:49', '2018-09-20 18:43:46', 66),
(570, 'MCU', '1872035', '', '', '', '', 'terdaftar', '2018-09-20 18:41:00', '2018-09-20 18:43:48', 66),
(571, 'MCU', '1872041', '', '', '', '', 'terdaftar', '2018-09-20 18:41:13', '2018-09-20 18:43:52', 66),
(572, 'MCU', '1872042', '', '', '', '', 'terdaftar', '2018-09-20 18:41:16', '2018-09-20 18:43:55', 66),
(573, 'MCU', '1872042', '', '', '', '', '', '2018-09-20 18:41:21', '2018-09-20 18:41:21', 66),
(574, 'MCU', '1872045', '', '', '', '', 'terdaftar', '2018-09-20 18:41:25', '2018-09-20 18:43:57', 66),
(575, 'MCU', '1872047', '', '', '', '', 'terdaftar', '2018-09-20 18:41:30', '2018-09-20 18:43:59', 66),
(576, 'MCU', '1872053', '', '', '', '', 'terdaftar', '2018-09-20 18:41:33', '2018-09-20 18:44:09', 66),
(577, 'MCU', '1872057', '', '', '', '', 'terdaftar', '2018-09-20 18:41:36', '2018-09-20 18:44:07', 66),
(578, 'MCU', '1872054', '', '', '', '', 'terdaftar', '2018-09-20 18:41:39', '2018-09-20 18:44:04', 66),
(579, 'MCU', '1872026', '', '', '', '', 'terdaftar', '2018-09-20 18:42:23', '2018-09-20 18:43:39', 66),
(580, 'MCU', '1872038', '', '', '', '', 'terdaftar', '2018-09-20 18:42:47', '2018-09-20 18:43:50', 66),
(581, 'MCU', '1872050', '', '', '', '', 'terdaftar', '2018-09-20 18:43:16', '2018-09-20 18:44:02', 66),
(582, 'MCU', '1872005', '', '', '', '', 'terdaftar', '2018-09-20 18:44:23', '2018-09-20 18:45:15', 67),
(583, 'MCU', '1872005', '', '', '', '', '', '2018-09-20 18:44:26', '2018-09-20 18:44:26', 67),
(584, 'MCU', '1872007', '', '', '', '', 'terdaftar', '2018-09-20 18:44:28', '2018-09-20 18:45:17', 67),
(585, 'MCU', '1872013', '', '', '', '', 'terdaftar', '2018-09-20 18:44:30', '2018-09-20 18:45:20', 67),
(586, 'MCU', '1872019', '', '', '', '', 'terdaftar', '2018-09-20 18:44:36', '2018-09-20 18:45:19', 67),
(587, 'MCU', '1872025', '', '', '', '', 'terdaftar', '2018-09-20 18:44:38', '2018-09-20 18:45:22', 67),
(588, 'MCU', '1872031', '', '', '', '', 'terdaftar', '2018-09-20 18:44:41', '2018-09-20 18:45:24', 67);
INSERT INTO `tournamentteam` (`id`, `namaTeam`, `anggota1`, `anggota2`, `anggota3`, `anggota4`, `anggota5`, `status`, `created_at`, `updated_at`, `idTournament`) VALUES
(589, 'MCU', '1872037', '', '', '', '', 'terdaftar', '2018-09-20 18:44:44', '2018-09-20 18:45:26', 67),
(590, 'MCU', '1872043', '', '', '', '', 'terdaftar', '2018-09-20 18:44:46', '2018-09-20 18:45:28', 67),
(591, 'MCU', '1872049', '', '', '', '', 'terdaftar', '2018-09-20 18:44:48', '2018-09-20 18:45:29', 67),
(592, 'MCU', '1872055', '', '', '', '', 'terdaftar', '2018-09-20 18:44:51', '2018-09-20 18:45:32', 67),
(593, 'MCU', '1872058', '', '', '', '', 'terdaftar', '2018-09-20 18:45:00', '2018-09-20 18:45:34', 67),
(594, 'MCU', '1872059', '', '', '', '', 'terdaftar', '2018-09-20 18:45:03', '2018-09-20 18:45:36', 67),
(595, 'MCU', '1872060', '', '', '', '', 'terdaftar', '2018-09-20 18:45:06', '2018-09-20 18:45:39', 67),
(596, 'MCU', '1872062', '', '', '', '', 'terdaftar', '2018-09-20 18:45:10', '2018-09-20 18:45:43', 67),
(597, 'MCU', '1872061', '', '', '', '', 'terdaftar', '2018-09-20 18:45:14', '2018-09-20 18:45:41', 67),
(598, 'MCU_1872063', '1872063', '', '', '', '', 'terdaftar', '2018-09-20 18:46:19', '2018-09-20 18:46:21', 67),
(600, 'MCU_1672013', '1672013', '', '', '', '', 'terdaftar', '2018-12-28 03:10:11', '2018-12-28 03:10:23', 53),
(602, 'MCU_1672014', '1672014', '', '', '', '', 'terdaftar', '2018-12-28 03:47:54', '2018-12-28 03:50:41', 53),
(603, 'MCU_1472002', '1472002', '', '', '', '', 'terdaftar', '2018-12-28 03:50:57', '2018-12-28 03:56:58', 53),
(605, 'MCU_1173012', '1173012', '', '', '', '', 'terdaftar', '2019-01-06 06:48:18', '2019-09-26 17:34:16', 54),
(606, 'MCU', '1372097', '', '', '', '', '', '2019-09-26 17:34:05', '2019-09-26 17:34:05', 54);

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
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`idAnswer`),
  ADD KEY `pertemuan_idPertemuan` (`pertemuan_idPertemuan`),
  ADD KEY `pertemuan_MasterDKBS_idMasterDKBS` (`pertemuan_MasterDKBS_idMasterDKBS`),
  ADD KEY `pertemuan_MasterDKBS_semester_idSemester` (`pertemuan_MasterDKBS_semester_idSemester`),
  ADD KEY `mahasiswa_NRP` (`mahasiswa_NRP`),
  ADD KEY `detaiQuestion_idDetailQuestion` (`detaiQuestion_idDetailQuestion`);

--
-- Indexes for table `banksoal`
--
ALTER TABLE `banksoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idComment`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detaildkbs`
--
ALTER TABLE `detaildkbs`
  ADD PRIMARY KEY (`idDetailDKBS`),
  ADD KEY `masterdkbs_idMasterDKBS` (`masterdkbs_idMasterDKBS`),
  ADD KEY `mahasiswa_NRP` (`mahasiswa_NRP`);

--
-- Indexes for table `detailquestion`
--
ALTER TABLE `detailquestion`
  ADD PRIMARY KEY (`idDetailQuestion`),
  ADD KEY `paketQuestion_idPaketQuestion` (`paketQuestion_idPaketQuestion`);

--
-- Indexes for table `dkbs`
--
ALTER TABLE `dkbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

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
-- Indexes for table `forumcomment`
--
ALTER TABLE `forumcomment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `forumcommentpost` (`post_id`);

--
-- Indexes for table `forumpost`
--
ALTER TABLE `forumpost`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forumpostmatakuliah` (`idDKBS`),
  ADD KEY `forumpostsemester` (`semester`);

--
-- Indexes for table `forumreply`
--
ALTER TABLE `forumreply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `forumreplycomment` (`comment_id`);

--
-- Indexes for table `forumtopic`
--
ALTER TABLE `forumtopic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `forumtopicpost`
--
ALTER TABLE `forumtopicpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forumpostid` (`post_id`),
  ADD KEY `forumtopicid` (`topic_id`);

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
-- Indexes for table `komentarmk`
--
ALTER TABLE `komentarmk`
  ADD PRIMARY KEY (`idKomentar`),
  ADD KEY `detaildkbs_idDetailDKBS` (`detaildkbs_idDetailDKBS`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nrp` (`nrp`);

--
-- Indexes for table `masterdkbs`
--
ALTER TABLE `masterdkbs`
  ADD PRIMARY KEY (`idMasterDKBS`),
  ADD KEY `matakuliah_idMataKuliah` (`matakuliah_kodeMK`),
  ADD KEY `semester_idSemester` (`semester_namaSemester`),
  ADD KEY `dosen_NIP` (`dosen_nik`);

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
-- Indexes for table `paketquestion`
--
ALTER TABLE `paketquestion`
  ADD PRIMARY KEY (`idPaketQuestion`);

--
-- Indexes for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD PRIMARY KEY (`idPertemuan`),
  ADD KEY `masterdkbs_idMasterDKBS` (`masterdkbs_idMasterDKBS`),
  ADD KEY `paketquestion_idPaketQuestion` (`paketquestion_idPaketQuestion`);

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
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`idSemester`),
  ADD UNIQUE KEY `namaSemester` (`namaSemester`);

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
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `idAnswer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `banksoal`
--
ALTER TABLE `banksoal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `idComment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detaildkbs`
--
ALTER TABLE `detaildkbs`
  MODIFY `idDetailDKBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `detailquestion`
--
ALTER TABLE `detailquestion`
  MODIFY `idDetailQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dkbs`
--
ALTER TABLE `dkbs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forecasting`
--
ALTER TABLE `forecasting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forumcomment`
--
ALTER TABLE `forumcomment`
  MODIFY `comment_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forumpost`
--
ALTER TABLE `forumpost`
  MODIFY `post_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forumreply`
--
ALTER TABLE `forumreply`
  MODIFY `reply_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forumtopic`
--
ALTER TABLE `forumtopic`
  MODIFY `topic_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forumtopicpost`
--
ALTER TABLE `forumtopicpost`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jawabanisian`
--
ALTER TABLE `jawabanisian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `jawabanpg`
--
ALTER TABLE `jawabanpg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2054;

--
-- AUTO_INCREMENT for table `komentarmk`
--
ALTER TABLE `komentarmk`
  MODIFY `idKomentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `livestream`
--
ALTER TABLE `livestream`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `masterdkbs`
--
ALTER TABLE `masterdkbs`
  MODIFY `idMasterDKBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- AUTO_INCREMENT for table `paketquestion`
--
ALTER TABLE `paketquestion`
  MODIFY `idPaketQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pertemuan`
--
ALTER TABLE `pertemuan`
  MODIFY `idPertemuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `idSemester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `soalisian`
--
ALTER TABLE `soalisian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `soalpg`
--
ALTER TABLE `soalpg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tournamentregister`
--
ALTER TABLE `tournamentregister`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `tournamentteam`
--
ALTER TABLE `tournamentteam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`detaiQuestion_idDetailQuestion`) REFERENCES `detailquestion` (`idDetailQuestion`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`pertemuan_idPertemuan`) REFERENCES `pertemuan` (`idPertemuan`),
  ADD CONSTRAINT `answer_ibfk_3` FOREIGN KEY (`mahasiswa_NRP`) REFERENCES `mahasiswa` (`nrp`);

--
-- Constraints for table `detaildkbs`
--
ALTER TABLE `detaildkbs`
  ADD CONSTRAINT `detaildkbs_ibfk_1` FOREIGN KEY (`masterdkbs_idMasterDKBS`) REFERENCES `masterdkbs` (`idMasterDKBS`);

--
-- Constraints for table `detailquestion`
--
ALTER TABLE `detailquestion`
  ADD CONSTRAINT `detailquestion_ibfk_1` FOREIGN KEY (`paketQuestion_idPaketQuestion`) REFERENCES `paketquestion` (`idPaketQuestion`);

--
-- Constraints for table `forumcomment`
--
ALTER TABLE `forumcomment`
  ADD CONSTRAINT `forumcommentpost` FOREIGN KEY (`post_id`) REFERENCES `forumpost` (`post_id`);

--
-- Constraints for table `forumreply`
--
ALTER TABLE `forumreply`
  ADD CONSTRAINT `forumreplycomment` FOREIGN KEY (`comment_id`) REFERENCES `forumcomment` (`comment_id`);

--
-- Constraints for table `forumtopicpost`
--
ALTER TABLE `forumtopicpost`
  ADD CONSTRAINT `forumpostid` FOREIGN KEY (`post_id`) REFERENCES `forumpost` (`post_id`),
  ADD CONSTRAINT `forumtopicid` FOREIGN KEY (`topic_id`) REFERENCES `forumtopic` (`topic_id`);

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
-- Constraints for table `komentarmk`
--
ALTER TABLE `komentarmk`
  ADD CONSTRAINT `komentarmk_ibfk_1` FOREIGN KEY (`detaildkbs_idDetailDKBS`) REFERENCES `detaildkbs` (`idDetailDKBS`);

--
-- Constraints for table `masterdkbs`
--
ALTER TABLE `masterdkbs`
  ADD CONSTRAINT `masterdkbs_ibfk_2` FOREIGN KEY (`dosen_nik`) REFERENCES `dosen` (`nik`),
  ADD CONSTRAINT `masterdkbs_ibfk_3` FOREIGN KEY (`matakuliah_kodeMK`) REFERENCES `matakuliah` (`kodeMK`),
  ADD CONSTRAINT `masterdkbs_ibfk_4` FOREIGN KEY (`semester_namaSemester`) REFERENCES `semester` (`namaSemester`);

--
-- Constraints for table `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD CONSTRAINT `pertemuan_ibfk_1` FOREIGN KEY (`masterdkbs_idMasterDKBS`) REFERENCES `masterdkbs` (`idMasterDKBS`),
  ADD CONSTRAINT `pertemuan_ibfk_2` FOREIGN KEY (`paketquestion_idPaketQuestion`) REFERENCES `paketquestion` (`idPaketQuestion`);

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
