-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2023 lúc 03:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1_09`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bien_the`
--

CREATE TABLE `bien_the` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_mau_sac` int(11) NOT NULL,
  `id_kich_thuoc` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bien_the`
--

INSERT INTO `bien_the` (`id`, `id_sp`, `id_mau_sac`, `id_kich_thuoc`, `so_luong`) VALUES
(13, 30, 1, 3, 20),
(14, 30, 3, 1, 19),
(16, 31, 1, 3, 31),
(17, 31, 2, 4, 9),
(18, 31, 2, 3, 3),
(23, 33, 1, 2, 2),
(24, 33, 2, 1, 33),
(25, 34, 1, 2, 2),
(26, 34, 2, 3, 3),
(27, 35, 1, 1, 3),
(28, 35, 2, 3, 3),
(29, 38, 1, 1, 3),
(30, 38, 2, 2, 5),
(31, 40, 1, 1, 33),
(32, 40, 2, 1, 22),
(40, 43, 1, 1, 12),
(41, 43, 1, 2, 12),
(42, 43, 1, 3, 12),
(43, 44, 3, 2, 12),
(44, 44, 3, 1, 12),
(45, 44, 3, 3, 12),
(46, 45, 1, 1, 12),
(47, 45, 1, 2, 12),
(48, 45, 1, 3, 12),
(52, 47, 1, 1, 0),
(53, 47, 1, 2, 0),
(54, 47, 1, 3, 0),
(55, 47, 1, 4, 0),
(60, 49, 2, 1, 9),
(61, 49, 2, 2, 9),
(62, 49, 2, 4, 9),
(63, 49, 2, 4, 9),
(64, 50, 2, 1, 9),
(65, 50, 2, 2, 9),
(66, 50, 2, 3, 9),
(67, 50, 2, 4, 9),
(68, 51, 1, 1, 9),
(69, 51, 1, 2, 9),
(70, 51, 1, 3, 9),
(71, 51, 1, 4, 9),
(72, 52, 1, 1, 9),
(73, 52, 1, 2, 9),
(74, 52, 1, 3, 9),
(75, 52, 1, 4, 9),
(76, 53, 1, 1, 9),
(77, 53, 1, 2, 9),
(78, 53, 1, 3, 9),
(79, 53, 1, 4, 9),
(80, 54, 1, 1, 9),
(81, 54, 1, 2, 9),
(82, 54, 1, 3, 9),
(83, 55, 1, 1, 9),
(84, 55, 1, 2, 9),
(85, 55, 1, 3, 9),
(86, 56, 3, 1, 9),
(87, 56, 3, 2, 9),
(88, 56, 3, 3, 9),
(89, 57, 6, 1, 9),
(90, 57, 6, 2, 9),
(91, 57, 6, 3, 9),
(92, 58, 1, 1, 9),
(93, 58, 1, 2, 9),
(94, 58, 1, 3, 9),
(95, 59, 1, 1, 9),
(96, 59, 1, 2, 9),
(97, 59, 1, 3, 9),
(98, 60, 3, 1, 9),
(99, 60, 3, 2, 9),
(100, 60, 3, 3, 9),
(101, 61, 1, 2, 9),
(102, 61, 1, 1, 9),
(103, 61, 1, 3, 9),
(104, 62, 1, 1, 9),
(105, 62, 1, 2, 9),
(106, 62, 1, 3, 9),
(107, 63, 1, 1, 9),
(108, 63, 1, 2, 9),
(109, 63, 1, 3, 9),
(110, 64, 1, 1, 9),
(111, 64, 1, 2, 9),
(112, 64, 1, 3, 9),
(113, 65, 1, 1, 9),
(114, 65, 1, 2, 9),
(115, 65, 1, 3, 9),
(116, 66, 3, 1, 9),
(117, 66, 3, 2, 9),
(118, 66, 3, 3, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL COMMENT 'Id bình luận',
  `noidung` varchar(255) NOT NULL COMMENT 'Nội dung bình luận',
  `iduser` int(10) NOT NULL COMMENT 'Id tài khoản',
  `idpro` int(10) NOT NULL COMMENT 'Id sản phẩm',
  `ngaybinhluan` varchar(50) DEFAULT NULL COMMENT 'Ngày bình luận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(44, 'Đẹp KENG', 1, 31, '27-11-23 16:27:27'),
(46, 'ib shop ơi', 1, 33, '27-11-23 16:28:08'),
(50, 'áo đẹp voãi ò', 42, 30, '27-11-23 20:21:53'),
(52, 'áo đẹp quá', 42, 33, '27-11-23 20:22:26'),
(55, 'ib shop', 41, 30, '27-11-23 21:41:15'),
(56, 'Mn đừng mua, áo này giặt máy 2 lần là hỏng =((', 42, 30, '27-11-23 21:44:18'),
(57, 'áo đẹp cá ', 43, 27, '28-11-23 10:29:21'),
(58, 'Sản phẩm tốt, rất đáng mua ', 41, 34, '28-11-23 15:04:57'),
(59, 'Xịn xò luôn <3 <3', 1, 34, '29-11-23 19:12:57'),
(60, 'áo đẹp quá', 1, 30, '30-11-23 14:18:13'),
(61, 'hfdvn fbxh', 45, 62, '30-11-23 21:39:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_bt_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_bt_sanpham`, `soluong`) VALUES
(153, 42, 32, 4),
(156, 42, 32, 4),
(158, 43, 28, 2),
(161, 41, 25, 2),
(164, 41, 17, 3),
(198, 41, 13, 1),
(201, 41, 14, 2),
(202, 1, 30, 3),
(203, 1, 14, 1),
(204, 1, 18, 2),
(206, 45, 60, 1),
(207, 45, 65, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_bt_sanpham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia` float NOT NULL,
  `url_img` varchar(225) NOT NULL,
  `tensp` varchar(225) NOT NULL,
  `ngay_mua` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_donhang`, `id_bt_sanpham`, `so_luong`, `gia`, `url_img`, `tensp`, `ngay_mua`) VALUES
(1, 2, 30, 1, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-26'),
(2, 2, 30, 1, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-26'),
(5, 5, 31, 5, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-11-28'),
(6, 5, 30, 3, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-28'),
(7, 6, 30, 3, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-28'),
(10, 9, 30, 3, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-28'),
(11, 9, 31, 1, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-11-28'),
(12, 10, 30, 3, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-28'),
(13, 11, 31, 3, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-11-28'),
(14, 12, 31, 3, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-11-28'),
(15, 14, 30, 1, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-29'),
(16, 15, 30, 3, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-29'),
(17, 16, 31, 3, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-11-29'),
(18, 16, 30, 2, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL COMMENT 'Id danh mục',
  `name` varchar(255) NOT NULL COMMENT 'Tên danh mục',
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `id_dm`) VALUES
(1, 't shirt', 1),
(2, 'polo', 1),
(7, 'hoodie', 1),
(8, 'áo khoác', 1),
(9, 'short', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL COMMENT 'Id đơn hàng',
  `id_user` int(11) DEFAULT NULL COMMENT 'Id khách hàng',
  `address` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phuongthuctt` enum('Trả tiền khi nhận hàng','Thanh toán online') NOT NULL COMMENT '1.Thanh toán khi nhận hàng 2.Thanh toán online',
  `ngay_dat_hang` datetime DEFAULT NULL,
  `tong` float NOT NULL,
  `status` enum('Chờ xác nhận','Đã xác nhận','Đang giao hàng','Hoàn thành') DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `receive_name` varchar(255) DEFAULT NULL COMMENT 'Tên người nhận ',
  `receive_address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ nhận',
  `receive_tel` varchar(50) DEFAULT NULL COMMENT 'SĐT nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `address`, `sdt`, `email`, `phuongthuctt`, `ngay_dat_hang`, `tong`, `status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(2, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'sonnvph33874@fpt.edu.vn', 'Trả tiền khi nhận hàng', '2023-11-26 00:00:00', 345000, 'Chờ xác nhận', NULL, NULL, NULL),
(3, 43, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 98765432, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 485000, 'Chờ xác nhận', NULL, NULL, NULL),
(4, 43, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 98765432, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 485000, 'Chờ xác nhận', NULL, NULL, NULL),
(5, 41, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 1330000, 'Chờ xác nhận', NULL, NULL, NULL),
(6, 41, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'sonnvph33874@fpt.edu.vn', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 505000, 'Chờ xác nhận', NULL, NULL, NULL),
(7, 41, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 622000, 'Chờ xác nhận', NULL, NULL, NULL),
(8, 41, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 2147483647, 'banhsontv@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 465000, 'Chờ xác nhận', NULL, NULL, NULL),
(9, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 670000, 'Chờ xác nhận', NULL, NULL, NULL),
(10, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 505000, 'Chờ xác nhận', NULL, NULL, NULL),
(11, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 520000, 'Chờ xác nhận', NULL, NULL, NULL),
(12, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 520000, 'Chờ xác nhận', NULL, NULL, NULL),
(13, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 25000, 'Chờ xác nhận', NULL, NULL, NULL),
(14, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 185000, 'Chờ xác nhận', NULL, NULL, NULL),
(15, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 505000, 'Chờ xác nhận', NULL, NULL, NULL),
(16, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 840000, 'Chờ xác nhận', NULL, NULL, NULL),
(17, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-30 00:00:00', 895000, 'Chờ xác nhận', NULL, NULL, NULL),
(18, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-30 00:00:00', 1055000, 'Chờ xác nhận', NULL, NULL, NULL),
(19, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-30 00:00:00', 1055000, 'Chờ xác nhận', NULL, NULL, NULL),
(20, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-30 00:00:00', 1055000, 'Chờ xác nhận', NULL, NULL, NULL),
(21, 45, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-30 00:00:00', 1005000, 'Chờ xác nhận', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `url`, `id_sp`) VALUES
(13, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 30),
(14, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 3.jpg', 30),
(15, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 4.jpg', 30),
(16, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét.jpg', 30),
(17, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 2.jpg', 31),
(18, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 3.jpg', 31),
(19, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 4.jpg', 31),
(20, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 31),
(25, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165 2.jpg', 33),
(26, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165 3.jpg', 33),
(27, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165 4.jpg', 33),
(28, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165 5.jpg', 33),
(29, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165.jpg', 33),
(30, 'Áo Thun Newseven Curve Baby Tee BB.222 2.png', 34),
(31, 'Áo Thun Newseven Curve Baby Tee BB.222 3.png', 34),
(32, 'Áo Thun Newseven Curve Baby Tee BB.222 4.png', 34),
(33, 'Áo Thun Newseven Curve Baby Tee BB.222.png', 34),
(34, 'Áo Thun NEWSEVEN Lining Racer AT.219 2.jpg', 35),
(35, 'Áo Thun NEWSEVEN Lining Racer AT.219 3.jpg', 35),
(36, 'Áo Thun NEWSEVEN Lining Racer AT.219 4.jpg', 35),
(37, 'Áo Thun NEWSEVEN Lining Racer AT.219 5.png', 35),
(38, 'Áo Thun NEWSEVEN Lining Racer AT.219.jpg', 35),
(39, 'Áo Thun NEWSEVEN Racing AT.148 3.jpg', 38),
(40, 'Áo Thun NEWSEVEN Racing AT.148 4.jpg', 38),
(41, 'Áo Thun NEWSEVEN Racing AT.148 5.jpg', 38),
(42, 'Áo Thun NEWSEVEN Racing AT.148.jpg', 38),
(55, 'LAMP LEGEND TEE 2.webp', 43),
(56, 'LAMP LEGEND TEE 3.webp', 43),
(57, 'LAMP LEGEND TEE 4.webp', 43),
(58, 'LAMP LEGEND TEE.webp', 43),
(59, 'HADES LODESTAR BLUR TEE 2.webp', 44),
(60, 'HADES LODESTAR BLUR TEE 3.webp', 44),
(61, 'HADES LODESTAR BLUR TEE 4.webp', 44),
(62, 'HADES LODESTAR BLUR TEE.webp', 44),
(63, 'SICKLE FANG TEE3.jpg', 45),
(64, 'SICKLE FANG TEE4.jpg', 45),
(65, 'SICKLE FANG TEE.jpg', 45),
(66, 'SICKLE FANG TEE2.jpg', 45),
(71, '1.webp', 47),
(72, '2.webp', 47),
(73, 'SPIKES SPORT JERSEY POLO.webp', 47),
(74, 'SPIKES SPORT JERSEY POLO1.webp', 47),
(75, 'SPIKES SPORT JERSEY POLO2.webp', 47),
(76, 'SPIKES SPORT JERSEY POLO3.webp', 47),
(78, 'ALLYSON ATHLETE JERSEY.webp', 49),
(79, 'ALLYSON ATHLETE JERSEY1.webp', 49),
(80, 'ALLYSON ATHLETE JERSEY2.webp', 49),
(81, 'ALLYSON ATHLETE JERSEY3.webp', 49),
(82, 'SPIKES SPORT JERSEY POLO.webp', 49),
(83, 'SPIKES SPORT JERSEY POLO.webp', 50),
(84, 'UNIFY POLO.webp', 50),
(85, 'UNIFY POLO2.webp', 50),
(86, 'UNIFY POLO3.webp', 50),
(87, 'UNIFY POLO4.webp', 50),
(88, 'POINSETTIAS POLO.webp', 51),
(89, 'POINSETTIAS POLO1.webp', 51),
(90, 'POINSETTIAS POLO3.webp', 51),
(91, 'POINSETTIAS POLO4.webp', 51),
(92, 'LEOPARD CLUB POLO.webp', 52),
(93, 'LEOPARD CLUB POLO2.webp', 52),
(94, 'LEOPARD CLUB POLO3.webp', 52),
(95, 'LEOPARD CLUB POLO4.webp', 52),
(96, 'SPIKES SPORT JERSEY POLO.webp', 52),
(97, 'SERAPHIC PEARLS ZIP HOODIE.webp', 53),
(98, 'SERAPHIC PEARLS ZIP HOODIE2.webp', 53),
(99, 'SERAPHIC PEARLS ZIP HOODIE3.webp', 53),
(100, 'SERAPHIC PEARLS ZIP HOODIE4.webp', 53),
(101, 'z.webp', 53),
(102, 'LITHE BOXY HOODIE.webp', 54),
(103, 'LITHE BOXY HOODIE2.webp', 54),
(104, 'LITHE BOXY HOODIE3.webp', 54),
(105, 'LITHE BOXY HOODIE4.webp', 54),
(106, 'z.webp', 54),
(107, 'HEBREW BOXY HOODIE.webp', 55),
(108, 'HEBREW BOXY HOODIE1.webp', 55),
(109, 'HEBREW BOXY HOODIE2.webp', 55),
(110, 'HEBREW BOXY HOODIE4.webp', 55),
(111, 'z.webp', 55),
(112, 'FERNERY HOODIE.webp', 56),
(113, 'FERNERY HOODIE1.webp', 56),
(114, 'FERNERY HOODIE2.webp', 56),
(115, 'FERNERY HOODIE3.webp', 56),
(116, 'z.webp', 56),
(117, 'MUZIC PATCHES BOXY HOODIE ZIP.webp', 57),
(118, 'MUZIC PATCHES BOXY HOODIE ZIP2.webp', 57),
(119, 'MUZIC PATCHES BOXY HOODIE ZIP3.webp', 57),
(120, 'MUZIC PATCHES BOXY HOODIE ZIP4.webp', 57),
(121, 'z.webp', 57),
(122, 'LONER CLUB BOXY HOODIE.webp', 58),
(123, 'LONER CLUB BOXY HOODIE1.jpg', 58),
(124, 'LONER CLUB BOXY HOODIE2.webp', 58),
(125, 'LONER CLUB BOXY HOODIE3.webp', 58),
(126, 'z.webp', 58),
(127, 'MAJOR PIECES JACKET 1.webp', 59),
(128, 'MAJOR PIECES JACKET.webp', 59),
(129, 'MAJOR PIECES JACKET2.webp', 59),
(130, 'MAJOR PIECES JACKET4.webp', 59),
(131, 'MAJOR PIECES JACKET5.webp', 59),
(132, 'LOOMING ZIP JACKET.webp', 60),
(133, 'LOOMING ZIP JACKET1.webp', 60),
(134, 'LOOMING ZIP JACKET2.webp', 60),
(135, 'LOOMING ZIP JACKET3.webp', 60),
(136, 'z2.webp', 60),
(137, 'DOMINATOR LEATHER JACKET.webp', 61),
(138, 'DOMINATOR LEATHER JACKET1.webp', 61),
(139, 'DOMINATOR LEATHER JACKET2.webp', 61),
(140, 'DOMINATOR LEATHER JACKET3.webp', 61),
(141, 'DOMINATOR LEATHER JACKET4.webp', 61),
(142, 'z2.webp', 61),
(143, 'ROBUST SHORTS.jpg', 62),
(144, 'ROBUST SHORTS1.jpg', 62),
(145, 'ROBUST SHORTS2.jpg', 62),
(146, 'ROBUST SHORTS3.jpg', 62),
(147, 'z3.png', 62),
(148, 'HADES UNFURL SHORTS.webp', 63),
(149, 'HADES UNFURL SHORTS1.webp', 63),
(150, 'HADES UNFURL SHORTS2.webp', 63),
(151, 'HADES UNFURL SHORTS3.webp', 63),
(152, 'HADES UNFURL SHORTS4.webp', 63),
(153, 'z3.png', 63),
(154, 'CURVED SHORT1.webp', 64),
(155, 'CURVED SHORT2.webp', 64),
(156, 'CURVED SHORT3.webp', 64),
(157, 'CURVED SHORT4.webp', 64),
(158, 'z3.png', 64),
(159, 'CARDINALS SHORTS.webp', 65),
(160, 'CARDINALS SHORTS1.webp', 65),
(161, 'CARDINALS SHORTS2.webp', 65),
(162, 'CARDINALS SHORTS3.webp', 65),
(163, 'z3.png', 65),
(164, 'LORRYLOAD CARGO SHORT.png', 66),
(165, 'LORRYLOAD CARGO SHORT1.webp', 66),
(166, 'LORRYLOAD CARGO SHORT2.webp', 66),
(167, 'LORRYLOAD CARGO SHORT3.webp', 66),
(168, 'LORRYLOAD CARGO SHORT4.webp', 66),
(169, 'z3.png', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kich_thuoc`
--

CREATE TABLE `kich_thuoc` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kich_thuoc`
--

INSERT INTO `kich_thuoc` (`id`, `value`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_sac`
--

CREATE TABLE `mau_sac` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mau_sac`
--

INSERT INTO `mau_sac` (`id`, `value`) VALUES
(1, 'Đen'),
(2, 'Trắng'),
(3, 'Xanhlá'),
(4, 'Xanhbiển'),
(5, 'Đỏ'),
(6, 'Vàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL COMMENT 'Id sản phẩm',
  `name` varchar(255) NOT NULL COMMENT 'Tên sản phẩm',
  `img` varchar(225) NOT NULL,
  `price_niemyet` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Giá sản phẩm',
  `price_sale` int(100) NOT NULL COMMENT 'Giá sale',
  `mota` text NOT NULL COMMENT 'Mô tả',
  `luotxem` int(11) NOT NULL DEFAULT 0 COMMENT 'Lượt xem',
  `iddm` int(11) NOT NULL COMMENT 'Id danh mục'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `img`, `price_niemyet`, `price_sale`, `mota`, `luotxem`, `iddm`) VALUES
(27, 'Áo Polo NEWSEVEN Glitch Polo PL.145', 'Áo Polo NEWSEVEN Glitch Polo PL.145.jpg', 300000.00, 250000, 'Thông tin sản phẩm \nÁo Polo NEWSEVEN Glitch Polo PL.145:  \n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.  \n– Chất liệu: 100% cotton\n– định lượng 250GSM. \nDày dặn. Đứng form.  Đã xử lý chống co”  \n– Cổ áo: Cổ dệt dày dặn,đã xử lý chống nhăn, bai dão', 181, 2),
(30, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 220000.00, 160000, 'Thông Tin Sản Phẩm : Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023\r\n- Chất liệu: Dạ 100% cao cấp, bề mặt vải mịn, ko xù, ko gião , dày dặn\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi , mặc đi làm , mặc hàng ngày\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\n* Bảng size mẫu \r\n- Đủ size: M - L - XL  \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size', 533, 8),
(31, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 240000.00, 165000, 'Thông tin sản phẩm : Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie LV Loang Màu Chất Liệu Nỉ Bông 2 Lớp Dày Dặn Hotrend\r\n- Chất liệu:Nỉ Bông 2 Lớp Dày Dặn Cao Cấp Không Xù\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n- Đủ size: M - L - XL \r\n* Bảng size mẫu \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\n\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\r\nHướng dẫn sử dụng sản phẩm \r\n- Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n- Không sử dụng thuốc tẩy\r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời\r\n Shop Thời Trang Unisex 18 CAM KẾT\r\nSản phẩm giống mô tả .\r\nĐảm bảo vải chất lượng \r\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\r\nHàng có sẵn, giao hàng ngay khi nhận được đơn \r\nChấp nhận đổi hàng khi size không vừa\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền ', 405, 8),
(33, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165.jpg', 590000.00, 490000, 'Thông tin sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: Vải gió mặt lì, dày dặn cản gió tốt, lót lưới thoáng mát cực kì phù hợp với thời tiết mùa hè.\r\n\r\n– Cổ áo: Ép 2 lớp dày dặn, đứng dáng cổ\r\n\r\n– Khóa nhựa răng cá sấu, củ khóa kim loại kahwsc logo NEWSEVEN chìm.\r\n\r\n– Hình in: in lưới, mực in plasticol giúp hình in bám vải tốt và lên màu đẹp.\r\n\r\n– Thiết kế: Sản phẩm nằm trong BST Racing “Over the limit”, thiết kế và logo mang tinh thần và đậm nét của chủ đề Racing với bộ nhận diện được làm xuyên suốt các sản phẩm. Có phần cá tay ở cổ tay áo giúp cho người mặc có thể điều chỉnh độ rộng. Gấu áo có dây chun bún và chốt nhựa để linh hoạt về độ rộng chật và tùy vào cách ăn mặc của mỗi khách hàng.\r\n\r\nCác đường phối trên áo với các lớp màu tạo tổng thể hài hòa về màu sắc của bộ sưu tập, 3 màu đen – trắng – đỏ cực nổi bật.\r\n\r\nThông số chọn size:\r\n\r\nSize M: 1m50-1m60 (50-55kg)\r\n\r\nSize L : 1m60-1m70( 55-65kg)\r\n\r\nSize XL: 1m70-1m80(65-75kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc form vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\r\n\r\nHướng dẫn sử dụng sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n\r\n– Không giặt máy trong 10 ngày đầu\r\n\r\n– Không sử dụng thuốc tẩy\r\n\r\n– Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời', 45, 8),
(34, 'Áo Thun Newseven Curve Baby Tee BB.222', 'Áo Thun Newseven Curve Baby Tee BB.222.png', 280000.00, 220000, '-Chất liệu: Vải Cotton  định lượng 250GSM.\r\n\r\n-Kiểu dáng: Form Baby Tee\r\n\r\n-Màu sắc: Đen, Trắng\r\n\r\n-Thiết kế: In lưới\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size\r\nChính sách đổi trả\r\n\r\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n\r\n– Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\r\n\r\n– Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n\r\n2. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n\r\n– Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n\r\n– Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Newseven\r\n\r\n– Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\r\n\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\r\n\r\nHướng dẫn sử dụng sản phẩm Newseven:', 22, 1),
(35, 'Áo Thun NEWSEVEN Lining Racer AT.219', 'Áo Thun NEWSEVEN Lining Racer AT.219.jpg', 350000.00, 230000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 8, 1),
(38, 'Áo Thun NEWSEVEN Racing AT.148', 'Áo Thun NEWSEVEN Racing AT.148.jpg', 350000.00, 290000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 7, 1),
(40, 'Quần Short Basic NEWSEVEN', 'Quần Short Basic NEWSEVEN.jpeg', 250000.00, 199000, 'Thông tin sản phẩm Quần Short Đùi Unisex N7 NEWSEVEN Basic nam nữ form rộng Local Brand:\r\n– Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n– Chất liệu: Nỉ chân cua.\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.\r\n– Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\nThông số chọn size:\r\nSize S: 1m50-1m55( 45-60kg)\r\nSize M: 1m55-1m60 (55-70kg)\r\nSize L: 1m60-1m70 (65-80kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 14, 9),
(43, 'LAMP LEGEND TEE', 'LAMP LEGEND TEE.webp', 590000.00, 490000, '• Form basic mới\r\n• Hoạ tiết trên áo sử dụng kỹ thuật in kéo lụa \r\n• Logo Hades thêu nổi ở tay áo\r\n• Chất liệu: Cotton 2 chiều\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 1),
(44, 'HADES LODESTAR BLUR TEE', 'HADES LODESTAR BLUR TEE.webp', 590000.00, 490000, 'THÔNG TIN\r\n• Form basic mới\r\n• Áo được xử lý wash tạo hiệu ứng riêng biệt\r\n• Hoạ tiết in kéo lụa full bản ở mặt trước và sau áo\r\n• Logo Hades thêu nổi ở tay áo\r\n• Chất liệu: Cotton 2 chiều\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 1),
(45, 'SICKLE FANG TEE', 'SICKLE FANG TEE4.jpg', 350000.00, 300000, 'THÔNG TIN\r\n• Form basic mới\r\n• Áo đen: hoạ tiết mặt trước áo in kéo lụa kèm đính đá\r\n• Áo trắng: hoạ tiết mặt trước áo in kéo lụa kèm chữ thêu\r\n• Logo Hades thêu cùng màu ở tay áo\r\n• Chất liệu: Cotton 2 chiều\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 1),
(47, 'SPIKES SPORT JERSEY POLO', '1.webp', 590000.00, 490000, 'THÔNG TIN\r\n• Áo có các chi tiết rã trước và sau kèm phối màu tương phản\r\n• Các đường line trang trí chạy dọc thân và tay áo\r\n• Các chi tiết trên áo sử dụng kỹ thuật in kéo lụa\r\n• Logo Hades thêu nổi ở tay áo\r\n• Vải thoáng mát, đứng form\r\n• Chất liệu: Thun cá sấu\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 3, 2),
(49, 'ALLYSON ATHLETE JERSEY', 'ALLYSON ATHLETE JERSEY.webp', 590000.00, 490000, 'ALLYSON ATHLETE JERSEY', 3, 2),
(50, 'UNIFY POLO', 'UNIFY POLO.webp', 590000.00, 490000, 'THÔNG TIN\r\n• Áo có các chi tiết rã trước và sau kèm xử lý rách\r\n• Hoạ tiết chữ mặt sau áo sử dụng kỹ thuật in kéo lụa\r\n• Cúc áo bấm ẩn bên trong và nameplate inox tạo điểm nhấn\r\n• Vải thoáng mát, đứng form\r\n• Chất liệu: Vải chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 2, 2),
(51, 'POINSETTIAS POLO', 'POINSETTIAS POLO.webp', 350000.00, 290000, 'THÔNG TIN\r\n• Hoạ tiết in lụa full bản mặt trước áo\r\n• Logo thêu nổi ở tay áo\r\n• Vải thoáng mát, đứng form\r\n• Chất liệu: Thun cá sấu\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 2, 2),
(52, 'LEOPARD CLUB POLO', 'LEOPARD CLUB POLO.webp', 590000.00, 290000, 'THÔNG TIN\r\n• Hoạ tiết in lụa full bản mặt trước áo\r\n• Logo ở tay áo và mặt trước áo áp dụng kỹ thuật thêu nổi.\r\n• Vải thoáng mát, đứng form\r\n• Chất liệu: Thun cá sấu\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 2),
(53, 'SERAPHIC PEARLS ZIP HOODIE', 'SERAPHIC PEARLS ZIP HOODIE.webp', 700000.00, 500000, 'THÔNG TIN\r\n• Boxy Fit\r\n• Khoá kéo zip toàn thân\r\n• Hoạ tiết in kéo lụa ở mặt trước áo\r\n• Bo cổ tay và thân áo dày dặn\r\n• Mạc cao su logo Hades đính ở nón\r\n• Chất liệu: Chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 7),
(54, 'LITHE BOXY HOODIE', 'LITHE BOXY HOODIE.webp', 590000.00, 490000, 'THÔNG TIN\r\n• Boxy fit\r\n• Hoạ tiết trên toàn bộ thân áo sử dụng kỹ thuật in kéo lụa\r\n• Mạc logo cao su được đính ngay nón\r\n• Có túi kangaroo phía trước kèm các nút kim loại trang trí\r\n• Logo Hades thêu nổi ở tay áo\r\n• Bo cổ tay và bo thân áo\r\n• Đính nút kim loại ở cổ áo\r\n• Chất liệu: Nỉ bông\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 7),
(55, 'HEBREW BOXY HOODIE', 'HEBREW BOXY HOODIE.webp', 700000.00, 500000, 'THÔNG TIN\r\n• Boxy Fit\r\n• Hoạ tiết trên áo được thêu nổi\r\n• Thiết kế 2 túi cách điệu phía trước\r\n• Nameplate inox được đính ở cổ tay\r\n• Bo cổ tay và bo thân áo\r\n• Các chi tiết nút kim loại ở cổ áo và túi áo\r\n• Chất liệu: Nỉ bông\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 7),
(56, 'FERNERY HOODIE', 'FERNERY HOODIE.webp', 590000.00, 490000, 'THÔNG TIN\r\n• Hoạ tiết trên tay áo được in kéo lụa\r\n• Logo Hades ngay nón và tay áo\r\n• Tay áo may ráp với thân \r\n• Chất liệu: Nỉ bông\r\n \r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 7),
(57, 'MUZIC PATCHES BOXY HOODIE ZIP', 'MUZIC PATCHES BOXY HOODIE ZIP.webp', 800000.00, 490000, 'THÔNG TIN\r\n• Boxy Fit\r\n• Các chi tiết in kéo lụa ở mặt trước và mặt sau áo, thêu ở tay áo\r\n• Bo cổ tay và thân áo dày dặn\r\n• Logo thêu nổi ngay nón\r\n• Chất liệu: Nỉ bông\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 7),
(58, 'LONER CLUB BOXY HOODIE', 'LONER CLUB BOXY HOODIE.webp', 600000.00, 300000, 'THÔNG TIN\r\n• Boxy fit\r\n• Hoạ tiết trên áo kết hợp giữa kỹ thuật in kéo lụa và thêu xù\r\n• Logo thêu nổi ngay nón\r\n• Có túi kangaroo phía trước\r\n• Nameplate inox đính ở túi áo\r\n• Bo cổ tay, bo thân và bo túi áo\r\n• Đính nút kim loại ở cổ áo\r\n• Chất liệu: Nỉ bông\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 7),
(59, 'MAJOR PIECES JACKET', 'MAJOR PIECES JACKET.webp', 700000.00, 690000, 'THÔNG TIN\r\n• Jacket khoá kéo zip dọc thân\r\n• Có dây rút ở tay và thân áo\r\n• Sử dụng kỹ thuật ráp nối vải\r\n• Chi tiết chữ phía trước áo được thêu viền \r\n• Có 2 túi to phía trước và các nút kim loại khác\r\n• Chất liệu: Kaki\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADE', 1, 8),
(60, 'LOOMING ZIP JACKET', 'LOOMING ZIP JACKET.webp', 590000.00, 290000, 'THÔNG TIN\r\n• Chi tiết túi áo được thiết kế đắp chồng lên nhau\r\n• Bo thân và tay áo\r\n• Chi tiết chữ sử dụng kỹ thuật thêu nổi\r\n• Áo sử dụng kỹ thuật ráp nối vải\r\n• Khóa kéo dọc thân\r\n• Chất liệu: Kaki\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 8),
(61, 'DOMINATOR LEATHER JACKET', 'DOMINATOR LEATHER JACKET.webp', 900000.00, 700000, 'THÔNG TIN\r\n• Áo khoác da khoá kéo zip full thân\r\n• Cổ áo sơ mi\r\n• Các chi tiết chữ được thêu phía trước áo\r\n• Các chi tiết cánh tay áo, cổ áo, thân áo và túi áo viền da trắng\r\n• Phía sau hai tay áo có chi tiết khoá kéo zip\r\n• Chất liệu: Da\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 1, 8),
(62, 'ROBUST SHORTS', 'ROBUST SHORTS.jpg', 250000.00, 199000, 'THÔNG TIN\r\n• Quần lưng thun có dây rút\r\n• Sử dụng kỹ thuật ráp nối vải toàn thân quần\r\n• Đường line phản quang tạo điểm nhấn\r\n• Chi tiết chữ \"H\" thêu nổi ở mặt trước\r\n• Các chi tiết kim loại khác\r\n• Có hai túi hai bên\r\n• Chất liệu: Dù\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES', 6, 9),
(63, 'HADES UNFURL SHORTS', 'HADES UNFURL SHORTS.webp', 350000.00, 290000, 'THÔNG TIN\r\n• Quần lưng thun có dây rút\r\n• Hoạ tiết và các đường line được in kéo lụa ở mặt trước và sau quần\r\n• Có hai túi khoá kéo hai bên\r\n• Chất liệu: Dù\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 9),
(64, ' LORRYLOAD CARGO SHORT', 'CURVED SHORT1.webp', 420000.00, 290000, 'CURVED SHORT', 1, 9),
(65, 'CARDINALS SHORTS', 'CARDINALS SHORTS.webp', 590000.00, 220000, 'THÔNG TIN\r\n• Quần lưng thun\r\n• Có túi ở mặt sau kèm nameplate inox \r\n• Logo Hades thêu ở tà quần\r\n• Chất liệu: Vải chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 9),
(66, 'LORRYLOAD CARGO SHORT', 'LORRYLOAD CARGO SHORT.png', 590000.00, 199000, 'THÔNG TIN\r\n• Quần nút gài\r\n• Túi hộp phồng 2 bên\r\n• Chất liệu thoải mái\r\n• Phong cách techwear\r\n• Chất liệu: Kaki Jean\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.', 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL COMMENT 'Id khách hàng',
  `user` varchar(50) NOT NULL COMMENT 'Tên đăng nhập',
  `fullname` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(255) NOT NULL COMMENT 'Email',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ',
  `tel` varchar(20) DEFAULT NULL COMMENT 'Số điện thoại',
  `role` int(11) NOT NULL DEFAULT 0 COMMENT 'Quyền hạn: \r\n1 Admin \r\n2 Khách hàng\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `fullname`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'admin', 'Admin', '123', 'admin@fpt.edu.vn', 'Hà Nội ', '0987654321', 1),
(41, 'son', '', '123', 'son@123', NULL, NULL, 0),
(42, 'huyduc', '', '123', 'huyduc123@fpt.edu.vn', NULL, NULL, 0),
(43, 'hoangnv', '', '123', 'hoangnvph@fpt.edu.vn', NULL, NULL, 0),
(44, 'fpt', '', '123', 'donmph43154@fpt', NULL, NULL, 0),
(45, 'minhdo', '', '123', 'minhdo@gmail.com', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bien_the`
--
ALTER TABLE `bien_the`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kich_thuoc` (`id_kich_thuoc`),
  ADD KEY `id_mau_sac` (`id_mau_sac`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_2` (`id_bt_sanpham`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donhang` (`id_donhang`),
  ADD KEY `id_bt_sanpham` (`id_bt_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `kich_thuoc`
--
ALTER TABLE `kich_thuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bien_the`
--
ALTER TABLE `bien_the`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id bình luận', AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id danh mục', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id đơn hàng', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT cho bảng `kich_thuoc`
--
ALTER TABLE `kich_thuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id sản phẩm', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id khách hàng', AUTO_INCREMENT=46;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bien_the`
--
ALTER TABLE `bien_the`
  ADD CONSTRAINT `bien_the_ibfk_1` FOREIGN KEY (`id_kich_thuoc`) REFERENCES `kich_thuoc` (`id`),
  ADD CONSTRAINT `bien_the_ibfk_2` FOREIGN KEY (`id_mau_sac`) REFERENCES `mau_sac` (`id`),
  ADD CONSTRAINT `bien_the_ibfk_3` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_bt_sanpham`) REFERENCES `bien_the` (`id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_ibfk_1` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitiet_donhang_ibfk_2` FOREIGN KEY (`id_bt_sanpham`) REFERENCES `bien_the` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
