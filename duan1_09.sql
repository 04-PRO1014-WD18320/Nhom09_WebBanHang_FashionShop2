-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2023 lúc 03:27 PM
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
(6, 27, 1, 3, 1),
(7, 27, 1, 3, 1),
(8, 29, 1, 3, 19),
(9, 29, 2, 3, 22),
(10, 29, 3, 4, 14),
(11, 29, 5, 2, 2),
(13, 30, 1, 3, 20),
(14, 30, 3, 3, 19),
(16, 31, 1, 3, 31),
(17, 31, 2, 4, 9),
(18, 31, 2, 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL COMMENT 'Id bình luận',
  `noidung` varchar(255) NOT NULL COMMENT 'Nội dung bình luận',
  `iduser` int(10) NOT NULL COMMENT 'Id tài khoản',
  `idpro` int(10) NOT NULL COMMENT 'Id sản phẩm',
  `ngaybinhluan` datetime DEFAULT NULL COMMENT 'Ngày bình luận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(30, 'ewsdfgnhmm', 4, 29, '2023-11-16 14:13:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_bt_sanpham` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(10, 'pant', 2),
(11, 'túi', 3);

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
  `status` enum('Chờ xác nhận','Đã xác nhận','Đang giao hàng','Đã giao hàng') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `receive_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên người nhận ',
  `receive_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ nhận',
  `receive_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SĐT nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `address`, `sdt`, `email`, `phuongthuctt`, `ngay_dat_hang`, `tong`, `status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(1, 17, 'HN', 987654321, 'hyuduc', 'Trả tiền khi nhận hàng', NULL, 12000000, 'Chờ xác nhận', NULL, NULL, NULL);

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
(7, 'ảnh áo polo nhỏ.jpg', 27),
(8, 'áo bomber ảnh con 2.jpg', 29),
(9, 'áo bomber ảnh con 3.jpg', 29),
(10, 'áo bomber ảnh con 4.jpg', 29),
(11, 'áo bomber ảnh con.jpg', 29),
(13, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 30),
(14, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 3.jpg', 30),
(15, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 4.jpg', 30),
(16, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét.jpg', 30),
(17, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 2.jpg', 31),
(18, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 3.jpg', 31),
(19, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie 4.jpg', 31),
(20, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 31);

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
(3, 'Xanh lá'),
(4, 'Xanh biển'),
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
  `trangthai` enum('Còn hàng','Hết hàng') NOT NULL COMMENT 'Trạng thái',
  `iddm` int(11) NOT NULL COMMENT 'Id danh mục'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `img`, `price_niemyet`, `price_sale`, `mota`, `luotxem`, `trangthai`, `iddm`) VALUES
(27, 'Áo Polo NEWSEVEN Glitch Polo PL.145', 'Áo Polo NEWSEVEN Glitch Polo PL.145.jpg', 300000.00, 250000, 'Thông tin sản phẩm \nÁo Polo NEWSEVEN Glitch Polo PL.145:  \n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.  \n– Chất liệu: 100% cotton\n– định lượng 250GSM. \nDày dặn. Đứng form.  Đã xử lý chống co”  \n– Cổ áo: Cổ dệt dày dặn,đã xử lý chống nhăn, bai dão', 140, 'Còn hàng', 2),
(29, 'Áo Khoác Bomber Phối Cầu Vai Da Dày DặnTeddy Chất Liệu Nỉ', 'áo bomber chất nỉ.png', 149000.00, 99000, 'Chất liệu: nỉ Cotton\r\nMàu sắc: Đen, Trắng . đỏ\r\nKích cỡ: Sản phẩm nam nữ Unisex size từ 40-65kg\r\ntùy chiều cao nha\r\n HƯỚNG DẪN LỰA CHỌN SIZE SỐ\r\nBảng SIZE:\r\n-Size S:36 - 45kg Cao dưới 1m50\r\n-Size M: 46 - 52kg Cao dưới 1m6\r\n-Size L: 52 - 58kg, Cao  1m65\r\n-Size XL: từ 58 - 63kg , Cao 1m65- 1m7\r\nChất liệu dày dặn, mềm, mát.\r\nThiết kế với form dễ mặc, thoải mái.\r\nĐường may tỉ mỉ, tinh tế\r\nDễ dàng kết hợp với các trang phục, phụ kiện khác.\r\nPhong cách: Trẻ trung - Cá tính - Độc\r\nĐáo. Đây chắc chắn là một món đồ thời trang không thể thiếu trong tủ đồ củabạn.\r\nSản phẩm đẹp như hình. \r\nChất liệu dày dặn, mềm mại.', 102, 'Còn hàng', 8),
(30, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 220000.00, 160000, 'Thông Tin Sản Phẩm : Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023\r\n- Chất liệu: Dạ 100% cao cấp, bề mặt vải mịn, ko xù, ko gião , dày dặn\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi , mặc đi làm , mặc hàng ngày\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\n* Bảng size mẫu \r\n- Đủ size: M - L - XL  \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size', 36, 'Còn hàng', 8),
(31, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 240000.00, 165000, 'Thông tin sản phẩm : Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie LV Loang Màu Chất Liệu Nỉ Bông 2 Lớp Dày Dặn Hotrend\r\n- Chất liệu:Nỉ Bông 2 Lớp Dày Dặn Cao Cấp Không Xù\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n- Đủ size: M - L - XL \r\n* Bảng size mẫu \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\n\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\r\nHướng dẫn sử dụng sản phẩm \r\n- Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n- Không sử dụng thuốc tẩy\r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời\r\n Shop Thời Trang Unisex 18 CAM KẾT\r\nSản phẩm giống mô tả .\r\nĐảm bảo vải chất lượng \r\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\r\nHàng có sẵn, giao hàng ngay khi nhận được đơn \r\nChấp nhận đổi hàng khi size không vừa\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền ', 6, 'Còn hàng', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL COMMENT 'Id khách hàng',
  `user` varchar(50) NOT NULL COMMENT 'Tên đăng nhập',
  `pass` varchar(50) NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(255) NOT NULL COMMENT 'Email',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ',
  `tel` varchar(20) DEFAULT NULL COMMENT 'Số điện thoại',
  `role` int(11) NOT NULL DEFAULT 0 COMMENT 'Quyền hạn: \r\n1 Admin \r\n2 Khách hàng\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'admin', '123', 'admin@fpt.edu.vn', 'Hà Nội ', '0987654321', 1),
(2, 'Hoàng Long', '123456', 'longhh7@fpt.edu.vn', 'Hải Dương', '09876543', 2),
(4, 'Huy đức 123', '123456', 'anhsongoku123@gmail.com', 'Hải Dương', '09876543', 2),
(5, 'sonnv', '123456', 'banhsontv@gmail.com', 'Hải Dương', '09876543', 2),
(17, 'huyduc', '123', 'anhsongoku123@gmail.com', 'Hải Dương 2', '0987654321', 2),
(19, 'khachhangao1', '123', 'sonnvph33874@fpt.edu.vn', 'hà nọii', '0987654321', 2),
(21, 'Huy đức123', '12377', 'anhsongoku123@gmail.com', 'hà nọii', '09876543', 2);

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
  ADD KEY `id_user` (`id_user`),
  ADD KEY `cart_ibfk_2` (`id_bt_sanpham`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id bình luận', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id danh mục', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id đơn hàng', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id sản phẩm', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id khách hàng', AUTO_INCREMENT=22;

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
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_bt_sanpham`) REFERENCES `bien_the` (`id`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
