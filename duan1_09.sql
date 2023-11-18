-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2023 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
   
-- 1
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1_09`
--

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
(30, 'ewsdfgnhmm', 4, 14, '2023-11-16 14:13:24'),
(31, 'ewsdfgnhmm', 4, 14, '2023-11-16 14:13:24'),
(32, 'ewsdfgnhmm', 4, 14, '2023-11-16 14:13:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Laptop', 0),
(2, 'Điện Thoại', 0),
(7, 'Đồng hồ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL COMMENT 'Id đơn hàng',
  `id_user` int(11) DEFAULT NULL COMMENT 'Id khách hàng',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `donhang` (`id`, `id_user`, `name`, `address`, `sdt`, `email`, `phuongthuctt`, `ngay_dat_hang`, `tong`, `status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(1, 17, 'huyduc123', 'HN', 987654321, 'hyuduc', 'Trả tiền khi nhận hàng', NULL, 12000000, 'Chờ xác nhận', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL COMMENT 'Id sản phẩm',
  `name` varchar(255) NOT NULL COMMENT 'Tên sản phẩm',
  `price-niemyet` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Giá sản phẩm',
  `price-sale` int(100) NOT NULL COMMENT 'Giá sale',
  `color` enum('Đỏ','Vàng','Đen','Trắng','Xanh') NOT NULL COMMENT 'Màu',
  `size` enum('M','L','XL','XXL') NOT NULL,
  `tinh-trang` enum('Còn hàng','Hết hàng') NOT NULL COMMENT 'Tình trạng',
  `img` varchar(255) NOT NULL COMMENT 'Ảnh',
  `mota` text NOT NULL COMMENT 'Mô tả',
  `luotxem` int(11) NOT NULL DEFAULT 0 COMMENT 'Lượt xem',
  `iddm` int(11) NOT NULL COMMENT 'Id danh mục'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price-niemyet`, `price-sale`, `color`, `size`, `tinh-trang`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(1, 'Apple MacBook Air M1', 30000000.00, 10, 'Đỏ', 'M', 'Còn hàng', '1696863837_Apple MacBook Air M1.jpg', 'Sản phẩm cấu hình cơ bản bao gồm một GPU bảy lõi, bộ nhớ lưu trữ 256GB SSD, cũng như 8GB RAM bộ nhớ. Phiên bản nâng cấp với GPU tám lõi và bộ nhớ 512GB SSD có giá khởi điểm là 1249$. Cấu hình tối đa sẽ bao gồm 16GB RAM và 2TB dung lượng lưu trữ. Máy có ba tuỳ chọn màu sắc giống sản phẩm tiền nhiệm bao gồm vàng (gold), bạc (silver) và xám không gian (Space gray)', 52, 1),
(2, 'iPhone 14 Pro Max', 14000000.00, 0, '', 'M', 'Còn hàng', '1696863849_iPhone 14 Pro Max.jpg', 'Những dòng iPhone đến từ nhà Apple đều có sức hút đặc biệt ngay từ thời điểm ra mắt và thế hệ iPhone 14 Pro Max cũng không ngoại lệ. Có thể nói, iPhone 14 Pro Max là sự kết hợp hoàn hảo giữa các yếu tố về thiết kế, cấu hình, tính năng, hệ điều hành,... Nếu bạn tò mò về siêu phẩm này, hãy đọc ngay phần đánh giá chi tiết phiên bản cao cấp nhất trong series iPhone 14 bên dưới nhé. ', 55, 2),
(3, 'Laptop Asus VivoBook Go 14', 18000000.00, 0, '', 'M', 'Còn hàng', '1696863867_Laptop Asus VivoBook Go 14.jpg', 'ASUS Vivobook E1404FA-NK186W thuộc dòng Vivobook Go 14, dòng laptop hiệu năng cao giá rẻ giúp bạn làm việc hiệu quả mọi lúc mọi nơi. Với bộ vi xử lý AMD 7000 series mạnh mẽ, trang bị sẵn tới 16GB RAM, 512GB SSD, Vivobook E1404FA sẽ mang đến trải nghiệm làm việc thoải mái, vô cùng mượt mà.', 59, 1),
(5, 'Laptop Lenovo Ideapad 5 Pro', 30000000.00, 0, '', 'M', 'Còn hàng', '1696863880_laptop1.webp', 'Lenovo Ideapad 5 Pro 16 là chiếc laptop, máy tính xách tay thời đại mới dành cho các bạn trẻ đa nhiệm, năng động với vẻ ngoài hiện đại, mỏng nhẹ nhưng bên trong lại chứa một hiệu năng cực khủng. Bên cạnh đó, chiếc laptop Lenovo - Lenovo Ideapad này cũng được tích hợp nhiều công nghệ hiện đại, tối ưu tốt cho trải nghiệm sử dụng. Chắc chắn, mẫu laptop mỏng nhẹ này sẽ khiến bạn phải bất ngờ đấy. Hãy cùng Laptop88 đánh giá ngay mẫu laptop văn phòng này dưới đây nhé!', 14, 1),
(6, 'Xiaomi Redmi Note 12 Pro', 14000000.00, 0, '', 'M', 'Còn hàng', '1696863912_Xiaomi Redmi Note 12 Pro.jpg', 'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', 12, 2),
(7, 'Macbook Air 15 inch M2 2023', 18000000.00, 0, '', 'M', 'Còn hàng', '1696863929_Macbook Air 15 inch M2 2023.jpg', 'Vận hành doanh nghiệp trên MacBook Air M2. Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới nay nhỏ gọn hơn bao giờ hết, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng đầy ấn tượng.1 Nhờ đó, tất cả các bộ phận từ kinh doanh đến tài chính đều có thể làm việc năng suất hơn dù ở bất cứ đâu.', 18, 1),
(11, 'iPhone 15 Pro Max', 39990000.00, 5, '', 'M', 'Còn hàng', '1696994324_iPhone 15 Pro max.jpeg', 'iPhone 15 Pro Max thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 169, 2),
(12, 'iPhone 13 128GB ', 12690000.00, 5, '', 'M', 'Còn hàng', '1696994556_iphone 13 128GB.webp', 'iPhone 13 128GB thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 26, 2),
(13, 'iPhone 11 64GB', 11490000.00, 10, '', 'M', 'Còn hàng', '1696994609_iphone 11 64GB.webp', 'iPhone 11 thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 2, 2),
(14, 'iPhone 14 Plus', 13990000.00, 5, '', 'M', 'Còn hàng', '1696994651_iphone 14 plus.webp', 'iPhone 14 Plus thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 61, 2),
(19, 'iPhone 14 Pro Max Màu vàng', 30000000.00, 22, '', 'M', 'Còn hàng', '1697849676_iphone 14 promax.webp', 'iPhone 14 Pro Max thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 3, 2),
(20, 'Xiaomi Redmi Note 2 ', 19000000.00, 20, '', 'M', 'Còn hàng', '1697849740_xiaomi2.webp', 'Với thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 6, 2),
(21, 'Laptop Asus Gaming 1024', 20000000.00, 31, '', 'M', 'Còn hàng', '1697850465_laptop3.webp', 'Với thiết kế mới với chất liệu titan chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị nút Action và cổng sạc USB-C tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của iPhone 15 bản Pro Max đến từ camera chính 48MP, camera UltraWide 12MP và camera telephoto có khả năng zoom quang học đến 5x. Bên cạnh đó, iPhone 15 ProMax sử dụng chip A17 Pro mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!', 3, 1),
(22, 'Orient 41mm Nam RE-AV0005L00B', 24000000.00, 30, '', 'M', 'Còn hàng', '1697851276_Orient 41mm Nam RE-AV0005L00B.webp', 'Đồng hồ Orient là một trong những thương hiệu của Nhật Bản đã quá quen thuộc với người dân Việt Nam. Những chiếc đồng hồ của thương hiệu này không chỉ dẫn đầu về chất lượng mà còn đẹp bởi thiết kế từ thể thao đến cổ điển. Vậy đồng hồ Orient của nước nào? Những sản phẩm của thương hiệu này được đánh giá ra sao? Để tìm câu trả lời cho các câu hỏi trên hãy tham khảo nội dung bài viết sau đây của chúng tôi.', 34, 7),
(23, 'Tissot 41mm Nam T086.408.22.036.00', 19000000.00, 34, '', 'M', 'Còn hàng', '1697851365_Tissot 41mm Nam T086.408.22.036.00.webp', 'Đồng hồ Tissot là một trong những thương hiệu của Nhật Bản đã quá quen thuộc với người dân Việt Nam. Những chiếc đồng hồ của thương hiệu này không chỉ dẫn đầu về chất lượng mà còn đẹp bởi thiết kế từ thể thao đến cổ điển. Vậy đồng hồ Orient của nước nào? Những sản phẩm của thương hiệu này được đánh giá ra sao? Để tìm câu trả lời cho các câu hỏi trên hãy tham khảo nội dung bài viết sau đây của chúng tôi.', 13, 7),
(24, 'Tissot 42mm Nam T099.429.36.038.00', 20500000.00, 29, '', 'M', 'Còn hàng', '1697851463_Tissot 42mm Nam T086.408.22.036.00.webp', 'Đồng hồ Tissot là một trong những thương hiệu nổi tiếng và lâu đời. Trải qua bao nhiêu năm phát triển, thương hiệu này đã luôn giữ cho mình một chỗ đứng vững chắc trong lòng người tiêu dùng. Bài viết sau đây sẽ cho bạn biết đồng hồ Tissot của nước nào và có nên mua hay không.', 23, 7),
(25, 'Tissot 42mm Nam T099.429.11.038.00', 23000000.00, 43, '', 'M', 'Còn hàng', '1697851597_Tissot 42mm Nam T086.408.22.088.00.webp', 'Tissot là một thương hiệu đồng hồ của Thụy Sỹ ra đời vào năm 1853. Được thành lập bởi Charles-Félicien Tissot và con trai là Charles-Émile Tissot tại thị trấn Le Locle của Thụy Sỹ.', 8, 7);

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
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

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
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id bình luận', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id danh mục', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id đơn hàng', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id sản phẩm', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id khách hàng', AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
