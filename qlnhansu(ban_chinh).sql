-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 05:35 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlnhansu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tlb_chucvu`
--

CREATE TABLE `tlb_chucvu` (
  `id_Chucvu` int(11) NOT NULL,
  `ten_Chucvu` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_congviec`
--

CREATE TABLE `tlb_congviec` (
  `id_congviec` int(11) NOT NULL,
  `ma_nv` varchar(10) COLLATE utf8_bin NOT NULL,
  `ngay_vao_lam` date DEFAULT NULL,
  `id_Phg` int(11) DEFAULT NULL,
  `id_luong` int(11) DEFAULT NULL,
  `tknh` int(11) DEFAULT NULL,
  `ngan_hang` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `id_ctcongviec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_ctcongviec`
--

CREATE TABLE `tlb_ctcongviec` (
  `id_ctcongviec` int(11) NOT NULL,
  `ten_cong_viec` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_hopdong`
--

CREATE TABLE `tlb_hopdong` (
  `id_hopdong` int(11) NOT NULL,
  `ma_nv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `so_quyet_dinh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tu_ngay` date DEFAULT NULL,
  `den_ngay` date DEFAULT NULL,
  `loai_hop_dong` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_luong`
--

CREATE TABLE `tlb_luong` (
  `id_luong` int(11) NOT NULL,
  `muc_luong` decimal(10,0) NOT NULL,
  `so_nam_kinh_nghiem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_nguoidung`
--

CREATE TABLE `tlb_nguoidung` (
  `id_nguoidung` int(11) NOT NULL,
  `ma_nv` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `matkhau` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_nhanvien`
--

CREATE TABLE `tlb_nhanvien` (
  `ma_nv` varchar(10) COLLATE utf8_bin NOT NULL,
  `ho_ten` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `gioi_tinh` tinyint(4) DEFAULT NULL,
  `gia_dinh` tinyint(4) DEFAULT NULL,
  `dien_thoai` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `noi_sinh` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `tinh_thanh` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `cmnd` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ngay_cap` date DEFAULT NULL,
  `noi_cap` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `que_quan` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dia_chi` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tam_tru` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hinh_anh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `nghi_viec` int(2) DEFAULT NULL,
  `id_luong` int(11) DEFAULT NULL,
  `id_Phg` int(11) DEFAULT NULL,
  `id_Chucvu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_phongban`
--

CREATE TABLE `tlb_phongban` (
  `id_Phg` int(11) NOT NULL,
  `ten_Phg` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tlb_thannhan`
--

CREATE TABLE `tlb_thannhan` (
  `id_thannhan` int(11) NOT NULL,
  `ma_nv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ten_nguoi_than` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `nam_sinh` int(11) DEFAULT NULL,
  `moi_quan_he` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `nghe_nghiep` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dia_chi` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dien_thoai` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tlb_chucvu`
--
ALTER TABLE `tlb_chucvu`
  ADD PRIMARY KEY (`id_Chucvu`);

--
-- Indexes for table `tlb_congviec`
--
ALTER TABLE `tlb_congviec`
  ADD PRIMARY KEY (`id_congviec`),
  ADD KEY `fk_congviec_nhanvien` (`ma_nv`),
  ADD KEY `fk_congviec_ctcongviec` (`id_ctcongviec`);

--
-- Indexes for table `tlb_ctcongviec`
--
ALTER TABLE `tlb_ctcongviec`
  ADD PRIMARY KEY (`id_ctcongviec`);

--
-- Indexes for table `tlb_hopdong`
--
ALTER TABLE `tlb_hopdong`
  ADD PRIMARY KEY (`id_hopdong`);

--
-- Indexes for table `tlb_luong`
--
ALTER TABLE `tlb_luong`
  ADD PRIMARY KEY (`id_luong`);

--
-- Indexes for table `tlb_nguoidung`
--
ALTER TABLE `tlb_nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`),
  ADD KEY `fk_nguoidung_nhanvien` (`ma_nv`);

--
-- Indexes for table `tlb_nhanvien`
--
ALTER TABLE `tlb_nhanvien`
  ADD PRIMARY KEY (`ma_nv`),
  ADD KEY `fk_nhanvien_phg` (`id_Phg`),
  ADD KEY `fk_nhanvien_chucvu` (`id_Chucvu`),
  ADD KEY `fk_nhanvien_luong` (`id_luong`);

--
-- Indexes for table `tlb_phongban`
--
ALTER TABLE `tlb_phongban`
  ADD PRIMARY KEY (`id_Phg`);

--
-- Indexes for table `tlb_thannhan`
--
ALTER TABLE `tlb_thannhan`
  ADD PRIMARY KEY (`id_thannhan`),
  ADD KEY `fk_thannhan_nhanvien` (`ma_nv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tlb_chucvu`
--
ALTER TABLE `tlb_chucvu`
  MODIFY `id_Chucvu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_congviec`
--
ALTER TABLE `tlb_congviec`
  MODIFY `id_congviec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_ctcongviec`
--
ALTER TABLE `tlb_ctcongviec`
  MODIFY `id_ctcongviec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_hopdong`
--
ALTER TABLE `tlb_hopdong`
  MODIFY `id_hopdong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_luong`
--
ALTER TABLE `tlb_luong`
  MODIFY `id_luong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_nguoidung`
--
ALTER TABLE `tlb_nguoidung`
  MODIFY `id_nguoidung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_phongban`
--
ALTER TABLE `tlb_phongban`
  MODIFY `id_Phg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tlb_thannhan`
--
ALTER TABLE `tlb_thannhan`
  MODIFY `id_thannhan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tlb_congviec`
--
ALTER TABLE `tlb_congviec`
  ADD CONSTRAINT `fk_congviec_ctcongviec` FOREIGN KEY (`id_ctcongviec`) REFERENCES `tlb_ctcongviec` (`id_ctcongviec`),
  ADD CONSTRAINT `fk_congviec_nhanvien` FOREIGN KEY (`ma_nv`) REFERENCES `tlb_nhanvien` (`ma_nv`);

--
-- Constraints for table `tlb_nguoidung`
--
ALTER TABLE `tlb_nguoidung`
  ADD CONSTRAINT `fk_nguoidung_nhanvien` FOREIGN KEY (`ma_nv`) REFERENCES `tlb_nhanvien` (`ma_nv`);

--
-- Constraints for table `tlb_nhanvien`
--
ALTER TABLE `tlb_nhanvien`
  ADD CONSTRAINT `fk_nhanvien_chucvu` FOREIGN KEY (`id_Chucvu`) REFERENCES `tlb_chucvu` (`id_Chucvu`),
  ADD CONSTRAINT `fk_nhanvien_luong` FOREIGN KEY (`id_luong`) REFERENCES `tlb_luong` (`id_luong`),
  ADD CONSTRAINT `fk_nhanvien_phg` FOREIGN KEY (`id_Phg`) REFERENCES `tlb_phongban` (`id_Phg`);

--
-- Constraints for table `tlb_thannhan`
--
ALTER TABLE `tlb_thannhan`
  ADD CONSTRAINT `fk_thannhan_nhanvien` FOREIGN KEY (`ma_nv`) REFERENCES `tlb_nhanvien` (`ma_nv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
