-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm_database2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangcap`
--

CREATE TABLE `bangcap` (
  `id` int(11) NOT NULL,
  `MaBC` varchar(20) NOT NULL,
  `SoQD` varchar(20) NOT NULL,
  `TenBC` varchar(50) NOT NULL,
  `LoaiBC` varchar(50) NOT NULL,
  `ChuyenNganh` varchar(50) NOT NULL,
  `HinhThuc` varchar(50) DEFAULT NULL,
  `XepLoai` varchar(30) NOT NULL,
  `DiemSo` varchar(10) NOT NULL,
  `NgayKy` date NOT NULL,
  `HieuLuc` varchar(20) NOT NULL,
  `ToChuc` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `TrangThai` varchar(20) NOT NULL DEFAULT 'Còn hiệu lực',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangcap`
--

INSERT INTO `bangcap` (`id`, `MaBC`, `SoQD`, `TenBC`, `LoaiBC`, `ChuyenNganh`, `HinhThuc`, `XepLoai`, `DiemSo`, `NgayKy`, `HieuLuc`, `ToChuc`, `DiaChi`, `GhiChu`, `TrangThai`, `createdAt`, `updatedAt`, `idNhanVien`) VALUES
(1, 'MBC305369561', 'QĐ-1214', 'Bằng tốt nghiệp đại học', 'Bằng đại học', 'Kinh tế ', 'Đào tạo chính quy', 'Khá', '7.4', '2023-04-03', 'Không thời hạn', 'Trường Đại học Kinh tế Hồ Chí Minh', '123 Trần Hưng Đạo, Quận 1, Thành phố Hồ Chí Minh', '', 'Còn hiệu lực', '2023-04-24 03:03:39', '2023-04-24 03:03:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `baohiem`
--

CREATE TABLE `baohiem` (
  `id` int(11) NOT NULL,
  `MaBH` varchar(30) NOT NULL,
  `NgayBD` date NOT NULL,
  `MucDong` varchar(30) NOT NULL,
  `PhanTramLD` varchar(10) NOT NULL,
  `PhanTramCT` varchar(10) NOT NULL,
  `NhanVienDong` varchar(20) NOT NULL,
  `TrangThai` varchar(30) NOT NULL DEFAULT 'Còn hiệu lực',
  `GhiChu` varchar(255) DEFAULT NULL,
  `NguoiThucHien` varchar(255) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baohiem`
--

INSERT INTO `baohiem` (`id`, `MaBH`, `NgayBD`, `MucDong`, `PhanTramLD`, `PhanTramCT`, `NhanVienDong`, `TrangThai`, `GhiChu`, `NguoiThucHien`, `idNhanVien`, `createdAt`, `updatedAt`) VALUES
(1, '1312433532', '2023-04-11', '5000000', '10', '18', '500000', 'Còn hiệu lực', '', 'Nguyễn Văn A', 1, '2023-04-24 02:55:08', '2023-04-24 02:55:08'),
(2, '1312433564', '2023-04-13', '5000000', '10', '18', '500000', 'Còn hiệu lực', '', 'Nguyễn Văn A', 2, '2023-04-26 15:15:08', '2023-04-26 15:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `chamcong`
--

CREATE TABLE `chamcong` (
  `id` int(11) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `Ngay` date NOT NULL,
  `GioVao` time DEFAULT NULL,
  `GioRa` time DEFAULT NULL,
  `TongGio` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chamcong`
--

INSERT INTO `chamcong` (`id`, `idNhanVien`, `Ngay`, `GioVao`, `GioRa`, `TongGio`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2023-06-01', '10:18:00', '17:18:10', '7.002777777777776', '2023-05-04 15:26:46', '2023-05-06 15:03:40'),
(2, 1, '2023-06-04', '09:02:48', '17:42:48', '8.666666666666666', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(3, 1, '2023-06-06', '07:36:44', '17:42:45', '10.1', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(4, 1, '2023-06-02', '08:32:03', '18:59:59', '10.465555555555556', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(5, 1, '2023-06-08', '07:35:25', '17:49:12', '10.229722222222222', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(6, 1, '2023-06-05', '07:35:45', '07:35:47', '5.555555555555556e-4', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(7, 1, '2023-06-07', '07:32:37', '17:50:20', '10.295', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(8, 1, '2023-06-09', '07:34:21', '07:34:26', '0.001388888888888889', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(9, 1, '2023-06-11', '07:37:08', '18:31:22', '10.903888888888888', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(10, 1, '2023-06-12', '07:34:24', '17:31:12', '9.946388888888889', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(11, 1, '2023-06-13', '07:44:19', '07:44:19', '0', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(12, 1, '2023-06-14', '07:32:50', '17:35:11', '10.03888888888889', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(13, 1, '2023-06-15', '07:32:49', '17:35:43', '10.048333333333334', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(14, 1, '2023-06-16', '07:32:02', '17:37:15', '10.086666666666666', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(15, 2, '2023-08-09', '06:57:42', '10:57:51', '4.0025', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(16, 2, '2023-08-10', '06:56:21', '10:55:47', '3.9902777777777776', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(17, 2, '2023-08-11', '06:56:48', '11:03:03', '4.104166666666667', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(18, 2, '2023-08-13', '06:50:56', '10:56:13', '4.087777777777778', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(19, 2, '2023-08-14', '06:53:12', '11:02:33', '4.155833333333334', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(20, 2, '2023-08-15', '06:49:24', '08:45:59', '1.9430555555555555', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(21, 2, '2023-08-16', '06:52:27', '06:52:27', '0', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(24, 1, '2023-05-27', '05:40:22', '15:38:18', '9.965555555555556', '2023-05-06 08:26:57', '2023-05-06 14:49:58'),
(25, 1, '2023-06-10', '05:01:16', '18:01:20', '13.001111111111111', '2023-05-06 09:01:25', '2023-05-06 09:01:25'),
(26, 1, '2023-06-17', '07:04:21', '18:04:25', '11.001111111111113', '2023-05-06 09:04:30', '2023-05-06 09:04:30'),
(29, 1, '2023-05-15', '06:11:29', '16:14:32', '10.050833333333333', '2023-05-06 14:28:46', '2023-05-06 14:28:46'),
(31, 1, '2023-05-11', '11:50:04', '19:41:07', '7.850833333333332', '2023-05-06 14:50:14', '2023-05-06 14:50:14'),
(32, 1, '2023-05-12', '09:52:23', '13:52:26', '4.000833333333333', '2023-05-06 14:52:30', '2023-05-06 15:03:17'),
(33, 2, '2023-05-04', '10:04:07', '15:05:13', '5.018333333333334', '2023-05-06 15:04:13', '2023-05-06 15:04:29'),
(34, 1, '2023-06-01', '10:18:00', '10:18:10', '0.0025', '2023-05-06 15:14:33', '2023-05-06 15:14:33'),
(35, 1, '2023-06-02', '08:32:03', '18:59:59', '10.465555555555556', '2023-05-06 15:14:33', '2023-05-06 15:14:33'),
(36, 1, '2023-06-04', '09:02:48', '17:42:48', '8.666666666666666', '2023-05-06 15:14:33', '2023-05-06 15:14:33'),
(37, 1, '2023-06-05', '07:35:45', '07:35:47', '5.555555555555556e-4', '2023-05-06 15:14:33', '2023-05-06 15:14:33'),
(38, 6, '2023-05-11', '10:10:28', '13:09:31', '2.984166666666667', '2023-05-07 17:09:38', '2023-05-07 17:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `id` int(11) NOT NULL,
  `MaChucVu` varchar(10) NOT NULL,
  `TenChucVu` varchar(30) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `NhiemVu` varchar(255) DEFAULT NULL,
  `NguoiTao` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`id`, `MaChucVu`, `TenChucVu`, `MoTa`, `NhiemVu`, `NguoiTao`, `createdAt`, `updatedAt`) VALUES
(1, 'MCV2415817', 'Trưởng phòng', '', 'Có chức năng quản lý phòng ban', 'Nguyễn Văn A', '2023-04-23 09:19:54', '2023-05-08 03:06:09'),
(2, 'MCV2431941', 'Nhân viên', '', 'Có chức năng làm việc tạo năng suất cho công ty', 'Nguyen Van A', '2023-04-23 09:46:46', '2023-04-23 09:46:46'),
(3, 'MCV2432195', 'Giám đốc', '', 'Trưởng 1 bộ phận của công ty', 'Nguyen Van A', '2023-04-23 09:47:17', '2023-04-23 09:47:17'),
(5, 'MCV3047895', 'Bảo vệ', '', 'Có chức năng giữ gìn tài sản công ty', 'Nguyễn Văn A', '2023-04-24 02:53:30', '2023-04-24 02:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `id` int(11) NOT NULL,
  `idDaiDien` int(11) NOT NULL,
  `MaHD` varchar(20) NOT NULL,
  `TenHD` varchar(30) NOT NULL,
  `LoaiHD` varchar(100) NOT NULL,
  `ThoiHan` varchar(30) NOT NULL,
  `LuongCoBan` varchar(20) NOT NULL,
  `HeSoLuong` float NOT NULL,
  `CachTra` varchar(20) NOT NULL,
  `VaoNgay` varchar(20) NOT NULL,
  `NoiDung` text DEFAULT NULL,
  `TrangThai` varchar(30) NOT NULL DEFAULT 'Còn hiệu lực',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hopdong`
--

INSERT INTO `hopdong` (`id`, `idDaiDien`, `MaHD`, `TenHD`, `LoaiHD`, `ThoiHan`, `LuongCoBan`, `HeSoLuong`, `CachTra`, `VaoNgay`, `NoiDung`, `TrangThai`, `createdAt`, `updatedAt`, `idNhanVien`) VALUES
(1, 2, 'MHD305063353', 'Hợp đồng lao động', 'Hợp đồng không xác định thời hạn', 'Không thời hạn', '500000', 7, 'Trả bằng tiền mặt', '10', '', 'Còn hiệu lực', '2023-04-24 02:58:10', '2023-04-24 02:58:10', 1),
(2, 2, 'MHD305256987', 'Hợp đồng lao động', 'Hợp đồng xác định thời hạn', '2 Năm', '500000', 1.6, 'Trả bằng tiền mặt', '10', '', 'Còn hiệu lực', '2023-04-24 03:00:25', '2023-04-24 03:01:09', 1),
(4, 1, 'MHD305256945', 'Hợp đồng lao động', 'Hợp đồng xác định thời hạn', '1 Năm', '500000', 1.5, 'Trả bằng tiền mặt', '10', NULL, 'Còn hiệu lực', '2023-05-08 09:29:19', '2023-05-08 09:29:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `khenthuong`
--

CREATE TABLE `khenthuong` (
  `id` int(11) NOT NULL,
  `MaKT` varchar(30) NOT NULL,
  `SoQD` varchar(10) NOT NULL,
  `NgayQD` date NOT NULL,
  `TieuDe` varchar(50) NOT NULL,
  `NoiDung` text NOT NULL,
  `Thang` varchar(5) NOT NULL,
  `TienThuong` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khenthuong`
--

INSERT INTO `khenthuong` (`id`, `MaKT`, `SoQD`, `NgayQD`, `TieuDe`, `NoiDung`, `Thang`, `TienThuong`, `createdAt`, `updatedAt`) VALUES
(1, 'MKT304843078', 'QĐ 121', '2023-04-13', 'Thưởng tháng đạt KPI xuất sắc', '<p>Thưởng tháng đạt KPI xuất sắc</p>', '4', '10000000', '2023-04-24 02:54:36', '2023-05-07 16:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `kyluat`
--

CREATE TABLE `kyluat` (
  `id` int(11) NOT NULL,
  `MaKL` varchar(30) NOT NULL,
  `SoQD` varchar(10) NOT NULL,
  `NgayQD` date NOT NULL,
  `TieuDe` varchar(30) NOT NULL,
  `NoiDung` text NOT NULL,
  `Thang` varchar(5) NOT NULL,
  `TienPhat` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kyluat`
--

INSERT INTO `kyluat` (`id`, `MaKL`, `SoQD`, `NgayQD`, `TieuDe`, `NoiDung`, `Thang`, `TienPhat`, `createdAt`, `updatedAt`) VALUES
(1, 'MKL478968715', 'QD 232', '2023-05-01', 'Kỷ luật nhân viên đi làm trễ ', '<p>Kỷ luật nhân viên đi làm trễ&nbsp;</p>', '5', '500000', '2023-05-07 17:03:31', '2023-05-07 17:03:31'),
(2, 'MKL479013473', 'QĐ 223', '2023-05-02', 'Kỷ luật nhân viên có KPI không', '<p>Kỷ luật nhân viên có KPI không đạt tháng 4</p>', '4', '0', '2023-05-07 17:04:14', '2023-05-07 17:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuchamcong`
--

CREATE TABLE `lichsuchamcong` (
  `id` int(11) NOT NULL,
  `TenFile` varchar(50) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lichsuchamcong`
--

INSERT INTO `lichsuchamcong` (`id`, `TenFile`, `NgayBatDau`, `NgayKetThuc`, `createdAt`, `updatedAt`) VALUES
(1, 'CB5FB000.xlsx', '2023-05-01', '2023-08-29', '2023-05-04 15:26:46', '2023-05-04 15:26:46'),
(2, 'CB5FB000.xlsx', '2023-08-29', '2023-09-20', '2023-05-04 15:28:28', '2023-05-04 15:28:28'),
(3, 'CB5FB000.xlsx', '2023-05-16', '2023-06-05', '2023-05-06 15:14:33', '2023-05-06 15:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `NgaySinh` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `GioiTinh` varchar(255) NOT NULL,
  `HonNhan` varchar(50) NOT NULL,
  `DanToc` varchar(50) NOT NULL,
  `QuocTich` varchar(50) NOT NULL,
  `TonGiao` varchar(50) NOT NULL,
  `SoDT` varchar(30) NOT NULL,
  `QueQuan` varchar(60) NOT NULL,
  `NoiO` varchar(60) NOT NULL,
  `HoKhau` varchar(60) NOT NULL,
  `CCCD` varchar(30) NOT NULL,
  `NgayCap` date NOT NULL,
  `NoiCap` varchar(60) NOT NULL,
  `TinhTrang` varchar(255) NOT NULL DEFAULT 'Đang Làm Việc',
  `HinhAnh` varchar(255) NOT NULL DEFAULT 'public/assets/avatar.jpg',
  `isAdmin` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idPhongBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `HoTen`, `NgaySinh`, `Email`, `Password`, `GioiTinh`, `HonNhan`, `DanToc`, `QuocTich`, `TonGiao`, `SoDT`, `QueQuan`, `NoiO`, `HoKhau`, `CCCD`, `NgayCap`, `NoiCap`, `TinhTrang`, `HinhAnh`, `isAdmin`, `createdAt`, `updatedAt`, `idPhongBan`) VALUES
(1, 'Nguyễn Văn A', '2023-04-21', 'admin@gmail.com', '$2b$10$utg63PoX3sJWlXZ5dJacKe5h/5fAOxIF4N59xa3B8y5a/9uYLBXcy', 'Nam', 'Độc thân', 'Kinh', 'Việt Nam', 'Không', '0906345123', 'Phường 14, Quận 7, Thành phố Hồ Chí Minh', 'Phường 14, Quận 7, Thành phố Hồ Chí Minh', 'Phường 14, Quận 7, Thành phố Hồ Chí Minh', '203123231341', '2021-04-23', 'Thành phố Hồ Chí Minh', 'Đang Làm Việc', 'blog-2.jpg', 1, '2023-04-23 08:45:38', '2023-05-08 03:05:52', 4),
(2, 'Nguyễn Văn  Cường', '2023-03-30', 'danhnguyen@gmail.com', '$2b$10$utg63PoX3sJWlXZ5dJacKe5h/5fAOxIF4N59xa3B8y5a/9uYLBXcy', 'Nam', 'Độc thân', 'Kinh', 'Việt Nam', 'Không', '0905175283', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '371 Đ. Điện Biên Phủ, Phường 4, Quận 3, Thành phố Hồ Chí Min', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '204198324197', '2023-04-13', 'Cục trưởng cục cảnh sát', 'Đang Làm Việc', 'banner-1.jpg', 0, '2023-04-23 09:49:13', '2023-04-24 02:52:02', 1),
(4, 'Nguyễn Văn  G', '2023-04-11', 'danh@gmail.com', '$2b$10$utg63PoX3sJWlXZ5dJacKe5h/5fAOxIF4N59xa3B8y5a/9uYLBXcy', 'Nam', 'Độc thân', 'Kinh', 'Việt Nam', 'Không', '0905175283', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '371 Đ. Điện Biên Phủ, Phường 4, Quận 3, Thành phố Hồ Chí Min', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '204198324197', '2023-04-05', 'Cục trưởng cục cảnh sát', 'Đang Làm Việc', '273221868_1135230600640797_2342081316682936637_n.jpg', 0, '2023-04-24 01:27:03', '2023-04-24 01:27:03', 3),
(5, 'Nguyễn Văn  E', '2023-04-11', 'danh123@gmail.com', '$2b$10$utg63PoX3sJWlXZ5dJacKe5h/5fAOxIF4N59xa3B8y5a/9uYLBXcy', 'Nam', 'Đã kết hôn', 'Kinh', 'Việt Nam', 'Không', '0905175283', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '371 Đ. Điện Biên Phủ, Phường 4, Quận 3, Thành phố Hồ Chí Min', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '204198324197', '2023-04-13', 'Cục trưởng cục cảnh sát', 'Đang Làm Việc', 'z3210589223775_63a5c5a8f80339c86c14863515b58c74.jpg', 0, '2023-04-24 01:29:14', '2023-04-24 01:29:14', 2),
(6, 'Nguyễn Văn  T', '2023-05-09', 'danh1231@gmail.com', '$2b$10$utg63PoX3sJWlXZ5dJacKe5h/5fAOxIF4N59xa3B8y5a/9uYLBXcy', 'Nam', 'Đã ly hôn', 'Kinh', 'Việt Nam', 'Không', '0905175283', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '371 Đ. Điện Biên Phủ, Phường 4, Quận 3, Thành phố Hồ Chí Min', 'P. Mỹ Thới, Thành phố Long Xuyên, An Giang, Việt Nam', '204198324197', '2023-05-07', 'Cục trưởng cục cảnh sát', 'Đang Làm Việc', '273221868_1135230600640797_2342081316682936637_n.jpg', 0, '2023-05-04 09:16:37', '2023-05-04 09:16:37', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvienchucvu`
--

CREATE TABLE `nhanvienchucvu` (
  `id` int(11) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idChucVu` int(11) DEFAULT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvienchucvu`
--

INSERT INTO `nhanvienchucvu` (`id`, `idNhanVien`, `idChucVu`, `NgayBatDau`, `NgayKetThuc`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-04-23', '2023-04-23', '2023-04-23 09:25:16', '2023-04-23 09:51:16'),
(2, 2, 2, '2023-04-23', '2023-04-23', '2023-04-23 09:49:13', '2023-04-23 09:49:13'),
(3, 2, 3, '2023-04-23', NULL, '2023-04-23 09:50:49', '2023-04-23 09:50:49'),
(4, 2, 1, '2023-04-23', NULL, '2023-04-23 09:50:49', '2023-04-23 09:50:49'),
(6, 4, 2, '2023-04-24', NULL, '2023-04-24 01:27:03', '2023-04-24 01:27:03'),
(7, 5, 2, '2023-04-24', NULL, '2023-04-24 01:29:14', '2023-04-24 01:29:14'),
(8, 1, 2, '2023-04-24', NULL, '2023-04-24 01:44:56', '2023-04-24 01:44:56'),
(15, 2, 1, '2023-04-24', NULL, '2023-04-24 02:52:02', '2023-04-24 02:52:02'),
(16, 6, 1, '2023-05-04', NULL, '2023-05-04 09:16:37', '2023-05-04 09:16:37'),
(17, 1, 1, '2023-05-08', NULL, '2023-05-08 01:59:32', '2023-05-08 01:59:32'),
(18, 1, 3, '2023-05-08', NULL, '2023-05-08 01:59:32', '2023-05-08 01:59:32'),
(19, 1, 1, '2023-05-08', NULL, '2023-05-08 03:05:34', '2023-05-08 03:05:34'),
(20, 1, 1, '2023-05-08', NULL, '2023-05-08 03:05:52', '2023-05-08 03:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvienkhenthuong`
--

CREATE TABLE `nhanvienkhenthuong` (
  `id` int(11) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idKhenThuong` int(11) DEFAULT NULL,
  `NgayTao` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvienkhenthuong`
--

INSERT INTO `nhanvienkhenthuong` (`id`, `idNhanVien`, `idKhenThuong`, `NgayTao`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-04-24', '2023-04-24 02:54:36', '2023-04-24 02:54:36'),
(2, 4, 1, '2023-04-24', '2023-04-24 02:54:36', '2023-04-24 02:54:36'),
(3, 2, 1, '2023-05-07', '2023-05-07 16:55:49', '2023-05-07 16:55:49'),
(4, 5, 1, '2023-05-07', '2023-05-07 16:55:49', '2023-05-07 16:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvienkyluat`
--

CREATE TABLE `nhanvienkyluat` (
  `id` int(11) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idKyLuat` int(11) DEFAULT NULL,
  `NgayTao` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvienkyluat`
--

INSERT INTO `nhanvienkyluat` (`id`, `idNhanVien`, `idKyLuat`, `NgayTao`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-05-08', '2023-05-07 17:03:31', '2023-05-07 17:03:31'),
(2, 4, 1, '2023-05-08', '2023-05-07 17:03:31', '2023-05-07 17:03:31'),
(3, 5, 1, '2023-05-08', '2023-05-07 17:03:31', '2023-05-07 17:03:31'),
(4, 6, 1, '2023-05-08', '2023-05-07 17:03:31', '2023-05-07 17:03:31'),
(5, 1, 2, '2023-05-08', '2023-05-07 17:04:14', '2023-05-07 17:04:14'),
(6, 2, 2, '2023-05-08', '2023-05-07 17:04:14', '2023-05-07 17:04:14'),
(7, 6, 2, '2023-05-08', '2023-05-07 17:04:14', '2023-05-07 17:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvienthongbao`
--

CREATE TABLE `nhanvienthongbao` (
  `id` int(11) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idThongBao` int(11) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT 'Chưa xem',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvienthongbao`
--

INSERT INTO `nhanvienthongbao` (`id`, `idNhanVien`, `idThongBao`, `TrangThai`, `createdAt`, `updatedAt`) VALUES
(4, 1, 2, 'Đã xem', '2023-05-07 14:37:44', '2023-05-08 11:51:29'),
(9, 1, 3, 'Đã Xem', '2023-05-07 16:55:58', '2023-05-08 11:21:42'),
(10, 4, 3, 'Đã Xem', '2023-05-07 16:55:58', '2023-05-08 11:17:27'),
(11, 2, 3, 'Đã Xem', '2023-05-07 16:55:58', '2023-05-08 11:07:29'),
(12, 5, 3, 'Đã xem', '2023-05-07 16:55:58', '2023-05-08 11:58:27'),
(13, 1, 4, 'Đã xem', '2023-05-07 17:08:30', '2023-05-08 11:55:49'),
(14, 2, 4, 'Đã Xem', '2023-05-07 17:08:30', '2023-05-08 11:07:32'),
(15, 6, 4, 'Đã xem', '2023-05-07 17:08:30', '2023-05-08 12:08:26'),
(16, 1, 5, 'Đã Xem', '2023-05-08 01:58:24', '2023-05-08 11:21:01'),
(17, 4, 5, 'Đã Xem', '2023-05-08 01:58:24', '2023-05-08 11:10:24'),
(18, 2, 5, 'Đã Xem', '2023-05-08 01:58:24', '2023-05-08 11:06:16'),
(19, 5, 5, 'Đã xem', '2023-05-08 01:58:24', '2023-05-08 11:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE `phancong` (
  `id` int(11) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `TongKPI` float DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`id`, `NgayBatDau`, `NgayKetThuc`, `TongKPI`, `idNhanVien`, `createdAt`, `updatedAt`) VALUES
(1, '0000-00-00', '0000-00-00', NULL, 2, '2023-05-06 08:08:34', '2023-05-06 08:08:34'),
(2, '2023-04-23', '2023-04-25', NULL, 2, '2023-05-06 08:12:30', '2023-05-06 08:12:30'),
(3, '2023-05-08', '2023-05-13', NULL, 2, '2023-05-08 06:09:52', '2023-05-08 06:09:52'),
(4, '2023-05-08', '2023-05-13', NULL, 4, '2023-05-08 12:23:59', '2023-05-08 12:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `phancongtheongay`
--

CREATE TABLE `phancongtheongay` (
  `id` int(11) NOT NULL,
  `NgayPhanCong` date NOT NULL,
  `TenCV` varchar(40) NOT NULL,
  `DanhGia` varchar(255) DEFAULT NULL,
  `KPI` varchar(255) DEFAULT NULL,
  `idPhanCong` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `id` int(11) NOT NULL,
  `MaPB` varchar(30) NOT NULL,
  `TenPB` varchar(30) NOT NULL,
  `SoLuong` varchar(30) NOT NULL,
  `SiSo` varchar(30) NOT NULL DEFAULT '0',
  `SoDienThoai` varchar(30) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `MoTa` text NOT NULL,
  `NgayThanhLap` date NOT NULL,
  `NguoiDaiDien` varchar(50) NOT NULL,
  `TrangThai` varchar(50) NOT NULL DEFAULT 'Đang hoạt động',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`id`, `MaPB`, `TenPB`, `SoLuong`, `SiSo`, `SoDienThoai`, `DiaChi`, `MoTa`, `NgayThanhLap`, `NguoiDaiDien`, `TrangThai`, `createdAt`, `updatedAt`) VALUES
(1, 'MPB243289137', 'Phòng tuyển dụng', '10', '0', '0905471387', '131 Tân Cảng, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '', '2023-04-23', '', 'Đang hoạt động', '2023-04-23 09:48:21', '2023-04-24 01:42:43'),
(2, 'MPB244957221', 'Phòng hành chính', '10', '0', '0973231321', '131 Tân Cảng, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '', '2023-04-23', '', 'Đang hoạt động', '2023-04-23 10:16:56', '2023-04-23 10:16:56'),
(3, 'MPB245121950', 'Phòng tư vấn khách hàng', '20', '0', '0905471389', '131 Tân Cảng, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '', '2023-04-23', '2', 'Đang hoạt động', '2023-04-23 10:19:02', '2023-04-23 10:19:02'),
(4, 'MPB299761685', 'Phòng Sales', '20', '0', '0905471386', '131 Tân Cảng, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '', '2023-04-24', '2', 'Đang hoạt động', '2023-04-24 01:29:36', '2023-04-24 01:29:36'),
(5, 'MPB300517463', 'Phòng chăm sóc khách hàng', '20', '0', '0905471386', '131 Tân Cảng, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '', '2023-04-24', '', 'Đang hoạt động', '2023-04-24 01:42:31', '2023-04-24 01:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230320195421-create-nhan-vien.js'),
('20230322145102-create-phongban.js'),
('20230322151624-create-chucvu.js'),
('20230322153614-create-bangcap.js'),
('20230322161304-create-hopdong.js'),
('20230322162212-create-kyluat.js'),
('20230323030742-create-khenthuong.js'),
('20230323165541-create-nhanvienchucvu.js'),
('20230323175804-add_idPhongBan_to_nhanvien.js'),
('20230324030234-add_idNhanVien_to_HopDong.js'),
('20230324031218-add_idNhanVien_to_BangCap.js'),
('20230411042104-create-baohiem.js'),
('20230411044427-create-nhanvienkhenthuong.js'),
('20230411045043-create-nhanvienkyluat.js'),
('20230412153808-create-phancong.js'),
('20230413074037-create-phancongtheongay.js'),
('20230503161213-create-chamcong.js'),
('20230504151234-create-lichsuchamcong.js'),
('20230506153417-create-thongbao.js'),
('20230506154709-create-nhanvienthongbao.js');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(50) NOT NULL,
  `NoiDung` text NOT NULL,
  `TrangThai` varchar(80) NOT NULL DEFAULT 'Chưa gửi',
  `ThoiGianGui` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`id`, `TieuDe`, `NoiDung`, `TrangThai`, `ThoiGianGui`, `createdAt`, `updatedAt`) VALUES
(2, 'Thông báo tăng ca 1', '<p>Thông báo tăng ca</p>', 'Đã gửi', '2023-05-07 17:09:01', '2023-05-07 14:37:44', '2023-05-07 17:09:01'),
(3, 'Thưởng tháng đạt KPI xuất sắc', '<p>Thưởng tháng đạt KPI xuất sắc</p>', 'Đã gửi', '2023-05-07 17:09:02', '2023-05-07 16:55:58', '2023-05-07 17:09:02'),
(4, 'Kỷ luật nhân viên có KPI không', '<p>Kỷ luật nhân viên có KPI không đạt tháng 4</p>', 'Đã gửi', '2023-05-07 17:09:00', '2023-05-07 17:08:30', '2023-05-07 17:09:00'),
(5, 'Thưởng tháng đạt KPI xuất sắc', '<p>Thưởng tháng đạt KPI xuất sắc</p>', 'Đã gửi', '2023-05-08 01:58:24', '2023-05-08 01:58:24', '2023-05-08 01:58:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MaBC` (`MaBC`),
  ADD UNIQUE KEY `SoQD` (`SoQD`),
  ADD KEY `BangCap_idNhanVien_foreign_idx` (`idNhanVien`);

--
-- Indexes for table `baohiem`
--
ALTER TABLE `baohiem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idNhanVien` (`idNhanVien`);

--
-- Indexes for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MaChucVu` (`MaChucVu`),
  ADD UNIQUE KEY `TenChucVu` (`TenChucVu`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HopDong_idNhanVien_foreign_idx` (`idNhanVien`);

--
-- Indexes for table `khenthuong`
--
ALTER TABLE `khenthuong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MaKT` (`MaKT`),
  ADD UNIQUE KEY `SoQD` (`SoQD`);

--
-- Indexes for table `kyluat`
--
ALTER TABLE `kyluat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MaKL` (`MaKL`),
  ADD UNIQUE KEY `SoQD` (`SoQD`);

--
-- Indexes for table `lichsuchamcong`
--
ALTER TABLE `lichsuchamcong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `NhanVien_idPhongBan_foreign_idx` (`idPhongBan`);

--
-- Indexes for table `nhanvienchucvu`
--
ALTER TABLE `nhanvienchucvu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idChucVu` (`idChucVu`);

--
-- Indexes for table `nhanvienkhenthuong`
--
ALTER TABLE `nhanvienkhenthuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idKhenThuong` (`idKhenThuong`);

--
-- Indexes for table `nhanvienkyluat`
--
ALTER TABLE `nhanvienkyluat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idKyLuat` (`idKyLuat`);

--
-- Indexes for table `nhanvienthongbao`
--
ALTER TABLE `nhanvienthongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idThongBao` (`idThongBao`);

--
-- Indexes for table `phancong`
--
ALTER TABLE `phancong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhanVien` (`idNhanVien`);

--
-- Indexes for table `phancongtheongay`
--
ALTER TABLE `phancongtheongay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPhanCong` (`idPhanCong`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MaPB` (`MaPB`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `baohiem`
--
ALTER TABLE `baohiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chamcong`
--
ALTER TABLE `chamcong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khenthuong`
--
ALTER TABLE `khenthuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyluat`
--
ALTER TABLE `kyluat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lichsuchamcong`
--
ALTER TABLE `lichsuchamcong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvienchucvu`
--
ALTER TABLE `nhanvienchucvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nhanvienkhenthuong`
--
ALTER TABLE `nhanvienkhenthuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhanvienkyluat`
--
ALTER TABLE `nhanvienkyluat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvienthongbao`
--
ALTER TABLE `nhanvienthongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `phancong`
--
ALTER TABLE `phancong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phancongtheongay`
--
ALTER TABLE `phancongtheongay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangcap`
--
ALTER TABLE `bangcap`
  ADD CONSTRAINT `BangCap_idNhanVien_foreign_idx` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `baohiem`
--
ALTER TABLE `baohiem`
  ADD CONSTRAINT `baohiem_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chamcong`
--
ALTER TABLE `chamcong`
  ADD CONSTRAINT `chamcong_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `HopDong_idNhanVien_foreign_idx` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `NhanVien_idPhongBan_foreign_idx` FOREIGN KEY (`idPhongBan`) REFERENCES `phongban` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvienchucvu`
--
ALTER TABLE `nhanvienchucvu`
  ADD CONSTRAINT `nhanvienchucvu_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvienchucvu_ibfk_2` FOREIGN KEY (`idChucVu`) REFERENCES `chucvu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvienkhenthuong`
--
ALTER TABLE `nhanvienkhenthuong`
  ADD CONSTRAINT `nhanvienkhenthuong_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvienkhenthuong_ibfk_2` FOREIGN KEY (`idKhenThuong`) REFERENCES `khenthuong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvienkyluat`
--
ALTER TABLE `nhanvienkyluat`
  ADD CONSTRAINT `nhanvienkyluat_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvienkyluat_ibfk_2` FOREIGN KEY (`idKyLuat`) REFERENCES `kyluat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvienthongbao`
--
ALTER TABLE `nhanvienthongbao`
  ADD CONSTRAINT `nhanvienthongbao_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvienthongbao_ibfk_2` FOREIGN KEY (`idThongBao`) REFERENCES `thongbao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `phancong_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phancongtheongay`
--
ALTER TABLE `phancongtheongay`
  ADD CONSTRAINT `phancongtheongay_ibfk_1` FOREIGN KEY (`idPhanCong`) REFERENCES `phancong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
