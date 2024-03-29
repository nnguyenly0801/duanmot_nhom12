-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(5) NOT NULL,
  `idtaikhoan` int(5) NOT NULL,
  `idsanpham` int(5) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `idtaikhoan`, `idsanpham`, `noidung`, `ngaybinhluan`) VALUES
(29, 28, 34, 'ngon', '2023-12-09'),
(30, 31, 34, 'dep qua', '2023-12-11'),
(31, 28, 25, 'đẹp', '2023-12-11'),
(32, 28, 27, 'hello', '2023-12-11'),
(33, 29, 27, 'đẹp lắm', '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(5) NOT NULL,
  `idsanpham` int(5) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsanpham`, `soluong`, `dongia`, `thanhtien`) VALUES
(175, 124, 34, 1, 135000, 135000),
(176, 124, 27, 1, 315000, 315000),
(177, 125, 27, 1, 315000, 315000),
(178, 126, 27, 1, 315000, 315000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(5) NOT NULL,
  `tendm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendm`) VALUES
(1, 'Kính RAYBAN'),
(2, 'Kính Prada'),
(4, 'Kính Burberry');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idtaikhoan` int(5) NOT NULL,
  `hovatennhan` varchar(255) NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `diachinhan` varchar(255) NOT NULL,
  `sodienthoainhan` varchar(20) NOT NULL,
  `phuongthuctt` tinyint(1) NOT NULL COMMENT '0. thanh toán khi nhận hàng 1. Chuyển khoản',
  `trangthai` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. chưa duyệt 1.Đã duyệt 2.Đơn hàng mới  3. Đang giao 4. Đã giao 5. Đã hủy',
  `thanhtoan` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. chưa thanh toán 1. Đã thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `idtaikhoan`, `hovatennhan`, `ngaydathang`, `diachinhan`, `sodienthoainhan`, `phuongthuctt`, `trangthai`, `thanhtoan`) VALUES
(124, 28, 'Tống Hoàng Bách', '2023-12-11 17:06:05', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0917261473', 0, 4, 1),
(125, 28, 'Hoàng Tiến Tùng', '2023-12-11 17:06:50', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0917261473', 1, 4, 1),
(126, 29, 'Pham Vinh Khai', '2024-03-22 01:11:11', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(5) NOT NULL,
  `idtaikhoan` int(5) NOT NULL,
  `idsanpham` int(5) NOT NULL,
  `soluong` int(5) NOT NULL,
  `thanhtien` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `idtaikhoan`, `idsanpham`, `soluong`, `thanhtien`) VALUES
(428, 28, 34, 1, 135000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(5) NOT NULL,
  `iddm` int(5) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `giasp` int(20) NOT NULL DEFAULT 0,
  `giakm` int(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `soluong` int(5) NOT NULL DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. còn hàng 1. hết hàng',
  `khuyenmai` int(10) NOT NULL DEFAULT 0,
  `mota` text DEFAULT NULL,
  `luotxem` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giasp`, `giakm`, `image`, `soluong`, `trangthai`, `khuyenmai`, `mota`, `luotxem`) VALUES
(13, 1, 'Kính mát Rayban RB-4246F-1197/Z2(53CN)', 179000, 161100, '1134517929_kính-mắt-chính-hãng1.jpg', 8, 0, 10, '', 1107),
(14, 1, 'Kính mát Rayban RB-3025-112/17(58IT)', 320000, 224000, '753283163_kinh-mat-dang-quang49-2106188570.jpg', 21, 0, 30, '', 0),
(15, 4, 'KÍNH MÁT BURBERRY BUR-3084-1212/T5(57IT)', 180000, 162000, '1731334688_kinh-mat.jpg', 15, 0, 10, '', 0),
(19, 4, 'KÍNH MÁT BURBERRY BUR-4279-3767/2L(40IT)', 150000, 127500, '256057444_knh-mt-thi-trang-3.jpg', 30, 0, 15, '', 2),
(23, 2, 'Kính mát Prada PR-0PR 07PSA-1AB0A7(56IT)', 180000, 153000, '782302178_kinh-thoi-trang3.jpg', 14, 0, 15, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 0),
(25, 2, 'Kính mát Prada PR-0PR 64TS-1BC4S1(66IT)', 180000, 162000, '87701784_280050611_kính-prada22.jpg', 16, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 40),
(26, 2, 'Kính mát Prada PR-0PR 08USF-C7O9K1(54IT)', 280000, 224000, '139525441_1372902178_kinh-prada33-110854260.jpg', 18, 0, 20, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 863),
(27, 1, 'Kính RAYBAN RB-4278-6282/71(51IT)', 350000, 315000, '2091709855_kính-rayban308.jpg', 16, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 892),
(34, 4, 'Kính Mắt Burberry BUR-3092QF-1145/71(60IT)', 150000, 135000, '1405923694_kinh-mat-chinh-hang68.jpg', 10, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 27);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(5) NOT NULL,
  `hovaten` varchar(50) DEFAULT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `role` tinyint(5) NOT NULL DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. Tốt 1. Đã khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hovaten`, `tendangnhap`, `matkhau`, `email`, `sodienthoai`, `diachi`, `role`, `trangthai`) VALUES
(28, 'Hoàng Tiến Tùng', 'tung123', 'tung123', 'tuan123@gmail.com', '0917261473', '33 Phú Mỹ, Mỹ Đình, Hà Nội', 0, 0),
(29, 'Pham Vinh Khai', 'phamkhai', 'khai2004', 'phamvinhkhai2004@gmail.com', '0971539183', '33 Phú Mỹ, Mỹ Đình, Hà Nội', 1, 0),
(31, 'abc', 'abc', 'abc', 'abc@gmail.com', '0917261473', '33 Phú Mỹ, Mỹ Đình, Hà Nội', 0, 1),
(33, 'tung', 'tung123', 'tung123', 'hoangbach25102004@gmail.com', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `id` int(5) NOT NULL,
  `ngaydat` date NOT NULL,
  `donhang` int(10) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongke`
--

INSERT INTO `thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(3, '2023-12-01', 11, '170000', 15),
(4, '2023-12-02', 4, '260000', 4),
(5, '2023-12-05', 2, '150000', 2),
(6, '2023-12-10', 5, '320000', 8),
(7, '2023-12-11', 5, '657000', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bl_sp` (`idsanpham`),
  ADD KEY `fk_bl_tk` (`idtaikhoan`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ct_dh` (`iddonhang`),
  ADD KEY `fk_ct_sp` (`idsanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dh_tk` (`idtaikhoan`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_sp` (`idsanpham`),
  ADD KEY `fk_cart_tk` (`idtaikhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_dm` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_bl_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_bl_tk` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_ct_dh` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_ct_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_dh_tk` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_cart_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_cart_tk` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
