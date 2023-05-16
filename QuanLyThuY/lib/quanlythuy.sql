-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 05:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlythuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `cccdKH` varchar(20) NOT NULL,
  `idTC` int(11) NOT NULL,
  `thanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`cccdKH`, `idTC`, `thanhTien`) VALUES
('123456789012', 6, 50000),
('234567890123', 7, 150000),
('345678901234', 10, 80000),
('456789012345', 8, 70000),
('567890123456', 9, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `cccd` varchar(12) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`cccd`, `sdt`, `hoten`, `email`) VALUES
('1231231111', '123123123', '1231231231', '1231231231'),
('123456789012', '0901234567', 'Nguyen Van A', 'nguyenvana@gmail.com'),
('234567890123', '0902345678', 'Tran Thi B', 'tranthib@gmail.com'),
('345678901234', '0903456789', 'Le Van C', 'levanc@gmail.com'),
('456789012345', '0904567890', 'Pham Thi D', 'phamthid@gmail.com'),
('567890123456', '0905678901', 'Hoang Van E', 'hoangvane@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `thucung`
--

CREATE TABLE `thucung` (
  `idTC` int(11) NOT NULL,
  `cccdKH` varchar(12) NOT NULL,
  `loai` varchar(20) NOT NULL,
  `dichvu` varchar(50) NOT NULL,
  `urlhinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thucung`
--

INSERT INTO `thucung` (`idTC`, `cccdKH`, `loai`, `dichvu`, `urlhinh`) VALUES
(6, '123456789012', 'cat', 'Trông giữ thứ cưng', 'images\\hamster0.jpg'),
(7, '123456789012', 'dog', 'Khám định kỳ', 'images\\hamster0.jpg'),
(8, '234567890123', 'hamster', 'Chải lông', 'images\\hamster0.jpg'),
(9, '345678901234', 'human', 'Chích ngừa', 'images\\hamster0.jpg'),
(10, '456789012345', 'cat', 'Khám định kỳ', 'images\\hamster0.jpg'),
(14, '1231231111', 'human', 'Trông giữ thứ cưng', ''),
(15, '1231231111', 'human', 'Trông giữ thứ cưng', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`cccdKH`,`idTC`),
  ADD KEY `idTC` (`idTC`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`cccd`);

--
-- Indexes for table `thucung`
--
ALTER TABLE `thucung`
  ADD PRIMARY KEY (`idTC`),
  ADD KEY `cccdKH` (`cccdKH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `thucung`
--
ALTER TABLE `thucung`
  MODIFY `idTC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`cccdKH`) REFERENCES `khachhang` (`cccd`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`idTC`) REFERENCES `thucung` (`idTC`);

--
-- Constraints for table `thucung`
--
ALTER TABLE `thucung`
  ADD CONSTRAINT `thucung_ibfk_1` FOREIGN KEY (`cccdKH`) REFERENCES `khachhang` (`cccd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
