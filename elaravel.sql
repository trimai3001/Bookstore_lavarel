-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 19, 2020 at 09:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(4, '2020_12_13_220246_create_tbl_category_product', 2),
(5, '2020_12_13_222532_create_tbl_company', 3),
(15, '2020_12_13_224121_create_tbl_company', 4),
(26, '2014_10_12_100000_create_password_resets_table', 5),
(27, '2020_12_13_174711_create_tbl_admin_table', 5),
(28, '2020_12_13_223025_create_tbl_user', 5),
(29, '2020_12_15_131944_create_tbl_category_product', 5),
(30, '2020_12_15_164447_create_tbl_brand_product', 5),
(31, '2020_12_16_025022_create_tbl_product', 6),
(32, '2020_12_16_031450_create_tbl_product', 7),
(33, '2020_12_18_090348_tbl_customer', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_password`, `admin_email`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'kuro', 'e10adc3949ba59abbe56e057f20f883e', 'kuro@gmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(7, 'NXB Tổng hợp thành phố Hồ Chí Minh', 'NXB Tổng hợp thành phố Hồ Chí Minh', 0, NULL, NULL),
(8, 'Nhà xuất bản Kim Đồng', 'Nhà xuất bản Kim Đồng', 0, NULL, NULL),
(9, 'Nhà xuất bản Trẻ', 'Nhà xuất bản Trẻ', 0, NULL, NULL),
(10, 'Nhà xuất bản chính trị quốc gia sự thật', 'Nhà xuất bản chính trị quốc gia sự thật', 0, NULL, NULL),
(11, 'Nhà xuất bản giáo dục', 'Nhà xuất bản giáo dục', 0, NULL, NULL),
(12, 'Nhà xuất bản Hội Nhà văn', 'Nhà xuất bản Hội Nhà văn', 0, NULL, NULL),
(13, 'Nhà xuất bản Tư pháp', 'Nhà xuất bản Tư pháp', 0, NULL, NULL),
(14, 'Nhà xuất bản thông tin và truyền thông', 'Nhà xuất bản thông tin và truyền thông', 0, NULL, NULL),
(15, 'Nhà xuất bản lao động', 'Nhà xuất bản lao động', 0, NULL, NULL),
(16, 'Nhà xuất bản giao thông vận tải', 'Nhà xuất bản giao thông vận tải', 0, NULL, NULL),
(17, 'Nhà xuất bản Đại học Quốc Gia Hà Nội', 'Nhà xuất bản Đại học Quốc Gia Hà Nội', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(4, 'Sách luyên thi', 'Sách luyên thi', 0, NULL, NULL),
(5, 'Sách giáo khoa', 'Sách giáo khoa', 0, NULL, NULL),
(6, 'Truyên manga', 'Truyên manga', 0, NULL, NULL),
(7, 'Tài liệu tham khảo', 'Tài liệu tham khảo', 0, NULL, NULL),
(8, 'Truyên chữ', 'Truyên chữ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'hoàng hà', 'hoangha150697@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456789', NULL, NULL),
(2, 'trí ỉa', 'triaer@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'dddd1', 1, 2, 'dasd', 'dasdas', '150000', '62075903_147026816423642_651267580677324800_n41.jpg', 0, NULL, NULL),
(3, 'dasda', 3, 3, 'das', 'das', '150000', 'received_82039718815685340.jpeg', 0, NULL, NULL),
(4, 'dasdasdacxz', 3, 3, 'das', 'dsadas', '1500000', 'received_82039750815682151.jpeg', 0, NULL, NULL),
(5, 'BỘ ĐỀ THI LÝ THUYẾT SÁT HẠCH LÁI XE HẠNG A1', 4, 16, 'BỘ ĐỀ THI LÝ THUYẾT SÁT HẠCH LÁI XE HẠNG A1', 'BỘ ĐỀ THI LÝ THUYẾT SÁT HẠCH LÁI XE HẠNG A1', '50000', 'unnamed (1)43.jpg', 0, NULL, NULL),
(6, 'GIẢI CÁC THẾ SA HÌNH 450 CÂU HỎI', 4, 17, 'GIẢI CÁC THẾ SA HÌNH 450 CÂU HỎI', 'GIẢI CÁC THẾ SA HÌNH 450 CÂU HỎI', '20000', 'download99.png', 0, NULL, NULL),
(7, '600 CÂU HỎI DÙNG CHO THI SÁT HẠCH LÁI XE', 4, 16, '600 CÂU HỎI DÙNG CHO THI SÁT HẠCH LÁI XE', '600 CÂU HỎI DÙNG CHO THI SÁT HẠCH LÁI XE', '60000', '600-cau-hoi36.png', 0, NULL, NULL),
(8, 'TÀI LIÊU ĐÀO TẠO', 4, 16, 'TÀI LIÊU ĐÀO TẠO', 'TÀI LIÊU ĐÀO TẠO', '50000', 'unnamed72.jpg', 0, NULL, NULL),
(9, 'NGHỆ  THUẬT 2', 5, 11, 'SÁCH CHO GIÁO VIÊN', 'NGHỆ THUẬT', '60000', '20712f511580862ea3524bd89349a3ab56.jpg', 0, NULL, NULL),
(10, 'HÓA HỌC 12', 5, 17, 'HÓA HỌC 12', 'HÓA HỌC 12', '50000', '3122016101213_14031064_1624104044586638_295808219_n_680x96089.jpg', 0, NULL, NULL),
(11, 'TIẾNG ANH 9', 5, 11, 'TIẾNG ANH 9', 'TIẾNG ANH 9', '50000', 'download58.jfif', 0, NULL, NULL),
(12, 'HÓA HỌC 9', 5, 11, 'HÓA HỌC 9', 'HÓA HỌC 9', '50000', 'images39.jfif', 0, NULL, NULL),
(13, 'TIẾNG VIÊT 2', 5, 11, 'TIẾNG VIÊT 2', 'TIẾNG VIÊT 2', '50000', '59aeeb99e94d3034353185d70f1a0b2e1.png', 0, NULL, NULL),
(14, 'TOÁN 6', 5, 11, 'TOÁN 6', 'TOÁN 6', '50000', 'sach-giao-khoa-toan-lop-676.jpg', 0, NULL, NULL),
(15, 'TOÁN 6', 5, 11, 'TOÁN 6', 'TOÁN 6', '50000', 'sach-giao-khoa-toan-lop-614.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
