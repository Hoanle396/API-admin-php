-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 11:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `name`, `phonenumber`, `created_at`, `updated_at`) VALUES
(1, 'hoanle396@gmail.com', '4297f44b13955235245b2497399d7a93', 'Lê Hữu Hoàn', '0345648638', '2021-11-27 06:45:32', '2021-11-27 06:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
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
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `banknumber`, `bankauth`, `bankname`, `qrcode`, `created_at`, `updated_at`) VALUES
(1, '0345648638', ' Lê Hữu Hoàn', 'MoMo', 'http://127.0.0.1:8000/imageupload/1637812066-vietinbank.jpg', '2021-11-27 06:44:32', '2021-11-27 06:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `feed_backs`
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
-- Dumping data for table `feed_backs`
--

INSERT INTO `feed_backs` (`id`, `firstname`, `lastname`, `email`, `phonenumber`, `message`, `created_at`, `updated_at`) VALUES
(1, 'LÊ', 'HOÀN', 'hoanle396@gmail.com', '0345648638', 'Chất Lượng sản phẩm khá tốt', '2021-11-27 01:43:02', '2021-11-27 01:43:02'),
(3, 'Nguyễn', 'Duy Anh', 'ndanh.20it3@vku.udn.vn', '0913361783', 'chất lượng sản phẩm tốt', '2021-12-01 19:14:05', '2021-12-01 19:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `meets`
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
(19, '2021_11_27_124947_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
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
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Ca cộng đồng tăng, Hà Nội yêu cầu xét nghiệm tầm soát cho học sinh', '<h2>Chủ tịch H&agrave; Nội y&ecirc;u cầu Sở Y tế x&acirc;y dựng kế hoạch x&eacute;t nghiệm tầm so&aacute;t cho học sinh, gi&aacute;o vi&ecirc;n; x&eacute;t nghiệm thường quy, s&agrave;ng lọc theo chỉ định chuy&ecirc;n m&ocirc;n, định kỳ tại c&aacute;c khu vực nguy cơ mắc COVID cao.</h2>\r\n\r\n<p>Ng&agrave;y 26/11, Chủ tịch Ủy ban Nh&acirc;n d&acirc;n th&agrave;nh phố H&agrave; Nội Chu Ngọc Anh đ&atilde; k&yacute; ban h&agrave;nh C&ocirc;ng điện số 25/CĐ-UBND về việc tăng cường c&aacute;c biện ph&aacute;p ph&ograve;ng, chống&nbsp;<a href=\"https://www.vietnamplus.vn/tags/d%e1%bb%8bch-COVID-19.vnp\" target=\"_blank\"><strong>dịch COVID-19</strong></a>&nbsp;trong t&igrave;nh h&igrave;nh mới.</p>\r\n\r\n<p><strong>COVID-19 đ&atilde; xuất hiện tr&ecirc;n 30/30 quận, huyện</strong></p>\r\n\r\n<p>C&ocirc;ng điện&nbsp;của H&agrave; Nội n&ecirc;u r&otilde; từ ng&agrave;y 11/10/2021 đến ng&agrave;y 25/11/2021, th&agrave;nh phố đ&atilde; ghi nhận 4.817 ca mắc COVID-19. Trong đ&oacute;, số ca cộng đồng tăng nhanh với 1.704 ca mắc (chiếm tỷ lệ 35,43%), số ca mắc do l&acirc;y nhiễm thứ ph&aacute;t cũng tăng.</p>\r\n\r\n<p>Tới nay, dịch bệnh xuất hiện tr&ecirc;n 30/30 quận, huyện, thị x&atilde; trong đ&oacute; nhiều ch&ugrave;m ca bệnh tại c&aacute;c khu d&acirc;n cư mật độ cao, c&aacute;c khu chung cư, khu c&ocirc;ng nghiệp, từ c&aacute;c hoạt động tại chợ d&acirc;n sinh, đ&aacute;m hiếu, hỷ, việc tụ tập ăn uống, c&aacute;c địa điểm c&ocirc;ng cộng v&agrave; sự kiện tập trung đ&ocirc;ng người.</p>\r\n\r\n<p>Theo đ&oacute;, Chủ tịch th&agrave;nh phố y&ecirc;u cầu Trưởng ban Chỉ đạo, Chủ tịch Ủy ban Nh&acirc;n d&acirc;n c&aacute;c quận, huyện, thị x&atilde; chỉ đạo c&aacute;c lực lượng chức năng tại cơ sở tăng cường r&agrave; so&aacute;t, kiểm tra, tuy&ecirc;n truyền c&ocirc;ng t&aacute;c thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch tại c&aacute;c khu vực c&oacute; nguy cơ cao tr&ecirc;n địa b&agrave;n, như: C&aacute;c khu d&acirc;n cư (mật độ đ&ocirc;ng, sử dụng chung nh&agrave; tắm, khu vệ sinh); chợ d&acirc;n sinh; trung t&acirc;m thương mại; nh&agrave; h&agrave;ng ăn uống, bến t&agrave;u bến xe, t&agrave;u điện tr&ecirc;n cao, c&aacute;c cơ sở kh&aacute;m, chữa bệnh v&agrave; c&aacute;c khu vực c&oacute; sự kiện tập trung đ&ocirc;ng người.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, kiểm tra việc chấp h&agrave;nh c&aacute;c quy định, điều kiện ph&ograve;ng, chống dịch theo quy định của Trung ương v&agrave; th&agrave;nh phố (th&ocirc;ng điệp &quot;5K&quot; v&agrave; c&aacute;c biện ph&aacute;p theo Kế hoạch số 243/KH-UBND, c&aacute;c c&ocirc;ng điện, văn bản chỉ đạo của th&agrave;nh phố.)</p>\r\n\r\n<p>L&atilde;nh đạo H&agrave; Nội y&ecirc;u cầu khẩn trương ho&agrave;n thiện v&agrave; đưa v&agrave;o hoạt động c&aacute;c cơ sở thu dung, điều trị người nhiễm SARS-CoV-2 kh&ocirc;ng triệu chứng, triệu chứng nhẹ theo m&ocirc; h&igrave;nh Trạm Y tế lưu động; đồng thời đẩy nhanh tiến độ ti&ecirc;m vaccine, đặc biệt l&agrave; ti&ecirc;m mũi 2 với người tr&ecirc;n 50 tuổi.</p>\r\n\r\n<p>&ldquo;Tiếp tục thực hiện kế hoạch ti&ecirc;m cho trẻ em từ 12-17 tuổi theo lộ tr&igrave;nh hạ dần độ tuổi theo hướng dẫn của Bộ Y tế; bảo đảm về thuốc điều trị, trang thiết bị y tế,&rdquo; c&ocirc;ng điện nhấn mạnh.</p>\r\n\r\n<p>Về khoanh v&ugrave;ng, Chủ tịch Chu Ngọc Anh y&ecirc;u cầu c&aacute;ch ly được thực hiện tr&ecirc;n phạm vị hẹp nhất c&oacute; thể, tiếp tục th&ocirc;ng điệp &quot;5K&quot; v&agrave; đề cao &yacute; thức ph&ograve;ng, chống dịch của người d&acirc;n. Thực hiện nới lỏng, kh&ocirc;i phục hoạt động sản xuất-kinh doanh, mở cửa lại nền kinh tế c&oacute; lộ tr&igrave;nh v&agrave; ở những nơi an to&agrave;n, c&oacute; đủ điều kiện.</p>\r\n\r\n<p><strong>Tăng cường nh&acirc;n lực hỗ trợ y tế phường</strong></p>\r\n\r\n<p>&Ocirc;ng Chu Ngọc Anh cũng y&ecirc;u cầu Sở Y tế chủ tr&igrave;, tăng cường điều phối, bố tr&iacute;, ph&acirc;n luồng, chỉ đạo Trung t&acirc;m Kiểm so&aacute;t bệnh tật th&agrave;nh phố, c&aacute;c bệnh viện, viện, c&aacute;c trung t&acirc;m y tế quận, huyện, thị x&atilde; trong c&ocirc;ng t&aacute;c phối hợp, lấy mẫu, thực hiện x&eacute;t nghiệm tương ứng với c&aacute;c khu vực, địa b&agrave;n, đảm bảo thời gian trả kết quả x&eacute;t nghiệm.</p>\r\n\r\n<p>C&ugrave;ng đ&oacute;, x&acirc;y dựng kế hoạch x&eacute;t nghiệm tầm so&aacute;t cho học sinh v&agrave; gi&aacute;o vi&ecirc;n; x&eacute;t nghiệm thường quy, s&agrave;ng lọc theo chỉ định chuy&ecirc;n m&ocirc;n, tầm so&aacute;t ngẫu nhi&ecirc;n, định kỳ tại c&aacute;c khu vực c&oacute; nguy cơ cao, tập trung đ&ocirc;ng người, để hạn chế tối đa việc ph&aacute;t sinh c&aacute;c ch&ugrave;m ca bệnh phức tạp trong cộng đồng.</p>\r\n\r\n<p>Sở Y tế tổng hợp, ph&acirc;n loại c&aacute;c trường hợp F1, F2, đ&aacute;nh gi&aacute; ph&acirc;n t&iacute;ch c&aacute;c nguy cơ trong một số trường hợp theo đặc th&ugrave; của những đ&ocirc; thị lớn (như với c&aacute;c trường hợp đ&atilde; ti&ecirc;m đủ liều vaccine, c&oacute; đeo khẩu trang, đứng trong c&ugrave;ng khoang thang m&aacute;y với người nhiễm SARS-CoV-2 trong thời gian ngắn), đề nghị Bộ Y tế hướng dẫn, chỉ đạo c&aacute;c biện ph&aacute;p y tế ph&ugrave; hợp quy định v&agrave; diễn biến dịch tễ.</p>\r\n\r\n<p>&ldquo;Sở chủ tr&igrave;, chỉ đạo tăng cường việc cung cấp bảo đảm t&uacute;i thuốc g&oacute;i thuốc C (thuốc kh&aacute;ng vi r&uacute;t) cho c&aacute;c bệnh nh&acirc;n tại c&aacute;c tầng điều trị,&rdquo; l&atilde;nh đạo th&agrave;nh phố lưu &yacute; th&ecirc;m.</p>\r\n\r\n<p><strong>L</strong><strong>ắp đặt c&aacute;c thiết bị qu&eacute;t m&atilde; QR tại khu vực c&ocirc;ng cộng</strong></p>\r\n\r\n<p>Tại c&ocirc;ng điện, Chủ tịch H&agrave; Nội giao C&ocirc;ng an th&agrave;nh phố tăng cường cập nhật, kiểm so&aacute;t th&ocirc;ng tin nh&acirc;n khẩu tr&ecirc;n địa b&agrave;n; quản l&yacute; chặt chẽ số người thường tr&uacute;, tạm tr&uacute;, r&agrave; so&aacute;t hộ khẩu, người được cấp căn cước c&ocirc;ng d&acirc;n gắn chip, quản l&yacute; m&atilde; số định danh c&aacute; nh&acirc;n&hellip;</p>\r\n\r\n<p>Tăng cường kiểm so&aacute;t chặt chẽ di biến động d&acirc;n cư, nắm chắc t&igrave;nh h&igrave;nh người d&acirc;n khi ra, v&agrave;o địa b&agrave;n, người c&oacute; nguy cơ đang lưu tr&uacute;, l&agrave;m việc tại địa phương, doanh nghiệp (như l&aacute;i xe, phụ xe đường d&agrave;i, li&ecirc;n tỉnh, người l&agrave;m việc ngo&agrave;i tỉnh về địa phương lưu tr&uacute;, người lưu tr&uacute; ngoại tỉnh về địa phương l&agrave;m việc...) để c&oacute; biện ph&aacute;p quản l&yacute; ph&ugrave; hợp, khai b&aacute;o y tế thường xuy&ecirc;n.</p>', 'http://127.0.0.1:8000/imageupload/1638000669-Ca cộng đồng tăng, Hà Nội yêu cầu xét nghiệm tầm soát cho học sinh.jpg', '2021-11-27 01:11:09', '2021-11-27 01:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
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
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2d8bd5150cb3cdb05ad6cb3c0ec9e1b6075875fcb9f037d56673e9e779171271db3d782387f0ec7c', 1, 1, 'App', '[]', 0, '2021-11-26 23:48:20', '2021-11-26 23:48:20', '2022-11-27 06:48:20'),
('66a10894c6c470e13ffc374c20ace64f2f6f4269447d1d1e094f052ebc73642168fafe2a22ba17c3', 1, 1, 'App', '[]', 0, '2021-12-01 19:21:23', '2021-12-01 19:21:23', '2022-12-02 02:21:23'),
('9e8aebb27301fd3b4056e1ed1bdd5429b372c12bcc8d7c05aea0f785133b41fc4f618669f80ab3e4', 1, 1, 'App', '[]', 0, '2021-11-28 20:10:16', '2021-11-28 20:10:16', '2022-11-29 03:10:16'),
('b9da55aff2adb99e05b61e6ccf1700c8a5f1f951bcdd36a5b3f1ac587fadd3bd876336dac89aaf2c', 1, 1, 'App', '[]', 0, '2021-11-30 23:49:11', '2021-11-30 23:49:11', '2022-12-01 06:49:11'),
('c3c023bda4e9f5fb3cb7b93cff66a7425bee75943884fa2c41e0bbbb891fd771c1a03e3092114aa1', 1, 1, 'App', '[]', 0, '2021-12-01 01:31:22', '2021-12-01 01:31:22', '2022-12-01 08:31:22'),
('c6879f12d40505713af667c5f0e765935b8468cde4fa38cb3df569e07c4195956c63cbd9874163d2', 1, 1, 'App', '[]', 0, '2021-11-28 00:15:15', '2021-11-28 00:15:15', '2022-11-28 07:15:15'),
('db112ecd449e4ac724f4fec2e816f5a18132249947e517924834f3da9a95cacfcb5b3e67b6d84381', 1, 1, 'App', '[]', 0, '2021-11-30 23:48:53', '2021-11-30 23:48:53', '2022-12-01 06:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
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
-- Table structure for table `oauth_clients`
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
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'em5bjScqkQ9dPmUBStfXvcRykQEXnXzj92cIbPTn', NULL, 'http://localhost', 1, 0, 0, '2021-11-26 23:43:46', '2021-11-26 23:43:46'),
(2, NULL, 'Laravel Password Grant Client', 'PVMuCRv5y3jkN83ONBWVx26k7ZopQK28vd2fDalG', 'users', 'http://localhost', 0, 1, 0, '2021-11-26 23:43:46', '2021-11-26 23:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-26 23:43:46', '2021-11-26 23:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
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
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `date`, `pay`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'afe4649e', '2021-11-27 07:54:17', 'online', '480000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 00:54:17', '2021-11-27 20:02:59'),
(2, 'adac55c9', '2021-11-27 08:02:42', 'online', '960000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 01:02:42', '2021-11-27 01:34:08'),
(3, '0a61080f', '2021-11-27 08:12:37', 'online', '1920000', 'Đã Xác Nhận/ Đang Giao', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(4, 'e38a9c2c', '2021-11-27 12:41:12', 'offline', '960000', 'Chờ Xử Lý', '2021-11-27 05:41:12', '2021-11-27 05:41:12'),
(5, 'ff31e8f2', '2021-11-27 12:41:50', 'online', '960000', 'Đơn Hàng Bị Hủy', '2021-11-27 05:41:50', '2021-11-27 06:06:06'),
(6, '946e9576', '2021-11-27 13:21:49', 'offline', '480000', 'Chờ Xử Lý', '2021-11-27 06:21:49', '2021-11-27 06:21:49'),
(7, '9a8545c3', '2021-11-28 06:19:13', 'online', '1140000', 'Chờ Xử Lý', '2021-11-27 23:19:13', '2021-11-27 23:19:13'),
(8, '2f996581', '2021-11-29 02:45:11', 'online', '0', 'Chờ Xử Lý', '2021-11-28 19:45:11', '2021-11-28 19:45:11'),
(9, 'dc0fdb33', '2021-12-02 02:23:15', 'online', '798000', 'Đã thanh toán', '2021-12-01 19:23:15', '2021-12-01 19:23:26'),
(10, 'da9491fd', '2021-12-02 02:24:06', 'offline', '480000', 'Chờ Xử Lý', '2021-12-01 19:24:06', '2021-12-01 19:24:06'),
(11, '0f4fef7e', '2021-12-02 02:25:18', 'offline', '1440000', 'Chờ Xử Lý', '2021-12-01 19:25:18', '2021-12-01 19:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
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
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_code`, `product_id`, `product_name`, `product_quantity`, `user_fullname`, `user_email`, `user_phonenumber`, `user_address`, `user_address2`, `order_status`, `order_pay`, `created_at`, `updated_at`) VALUES
(1, 'afe4649e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 00:54:17', '2021-11-27 20:02:59'),
(2, 'adac55c9', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:02:42', '2021-11-27 01:34:08'),
(3, '0a61080f', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '3', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(4, '0a61080f', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã Xác Nhận/ Đang Giao', 'online', '2021-11-27 01:12:37', '2021-11-27 01:33:44'),
(5, 'e38a9c2c', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-11-27 05:41:12', '2021-11-27 05:41:12'),
(6, 'ff31e8f2', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đơn Hàng Bị Hủy', 'online', '2021-11-27 05:41:50', '2021-11-27 06:06:06'),
(7, '946e9576', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-11-27 06:21:49', '2021-11-27 06:21:49'),
(8, '9a8545c3', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'online', '2021-11-27 23:19:13', '2021-11-27 23:19:13'),
(9, '9a8545c3', 5, 'Bút đánh dấu vết mổ Twin Tip', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'online', '2021-11-27 23:19:13', '2021-11-27 23:19:13'),
(10, 'dc0fdb33', 2, 'Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Đã thanh toán', 'online', '2021-12-01 19:23:15', '2021-12-01 19:23:26'),
(11, 'da9491fd', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-12-01 19:24:06', '2021-12-01 19:24:06'),
(12, '0f4fef7e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '2', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-12-01 19:25:18', '2021-12-01 19:25:18'),
(13, '0f4fef7e', 1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '1', 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', '0345648638', 'Đà Nẵng', NULL, 'Chờ Xử lý', 'offline', '2021-12-01 19:25:18', '2021-12-01 19:25:18');

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_image`, `product_price`, `product_origin`, `product_manufacturer`, `product_discount`, `created_at`, `updated_at`) VALUES
(1, 'Máy trợ thính bỏ túi có dây Biohealth JH-238', '<p><strong>M&aacute;y trợ th&iacute;nh Biohealth JH-238&nbsp;</strong>l&agrave; d&ograve;ng m&aacute;y trợ th&iacute;nh c&oacute; d&acirc;y bỏ t&uacute;i tiện dụng, sử dụng bằng tai nghe headphone th&iacute;ch hợp cho người c&oacute; mức độ nghe k&eacute;m từ nhẹ đến nặng.&nbsp;<strong>M&aacute;y trợ th&iacute;nh bỏ t&uacute;i c&oacute; d&acirc;y Biohealth JH-238</strong>&nbsp;cung cấp &acirc;m thanh chất lượng cao, r&otilde; r&agrave;ng v&agrave; ch&iacute;nh x&aacute;c với 16 mức độ &acirc;m lượng kh&aacute;c nhau, dễ d&agrave;ng điều chỉnh bằng n&uacute;t vặn, bạn chế tối đa tiếng &ugrave;, tiếng vọng v&agrave; lọc &acirc;m tốt.</p>', 'http://127.0.0.1:8000/imageupload/1637999533-Máy trợ thính bỏ túi có dây Biohealth JH-238.jpg', 480000, 'việt nam', 'Biohealth', 12, '2021-11-27 00:52:13', '2021-11-27 00:52:13'),
(2, 'Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ', '<p>N&uacute;t lệ đạo tự ti&ecirc;u bằng collogen điều trị kh&ocirc; mắt VeraC7 h&atilde;ng Lacrivera, Mỹ được thiết kế để cung cấp một phương ph&aacute;p điều trị đơn giản v&agrave; hiệu quả cho triệu chứng kh&ocirc; mắt tạm thời.</p>\r\n\r\n<ul>\r\n	<li>Ph&ugrave; hợp ho&agrave;n hảo với lệ quản, dễ d&agrave;ng đưa v&agrave;o, dễ d&agrave;ng lưu giữ.</li>\r\n	<li>Sự thoải m&aacute;i tối đa cho bệnh nh&acirc;n.</li>\r\n	<li>Tự ti&ecirc;u trong v&ograve;ng từ&nbsp;7 đến 10 ng&agrave;y.</li>\r\n	<li>Giải ph&aacute;p tối ưu để điều trị kh&ocirc; mắt tạm thời sau phẫu thuật Lasik v&agrave; c&aacute;c phẫu thuật kh&aacute;c.</li>\r\n	<li>Được đ&oacute;ng g&oacute;i ri&ecirc;ng, v&ocirc; tr&ugrave;ng từng vỉ 6 c&aacute;i.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'http://127.0.0.1:8000/imageupload/1638064700-Nút lệ tự tiêu collagen VeraC7 điều trị khô mắt – Hãng Lacrivera, Mỹ.jpg', 399000, 'Mỹ', 'Lacrivera', 887, '2021-11-27 18:58:20', '2021-11-27 18:58:20'),
(3, 'Dung dịch bảo quản giác mạc hãng Alchimia, Italia', '<p>Dung dịch bảo quản gi&aacute;c mạc c&oacute; chứa Eusol-C l&agrave; một&nbsp;dung m&ocirc;i&nbsp; tổng hợp để bảo quản gi&aacute;c mạc ở&nbsp;4&deg;C trong khoảng thời gian l&ecirc;n đến 14 ng&agrave;y. N&oacute; cũng chưa DEC, khu&ocirc;n mắt giả để t&aacute;i tạo thẩm mỹ cho mắt của người hiến tặng.</p>\r\n\r\n<p>&nbsp;</p>', 'http://127.0.0.1:8000/imageupload/1638064828-Dung dịch bảo quản giác mạc hãng Alchimia, Italia.jpg', 599000, 'Italia', 'Alchimia', 999, '2021-11-27 19:00:28', '2021-11-27 19:02:33'),
(4, 'Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh', '<p>Khoan gi&aacute;c mạc ch&acirc;n kh&ocirc;ng CORONET&reg; d&ugrave;ng cho người&nbsp;nhận&nbsp;của h&atilde;ng&nbsp;Network Medical được thiết kế đặc biệt để tạo ra một vết rạch dọc ổn định v&agrave; đ&aacute;ng tin cậy, gi&uacute;p cải thiện cấu tr&uacute;c vết thương v&agrave; giảm mất tế b&agrave;o nội m&ocirc;.&nbsp;Khoan gi&aacute;c mạc xoay tự do với c&ocirc;ng nghệ lưỡi dao CORONET&reg; Cathedral Blade độc quyền, tạo ra một lưỡi dao si&ecirc;u mỏng v&agrave; sắc b&eacute;n để giảm thiểu vết cắt v&agrave; biến dạng m&ocirc;. Lưỡi dao di chuyển xuống 0.063 mm mỗi 1/4 v&ograve;ng v&agrave; 0.252 mm mỗi v&ograve;ng.</p>', 'http://127.0.0.1:8000/imageupload/1638065149-Khoan giác mạc chân không CORONET– Hãng Network Medical, Anh.jpg', 749000, 'Anh', 'Hãng Network Medical', 12, '2021-11-27 19:05:49', '2021-11-27 19:05:49'),
(5, 'Bút đánh dấu vết mổ Twin Tip', '<p><strong>B&uacute;t đ&aacute;nh dấu vết mổ 2 đầu, một đầu thường, một đầu si&ecirc;u nhỏ d&ograve;ng Twin Tip #1425SR-100 rất hiệu quả v&agrave; linh hoạt, th&iacute;ch hợp đa dạng với nhiều loại phẫu thu&acirc;t, bao gồm cả c&aacute;c phẫu thuật ch&iacute;nh x&aacute;c m&agrave;&nbsp;cần đ&aacute;nh dấu với n&eacute;t si&ecirc;u nhỏ.</strong></p>', 'http://127.0.0.1:8000/imageupload/1638065296-Bút đánh dấu vết mổ Twin Tip.jpg', 180000, 'Mỹ', 'Viscot', 500, '2021-11-27 19:08:16', '2021-11-27 19:08:16'),
(6, 'Chỉ phẫu thuật Vicryl 4-0 (tam giác) W9580T', '<p>Chỉ kh&ocirc;ng tan tự nhi&ecirc;n đa sợi bện, l&agrave;m từ một dạng protein hữu cơ &ndash; sợi tơ tằm Bombyx Mori. Chỉ được phủ một lớp s&aacute;p (wax). Chỉ được nhuộm m&agrave;u đen (Black Logwood), cỡ chỉ 10/0 &ndash; 2</p>', 'http://127.0.0.1:8000/imageupload/1638065499-Chỉ phẫu thuật Vicryl 4-0 (tam giác) W9580T.jpg', 89000, 'Bỉ', 'Johnson & Johnson', 200, '2021-11-27 19:11:39', '2021-11-27 19:11:39'),
(8, 'Máy đo nồng độ oxy trong máu SPO2 Wellmed FS20F', '<ul>\r\n	<li>M&aacute;y đo nồng độ oxy trong m&aacute;u<strong>&nbsp;Wellmed FS20F</strong>&nbsp;l&agrave; sản phẩm chuy&ecirc;n d&ugrave;ng để theo d&otilde;i độ b&atilde;o h&ograve;a oxy trong m&aacute;u (SPO2) v&agrave; nhịp tim.&nbsp;</li>\r\n	<li>Đ&acirc;y l&agrave; sản phẩm đến từ thương hiệu Wellmed - Chuy&ecirc;n sản xuất c&aacute;c thương hiệu thiết bị y tế v&agrave; chăm s&oacute;c sức khỏe đạt &quot;Ti&ecirc;u chuẩn an to&agrave;n hiệu suất: YY 0670 / IEC 60601-2-30&hellip;&nbsp;</li>\r\n	<li>Sản phẩm c&oacute; k&iacute;ch thước nhỏ gọn, kh&ocirc;ng x&acirc;m lấn n&ecirc;n rất tiện lợi d&ugrave;ng cho cả trẻ nhỏ v&agrave; người trưởng th&agrave;nh.</li>\r\n</ul>', 'http://127.0.0.1:8000/imageupload/1638425573-Máy đo nồng độ oxy trong máu SPO2 Wellmed FS20F.jpg', 990000, 'China', 'Wellmed', 200, '2021-12-01 23:12:53', '2021-12-01 23:12:53'),
(9, 'Mặt nạ mũi Nasal mask NM-002-TM', '<p>Mặt nạ mũi Nasal mask NM-002-TM l&agrave; mặt nạ d&agrave;nh cho m&aacute;y trợ thở. Sản phẩm ch&iacute;nh h&atilde;ng của Rescomf được thiết kế th&ocirc;ng minh, hiện đại gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng một c&aacute;ch thoải m&aacute;i trong qu&aacute; tr&igrave;nh trị liệu.</p>', 'http://127.0.0.1:8000/imageupload/1638425715-Mặt nạ mũi Nasal mask NM-002-TM.png', 999000, 'china', 'RESCOMF', 100, '2021-12-01 23:15:15', '2021-12-01 23:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
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
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `fullname`, `gender`, `birthday`, `address`, `email`, `mobilePhone`, `homePhone`, `officePhone`, `status`, `created_at`, `updated_at`) VALUES
(2, 'nguyễn duy anh', 'Nam', '2002-02-09', 'Thành phố Đà Nẵng', 'ndanh.20it3@vku.udn.vn', '0913361783', '0913361783', '0913361783', 'Chưa Xử Lý', '2021-12-01 19:18:50', '2021-12-01 19:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `address`, `phonenumber`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LÊ HỮU HOÀN', 'hoanle396@gmail.com', NULL, 'Đà Nẵng', '0345648638', '$2y$10$xCUWgC3lzt/UGciMeTAlWukWDsw50evLc.HjsUk7RieH3WF.yhjiW', 'Hoạt Động', NULL, '2021-11-26 23:48:08', '2021-11-26 23:48:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feed_backs`
--
ALTER TABLE `feed_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meets`
--
ALTER TABLE `meets`
  ADD PRIMARY KEY (`meets_id`),
  ADD KEY `meets_id_foreign` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_code` (`order_code`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_backs`
--
ALTER TABLE `feed_backs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meets`
--
ALTER TABLE `meets`
  MODIFY `meets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meets`
--
ALTER TABLE `meets`
  ADD CONSTRAINT `meets_id_foreign` FOREIGN KEY (`id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`order_code`) REFERENCES `orders` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
