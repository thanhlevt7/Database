-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2023 lúc 04:36 PM
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
-- Cơ sở dữ liệu: `flutter`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `userID`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Xã Kim Long, Huyện Châu Đức, Bà Rịa - Vũng Tàu, Việt Nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `userID`, `title`, `created_at`, `updated_at`) VALUES
(2, 1, 'Sưu tầm nước healthy', NULL, NULL),
(3, 1, 'b', NULL, NULL),
(4, 1, 'ggy', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite_details`
--

CREATE TABLE `favorite_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favoriteID` bigint(20) UNSIGNED NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite_details`
--

INSERT INTO `favorite_details` (`id`, `favoriteID`, `productID`, `created_at`, `updated_at`) VALUES
(3, 2, 3, NULL, NULL),
(5, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` varchar(255) NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `shippingName` varchar(255) NOT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `shippingPhone` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `isPaid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `userID`, `shippingName`, `shippingAddress`, `shippingPhone`, `total`, `dateCreated`, `isPaid`, `status`, `created_at`, `updated_at`) VALUES
('HD202203161', 1, 'Nguyễn Thành Lễ', 'Quận Tân Bình', '0348340873', 210000, '2022-03-06 12:45:30', 1, -2, NULL, NULL),
('HD202203162', 2, 'Nguyễn Thành Lễ', 'Quận Tân Bình', '0348340873', 120000, '2022-03-04 11:10:30', 1, -1, NULL, NULL),
('HD202305053', 1, 'Nguyễn Thành Lễ', 'Xã Kim Long, Huyện Châu Đức, Bà Rịa - Vũng Tàu, Việt Nam', '0348340873', 410000, '2023-05-05 16:52:09', 1, -2, NULL, NULL),
('HD202305064', 1, 'Nguyễn Thành Lễ', 'Xã Kim Long, Huyện Châu Đức, Bà Rịa - Vũng Tàu, Việt Nam', '0348340873', 80000, '2023-05-06 12:55:58', 1, -2, NULL, NULL),
('HD202305085', 1, 'Nguyễn Thành Lễ', 'Xã Kim Long, Huyện Châu Đức, Bà Rịa - Vũng Tàu, Việt Nam', '0348340873', 719000, '2023-05-08 14:58:15', 1, -1, NULL, NULL),
('HD202305086', 1, '123', NULL, '123', 175000, '2023-06-24 00:00:00', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoiceID` varchar(255) NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoiceID`, `productID`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'HD202203161', 2, 5, NULL, NULL),
(2, 'HD202203161', 3, 5, NULL, NULL),
(3, 'HD202203161', 6, 12, NULL, NULL),
(4, 'HD202203161', 7, 6, NULL, NULL),
(6, 'HD202305053', 5, 5, NULL, NULL),
(7, 'HD202305053', 1, 16, NULL, NULL),
(8, 'HD202305053', 2, 1, NULL, NULL),
(9, 'HD202305053', 6, 1, NULL, NULL),
(10, 'HD202305064', 1, 16, NULL, NULL),
(11, 'HD202305085', 10, 1, NULL, NULL),
(12, 'HD202305085', 8, 1, NULL, NULL),
(13, 'HD202305085', 5, 1, NULL, NULL),
(14, 'HD202305085', 7, 1, NULL, NULL),
(15, 'HD202305086', 1, 16, NULL, NULL),
(16, 'HD202305086', 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_17_085035_create_products_table', 1),
(6, '2022_01_17_085228_create_invoices_table', 1),
(7, '2022_01_17_085257_create_invoice_details_table', 1),
(8, '2022_01_17_085603_create_reviews_table', 1),
(9, '2022_01_17_090025_create_vouchers_table', 1),
(10, '2022_02_14_234213_create_addresses_table', 1),
(11, '2022_02_16_155212_create_notifications_table', 1),
(12, '2022_03_02_112532_create_favorites_table', 1),
(13, '2022_03_04_040852_create_favorite_details_table', 1),
(14, '2022_03_04_041014_foreign_key', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `userID`, `content`, `image`, `startDate`, `endDate`, `created_at`, `updated_at`) VALUES
(1, 'Giảm giá ', 1, 'Nhanh tay mua ngay, nhập ngay mã voucher :pqrbGC', 'https://img-cache.coccoc.com/image2?i=4&l=54/854640637', '2023-02-13 00:00:00', '2030-02-11 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `createDate` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `type`, `unit`, `description`, `image`, `createDate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dâu tằm', 35000, 16, 'Trái cây', 'Kg', 'Quả dâu tằm có lợi trong việc cải thiện lưu lượng máu trong cơ thể, kiểm soát huyết áp và làm sạch máu. Các chất chống oxy hóa từ dâu sẽ hỗ trợ thúc đẩy chức năng của các mạch máu bằng cách giữ cho chúng dẻo dai và giãn nở.', 'https://product.hstatic.net/1000119621/product/417308_39dd0378fe9e43abbfc208eaa4e88e9f_large.jpg,https://product.hstatic.net/1000119621/product/417308_39dd0378fe9e43abbfc208eaa4e88e9f_large.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(2, 'Rau salad', 30000, 9, 'Rau củ', '500gram', 'Rau xanh rất giàu canxi, vitamin K cao giúp hệ xương ổn định, phát triển khỏe mạnh. Củng cố xương, cải thiện mật độ xương, làm cho chúng dày và khỏe mạnh hơn', 'https://cf.shopee.vn/file/2003d66491a1c8fc3e629034b0288a74', '2022-10-07 00:00:00', 1, NULL, NULL),
(3, 'Nước suối', 7000, 20, 'Thức uống', 'Chai500ml', 'Nước còn mang lại rất nhiều lợi ích cho cơ thể khi được cung cấp đầy đủ chẳng hạn như: Giúp các khớp hoạt động tốt hơn, hoặc làm cho tim khỏe mạnh hơn', 'https://gaonuoc.com/wp-content/uploads/2019/09/thung-nuoc-khoang-lavie-750ml.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(4, 'Kiwi', 200000, 15, 'Trái cây', 'Kg', 'Kiwi vào chế độ ăn uống của mình để đạt được những lợi ích chúng mang lại, có thể dễ dàng kết hợp nó vào một số công thức nấu ăn. Rất tuyệt để thêm kiwi vào bữa sáng. ', 'http://product.hstatic.net/1000346206/product/0-20141211-kiwi-1-1_grande.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(5, 'Cam', 20000, 14, 'Trái cây', 'Kg', 'Quả cam rất giàu vitamin C, một dưỡng chất giúp hấp thụ sắt, làm tăng số lượng huyết sắc tố và ngăn ngừa các triệu chứng thiếu máu như mệt mỏi và chóng mặt', 'https://images.f99.com.vn/images/38a528d1-1a8a-46e3-988a-6a8d79a87198.png', '2022-10-07 00:00:00', 1, NULL, NULL),
(6, 'Thịt bò', 200000, 39, 'Thịt', 'Kg', 'Thịt là nguồn cung cấp protein có vai trò chính trong xây dựng cơ bắp vì lý do đó, thịt là nguồn protein dồi dào có thể có lợi ích đặc biệt sau phẫu thuật hoặc cho các vận động viên phục hồi. ', 'https://thitbohuunghi.com/wp-content/uploads/2021/06/unnamed-1.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(7, 'Nho đen', 100000, 9, 'Trái cây', 'Kg', 'Nho là loại quả chứa nhiều chất dinh dưỡng, chất xơ, kali... Nho cung cấp rất nhiều lợi ích sức khỏe do hàm lượng chất dinh dưỡng và chất chống oxy hóa cao. Dưới đây là 12 lợi ích sức khỏe hàng đầu của nho.', 'https://product.hstatic.net/1000372684/product/15._nho_den_4e21bd9031dc477190285cdc4bddd924_1024x1024.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(8, 'Dâu tây', 210000, 49, 'Trái cây', 'Kg', 'Dâu tây sẽ rất có ích bởi chúng có khả năng chống viêm và làm sáng da. Thêm vào đó, vitamin C trong dâu tây hạn chế các bệnh về mắt như đục thủy tinh thể.', 'https://ifree.vn/wp-content/uploads/2018/12/chiet-xuat-dau-tay.jpg', '2022-10-07 00:00:00', 1, NULL, NULL),
(9, 'Táo mỹ', 109000, 30, 'Trái cây', 'Kg', 'Táo giúp hỗ trợ giảm cân do hàm lượng chất xơ trong táo thúc đẩy cảm giác no, giảm lượng calo và tăng giảm cân. - Ăn nhiều táo giúp tăng mật độ khoáng xương, giảm nguy cơ loãng xương;', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSavrv-RJzhehL8cDGOQdFKTFFYtZzmhRNnE6nkKKKQgXbVgNvz1QX7mIq-slImoYOjQ1M&usqp=CAU', '2022-10-07 00:00:00', 1, NULL, NULL),
(10, 'Cherry đỏ Chile', 379000, 29, 'Trái cây', 'Kg', 'Quả cherry rất tốt cho những người bị cao huyết áp.  Nếu bạn ăn cherry thường xuyên, tình trạng mất ngủ của bạn sẽ được cải thiện. Cherry chứa melatonin làm cho giấc ngủ sâu và ngon hơn;', 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683279819/dpanhk8zhtvyq9whoan7.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683279820/lwihvr7tddyhtyqkibsz.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683279822/k5ok86f7398op5epzcju.jpg', '2023-05-03 10:49:01', 1, NULL, '2023-05-05 02:43:44'),
(11, 'Táo trung quốc', 1234, 0, 'Trái cây', '123', '123', 'https://res.cloudinary.com/thanhlevt7/image/upload/v1684139912/cu3ecvrhxqag42pb3hqo.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1684139914/ryrxoapw0vc87skg1unn.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1684139916/lnyjufcp2juxev7em12o.jpg', '2023-05-15 15:38:36', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `postedDate` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `userID`, `productID`, `image`, `content`, `quantity`, `postedDate`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg', 'Giao hàng rất nhanh, Hàng rất tốt. Shop xứng đáng 10đ', 4, '2023-05-03 03:49:01', 1, NULL, NULL),
(2, 1, 4, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg', 'Chúc shop năm mới vui vẻ nhé.', 4, '2023-05-03 03:49:01', 1, NULL, NULL),
(3, 1, 5, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg', 'Sản phẩm tốt quá. Mình rất thích chất lượng như thế này.', 5, '2023-05-03 03:49:01', 1, NULL, NULL),
(4, 1, 6, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg', 'Thịt cũng rất tươi và chất lượng. Nhưng khâu giao hàng tệ quá.', 3, '2022-01-04 11:01:30', 1, NULL, NULL),
(5, 1, 2, NULL, 'a', 1, '2023-05-05 00:41:25', 1, NULL, NULL),
(6, 1, 3, NULL, 'c', 2, '2023-05-05 00:41:25', 1, NULL, NULL),
(7, 1, 6, NULL, 's', 5, '2023-05-05 00:41:25', 1, NULL, NULL),
(8, 1, 7, NULL, 'd', 2, '2023-05-05 00:41:25', 1, NULL, NULL),
(9, 1, 5, NULL, 'a', 1, '2023-05-05 16:59:40', 1, NULL, NULL),
(10, 1, 1, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280676/image_flutter/are66qldkkmaxwqezeam.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280679/image_flutter/mkulcjrovtldjhrw3qgc.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280682/image_flutter/eyp0xpbernvvqqdddnhy.jpg', NULL, 2, '2023-05-05 16:59:41', 1, NULL, NULL),
(11, 1, 2, 'https://res.cloudinary.com/thanhlevt7/image/upload/v1683280697/image_flutter/pmsdcrnms9hjacun96s6.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280700/image_flutter/nmnfvg0yxk1mv8mzmqrb.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280703/image_flutter/hnf3e0buan6yky7bzvw1.jpg,https://res.cloudinary.com/thanhlevt7/image/upload/v1683280705/image_flutter/wrxnnmnvugemwkuwkc9p.jpg', NULL, 5, '2023-05-05 16:59:41', 1, NULL, NULL),
(12, 1, 6, NULL, 'a', 3, '2023-05-05 16:59:41', 1, NULL, NULL),
(13, 1, 1, NULL, NULL, 1, '2023-05-06 13:36:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `fullName`, `email`, `password`, `phone`, `avatar`, `type`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asjdflkajsdf', 'Nguyễn Thành Lễ', 'thanhlevt7@gmail.com', '$2y$10$V5QZzk/QLH54TaS2lLLZlejySCm4ooo9cThcLM51tN/Px5oiCcO7S', '0348340873', 'https://res.cloudinary.com/thanhlevt7/image/upload/v1684139644/image_flutter/tmx3hwvwnvp1elbkpltn.jpg', 'admin', 1, NULL, 'FirSqiiHIMvxGZ1LjTLD2RQu2jvIYgjJagNgF11n', NULL, NULL),
(2, 'thanhbui', 'Bùi kim thanh', 'thanhbui@gmail.com', '$2y$10$w1tFmqyjYKw5dGaGH6r1oubgbf9iETcv5nKRZOOK4eu8cOGeEiKDi', '0348340873', 'b.png', 'user', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `sale` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `limit` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `name`, `userID`, `sale`, `startDate`, `endDate`, `limit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'thanhLe', 'Giảm giá ', 1, 10000, '2023-02-13 00:00:00', '2030-02-11 00:00:00', 22222214, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_details_favoriteid_foreign` (`favoriteID`),
  ADD KEY `favorite_details_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_details_productid_foreign` (`productID`),
  ADD KEY `invoice_details_invoiceid_foreign` (`invoiceID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_productid_foreign` (`productID`),
  ADD KEY `reviews_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `favorite_details`
--
ALTER TABLE `favorite_details`
  ADD CONSTRAINT `favorite_details_favoriteid_foreign` FOREIGN KEY (`favoriteID`) REFERENCES `favorites` (`id`),
  ADD CONSTRAINT `favorite_details_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_invoiceid_foreign` FOREIGN KEY (`invoiceID`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `invoice_details_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
