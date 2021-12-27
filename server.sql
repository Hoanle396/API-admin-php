-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 08:51 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `server`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `name`, `phonenumber`, `created_at`, `updated_at`) VALUES
(1, 'hoanle396@gmail.com', '4297f44b13955235245b2497399d7a93', 'Lê Hữu Hoàn', '0345648638', '2021-11-27 06:45:32', '2021-11-27 06:45:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banknumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankauth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banks`
--

INSERT INTO `banks` (`id`, `banknumber`, `bankauth`, `bankname`, `qrcode`, `created_at`, `updated_at`) VALUES
(1, '0345648638', ' Lê Hữu Hoàn', 'MoMo', 'http://127.0.0.1:8000/imageupload/1637812066-vietinbank.jpg', '2021-11-27 06:44:32', '2021-11-27 06:44:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feed_backs`
--

CREATE TABLE `feed_backs` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feed_backs`
--

INSERT INTO `feed_backs` (`id`, `firstname`, `lastname`, `email`, `phonenumber`, `message`, `created_at`, `updated_at`) VALUES
(1, 'LÊ', 'HOÀN', 'hoanle396@gmail.com', '0345648638', 'Chất Lượng sản phẩm khá tốt', '2021-11-27 01:43:02', '2021-11-27 01:43:02'),
(3, 'Nguyễn', 'Duy Anh', 'ndanh.20it3@vku.udn.vn', '0913361783', 'chất lượng sản phẩm tốt', '2021-12-01 19:14:05', '2021-12-01 19:14:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meets`
--

CREATE TABLE `meets` (
  `meets_id` int(10) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `meets`
--

INSERT INTO `meets` (`meets_id`, `id`, `service_fullname`, `service_email`, `time`, `date`, `description`, `created_at`, `updated_at`) VALUES
(6, 2, 'nguyễn duy anh', 'ndanh.20it3@vku.udn.vn', '08:50', '2021-12-08', 'vui lòng đến đúng giờ', '2021-12-05 20:47:41', '2021-12-05 20:47:41'),
(7, 3, 'Lê Hữu Hoàn', 'lhhoan.20it11@vku.udn', '18:20', '2021-12-07', 'vui lòng đến đúng giờ', '2021-12-07 00:16:01', '2021-12-07 00:16:01'),
(8, 3, 'Lê Hữu Hoàn', 'lhhoan.20it11@vku.udn', '18:20', '2021-12-07', '1', '2021-12-07 00:16:28', '2021-12-07 00:16:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_20_140030_create_products_table', 1),
(11, '2021_11_20_164204_create_admins_table', 1),
(12, '2021_11_23_140011_create_feed_backs_table', 1),
(13, '2021_11_23_140229_create_services_table', 1),
(14, '2021_11_23_140706_create_news_table', 1),
(15, '2021_11_24_065345_create_meets_table', 1),
(16, '2021_11_24_141646_create_orders_table', 1),
(17, '2021_11_24_141721_create_order_details_table', 1),
(18, '2021_11_25_025809_create_banks_table', 1),
(20, '2021_12_06_032901_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Ca cộng đồng tăng, Hà Nội yêu cầu xét nghiệm tầm soát cho học sinh', '<h2>Chủ tịch H&agrave; Nội y&ecirc;u cầu Sở Y tế x&acirc;y dựng kế hoạch x&eacute;t nghiệm tầm so&aacute;t cho học sinh, gi&aacute;o vi&ecirc;n; x&eacute;t nghiệm thường quy, s&agrave;ng lọc theo chỉ định chuy&ecirc;n m&ocirc;n, định kỳ tại c&aacute;c khu vực nguy cơ mắc COVID cao.</h2>\r\n\r\n<p>Ng&agrave;y 26/11, Chủ tịch Ủy ban Nh&acirc;n d&acirc;n th&agrave;nh phố H&agrave; Nội Chu Ngọc Anh đ&atilde; k&yacute; ban h&agrave;nh C&ocirc;ng điện số 25/CĐ-UBND về việc tăng cường c&aacute;c biện ph&aacute;p ph&ograve;ng, chống&nbsp;<a href=\"https://www.vietnamplus.vn/tags/d%e1%bb%8bch-COVID-19.vnp\" target=\"_blank\"><strong>dịch COVID-19</strong></a>&nbsp;trong t&igrave;nh h&igrave;nh mới.</p>\r\n\r\n<p><strong>COVID-19 đ&atilde; xuất hiện tr&ecirc;n 30/30 quận, huyện</strong></p>\r\n\r\n<p>C&ocirc;ng điện&nbsp;của H&agrave; Nội n&ecirc;u r&otilde; từ ng&agrave;y 11/10/2021 đến ng&agrave;y 25/11/2021, th&agrave;nh phố đ&atilde; ghi nhận 4.817 ca mắc COVID-19. Trong đ&oacute;, số ca cộng đồng tăng nhanh với 1.704 ca mắc (chiếm tỷ lệ 35,43%), số ca mắc do l&acirc;y nhiễm thứ ph&aacute;t cũng tăng.</p>\r\n\r\n<p>Tới nay, dịch bệnh xuất hiện tr&ecirc;n 30/30 quận, huyện, thị x&atilde; trong đ&oacute; nhiều ch&ugrave;m ca bệnh tại c&aacute;c khu d&acirc;n cư mật độ cao, c&aacute;c khu chung cư, khu c&ocirc;ng nghiệp, từ c&aacute;c hoạt động tại chợ d&acirc;n sinh, đ&aacute;m hiếu, hỷ, việc tụ tập ăn uống, c&aacute;c địa điểm c&ocirc;ng cộng v&agrave; sự kiện tập trung đ&ocirc;ng người.</p>\r\n\r\n<p>Theo đ&oacute;, Chủ tịch th&agrave;nh phố y&ecirc;u cầu Trưởng ban Chỉ đạo, Chủ tịch Ủy ban Nh&acirc;n d&acirc;n c&aacute;c quận, huyện, thị x&atilde; chỉ đạo c&aacute;c lực lượng chức năng tại cơ sở tăng cường r&agrave; so&aacute;t, kiểm tra, tuy&ecirc;n truyền c&ocirc;ng t&aacute;c thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch tại c&aacute;c khu vực c&oacute; nguy cơ cao tr&ecirc;n địa b&agrave;n, như: C&aacute;c khu d&acirc;n cư (mật độ đ&ocirc;ng, sử dụng chung nh&agrave; tắm, khu vệ sinh); chợ d&acirc;n sinh; trung t&acirc;m thương mại; nh&agrave; h&agrave;ng ăn uống, bến t&agrave;u bến xe, t&agrave;u điện tr&ecirc;n cao, c&aacute;c cơ sở kh&aacute;m, chữa bệnh v&agrave; c&aacute;c khu vực c&oacute; sự kiện tập trung đ&ocirc;ng người.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, kiểm tra việc chấp h&agrave;nh c&aacute;c quy định, điều kiện ph&ograve;ng, chống dịch theo quy định của Trung ương v&agrave; th&agrave;nh phố (th&ocirc;ng điệp &quot;5K&quot; v&agrave; c&aacute;c biện ph&aacute;p theo Kế hoạch số 243/KH-UBND, c&aacute;c c&ocirc;ng điện, văn bản chỉ đạo của th&agrave;nh phố.)</p>\r\n\r\n<p>L&atilde;nh đạo H&agrave; Nội y&ecirc;u cầu khẩn trương ho&agrave;n thiện v&agrave; đưa v&agrave;o hoạt động c&aacute;c cơ sở thu dung, điều trị người nhiễm SARS-CoV-2 kh&ocirc;ng triệu chứng, triệu chứng nhẹ theo m&ocirc; h&igrave;nh Trạm Y tế lưu động; đồng thời đẩy nhanh tiến độ ti&ecirc;m vaccine, đặc biệt l&agrave; ti&ecirc;m mũi 2 với người tr&ecirc;n 50 tuổi.</p>\r\n\r\n<p>&ldquo;Tiếp tục thực hiện kế hoạch ti&ecirc;m cho trẻ em từ 12-17 tuổi theo lộ tr&igrave;nh hạ dần độ tuổi theo hướng dẫn của Bộ Y tế; bảo đảm về thuốc điều trị, trang thiết bị y tế,&rdquo; c&ocirc;ng điện nhấn mạnh.</p>\r\n\r\n<p>Về khoanh v&ugrave;ng, Chủ tịch Chu Ngọc Anh y&ecirc;u cầu c&aacute;ch ly được thực hiện tr&ecirc;n phạm vị hẹp nhất c&oacute; thể, tiếp tục th&ocirc;ng điệp &quot;5K&quot; v&agrave; đề cao &yacute; thức ph&ograve;ng, chống dịch của người d&acirc;n. Thực hiện nới lỏng, kh&ocirc;i phục hoạt động sản xuất-kinh doanh, mở cửa lại nền kinh tế c&oacute; lộ tr&igrave;nh v&agrave; ở những nơi an to&agrave;n, c&oacute; đủ điều kiện.</p>\r\n\r\n<p><strong>Tăng cường nh&acirc;n lực hỗ trợ y tế phường</strong></p>\r\n\r\n<p>&Ocirc;ng Chu Ngọc Anh cũng y&ecirc;u cầu Sở Y tế chủ tr&igrave;, tăng cường điều phối, bố tr&iacute;, ph&acirc;n luồng, chỉ đạo Trung t&acirc;m Kiểm so&aacute;t bệnh tật th&agrave;nh phố, c&aacute;c bệnh viện, viện, c&aacute;c trung t&acirc;m y tế quận, huyện, thị x&atilde; trong c&ocirc;ng t&aacute;c phối hợp, lấy mẫu, thực hiện x&eacute;t nghiệm tương ứng với c&aacute;c khu vực, địa b&agrave;n, đảm bảo thời gian trả kết quả x&eacute;t nghiệm.</p>\r\n\r\n<p>C&ugrave;ng đ&oacute;, x&acirc;y dựng kế hoạch x&eacute;t nghiệm tầm so&aacute;t cho học sinh v&agrave; gi&aacute;o vi&ecirc;n; x&eacute;t nghiệm thường quy, s&agrave;ng lọc theo chỉ định chuy&ecirc;n m&ocirc;n, tầm so&aacute;t ngẫu nhi&ecirc;n, định kỳ tại c&aacute;c khu vực c&oacute; nguy cơ cao, tập trung đ&ocirc;ng người, để hạn chế tối đa việc ph&aacute;t sinh c&aacute;c ch&ugrave;m ca bệnh phức tạp trong cộng đồng.</p>\r\n\r\n<p>Sở Y tế tổng hợp, ph&acirc;n loại c&aacute;c trường hợp F1, F2, đ&aacute;nh gi&aacute; ph&acirc;n t&iacute;ch c&aacute;c nguy cơ trong một số trường hợp theo đặc th&ugrave; của những đ&ocirc; thị lớn (như với c&aacute;c trường hợp đ&atilde; ti&ecirc;m đủ liều vaccine, c&oacute; đeo khẩu trang, đứng trong c&ugrave;ng khoang thang m&aacute;y với người nhiễm SARS-CoV-2 trong thời gian ngắn), đề nghị Bộ Y tế hướng dẫn, chỉ đạo c&aacute;c biện ph&aacute;p y tế ph&ugrave; hợp quy định v&agrave; diễn biến dịch tễ.</p>\r\n\r\n<p>&ldquo;Sở chủ tr&igrave;, chỉ đạo tăng cường việc cung cấp bảo đảm t&uacute;i thuốc g&oacute;i thuốc C (thuốc kh&aacute;ng vi r&uacute;t) cho c&aacute;c bệnh nh&acirc;n tại c&aacute;c tầng điều trị,&rdquo; l&atilde;nh đạo th&agrave;nh phố lưu &yacute; th&ecirc;m.</p>\r\n\r\n<p><strong>L</strong><strong>ắp đặt c&aacute;c thiết bị qu&eacute;t m&atilde; QR tại khu vực c&ocirc;ng cộng</strong></p>\r\n\r\n<p>Tại c&ocirc;ng điện, Chủ tịch H&agrave; Nội giao C&ocirc;ng an th&agrave;nh phố tăng cường cập nhật, kiểm so&aacute;t th&ocirc;ng tin nh&acirc;n khẩu tr&ecirc;n địa b&agrave;n; quản l&yacute; chặt chẽ số người thường tr&uacute;, tạm tr&uacute;, r&agrave; so&aacute;t hộ khẩu, người được cấp căn cước c&ocirc;ng d&acirc;n gắn chip, quản l&yacute; m&atilde; số định danh c&aacute; nh&acirc;n&hellip;</p>\r\n\r\n<p>Tăng cường kiểm so&aacute;t chặt chẽ di biến động d&acirc;n cư, nắm chắc t&igrave;nh h&igrave;nh người d&acirc;n khi ra, v&agrave;o địa b&agrave;n, người c&oacute; nguy cơ đang lưu tr&uacute;, l&agrave;m việc tại địa phương, doanh nghiệp (như l&aacute;i xe, phụ xe đường d&agrave;i, li&ecirc;n tỉnh, người l&agrave;m việc ngo&agrave;i tỉnh về địa phương lưu tr&uacute;, người lưu tr&uacute; ngoại tỉnh về địa phương l&agrave;m việc...) để c&oacute; biện ph&aacute;p quản l&yacute; ph&ugrave; hợp, khai b&aacute;o y tế thường xuy&ecirc;n.</p>', 'http://127.0.0.1:8000/imageupload/1638000669-Ca cộng đồng tăng, Hà Nội yêu cầu xét nghiệm tầm soát cho học sinh.jpg', '2021-11-27 01:11:09', '2021-11-27 01:11:09'),
(3, 'Hà Nội thay đổi phương án cho học sinh THPT trở lại trường', '<p><strong>Sở GD&amp;ĐT H&agrave; Nội vừa c&oacute; thay đổi phương &aacute;n cho học sinh THPT trở lại trường. Theo đ&oacute;, 50% học sinh THPT ở 30 quận, huyện, thị x&atilde; học trực tuyến v&agrave; 50% học sinh học trực tiếp.</strong></p>\r\n\r\n<p>Theo Sở GD&amp;ĐT H&agrave; Nội, do t&igrave;nh h&igrave;nh dịch bệnh COVID-19 tr&ecirc;n địa b&agrave;n th&agrave;nh phố tiếp tục diễn biến phức tạp, số ca F0 tăng đột biến so với thời gian trước, trong đ&oacute; c&oacute; nhiều ca trong cộng đồng, tiềm ẩn nguy cơ kh&ocirc;ng đảm bảo an to&agrave;n việc cho học sinh trở lại trường. Thực hiện chỉ đạo của TP&nbsp;H&agrave; Nội, Sở GD&amp;ĐT H&agrave; Nội vừa ra th&ocirc;ng b&aacute;o hỏa tốc điều chỉnh việc tổ chức dạy học cho học sinh như sau:</p>\r\n\r\n<p>C&aacute;c trường THPT, Trung t&acirc;m Gi&aacute;o dục Thường xuy&ecirc;n tr&ecirc;n địa b&agrave;n c&aacute;c x&atilde; phường, thị trấn của 30 quận, huyện, thị x&atilde; c&oacute; mức độ dịch cấp độ 1,2 cho ph&eacute;p học sinh trở lại trường học tập từ ng&agrave;y 6/12, sau thời gian tạm dừng đến trường.</p>\r\n\r\n<p>Cụ thể, học sinh khối 12 của c&aacute;c trường THPT, c&aacute;c trung t&acirc;m Gi&aacute;o dục Thường xuy&ecirc;n của 30 quận, huyện, thị x&atilde; trở lại trường học trực tiếp theo phương &aacute;n:</p>\r\n\r\n<p>50% số lớp 12 học trực tiếp thứ 2, thứ 4, thứ 6; c&aacute;c ng&agrave;y c&ograve;n lại học trực tuyến; 50% số lớp 12 học trực tiếp thứ 3, thứ 5, thứ 7; c&aacute;c ng&agrave;y c&ograve;n lại học trực tuyến.</p>\r\n\r\n<p>Học sinh lớp 9 ở c&aacute;c huyện, thị x&atilde; đi học trực tiếp như kế hoạch trước đ&oacute;.</p>\r\n\r\n<p>Học sinh cấp tiểu học, THCS v&agrave; khối lớp 10, lớp 11 c&aacute;c trường THPT, c&aacute;c Trung t&acirc;m Gi&aacute;o dục Thường xuy&ecirc;n học trực tuyến.</p>\r\n\r\n<p>Trẻ mầm non nghỉ học tại nh&agrave;.</p>\r\n\r\n<p>Đối với c&aacute;c quận, khối học sinh cấp tiểu học, cấp THCS v&agrave; khối lớp 10, 11 học trực tuyến.</p>\r\n\r\n<p>Học sinh mầm non nghỉ học tại nh&agrave;.</p>\r\n\r\n<p>Sở GD&amp;ĐT H&agrave; Nội cũng lưu &yacute; c&aacute;c trường chỉ bố tr&iacute; cho học sinh đến trường một buổi/ng&agrave;y.</p>', 'http://127.0.0.1:8000/imageupload/1638691451-Hà Nội thay đổi phương án cho học sinh THPT trở lại trường.jpg', '2021-12-05 01:04:11', '2021-12-05 01:04:11'),
(4, 'Không có triệu chứng, xét nghiệm nhiều người dương tính SARS-CoV-2', '<h1><strong>Kh&ocirc;ng c&oacute; triệu chứng, x&eacute;t nghiệm nhiều người dương t&iacute;nh SARS-CoV-2</strong></h1>\r\n\r\n<p>S&aacute;ng 5/12, Trung t&acirc;m Kiểm so&aacute;t Bệnh tật (CDC) Nghệ An cho biết trong 24 giờ qua (từ 6 giờ ng&agrave;y 4/12 đến 6 giờ ng&agrave;y 5/12), Nghệ An ghi nhận 100 ca mắc Covid-19 mới, trong đ&oacute; c&oacute; 9 ca cộng đồng, c&aacute;c trường hợp c&ograve;n lại nằm trong v&ugrave;ng phong tỏa hoặc đ&atilde; được c&aacute;ch ly từ trước.&nbsp;</p>\r\n\r\n<p>Cụ thể c&aacute;c trường hợp cộng đồng ở: Thị x&atilde; (TX) Th&aacute;i H&ograve;a 2, huyện Diễn Ch&acirc;u: 2, huyện Quỳnh Lưu: 2, huyện Nghĩa Đ&agrave;n: 1, huyện Y&ecirc;n Th&agrave;nh: 1. Sau khi ph&aacute;t hiện c&aacute;c ca bệnh, lực lượng chức năng tại nhiều địa phương đ&atilde; tiến h&agrave;nh phong tỏa nhiều khu d&acirc;n cư, tiến h&agrave;nh lấy mẫu x&eacute;t nghiệm, truy vết những trường hợp li&ecirc;n quan, tiến h&agrave;nh c&aacute;ch ly theo quy định.</p>\r\n\r\n<p>Được biết, trong c&aacute;c ca mắc Covid-19 mới theo thống k&ecirc; của cơ quan chức năng tỉnh Nghệ An th&igrave; c&oacute; 31 ca c&oacute; triệu chứng, 69 ca kh&ocirc;ng c&oacute; triệu chứng.</p>', 'http://127.0.0.1:8000/imageupload/1638692874-Không có triệu chứng, xét nghiệm nhiều người dương tính SARS-CoV-2.png', '2021-12-05 01:27:54', '2021-12-05 01:27:54'),
(5, 'Hàng không ngăn chặn nguy cơ lây lan biến chủng Omicron', '<p><strong>(Chinhphu.vn) - Cục H&agrave;ng kh&ocirc;ng Việt Nam vừa ra&nbsp;chỉ thị tăng cường ph&ograve;ng&nbsp;dịch COVID-19, ngăn chặn nguy cơ x&acirc;m nhập v&agrave; l&acirc;y lan của biến chủng mới Omicron&nbsp;v&agrave;o Việt Nam.</strong></p>\r\n\r\n<p>Cục H&agrave;ng kh&ocirc;ng Việt Nam y&ecirc;u cầu c&aacute;c cơ quan, đơn vị trong ng&agrave;nh h&agrave;ng kh&ocirc;ng khẩn trương tăng cường c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch theo y&ecirc;u cầu của Bộ Y tế&nbsp;v&agrave; Bộ Giao th&ocirc;ng vận tải (GTVT).</p>\r\n\r\n<p>C&aacute;c đơn vị cung cấp dịch vụ h&agrave;ng kh&ocirc;ng thực hiện nghi&ecirc;m việc x&eacute;t nghiệm SARS-CoV-2 theo quy định của Bộ Y tế về việc hướng dẫn x&eacute;t nghiệm SARS-CoV-2 đối với cơ sở sản xuất kinh doanh. Trường hợp ph&aacute;t hiện nh&acirc;n vi&ecirc;n bị nhiễm virus SARS-CoV-2, c&aacute;c đơn vị hoạt động tại cảng h&agrave;ng kh&ocirc;ng phải b&aacute;o c&aacute;o cơ quan y tế, ch&iacute;nh quyền địa phương để kịp thời xử l&yacute;; c&aacute;c nh&acirc;n vi&ecirc;n tiếp x&uacute;c gần (F1) phải được x&eacute;t nghiệm bằng phương ph&aacute;p PCR v&agrave; khai b&aacute;o y tế đầy đủ theo quy định.</p>\r\n\r\n<p>Cục trưởng H&agrave;ng kh&ocirc;ng cũng y&ecirc;u cầu c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng tăng cường kiểm so&aacute;t, gi&aacute;m s&aacute;t chặt chẽ h&agrave;nh kh&aacute;ch đến, đi qua c&aacute;c quốc gia tại Ch&acirc;u Phi hoặc c&aacute;c quốc gia c&oacute; biến chủng Omicron nhập cảnh v&agrave;o Việt Nam để ngăn chặn nguy cơ x&acirc;m nhập v&agrave; l&acirc;y lan của biến thể n&agrave;y.</p>\r\n\r\n<p>Cảng vụ h&agrave;ng kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm b&aacute;o c&aacute;o c&aacute;c trường hợp h&agrave;nh kh&aacute;ch đến, đi qua c&aacute;c quốc gia tại ch&acirc;u Phi hoặc c&aacute;c quốc gia c&oacute; biến chủng Omicron nhập cảnh v&agrave;o Việt Nam để Cục H&agrave;ng kh&ocirc;ng Việt Nam b&aacute;o c&aacute;o Bộ Y tế, Bộ GTVT xin &yacute; kiến chỉ đạo đối với c&aacute;c đối tượng h&agrave;nh kh&aacute;ch n&agrave;y.</p>\r\n\r\n<p>Trước đ&oacute;, Cục H&agrave;ng kh&ocirc;ng Việt Nam đ&atilde; đề nghị Bộ GTVT b&aacute;o c&aacute;o Thủ tướng cho ph&eacute;p kh&ocirc;ng thực hiện c&aacute;c chuyến bay, bao gồm cả chuyến bay cứu trợ từ 10 quốc gia ch&acirc;u Phi (Botswana, Eswatini, Lesotho, Mozambique, Namibia, Nam Phi, Zimbabwe, Malawi, Angola v&agrave; Zambia) đến Việt Nam; cấm nhập cảnh đối với h&agrave;nh kh&aacute;ch c&oacute; lịch sử đi qua c&aacute;c quốc gia n&agrave;y trong v&ograve;ng 30 ng&agrave;y trước khi v&agrave;o Việt Nam.</p>\r\n\r\n<p>Cục H&agrave;ng kh&ocirc;ng cũng đề nghị Bộ GTVT c&oacute; &yacute; kiến với Bộ Y tế để c&oacute; hướng dẫn cụ thể về kiểm so&aacute;t y tế đối với h&agrave;nh kh&aacute;ch đến từ một số quốc gia đ&atilde; xuất hiện Omicron như: H&agrave;n Quốc, Nhật Bản; kiến nghị Bộ Y tế tăng cường c&ocirc;ng t&aacute;c c&aacute;ch ly y tế, bảo đảm 100% h&agrave;nh kh&aacute;ch quốc tế đến từ c&aacute;c quốc gia đ&atilde; xuất hiện biến chủng Omicron phải c&aacute;ch ly y tế khi nhập cảnh v&agrave;o Việt Nam.</p>\r\n\r\n<p>C&oacute; &yacute; kiến v&agrave; đề nghị Bộ C&ocirc;ng an kiểm so&aacute;t chặt chẽ, kịp thời ph&aacute;t hiện kh&aacute;ch đến v&agrave; đi qua c&aacute;c nước đ&atilde; ph&aacute;t hiện ca bệnh nhiễm chủng mới Omicron nhập cảnh v&agrave;o Việt Nam qua cửa khẩu h&agrave;ng kh&ocirc;ng để th&ocirc;ng b&aacute;o kịp thời cho Bộ Y tế, cơ quan y tế của địa phương nhằm ngăn chặn nguy cơ x&acirc;m nhập v&agrave; l&acirc;y lan biến thể n&agrave;y v&agrave;o nước ta.</p>', 'http://127.0.0.1:8000/imageupload/1638692971-Hàng không ngăn chặn nguy cơ lây lan biến chủng Omicron.jpg', '2021-12-05 01:29:31', '2021-12-05 01:29:31'),
(6, 'Xuất cấp hơn 4880 tấn gạo hỗ trợ người dân 3 tỉnh gặp khó khăn do dịch COVID-19', '<p><strong>(Chinhphu.vn) - Ph&oacute; Thủ tướng Ch&iacute;nh phủ L&ecirc; Minh Kh&aacute;i đ&atilde; k&yacute; Quyết định số 2044/QĐ-TTg chỉ đạo Bộ T&agrave;i ch&iacute;nh xuất cấp kh&ocirc;ng thu tiền 4.880,295 tấn gạo từ nguồn dự trữ quốc gia cho c&aacute;c tỉnh H&ograve;a B&igrave;nh, H&agrave; Tĩnh, S&oacute;c Trăng để hỗ trợ người d&acirc;n gặp kh&oacute; khăn do thực hiện gi&atilde;n c&aacute;ch x&atilde; hội ph&ograve;ng, chống dịch COVID-19.</strong></p>\r\n\r\n<p>Cụ thể, hỗ trợ tỉnh H&ograve;a B&igrave;nh 54,78 tấn gạo; tỉnh H&agrave; Tĩnh 229,47 tấn gạo; tỉnh S&oacute;c Trăng 4.596,045 tấn gạo.</p>\r\n\r\n<p>Bộ T&agrave;i ch&iacute;nh, Bộ Lao động-Thương binh v&agrave; X&atilde; hội xử l&yacute; cụ thể theo quy định; chịu tr&aacute;ch nhiệm về th&ocirc;ng tin v&agrave; số liệu b&aacute;o c&aacute;o.</p>\r\n\r\n<p>UBND c&aacute;c tỉnh: H&ograve;a B&igrave;nh, H&agrave; Tĩnh, S&oacute;c Trăng chịu tr&aacute;ch nhiệm về t&iacute;nh ch&iacute;nh x&aacute;c của số liệu b&aacute;o c&aacute;o v&agrave; thực hiện hỗ trợ kịp thời, đ&uacute;ng đối tượng, định mức theo quy định v&agrave; ph&ugrave; hợp với c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch tại địa phương.</p>', 'http://127.0.0.1:8000/imageupload/1638693571-Xuất cấp hơn 4880 tấn gạo hỗ trợ người dân 3 tỉnh gặp khó khăn do dịch COVID-19.jpg', '2021-12-05 01:39:31', '2021-12-05 01:39:31'),
(9, 'Ngày 4/12: Cả nước ghi nhận 13.998 ca mắc COVID-19', '<p><strong>Bản tin dịch COVID-19 tối ng&agrave;y 4/12 của B&ocirc; Y tế cho biết t&iacute;nh từ 16h ng&agrave;y 3/12 đến 16h ng&agrave;y 4/12, tr&ecirc;n Hệ thống quốc gia quản l&yacute; ca bệnh COVID-19 ghi nhận 13.998 ca mắc mới tại 57 tỉnh, th&agrave;nh phố.</strong></p>\r\n\r\n<p>Trong số 13.998 ca mắc mới, c&oacute; 5 ca nhập cảnh. Số ca mắc cộng đồng trong ng&agrave;y l&agrave; 8.402 trường hợp.</p>\r\n\r\n<p>C&aacute;c tỉnh, th&agrave;nh phố ghi nhận ca mắc mới như sau: TPHCM (1.636), Cần Thơ (998), T&acirc;y Ninh (787), Bến Tre (762), B&igrave;nh Thuận (626), Đồng Th&aacute;p (624), B&agrave; Rịa - Vũng T&agrave;u (620), C&agrave; Mau (568), Bạc Li&ecirc;u (565), B&igrave;nh Phước (562), Vĩnh Long (552), Ki&ecirc;n Giang (498), Kh&aacute;nh H&ograve;a (467), H&agrave; Nội (455), Đồng Nai (433).</p>\r\n\r\n<p>Thừa Thi&ecirc;n- Huế (335), An Giang (319), B&igrave;nh Dương (319), Tr&agrave; Vinh (301), Hậu Giang (288), Tiền Giang (209), B&igrave;nh Định (203), Gia Lai (180), H&agrave; Giang (140), Bắc Ninh (119), Đắk N&ocirc;ng (116), Đ&agrave; Nẵng (104), Thanh H&oacute;a (103).</p>\r\n\r\n<p>Long An (91), Th&aacute;i Nguy&ecirc;n (82), Hải Ph&ograve;ng (81), Ninh Thuận (76), Hưng Y&ecirc;n (65), Nghệ An (61), Quảng Nam (59), Hải Dương (55), Ph&uacute; Y&ecirc;n (52), Ph&uacute; Thọ (49), Vĩnh Ph&uacute;c (44), Đắk Lắk (42), Quảng Ng&atilde;i (41), Y&ecirc;n B&aacute;i (40), Nam Định (39), Quảng Trị (34), Th&aacute;i B&igrave;nh (27), Quảng B&igrave;nh (25), Tuy&ecirc;n Quang (25), H&agrave; Tĩnh (21), H&ograve;a B&igrave;nh (20), Quảng Ninh (20), Bắc Giang (20), L&agrave;o Cai (11), H&agrave; Nam (8 ), Cao Bằng (8 ), Ninh B&igrave;nh (6), Sơn La (1), Bắc Kạn (1).</p>\r\n\r\n<p>Như vậy đến nay, cả nước c&oacute; tổng cộng&nbsp;<strong>1.294.778</strong>&nbsp;ca mắc COVID-19.</p>\r\n\r\n<p>Trong ng&agrave;y, đ&atilde; c&oacute; 1.107 người được c&ocirc;ng bố khỏi bệnh trong ng&agrave;y, n&acirc;ng số người khỏi bệnh đến nay l&agrave;&nbsp;<strong>1.007.566</strong>&nbsp;trường hợp.</p>\r\n\r\n<p>Số bệnh nh&acirc;n tử vong từ 17h30 ng&agrave;y 3/12 đến 17h30 ng&agrave;y 4/12 l&agrave; 203 trường hợp.</p>\r\n\r\n<p>Cụ thể, tại TPHCM ghi nhận 75 ca, trong đ&oacute; c&oacute; 11 ca từ c&aacute;c tỉnh chuyển đến gồm: Long An (6), Bến Tre (1), Đồng Nai (1), Đồng Th&aacute;p (1), Hậu Giang (1), Tiền Giang (1).</p>\r\n\r\n<p>Số ca tử vong tại c&aacute;c tỉnh, th&agrave;nh phố kh&aacute;c: An Giang (20), B&igrave;nh Dương (18), Cần Thơ (15), Đồng Nai (13), Tiền Giang (10), Long (7), Ki&ecirc;n Giang (7), S&oacute;c Trăng (5), Đồng Th&aacute;p (5), Vĩnh Long (5), Bạc Li&ecirc;u (5), B&igrave;nh Thuận (4), Kh&aacute;nh H&ograve;a (3), B&agrave; Rịa - Vũng T&agrave;u (2), Hậu Giang (2), Quảng Ng&atilde;i (2), Tr&agrave; Vinh (2), Quảng Ninh (1), Đắk Lắk (1), B&igrave;nh Phước (1).</p>\r\n\r\n<p>Như vậy đến nay, cả nước đ&atilde; c&oacute;&nbsp;<strong>26.061</strong>&nbsp;trường hợp tử vong v&igrave; COVID-19.</p>\r\n\r\n<p>Về ti&ecirc;m vaccine ph&ograve;ng COVID-19, đến nay, cả nước đ&atilde; ti&ecirc;m được gần 127 triệu liều trong đ&oacute; ti&ecirc;m 1 mũi l&agrave; hơn 73 triệu, ti&ecirc;m mũi 2 l&agrave; gần 54 triệu liều.</p>\r\n\r\n<p>Theo Bộ Y tế, đến nay đ&atilde; c&oacute; 42 tỉnh, th&agrave;nh phố triển khai ti&ecirc;m vaccine cho trẻ em độ tuổi từ 12-17 với hơn 4,888 triệu liều. Trong đ&oacute; c&oacute; hơn 3,980 triệu liều mũi 1 v&agrave; hơn 908.000 liều mũi 2.</p>', 'http://127.0.0.1:8000/imageupload/9c3e179451f0e206fd2ed4a732b9194f-news.png', '2021-12-05 01:50:31', '2021-12-05 01:50:31'),
(10, 'Cách ly F0 tại nhà: Điều trị sớm nhất, nhanh nhất', '<p><strong>UBND th&agrave;nh phố H&agrave; Nội vừa ban h&agrave;nh Phương &aacute;n số 276/PA-UBND ng&agrave;y 2/12/2021 về c&aacute;ch ly, quản l&yacute;, theo d&otilde;i, kh&aacute;m v&agrave; điều trị tại nh&agrave; đối với người nhiễm COVID-19 tr&ecirc;n địa b&agrave;n Th&agrave;nh phố.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phương &aacute;n nhằm tạo điều kiện thuận lợi cho người nhiễm COVID-19 được tiếp cận sớm nhất, nhanh nhất với dịch vụ y tế, chăm s&oacute;c to&agrave;n diện về thể chất, tinh thần cũng như vật chất cho người bệnh; n&acirc;ng cao nhận thức, &yacute; thức, th&aacute;i độ v&agrave; tr&aacute;ch nhiệm của người d&acirc;n về ph&ograve;ng, chống dịch COVID-19 đối với x&atilde; hội; người nhiễm COVID-19 được c&aacute;ch ly, quản l&yacute;, theo d&otilde;i, kh&aacute;m v&agrave; điều trị tại nh&agrave; theo quy định của Bộ Y tế.</p>\r\n\r\n<p>Đối tượng quản l&yacute; tại nh&agrave; l&agrave; người nhiễm COVID-19 (được khẳng định dương t&iacute;nh bằng x&eacute;t nghiệm RT-PCR hoặc test nhanh kh&aacute;ng nguy&ecirc;n) kh&ocirc;ng c&oacute; triệu chứng l&acirc;m s&agrave;ng, hoặc c&oacute; triệu chứng l&acirc;m s&agrave;ng ở mức độ nhẹ như: Sốt, ho khan, đau họng, nghẹt mũi, mệt mỏi, đau đầu, đau mỏi cơ, t&ecirc; lưỡi.</p>\r\n\r\n<p>Người nhiễm kh&ocirc;ng c&oacute; c&aacute;c dấu hiệu của vi&ecirc;m phổi hoặc thiếu oxy, nhịp thở 20 lần/ph&uacute;t, SpO2&gt;97% khi thở kh&iacute; trời; kh&ocirc;ng c&oacute; thở bất thường như thở r&ecirc;n, r&uacute;t l&otilde;m lồng ngực, phập phồng c&aacute;nh mũi, thở kh&ograve; kh&egrave;, thở r&iacute;t ở th&igrave; h&iacute;t v&agrave;o.</p>\r\n\r\n<p>Độ tuổi người nhiễm gồm: Trẻ em tr&ecirc;n 3 th&aacute;ng tuổi, người lớn dưới 49 tuổi v&agrave; chưa ph&aacute;t hiện bệnh l&yacute; nền, đ&atilde; ti&ecirc;m đủ liều vaccine ph&ograve;ng COVID-19, sức khỏe chưa c&oacute; dấu hiệu bất thường, kh&ocirc;ng mang thai.</p>\r\n\r\n<p>C&aacute;c điều kiện về cơ sở vật chất, trang thiết bị, y&ecirc;u cầu đối với người c&aacute;ch ly y tế tại nh&agrave;, người ở c&ugrave;ng nh&agrave;, c&aacute;n bộ y tế v&agrave; c&aacute;c đơn vị li&ecirc;n quan thực hiện theo quy định của Bộ Y tế. Trưởng ban chỉ đạo ph&ograve;ng, chống dịch COVID-19 quận, huyện, thị x&atilde; căn cứ đề xuất của gi&aacute;m đốc trung t&acirc;m Y tế giao nhiệm vụ cho trưởng ban chỉ đạo ph&ograve;ng, chống dịch COVID-19&nbsp;x&atilde;, phường, thị trấn ban h&agrave;nh quyết định &aacute;p dụng biện ph&aacute;p c&aacute;ch ly y tế, quản l&yacute;, điều trị người nhiễm tại nh&agrave; v&agrave; cấp giấy x&aacute;c nhận đ&atilde; ho&agrave;n th&agrave;nh c&aacute;ch ly y tế đối với người nhiễm COVID-19 sau khi đ&atilde; kiểm tra, x&aacute;c nhận đảm bảo đủ điều kiện c&aacute;ch ly y tế tại nh&agrave;.</p>\r\n\r\n<p>Khi người nhiễm COVID-19 (F0) c&oacute; nguyện vọng được c&aacute;ch ly y tế tại nh&agrave; phải c&oacute; đơn đăng k&yacute; gửi ban chỉ đạo ph&ograve;ng, chống dịch x&atilde;, phường, thị trấn tại nơi cư tr&uacute;; qua qu&aacute; tr&igrave;nh thẩm định, ban chỉ đạo ph&ograve;ng, chống dịch x&atilde;, phường, thị trấn ban h&agrave;nh quyết định c&aacute;ch ly y tế tại nh&agrave; đối với c&aacute;c trường hợp F0.</p>\r\n\r\n<p><strong>Quản l&yacute; chặt chẽ, tu&acirc;n thủ nghi&ecirc;m ngặt</strong></p>\r\n\r\n<p>Tr&aacute;ch nhiệm quản l&yacute; người nhiễm COVID-19 tại nh&agrave; thuộc về Ban chỉ đạo ph&ograve;ng, chống dịch COVID-19 quận, huyện, thị x&atilde;, x&atilde;, phường, thị trấn; trạm y tế x&atilde;, phường, thị trấn; trạm y tế lưu động; trung t&acirc;m y tế quận, huyện, thị x&atilde;;&nbsp;ph&ograve;ng kh&aacute;m v&agrave; c&aacute;c cơ sở được ph&acirc;n c&ocirc;ng tham gia c&ocirc;ng t&aacute;c quản l&yacute; người nhiễm COVID-19 tại nh&agrave;; nh&acirc;n vi&ecirc;n tham gia c&ocirc;ng t&aacute;c quản l&yacute; người nhiễm COVID-19 tại nh&agrave;.</p>\r\n\r\n<p>Ban h&agrave;nh k&egrave;m theo phương &aacute;n, hướng dẫn tạm thời về quản l&yacute; người nhiễm COVID-19 tại nh&agrave; quy định, về cơ sở vật chất c&aacute;ch ly y tế tại nh&agrave; l&agrave; nh&agrave; ở ri&ecirc;ng lẻ; căn hộ trong khu tập thể, khu chung cư. Trước cửa nh&agrave; c&oacute; biển cảnh b&aacute;o nền đỏ, chữ v&agrave;ng: &ldquo;Địa điểm c&aacute;ch ly y tế ph&ograve;ng,&nbsp;chống dịch COVID-19&quot;; phải c&oacute; ph&ograve;ng c&aacute;ch ly ri&ecirc;ng, kh&eacute;p k&iacute;n v&agrave; t&aacute;ch biệt với khu sinh hoạt chung của gia đ&igrave;nh; ph&ograve;ng c&aacute;ch ly phải đ&aacute;p ứng c&aacute;c y&ecirc;u cầu phải c&oacute; nh&agrave; vệ sinh, nh&agrave; tắm d&ugrave;ng ri&ecirc;ng, c&oacute; đủ dụng cụ vệ sinh c&aacute; nh&acirc;n, x&agrave; ph&ograve;ng rửa tay, nước sạch, dung dịch s&aacute;t khuẩn tay chứa &iacute;t nhất 60% cồn; c&oacute; dụng cụ đo th&acirc;n nhiệt c&aacute; nh&acirc;n trong ph&ograve;ng; kh&ocirc;ng được d&ugrave;ng điều h&ograve;a trung t&acirc;m, c&oacute; thể d&ugrave;ng điều h&ograve;a ri&ecirc;ng; bảo đảm th&ocirc;ng tho&aacute;ng kh&iacute;, tốt nhất n&ecirc;n thường xuy&ecirc;n mở cửa sổ...</p>\r\n\r\n<p>Người thực hiện c&aacute;ch ly y tế tại nh&agrave; phải chấp h&agrave;nh nghi&ecirc;m c&aacute;c quy định về thời gian c&aacute;ch ly y tế tại nh&agrave;, c&oacute; cam kết với ch&iacute;nh quyền địa phương; kh&ocirc;ng ra khỏi ph&ograve;ng c&aacute;ch ly trong suốt thời gian c&aacute;ch ly, kh&ocirc;ng tiếp x&uacute;c với người trong gia đ&igrave;nh cũng như những người kh&aacute;c; lu&ocirc;n thực hiện th&ocirc;ng điệp &ldquo;5K&rdquo; v&agrave; c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch theo quy định; kh&ocirc;ng d&ugrave;ng chung c&aacute;c đồ d&ugrave;ng, vật dụng c&aacute; nh&acirc;n với người trong c&ugrave;ng gia đ&igrave;nh. Sau khi hết thời gian c&aacute;ch ly, phải thực hiện tiếp việc tự theo d&otilde;i sức khỏe tại nh&agrave; theo quy định; phải được lấy mẫu x&eacute;t nghiệm SARS-CoV-2 &iacute;t nhất 3 lần v&agrave;o ng&agrave;y thứ nhất, ng&agrave;y thứ 7 v&agrave; ng&agrave;y thứ 14 kể từ khi bắt đầu c&aacute;ch ly&hellip;</p>\r\n\r\n<p>Y&ecirc;u cầu với người ở c&ugrave;ng nh&agrave; với F0 c&aacute;ch ly tại nh&agrave; kh&ocirc;ng tiếp x&uacute;c với người c&aacute;ch ly, hạn chế đi ra ngo&agrave;i khi kh&ocirc;ng cần thiết, thực hiện th&ocirc;ng điệp &ldquo;5K&rdquo; v&agrave; phải ghi ch&eacute;p đầy đủ c&aacute;c mốc tiếp x&uacute;c trong thời gian c&oacute; người c&aacute;ch ly tại nh&agrave;; kh&ocirc;ng cho người kh&aacute;c v&agrave;o nh&agrave; trong suốt thời gian thực hiện c&aacute;ch ly y tế (trừ người ở c&ugrave;ng nh&agrave;, nh&acirc;n vi&ecirc;n y tế v&agrave; người c&oacute; thẩm quyền gi&aacute;m s&aacute;t c&aacute;ch ly y tế); tất cả người ở c&ugrave;ng nh&agrave; phải được lấy mẫu gộp x&eacute;t nghiệm SARS-CoV-2 &iacute;t nhất 3 lần v&agrave;o ng&agrave;y thứ nhất, ng&agrave;y thứ 7 v&agrave; ng&agrave;y thứ 14 kể từ khi người c&aacute;ch ly bắt đầu c&aacute;ch ly...</p>\r\n\r\n<p>Đối với cơ quan quản l&yacute; người nhiễm tại nh&agrave; (Trạm Y tế lưu động) hướng dẫn người nhiễm COVID-19 thực hiện tự theo d&otilde;i sức khỏe v&agrave; điền th&ocirc;ng tin v&agrave;o phiếu theo d&otilde;i sức khỏe, 2 lần/ng&agrave;y v&agrave;o buổi s&aacute;ng v&agrave; buổi chiều hoặc khi c&oacute; c&aacute;c dấu hiệu, triệu chứng cần chuyển viện cấp cứu, điều trị theo quy định.</p>', 'http://127.0.0.1:8000/imageupload/c46f6822c0583e9291faff6bea725e8a-news.jpg', '2021-12-05 01:53:30', '2021-12-05 01:53:30'),
(11, 'Đà Nẵng tăng cường công tác phòng, chống dịch trước nguy cơ bùng phát', '<p><strong>TP. Đ&agrave; Nẵng sẽ thực hiện 3 trụ cột trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch: C&aacute;ch ly nhanh, hẹp nhất; x&eacute;t nghiệm thần tốc, hợp l&yacute;, hiệu quả, tiết kiệm; điều trị t&iacute;ch cực từ sớm, từ xa, g&oacute;p phần giảm chuyển nặng, giảm tử vong.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tối 3/12, Th&agrave;nh uỷ Đ&agrave; Nẵng đ&atilde; c&oacute; c&ocirc;ng văn về việc tăng cường thực hiện biện ph&aacute;p &ldquo;Th&iacute;ch ứng an to&agrave;n, linh hoạt, kiểm so&aacute;t hiệu quả dịch COVID-19.</p>\r\n\r\n<p>&Ocirc;ng Lương Nguyễn Minh Triết, Ph&oacute; B&iacute; thư Th&agrave;nh uỷ Đ&agrave; Nẵng cho biết, thời gian qua cả hệ thống ch&iacute;nh trị th&agrave;nh phố đ&atilde; tập trung triển khai thực hiện quyết liệt c&aacute;c chỉ đạo của Trung ương, th&agrave;nh phố về ph&ograve;ng, chống dịch COVID-19. Nhờ đ&oacute;, dịch bệnh cơ bản được kiểm so&aacute;t, Th&agrave;nh phố từng bước thực hiện kh&aacute; hiệu quả chủ trương &ldquo;Th&iacute;ch ứng an to&agrave;n, linh hoạt, kiểm so&aacute;t hiệu quả dịch COVID-19&rdquo; theo tinh thần Nghị quyết số 128 của Ch&iacute;nh phủ v&agrave; Quyết định số 4800 của Bộ Y tế.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, từ đầu th&aacute;ng 11 đến nay, t&igrave;nh h&igrave;nh dịch COVID-19 tr&ecirc;n địa b&agrave;n diễn biến phức tạp, c&oacute; nguy cơ b&ugrave;ng ph&aacute;t đợt dịch mới. Một số địa phương, đơn vị v&agrave; người d&acirc;n c&oacute; sự chủ quan, lơi lỏng trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch; việc truy vết, khoanh v&ugrave;ng, x&eacute;t nghiệm, c&aacute;ch ly chưa thật sự tốt, c&ograve;n t&igrave;nh trạng bỏ s&oacute;t F1 v&agrave; chậm xử l&yacute; c&aacute;c ổ dịch; c&oacute; sự l&uacute;ng t&uacute;ng trong việc thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch trong c&aacute;c cơ sở sản xuất, nhất l&agrave; khi ph&aacute;t hiện ca F0...</p>\r\n\r\n<p>Trước diễn biến phức tạp, nhất l&agrave; khi thế giới đ&atilde; ghi nhận biến chủng mới Omicron, c&oacute; nguy cơ b&ugrave;ng ph&aacute;t đợt dịch mới, Thường trực Th&agrave;nh ủy đề nghị c&aacute;c địa phương, đơn vị tiếp tục thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch COVID-19 một c&aacute;ch quyết liệt, chủ động hơn, trong đ&oacute;: Tập trung triển khai thực hiện nghi&ecirc;m t&uacute;c, quyết liệt, chủ động v&agrave; linh hoạt c&aacute;c chủ trương, chỉ đạo của Ban B&iacute; thư, Ch&iacute;nh phủ, Thủ tướng Ch&iacute;nh phủ, Th&agrave;nh ủy, Ban Chỉ đạo Ph&ograve;ng, chống dịch COVID-19 th&agrave;nh phố về c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch COVID-19, với quan điểm: Ph&ograve;ng, chống dịch l&agrave; nhiệm vụ thường xuy&ecirc;n, l&acirc;u d&agrave;i; coi ph&ograve;ng, chống dịch l&agrave; nhiệm vụ ưu ti&ecirc;n h&agrave;ng đầu, bảo vệ sức khoẻ v&agrave; an to&agrave;n t&iacute;nh mạng của người d&acirc;n l&agrave; tr&ecirc;n hết, trước hết; ph&aacute;t huy vai tr&ograve; của người d&acirc;n l&agrave; trung t&acirc;m, l&agrave; chủ thể trong ph&ograve;ng, chống dịch; &ldquo;An to&agrave;n mới sản xuất, sản xuất phải an to&agrave;n&rdquo;.</p>\r\n\r\n<p>Tiếp tục ph&aacute;t huy sức mạnh, sự v&agrave;o cuộc của cả hệ thống ch&iacute;nh trị v&agrave; người d&acirc;n tr&ecirc;n địa b&agrave;n trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch; ph&acirc;n c&ocirc;ng nhiệm vụ r&otilde; r&agrave;ng giữa c&aacute;c cơ quan, địa phương, đơn vị li&ecirc;n quan, nhất l&agrave; khi xảy ra dịch bệnh tr&ecirc;n địa b&agrave;n quản l&yacute;; ph&aacute;t huy vai tr&ograve; của c&aacute;c Tổ COVID cộng đồng, nhất l&agrave; việc gi&aacute;m s&aacute;t c&aacute;c trường hợp về từ địa phương kh&aacute;c, c&aacute;c trường hợp c&aacute;ch ly y tế, chữa trị COVID-19 tại nh&agrave;.</p>\r\n\r\n<p>Thực hiện tốt 3 trụ cột trong c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch: C&aacute;ch ly nhanh, hẹp nhất, nghi&ecirc;m ngặt nhất c&oacute; thể; x&eacute;t nghiệm thần tốc, nhanh hơn tốc độ l&acirc;y lan của dịch, đảm bảo khoa học, hợp l&yacute;, hiệu quả, tiết kiệm; điều trị t&iacute;ch cực từ sớm, từ xa, ngay tại cơ sở, g&oacute;p phần giảm chuyển nặng, giảm tử vong.</p>\r\n\r\n<p>Ban Chỉ đạo Ph&ograve;ng, chống dịch COVID-19, Ban c&aacute;n sự đảng UBND Th&agrave;nh phố chỉ đạo: Tổng kết, đ&aacute;nh gi&aacute; c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch COVID-19 đợt dịch thứ 4; b&aacute;m s&aacute;t c&aacute;c chỉ đạo của Trung ương để khẩn trương x&acirc;y dựng c&aacute;c kế hoạch, kịch bản ph&ograve;ng, chống dịch COVID-19 trong năm 2022 v&agrave; c&aacute;c năm tiếp theo; từng bước ổn định, kh&ocirc;i phục v&agrave; ph&aacute;t triển kinh tế - x&atilde; hội, sản xuất kinh doanh, đảm bảo an sinh x&atilde; hội v&agrave; an to&agrave;n ph&ograve;ng, chống dịch; thực hiện mục ti&ecirc;u k&eacute;p, tập trung phục hồi kinh tế, giải quyết việc l&agrave;m, đảm bảo an sinh x&atilde; hội gắn với ph&ograve;ng, chống dịch.</p>\r\n\r\n<p>Tiếp tục đẩy nhanh tiến độ ti&ecirc;m vaccine ph&ograve;ng COVID-19 cho trẻ em từ 12 tuổi trở l&ecirc;n v&agrave; việc trả mũi 2 cho người đ&atilde; ti&ecirc;m mũi 1; tăng cường tuy&ecirc;n truyền, đề nghị người d&acirc;n chưa ti&ecirc;m vaccine đăng k&yacute; v&agrave; sớm được ti&ecirc;m vaccine. X&acirc;y dựng kế hoạch để sẵn s&agrave;ng ti&ecirc;m mũi 3 khi Trung ương chỉ đạo thực hiện.</p>\r\n\r\n<p>Tiếp tục n&acirc;ng cao năng lực cho y tế cơ sở; đảm bảo c&ocirc;ng t&aacute;c cấp cứu, điều trị, hạn chế tử vong; trong đ&oacute;, lưu &yacute; kế hoạch, điều kiện để sẵn s&agrave;ng triển khai thiết lập cơ sở thu dung, điều trị v&agrave; kế hoạch bảo đảm số giường hồi sức cấp cứu (ICU) tại c&aacute;c cơ sở kh&aacute;m bệnh, chữa bệnh (bao gồm cả y tư nh&acirc;n), sẵn s&agrave;ng đ&aacute;p ứng t&igrave;nh h&igrave;nh dịch ở cấp độ cao nhất (cấp độ 4).</p>\r\n\r\n<p>Chỉ đạo c&aacute;c quận, huyện ho&agrave;n thiện kế hoạch thiết lập trạm y tế lưu động, tổ chăm s&oacute;c người nhiễm COVID-19 tại cộng đồng v&agrave; c&oacute; kế hoạch cung cấp &ocirc; xy y tế cho c&aacute;c trạm y tế x&atilde;, phường để đ&aacute;p ứng khi c&oacute; dịch xảy ra. Triển khai thực hiện c&oacute; hiệu quả việc th&iacute; điểm c&aacute;ch ly, chăm s&oacute;c, điều trị người nhiễm COVID-19 tại nh&agrave;/ nơi lưu tr&uacute;.</p>\r\n\r\n<p>Thường xuy&ecirc;n cập nhật cấp độ dịch của c&aacute;c phường, x&atilde;, quận, huyện; đ&aacute;nh gi&aacute; hiệu quả việc sử dụng c&aacute;c phần mềm, ứng dụng ph&ograve;ng, chống dịch, từ đ&oacute; đề xuất c&aacute;c giải ph&aacute;p để n&acirc;ng cao hiệu quả sử dụng trong thời gian đến.</p>\r\n\r\n<p>Y&ecirc;u cầu thực hiện nghi&ecirc;m t&uacute;c c&aacute;c quy định về ph&ograve;ng, chống dịch, nhất l&agrave; tại những nơi tập trung đ&ocirc;ng người, c&aacute;c cơ quan, nh&agrave; m&aacute;y, x&iacute; nghiệp, c&aacute;c chợ, si&ecirc;u thị, bệnh viện&hellip;; ch&uacute; trọng đảm bảo an to&agrave;n ph&ograve;ng, chống dịch tại trường học khi học sinh đi học trực tiếp.</p>\r\n\r\n<p>Tập trung kiểm tra phương &aacute;n ph&ograve;ng, chống dịch v&agrave; việc qu&eacute;t m&atilde; QRCode; ki&ecirc;n quyết xử l&yacute; nghi&ecirc;m c&aacute;c trường hợp vi phạm; tiếp tục thực hiện c&aacute;c ch&iacute;nh s&aacute;ch hỗ trợ doanh nghiệp, người d&acirc;n, nhất l&agrave; c&aacute;c đối tượng yếu thế để c&oacute; điều kiện phục hồi, ổn định sản xuất, sinh hoạt sau dịch bệnh.</p>\r\n\r\n<p>Chiều 3/12, Ban Chỉ đạo ph&ograve;ng, chống COVID-19 Th&agrave;nh phố cho biết, trong ng&agrave;y, Đ&agrave; Nẵng ghi nhận 119 ca mắc COVID-19, trong đ&oacute; c&oacute; 34 ca chưa c&aacute;ch ly.&nbsp;To&agrave;n th&agrave;nh phố đang thiết lập 193 điểm phong tỏa với 1.452 hộ (8.992 nh&acirc;n khẩu); duy tr&igrave; 18 cơ sở c&aacute;ch ly tập trung, thực hiện c&aacute;ch ly 1.324 người.</p>\r\n\r\n<p>T&iacute;nh từ ng&agrave;y 16/10 đến nay, Đ&agrave; Nẵng ghi nhận 1.390 ca mắc COVID-19.</p>', 'http://127.0.0.1:8000/imageupload/c45efa0cc2ce4d2ba474c2db45677d45-news.jpg', '2021-12-05 01:55:22', '2021-12-05 01:55:22'),
(12, 'Mổ ruột thừa cấp cứu cho bệnh nhân COVID-19', '<h2><strong>C&aacute;c b&aacute;c sĩ Bệnh viện Đa khoa tỉnh Bắc Giang vừa mổ cấp cứu cho một bệnh nh&acirc;n nhiễm COVID-19 được chẩn đo&aacute;n vi&ecirc;m ruột thừa cấp.</strong></h2>\r\n\r\n<p>Bệnh nh&acirc;n L.T.T., 25 tuổi, tr&uacute; tại Nghĩa Phương, Lục Nam, Bắc Giang nhập viện c&ugrave;ng chẩn đo&aacute;n dương t&iacute;nh với SARS-CoV-2. Sau 10 ng&agrave;y v&agrave;o điều trị tại bệnh viện, bệnh nh&acirc;n xuất hiện t&igrave;nh trạng đau bụng tr&ecirc;n rốn, kh&ocirc;ng sốt.</p>\r\n\r\n<p>Đến tối, bệnh nh&acirc;n đau tăng dần l&ecirc;n, đau từng cơn, lan xuống hố chậu phải, k&egrave;m theo n&ocirc;n, kh&ocirc;ng sốt v&agrave; được chẩn đo&aacute;n&nbsp;<a href=\"https://vtv.vn/viem-ruot-thua.html\" target=\"_blank\">vi&ecirc;m ruột thừa</a>&nbsp;cấp.</p>\r\n\r\n<p>Bệnh nh&acirc;n được chuyển v&agrave;o phẫu thuật cắt ruột thừa tại ph&ograve;ng &aacute;p lực &acirc;m trong khu điều trị bệnh nh&acirc;n COVID-19. Sau gần 1 giờ, ca mổ diễn ra th&agrave;nh c&ocirc;ng v&agrave; gi&uacute;p bệnh nh&acirc;n vượt qua t&igrave;nh trạng nguy kịch.</p>\r\n\r\n<p>Hiện tại, sau 2 ng&agrave;y phẫu thuật, bệnh nh&acirc;n đ&atilde; ổn định tiếp tục được điều trị tại Khoa Truyền nhiễm.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; ca mổ cấp cứu cắt ruột thừa thứ 2 cho bệnh nh&acirc;n nhiễm COVID-19 được thực hiện th&agrave;nh c&ocirc;ng ngay tại khu c&aacute;ch ly - Khoa Truyền nhiễm, Bệnh viện Đa khoa tỉnh Bắc Giang. Trước đ&oacute;, rất nhiều ca phẫu thuật cấp cứu đ&atilde; được diễn ra tại cả khu c&aacute;ch ly v&agrave; khu nghi nhiễm.</p>\r\n\r\n<p>Hiện tại, Khoa Truyền nhiễm, Bệnh viện Đa khoa tỉnh Bắc Giang đang điều trị cho 40 bệnh nh&acirc;n nhiễm COVID-19. Bệnh viện lu&ocirc;n lu&ocirc;n sẵn s&agrave;ng tiếp nhận v&agrave; điều trị bệnh nh&acirc;n COVID-19 cũng như chuẩn bị tốt c&aacute;c phương tiện cho c&aacute;c cuộc phẫu thuật cấp cứu để cứu sống bệnh nh&acirc;n ngay tại khu c&aacute;ch ly.</p>', 'http://127.0.0.1:8000/imageupload/1211e74ca64796629ab035d4bba916de-news.jpg', '2021-12-05 01:58:56', '2021-12-05 01:58:56'),
(13, 'Tăng cường nhân lực điều trị cho 5 tỉnh Miền Nam, rà soát tiêm chủng cho những người có nguy cơ cao', '<p><strong>Chiều ng&agrave;y&nbsp;06/12/2021, Bộ trưởng Bộ Y tế Nguyễn Thanh Long đ&atilde; chủ tr&igrave; họp trực tuyến với l&atilde;nh đạo c&aacute;c tỉnh đang c&oacute; ca mắc COVID-19, số ca tử vong gia tăng trong thời gian gần đ&acirc;y l&agrave; TP Cần Thơ, T&acirc;y Ninh, S&oacute;c Trăng, B&agrave; Rịa- Vũng T&agrave;u v&agrave; An Giang.</strong></p>\r\n\r\n<p>B&aacute;o c&aacute;o của TP Cần Thơ cho biết, số ca mắc thời gian gần đ&acirc;y đang gia tăng, hiện đ&atilde; tr&ecirc;n 30.000 ca; TP đang ở cấp độ dịch 3.</p>\r\n\r\n<p>Tại An Giang, số ca mắc COVID-19 đến nay của tỉnh l&agrave; 24.753 trường hợp, trong đ&oacute; số đang điều trị l&agrave; 5.284 ca. Tuy nhi&ecirc;n lũy kế số tử vong l&agrave; 468 bệnh nh&acirc;n (chiếm 1,89%), 75% bệnh nh&acirc;n tử vong chưa được ti&ecirc;m vaccine. To&agrave;n tỉnh c&oacute; 13 cơ sở thu dung điều trị với 4.570 giường bệnh. Người bệnh COVID-19 nặng v&agrave; nguy kịch được điều trị tại 4 bệnh viện tuyến tỉnh l&agrave; BVĐK&nbsp;Trung t&acirc;m An Giang, BVĐK khu vực tỉnh, BVĐK khu vực T&acirc;n Ch&acirc;u v&agrave; BV Sản Nhi.</p>\r\n\r\n<p>B&aacute;o c&aacute;o của T&acirc;y Ninh cho biết, đến ng&agrave;y 6/12/2021, tỉnh n&agrave;y ghi nhận 49.639 ca mắc COVID-19, đang điều trị 14.838 ca, trong số đ&oacute; c&oacute; 173 bệnh nh&acirc;n nặng, nguy kịch đang điều trị tại tầng 3;</p>\r\n\r\n<p>Tại S&oacute;c Trăng đến ng&agrave;y 6/12/2021&nbsp;ghi nhận 21.835 ca mắc COVID-19; cộng dồn 127 tử vong, trong số đ&oacute; c&oacute; 76% người chưa ti&ecirc;m vaccine ph&ograve;ng COVID-19;</p>\r\n\r\n<p>Tỉnh B&agrave; Rịa- Vũng T&agrave;u cho biết, hiện c&oacute; 3.766 ca COVID-19 đang điều trị tại c&aacute;c cơ sở thu dung, điều trị tr&ecirc;n địa b&agrave;n; 3.813 trường hợp F0 đang quản l&yacute;, theo d&otilde;i v&agrave; c&aacute;ch ly tại nh&agrave;. Đ&aacute;nh gi&aacute; về cấp độ dịch của tỉnh cho thấy hiện c&oacute; 7 đơn vị ở cấp độ 4; c&oacute; 33 đơn vị ở cấp độ 3.</p>\r\n\r\n<p>B&aacute;o c&aacute;o của 5 địa phương n&agrave;y đều cho biết, hiện tỷ lệ ti&ecirc;m vaccine ph&ograve;ng COVID-19 mũi 1 rất cao đều tr&ecirc;n 98%; mũi 2 tr&ecirc;n 80%. C&aacute;c tỉnh n&agrave;y cũng đ&atilde; ho&agrave;n th&agrave;nh ti&ecirc;m vaccine mũi 1 cho trẻ trong độ tuổi từ 12-17; đang triển khai ti&ecirc;m mũi 2.</p>\r\n\r\n<p>L&atilde;nh đạo ng&agrave;nh Y tế c&aacute;c địa phương tr&ecirc;n cũng th&ocirc;ng tin đang đẩy nhanh tiến độ ti&ecirc;m mũi 2, ti&ecirc;m v&eacute;t c&aacute;c trường hợp thuộc đối tượng ti&ecirc;m nhưng tr&igrave; ho&atilde;n.</p>\r\n\r\n<p>Tại cuộc họp c&aacute;c địa phương đề xuất Bộ Y tế chi viện th&ecirc;m nh&acirc;n lực từ c&aacute;c bệnh viện&nbsp;Trung ương để hỗ trợ c&ocirc;ng t&aacute;c điều trị; cấp th&ecirc;m vaccine để ti&ecirc;m mũi bổ sung v&agrave; thuốc kh&aacute;ng virus phục vụ điều trị F0 tại nh&agrave; c&oacute; kiểm so&aacute;t; hỗ trợ m&aacute;y thở&hellip;</p>\r\n\r\n<p>Về đề xuất tăng cường nh&acirc;n lực, Bộ trưởng Nguyễn Thanh Long y&ecirc;u cầu Cục Quản l&yacute; Kh&aacute;m chữa bệnh r&agrave; so&aacute;t ngay việc điều động nh&acirc;n lực từ c&aacute;c BV tuyến&nbsp;Trung ương theo Quyết định số 5500/QĐ-BYT của Bộ trưởng Bộ Y tế k&yacute; ban h&agrave;nh ng&agrave;y 30/11/2021 về việc ph&acirc;n c&ocirc;ng c&aacute;c BV tuyến tr&ecirc;n trực tiếp hỗ trợ chuy&ecirc;n m&ocirc;n trong quản l&yacute;, điều trị COVID-19 tại TP HCM v&agrave; 10 tỉnh ph&iacute;a Nam.</p>\r\n\r\n<p>Bộ trưởng y&ecirc;u cầu c&aacute;c bệnh viện trong danh s&aacute;ch ph&acirc;n c&ocirc;ng phải nhanh ch&oacute;ng đưa th&ecirc;m nh&acirc;n lực v&agrave;o c&aacute;c tỉnh n&agrave;y để đảm bảo phối hợp chặt chẽ với địa phương trong c&ocirc;ng t&aacute;c ph&ograve;ng,&nbsp;chống dịch. Bệnh viện Bạch Mai, trong ng&agrave;y mai (7/12/2021) phải cử th&ecirc;m 1 đo&agrave;n c&aacute;n bộ y tế nữa đến An Giang; BV Việt Đức v&agrave;o hỗ trợ B&agrave; Rịa- Vũng T&agrave;u; Bệnh viện E v&agrave;o hỗ trợ T&acirc;y Ninh, Bệnh viện Nội tiết Trung ương v&agrave;o hỗ trợ tỉnh S&oacute;c Trăng.</p>\r\n\r\n<p>Ri&ecirc;ng TP. Cần Thơ, Bộ trưởng Nguyễn Thanh Long y&ecirc;u cầu Bệnh viện Đa khoa Trung ương Cần Thơ tiếp tục hỗ trợ th&agrave;nh phố trong c&ocirc;ng t&aacute;c điều trị.</p>\r\n\r\n<p>Bộ trưởng chỉ đạo c&aacute;c Bệnh viện tuyến Trung ương phải cử chuy&ecirc;n gia hồi sức c&oacute; kinh nghiệm đến c&aacute;c tỉnh để hỗ trợ điều trị, đồng thời ch&uacute; trọng triển khai tập huấn, n&acirc;ng cao năng lực điều trị cho y b&aacute;c sĩ tại chỗ.</p>\r\n\r\n<p><strong><em>R&agrave; so&aacute;t ti&ecirc;m vaccine ph&ograve;ng COVID-19 cho người cao tuổi, c&oacute; bệnh nền</em></strong></p>\r\n\r\n<p>Tại cuộc họp, Bộ trưởng Nguyễn Thanh Long nhấn mạnh: &ldquo;Thực tế cho thấy ch&uacute;ng ta sẽ tiếp tục phải đối mặt với t&igrave;nh trạng gia tăng ca nhiễm COVID-19 v&igrave; tại nhiều địa phương vẫn c&ograve;n t&igrave;nh trạng người d&acirc;n kh&ocirc;ng thực hiện nghi&ecirc;m c&aacute;c khuyến c&aacute;o của ng&agrave;nh Y tế về ph&ograve;ng, chống dịch, lơ l&agrave;, chủ quan... Khi số ca mắc gia tăng, đương nhi&ecirc;n bệnh nh&acirc;n nặng sẽ tăng v&agrave; con số tử vong cũng sẽ c&oacute; thể tăng. Do vậy cần nỗ lực để giảm số ca tử vong&rdquo;</p>\r\n\r\n<p>Bộ trưởng Bộ Y tế cũng lưu &yacute; c&aacute;c địa phương v&igrave; số ca nhiễm tăng n&ecirc;n trong qu&aacute; tr&igrave;nh triển khai Nghị quyết 128, đối với những nơi thuộc cấp độ dịch 3 v&agrave; 4 phải thực hiện nghi&ecirc;m, triệt để c&aacute;c biện ph&aacute;p ph&ograve;ng,&nbsp;chống dịch, nhất l&agrave; c&aacute;c khu vực thuộc cấp độ 4. &ldquo;C&oacute; như thế ch&uacute;ng ta mới kiểm so&aacute;t được số mắc&rdquo;- Bộ trưởng n&oacute;i.</p>\r\n\r\n<p>Về c&ocirc;ng t&aacute;c ti&ecirc;m vaccine ph&ograve;ng COVID-19, Bộ Y tế sẽ tiếp tục ph&acirc;n bổ vaccine phục vụ nhu cầu ti&ecirc;m chủng của c&aacute;c địa phương, tuy nhi&ecirc;n Bộ trưởng Nguyễn Thanh Long nhắc c&aacute;c tỉnh, th&agrave;nh phố phải thực hiện chiến dịch &ldquo;đi từng ng&otilde;, g&otilde; từng nh&agrave;&rdquo; lập danh s&aacute;ch tất cả những người cao tuổi, người c&oacute; bệnh l&yacute; nền chưa ti&ecirc;m vaccine để ti&ecirc;m chủng cho nh&oacute;m đối tượng n&agrave;y.</p>\r\n\r\n<p>Nhấn mạnh nhiệm vụ n&agrave;y kh&ocirc;ng chỉ của ri&ecirc;ng ng&agrave;nh&nbsp;Y&nbsp;tế, l&atilde;nh đạo Bộ Y tế đề nghị c&aacute;c đồng ch&iacute; B&iacute; thư Th&agrave;nh uỷ, Tỉnh uỷ, Chủ tịch UBND c&aacute;c địa phương huy động cả hệ thống ch&iacute;nh trị cấp cơ sở r&agrave; so&aacute;t những người c&oacute; nguy cơ cao nhưng chưa ti&ecirc;m để ng&agrave;nh Y tế triển khai ti&ecirc;m. &ldquo;C&oacute; thể tổ chức c&aacute;c điểm ti&ecirc;m lưu động, đến ti&ecirc;m tại nh&agrave; cho c&aacute;c trường hợp nguy cơ cao để bảo vệ họ khỏi nguy cơ bị diễn biến nặng n&ecirc;u mắc COVID-19&rdquo;- Bộ trưởng Nguyễn Thanh Long b&agrave;y tỏ.</p>\r\n\r\n<p><strong><em>Quản l&yacute; chặt chẽ bệnh nh&acirc;n COVID-19, chuyển tuyến kịp thời</em></strong></p>\r\n\r\n<p>Trong c&ocirc;ng t&aacute;c điều trị, cần ph&acirc;n loại bệnh nh&acirc;n, người c&oacute; nguy cơ, tu&acirc;n thủ điều trị theo th&aacute;p 3 tầng, c&oacute; sự li&ecirc;n th&ocirc;ng chặt chẽ với nhau giữa c&aacute;c tầng, c&oacute; khoảng giữa tầng 1 l&agrave; 1+, tầng 2 l&agrave; 2+ v&agrave; tầng để quản l&yacute;, gi&aacute;m s&aacute;t chặt chẽ ca bệnh, chuyển tuyến kịp thời.</p>\r\n\r\n<p>Cũng về điều trị, một vấn đề được GS.TS Nguyễn Thanh Long lưu &yacute; c&aacute;c địa phương l&agrave; quản l&yacute;, theo d&otilde;i v&agrave; chăm s&oacute;c F0 tại nh&agrave; phải chặt chẽ, khoa học v&agrave; lu&ocirc;n đảm bảo &ldquo;y tế phải gần d&acirc;n nhất&rdquo; th&ocirc;ng qua việc thiết lập c&aacute;c trạm y tế, tổ y tế lưu động. Mỗi x&atilde;, phường c&oacute; thể c&oacute; nhiều trạm y tế, tổ y tế lưu động để quản l&yacute; chặt chẽ danh s&aacute;ch c&aacute;c ca bệnh nguy cơ cao nhằm sẵn s&agrave;ng chuyển tuyến kịp thời.</p>', 'http://127.0.0.1:8000/imageupload/335efb0e0a352e851313cd867f717534-news.jpg', '2021-12-06 18:42:33', '2021-12-06 23:28:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2d8bd5150cb3cdb05ad6cb3c0ec9e1b6075875fcb9f037d56673e9e779171271db3d782387f0ec7c', 1, 1, 'App', '[]', 0, '2021-11-26 23:48:20', '2021-11-26 23:48:20', '2022-11-27 06:48:20'),
('66a10894c6c470e13ffc374c20ace64f2f6f4269447d1d1e094f052ebc73642168fafe2a22ba17c3', 1, 1, 'App', '[]', 0, '2021-12-01 19:21:23', '2021-12-01 19:21:23', '2022-12-02 02:21:23'),
('8fc450690b51fee593688561d2a08cd345f3298d70f1418f3f6e1c72cc235807f1d0db409defea00', 1, 1, 'App', '[]', 0, '2021-12-05 02:32:29', '2021-12-05 02:32:29', '2022-12-05 09:32:29'),
('9e8aebb27301fd3b4056e1ed1bdd5429b372c12bcc8d7c05aea0f785133b41fc4f618669f80ab3e4', 1, 1, 'App', '[]', 0, '2021-11-28 20:10:16', '2021-11-28 20:10:16', '2022-11-29 03:10:16'),
('b9da55aff2adb99e05b61e6ccf1700c8a5f1f951bcdd36a5b3f1ac587fadd3bd876336dac89aaf2c', 1, 1, 'App', '[]', 0, '2021-11-30 23:49:11', '2021-11-30 23:49:11', '2022-12-01 06:49:11'),
('c3c023bda4e9f5fb3cb7b93cff66a7425bee75943884fa2c41e0bbbb891fd771c1a03e3092114aa1', 1, 1, 'App', '[]', 0, '2021-12-01 01:31:22', '2021-12-01 01:31:22', '2022-12-01 08:31:22'),
('c6879f12d40505713af667c5f0e765935b8468cde4fa38cb3df569e07c4195956c63cbd9874163d2', 1, 1, 'App', '[]', 0, '2021-11-28 00:15:15', '2021-11-28 00:15:15', '2022-11-28 07:15:15'),
('db112ecd449e4ac724f4fec2e816f5a18132249947e517924834f3da9a95cacfcb5b3e67b6d84381', 1, 1, 'App', '[]', 0, '2021-11-30 23:48:53', '2021-11-30 23:48:53', '2022-12-01 06:48:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'em5bjScqkQ9dPmUBStfXvcRykQEXnXzj92cIbPTn', NULL, 'http://localhost', 1, 0, 0, '2021-11-26 23:43:46', '2021-11-26 23:43:46'),
(2, NULL, 'Laravel Password Grant Client', 'PVMuCRv5y3jkN83ONBWVx26k7ZopQK28vd2fDalG', 'users', 'http://localhost', 0, 1, 0, '2021-11-26 23:43:46', '2021-11-26 23:43:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-26 23:43:46', '2021-11-26 23:43:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `date`, `pay`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'afe4649e', '2021-11-27 07:54:17', 'online', '480000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 00:54:17', '2021-11-27 20:02:59'),
(2, 'adac55c9', '2021-11-27 08:02:42', 'online', '960000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 01:02:42', '2021-11-27 01:34:08'),
(3, '0a61080f', '2021-11-27 08:12:37', 'online', '1920000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(4, 'e38a9c2c', '2021-11-27 12:41:12', 'offline', '960000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 05:41:12', '2021-12-05 20:42:55'),
(5, 'ff31e8f2', '2021-11-27 12:41:50', 'online', '960000', 'Đơn Hàng Bị Hủy', '2021-11-27 05:41:50', '2021-11-27 06:06:06'),
(6, '946e9576', '2021-11-27 13:21:49', 'offline', '480000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 06:21:49', '2021-12-05 20:43:05'),
(7, '9a8545c3', '2021-11-28 06:19:13', 'online', '1140000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 23:19:13', '2021-12-05 20:43:47'),
(9, 'dc0fdb33', '2021-12-02 02:23:15', 'online', '798000', 'Hoàn Thành', '2021-12-01 19:23:15', '2021-12-05 22:30:18'),
(10, 'da9491fd', '2021-12-02 02:24:06', 'offline', '480000', 'Hoàn Thành', '2021-12-01 19:24:06', '2021-12-05 22:30:31'),
(11, '0f4fef7e', '2021-12-02 02:25:18', 'offline', '1440000', 'Đã Xác Nhận/ Đang Giao', '2021-12-01 19:25:18', '2021-12-04 22:35:22'),
(12, 'd175f2d6', '2021-12-05 05:33:54', 'offline', '399000', 'Đã Xác Nhận/ Đang Giao', '2021-12-04 22:33:54', '2021-12-04 22:34:57'),
(13, 'f1bcf732', '2021-12-05 14:46:07', 'online', '749000', 'Đã Xác Nhận/ Đang Giao', '2021-12-05 07:46:08', '2021-12-05 20:43:58'),
(14, 'dc6ba948', '2021-12-05 14:46:18', 'offline', '749000', 'Hoàn Thành', '2021-12-05 07:46:18', '2021-12-05 22:29:26'),
(15, '8661d41c', '2021-12-05 14:46:57', 'online', '749000', 'Đã thanh toán', '2021-12-05 07:46:57', '2021-12-05 07:46:59'),
(27, '2b7c273c', '2021-12-06 03:35:09', 'offline', '1079000', 'Chờ Xử Lý', '2021-12-05 20:35:09', '2021-12-05 20:35:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_code`, `product_id`, `product_name`, `product_quantity`, `user_fullname`, `user_email`, `user_phonenumber`, `user_address`, `user_address2`, `order_status`, `order_pay`, `created_at`, `updated_at`) VALUES
(1, 'afe4649e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 00:54:17', '2021-11-27 20:02:59'),
(2, 'adac55c9', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:02:42', '2021-11-27 01:34:08'),
(3, '0a61080f', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '3', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(4, '0a61080f', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(5, 'e38a9c2c', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'offline', '2021-11-27 05:41:12', '2021-12-05 20:42:55'),
(6, 'ff31e8f2', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đơn Hàng Bị Hủy', 'online', '2021-11-27 05:41:50', '2021-11-27 06:06:06'),
(7, '946e9576', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'offline', '2021-11-27 06:21:49', '2021-12-05 20:43:05'),
(8, '9a8545c3', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 23:19:13', '2021-12-05 20:43:47'),
(9, '9a8545c3', 5, 'Bút đánh dấu vết mổ Twin Tip', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 23:19:13', '2021-12-05 20:43:47'),
(10, 'dc0fdb33', 2, 'Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Hoàn Thành', 'online', '2021-12-01 19:23:15', '2021-12-05 22:30:18'),
(11, 'da9491fd', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Hoàn Thành', 'offline', '2021-12-01 19:24:06', '2021-12-05 22:30:31'),
(12, '0f4fef7e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'offline', '2021-12-01 19:25:18', '2021-12-04 22:35:22'),
(13, '0f4fef7e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'offline', '2021-12-01 19:25:18', '2021-12-04 22:35:22'),
(14, 'd175f2d6', 2, 'Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'offline', '2021-12-04 22:33:54', '2021-12-04 22:34:57'),
(15, 'f1bcf732', 4, 'Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-12-05 07:46:08', '2021-12-05 20:43:58'),
(16, 'dc6ba948', 4, 'Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', NULL, 'Hoàn Thành', 'offline', '2021-12-05 07:46:18', '2021-12-05 22:29:26'),
(17, '8661d41c', 4, 'Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', NULL, 'Đã thanh toán', 'online', '2021-12-05 07:46:57', '2021-12-05 07:46:59'),
(32, '2b7c273c', 3, 'Dung dịch bảo quản giác mạc hãng Alchimia, Italia', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-12-05 20:35:09', '2021-12-05 20:35:09'),
(33, '2b7c273c', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-12-05 20:35:09', '2021-12-05 20:35:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_image`, `product_price`, `product_origin`, `product_manufacturer`, `product_discount`, `created_at`, `updated_at`) VALUES
(1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '<p><strong>M&aacute;y trợ th&iacute;nh Biohealth JH-238&nbsp;</strong>l&agrave; d&ograve;ng m&aacute;y trợ th&iacute;nh c&oacute; d&acirc;y bỏ t&uacute;i tiện dụng, sử dụng bằng tai nghe headphone th&iacute;ch hợp cho người c&oacute; mức độ nghe k&eacute;m từ nhẹ đến nặng.&nbsp;<strong>M&aacute;y trợ th&iacute;nh bỏ t&uacute;i c&oacute; d&acirc;y Biohealth JH-238</strong>&nbsp;cung cấp &acirc;m thanh chất lượng cao, r&otilde; r&agrave;ng v&agrave; ch&iacute;nh x&aacute;c với 16 mức độ &acirc;m lượng kh&aacute;c nhau, dễ d&agrave;ng điều chỉnh bằng n&uacute;t vặn, bạn chế tối đa tiếng &ugrave;, tiếng vọng v&agrave; lọc &acirc;m tốt.</p>', 'http://127.0.0.1:8000/imageupload/1637999533-Máy trợ thính bỏ túi có dây Biohealth JH-238.jpg', 480000, 'việt nam', 'Biohealth', 12, '2021-11-27 00:52:13', '2021-11-27 00:52:13'),
(2, 'Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ', '<p>N&uacute;t lệ đạo tự ti&ecirc;u bằng collogen điều trị kh&ocirc; mắt VeraC7 h&atilde;ng Lacrivera, Mỹ được thiết kế để cung cấp một phương ph&aacute;p điều trị đơn giản v&agrave; hiệu quả cho triệu chứng kh&ocirc; mắt tạm thời.</p>\r\n\r\n<ul>\r\n	<li>Ph&ugrave; hợp ho&agrave;n hảo với lệ quản, dễ d&agrave;ng đưa v&agrave;o, dễ d&agrave;ng lưu giữ.</li>\r\n	<li>Sự thoải m&aacute;i tối đa cho bệnh nh&acirc;n.</li>\r\n	<li>Tự ti&ecirc;u trong v&ograve;ng từ&nbsp;7 đến 10 ng&agrave;y.</li>\r\n	<li>Giải ph&aacute;p tối ưu để điều trị kh&ocirc; mắt tạm thời sau phẫu thuật Lasik v&agrave; c&aacute;c phẫu thuật kh&aacute;c.</li>\r\n	<li>Được đ&oacute;ng g&oacute;i ri&ecirc;ng, v&ocirc; tr&ugrave;ng từng vỉ 6 c&aacute;i.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'http://127.0.0.1:8000/imageupload/1638064700-Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ.jpg', 399000, 'Mỹ', 'Lacrivera', 887, '2021-11-27 18:58:20', '2021-11-27 18:58:20'),
(3, 'Dung dịch bảo quản giác mạc hãng Alchimia, Italia', '<p>Dung dịch bảo quản gi&aacute;c mạc c&oacute; chứa Eusol-C l&agrave; một&nbsp;dung m&ocirc;i&nbsp; tổng hợp để bảo quản gi&aacute;c mạc ở&nbsp;4&deg;C trong khoảng thời gian l&ecirc;n đến 14 ng&agrave;y. N&oacute; cũng chưa DEC, khu&ocirc;n mắt giả để t&aacute;i tạo thẩm mỹ cho mắt của người hiến tặng.</p>\r\n\r\n<p>&nbsp;</p>', 'http://127.0.0.1:8000/imageupload/1638064828-Dung dịch bảo quản giác mạc hãng Alchimia, Italia.jpg', 599000, 'Italia', 'Alchimia', 999, '2021-11-27 19:00:28', '2021-11-27 19:02:33'),
(4, 'Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh', '<p>Khoan gi&aacute;c mạc ch&acirc;n kh&ocirc;ng CORONET&reg; d&ugrave;ng cho người&nbsp;nhận&nbsp;của h&atilde;ng&nbsp;Network Medical được thiết kế đặc biệt để tạo ra một vết rạch dọc ổn định v&agrave; đ&aacute;ng tin cậy, gi&uacute;p cải thiện cấu tr&uacute;c vết thương v&agrave; giảm mất tế b&agrave;o nội m&ocirc;.&nbsp;Khoan gi&aacute;c mạc xoay tự do với c&ocirc;ng nghệ lưỡi dao CORONET&reg; Cathedral Blade độc quyền, tạo ra một lưỡi dao si&ecirc;u mỏng v&agrave; sắc b&eacute;n để giảm thiểu vết cắt v&agrave; biến dạng m&ocirc;. Lưỡi dao di chuyển xuống 0.063 mm mỗi 1/4 v&ograve;ng v&agrave; 0.252 mm mỗi v&ograve;ng.</p>', 'http://127.0.0.1:8000/imageupload/1638065149-Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh.jpg', 749000, 'Anh', 'Hãng Network Medical', 12, '2021-11-27 19:05:49', '2021-11-27 19:05:49'),
(5, 'Bút đánh dấu vết mổ Twin Tip', '<p><strong>B&uacute;t đ&aacute;nh dấu vết mổ 2 đầu, một đầu thường, một đầu si&ecirc;u nhỏ d&ograve;ng Twin Tip #1425SR-100 rất hiệu quả v&agrave; linh hoạt, th&iacute;ch hợp đa dạng với nhiều loại phẫu thu&acirc;t, bao gồm cả c&aacute;c phẫu thuật ch&iacute;nh x&aacute;c m&agrave;&nbsp;cần đ&aacute;nh dấu với n&eacute;t si&ecirc;u nhỏ.</strong></p>', 'http://127.0.0.1:8000/imageupload/1638065296-Bút đánh dấu vết mổ Twin Tip.jpg', 180000, 'Mỹ', 'Viscot', 500, '2021-11-27 19:08:16', '2021-11-27 19:08:16'),
(6, 'Chỉ phẫu thuật Vicryl 4-0 (tam giác) W9580T', '<p>Chỉ kh&ocirc;ng tan tự nhi&ecirc;n đa sợi bện, l&agrave;m từ một dạng protein hữu cơ &ndash; sợi tơ tằm Bombyx Mori. Chỉ được phủ một lớp s&aacute;p (wax). Chỉ được nhuộm m&agrave;u đen (Black Logwood), cỡ chỉ 10/0 &ndash; 2</p>', 'http://127.0.0.1:8000/imageupload/1638065499-Chỉ phẫu thuật Vicryl 4-0 (tam giác) W9580T.jpg', 89000, 'Bỉ', 'Johnson & Johnson', 200, '2021-11-27 19:11:39', '2021-11-27 19:11:39'),
(8, 'Máy đo nồng độ oxy trong máu SPO2 Wellmed FS20F', '<ul>\r\n	<li>M&aacute;y đo nồng độ oxy trong m&aacute;u<strong>&nbsp;Wellmed FS20F</strong>&nbsp;l&agrave; sản phẩm chuy&ecirc;n d&ugrave;ng để theo d&otilde;i độ b&atilde;o h&ograve;a oxy trong m&aacute;u (SPO2) v&agrave; nhịp tim.&nbsp;</li>\r\n	<li>Đ&acirc;y l&agrave; sản phẩm đến từ thương hiệu Wellmed - Chuy&ecirc;n sản xuất c&aacute;c thương hiệu thiết bị y tế v&agrave; chăm s&oacute;c sức khỏe đạt &quot;Ti&ecirc;u chuẩn an to&agrave;n hiệu suất: YY 0670 / IEC 60601-2-30&hellip;&nbsp;</li>\r\n	<li>Sản phẩm c&oacute; k&iacute;ch thước nhỏ gọn, kh&ocirc;ng x&acirc;m lấn n&ecirc;n rất tiện lợi d&ugrave;ng cho cả trẻ nhỏ v&agrave; người trưởng th&agrave;nh.</li>\r\n</ul>', 'http://127.0.0.1:8000/imageupload/1638425573-Máy đo nồng độ oxy trong máu SPO2 Wellmed FS20F.jpg', 990000, 'China', 'Wellmed', 200, '2021-12-01 23:12:53', '2021-12-01 23:12:53'),
(9, 'Mặt nạ mũi Nasal mask NM-002-TM', '<p>Mặt nạ mũi Nasal mask NM-002-TM l&agrave; mặt nạ d&agrave;nh cho m&aacute;y trợ thở. Sản phẩm ch&iacute;nh h&atilde;ng của Rescomf được thiết kế th&ocirc;ng minh, hiện đại gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng một c&aacute;ch thoải m&aacute;i trong qu&aacute; tr&igrave;nh trị liệu.</p>', 'http://127.0.0.1:8000/imageupload/1638425715-Mặt nạ mũi Nasal mask NM-002-TM.png', 999000, 'china', 'RESCOMF', 100, '2021-12-01 23:15:15', '2021-12-01 23:15:15'),
(10, 'Máy đo huyết áp tự động Microlife B6 Advanced', '<h3><strong>M&aacute;y đo huyết &aacute;p Microlife&nbsp;tự động, cung cấp kết quả đo huyết &aacute;p, nhịp tim ch&iacute;nh x&aacute;c qua c&aacute;c c&ocirc;ng nghệ hiện đại</strong></h3>\r\n\r\n<p>- Cho ra kết quả cảnh b&aacute;o rung nhĩ (AF) chỉ qua 1 lần đo nhờ ứng dụng c&ocirc;ng nghệ AFIBsens.</p>\r\n\r\n<p>- Ngo&agrave;i ra, m&aacute;y c&ograve;n sử dụng c&ocirc;ng nghệ MAM tự động đo 3 lần để cho ra kết quả trung b&igrave;nh, c&ocirc;ng nghệ PAD ph&aacute;t hiện rối loạn nhịp tim v&agrave; c&ocirc;ng nghệ Gentle+ đo nhanh, &ecirc;m &aacute;i, thoải m&aacute;i cho người đo.</p>\r\n\r\n<p>- Tầm so&aacute;t rung nhĩ với sản phẩm n&agrave;y sẽ gi&uacute;p người tr&ecirc;n 65 tuổi hiểu r&otilde; t&igrave;nh h&igrave;nh sức khỏe, giảm nguy cơ độc quỵ. M&aacute;y cũng được khuy&ecirc;n d&ugrave;ng với người hơn 50 tuổi mắc c&aacute;c chứng đ&aacute;i th&aacute;o đường, cao huyết &aacute;p, suy mạch v&agrave;nh hoặc đ&atilde; từng trải qua cơn đột quỵ.</p>', 'http://127.0.0.1:8000/imageupload/4cf67c1dd23d22e162fbdee7dd955b90-product.jpg', 2671000, 'Trung Quốc', 'Microlife', 99, '2021-12-06 06:23:37', '2021-12-06 06:23:37'),
(11, 'Bộ kit test covid-19 Humasis Covid-19 Ag hiệu quả tối ưu hộp 25 test', '<p>Đọc kết quả sau 15 ph&uacute;t. Kết quả c&oacute; thể bị sai nếu kết quả x&eacute;t nghiệm được đọc trước 15 ph&uacute;t hoặc sau 20 ph&uacute;t.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<p>Kết quả &acirc;m t&iacute;nh l&agrave; giả định, nếu muốn c&oacute; kết quả ch&iacute;nh x&aacute;c hơn phải thực hiện x&eacute;t nghiệm ph&acirc;n tử. X&eacute;t nghiệm n&agrave;y nhằm mục đ&iacute;ch s&agrave;ng lọc ban đầu nhiễm COVID-19 bằng c&aacute;ch ph&aacute;t hiện kh&aacute;ng nguy&ecirc;n COVID-19, nhưng kh&ocirc;ng được sử dụng l&agrave;m ti&ecirc;u ch&iacute; duy nhất để x&aacute;c định nhiễm SARS-CoV-2. C&aacute;c phương ph&aacute;p kh&aacute;c v&agrave; th&ocirc;ng tin l&acirc;m s&agrave;ng (bao gồm dấu hiệu v&agrave; triệu chứng) n&ecirc;n được sử dụng v&agrave; xem x&eacute;t để chuẩn đo&aacute;n.</p>', 'http://127.0.0.1:8000/imageupload/4a4e98f543d580509f69f22e6810d49f-product.jpg', 128000, 'Hàn Quốc', 'Humansis', 100, '2021-12-06 06:26:13', '2021-12-06 06:26:13'),
(12, 'Kính bảo hộ S3086-C1 tròng chống va đập bảo vệ mắt, ngăn tia UV', '<h3>Đặc điểm sản phẩm</h3>\r\n\r\n<p>Gọng&nbsp;k&iacute;nh&nbsp;bảo hộ y tế S3086 bằng nhựa polycarbonate c&oacute; độ bền cao, khó vỡ.</p>\r\n\r\n<p>B&ecirc;n ngo&agrave;i phủ một lớp tr&aacute;ng gương bạc.</p>\r\n\r\n<p>Tròng lu&ocirc;n phủ lớp ch&ocirc;́ng tia cực tím (UV protection) ngăn được các tia sáng có hại cho mắt.</p>\r\n\r\n<h3>Ưu điểm nổi bật</h3>\r\n\r\n<p>Cấu tr&uacute;c k&iacute;nh chắc chắn, cứng c&aacute;p c&ugrave;ng thiết kế đơn giản.</p>\r\n\r\n<p>Tạo cảm gi&aacute;c dễ chịu khi đeo, liền khối &ocirc;m trọn sống mũi, mắt v&agrave; b&ecirc;n h&ocirc;ng mắt.</p>\r\n\r\n<p>Trọng lượng thật nhẹ, kh&ocirc;ng g&acirc;y nặng nề khi đeo.</p>\r\n\r\n<p>Tổng thể trắng trong suốt tạo phong c&aacute;ch độc đ&aacute;o, mang t&iacute;nh thẩm mỹ cao.</p>', 'http://127.0.0.1:8000/imageupload/cd54e371657d082eca77bd47515957b2-product.jpg', 122000, 'Đài Loan', 'Taiwan', 100, '2021-12-06 06:27:50', '2021-12-06 06:27:50'),
(13, 'Máy trợ thính không dây Siemens Touching', '<p>M&aacute;y&nbsp;<a href=\"https://websosanh.vn/may-tro-thinh/cat-1947.htm\">trợ th&iacute;nh</a>&nbsp;Siemens Touching kh&ocirc;ng d&acirc;y thế hệ mới sử dụng c&ocirc;ng nghệ số ( triệt ti&ecirc;u, hạn chế tiếng ồn ,s&ocirc;i ở m&aacute;y .Cho &acirc;m thanh tốt hơn) với c&aacute;c n&uacute;t chức năng chỉnh to nhỏ hay chuyển chế độ nghe ho&agrave;n to&agrave;n d&ugrave;ng tay sờ, ấn rất tiện trong sinh hoạt,đi lại,kể cả th&agrave;nh thị v&agrave; n&ocirc;ng th&ocirc;n ph&ugrave; hợp với người c&oacute; điều kiện kinh tế tốt</p>\r\n\r\n<p>&nbsp;</p>', 'http://127.0.0.1:8000/imageupload/d9607f91be41b859d6de2d61d243b83c-product.jpg', 1700000, 'Đức', 'Siemens', 100, '2021-12-06 06:29:48', '2021-12-06 06:32:16'),
(14, 'GẠC Y TẾ TIỆT TRÙNG ĐÔNG PHA', '<p>Gạc y tế tiệt tr&ugrave;ng Đ&ocirc;ng Pha được l&agrave;m từ 100% sợi cotton tự nhi&ecirc;n, khả năng thấm h&uacute;t cao v&agrave; nhanh, mịn m&agrave;ng, mềm mại, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n\r\n<p>C&ocirc;ng dụng: Gạc y tế được sử dụng rộng r&atilde;i tại bệnh viện, trung t&acirc;m y tế, ph&ograve;ng kh&aacute;m, ph&ograve;ng nha khoa. D&ugrave;ng để l&agrave;m sạch c&aacute;c vết thương nhỏ, thấm m&aacute;u v&agrave; dịch tiết. D&ugrave;ng để băng b&oacute; vết thương sau khi s&aacute;t tr&ugrave;ng.</p>', 'http://127.0.0.1:8000/imageupload/4571b76bd73e2f15ec12455f6666086a-product.jpg', 290000, 'Việt Nam', 'Việt Nam', 100, '2021-12-06 06:37:24', '2021-12-06 06:37:24'),
(15, 'Đầu kim tiêm y tế tiệt trùng từ số 18 đến 26', '<p>Gắn được hết c&aacute;c loại bơm ti&ecirc;m từ 1cc đến 20cc</p>\r\n\r\n<p>Quy c&aacute;ch: 100 c&aacute;i/hộp</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>H&atilde;ng sản xuất: Vinahankook</p>', 'http://127.0.0.1:8000/imageupload/2138fa2717546be6dc8f72f712b05849-product.jpg', 28000, 'việt nam', 'Vinahankook', 100, '2021-12-06 06:54:20', '2021-12-06 06:54:20'),
(16, 'Nước rửa tay Lifebuoy bảo vệ vượt trội túi 443ml', '<p>Nước rửa tay Lifebuoy Bảo vệ vượt trội T&uacute;i 443 ml&nbsp;với Activ Naturol Shield gi&uacute;p l&agrave;m sạch da tay, khử m&ugrave;i, diệt đến 99,9% vi khuẩn&nbsp;chỉ trong 10 gi&acirc;y (kiểm nghiệm trong ph&ograve;ng th&iacute; nghiệm),&nbsp;ngăn ngừa virus g&acirc;y bệnh.</p>', 'http://127.0.0.1:8000/imageupload/27c310d8a1e372b49701ea06b6b886cd-product.jpg', 53000, 'Việt Nam', 'lifebuoy', 100, '2021-12-06 06:56:37', '2021-12-06 06:56:37'),
(17, 'dây truyền dịch', '<p>D&ugrave;ng để truyền trắng, truyền dịch, truyền chất đạm, truyền vitamin v.v... Sỉ lẻ inbox Chuy&ecirc;n c&ugrave;ng cấp sỉ lẻ Filler Botox Truyền trắng Uống trắng Dưỡng trắng...</p>', 'http://127.0.0.1:8000/imageupload/2097e029f37e1000b4224b8f2da7f1d8-product.png', 20000, 'việt nam', 'khác', 100, '2021-12-06 06:58:43', '2021-12-06 06:58:43'),
(18, 'Cồn 90 độ Vĩnh Phúc 500ml', '<p>Th&agrave;nh phần của cồn 90 độ Vĩnh Ph&uacute;c 500ml ETHANOL</p>\r\n\r\n<p>C&ocirc;ng dụng của cồn 90 độ VP 500ml L&ecirc;n men bằng tinh bột (sắn, ng&ocirc;) hoặc l&ecirc;n men rỉ đường D&ugrave;ng sát trùng v&ecirc;́t thương, vệ sinh, tiệt tr&ugrave;ng dụng cụ y tế Đốt, l&agrave;m ch&iacute;n thực phẩm</p>', 'http://127.0.0.1:8000/imageupload/a45e8e7b37a99ab9903657e7eb8308cb-product.jpg', 35000, 'việt nam', 'VĨNH PHÚC', 99, '2021-12-06 07:27:43', '2021-12-06 07:27:43'),
(19, 'Dao Mỗ Cán Tròn Y Tế Tặng Kèm 5 Lưỡi', '<p>DAO MỔ VẶN C&Aacute;N TR&Ograve;N dễ th&aacute;o r&aacute;p c&aacute;c loại lưỡi dao .Chuy&ecirc;n d&ugrave;ng để dọc giấy , sửa linh kiện điện thoại, gh&eacute;p c&acirc;y, cắt decal, căt thiệ Chuy&ecirc;n d&ugrave;ng trong y tế...</p>', 'http://127.0.0.1:8000/imageupload/3b91e433839f1d0757c74129893076dd-product.jpg', 50000, 'Việt Nam', 'OEM', 88, '2021-12-06 07:30:08', '2021-12-06 07:30:08'),
(20, 'Chỉ phẫu thuật Vicryl Rapide 3-0 (tam giác) W9940', '<p>Chỉ tan nhanh tổng hợp đa sợi Polyglactin 910 được bọc bởi 50% l&agrave; Polyglactin 370 v&agrave; 50% l&agrave; Calcium Stearate số 3/0 dài 75cm, 1 kim tam gi&aacute;c ngược FS d&agrave;i 26mm 3/8 v&ograve;ng tr&ograve;n. Thời gian giữ v&ecirc;́t kh&acirc;u: 7 - 14 ngày, thời gian ti&ecirc;u hoàn toàn: 42 ngày.</p>', 'http://127.0.0.1:8000/imageupload/3fbeb8e484a07dc1bfd37f4f696e523c-product.jpg', 85000, 'Brazil', 'Ethicon, Johnson & Johnson', 90, '2021-12-06 07:31:54', '2021-12-06 07:31:54'),
(21, 'BỘT BÓ OBANDA (ORBE - VIỆT NAM)', '<p>- Được l&agrave;m từ bột thạch cao c&oacute; chất lượng tốt, c&oacute; độ tinh khiết cao.<br />\r\n-&nbsp;Thời gian đ&ocirc;ng kết nhanh từ 2- 4 ph&uacute;t, tạo ra khung định h&igrave;nh nhẹ v&agrave; chắc chắn.<br />\r\n-&nbsp;D&ugrave;ng trong trường hợp g&atilde;y xương hoặc sau khi mổ theo chỉ định của b&aacute;c sĩ.</p>', 'http://127.0.0.1:8000/imageupload/bb35ef7f57287fb09b7c05ca8b8fdf48-product.jpg', 15000, 'Việt Nam', 'ORBE', 50, '2021-12-06 18:14:45', '2021-12-06 18:14:45'),
(22, 'NẠNG CHỐNG NÁCH INOX - VIỆT NAM', '<p>T&iacute;nh năng nổi bật:</p>\r\n\r\n<p>- D&ugrave;ng chống tựa n&aacute;ch khi tập đi.&nbsp;<br />\r\n- Điều chỉnh độ cao th&iacute;ch hợp với từng người.&nbsp;<br />\r\n- Đầu cao su tiếp đất bền, chống trơn trượt.</p>', 'http://127.0.0.1:8000/imageupload/c68ef43a60ea00b2be0d91f9ec1033d8-product.jpg', 24000, 'Việt Nam', 'NIVN', 50, '2021-12-06 18:16:25', '2021-12-06 18:16:25'),
(23, 'Kềm kẹp kim - Pen nhíp y tế, Spa 16cm', '<p>Pen nh&iacute;p được l&agrave;m từ kim loại th&eacute;p kh&ocirc;ng gỉ, đảm bảo an to&agrave;n v&agrave; hợp chuẩn quy định của Bộ Y tế về dụng cụ phẫu thuật. D&ugrave;ng trong kẹp kim m&aacute;y Spa, thay băng phẫu thuật, gắp c&aacute;c dị vật...</p>', 'http://127.0.0.1:8000/imageupload/c56a6db9985faa7b9e69c6a314e4e5d5-product.jpg', 27000, 'pakistan', 'pakistan', 90, '2021-12-06 18:18:17', '2021-12-06 18:18:17'),
(24, 'THUỐC GÂY TÊ BỀ MẶT EMLA CRE 5G', '<ul>\r\n	<li>\r\n	<p>C&aacute;c chế phẩm g&acirc;y metHb (như nh&oacute;m sulfa) .T&aacute;c động c&ocirc;ng hợp to&agrave;n th&acirc;n thuốc g&acirc;y m&ecirc; tại chỗ hoặc phế phẩm c&oacute; cấu tr&uacute;c tương tự thuốc g&acirc;y m&ecirc; tại chỗ (tocainide) d&ugrave;ng đồng thời</p>\r\n	</li>\r\n</ul>', 'http://127.0.0.1:8000/imageupload/11879f26fd401916ca3a11ed3474661a-product.jpg', 44000, 'Việt Nam', 'ASTRA ZENECA', 400, '2021-12-06 18:20:42', '2021-12-06 18:20:42'),
(25, 'BÚA THỬ PHẢN XẠ ( ĐẦU TRÒN)', '<ul>\r\n	<li>Thử phản xạ của cơ thể, gi&uacute;p nhận biết được khả năng phản ứng lại với c&aacute;c t&aacute;c dộng của m&ocirc;i trường xung quanh như thế n&agrave;o.</li>\r\n	<li>G&otilde; tr&ecirc;n vai, lưng, c&aacute;c khớp xương một c&aacute;ch nhẹ nh&agrave;ng để giảm đau v&agrave; mang lại sử thoải m&aacute;i cho người bệnh.</li>\r\n	<li>Gi&uacute;p m&aacute;u huyết lưu th&ocirc;ng, g&otilde; b&uacute;a đều theo hướng tay, ch&acirc;n,&hellip; về tim gi&uacute;p hệ tuần ho&agrave;n l&agrave;m việc tốt hơn, hạn chế g&otilde; qu&aacute; mạnh sẽ g&acirc;y bị bầm cho cở thể.</li>\r\n</ul>', 'http://127.0.0.1:8000/imageupload/e952b0e29be6a6f2045cb30d5895abd6-product.jpg', 50000, 'Việt nam', 'MN-BPX.TR', 50, '2021-12-06 18:23:25', '2021-12-06 18:23:25'),
(26, 'Khẩu trang Ecom MED Safe Mask 4 lớp hộp 50 cái', '<p>Khẩu trang Ecom MED&nbsp;Safe Mask&nbsp;với&nbsp;4 lớp bảo vệ tối ưu&nbsp;trước sự x&acirc;m nhập của mầm bệnh qua đường h&ocirc; hấp, khả năng chống nước, kh&aacute;ng giọt bắn, lọc bụi mịn, vi khuẩn, virus v&agrave; mầm bệnh. Thun đeo&nbsp;co d&atilde;n tốt&nbsp;kh&ocirc;ng tạo cho người d&ugrave;ng cảm gi&aacute;c kh&oacute; thở v&agrave; kh&ocirc;ng g&acirc;y đau tai</p>', 'http://127.0.0.1:8000/imageupload/90257fee2f26737920984abe9d06312d-product.jpg', 40000, 'Việt Nam', 'Ecom MED (Việt Nam)', 100, '2021-12-06 18:25:14', '2021-12-06 18:25:14'),
(27, 'Viên đặt giảm đau - hạ sốt Efferalgan Suppo. 80mg', '<p>Vi&ecirc;n đặt giảm đau - hạ sốt Efferalgan Suppo. 80mg l&agrave; dược phẩm thuộc nh&oacute;m thuốc giảm đau hạ sốt được sản xuất bởi tập đo&agrave;n dược phẩm Bristol-Myers Squibb của Mỹ. C&aacute;c sản phẩm thuộc thương hiệu Efferalgan l&agrave; một trong những t&ecirc;n tuổi nổi tiếng nhất của h&atilde;ng được tin d&ugrave;ng tr&ecirc;n khắp thế giới.</p>', 'http://127.0.0.1:8000/imageupload/236fe5eb660a21f55e81972db63e2a00-product.jpg', 24000, 'Mỹ', 'Bristol-Myers Squibb', 100, '2021-12-06 18:27:09', '2021-12-06 18:27:09'),
(28, 'Bộ trang phục quần áo bảo hộ phòng dịch 7 món cấp độ 4 - An Lành', '<p><strong>Bộ quần &aacute;o chống dịch 7 m&oacute;n cấp độ 4</strong>&nbsp;được d&ugrave;ng ở v&ograve;ng trong c&ugrave;ng, tiếp x&uacute;c trực tiếp với bệnh nh&acirc;n hoặc dịch tỵ hầu. Bộ trang phục ph&ograve;ng chống dịch covid 19 được Memart ph&acirc;n phối ch&iacute;nh h&atilde;ng An L&agrave;nh (h&agrave;ng Việt Nam chất lượng cao). Memart cung cấp đầy đủ giấy tờ để c&oacute; thể đấu thầu trong c&aacute;c bệnh viện, cung cấp cho c&aacute;c tổ chức y tế, tổ chức thiện nguyện.</p>', 'http://127.0.0.1:8000/imageupload/fb8e8eb565fac1ff0c1266109d142062-product.jpg', 250000, 'Việt Nam', 'An Lành', 100, '2021-12-06 18:28:58', '2021-12-06 18:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilePhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homePhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `officePhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `fullname`, `gender`, `birthday`, `address`, `email`, `mobilePhone`, `homePhone`, `officePhone`, `status`, `created_at`, `updated_at`) VALUES
(2, 'nguyễn duy anh', 'Nam', '2002-02-09', 'Thành phố Đà Nẵng', 'ndanh.20it3@vku.udn.vn', '0913361783', '0913361783', '0913361783', 'Đã Lên Lịch', '2021-12-01 19:18:50', '2021-12-05 20:47:41'),
(3, 'Lê Hữu Hoàn', 'Nam', '2002-03-27', 'Tỉnh Hà Tĩnh', 'lhhoan.20it11@vku.udn', '0345648638', '0345648638', '0345648638', 'Đã Lên Lịch', '2021-12-06 18:35:34', '2021-12-07 00:16:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hoạt Động',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `address`, `phonenumber`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', NULL, '470, trần đại nghĩa, quận ngữ hành sơn, đà nẵng', '0345648638', '$2y$10$xCUWgC3lzt/UGciMeTAlWukWDsw50evLc.HjsUk7RieH3WF.yhjiW', 'Hoạt Động', NULL, '2021-11-26 23:48:08', '2021-12-05 02:29:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feed_backs`
--
ALTER TABLE `feed_backs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `meets`
--
ALTER TABLE `meets`
  ADD PRIMARY KEY (`meets_id`),
  ADD KEY `meets_id_foreign` (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_code` (`order_code`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_email` (`user_email`);

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
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feed_backs`
--
ALTER TABLE `feed_backs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `meets`
--
ALTER TABLE `meets`
  MODIFY `meets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `meets`
--
ALTER TABLE `meets`
  ADD CONSTRAINT `meets_id_foreign` FOREIGN KEY (`id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`order_code`) REFERENCES `orders` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
