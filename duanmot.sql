-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2024 at 05:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanmot`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `idtaikhoan` int NOT NULL,
  `idsanpham` int NOT NULL,
  `noidung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `idtaikhoan`, `idsanpham`, `noidung`, `ngaybinhluan`) VALUES
(33, 29, 27, 'đẹp lắm', '2024-03-21'),
(34, 34, 25, 'Chất lượng sản phẩm tốt\n', '2024-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int NOT NULL,
  `iddonhang` int NOT NULL,
  `idsanpham` int NOT NULL,
  `soluong` int NOT NULL,
  `dongia` int NOT NULL,
  `thanhtien` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsanpham`, `soluong`, `dongia`, `thanhtien`) VALUES
(175, 124, 34, 1, 135000, 135000),
(176, 124, 27, 1, 315000, 315000),
(177, 125, 27, 1, 315000, 315000),
(178, 126, 27, 1, 315000, 315000),
(179, 127, 27, 1, 315000, 315000),
(180, 128, 34, 1, 135000, 135000),
(181, 129, 25, 1, 162000, 162000),
(182, 130, 13, 1, 161100, 161100),
(183, 131, 34, 1, 135000, 135000),
(184, 132, 27, 1, 315000, 315000),
(185, 133, 34, 2, 135000, 270000),
(186, 134, 14, 1, 224000, 224000),
(187, 134, 19, 1, 127500, 127500),
(188, 135, 13, 2, 161100, 322200),
(189, 135, 26, 1, 224000, 224000),
(190, 136, 34, 1, 135000, 135000),
(191, 137, 34, 1, 135000, 135000),
(192, 137, 27, 1, 315000, 315000),
(193, 138, 27, 1, 315000, 315000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `tendm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
  `id` int NOT NULL,
  `idtaikhoan` int NOT NULL,
  `hovatennhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `diachinhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoainhan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuongthuctt` tinyint(1) NOT NULL COMMENT '0. thanh toán khi nhận hàng 1. Chuyển khoản',
  `trangthai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0. chưa duyệt 1.Đã duyệt 2.Đơn hàng mới  3. Đang giao 4. Đã giao 5. Đã hủy',
  `thanhtoan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0. chưa thanh toán 1. Đã thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `idtaikhoan`, `hovatennhan`, `ngaydathang`, `diachinhan`, `sodienthoainhan`, `phuongthuctt`, `trangthai`, `thanhtoan`) VALUES
(124, 28, 'Nguyễn Ly', '2024-03-15 17:06:05', 'Thanh Oai', '0917261473', 0, 2, 1),
(125, 28, 'Văn Hưng', '2024-03-15 17:06:50', 'Gia Lâm', '0917261473', 1, 4, 1),
(126, 29, 'Pham Vinh Khai', '2024-03-22 01:11:11', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 1),
(127, 29, 'Pham Vinh Khai', '2024-04-03 12:14:21', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 5, 0),
(128, 29, 'Pham Vinh Khai', '2024-04-03 12:25:28', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 0),
(129, 29, 'Pham Vinh Khai', '2024-04-03 12:26:12', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 0),
(130, 29, 'Pham Vinh Khai', '2024-04-03 14:18:53', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 2, 0),
(131, 34, 'Nguyễn Thị Ly', '2024-04-03 14:53:50', 'Hà Nội', '0123485956', 0, 3, 0),
(132, 29, 'Pham Vinh Khai', '2024-04-03 15:09:32', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 0),
(133, 28, 'Đặng Văn Hưng', '2024-04-04 22:17:11', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0917261473', 0, 4, 0),
(134, 34, 'Ly Ly Ly', '2024-04-05 14:29:55', 'ABC Viet Nam', '092847473', 0, 4, 0),
(135, 34, 'Nguyễn Thị Ly', '2024-04-05 15:58:54', 'Hà Nội', '0123485956', 0, 4, 0),
(136, 29, 'Pham Vinh Khai', '2024-04-08 18:11:03', '33 Phú Mỹ, Mỹ Đình, Hà Nội', '0971539183', 0, 4, 1),
(137, 34, 'Nguyễn Thị Ly', '2024-04-11 21:23:44', 'Hà Nội', '0123485956', 0, 4, 0),
(138, 34, 'Nguyễn Thị Ly', '2024-04-11 22:10:25', 'Hà Nội', '0123485956', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int NOT NULL,
  `idtaikhoan` int NOT NULL,
  `idsanpham` int NOT NULL,
  `soluong` int NOT NULL,
  `thanhtien` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `idtaikhoan`, `idsanpham`, `soluong`, `thanhtien`) VALUES
(467, 34, 34, 1, 135000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `iddm` int NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasp` int NOT NULL DEFAULT '0',
  `giakm` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluong` int NOT NULL DEFAULT '0',
  `trangthai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0. còn hàng 1. hết hàng',
  `khuyenmai` int NOT NULL DEFAULT '0',
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `luotxem` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddm`, `tensp`, `giasp`, `giakm`, `image`, `soluong`, `trangthai`, `khuyenmai`, `mota`, `luotxem`) VALUES
(13, 1, 'Kính mắt Rayban RB-4246F-1197/Z2(53CN)', 179000, 161100, '1134517929_kính-mắt-chính-hãng1.jpg', 7, 0, 10, '', 1112),
(14, 1, 'Kính mắt Rayban RB-3025-112/17(58IT)', 320000, 224000, '753283163_kinh-mat-dang-quang49-2106188570.jpg', 20, 0, 30, '', 0),
(15, 4, 'Kính mắt BURBERRY BUR-3084-1212/T5(57IT)', 180000, 162000, '1731334688_kinh-mat.jpg', 15, 0, 10, '', 0),
(19, 4, 'Kính mắt BURBERRY BUR-4279-3767/2L(40IT)', 150000, 127500, '256057444_knh-mt-thi-trang-3.jpg', 29, 0, 15, '', 3),
(23, 2, 'Kính mắt Prada PR-0PR 07PSA-1AB0A7(56IT)', 180000, 153000, '782302178_kinh-thoi-trang3.jpg', 14, 0, 15, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 0),
(25, 2, 'Kính mắt Prada PR-0PR 64TS-1BC4S1(66IT)', 180000, 162000, '87701784_280050611_kính-prada22.jpg', 15, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 45),
(26, 2, 'Kính mắt Prada PR-0PR 08USF-C7O9K1(54IT)', 280000, 224000, '139525441_1372902178_kinh-prada33-110854260.jpg', 18, 0, 20, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 865),
(27, 1, 'Kính mắt RAYBAN RB-4278-6282/71(51IT)', 350000, 315000, '2091709855_kính-rayban308.jpg', 13, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 913),
(34, 4, 'Kính mắt Burberry BUR-3092QF-1145/71(60IT)', 150000, 135000, '1405923694_kinh-mat-chinh-hang68.jpg', 4, 0, 10, 'Thương hiệu\r\nĐối tượng sử dụng  Nữ,nam\r\nXuất xứ\r\nTính năng   Chống chói lóa, Chống tia UV\r\nĐộ rộng mắt   56mm\r\nĐộ rộng sống mũi   18mm\r\nĐộ dài gọng   140mm\r\nMầu gọng   Đen\r\nMầu mắt   \r\nBảo hành   Chế độ bảo hành 01 năm', 42);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `hovaten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tendangnhap` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint NOT NULL DEFAULT '0',
  `trangthai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0. Tốt 1. Đã khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hovaten`, `tendangnhap`, `matkhau`, `email`, `sodienthoai`, `diachi`, `role`, `trangthai`) VALUES
(28, 'Đặng Văn Hưng', 'hung123', 'hung123', 'hung123@gmail.com', '0917261473', '33 Phú Mỹ, Mỹ Đình, Hà Nội', 0, 0),
(29, 'Pham Vinh Khai', 'phamkhai', 'khai2004', 'phamvinhkhai2004@gmail.com', '0971539183', '33 Phú Mỹ, Mỹ Đình, Hà Nội', 1, 0),
(34, 'Nguyễn Thị Ly', 'Ly2004', 'Ly2004', 'lyntph46257@fpt.edu.vn', '0123485956', 'Hà Nội', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `id` int NOT NULL,
  `ngaydat` date NOT NULL,
  `donhang` int NOT NULL,
  `doanhthu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluongban` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongke`
--

INSERT INTO `thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(21, '2024-04-03', 2, '297000', 2),
(22, '2024-04-04', 2, '585000', 3),
(23, '2024-04-05', 2, '897700', 5),
(24, '2024-04-11', 1, '450000', 2);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
