-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 08:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(15) NOT NULL,
  `nam` varchar(50) NOT NULL,
  `p_studi` varchar(15) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `koor`
--

CREATE TABLE `koor` (
  `id_koor` varchar(15) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `thn_ajaran` varchar(20) NOT NULL,
  `id_bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `masterbidang`
--

CREATE TABLE `masterbidang` (
  `IdBidang` int(11) NOT NULL,
  `nama_bidang` varchar(70) DEFAULT NULL,
  `ket_bidang` varchar(255) DEFAULT NULL,
  `file_lampiran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterbidang`
--

INSERT INTO `masterbidang` (`IdBidang`, `nama_bidang`, `ket_bidang`, `file_lampiran`) VALUES
(2, '  asd', ' asd', ' sda'),
(3, ' qwe', 'qwe', 'qwe'),
(4, ' ss', 'ww', 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `master_kegiatan`
--

CREATE TABLE `master_kegiatan` (
  `id_kegiatan` varchar(15) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `id_mitra` varchar(15) NOT NULL,
  `lokasi_kegiatan` varchar(30) NOT NULL,
  `bentuk_kegiatan` varchar(15) NOT NULL,
  `pengakuan_sks` varchar(15) NOT NULL,
  `durasi_kegiatan` varchar(50) NOT NULL,
  `deskripsi_kegiatan` varchar(255) NOT NULL,
  `rincian_kegiatan` varchar(255) NOT NULL,
  `file_pendukung` varchar(100) NOT NULL,
  `nama_pic` varchar(30) NOT NULL,
  `email_pic` varchar(50) NOT NULL,
  `no_hp_pic` varchar(30) NOT NULL,
  `tgl_daftar_kegiatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_mitra`
--

CREATE TABLE `master_mitra` (
  `id_mitra` varchar(15) NOT NULL,
  `nama_mitra` varchar(50) NOT NULL,
  `lokasi_kota` varchar(50) NOT NULL,
  `logo_mitra` varchar(50) NOT NULL,
  `bidang_mitra` varchar(50) NOT NULL,
  `alamat_mitra` varchar(100) NOT NULL,
  `no_kantor` varchar(20) NOT NULL,
  `nama_penanggungjawab` varchar(30) NOT NULL,
  `no_penanggungjawab` varchar(20) NOT NULL,
  `email_penanggungjawab` varchar(50) NOT NULL,
  `web_mitra` varchar(50) NOT NULL,
  `tgl_daftar_mit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_sektor`
--

CREATE TABLE `master_sektor` (
  `id_sektor` varchar(15) NOT NULL,
  `nama_sektor` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regis_kegiatan`
--

CREATE TABLE `regis_kegiatan` (
  `id_regis` varchar(15) NOT NULL,
  `id_bidang` varchar(15) NOT NULL,
  `id_sektor` varchar(15) NOT NULL,
  `id_kegiatan` varchar(15) NOT NULL,
  `thn_ajaran` varchar(15) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tgl_regis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regis_kegiatan_mahasiswa`
--

CREATE TABLE `regis_kegiatan_mahasiswa` (
  `id_kegiatan` varchar(15) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `bukti_transkip` varchar(50) NOT NULL,
  `status_persetujuan` varchar(15) NOT NULL,
  `status_penerimaan` varchar(15) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `tgl_disetujui` date NOT NULL,
  `tgl_diterima` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `koor`
--
ALTER TABLE `koor`
  ADD PRIMARY KEY (`id_koor`);

--
-- Indexes for table `masterbidang`
--
ALTER TABLE `masterbidang`
  ADD PRIMARY KEY (`IdBidang`);

--
-- Indexes for table `master_kegiatan`
--
ALTER TABLE `master_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `master_mitra`
--
ALTER TABLE `master_mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `master_sektor`
--
ALTER TABLE `master_sektor`
  ADD PRIMARY KEY (`id_sektor`);

--
-- Indexes for table `regis_kegiatan`
--
ALTER TABLE `regis_kegiatan`
  ADD PRIMARY KEY (`id_regis`);

--
-- Indexes for table `regis_kegiatan_mahasiswa`
--
ALTER TABLE `regis_kegiatan_mahasiswa`
  ADD PRIMARY KEY (`semester`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masterbidang`
--
ALTER TABLE `masterbidang`
  MODIFY `IdBidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
