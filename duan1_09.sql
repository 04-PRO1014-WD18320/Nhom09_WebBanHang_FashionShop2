-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 06:13 AM
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
(6, 27, 1, 3, 1),
(7, 27, 1, 3, 1),
(8, 29, 1, 3, 19),
(13, 30, 1, 3, 20),
(14, 30, 3, 3, 19),
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
(32, 40, 2, 1, 22);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_bt_sanpham`, `soluong`) VALUES
(21, 1, 8, 5);

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
(9, 'short', 2),
(10, 'pant', 2),
(12, 'túi', 3);

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
  `status` enum('Chờ xác nhận','Đã xác nhận','Đang giao hàng','Đã giao hàng') DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `receive_name` varchar(255) DEFAULT NULL COMMENT 'Tên người nhận ',
  `receive_address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ nhận',
  `receive_tel` varchar(50) DEFAULT NULL COMMENT 'SĐT nhận'
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
  `url` varchar(255) NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `url`, `id_sp`) VALUES
(7, 'ảnh áo polo nhỏ.jpg', 27),
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
(43, 'Quần Short Basic NEWSEVEN 2.jpeg', 40),
(44, 'Quần Short Basic NEWSEVEN 3.jpeg', 40),
(45, 'Quần Short Basic NEWSEVEN 4.jpeg', 40),
(46, 'Quần Short Basic NEWSEVEN.jpeg', 40);

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
(27, 'Áo Polo NEWSEVEN Glitch Polo PL.145', 'Áo Polo NEWSEVEN Glitch Polo PL.145.jpg', 300000.00, 250000, 'Thông tin sản phẩm \nÁo Polo NEWSEVEN Glitch Polo PL.145:  \n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.  \n– Chất liệu: 100% cotton\n– định lượng 250GSM. \nDày dặn. Đứng form.  Đã xử lý chống co”  \n– Cổ áo: Cổ dệt dày dặn,đã xử lý chống nhăn, bai dão', 163, 2),
(29, 'Áo Khoác Bomber Phối Cầu Vai Da Dày DặnTeddy Chất Liệu Nỉ', 'áo bomber chất nỉ.png', 149000.00, 99000, 'Chất liệu: nỉ Cotton\r\nMàu sắc: Đen, Trắng . đỏ\r\nKích cỡ: Sản phẩm nam nữ Unisex size từ 40-65kg\r\ntùy chiều cao nha\r\n HƯỚNG DẪN LỰA CHỌN SIZE SỐ\r\nBảng SIZE:\r\n-Size S:36 - 45kg Cao dưới 1m50\r\n-Size M: 46 - 52kg Cao dưới 1m6\r\n-Size L: 52 - 58kg, Cao  1m65\r\n-Size XL: từ 58 - 63kg , Cao 1m65- 1m7\r\nChất liệu dày dặn, mềm, mát.\r\nThiết kế với form dễ mặc, thoải mái.\r\nĐường may tỉ mỉ, tinh tế\r\nDễ dàng kết hợp với các trang phục, phụ kiện khác.\r\nPhong cách: Trẻ trung - Cá tính - Độc\r\nĐáo. Đây chắc chắn là một món đồ thời trang không thể thiếu trong tủ đồ củabạn.\r\nSản phẩm đẹp như hình. \r\nChất liệu dày dặn, mềm mại.', 201, 8),
(30, 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023', 'Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét 2.jpg', 220000.00, 160000, 'Thông Tin Sản Phẩm : Áo Khoác Bomber LV Họa Tiết Hoa Vân Cực Nét- Áo Khoác Lv Chất Liệu Vải 2 Lớp dày Dặn Form Dáng Boy Phố Cực Hottrend 2023\r\n- Chất liệu: Dạ 100% cao cấp, bề mặt vải mịn, ko xù, ko gião , dày dặn\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi , mặc đi làm , mặc hàng ngày\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\n* Bảng size mẫu \r\n- Đủ size: M - L - XL  \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size', 214, 8),
(31, 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie', 'Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie.jpg', 240000.00, 165000, 'Thông tin sản phẩm : Áo Khoác Nam Nữ Lv Họa Tiết Vân Hoa Dập Nổi Cực Nét-Áo Khoác Hoodie LV Loang Màu Chất Liệu Nỉ Bông 2 Lớp Dày Dặn Hotrend\r\n- Chất liệu:Nỉ Bông 2 Lớp Dày Dặn Cao Cấp Không Xù\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n- Đủ size: M - L - XL \r\n* Bảng size mẫu \r\nSize M: Nặng 43-51kg  ; Cao 1m52-1m60\r\nSize L: Nặng ; 51-59kg ; Cao 1m60-1m70\r\nSize XL: Nặng 60-72kg ; Cao 1m65-1m73\r\n\r\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\r\nHướng dẫn sử dụng sản phẩm \r\n- Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n- Không sử dụng thuốc tẩy\r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời\r\n Shop Thời Trang Unisex 18 CAM KẾT\r\nSản phẩm giống mô tả .\r\nĐảm bảo vải chất lượng \r\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\r\nHàng có sẵn, giao hàng ngay khi nhận được đơn \r\nChấp nhận đổi hàng khi size không vừa\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền ', 175, 8),
(33, 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165', 'Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165.jpg', 590000.00, 490000, 'Thông tin sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Hàng chuẩn NEWSEVEN sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: Vải gió mặt lì, dày dặn cản gió tốt, lót lưới thoáng mát cực kì phù hợp với thời tiết mùa hè.\r\n\r\n– Cổ áo: Ép 2 lớp dày dặn, đứng dáng cổ\r\n\r\n– Khóa nhựa răng cá sấu, củ khóa kim loại kahwsc logo NEWSEVEN chìm.\r\n\r\n– Hình in: in lưới, mực in plasticol giúp hình in bám vải tốt và lên màu đẹp.\r\n\r\n– Thiết kế: Sản phẩm nằm trong BST Racing “Over the limit”, thiết kế và logo mang tinh thần và đậm nét của chủ đề Racing với bộ nhận diện được làm xuyên suốt các sản phẩm. Có phần cá tay ở cổ tay áo giúp cho người mặc có thể điều chỉnh độ rộng. Gấu áo có dây chun bún và chốt nhựa để linh hoạt về độ rộng chật và tùy vào cách ăn mặc của mỗi khách hàng.\r\n\r\nCác đường phối trên áo với các lớp màu tạo tổng thể hài hòa về màu sắc của bộ sưu tập, 3 màu đen – trắng – đỏ cực nổi bật.\r\n\r\nThông số chọn size:\r\n\r\nSize M: 1m50-1m60 (50-55kg)\r\n\r\nSize L : 1m60-1m70( 55-65kg)\r\n\r\nSize XL: 1m70-1m80(65-75kg)\r\n\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc form vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\r\n\r\nHướng dẫn sử dụng sản phẩm Áo Khoác Gió NEWSEVEN Racing Wind Breaker AK.165:\r\n\r\n– Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n\r\n– Không giặt máy trong 10 ngày đầu\r\n\r\n– Không sử dụng thuốc tẩy\r\n\r\n– Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời', 4, 8),
(34, 'Áo Thun Newseven Curve Baby Tee BB.222', 'Áo Thun Newseven Curve Baby Tee BB.222.png', 280000.00, 220000, '-Chất liệu: Vải Cotton  định lượng 250GSM.\r\n\r\n-Kiểu dáng: Form Baby Tee\r\n\r\n-Màu sắc: Đen, Trắng\r\n\r\n-Thiết kế: In lưới\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size\r\nChính sách đổi trả\r\n\r\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n\r\n– Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\r\n\r\n– Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n\r\n2. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n\r\n– Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n\r\n– Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Newseven\r\n\r\n– Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\r\n\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\r\n\r\nHướng dẫn sử dụng sản phẩm Newseven:', 3, 1),
(35, 'Áo Thun NEWSEVEN Lining Racer AT.219', 'Áo Thun NEWSEVEN Lining Racer AT.219.jpg', 350000.00, 230000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 3, 1),
(38, 'Áo Thun NEWSEVEN Racing AT.148', 'Áo Thun NEWSEVEN Racing AT.148.jpg', 350000.00, 290000, '-Chất liệu: Vải cotton 2 chiều sử dụng công nghệ chống co rút và cầm màu tối đa\r\n\r\n– Định lượng 250GSM với độ dày vừa phải mang lại sự thoải mái cho người mặc và khả năng hút ẩm, thấm mồ hôi, giảm nhiệt tốt.\r\n\r\n-Kiểu dáng: Form rộng\r\n\r\n-Màu sắc: Đen, Nâu, Xanh Navy.\r\n\r\n– Thiết kế độc lạ trên thị trường, tạo cảm giác mới lạ, với các điểm phối vải ở vai áo thân áo tạo hiệu ứng ” Hack ” dánh tối đa, và các hình in lấy cảm hứng từ BST Raccing.\r\nĐặc tính nổi bật của sản phẩm\r\n\r\n– Vải đã xử lí chống co rút.\r\n\r\n– Chống co rút ở mức độ dưới 3% (Dưới 2cm – 3cm một áo), giặt sấy thoải mái không lo bị co thành baby tee.\r\n\r\n– Đổi trả 1:1 cho khách hàng nếu sản phẩm co quá 2cm – 3cm.\r\n\r\nGiải quyết được các vấn đề của khách hàng đang gặp phải:\r\n\r\n– Sản phẩm giặt xong co tới 5-7cm mất form.\r\n\r\n– Áo giặt xong bị xuống màu.\r\n\r\nThông số chọn size', 2, 1),
(40, 'Quần Short Basic NEWSEVEN', 'Quần Short Basic NEWSEVEN.jpeg', 250000.00, 199000, 'Thông tin sản phẩm Quần Short Đùi Unisex N7 NEWSEVEN Basic nam nữ form rộng Local Brand:\r\n– Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\r\n– Chất liệu: Nỉ chân cua.\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.\r\n– Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\r\n\r\nThông số chọn size:\r\nSize S: 1m50-1m55( 45-60kg)\r\nSize M: 1m55-1m60 (55-70kg)\r\nSize L: 1m60-1m70 (65-80kg)\r\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)', 2, 9);

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
(2, 'Hoàng Long', 'Hoàng Hải Long 98', '123456', 'longhh7@fpt.edu.vn', 'Hải Dương', '09876543', 2),
(4, 'Huy đức 123', '', '123456', 'anhsongoku123@gmail.com', 'Hải Dương', '09876543', 2),
(5, 'sonnv', '', '123456', 'banhsontv@gmail.com', 'Hải Dương', '09876543', 2),
(17, 'huyduc', '', '123', 'anhsongoku123@gmail.com', 'Hải Dương 2', '0987654321', 2),
(19, 'khachhangao1', '', '123', 'sonnvph33874@fpt.edu.vn', 'hà nọii', '0987654321', 2),
(21, 'Huy đức123', '', '12377', 'anhsongoku123@gmail.com', 'hà nọii', '09876543', 2),
(22, 'son', '', '123', 'son@fpt.edu.vn', 'HN', '0987654321', 2),
(23, 'sonnv', 'Nguyễn Sơn', '123456', 'sonnvph33874@fpt.edu.vn', 'Hà Nội City', '0987654321', 2),
(39, 'son2son', '', '123', 'sonnvph@fpt.edu.vn', NULL, NULL, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id bình luận', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id danh mục', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id đơn hàng', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id sản phẩm', AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id khách hàng', AUTO_INCREMENT=40;

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
