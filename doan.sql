-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 16, 2024 lúc 12:19 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `customer_name` int(50) NOT NULL,
  `customer_email` int(100) NOT NULL,
  `customer_phone` int(20) NOT NULL,
  `customer_address` int(100) NOT NULL,
  `total_bill` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `payment_method` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_img` varchar(50) NOT NULL,
  `category_banner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_img`, `category_banner`) VALUES
(1, 'Đặc sản bánh kẹo', 'Public/img/cate_1.png ', 'Public/img/ban1.png'),
(2, ' Đặc sản khô    ', 'Public/img/cate_2.png ', 'Public/img/ban3.png'),
(3, ' Đặc sản mắm   ', 'Public/img/cate_3.png', 'Public/img/ban4.png'),
(4, 'Đặc sản một nắng', 'Public/img/cate_4.png', 'Public/img/ban5.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_adress` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_adress`, `username`, `password`, `role`) VALUES
(1, 'Le Cong Duc', 'congduc1801@gmail.com', '', 'Ngu Hanh Son', 'congduc', '18112005', 1),
(2, 'Nguyễn Thùy Dương', 'thuyduong220405@gmail.com', '0383128908', 'Hà Nội', 'thuyduong', '123', 0),
(3, 'Trương Công Tiến Đạt', 'dattct@vku.udn.vn', '123456', 'Da Nang', 'tiendat', '12346', 0),
(4, 'Lê Xuân Hoài Nam', 'namlxh@vku.udn.vn', '234556', 'Da Nang', 'hoainam', '12345', 0),
(7, 'CongDuc', 'congduc1801@gmail.com', '0823285756', 'Da Nang', 'lcd', '1234', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `product_id`, `product_name`, `product_img`, `quantity`, `price`, `total`) VALUES
(1, 11, 'Bánh dừa nướng', 'Public/img/banh_dua_nuong.jpg', 4, 30, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `evaluate` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `description`, `price`, `evaluate`, `status`, `category_id`) VALUES
(1, 'Bánh đậu xanh nhân thịt Hội An', 'Public/img/dau_xanh_nhan_thit.jpg', ' <p><span style=\"color: red;\">Bánh đậu xanh nhân thịt </span> là một món ăn thơm ngon và hấp dẫn với                     nhiều người. Sản phẩm được làm từ mực xé sợi kết hợp với nước cốt dừa. Vị thơm của mực khô Đà Nẵng                     kết hợp vị ngọt của nước dừa làm nên một món ăn cuốn hút.</p>                 <ul>                     <li>Sản phẩm: Bánh đậu xanh nhân thịt</li>                     <li>Xuất xứ: Hội An </li>                     <li>Giá bán: 39.000 VND </li>                     <li>Khối lượng: 250g/ gói </li>                     <li>Nhà phân phối: LanGift (quadanang.com) </li>                     <li>Thành phần: Đậu xanh, thịt heo, đường và muối. </li>                     <li>Cách dùng: Ăn liền </li>                     <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh. </li>                     <li>Hạn sử dụng: 4 tháng</li>                 </ul>', 39, '5', 1, 1),
(2, 'Bánh Khô mè bà Liễu', 'Public/img/banh_kho_me.jpg', '<p> <span style=\"color: red;\">Bánh khô mè bà Liễu </span>là một đặc sản nổi tiếng tại Đà Nẵng. Mỗi lần khách du lịch đến nơi đây, không thể quên mua bánh khô mè Bà Liễu hộp 250g về làm quà. Món đặc sản bánh kẹo <span style=\"color: red;\">Đà Nẵng </span> Bà Liễu hiện đang được D&D phân phối với giá rẻ chỉ 32.000 VNĐ/ hộp.\r\n        </p>\r\n        <ul>\r\n            <li>Sản phẩm: Bánh khô mè Bà Liễu ở Đà Nẵng </li>\r\n            <li>Xuất xứ: Đà Nẵng – Việt Nam  </li>\r\n            <li>Giá bán: 39.000 VND </li>\r\n            <li>Khối lượng: 250g/ hộp </li>\r\n            <li>Nhà phân phối: D&D </li>\r\n            <li>Thành phần: Bột nếp, bột đậu xanh, gừng, mè, đường cát trắng,… </li>\r\n            <li>Cách dùng: Ăn liền </li>\r\n            <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh. </li>\r\n            <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>\r\n        </ul>\r\n', 32, '4', 1, 1),
(7, 'Kẹo mè xửng', 'Public/img/keo_me_xung.jpg', '  <p> <span style=\"color: red;\">Kẹo mè xửng </span>loại mềm là một loại đặc sản bánh kẹo Đà Nẵng thơm ngon nổi tiếng. Kẹo được làm từ bột năng, mạch nha kết hợp mè, đậu phộng.         </p>         <ul>             <li>Sản phẩm: Kẹo mè xửng Thiên Hương  </li>             <li>Xuất xứ:  Huế – Đà Nẵng   </li>             <li>Giá bán: 28.000 VND </li>             <li>Khối lượng: 250g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Bột năng, mạch nha, mè, đậu phộng, đường,… </li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh. </li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 28, '5', 1, 1),
(8, 'Bánh đậu xanh nướng hoa sen', 'Public/img/banh_dau_xanh_chay.jpg', '<p> Bạn đang tìm mua<span style=\"color: red;\"><?=$detail_product[\'product_name\']?> </span> làm quà cho con cháu hoặc bạn bè, người thân. Loại kẹo đặc sản Đà Nẵng này sản phẩm hiện đang có bán tại LanGift với giá chỉ 15.000 VNĐ/ gói 100g. </p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm: Bánh đậu xanh nướng hoa sen </li>             <li>Xuất xứ: Hội An– Việt Nam  </li>             <li>Giá bán: 32.000 VND </li>             <li>Khối lượng: 250g/ hộp </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Đậu xanh, đường trắng, bột gạo, dầu thực vật, vani</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 32, '4', 1, 1),
(10, 'Kẹo đậu phộng mè trắng c  ', 'Public/img/dau_phong_me_trang.jpg ', '<p> Bạn đang tìm mua<span style=\"color: red;\"><?=$detail_product[\'product_name\']?> </span> làm quà cho con cháu hoặc bạn bè, người thân. Loại kẹo đặc sản Đà Nẵng này sản phẩm hiện đang có bán tại LanGift với giá chỉ 15.000 VNĐ/ gói 100g. </p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm: Kẹo đậu phộng mè trắng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam  </li>             <li>Giá bán: 15.000 VND </li>             <li>Khối lượng: 100g/ gói </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Đường, đậu phộng rang, mè trắng, mạch nha,…</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 15, '5', 1, 1),
(11, 'Bánh dừa nướng', 'Public/img/banh_dua_nuong.jpg', '<p> <span style=\"color: red;\"><?=$detail_product[\'product_name\']?>  </span> là một đặc sản của tỉnh Quảng Nam, được chế biến từ dừa tươi kết hợp cùng bột nếp và một số nguyên liệu khác. Bánh kẹo đặc sản Đà Nẵng Quý Thu được rất nhiều du khách chọn mua để làm quà mỗi lần du lịch Đà Nẵng.</p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm:  Bánh dừa nướng Quý Thu </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 30.000 VND </li>             <li>Khối lượng: 250g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Dừa tươi, bột nếp,…</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 30, '5', 1, 1),
(13, 'Bánh tráng chuối', 'Public/img/banh_trang_chuoi.jpg', '<p> <span style=\"color: red;\"><?=$detail_product[\'product_name\']?>  </span>không quá ngọt, ăn vào giòn giòn và có vị thơm. Loại bánh đặc sản Đà Nẵng này rất phù hợp với người không thích ăn ngọt.</p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm:  Bánh tráng chuối Đà Nẵng </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 37.000 VND </li>             <li>Khối lượng: 3 cái/ gói </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Bột mì, chuối tươi, đường, vani,…</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 37, '5', 1, 1),
(14, 'Kẹo kéo đậu phộng', 'Public/img/keo_dau_phong.jpg', '<p> <span style=\"color: red;\"><?=$detail_product[\'product_name\']?></span>à món ăn vặt ngày xưa gắn liền với tuổi thơ của rất nhiều người. Món<span style=\"color: red;\"> kẹo đặc sản Đà Nẵng</span> này có lớp vỏ giòn bên ngoài, đậu phộng rang giòn ở bên trong; có vị béo của bơ lạc và vị ngọt của mạch nha.</p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm:  Kẹo đặc sản Đà Nẵng  </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 39.000 VND </li>             <li>Khối lượng: 200g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mạch nha, đậu phộng, đường kính, vani, bơ lạc, vừng,… </li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 39, '5', 1, 1),
(15, 'Bánh tổ đặc sản Quảng Nam- Đà Nẵng', 'Public/img/banh_to.jpg', ' <p> <span style=\"color: red;\"><?=$detail_product[\'product_name\']?></span>là một món ăn độc đáo, là một <span style=\"color: red;\">bánh đặc sản</span> của tỉnh Quảng Nam. Mỗi dịp Tết cổ truyền hay dịp lễ lớn đều không thể thiếu món bánh đặc sản này.</p>         <ul style=\"list-style-type:disc\">             <li>Sản phẩm: Bánh tổ Quảng Nam – Đà Nẵng  </li>             <li>Xuất xứ: Quảng Nam – Việt Nam    </li>             <li>Giá bán: 39.000 VND </li>             <li>Khối lượng: 300g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Bột nếp, đường, mè,… </li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh. </li>             <li>Hạn sử dụng: 4 tháng kể từ ngày sản xuất</li>         </ul>', 39, '5', 1, 1),
(25, 'Mực rim me', 'Public/img/muc_rim_me.jpg', 'lcd', 140, '4', 1, 2),
(26, 'Cá thiều tẩm', 'Public/img/ca_thieu_tam.jpg', '<p><span style=\"color: red;\"> Cá thiều tẩm Đà Nẵng</span> là một trong các loại đặc sản khô Đà Nẵng nổi tiếng được nhiều khách du lịch chọn mua. Cá thiều tẩm Đà Nẵng hộp 250g bán tại D&D với giá chỉ 119.000 VNĐ.</p>         <ul>             <li>Sản phẩm: Cá thiều tẩm Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 119.000 VND </li>             <li>Khối lượng: 250g</li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực tươi nguyên con phơi khô</li>             <li>Cách dùng:  Ăn vặt, mồi nhắm, ăn kèm với cơm,…</li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 119, '3', 1, 2),
(27, 'Mực câu khô loại nhỏ', 'Public/img/muc_cau_kho.jpg', '<p><span style=\"color: red;\"> Mực câu khô loại nhỏ </span> có kích thước tầm 30 con cho 1kg. Đây là một sản phẩm khoái khẩu trong những bữa nhậu của các đấng mày râu. Món mực khô Đà Nẵng có hương vị thơm ngon hấp dẫn đã thu hút nhiều khách hàng chọn mua.</p>         <ul>             <li>Sản phẩm: Mực câu khô loại nhỏ </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 69.000 VND </li>             <li>Khối lượng: 1 con </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực tươi nguyên con phơi khô</li>             <li>Cách dùng: </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 69, '5', 1, 2),
(28, 'Mực hấp nước cốt dừa', 'Public/img/muc_hap_cot_dua.jpg', '<p><span style=\"color: red;\"> Mực hấp nước cốt dừa Đà Nẵng</span> là một món ăn thơm ngon và hấp dẫn với nhiều người. Sản phẩm được làm từ mực xé sợi kết hợp với nước cốt dừa. Vị thơm của mực khô Đà Nẵng kết hợp vị ngọt của nước dừa làm nên một món ăn cuốn hút.</p>         <ul>             <li>Sản phẩm: Mực hấp nước cốt dừa Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 125.000 VND </li>             <li>Khối lượng: 250g/ hủ </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực, nước cốt dừa,..</li>             <li>Cách dùng: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong ngăn mát tủ lạnh.</li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 125, '5', 1, 2),
(29, 'Rong biển khô', 'Public/img/rong_bien_kho.jpg', ' <p><span style=\"color: red;\"> Rong biển khô Đà Nẵng</span>  là một loại thực phẩm nhiều dinh dưỡng, được sử dụng phổ biến ở miền Trung và cả nước. Rong biển giúp thanh lọc cơ thể và chế biến được nhiều món ăn ngon, mới lạ.</p>         <ul>             <li>Sản phẩm: Rong biển khô nấu canh ở Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 79.000 VND </li>             <li>Khối lượng: 100g/gói </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Rong biển tươi sấy khô</li>             <li>Cách dùng: Nấu canh, cháy tỏi, xào tỏi, nấu súp cua trứng,… </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 79, '4', 1, 2),
(30, 'Ghẹ sữa', 'Public/img/ghe_sua.jpg', '<p><span style=\"color: red;\"> Ghẹ sữa Đà Nẵng</span> chế biến được nhiều món, và cũng là một trong những đặc sản biển được các mẹ lựa chọn vì nó bổ dưỡng, nhiều thịt, vị ngọt và đặc biệt sạch an toàn không nhiễm sán hoặc một số loại ký sinh trùng như của nước ngọt</p>         <ul>             <li>Sản phẩm: Ghẹ sữa Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 99.000 VND </li>             <li>Khối lượng: 250g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Ghẹ sữa nguyên con, gia vị</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 99, '4', 1, 2),
(31, 'Cá cơm khô', 'Public/img/ca_com_kho.jpg', '  <p><span style=\"color: red;\">Cá cơm</span> được làm từ cá cơm tươi ngon đánh bắt tại vùng biển Đà thành. Đặc sản cá khô Đà Nẵng này đã được loại bỏ tạp chất và xương của cá. Chính vì thế mà người ăn sẽ thưởng thức được vị thịt thơm ngon của nó, không lo ngại xương cá cơm làm ảnh hưởng đến bữa ăn của gia đình mình.</p>         <ul>             <li>Sản phẩm: Cá cơm khô Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam  </li>             <li>Giá bán: 219.000 VND </li>             <li>Khối lượng: 500g/ gói </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá cơm tươi tách xương phơi khô</li>             <li>Cách dùng: Rang, rim hay nấu canh,… </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 219, '4', 1, 2),
(32, 'Mực khô loại đặc biệt', 'Public/img/kho_muc.jpg', '        <p> <span style=\"color: red;\">Mực khô</span> có chất lượng cao và hương vị độc đáo. Mực khô Đà Nẵng có thể chế biến các món như mực xào, mực nướng, mực chiên, mực sốt cà chua và nhiều món ăn khác.</p>         <ul>             <li>Sản phẩm:  Mực khô </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 690.000 VND </li>             <li>Khối lượng: 500g (6-8 con) </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực tươi nguyên con phơi khô</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát .Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 690, '5', 1, 2),
(42, 'Cá bống rim', 'Public/img/ca_bong_rim.jpg', '  <p> <span style=\"color: red;\">Bánh tráng chuối Đà Nẵng </span>không quá ngọt, ăn vào giòn giòn và có vị thơm. Loại bánh đặc sản Đà Nẵng này rất phù hợp với người không thích ăn ngọt.</p>         <ul >             <li>Sản phẩm:  Cá bống rim Đà Nẵng </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 99.000 VND </li>             <li>Khối lượng: 200g/ hủ </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá bống tươi, tiêu, nước mắm, đường, tỏi, sa tế,…</li>             <li>Cách dùng: Ăn liền, ăn với cơm nóng, làm món ăn vặt</li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 99, '5', 1, 2),
(43, 'Khô bò miếng', 'Public/img/kho_bo.jpg', '<p> <span style=\"color: red;\">Bò khô </span>là một trong các loại đặc sản khô Đà Nẵng được nhiều du khách cũng như dân địa phương ưa chuộng và chọn mua làm quà. Khô bò miếng hộp 250g đươc làm từ những miếng thịt bò tươi tẩm ướp gia vị theo tỷ lệ nhất định và sấy khô, tạo nên một món ăn ngon khó cưỡng.</p>         <ul>             <li>Sản phẩm:  Bò khô miếng  </li>             <li>Xuất xứ:  Đà Nẵng  </li>             <li>Giá bán: 149.000 VND </li>             <li>Khối lượng: 250g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Thịt bò tươi sấy khô, đường, muối, ớt, gia vị,…</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 149, '5', 1, 2),
(44, 'Chả bò', 'Public/img/cha_bo.jpg', ' <p> <span style=\"color: red;\">Chả bò Đà Nẵng</span> được làm từ thịt bò còn tươi (thường là thịt bò loại 1), có màu đỏ thẫm, người ta đã lọc hết gân và xương, hòa quyện cùng với gia vị mắm, muối, đường, dầu (gia vị đậm chất miền Trung)… và  được gói gọn trong chiếc lá chuối tươi màu xanh thẫm, trông rất hấp dẫn và đẹp mắt.</p>         <ul >             <li>Sản phẩm: Chả bò Đà Nẵng  </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam   </li>             <li>Giá bán: 300.000 VND </li>             <li>Khối lượng: 1Kg (500gr x 2 đòn) </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Thịt bò, tiêu, gia vị,… </li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Bảo quản trong ngăn mát tủ lạnh khoảng 1 tuần. Nếu muốn bảo quản lâu hơn thì bỏ ngăn đông tủ lạnh, khi nào ăn thì lấy ra rả đông, nấu lại rồi sử dụng</li>             <li>Hạn sử dụng: 1 tháng kể từ ngày sản xuất – Đảm bảo uy tín, Date sản phẩm luôn luôn mới</li>         </ul>', 300, '5', 1, 2),
(45, 'Chả bò cây', 'Public/img/cha_bo_cay.jpg', '  <p><span style=\"color: red;\"> Chả bò </span> là món ăn đã quá nổi tiếng với vùng đất Đà Thành, với hương vị riêng của nơi đây, chả bò Đà Nẵng đã trở thành một món đặc sản mà nhiều thực khách lựa chọn.         </p>         <ul>             <li>Sản phẩm: Chả bò cây Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng </li>             <li>Giá bán: 65.000 VND </li>             <li>Khối lượng: 1 lốc gồm 10 cây chả </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Thịt bò, tiêu, gia vị,… </li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Bảo quản trong ngăn mát tủ lạnh khoảng 1 tuần. Nếu muốn bảo quản lâu hơn thì bỏ ngăn đông tủ lạnh, khi nào ăn thì lấy ra rả đông, nấu lại rồi sử dụng</li>             <li>Hạn sử dụng: 01 tháng kể từ ngày sản xuất – Đảm bảo uy tín, Date sản phẩm luôn luôn mới</li>         </ul>', 65, '5', 1, 2),
(46, 'Nem chua Đà Nẵng', 'Public/img/nem_chua.jpg', ' <p> <span style=\"color: red;\"> <?=$detail_product[\'product_name\']?></span> được làm theo cách gói nem của người dân xứ Huế. Loại nem chả Đà Nẵng này hương vị cay cay, một tý chua và vị ngon của thịt sẽ làm bạn cảm thấy muốn ăn thêm.</p>         <ul>             <li>Sản phẩm: Bánh khô mè Bà Liễu ở Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng</li>             <li>Giá bán: 59.000 VND </li>             <li>Khối lượng: 10 cái/ bịch</li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Thịt lợn, bì lợn, thính gạo, tỏi, ớt, gia vị,… </li>             <li>Cách dùng: Ăn liền hoặc ăn kèm với cơm/ chế biến theo khẩu vị. </li>             <li>Bảo quản: Bảo quản ngăn mát tủ lạnh khoảng 1 tuần. Nếu muốn lâu hơn nên bỏ ngăn đông</li>             <li>Hạn sử dụng: 1 tuần kể từ ngày sản xuất</li>         </ul>', 59, '5', 1, 2),
(51, 'Mắm nêm', 'Public/img/mam_nem.jpg', ' <p><span style=\"color: red;\"> Mắm nêm</span>  là một loại thực phẩm nhiều dinh dưỡng, được sử dụng phổ biến ở miền Trung và cả nước. Rong biển giúp thanh lọc cơ thể và chế biến được nhiều món ăn ngon, mới lạ.</p>         <ul >             <li>Sản phẩm: Mắm nêm Đà Nẵng </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam </li>             <li>Giá bán: 45.000 VND </li>             <li>Khối lượng: 500ml/ chai </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá cơm (hoặc cá trích, cá nuc,…) lên men và gia vị khác</li>             <li>Cách dùng: àm nước chấm bánh tráng cuốn thịt heo, chấm rau, thịt luộc,… </li>             <li>Bảo quản: Để mắm ở nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 45, '4', 1, 3),
(52, 'Mắm tôm chua', 'Public/img/mam_tom_chua.jpg', '<p><span style=\"color: red;\">Mắm tôm chua</span> mang đặc trưng hương vị đặc sản mắm Đà Nẵng nói riêng và miền Trung nói chung. Thưởng thức món mắm Dì Cẩn Đà Nẵng với những con tôm đỏ bắt mắt cùng với vị chua chua cay cay, ăn cùng với cơm nóng và thịt luột thì quá tuyệt vời.</p>         <ul>             <li>Sản phẩm: Mắm tôm chua </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam  </li>             <li>Giá bán: 65.000 VND </li>             <li>Khối lượng: 500g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Tôm lớn nguyên con, muối, riềng, rượu và gia vị khác</li>             <li>Cách dùng: Làm nước chấm bánh tráng cuốn thịt heo, chấm rau, thịt luộc,… </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 65, '4', 1, 3),
(53, 'Tương ớt rim', 'Public/img/tuong_ot.jpg', '<p> <span style=\"color: red;\">Tương ớt rim</span> của thương hiệu Dì Cẩn rất nổi tiếng, được nhiều khách du lịch và người dân địa phương tin yêu và chọn mua. Loại mắm Dì Cẩn Đà Nẵng này bạn có thể dùng để ăn với cơm hay bún, phở hoặc làm gia vị cho một số món ăn khác.</p>         <ul >             <li>Sản phẩm:  Tương ớt rim </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 30.000 VND </li>             <li>Khối lượng: 200g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Ớt chín, dầu ăn, các loại gia vị</li>             <li>Cách dùng: Ăn liền. Ăn cùng với phở,  bún hoặc làm gia vị cho các món ăn khác. </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát .Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 4 tháng kể từ ngày sản xuất</li>         </ul>', 30, '3', 1, 3),
(54, 'Mắm dưa', 'Public/img/mam_dua.jpg', '  <p> <span style=\"color: red;\">Mắm dưa Dì Cẩn  </span>có hương vị thơm ngon của những trái dưa ngang giòn giòn, những miếng khóm chua và cà pháo hòa quyện cùng với mắm nêm Đà Nẵng rất thơm. Loại mắm Đà Nẵng này rất được người dân địa phương và nhiều thực khách yêu thích.</p>         <ul >             <li>Sản phẩm:   Mắm dưa Dì Cẩn </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 59.000 VND </li>             <li>Khối lượng: 500g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mắm nêm, dưa gang, đu đủ, cà,…</li>             <li>Cách dùng:Làm nước chấm bánh tráng cuốn thịt heo, chấm rau, thịt luộc,…</li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 1 tháng kể từ ngày sản xuất</li>         </ul>', 59, '4', 1, 3),
(55, 'Mắm nêm thu', 'Public/img/mam_nem.jpg', '  <p> <span style=\"color: red;\">Mắm nêm thu </span>là loại mắm bạn ngon mà bạn không thể bỏ qua nếu muốn bữa ăn thêm đậm vị. Điểm đặc biệt của loại mắm Dì Cẩn Đà Nẵng này nằm ở chữ “thu”, đó là có cá thu xay bỏ vào hòa quyện cùng mắm nêm. Nên mới có tên gọi như vậy.</p>         <ul>             <li>Sản phẩm:  Mắm nêm thu  </li>             <li>Xuất xứ:  Đà Nẵng  </li>             <li>Giá bán: 60.000 VND </li>             <li>Khối lượng: 500g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá cơm thu, mì chính, đường, muối…</li>             <li>Cách dùng: Ăn liền </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát.</li>             <li>Hạn sử dụng: 12 tháng kể từ ngày sản xuất</li>         </ul>', 60, '4', 1, 3),
(56, 'Nước mắm Nam Ô', 'Public/img/mam_nam_o.jpg', '<ul>             <li>Sản phẩm: Chả bò Đà Nẵng  </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam   </li>             <li>Giá bán: 190.000 VND </li>             <li>Khối lượng: 6 chai/ hộp </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá cơm, gia vị,… </li>             <li>Cách dùng: Làm nước chấm, gia vị nấu ăn </li>             <li>Bảo quản: Nơi khô ráo thóa mát</li>             <li>Hạn sử dụng: 12 tháng kể từ ngày sản xuất – Đảm bảo uy tín, Date sản phẩm luôn luôn mới</li>         </ul>', 190, '5', 1, 3),
(57, 'Tỏi Lý Sơn', 'Public/img/toi_ly_son.jpg', ' <ul>             <li>Sản phẩm: Tỏi Lý Sơn(nhiều nhánh) </li>             <li>Xuất xứ: Đà Nẵng </li>             <li>Giá bán: 120.000 VND </li>             <li>Khối lượng:  </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần:  </li>             <li>Cách dùng:  </li>             <li>Bảo quản: </li>             <li>Hạn sử dụng: </li>         </ul>', 120, '5', 1, 3),
(58, 'Mắm cà pháo', 'Public/img/mam_ca_phao.jpg', ' <p> <span style=\"color: red;\">Mắm cà pháo Đà Nẵng</span> là một món ăn dân dã của người dân nơi đây. Mặc dù cà pháo có vị hăng nhưng khi được ủ với mắm thì vị hăng đã gần như không còn nữa. Mắm của thương hiệu mắm Dì Cẩn Đà Nẵng rất phổ biến và được nhiều người yêu thích.</p>         <ul >             <li>Sản phẩm: Mắm cà pháo </li>             <li>Xuất xứ: Đà Nẵng</li>             <li>Giá bán: 59.000 VND </li>             <li>Khối lượng: 500g/ hủ</li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mắm nêm (hoặc mắm tôm), dưa gang, đu đủ, cà,… </li>             <li>Cách dùng: Làm nước chấm bánh tráng cuốn thịt heo, chấm rau, thịt luộc,… </li>             <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh.</li>             <li>Hạn sử dụng: 1 tháng kể từ ngày sản xuất</li>         </ul>', 59, '4', 1, 3),
(67, 'Mực 1 nắng', 'Public/img/muc_mot_nang.jpg', ' <p> <span style=\"color: red;\">Mực 1 nắng Đà Nẵng</span> của thương hiệu Dì Cẩn rất nổi tiếng, được nhiều khách du lịch và người dân địa phương tin yêu và chọn mua. Loại mắm Dì Cẩn Đà Nẵng này bạn có thể dùng để ăn với cơm hay bún, phở hoặc làm gia vị cho một số món ăn khác.</p>         <ul >             <li>Sản phẩm: Mực 1 nắng Đà Nẵng</li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 200.000 VND </li>             <li>Khối lượng: 500g/gói </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực tươi phơi 1 nắng</li>             <li>Cách dùng: Nướng, hấp, xào thơm cà,…</li>             <li>Bảo quản: Bảo quản đông lạnh</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 200, '5', 1, 4),
(68, 'Cá dứa 1 nắng', 'Public/img/ca_dua_mot_nang.png', '  <p> <span style=\"color: red;\">Cá dứa 1 nắng </span> là cái tên còn hơi xa lạ đối với du khách nhưng lại là món ăn ngon nổi tiếng của Đà Nẵng. Đặc sản 1 nắng Đà Nẵng khô cá dứa gồm có hai loại chính là khô cá dứa một nắng và khô cá dứa 2 nắng, hương vị cá dứa vẫn được giữ nguyên độ ngon ngọt của cá.</p>         <ul >             <li>Sản phẩm:   Cá dứa 1 nắng  </li>             <li>Xuất xứ:  Việt Nam    </li>             <li>Giá bán: 300.000 VND </li>             <li>Khối lượng: 	1kg/ gói (2 – 3 con) </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá dứa tươi phơi qua 1 nắng</li>             <li>Cách dùng:Chiên, nướng, rim,…</li>             <li>Bảo quản: Bảo quản lạnh</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 300, '4', 1, 4),
(69, 'Khô cá sặc 1 nắng', 'Public/img/kho_ca_sac.jpg', ' <ul >             <li>Sản phẩm:  Khô cá sặc 1 nắng  </li>             <li>Xuất xứ:  Đà Nẵng  </li>             <li>Giá bán: 350.000 VND </li>             <li>Khối lượng: 500g </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá sặc phơi khô</li>             <li>Cách dùng: Chế biến chiên,.. </li>             <li>Bảo quản: Bảo quản lạnh</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 350, '3', 1, 4),
(70, 'Khô cá đù 1 nắng', 'Public/img/kho_ca_du.jpg', '    <ul >             <li>Sản phẩm: Khô cá đù 1 nắng  </li>             <li>Xuất xứ: Đà Nẵng – Việt Nam   </li>             <li>Giá bán: 250.000 VND </li>             <li>Khối lượng: 1kg </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Cá đù phơi khô </li>             <li>Cách dùng: Chế biến chiên,.. </li>             <li>Bảo quản: Bảo quản lạnh</li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất – Đảm bảo uy tín, Date sản phẩm luôn luôn mới</li>         </ul>', 250, '4', 1, 4),
(71, 'Mực 1 nắng (Đặc Biệt)', 'Public/img/muc_dac_biet.jpg', '<p> <span style=\"color: red;\">Mực 1 nắng Đặc Biệt </span>  là một loại đặc sản khô nổi tiếng tại thành phố biển xinh đẹp này. Loại hải sản một nắng này không chỉ quen thuộc với người địa phương mà còn được nhiều du khách biết đến và chọn mua.</p>         <ul>             <li>Sản phẩm: Mực phơi 1 nắng </li>             <li>Xuất xứ: Đà Nẵng </li>             <li>Giá bán: 250.000 VND </li>             <li>Khối lượng: 1kg/ gói (2 con)  </li>             <li>Nhà phân phối: D&D </li>             <li>Thành phần: Mực tươi phơi 1 nắng  </li>             <li>Cách dùng: Nướng, hấp, xào thơm cà,… </li>             <li>Bảo quản: Bảo quản đông lạnh </li>             <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>         </ul>', 250, '5', 1, 4),
(73, 'Cá thu một nắng', 'Public/img/ca_thu_mot_nang.jpg', '        <p> <span style=\"color: red;\">Cá thu một nắng Đà Nẵng</span> là một loại cá khô Đà Nẵng rất quen thuộc của đa số người dân vùng biển miền Trung. Bạn có thể chế biến cá thu miếng 1 nắng thành các món ăn như nướng, hấp gừng, chiên mắm tỏi, hay sốt cà chua,…</p>\r\n        <ul>\r\n            <li>Sản phẩm: Cá thu một nắng </li>\r\n            <li>Xuất xứ: Đà Nẵng</li>\r\n            <li>Giá bán: 300.000 VND </li>\r\n            <li>Khối lượng: 1kg/ gói (2 – 3 lát cá/ kg)</li>\r\n            <li>Nhà phân phối: D&D </li>\r\n            <li>Thành phần: Cá thu tươi làm sạch phơi 1 nắng</li>\r\n            <li>Cách dùng: Nướng, hấp gừng, kho tộ, kho cá sốt cà chua,… </li>\r\n            <li>Bảo quản: Để nơi khô ráo và thoáng mát. Bảo quản lâu hơn trong tủ lạnh.</li>\r\n            <li>Hạn sử dụng: 6 tháng kể từ ngày sản xuất</li>\r\n        </ul>', 300, '4', 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `Fk_customer_id_bill` (`customer_id`),
  ADD KEY `fk_order_id_bill` (`order_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `Fk_customer_id_comment` (`customer_id`),
  ADD KEY `Fk_product_id_comment` (`product_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `Fk_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `Fk_category_id` (`category_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Fk_customer_id_bill` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `fk_order_id_bill` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Fk_customer_id_comment` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `Fk_product_id_comment` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `Fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
