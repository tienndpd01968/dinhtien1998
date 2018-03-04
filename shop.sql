-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2017 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'LAPTOP'),
(2, 'ĐIỆN THOẠI'),
(3, 'TABLET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_image`, `product_price`, `product_description`) VALUES
(2, 1, 'DELL INSPRIRON 7559', 'images/pi2.jpg', 12000000, 'SẢN PHẨM CỦA DELL'),
(3, 1, 'ASUS X441UA', 'images/pi3.jpg', 12000000, 'SẢN PHẨM CỦA ASUS'),
(4, 1, 'HP ELITEBOOK', 'images/pi4.jpg', 12000000, 'SẢN PHẨM CỦA HP'),
(5, 1, 'MSI GL62M', 'images/pi5.jpg', 20000000, 'SẢN PHẨM CỦA MSI'),
(6, 2, 'GALAXY S8', NULL, 21000000, 'SẢN PHẨM CỦA SAMSUNG'),
(7, 2, 'iPHONE 8', 'images/phone1.jpg', 22000000, 'SẢN PHẨM CỦA APPLE'),
(8, 2, 'XPERIA X', 'images/phone4.jpg', 7000000, 'SẢN PHẨM CỦA SONY'),
(9, 2, 'G6', 'images/phone3.jpg', 7000000, 'SẢN PHẨM CỦA LG'),
(10, 2, '10 EVO', 'images/phone2.jpg', 10000000, 'SẢN PHẨM CỦA HTC'),
(11, 3, 'iPAD PRO 10.5 INCH', NULL, 19900000, 'SẢN PHẨM CỦA APPLE'),
(12, 3, 'GALAXY TAB S3', 'images/tab1.jpg', 17000000, 'SẢN PHẨM CỦA SAMSUNG'),
(13, 3, 'MEDIAPAD M3', 'images/tab2.jpeg', 7000000, 'SẢN PHẨM CỦA HUAWEI'),
(14, 3, 'PHAB 2', 'images/tab3.jpg', 4000000, 'SẢN PHẨM CỦA LENOVO'),
(15, 3, 'TAB 8S', 'images/tab4.jpg', 3000000, 'SẢN PHẨM CỦA MOBELL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_pass`, `user_role`) VALUES
(1, 'phamquoctrong@gmail.com', 'khongbiet', b'1111111111111111111111111111111'),
(1463056081952, 'vuive@gmail.com', 'khongbiet', b'1111111111111111111111111111111'),
(1508770078061, 'administrator', 'admin', b'1111111111111111111111111111111'),
(1508771133068, 'vuivehaha@gmail.com', 'bietpass', b'1111111111111111111111111111111'),
(1508814674384, 'vudai@gmail.com', NULL, b'1111111111111111111111111111111'),
(1508815548518, 'vu123', NULL, b'1111111111111111111111111111111'),
(1508830000199, 'ADMIN', 'khongbiet', b'1111111111111111111111111111111'),
(1508830027910, 'ADMIN', NULL, b'1111111111111111111111111111111'),
(1508830034859, 'ADMIN', 'khongbiet', b'1111111111111111111111111111111'),
(1508833439592, 'admin', NULL, b'1111111111111111111111111111111'),
(12345678, 'ml@gmail.com', 'khongbiet', b'1111111111111111111111111111111');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
