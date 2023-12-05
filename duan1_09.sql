-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 03:18 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(37, 42, 1, 2, 423),
(46, 45, 1, 3, 23),
(47, 45, 2, 3, 22),
(48, 45, 4, 3, 11),
(49, 45, 1, 1, 2),
(50, 46, 1, 2, 12),
(51, 46, 2, 2, 12),
(52, 46, 4, 3, 12),
(53, 46, 6, 3, 12),
(54, 47, 1, 2, 22),
(55, 47, 2, 2, 22),
(56, 47, 4, 2, 22),
(57, 47, 6, 3, 22),
(58, 48, 1, 2, 4),
(59, 48, 2, 2, 4),
(60, 48, 1, 3, 4),
(61, 48, 2, 3, 4),
(62, 49, 1, 2, 22),
(63, 49, 3, 2, 11),
(64, 49, 1, 3, 11),
(65, 49, 3, 3, 11),
(66, 50, 1, 2, 11),
(67, 50, 1, 2, 11),
(68, 50, 6, 4, 11),
(69, 50, 6, 4, 11),
(70, 51, 1, 3, 11),
(71, 51, 1, 3, 11),
(72, 51, 2, 4, 11),
(73, 51, 2, 4, 11),
(82, 52, 1, 3, 12),
(83, 52, 3, 3, 12),
(84, 52, 2, 4, 12),
(85, 52, 6, 4, 12),
(86, 53, 1, 2, 11),
(87, 53, 1, 3, 11),
(88, 53, 1, 4, 11),
(89, 53, 1, 5, 11),
(94, 54, 1, 3, 11),
(95, 54, 2, 3, 11),
(96, 54, 1, 4, 11),
(97, 54, 2, 4, 11),
(98, 55, 1, 2, 11),
(99, 55, 1, 3, 11),
(100, 55, 2, 2, 11),
(101, 55, 2, 3, 11),
(102, 56, 1, 2, 12),
(103, 56, 1, 2, 12),
(104, 56, 6, 3, 12),
(105, 56, 6, 3, 12),
(110, 57, 1, 2, 13),
(111, 57, 2, 3, 13),
(112, 57, 6, 3, 13),
(113, 57, 1, 3, 13),
(114, 59, 5, 3, 12),
(115, 59, 3, 3, 12),
(116, 59, 4, 3, 12),
(117, 59, 6, 3, 12),
(118, 60, 1, 2, 12),
(119, 60, 1, 3, 12),
(120, 60, 2, 2, 12),
(121, 60, 2, 3, 12);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(58, 'Sản phẩm tốt, rất đáng mua ', 41, 34, '28-11-23 15:04:57'),
(59, 'Xịn xò luôn <3 <3', 1, 34, '29-11-23 19:12:57'),
(60, 'áo đẹp quá', 1, 30, '30-11-23 14:18:13'),
(61, 'Áo đẹp, rẻ thơm, đóng gói cẩn thận 10đỉm', 1, 46, '03-12-23 20:59:57'),
(62, 'Ib shop', 1, 46, '03-12-23 21:00:29'),
(63, 'ok đấy', 1, 46, '05-12-23 14:56:27'),
(64, '10 điểm', 44, 30, '05-12-23 15:05:08'),
(65, 'Sản phẩm tốt, rất đáng mua ', 44, 60, '05-12-23 17:42:03');

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
(158, 43, 28, 2),
(161, 41, 25, 2),
(164, 41, 17, 3),
(198, 41, 13, 1),
(201, 41, 14, 2),
(239, 44, 118, 1),
(240, 44, 121, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_donhang`, `id_bt_sanpham`, `so_luong`, `gia`, `url_img`, `tensp`, `ngay_mua`) VALUES
(24, 22, 53, 2, 129000, '', 'Áo Thun Dài Tay Studio', '2023-12-02'),
(25, 23, 61, 2, 279000, '', 'Áo Polo NEWSEVEN Cybernetic PL.157', '2023-12-02'),
(26, 24, 66, 2, 299000, '', 'Áo Thun Polo N7 Newseven Minimalism V2', '2023-12-02'),
(28, 26, 48, 1, 189000, '', 'T- Shirt Retro Vibes AT.129', '2023-12-02'),
(29, 28, 13, 1, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-12-02'),
(30, 30, 16, 1, 165000, '', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', '2023-12-02'),
(31, 32, 24, 2, 490000, '', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', '2023-12-02'),
(32, 34, 13, 1, 160000, '', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', '2023-12-02'),
(34, 36, 23, 1, 490000, '', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', '2023-12-02'),
(41, 50, 23, 2, 490000, '', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', '2023-12-04'),
(43, 52, 84, 2, 279000, '', 'Polo Striped PL.137', '2023-12-04'),
(44, 53, 114, 1, 299000, '', 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044', '2023-12-05'),
(45, 53, 112, 2, 299000, '', 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061', '2023-12-05'),
(46, 54, 23, 1, 490000, '', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', '2023-12-05'),
(47, 55, 52, 2, 129000, '', 'Áo Thun Dài Tay Studio', '2023-12-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL COMMENT 'Id danh mục',
  `name` varchar(255) NOT NULL COMMENT 'Tên danh mục',
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `id_dm`) VALUES
(1, 't shirt', 1),
(2, 'polo', 1),
(7, 'hoodie', 1),
(8, 'áo khoác', 1),
(9, 'short', 2),
(13, 'Pant', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL COMMENT 'Id đơn hàng',
  `id_user` int(11) DEFAULT NULL COMMENT 'Id khách hàng',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phuongthuctt` enum('Trả tiền khi nhận hàng','Thanh toán online') COLLATE utf8_unicode_ci NOT NULL COMMENT '1.Thanh toán khi nhận hàng 2.Thanh toán online',
  `ngay_dat_hang` datetime DEFAULT NULL,
  `tong` float NOT NULL,
  `status` enum('Chờ xác nhận','Đã xác nhận','Đang giao hàng','Hoàn thành') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `receive_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên người nhận ',
  `receive_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ nhận',
  `receive_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SĐT nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `address`, `sdt`, `email`, `phuongthuctt`, `ngay_dat_hang`, `tong`, `status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(2, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'sonnvph33874@fpt.edu.vn', 'Trả tiền khi nhận hàng', '2023-11-26 00:00:00', 345000, 'Chờ xác nhận', NULL, NULL, NULL),
(3, 43, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 98765432, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 485000, 'Chờ xác nhận', NULL, NULL, NULL),
(4, 43, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 98765432, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 485000, 'Chờ xác nhận', NULL, NULL, NULL),
(9, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-28 00:00:00', 670000, 'Chờ xác nhận', NULL, NULL, NULL),
(13, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 25000, 'Chờ xác nhận', NULL, NULL, NULL),
(16, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-11-29 00:00:00', 840000, 'Chờ xác nhận', NULL, NULL, NULL),
(21, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 520000, 'Chờ xác nhận', '', NULL, NULL),
(22, 1, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 283000, 'Đã xác nhận', 'Ngueyenx Viết Sơn', NULL, NULL),
(23, 1, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'huynvph33874@fpt.edu.vn', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 583000, 'Chờ xác nhận', 'Nguyễn Huy Đức', NULL, NULL),
(24, 44, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'banhsontv@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 623000, 'Chờ xác nhận', 'Nguyễn Ocean', NULL, NULL),
(25, 44, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 245000, 'Chờ xác nhận', 'Nguyễn Sơn 2', NULL, NULL),
(26, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 214000, 'Chờ xác nhận', '', NULL, NULL),
(28, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 185000, 'Chờ xác nhận', 'Nguyễn Sơn', NULL, NULL),
(29, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 185000, 'Chờ xác nhận', 'Nguyễn Sơn', NULL, NULL),
(30, 44, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 190000, 'Chờ xác nhận', '', NULL, NULL),
(31, 44, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 190000, 'Chờ xác nhận', 'Nguyễn Sơn', NULL, NULL),
(32, 44, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 1005000, 'Chờ xác nhận', 'Nguyễn Sơn123', NULL, NULL),
(33, 44, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 1005000, 'Chờ xác nhận', 'Nguyễn Sơn123', NULL, NULL),
(34, 44, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 185000, 'Chờ xác nhận', '', NULL, NULL),
(35, 44, 'Hà nội, Hà nội, Hà nội, Thôn Đồng Trữ', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 245000, 'Chờ xác nhận', 'Nguyễn Sơn', NULL, NULL),
(36, 44, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 515000, 'Đang giao hàng', '', NULL, NULL),
(37, 44, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-02 00:00:00', 515000, 'Chờ xác nhận', '', NULL, NULL),
(38, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 154000, 'Chờ xác nhận', '', NULL, NULL),
(40, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 412000, 'Chờ xác nhận', '', NULL, NULL),
(41, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 412000, 'Chờ xác nhận', '', NULL, NULL),
(42, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 465000, 'Chờ xác nhận', '', NULL, NULL),
(43, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 465000, 'Chờ xác nhận', '', NULL, NULL),
(44, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 412000, 'Chờ xác nhận', '', NULL, NULL),
(45, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 412000, 'Chờ xác nhận', '', NULL, NULL),
(46, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 245000, 'Chờ xác nhận', '', NULL, NULL),
(47, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-03 00:00:00', 245000, 'Chờ xác nhận', '', NULL, NULL),
(48, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-04 00:00:00', 283000, 'Chờ xác nhận', '', NULL, NULL),
(49, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-04 00:00:00', 283000, 'Chờ xác nhận', '', NULL, NULL),
(50, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-04 00:00:00', 1005000, 'Đang giao hàng', '', NULL, NULL),
(51, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-04 00:00:00', 465000, 'Chờ xác nhận', '', NULL, NULL),
(52, 1, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-04 00:00:00', 583000, 'Chờ xác nhận', '', NULL, NULL),
(53, 1, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-05 00:00:00', 922000, 'Chờ xác nhận', 'Nguyễn Sơn', NULL, NULL),
(54, 44, 'Hà nội, Hà nội, Hà nội, Chương Mỹ, Hà Nội City', 973657594, 'anhsongoku123@gmail.com', 'Trả tiền khi nhận hàng', '2023-12-05 00:00:00', 515000, 'Đã xác nhận', 'Nguyễn Sơn', NULL, NULL),
(55, 44, 'Hà nội, Hà nội, Hà nội, ', 0, '', 'Trả tiền khi nhận hàng', '2023-12-05 00:00:00', 283000, 'Chờ xác nhận', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
(51, 'Quần Short Kaki NEWSEVEN Double Latch QS.153 2.jpg', 42),
(52, 'Quần Short Kaki NEWSEVEN Double Latch QS.153 3.jpg', 42),
(53, 'Quần Short Kaki NEWSEVEN Double Latch QS.153 4.jpg', 42),
(54, 'Quần Short Kaki NEWSEVEN Double Latch QS.153.jpg', 42),
(65, 'T- Shirt Retro Vibes AT.129 2.jpg', 45),
(66, 'T- Shirt Retro Vibes AT.129.png', 45),
(67, 'Áo Thun Dài Tay Studio 5.jpg', 46),
(68, 'Áo Thun Dài Tay Studio 4.jpg', 46),
(69, 'Áo Thun Dài Tay Studio 3.jpg', 46),
(70, 'Áo Thun Dài Tay Studio 2.jpg', 46),
(71, 'Áo Thun Dài Tay Studio.jpg', 46),
(72, 'Áo Thun Trơn Dài Tay 9 Màu 5.jpg', 47),
(73, 'Áo Thun Trơn Dài Tay 9 Màu 4.jpeg', 47),
(74, 'Áo Thun Trơn Dài Tay 9 Màu 3.jpg', 47),
(75, 'Áo Thun Trơn Dài Tay 9 Màu 2.jpeg', 47),
(76, 'Áo Thun Trơn Dài Tay 9 Màu.jpg', 47),
(77, 'Áo Polo NEWSEVEN Cybernetic PL.157 5.png', 48),
(78, 'Áo Polo NEWSEVEN Cybernetic PL.157 4.png', 48),
(79, 'Áo Polo NEWSEVEN Cybernetic PL.157 3.png', 48),
(80, 'Áo Polo NEWSEVEN Cybernetic PL.157 2.png', 48),
(81, 'Áo Polo NEWSEVEN Cybernetic PL.157.png', 48),
(82, 'Áo Polo NEWSEVEN Glitch Polo PL.145 5.jpg', 49),
(83, 'Áo Polo NEWSEVEN Glitch Polo PL.145 4.jpg', 49),
(84, 'Áo Polo NEWSEVEN Glitch Polo PL.145 3.jpg', 49),
(85, 'Áo Polo NEWSEVEN Glitch Polo PL.145 2.png', 49),
(86, 'Áo Polo NEWSEVEN Glitch Polo PL.145.jpg', 49),
(87, 'Áo Thun Polo N7 Newseven Minimalism V2 4.jpeg', 50),
(88, 'Áo Thun Polo N7 Newseven Minimalism V2 3.jpeg', 50),
(89, 'Áo Thun Polo N7 Newseven Minimalism V2 2.jpeg', 50),
(90, 'Áo Thun Polo N7 Newseven Minimalism V2.jpeg', 50),
(91, 'Polo Pitying PL.134 5.jpg', 51),
(92, 'Polo Pitying PL.134 4.jpg', 51),
(93, 'Polo Pitying PL.134 3.jpg', 51),
(94, 'Polo Pitying PL.134 2.jpg', 51),
(95, 'Polo Pitying PL.134.jpg', 51),
(106, 'Polo Striped PL.137 5.jpg', 52),
(107, 'Polo Striped PL.137 4.jpg', 52),
(108, 'Polo Striped PL.137 3.jpg', 52),
(109, 'Polo Striped PL.137 2.jpg', 52),
(110, 'Polo Striped PL.137.jpg', 52),
(111, 'Áo Polo Teelab Local Brand Unisex Graphic Hanoi Famous AP031 2.webp', 53),
(112, 'Áo Polo Teelab Local Brand Unisex Graphic Hanoi Famous AP031 3.webp', 53),
(113, 'Áo Polo Teelab Local Brand Unisex Graphic Hanoi Famous AP031.webp', 53),
(114, 'Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064 2.webp', 54),
(115, 'Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064 3.webp', 54),
(116, 'Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064.webp', 54),
(117, 'Áo Hoodie Teelab Local Brand Unisex Blockcore Curve HD065 3.webp', 55),
(118, 'Áo Hoodie Teelab Local Brand Unisex Blockcore Curve HD065 2.webp', 55),
(119, 'Áo Hoodie Teelab Local Brand Unisex Blockcore Curve HD065.webp', 55),
(120, 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067 3.webp', 56),
(121, 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067 2.webp', 56),
(122, 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067 1.webp', 56),
(123, 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067.webp', 56),
(124, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061 4.webp', 57),
(125, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061 3.webp', 57),
(126, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061 1.webp', 57),
(127, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061.webp', 57),
(128, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061 2.webp', 57),
(129, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044 5.webp', 59),
(130, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044 4.webp', 59),
(131, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044 3.webp', 59),
(132, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044 2.webp', 59),
(133, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044.webp', 59),
(134, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164 5.jpg', 60),
(135, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164 4.jpg', 60),
(136, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164 3.jpg', 60),
(137, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164 2.jpg', 60),
(138, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164.jpg', 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kich_thuoc`
--

CREATE TABLE `kich_thuoc` (
  `id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `img`, `price_niemyet`, `price_sale`, `mota`, `luotxem`, `iddm`) VALUES
(30, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 220000.00, 160000, 'Thông Tin Sản Phẩm : Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023\r\n- Chất liệu: Dạ 100% cao cấp, bề mặt vải mịn, ko xù, ko gião , dày dặn\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi , mặc đi làm , mặc hàng ngày\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\n* Bảng size mẫu \r\n- Đủ size: M - L - XL  \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size', 502, 8),
(31, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 240000.00, 165000, 'Thông tin sản phẩm : Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie LV Loang Màu Chất Liệu Nỉ Bông 2 Lớp Dày Dặn Hotrend\r\n- Chất liệu:Nỉ Bông 2 Lớp Dày Dặn Cao Cấp Không Xù\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n- Đủ size: M - L - XL \r\n* Bảng size mẫu \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\n\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\r\nHướng dẫn sử dụng sản phẩm \r\n- Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n- Không sử dụng thuốc tẩy\r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời\r\n Shop Thời Trang Unisex 18 CAM KẾT\r\nSản phẩm giống mô tả .\r\nĐảm bảo vải chất lượng \r\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\r\nHàng có sẵn, giao hàng ngay khi nhận được đơn \r\nChấp nhận đổi hàng khi size không vừa\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền ', 407, 8),
(33, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165.jpg', 590000.00, 490000, 'Thông tin sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: Vải gió mặt lì, dày dặn cản gió tốt, lót lưới thoáng mát cực kì phù hợp với thời tiết mùa hè.\r\n\r\n– Cổ áo: Ép 2 lớp dày dặn, đứng dáng cổ\r\n\r\n– Khóa nhựa răng cá sấu, củ khóa kim loại kahwsc logo NEWSEVEN chìm.\r\n\r\n– Hình in: in lưới, mực in plasticol giúp hình in bám vải tốt và lên màu đẹp.\r\n\r\n– Thiết kế: Sản phẩm nằm trong BST Racing “Over the limit”, thiết kế và logo mang tinh thần và đậm nét của chủ đề Racing với bộ nhận diện được làm xuyên suốt các sản phẩm. Có phần cá tay ở cổ tay áo giúp cho người mặc có thể điều chỉnh độ rộng. Gấu áo có dây chun bún và chốt nhựa để linh hoạt về độ rộng chật và tùy vào cách ăn mặc của mỗi khách hàng.\r\n\r\nCác đường phối trên áo với các lớp màu tạo tổng thể hài hòa về màu sắc của bộ sưu tập, 3 màu đen – trắng – đỏ cực nổi bật.\r\n\r\nThông số chọn size:\r\n\r\nSize M: 1m50-1m60 (50-55kg)\r\n\r\nSize L : 1m60-1m70( 55-65kg)\r\n\r\nSize XL: 1m70-1m80(65-75kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc form vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\r\n\r\nHướng dẫn sử dụng sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n\r\n– Không giặt máy trong 10 ngày đầu\r\n\r\n– Không sử dụng thuốc tẩy\r\n\r\n– Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời', 304, 8),
(34, 'Áo Thun Newseven Curve Baby Tee BB.222', 'Áo Thun Newseven Curve Baby Tee BB.222.png', 280000.00, 220000, '-Chất liệu: Vải Cotton  định lượng 250GSM.\r\n\r\n-Kiểu dáng: Form Baby Tee\r\n\r\n-Màu sắc: Đen, Trắng\r\n\r\n-Thiết kế: In lưới\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size\r\nChính sách đổi trả\r\n\r\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n\r\n– Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\r\n\r\n– Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n\r\n2. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n\r\n– Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n\r\n– Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Newseven\r\n\r\n– Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\r\n\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\r\n\r\nHướng dẫn sử dụng sản phẩm Newseven:', 291, 1),
(35, 'Áo Thun NEWSEVEN Lining Racer AT.219', 'Áo Thun NEWSEVEN Lining Racer AT.219.jpg', 350000.00, 230000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 10, 1),
(38, 'Áo Thun NEWSEVEN Racing AT.148', 'Áo Thun NEWSEVEN Racing AT.148.jpg', 350000.00, 290000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 10, 1),
(42, 'Quần Short Kaki NEWSEVEN Double Latch QS.153', 'Quần Short Kaki NEWSEVEN Double Latch QS.153.jpg', 250000.00, 199000, 'Chính sách  đổi trả\r\n\r\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n\r\n– Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\r\n\r\n– Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n\r\n2. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n\r\n– Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n\r\n– Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Newseven\r\n\r\n– Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\r\n\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\r\n\r\nHướng dẫn sử dụng sản phẩm Newseven:\r\n\r\n– Hạn chế phơi sản phẩm dưới ánh nắng trực tiếp.\r\n\r\n– Giặt ở nhiệt độ bình thường, với đồ có màu cùng màu\r\n\r\n– Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n– Không dùng hóa chất tẩy.', 5, 9),
(45, 'T- Shirt Retro Vibes AT.129', 'T- Shirt Retro Vibes AT.129.png', 250000.00, 189000, 'T- Shirt Retro Vibes AT.129\r\n\r\nHàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\nChất liệu: Thun cotton 2 chiều \r\nVải mềm mại và ấm áp nhờ mặt trong vải được phủ một lớp lông tơ ngắn, nên bề mặt vải vô cùng mềm mại, mịn màng.\r\n Vải ít nhăn, ít bám bẩn.\r\nBề mặt vải dai co giãn, khó bị xước.\r\nKiểu dáng áo T- Shirt Retro Vibes AT.129\r\n\r\nĐường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\nMặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\nThiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\nNEWSEVEN mang đến sản phẩmT- Shirt Retro Vibes AT.129 với 3 bản phối màu: Kem , Ghi , Hồng', 10, 1),
(46, 'Áo Thun Dài Tay Studio', 'Áo Thun Dài Tay Studio.jpg', 180000.00, 129000, 'Áo Thun Dài Tay Studio\r\nChất liệu: Cotton\r\nXuất xứ: Việt Nam\r\nThông số chọn size:\r\nSize S: 1m50-1m60 ( 45-60kg)\r\nSize M: 1m60-1m70 (55-70kg)\r\nSize L : 1m65-1m75 (60-75kg)\r\nSize XL : 1m70-1m80 (65-80kg)', 174, 1),
(47, 'Áo Thun Trơn Dài Tay 9 Màu', 'Áo Thun Trơn Dài Tay 9 Màu.jpg', 129000.00, 99000, 'Áo thun trơn Dài Tay 9 Màu\r\nChất cotton compact\r\n95% cotton, 5% spandex\r\nCo giãn 4 chiều\r\nXuất xứ: Việt Nam', 2, 1),
(48, 'Áo Polo NEWSEVEN Cybernetic PL.157', 'Áo Polo NEWSEVEN Cybernetic PL.157.png', 380000.00, 279000, '-Chất liệu: Vải Cotton  định lượng 280GSM.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Trắng\r\nChính sách đổi trả\r\n\r\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n\r\n– Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\r\n\r\n– Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n\r\n2. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n\r\n– Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n\r\n– Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Newseven\r\n\r\n– Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\r\n\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\r\n\r\nHướng dẫn sử dụng sản phẩm Newseven:\r\n\r\n– Hạn chế phơi sản phẩm dưới ánh nắng trực tiếp.\r\n\r\n– Giặt ở nhiệt độ bình thường, với đồ có màu cùng màu\r\n\r\n– Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n– Không dùng hóa chất tẩy.', 3, 2),
(49, 'Áo Polo NEWSEVEN Glitch Polo PL.145', 'Áo Polo NEWSEVEN Glitch Polo PL.145.jpg', 320000.00, 289000, 'Thông tin sản phẩm Áo Polo NEWSEVEN Glitch Polo PL.145:\r\n\r\n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: 100% cotton – định lượng 250GSM. Dày dặn. Đứng form.\r\n\r\nĐã xử lý chống co”\r\n\r\n– Cổ áo: Cổ dệt dày dặn,đã xử lý chống nhăn, bai dão\r\n\r\n– Hình in: mực in plasticol giúp hình in bám vải tốt và lên màu đẹp\r\n\r\n– Thiết kế: giúp người mặc cảm giác ng đầy dặn hơn, vai to hơn.\r\n\r\nThông số chọn size:\r\n\r\nSize M: 1m50-1m60 (50-55kg)\r\n\r\nSize L : 1m60-1m70( 55-65kg)\r\n\r\nSize XL: 1m70-1m80(65-75kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 2, 2),
(50, 'Áo Thun Polo N7 Newseven Minimalism V2', 'Áo Thun Polo N7 Newseven Minimalism V2.jpeg', 350000.00, 299000, 'Thông tin sản phẩm Áo Thun Polo N7 Newseven Minimalism V2 / Black:\r\n\r\n– Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: Da lộn 280G.\r\n\r\n– Chất liệu cao cấp.Vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n– Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\nThông số chọn size:\r\n\r\nSize S: 1m50-1m65 ( 45-60kg)\r\n\r\nSize M: 1m55-1m70 (55-70kg)\r\n\r\nSize L : 1m65-1m75( 65-70kg)\r\n\r\nSize XL: 1m70-1m85(70-80kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\r\n\r\nHướng dẫn sử dụng sản phẩm Áo Thun Polo N7 Newseven Minimalism V2 :\r\n\r\n– Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n\r\n– Không giặt máy trong 10 ngày đầu\r\n\r\n– Không sử dụng thuốc tẩy\r\n\r\n– Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời', 4, 2),
(51, 'Polo Pitying PL.134', 'Polo Pitying PL.134.jpg', 390000.00, 319000, 'Chi tiết sản phẩm\r\n\r\nPolo Pitying PL.134\r\n\r\nHàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\nChất liệu: Cotton 2 chiều 280GSM\r\nVải mềm mại và ấm áp nhờ mặt trong vải được phủ một lớp lông tơ ngắn, nên bề mặt vải vô cùng mềm mại, mịn màng.\r\n Vải ít nhăn, ít bám bẩn.\r\nBề mặt vải dai co giãn, khó bị xước\r\nKiểu dáng áo Polo Pitying PL.134\r\n\r\nĐường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\nMặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\nThiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\nNEWSEVEN mang đến sản phẩm Polo Pitying PL.134 với 2 bản phối màu: Ghi Đen , Kem Trắng', 0, 2),
(52, 'Polo Striped PL.137', 'Polo Striped PL.137.jpg', 320000.00, 279000, 'Chi tiết sản phẩm\r\n\r\nPolo Striped PL.137\r\n\r\nHàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\nChất liệu: Value Cotton\r\nVải mềm mại và ấm áp nhờ mặt trong vải được phủ một lớp lông tơ ngắn, nên bề mặt vải vô cùng mềm mại, mịn màng.\r\n Vải ít nhăn, ít bám bẩn.\r\nBề mặt vải dai co giãn, khó bị xước.\r\nĐường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\nMặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\nThiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\nNEWSEVEN mang đến sản phẩm Polo Striped PL.137  với 4  bản phối màu:  Trắng , Be , Xanh rêu , Đen', 10, 2),
(53, 'Áo Polo FashionShop Local Brand Unisex Graphic Hanoi Famous AP031', 'Áo Polo Teelab Local Brand Unisex Graphic Hanoi Famous AP031.webp', 360000.00, 185000, 'Thông tin sản phẩm:\r\n\r\n- Chất liệu: Cotton\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen\r\n\r\n- Thiết kế: In lụa cao cấp\r\n\r\nVề TEELAB:\r\n\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.\r\n\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý.\r\n\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n“Enjoy Your Youth”, now!\r\n\r\n \r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n \r\n\r\nChính sách bảo hành:\r\n\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.', 1, 2),
(54, 'Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064', 'Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064.webp', 450000.00, 299000, 'Thông tin sản phẩm:\r\n- Chất liệu: Nỉ\r\n- Form: Oversize\r\n- Màu sắc: Đen\r\n- Thiết kế: In lụa\r\nVề TEELAB:\r\n\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý.\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n“Enjoy Your Youth”, now!\r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n- Ngâm áo vào NƯỚC LẠNH có pha giấm hoặc phèn chua từ trong 2 tiếng đồng hồ\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\nChính sách bảo hành:\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.\r\n\r\n\r\nĐánh giá Áo Sweater Teelab Local Brand Unisex Studio Contrast HD064', 4, 7),
(55, 'Áo Hoodie Teelab Local Brand Unisex Blockcore Curve HD065', 'Áo Hoodie Teelab Local Brand Unisex Blockcore Curve HD065 3.webp', 550000.00, 349000, 'Thông tin sản phẩm:\r\n\r\n- Chất liệu: Nỉ bông 360gsm\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen/Kem\r\n\r\n- Thiết kế: In lụa.\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\n \r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời nguồn năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.\r\n\r\n \r\n\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý.\r\n\r\n \r\n\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n \r\n\r\n“Enjoy Your Youth”, now!\r\n\r\n \r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n\r\n- Ngâm áo vào NƯỚC LẠNH có pha giấm hoặc phèn chua từ trong 2 tiếng đồng hồ\r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n \r\n\r\nChính sách bảo hành:\r\n\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.', 2, 7),
(56, 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067', 'Áo Hoodie Teelab Local Brand Unisex Worldwide Studio Zipped Hoodie HD067 3.webp', 550000.00, 299000, '- Chất liệu: Nỉ bông\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen/Kem\r\n\r\n- Thiết kế: In lụa/Zip hai chiều\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời nguồn năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.\r\n\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý.\r\n\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n“Enjoy Your Youth”, now!\r\n\r\n \r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n\r\n- Ngâm áo vào NƯỚC LẠNH có pha giấm hoặc phèn chua từ trong 2 tiếng đồng hồ\r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n \r\n\r\nChính sách bảo hành:\r\n\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.', 1, 7),
(57, 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061', 'Áo Sweater Teelab Local Brand Unisex Wavy Line HD061 4.webp', 450000.00, 299000, 'Thông tin sản phẩm:\r\n\r\n- Chất liệu: Nỉ bông\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen/Kem\r\n\r\n- Thiết kế: In lụa\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời nguồn năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.\r\n\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý.\r\n\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n“Enjoy Your Youth”, now!\r\n\r\n \r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n\r\n- Ngâm áo vào NƯỚC LẠNH có pha giấm hoặc phèn chua từ trong 2 tiếng đồng hồ\r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\nChính sách bảo hành:\r\n\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.', 3, 7),
(59, 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044', 'Áo Hoodie Teelab Local Brand Unisex Special Collection Premium HD044 5.webp', 500000.00, 299000, '- Chất liệu: Nỉ bông\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen\r\n\r\n- Thiết kế: In lụa cao cấp\r\nYou will never be younger than you are at this very moment “Enjoy Your Youth!”\r\n\r\nKhông chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ - nơi nghiên cứu và cho ra đời nguồn năng lượng mang tên “Youth”. Chúng mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung. \r\n\r\nLấy cảm hứng từ giới trẻ, sáng tạo liên tục, bắt kịp xu hướng và phát triển đa dạng các dòng sản phẩm là cách mà chúng mình hoạt động để tạo nên phong cách sống hằng ngày của bạn. Mục tiêu của TEELAB là cung cấp các sản phẩm thời trang chất lượng cao với giá thành hợp lý. \r\n\r\nChẳng còn thời gian để loay hoay nữa đâu youngers ơi! Hãy nhanh chân bắt lấy những những khoảnh khắc tuyệt vời của tuổi trẻ. TEELAB đã sẵn sàng trải nghiệm cùng bạn!\r\n\r\n“Enjoy Your Youth”, now!\r\n\r\n \r\n\r\nHướng dẫn sử dụng sản phẩm Teelab:\r\n\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. \r\n\r\n- Không dùng hóa chất tẩy.\r\n\r\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\r\n\r\n \r\n\r\nChính sách bảo hành:\r\n\r\n- Miễn phí đổi hàng cho khách mua ở TEELAB trong trường hợp bị lỗi từ nhà sản xuất, giao nhầm hàng, bị hư hỏng trong quá trình vận chuyển hàng.\r\n\r\n- Sản phẩm đổi trong thời gian 3 ngày kể từ ngày nhận hàng\r\n\r\n- Sản phẩm còn mới nguyên tem, tags và mang theo hoá đơn mua hàng, sản phẩm chưa giặt và không dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua hàng.', 4, 7),
(60, 'Quần Gió NEWSEVEN Racing Wind Pants QD.164', 'Quần Gió NEWSEVEN Racing Wind Pants QD.164.jpg', 500000.00, 400000, '\"Thông tin sản phẩm Quần Gió NEWSEVEN Racing Wind Pants QD.164:\r\n\r\n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: Vải gió mặt lì, dày dặn cản gió tốt.\r\n\r\n– Cạp chun có dây rút.\r\n\r\n– Hình in: in lưới, mực in plasticol giúp hình in bám vải tốt và lên màu đẹp.\r\n\r\nThiết kế: Sản phẩm nằm trong BST Racing “Over the limit”, thiết kế và logo mang tinh thần và đậm nét của chủ đề Racing với bộ nhận diện được làm xuyên suốt các sản phẩm. Sản phẩm độc đáo với tính ứng dụng linh hoạt cao, có khóa zip ở 2 ống quần có thể tháo rời, 1 sản phẩm hai trong một, vừa là quần đùi vừa là quần dài.\r\n\r\nCác đường phối trên quần với các lớp màu tạo tổng thể hài hòa về màu sắc của bộ sưu tập, 3 màu đen – trắng – đỏ và cũng đồng bộ với SP áo khoác gió tạo sự nổi bật khi mặc cả set.\r\n\r\nThông số chọn size:\r\n\r\nSize M: 1m50-1m60 (50-55kg)\r\n\r\nSize L : 1m60-1m70( 55-65kg)\r\n\r\nSize XL: 1m70-1m80(65-75kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\"\r\n', 5, 13);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `fullname`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'admin', 'Admin', '123', 'admin@fpt.edu.vn', 'Hà Nội ', '0987654321', 1),
(41, 'son', '', '123', 'son@123', NULL, NULL, 0),
(42, 'huyduc', '', '123', 'huyduc123@fpt.edu.vn', NULL, NULL, 0),
(43, 'hoangnv', '', '123', 'hoangnvph@fpt.edu.vn', NULL, NULL, 0),
(44, 'ocean', '', '123', 'duong@gmsil.com', NULL, NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id bình luận', AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id danh mục', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id đơn hàng', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id sản phẩm', AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id khách hàng', AUTO_INCREMENT=45;

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
