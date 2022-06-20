-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2022 lúc 05:12 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(15, 'Thực Phẩm Thiên Nhiên', 'thuc-pham-thien-nhien', 1, 0, '0', '2022-05-04 09:31:52', '1', '2022-06-03 12:21:42', '1', 1, 1),
(16, 'Đèn Xông Tinh Dầu', 'den-xong-tinh-dau', 1, 0, '1', '2022-05-04 09:33:23', '1', '2022-06-03 12:10:46', '1', 1, 1),
(17, 'Tinh Bột Thiên Nhiên', 'tinh-bot-thien-nhien', 2, 15, '0', '2022-05-05 10:11:25', '1', '2022-05-05 10:11:25', '1', 1, 1),
(18, 'Tinh dầu nguyên chất', 'tinh-dau-nguyen-chat', 2, 20, '0', '2022-05-05 10:12:36', '1', '2022-06-03 12:16:06', '1', 1, 1),
(19, 'Thực phẩm dinh dưỡng', 'thuc-pham-dinh-duong', 2, 15, '2', '2022-05-06 09:03:06', '1', '2022-05-06 09:47:23', '1', 1, 1),
(20, 'Tinh Dầu Thiên Nhiên', 'tinh-dau-thien-nhien', 1, 0, '1', '2022-05-07 14:46:07', '1', '2022-06-03 12:13:32', '1', 1, 1),
(21, 'Đèn Xông Tinh Dầu', 'den-xong-tinh-dau', 2, 16, '', '2022-05-07 14:50:59', '1', '2022-05-07 14:50:59', '1', 0, 1),
(22, 'Đèn xông tinh dầu điện', 'den-xong-tinh-dau-dien', 2, 16, '0', '2022-06-03 12:11:17', '1', '2022-06-03 12:11:17', '1', 1, 1),
(23, 'Đèn xông tinh dầu nến', 'den-xong-tinh-dau-nen', 2, 16, '1', '2022-06-03 12:11:41', '1', '2022-06-03 12:11:41', '1', 1, 1),
(24, 'Dầu nền', 'dau-nen', 2, 20, '1', '2022-06-03 12:16:49', '1', '2022-06-03 12:16:49', '1', 1, 1),
(25, 'Tinh dầu hỗn hợp', 'tinh-dau-hon-hop', 2, 20, '2', '2022-06-03 12:17:22', '1', '2022-06-03 12:17:22', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'sale.smart.store.2019@gmail.com', '123456', 'vanhiepp1998@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Hay', '981643651', 'daigiadaklak@gmail.com', 'Hay', '2019/6/2', 1, 1, 'Ngô Văn Hiệp'),
(2, 'Shop', '981643651', 'vanhiepp19988@gmail.com', 'Shop 12 21', '2019/6/2', 1, 1, 'Ngô Văn Hiệp'),
(4, 'Câu hỏi', '090305078', 'luong@gmail.com', 'Thời giàn giao hang trong Quận 12 là bào nhiêu', '2019/6/2', 1, 1, 'Lương'),
(5, 'Câu hỏi', '090305078', 'luong@gmail.com', 'Thời giàn giao hang trong Quận 12 là bào nhiêu', '2019/6/2', 1, 0, 'Lương'),
(6, 'Yêu cầu', '90305078', 'luong@gmail.com', 'Chào shop', '2019/6/2', 1, 0, 'Lương'),
(7, 'Chào shop', '90305078', 'luong@gmail.com', '2', '2019/6/12', 0, 0, 'Lương'),
(9, 'Câu hỏi', '0981643651', 'hiep@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2019/6/12', 0, 1, 'Hiệp gà'),
(10, 'Câu hỏi', '0981643651', 'hiep@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2019/6/12', 1, 1, 'Hiệp gà'),
(11, 'kjhhgyyi', '0969667459', 'phuong@gmail.com', 'kikjhahs', '2022/5/3', 1, 1, 'phuong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Mặt Nạ Tinh Bột Nghệ Dưỡng Da Hiệu Quả', 'mat-na-tinh-bot-nghe-duong-da-hieu-qua', 'Mặt nạ tinh bột nghệ là lựa chọn để chăm sóc và bảo vệ da mặt của rất nhiều chị em  phụ nữ hiện đại ngày nay bởi sự tiện lợi, an toàn và công dụng vô cùng hiệu quả mà mặt nạ tinh bột nghệ mang lại. Với bài viết này Siêu Thị Thiên Nhiên xin chia sẻ cùng với chị em một số công thức và cách thực hiện mặt nạ tinh bột nghệ để chăm sóc da rất được ưa chuộng hiện nay.', '<p><span style=\"font-size:16px\"><strong>Mặt Nạ Tinh Bột Nghệ Dưỡng Da Hiệu Quả</strong></span><br />\r\n<span style=\"font-size:14px\">Mặt nạ tinh bột nghệ Mặt nạ tinh bột nghệ nguy&ecirc;n chất</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c bạn biết kh&ocirc;ng trong tinh bột nghệ chứa rất nhiều c&aacute;c dưỡng chất c&oacute; vai tr&ograve; rất quan trọng trong việc chăm s&oacute;c nu&ocirc;i dưỡng, t&aacute;i tạo v&agrave; bảo vệ l&agrave;n da của bạn như:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Curcumin l&agrave; thần dược h&agrave;ng đầu trong việc chống vi&ecirc;m nhiễm, kh&aacute;ng khuẩn v&agrave; ngăn ngừa l&atilde;o h&oacute;a cho da rất tốt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Calcium c&oacute; t&aacute;c dụng gi&uacute;p hồi phục c&aacute;c tổn thương của da, đặc biệt Calcium l&agrave; th&agrave;nh phần quan trọng gi&uacute;p phục hồi, t&aacute;i tạo tế b&agrave;o da mới từ đ&oacute; gi&uacute;p tế b&agrave;o da ph&aacute;t triển khỏe mạnh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Vitamin C gi&uacute;p l&agrave;n da của bạn c&oacute; sức đề kh&aacute;ng tốt v&agrave; duy tr&igrave; sức dẻo dai, độ đ&agrave;n hồi của da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Vitamin B6 c&oacute; vai tr&ograve; rất lớn trong việc điều tiết chất nhờn tr&ecirc;n da &nbsp;gi&uacute;p t&aacute;i tạo, hồi phục l&agrave;n da mới, đặc biệt hơn cả người bạn vitamin n&agrave;y sẽ gi&uacute;p duy tr&igrave; l&agrave;n da lu&ocirc;n căng mọng, &nbsp;tươi trẻ l&agrave;m bạn c&oacute; một l&agrave;n da căng tr&agrave;n sức sống.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Kali l&agrave; vị cứu tinh cho những ai c&oacute; l&agrave;n da kh&ocirc; bởi đ&oacute; như một vị thần sẽ cấp ẩm li&ecirc;n tục cho da gi&uacute;p da lu&ocirc;n mềm mịn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Magie l&agrave; kho&aacute;ng chất dinh dưỡng tuyệt vời gi&uacute;p da tươi s&aacute;ng, hồng h&agrave;o, ngăn ngừa sự l&atilde;o h&oacute;a cho l&agrave;n da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Ngo&agrave;i ra trong tinh bột nghệ c&ograve;n chứa Magan, canxi, c&aacute;c vitamin B2, B3, B9 &hellip;cũng l&agrave; c&aacute;c th&agrave;nh &nbsp;phần quan trọng tham gia v&agrave;o qu&aacute; tr&igrave;nh chống l&atilde;o h&oacute;a của da, ngăn ngừa c&aacute;c bệnh vi&ecirc;m da, t&agrave;n nhanh, th&acirc;m n&aacute;m tr&ecirc;n da&hellip;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c bạn c&oacute; thể xem th&ecirc;m về c&ocirc;ng dụng của tinh bột nghệ nguy&ecirc;n chất theo b&agrave;i viết sau</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Tất cả c&aacute;c th&agrave;nh phần c&oacute; trong &nbsp;tinh bột nghệ n&oacute;i tr&ecirc;n khi được kết hợp với c&aacute;c nguy&ecirc;n liệu ph&ugrave; hợp sẽ tạo th&agrave;nh c&aacute;c c&ocirc;ng thức mặt nạ tinh bột nghệ đặc trưng ri&ecirc;ng biệt gi&uacute;p chăm s&oacute;c da hiệu quả. Ch&uacute;ng ta h&atilde;y c&ugrave;ng ph&aacute;m ph&aacute; c&aacute;c c&ocirc;ng thức mặt nạ tinh bột nghệ nguy&ecirc;n chất chăm s&oacute;c da mặt dưới đ&acirc;y.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>1/ Mặt nạ tinh bột nghệ cho l&agrave;n da trắng s&aacute;ng, tươi trẻ tự nhi&ecirc;n:</strong><br />\r\nC&aacute;c bạn g&aacute;i muốn sở hữu l&agrave;n da trắng s&aacute;ng hồng h&agrave;o tự nhi&ecirc;n h&atilde;y chuẩn bị c&aacute;c nguy&ecirc;n liệu sau nh&eacute;. Tr&aacute;i bơ tươi gi&agrave;u vitamin E, chứa rất nhiều tinh dầu tự nhi&ecirc;n, c&aacute;c axit b&eacute;o gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng tạo độ ẩm cho da. Tinh bột nghệ l&agrave; thảo mộc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n chứa rất nhiều dưỡng chất vi diệu cho da. Sự kết hợp kh&eacute;o l&eacute;o giữa tr&aacute;i bơ tươi v&agrave; tinh bột nghệ nguy&ecirc;n chất sẽ tạo n&ecirc;n một c&ocirc;ng thức mặt nạ tinh bột nghệ chăm s&oacute;c da ho&agrave;n hảo.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguy&ecirc;n liệu: &frac12; th&igrave;a caf&eacute; tinh bột ngh&ecirc;, 1 th&igrave;a caf&eacute; bơ, 1 th&igrave;a caf&eacute; sữa chua</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;ch thực hiện mặt nạ tinh bột nghệ cho l&agrave;n da trắng s&aacute;ng: Đầu ti&ecirc;n bạn cần nghiền bơ thật nhuyễn v&agrave; mịn, sau đ&oacute; trộn đều tinh bột ngh&ecirc;, bơ v&agrave; sữa chua trong một chiếc b&aacute;t sạch đến khi hỗn hợp s&aacute;nh mịn l&agrave; được. Trước khi đắp mặt nạ bạn cần rửa mặt thật sạch sau đ&oacute; lau kh&ocirc; v&agrave; đắp thật đều hỗn hợp l&ecirc;n da. Để khoảng 20 ph&uacute;t rửa sạch lại &nbsp;bằng nước lạnh. Bạn h&atilde;y chăm chỉ đắp mặt một tuần hai lần để c&oacute; l&agrave;n da trắng s&aacute;ng như &yacute; nh&eacute;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>2/ Mặt nạ tinh bột nghệ nguy&ecirc;n chất cho l&agrave;n da kh&ocirc;:</strong><br />\r\nChắc hẳn c&aacute;c bạn đang sở hữu l&agrave;n da kh&ocirc; sẽ thấy rất kh&oacute; chịu &nbsp;v&agrave; mất tự tin. Giờ đ&acirc;y c&aacute;c bạn c&oacute; l&agrave;n da kh&ocirc; h&atilde;y y&ecirc;n t&acirc;m nh&eacute;. Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n xin bật b&iacute; cho c&aacute;c bạn c&ocirc;ng thức mặt nạ tinh bột nghệ với l&ograve;ng đỏ trứng g&agrave; rất hiệu nghiệm m&agrave; lại dễ thực hiện với c&aacute;c nguy&ecirc;n liệu sẵn c&oacute; xung quanh ch&uacute;ng ta. L&ograve;ng đỏ trứng g&agrave; từ l&acirc;u đ&atilde; được biết đến l&agrave; vị cứu tinh với l&agrave;n da kh&ocirc; bởi c&aacute;c dưỡng chất thi&ecirc;n nhi&ecirc;n dồi d&agrave;o c&oacute; trong l&ograve;ng đỏ trứng g&agrave; như Protein, c&aacute;c vitamin, axit amin,kẽm, ngo&agrave;i da trong l&ograve;ng đỏ trứng g&agrave; c&ograve;n chứa rất nhiều nước, chất b&eacute;o gi&uacute;p dưỡng ẩm rất tốt cho da. Sự kết hợp của của l&ograve;ng đỏ trứng g&agrave; với tinh bột nghệ sẽ tạo n&ecirc;n một c&ocirc;ng thức mặt nạ tinh bột nghệ tuyệt diệu mang lại cho bạn một liệu ph&aacute;p an to&agrave;n cải thiện r&otilde; rệt l&agrave;n da kh&ocirc; trở n&ecirc;n, mềm mịn tr&agrave;n đầy năng lượng hơn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguy&ecirc;n liệu: &nbsp;- 01 l&ograve;ng đỏ trứng g&agrave;, 01 th&igrave;a cafe tinh bột nghệ, 01 th&igrave;a cafe sữa chua kh&ocirc;ng đường</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Thực hiện: Trước ti&ecirc;n bạn cần đ&aacute;nh thật tan v&agrave; b&ocirc;ng l&ograve;ng đỏ trứng g&agrave;, sau đ&oacute; cho tinh bột nghệ v&agrave; sữa chua v&agrave;o trộn đều đến khi hỗn hợp s&aacute;nh mịn. B&ocirc;i hỗn hợp l&ecirc;n da mặt sau khi đ&atilde; được rửa sạch bằng nước ấm để trong thời gian 20 ph&uacute;t th&igrave; rửa lại bằng nước sạch l&agrave; lau kh&ocirc; l&agrave; được.<br />\r\nC&aacute;c bạn c&oacute; thể xem th&ecirc;m c&ocirc;ng thức mặt nạ tinh bột nghệ với sữa chua kh&ocirc;ng đường cho l&agrave;n da kh&ocirc; rất dễ thực hiện tại đ&acirc;y:</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>3/ Mặt nạ tinh bột nghệ nguy&ecirc;n chất cho l&agrave;n da nhờn mụn:</strong><br />\r\n&Ocirc;i mụn kẻ th&ugrave; đ&aacute;ng gh&eacute;t nhất của c&aacute;c bạn g&aacute;i. Da dầu, nhờn mụn l&agrave; loại da kh&aacute; kh&oacute; t&iacute;nh trong việc chăm s&oacute;c v&igrave; vậy sử dụng tinh bột nghệ đắp mặt l&agrave; giải ph&aacute;p an to&agrave;n v&agrave; kinh tế trong việc chăm s&oacute;c da. Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n xin m&aacute;ch nhỏ cho c&aacute;c bạn c&ocirc;ng thức l&agrave;m mặt nạ tinh bột nghệ kết hợp với mật ong, chanh v&agrave; sữa chua rất hiệu quả.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguy&ecirc;n liệu: 01 th&igrave;a cafe tinh bột nghệ nguy&ecirc;n chất, &frac12; th&igrave;a caf&eacute; mật ong, &frac12; th&igrave;a caf&eacute; nước cốt chanh v&agrave; một nửa hũ sữa chua kh&ocirc;ng đường<br />\r\nThực hiện: Trộn đều c&aacute;c nguy&ecirc;n liệu tr&ecirc;n trong một chiếc t&ocirc; sạch để được một hỗn hợp mịn s&aacute;nh. Bạn đừng bao giờ qu&ecirc;n rửa mặt thật sạch trước khi đắp mặt nạ l&ecirc;n da mặt m&igrave;nh nh&eacute;. Massage mặt nhẹ nh&agrave;ng sau đ&oacute; đắp thật đều một lớp hỗn hợp mỏng l&ecirc;n da. Thư gi&atilde;n thả lỏng cơ thể trong v&ograve;ng 20 ph&uacute;t th&igrave; rửa lại thật sạch bằng nước lạnh. D&ugrave;ng khăn kh&ocirc; mềm lau mặt bạn nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Hoặc c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m c&aacute;c c&ocirc;ng thức l&agrave;m mặt nạ tinh bột nghệ cho da nhờn tại đ&acirc;y:</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>4/ Mặt nạ tinh bột nghệ nguy&ecirc;n chất v&agrave; dưa leo:</strong><br />\r\nDưa leo ( hay c&ograve;n gọi l&agrave; dưa chuột) một nguy&ecirc;n liệu quen thuộc kh&aacute; dễ t&igrave;m khi kết hợp với tinh bột nghệ sẽ mang một c&ocirc;ng thức mặt nạ tinh bột nghệ chăm s&oacute;c da khiến chị em rất th&iacute;ch th&uacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đ&acirc;y l&agrave; mặt nạ tinh bột nghệ rất dễ thực hiện lại ph&ugrave; hợp với mọi loại da c&aacute;ch l&agrave;m đơn giản như sau:&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguy&ecirc;n liệu chuẩn bị: 01 th&igrave;a caf&eacute; tinh bột nghệ , nước &eacute;p dưa chuột, 01 th&igrave;a caf&eacute; tinh bột nghệ nguy&ecirc;n chất, 02 th&igrave;a caf&eacute; sữa tươi.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;ch l&agrave;m: H&atilde;y trộn thật đều c&aacute;c nguy&ecirc;n liệu trong một chiếc b&aacute;t sạch đến khi hỗn hợp qu&aacute;nh sệt với nhau l&agrave; được. Nhớ rửa mặt thật sạch sau đ&oacute; massage nhẹ nh&agrave;ng v&agrave; &nbsp;đắp hỗn hợp tr&ecirc;n l&ecirc;n da mặt đợi khoảng 20 ph&uacute;t th&igrave; rửa mặt sạch bằng nước lạnh. Mặt nạ n&agrave;y ph&ugrave; hợp với mọi loại da c&oacute; t&aacute;c dụng ti&ecirc;u vi&ecirc;m, se lỗ ch&acirc;n l&ocirc;ng, t&aacute;i tạo da ngăn chặn sự xuất hiện của sẹo gi&uacute;p da tươi s&aacute;ng v&agrave; khỏe mạnh hơn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>5/ Mặt nạ tinh bột nghệ nước cốt chanh trị t&agrave;n nhang.</strong><br />\r\nNguy&ecirc;n liệu: 02 th&igrave;a cafe tinh bột nghệ, 01 th&igrave;a cafe nước cốt chanh</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;ch l&agrave;m: Trộn thật đều nguy&ecirc;n liệu &nbsp;v&agrave;o một dụng cụ sạch đến khi hỗn hợp s&aacute;nh sền sệt l&agrave; được. D&ugrave;ng b&ocirc;ng đắp đều mặt nạ l&ecirc;n da c&oacute; thể massage nhẹ nh&agrave;ng &nbsp;da mặt v&agrave; giữ mặt nạ trong khoảng thời gian l&agrave; 20 ph&uacute;t th&igrave; rửa mặt sạch với nước lạnh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c bạn muốn c&oacute; l&agrave;n da trắng s&aacute;ng kh&ocirc;ng c&ograve;n t&agrave;n nhan v&agrave; l&agrave;m mờ vết th&acirc;m như mong muốn th&igrave; n&ecirc;n thực hiện mặt nạ tinh bột nghệ n&agrave;y thường xuy&ecirc;n tuần 2 lần nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">MỘT SỐ LƯU &Yacute; KH&Ocirc;NG THỂ BỎ QUA KHI ĐẮP MẶT NẠ TINH BỘT NGHỆ ĐỂ C&Oacute; KẾT QUẢ TỐT NHẤT.<br />\r\n- &nbsp; &nbsp;Trước ti&ecirc;n với c&aacute;c bạn c&oacute; l&agrave;n da dầu nhờn, nổi mụn li&ecirc;n tục th&igrave; h&atilde;y đi kh&aacute;m b&aacute;c sỹ da liễu để c&oacute; phương ph&aacute;p điều trị mụn tốt nhất.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Kh&ocirc;ng n&ecirc;n đắp mặt nạ tinh bột nghệ li&ecirc;n tục nhiều lần trong một tuần. Bạn chỉ n&ecirc;n đắp mặt &nbsp;từ 2 đến 3 lần một tuần với khoảng thời gian c&aacute;ch đều nhau để da bạn c&oacute; khoảng thời gian nghỉ ngơi v&agrave; thẩm thấu được tối đa c&aacute;c dưỡng chất v&agrave; vitamin c&oacute; trong hỗn hợp tinh bột nghệ. Trong qu&aacute; tr&igrave;nh đắp mặt nạ kh&ocirc;ng b&ocirc;i hỗn hợp l&ecirc;n mắt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;N&ecirc;n massage nhẹ nh&agrave;ng da mặt trước khi đắp mặt nạ tinh bột nghệ như vậy hiệu quả nhận được sẽ tốt hơn nhiều lần.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Sau khi đắp mặt nạ tinh bột nghệ n&ecirc;n tr&aacute;nh tiếp x&uacute;c trực tiếp với &aacute;nh nắng v&igrave; thế thời gian để đắp mặt nạ với tinh bột nghệ tốt nhất l&agrave; trước khi đi ngủ khoảng 30 đến 40 ph&uacute;t.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Lưu &yacute; kh&ocirc;ng n&ecirc;n đắp mặt nạ tinh bột nghệ qu&aacute; d&agrave;y v&agrave; qu&aacute; l&acirc;u tr&ecirc;n da mặt. V&igrave; tinh bột nghệ c&oacute; thể l&agrave;m da bạn bị v&agrave;ng, thời gian đắp mặt lu&ocirc;n l&agrave; kh&ocirc;ng qu&aacute; 20 ph&uacute;t nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Kh&ocirc;ng n&ecirc;n rửa mặt bằng bất kỳ loại sữa rửa mặt hoặc loại x&agrave; ph&ograve;ng n&agrave;o sau khi đắp mặt xong v&igrave; như vậy sẽ l&agrave;m da bạn kh&ocirc;ng hấp thụ được hết c&ocirc;ng dụng m&agrave; mặt nạ đem lại.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Đặc biệt bạn cần lưu &yacute; khi da bị nổi mụn qu&aacute; nhiều th&igrave; &nbsp;n&ecirc;n đi kh&aacute;m b&aacute;c sỹ da liễu để được tư vấn trước khi sử dụng mặt nạ tinh bột nghệ. Hoặc nếu thấy da m&igrave;nh bị dị ứng khi đắp mặt nạ tinh bột nghệ th&igrave; ngay lập tức bạn phải dừng việc đắp mặt nạ v&agrave; kh&aacute;m b&aacute;c sỹ ngay nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Cuối c&ugrave;ng một lời khuy&ecirc;n kh&ocirc;ng thể thiếu đ&oacute; l&agrave; c&aacute;c bạn h&atilde;y lu&ocirc;n nhớ chăm s&oacute;c bản th&acirc;n bằng việc uống thật nhiều nước, ăn nhiều hoa quả rau xanh v&agrave; c&oacute; một chế độ l&agrave;m việc, nghỉ ngơi tập thể dục thật khoa học nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">BẢNG GI&Aacute; TINH BỘT NGHỆ NGUY&Ecirc;N CHẤT<br />\r\nTinh bột nghệ nguy&ecirc;n chất l&agrave; sản phẩm c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n m&agrave; ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m, tin tưởng sử dụng chăm s&oacute;c sức khỏe hay l&agrave;m mặt nạ tinh bột nghệ để chăm s&oacute;c da mặt. Đến với si&ecirc;u thị thi&ecirc;n nhi&ecirc;n c&aacute;c bạn sẽ được phục vụ chu đ&aacute;o với gi&aacute; cả tốt nhất.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Gi&aacute; sản phẩm tinh bột nghệ nguy&ecirc;n chất: 500,000đ/1kg - &nbsp;265,000 đ/ 0.5kg</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c bạn c&oacute; thể tham khảo bảng gi&aacute; tinh bột nghệ nguy&ecirc;n chất chi tiết theo đường link sau:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">H&atilde;y li&ecirc;n hệ ngay ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng miễn ph&iacute; đến tận tay bạn điện thoại li&ecirc;n hệ: 0982716617</span></p>\r\n\r\n<p><strong><span style=\"font-size:14px\">QUY C&Aacute;CH Đ&Oacute;NG G&Oacute;I SẢN PHẨM</span></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Khối lượng tịnh: 500g &ndash; 1kg</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;C&aacute;ch thức lựa chọn nguy&ecirc;n liệu: Sản phẩm tinh bột nghệ nguy&ecirc;n chất của Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n được đ&oacute;ng g&oacute;i tr&ecirc;n d&acirc;y truyền hiện đại chuy&ecirc;n nghiệp. Tất cả đều được dựa tr&ecirc;n những ti&ecirc;u chuẩn vệ sinh an to&agrave;n thực phẩm của bộ y tế đ&atilde; ban h&agrave;nh.</span></p>\r\n\r\n<p><strong><span style=\"font-size:14px\">C&Aacute;CH BẢO QUẢN SẢN PHẨM</span></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Đ&oacute;ng nắp ngay khi d&ugrave;ng xong</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Hạn sử dụng 06 th&aacute;ng kể từ &nbsp;ng&agrave;y mở bao b&igrave; sản phẩm</span></p>\r\n\r\n<p><strong><span style=\"font-size:14px\">CAM KẾT CỦA CH&Uacute;NG T&Ocirc;I</span></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Sản phẩm c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Kh&ocirc;ng c&oacute; chất bảo quản trong sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Ho&agrave;n tiền ngay nếu sản phẩm kh&ocirc;ng đ&uacute;ng y&ecirc;u cầu</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Giao h&agrave;ng trước, nhận tiền sau.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- &nbsp; &nbsp;Giao h&agrave;ng miễn ph&iacute; to&agrave;n quốc</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Hiện nay tr&ecirc;n thị trường xuất hiện kh&aacute; nhiều sản phẩm tinh bột nghệ k&eacute;m chất lượng g&acirc;y lo lắng cho người ti&ecirc;u d&ugrave;ng. Thấu hiểu được t&acirc;m l&yacute; người ti&ecirc;u d&ugrave;ng n&ecirc;n Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n xin cam kết mang đến cho c&aacute;c bạn c&aacute;c sản phẩm tinh bột nghệ an to&agrave;n nhất, chất lượng nhất với gi&aacute; tốt nhất. Để l&agrave;m mặt nạ tinh bột nghệ bạn H&atilde;y nhanh tay mua h&agrave;ng tại Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n c&aacute;c bạn sẽ c&oacute; sản phẩm tinh bột nghệ nguy&ecirc;n chất với chất lượng đảm bảo với gi&aacute; cả hợp l&yacute; nhất. Ch&uacute;ng t&ocirc;i sẽ lu&ocirc;n lu&ocirc;n b&ecirc;n cạnh v&agrave; đồng h&agrave;nh chăm s&oacute;c sức khỏe của bạn.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'matnatinhbotnghe.jpg', '2019-05-26 23:18:02', '1', '2022-05-07 15:08:42', '1', 1, 0),
(5, 'HongMeng OS của Huawei xuất hiện trực tuyến, có tên quốc tế là Ark OS', 'hongmeng-os-cua-huawei-xuat-hien-truc-tuyen-co-ten-quoc-te-la-ark-os', '', '<h2>Kh&ocirc;ng c&ograve;n nghi ngờ g&igrave; nữa,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-huawei\" target=\"_blank\">Huawei</a>&nbsp;đang ph&aacute;t triển hệ điều h&agrave;nh của ri&ecirc;ng m&igrave;nh, c&oacute; thể được gọi l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/huawei-mate-30-se-chay-he-dieu-hanh-hongmeng-os-va-chip-kirin-985-1170811\" target=\"_blank\">HongMeng OS</a>&nbsp;ở Trung Quốc v&agrave; Ark OS ở c&aacute;c quốc gia kh&aacute;c. Hệ thống n&agrave;y đ&atilde; th&ocirc;ng qua chứng nhận nh&atilde;n hiệu của Văn ph&ograve;ng Thương hiệu Trung Quốc cũng như Văn ph&ograve;ng Sở hữu Tr&iacute; tuệ Ch&acirc;u &Acirc;u.</h2>\r\n\r\n<p>C&aacute;c b&aacute;o c&aacute;o gần đ&acirc;y cho thấy Huawei đ&atilde; nộp đơn xin cấp bằng s&aacute;ng chế giao diện&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;với t&ecirc;n l&agrave; Huawei Ark OS.&nbsp;Trong đ&oacute;, Ark v&agrave; Huawei Ark đ&atilde; được&nbsp;Văn ph&ograve;ng nh&atilde;n hiệu v&agrave; bằng s&aacute;ng chế của Đức chứng nhận v&agrave;o th&aacute;ng 3 năm nay.</p>\r\n\r\n<p>Ứng dụng bằng s&aacute;ng chế cũng bao gồm một loạt c&aacute;c ảnh chụp m&agrave;n h&igrave;nh. Tuy nhi&ecirc;n, kh&ocirc;ng r&otilde; liệu ảnh chụp m&agrave;n h&igrave;nh b&ecirc;n dưới c&oacute; thuộc hệ thống HongMeng/ Ark sắp tới của Huawei hay kh&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2019/06/08/1171773/Gallery/ark-os-z.jpg\" style=\"height:309px; width:550px\" /></p>\r\n\r\n<p>Một trong những ảnh chụp m&agrave;n h&igrave;nh c&oacute; cụm từ &quot;Android Green Alliance&quot; gợi &yacute; rằng hệ thống HongMeng/ Ark c&oacute; thể tương th&iacute;ch với c&aacute;c ứng dụng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?g=android\" target=\"_blank\">Android</a>. Li&ecirc;n minh Android Xanh được Huawei, Alibaba, Tencent v&agrave; Netease phối hợp ra mắt. N&oacute; nhằm mục đ&iacute;ch tạo ra một hệ sinh th&aacute;i ứng dụng an to&agrave;n, đ&aacute;ng tin cậy v&agrave; l&agrave;nh mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2019/06/08/1171773/ark-os_550x409.jpg\" style=\"height:409px; width:550px\" /></p>\r\n\r\n<p>Hiện nay, nhiều c&ocirc;ng ty đ&atilde; tham gia. Trước đ&acirc;y, Yu Chengdong -&nbsp;Gi&aacute;m đốc điều h&agrave;nh bộ phận kinh doanh ti&ecirc;u d&ugrave;ng của Huawei, đ&atilde; tiết lộ rằng Huawei OS sẽ tương th&iacute;ch với smartphone, m&aacute;y t&iacute;nh,&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\">m&aacute;y t&iacute;nh bảng</a>, TV, xe hơi, thiết bị đeo th&ocirc;ng minh v&agrave; nhiều hệ thống kh&aacute;c.</p>\r\n\r\n<p>Nguồn:&nbsp;<a href=\"https://www.gizchina.com/2019/06/07/suspected-huawei-ark-os-interface-appears-online/\" target=\"_blank\">Gizchina</a></p>\r\n', '636944709585403075_huawei-dat-doanh-thu-khung-tren-tmall-cover.jpg', '2019-06-10 00:27:23', '1', '2019-06-12 22:53:05', '1', 0, 1),
(6, 'Tác dụng của Tinh Bột Nghệ với Mật Ong', 'tac-dung-cua-tinh-bot-nghe-voi-mat-ong', 'Tinh bột nghệ với mật ong là sự kết hợp hoàn hảo tuyệt vời trong việc chăm sóc sức khỏe và sắc đẹp điều này đã được khẳng định và duy trì sử dụng từ xa xưa cho đến ngày nay. Với bài viết này Siêu thị thiên nhiên xin gửi tới quý độc giả những người bạn thân thiết của chúng tôi một vài kiến thức chia sẻ trong việc tìm hiểu công dụng của sự kết hợp giữa tinh bột nghệ với mật ong.', '<h2><span style=\"font-size:16px\"><strong>T&aacute;c dụng của sự kết hợp giữa tinh bột nghệ với mật ong</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tinh bột nghệ với mật ong</strong>&nbsp;l&agrave; cụm từ quen thuộc, l&agrave; sự kết hợp kinh điển tạo n&ecirc;n mối quan hệ hỗ trợ tuyệt diệu kh&ocirc;ng g&igrave; thay thế. Tinh bột nghệ với mật ong khi được h&ograve;a quyện với nhau sẽ l&agrave;m n&acirc;ng gi&aacute; trị của nhau l&ecirc;n gấp nhiều lần. Vị đắng thơm của&nbsp;<strong>tinh bột nghệ</strong>&nbsp;khi được h&ograve;a tan trong hương vị thơm dịu ngọt của mật ong tự nhi&ecirc;n sẽ tạo th&agrave;nh tinh bột nghệ mật ong một hương vị rất dễ sử dụng cho bất kỳ lứa tuổi n&agrave;o. Khi sử dụng&nbsp;<a href=\"https://sieuthithiennhien.vn/san-pham/tinh-bot-nghe/\"><strong>tinh bột nghệ</strong></a>&nbsp;kết hợp với&nbsp;<strong>mật ong</strong>&nbsp;sẽ mang lại rất nhiều c&ocirc;ng hữu &iacute;ch trong việc chăm s&oacute;c sức khỏe cũng như sắc đẹp như sau:</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>1/ T&aacute;c dụng chữa đau dạ d&agrave;y rất hiệu quả:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tinh bột nghệ với mật ong</strong>&nbsp;l&agrave; hai vị thuốc thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng l&agrave;nh t&iacute;nh gi&uacute;p l&agrave;m giảm vi&ecirc;m lo&eacute;t dạ d&agrave;y, dần dần hồi phục vết vi&ecirc;m sưng lo&eacute;t, giảm đau dạ d&agrave;y rất hiệu quả m&agrave; từ xa xưa &ocirc; cha ta đ&atilde; tin tưởng sử dụng. Curcumin trong tinh bột nghệ gi&uacute;p t&aacute;i tạo hồi phục gi&uacute;p vết vi&ecirc;m lo&eacute;t dạ d&agrave;y mau l&agrave;nh, vitamin c, catalase c&oacute; trong mật ong gi&uacute;p tăng hệ miễn dịch, tăng sức đề kh&aacute;ng cho cơ thể. Tinh bột nghệ mật ong đ&uacute;ng l&agrave; người bạn thi&ecirc;n nhi&ecirc;n kh&ocirc;ng thể thiếu trong điều trị bệnh dạ d&agrave;y.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>2/ Ph&ograve;ng chống, ngăn ngừa bệnh ung thư:&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Cucurmin&nbsp;</strong>c&ugrave;ng c&aacute;c vi ta min c&oacute; trong tinh bột nghệ kết hợp với c&aacute;c dưỡng chất qu&yacute; như vitamin c, b6, sắt, kali, axifolic trong mật ong tự nhi&ecirc;n c&oacute; c&ocirc;ng dụng tăng sức đề kh&aacute;ng cho cơ thể, đẩy xa qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a. Ngăn chặn ức chế sự ph&aacute;t triển của c&aacute;c tế bảo c&oacute; hại kh&ocirc;ng cho ch&uacute;ng c&oacute; cơ hội x&acirc;m hại cơ thể bạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>3/ Hỗ trợ chữa trị vi&ecirc;m khớp</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Tinh bột nghệ kết hợp với mật ong sẽ c&oacute; vai tr&ograve; v&ocirc; c&ugrave;ng tốt trong việc l&agrave;m mềm c&aacute;c cơ khớp, l&agrave;m giảm c&aacute;c cơn đau mỏi cơ khớp h&agrave;nh hạ bạn. Những ai đang bị đau mỏi cơ khớp, vi&ecirc;m khớp h&atilde;y uống tinh bột nghệ với mật ong sẽ thấy ngay sự kh&aacute;c biệt trong thời gian một th&aacute;ng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>4/ L&agrave;m giảm colesterol trong m&aacute;u:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Khi bạn sử dụng đều đặn tinh bột nghệ với mật ong h&agrave;ng ng&agrave;y bạn sẽ cảm nhận được cơ thể được thanh lọc c&aacute;c mạch m&aacute;u lưu th&ocirc;ng tuần ho&agrave;n tốt hơn, từ đ&oacute; l&agrave;m giảm lượng colesterol trong m&aacute;u.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>5/ Trợ gi&uacute;p qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a tốt hơn:&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c dưỡng chất qu&yacute; c&oacute; trong tinh bột nghệ v&agrave; mật ong khi kết hợp với nhau sẽ bảo vệ v&agrave; thanh lọc giải độc cơ thể, gi&uacute;p qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a dễ d&agrave;ng v&agrave; tinh bột nghệ với mật ong sẽ l&agrave; những chiến binh bảo vệ hệ ti&ecirc;u h&oacute;a đặc biệt bảo vệ cho dạ d&agrave;y của bạn được khỏe mạnh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>6/ Đẩy xa qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a cơ thể</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tinh bột nghệ với mật ong</strong>&nbsp;l&agrave; một sự kết hợp tuyệt vời m&agrave; thi&ecirc;n nhi&ecirc;n gửi tặng cho con người. V&igrave; thế phải biết ch&acirc;n qu&yacute; những gi&aacute; trị tuyệt vời n&agrave;y. Một t&aacute;c dụng tuyệt diệu khi tinh bột nghệ kết hợp với mật ong m&agrave; bạn kh&ocirc;ng thể ngờ đ&oacute; l&agrave; ch&uacute;ng sẽ đẩy xa qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a của cơ thể, khi sử dụng thường xuy&ecirc;n tinh bột nghệ mật ong th&igrave; qu&aacute; tr&igrave;nh trao đổi chất trong cơ thể bạn diễn ra v&ocirc; c&ugrave;ng thuận lợi từ đ&oacute; t&aacute;i tạo tế b&agrave;o, mặt kh&aacute;c c&aacute;c dưỡng chất v&agrave; vitamin c&oacute; trong tinh bột nghệ mật ong sẽ bảo vệ c&aacute;c tế b&agrave;o tốt ph&aacute;t triển l&agrave;nh mạnh tăng hệ miễn dịch, ức chế c&aacute;c tế b&agrave;o c&oacute; hại. Sức khỏe l&agrave; v&agrave;ng v&igrave; thế bạn h&atilde;y lu&ocirc;n chăm s&oacute;c v&agrave; bảo vệ sức khỏe của m&igrave;nh bằng việc thường xuy&ecirc;n sử dụng tinh bột nghệ với mật ong.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>7/ Sử dụng tinh bột nghệ với mật ong gi&uacute;p giảm bớt căng thẳng, an thần dễ ngủ.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sau một ng&agrave;y l&agrave;m việc căng thẳng vất vả bạn h&atilde;y tự thưởng cho m&igrave;nh một ly tinh bột nghệ pha trong nước ấm kết hợp một ch&uacute;t mật ong để cơ thể bạn được thư th&aacute;i v&agrave; c&oacute; giấc ngủ s&acirc;u ngon l&agrave;nh nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>8/ Sử dụng tinh bột nghệ với mật ong gi&uacute;p giảm c&acirc;n hiệu quả</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phương ph&aacute;p sử dụng tinh bột nghệ mật ong l&agrave; rất ph&ugrave; hợp với c&aacute;c bạn c&oacute; nhu cầu giảm c&acirc;n . Chất Curcumin sẽ chiến binh đ&aacute;nh bay lượng mỡ &nbsp;t&iacute;ch lũy, dư thừa trong cơ thể cũng như ngăn chặn kh&ocirc;ng để c&aacute;c tế b&agrave;o mỡ ph&aacute;t triển trong cơ thể. C&aacute;c dưỡng chất c&oacute; trong mật ong nu&ocirc;i dưỡng bảo vệ c&aacute;c tế b&agrave;o trong cơ thể ph&aacute;t triển thuận lợi gi&uacute;p bạn c&oacute; một cơ thể thon gọn săn chắc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>9/ Sử dụng tinh bột nghệ với mật ong gi&uacute;p chăm s&oacute;c da hiệu quả</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">D&ugrave;ng tinh bột nghệ mật ong để đắp mặt l&agrave; một sự lựa chọn rất phổ biến được nhiều bạn ưa th&iacute;ch lựa chọn. Sử dụng đều đặn c&ocirc;ng thức mặt nạ tinh bột nghệ với mật ong đ&uacute;ng c&aacute;ch c&aacute;c bạn g&aacute;i sẽ rất vui v&igrave; lu&ocirc;n sở hữu l&agrave;n da trắng s&aacute;ng hồng h&agrave;o m&agrave; kh&ocirc;ng hề thấy mụn n&aacute;m hay t&agrave;n nhang xuất hiện.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Xem th&ecirc;m:&nbsp;<a href=\"https://sieuthithiennhien.vn/tinh-bot-nghe-vang/\">T&aacute;c dụng của tinh bột nghệ v&agrave;ng</a></span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Một v&agrave;i c&aacute;ch sử dụng tinh bột nghệ mật ong đơn giản m&agrave; hữu &iacute;ch</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">T&ugrave;y theo nhu cầu, theo ho&agrave;n cảnh v&agrave; t&igrave;nh trạng sức khỏe thực tế cũng như t&igrave;nh trạng bệnh của từng trường hợp cụ thể c&aacute;c bạn h&atilde;y t&igrave;m hiểu thật kỹ v&agrave; sử dụng tinh bột nghệ với mật ong cho ph&ugrave; hợp để chăm s&oacute;c bản th&acirc;n sao cho hiệu quả tốt đẹp nhất nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Bạn c&oacute; thể chăm s&oacute;c sức khỏe bằng tinh bột nghệ với mật ong qua c&aacute;c c&aacute;ch sau đ&acirc;y:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;<strong>Uống tinh bột nghệ với mật ong</strong>: Với c&aacute;ch n&agrave;y bạn h&ograve;a tan 2 th&igrave;a caf&eacute; mật ong trong 200ml nước ấm sau đ&oacute; cho v&agrave;o 01 th&igrave;a caf&eacute; mật ong. Bạn uống đều đặn 2 cốc tinh bột nghệ với mật ong v&agrave;o trước mỗi bữa ăn để đạt được hiệu quả cao nhất nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Ngo&agrave;i c&aacute;ch uống tinh bột nghệ với mật ong, c&aacute;c bạn c&ograve;n c&oacute; thể nặn tinh bột nghệ mật ong th&agrave;nh dạng vi&ecirc;n để uống, c&aacute;c bạn c&oacute; thể cho v&agrave;o lọ thủy tinh để sử dụng dần. C&aacute;ch n&agrave;y rất th&iacute;ch hợp với những ai bận rộn, thiếu thốn thời gian th&igrave; sử dụng theo dạng vi&ecirc;n nặn n&agrave;y l&agrave; ok.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Để chăm s&oacute;c da mặt c&aacute;c bạn l&agrave;m mặt nạ tinh bột nghệ với mật ong để đắp mặt nh&eacute;: Bạn trộn đều 2 th&igrave;a caf&eacute; bột nghệ với 1 th&igrave;a caf&eacute; mật ong trong một b&aacute;t sạch sau đ&oacute; đắp l&ecirc;n da mặt đ&atilde; được rửa sạch sau đ&oacute; thư gi&atilde;n khoảng 20 ph&uacute;t th&igrave; rửa mặt lại bằng nước sạch rồi lau kh&ocirc; bằng khăn sạch. Thực hiện đắp mặt đều đặn tuần 2 lần như vậy c&aacute;c bạn g&aacute;i sẽ tự tin với một l&agrave;n da trắng hồng kh&ocirc;ng mụn, kh&ocirc;ng vết th&acirc;m n&aacute;m.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Ngo&agrave;i ra c&aacute;c bạn g&aacute;i xinh đẹp c&oacute; thể kết hợp mặt nạ tinh bột nghệ mật ong với c&aacute;c nguy&ecirc;n liệu ph&ugrave; hợp theo nhu cầu của m&igrave;nh như mặt nạ tinh bột nghệ với sữa chua kh&ocirc;ng đường, mặt nạ tinh bột nghệ mật ong với nước cốt chanh, mặt nạ tinh bột nghệ mật ong với sữa tươi, mặt nạ tinh bột nghệ mật ong với trứng g&agrave;&hellip;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Xem th&ecirc;m:&nbsp;<a href=\"https://sieuthithiennhien.vn/mat-na-tinh-bot-nghe/\">Mặt nạ tinh bột nghệ</a></span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Bảng gi&aacute; tinh bột nghệ nguy&ecirc;n chất</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n xin b&aacute;o gi&aacute; như sau:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Gi&aacute; sản phẩm tinh bột nghệ nguy&ecirc;n chất: 500,000đ/1kg - &nbsp;265,000 đ/ 0.5kg</span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;c bạn c&oacute; thể tham khảo bảng gi&aacute; tinh bột nghệ nguy&ecirc;n chất chi tiết theo đường link sau:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">H&atilde;y li&ecirc;n hệ ngay ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng miễn ph&iacute; đến tận tay bạn điện thoại li&ecirc;n hệ: 0982716617</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>QUY C&Aacute;CH Đ&Oacute;NG G&Oacute;I SẢN PHẨM</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Khối lượng tịnh: 100g -1kg</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;C&aacute;ch thức lựa chọn nguy&ecirc;n liệu: Sản phẩm tinh bột nghệ nguy&ecirc;n chất của Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n được đ&oacute;ng g&oacute;i tr&ecirc;n d&acirc;y truyền hiện đại chuy&ecirc;n nghiệp. Tất cả đều được dựa tr&ecirc;n những ti&ecirc;u chuẩn vệ sinh an to&agrave;n thực phẩm của bộ y tế đ&atilde;ban h&agrave;nh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>C&Aacute;CH BẢO QUẢN SẢN PHẨM</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Đ&oacute;ng nắp ngay khi d&ugrave;ng xong</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Hạn sử dụng 06 th&aacute;ng kể từ &nbsp;ng&agrave;y mở bao b&igrave; sản phẩm</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>CAM KẾT CỦA CH&Uacute;NG T&Ocirc;I</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Sản phẩm c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;C&oacute; bao b&igrave; nh&atilde;n m&aacute;c cụ thể</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Kh&ocirc;ng c&oacute; chất bảo quản trong sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Ho&agrave;n tiền ngay nếu sản phẩm kh&ocirc;ng đ&uacute;ng y&ecirc;u cầu</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Giao h&agrave;ng trước, nhận tiền sau.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">-&nbsp;&nbsp; &nbsp;Giao h&agrave;ng miễn ph&iacute; to&agrave;n quốc</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tinh bột nghệ với mật ong</strong>&nbsp;l&agrave; một sự kết hợp rất l&yacute; tưởng m&agrave; Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n muốn gửi tới tất cả qu&yacute; đọc giả với mong muốn đem đến những kiến thức ch&acirc;n qu&yacute; sức khỏe bằng sử dụng tinh bột nghệ sản phẩm của thi&ecirc;n nhi&ecirc;n lại được kết hợp với nguy&ecirc;n liệu từ c&oacute; từ mẹ thi&ecirc;n nhi&ecirc;n l&agrave; mật ong nghĩa l&agrave; thi&ecirc;n nhi&ecirc;n trong thi&ecirc;n nhi&ecirc;n.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">H&atilde;y để Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n được chăm s&oacute;c sức khỏe của bạn v&agrave; gia đ&igrave;nh bằng việc đặt mua tinh bột nghệ của ch&uacute;ng t&ocirc;i ngay h&ocirc;m nay nh&eacute;.&nbsp;<br />\r\nC&aacute;c bạn c&oacute; bất kỳ thắc mắc hay hỏi đ&aacute;p, tư vấn hoặc cần hỗ trợ g&igrave; li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i theo số điện thoại: 024.62531618.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Email: sieuthithiennhien.vn@gmail.com</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'botnghematong.jpg', '2019-06-26 17:22:04', '1', '2022-05-07 15:04:05', '1', 1, 0),
(7, 'Giới Thiệu Về Siêu Thị Thiên Nhiên', 'gioi-thieu-ve-sieu-thi-thien-nhien', '', '<p><span style=\"font-size:16px\"><strong>C&acirc;u chuyện kinh doanh</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nếu như ai đ&oacute; c&oacute; thắc mắc v&igrave; sao ch&uacute;ng t&ocirc;i lại lựa chọn những mặt h&agrave;ng kh&ocirc;ng qu&aacute; mới mẻ nhưng lại đ&ograve;i hỏi rất cao về chất lượng để bắt đầu c&acirc;u chuyện kinh doanh của m&igrave;nh? Thật kh&oacute; c&oacute; thể chen ch&acirc;n v&agrave;o một thị trường nơi m&agrave; trong đ&oacute; đ&atilde; c&oacute; qu&aacute; nhiều đối thủ cạnh tranh. Nhưng ch&uacute;ng t&ocirc;i đ&atilde; ở đ&acirc;y hơn 5 năm qua để chứng minh triết l&yacute;&nbsp;m&agrave; ch&uacute;ng t&ocirc;i đ&atilde; đang v&agrave; sẽ lu&ocirc;n tin tưởng đ&oacute; ch&iacute;nh l&agrave;&nbsp;<strong>&quot;CHẤT LƯỢNG TẠO N&Ecirc;N THƯƠNG HIỆU&quot;</strong>. Ch&uacute;ng t&ocirc;i tạo n&ecirc;n Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n với mong muốn thay đổi th&oacute;i quen của người ti&ecirc;u d&ugrave;ng, mang người d&ugrave;ng đến gần hơn với những sản phẩm c&oacute;<strong>&nbsp;nguồn gốc 100% từ thi&ecirc;n nhi&ecirc;n</strong>. Bởi lẽ kh&ocirc;ng chỉ ch&uacute;ng t&ocirc;i m&agrave; cả c&aacute;c bạn - những người ti&ecirc;u d&ugrave;ng th&ocirc;ng minh chắc hẳn kh&ocirc;ng thể phủ nhận những c&ocirc;ng dụng tuyệt vời m&agrave; ch&uacute;ng đem lại cho sức khỏe, sắc đẹp.&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Triết l&yacute; kinh doanh</strong></span></h3>\r\n\r\n<p><span style=\"font-size:14px\">Xuy&ecirc;n suốt qu&aacute; tr&igrave;nh kinh doanh từ việc chuẩn bị v&ugrave;ng nguy&ecirc;n liệu cho đến khi sản phẩm tới tay người ti&ecirc;u d&ugrave;ng, Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n tu&acirc;n theo một nguy&ecirc;n tắc kh&ocirc;ng đổi &quot;<strong>CHẤT LƯỢNG TẠO N&Ecirc;N THƯƠNG HIỆU&quot;</strong>. Sức khỏe sắc đẹp của người ti&ecirc;u d&ugrave;ng ch&iacute;nh l&agrave; động lực quan trọng nhất để Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n kh&ocirc;ng ngừng cải tiến, ph&aacute;t triển v&agrave; ho&agrave;n thiện thương hiệu của m&igrave;nh. Cũng nhờ những nỗ lực kh&ocirc;ng ngừng cải tiến đ&oacute; ch&uacute;ng t&ocirc;i cam kết đưa ra một&nbsp;<strong>ch&iacute;nh s&aacute;ch gi&aacute; cạnh tranh</strong>&nbsp;nhất c&oacute; thể đem lại sự lựa chọn ho&agrave;n hảo cho người d&ugrave;ng cả về chất lượng v&agrave; gi&aacute; cả.&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Tầm nh&igrave;n chiến lược&nbsp;</strong></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>Tầm nh&igrave;n 2020:</strong>&nbsp;Hệ thống ph&acirc;n phối của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n bao phủ khắp c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước với chất lượng đồng đều v&agrave; ch&iacute;nh s&aacute;ch gi&aacute; thống nhất.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Tầm nh&igrave;n 2025</strong>: Đưa thương hiệu Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n tiếp cận với thị trường Ch&acirc;u &Aacute;, n&acirc;ng tầm thương hiệu Việt ở nước ngo&agrave;i.&nbsp;</span></li>\r\n</ul>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Danh mục sản phẩm</strong></span><br />\r\n<em><strong><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/04-nhom-san-pham.png\" /></strong></em></h3>\r\n\r\n<p><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i cung cấp cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm thi&ecirc;n nhi&ecirc;n từ những sản phẩm l&agrave;m đẹp cho chị em phụ nữ đến, những sản phẩm c&oacute; lợi cho sức khỏe v&agrave; cả những sản phẩm đ&ocirc;ng y thảo dược qu&yacute; hiếm. Tất cả c&aacute;c sản phẩm của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n đều c&oacute;&nbsp;<strong>100% nguồn gốc từ thi&ecirc;n nhi&ecirc;n,&nbsp;kh&ocirc;ng chất bảo quản, hương liệu v&agrave; chất tạo m&agrave;u.</strong>&nbsp;Sản phẩm đa dạng được ch&uacute;ng t&ocirc;i nghi&ecirc;n cứu h&agrave;ng th&aacute;ng v&agrave; cập nhật thường xuy&ecirc;n đ&aacute;p ứng mọi nhu cầu kh&oacute; t&iacute;nh nhất của kh&aacute;ch h&agrave;ng. Sản phẩm của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n được chia th&agrave;nh&nbsp;<strong>4 danh mục sản phẩm ch&iacute;nh</strong>&nbsp;như sau:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><a href=\"https://sieuthithiennhien.vn/danh-muc/tinh-bot-tinh-dau/\">Tinh Bột - Tinh Dầu</a></span></li>\r\n	<li><span style=\"font-size:14px\"><a href=\"https://sieuthithiennhien.vn/danh-muc/tra-hoa/\">Sản Phẩm Tr&agrave; Hoa</a></span></li>\r\n	<li><span style=\"font-size:14px\"><a href=\"https://sieuthithiennhien.vn/danh-muc/dong-y-thao-duoc/\">Đ&ocirc;ng Y - Thảo Dược&nbsp;</a></span></li>\r\n	<li><span style=\"font-size:14px\"><a href=\"https://sieuthithiennhien.vn/danh-muc/thuc-pham-dinh-duong/\">Thực Phầm Dinh Dưỡng</a></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; đơn vị mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những lựa chọn tốt ưu nhất kh&ocirc;ng chỉ về chất lượng m&agrave; c&ograve;n cả gi&aacute; cả. Ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn được những sản phẩm ưng &yacute; v&agrave; ph&ugrave; hợp nhất cho m&igrave;nh! Tr&acirc;n trọng cảm ơn!&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:14px\"><strong>05 l&yacute; do&nbsp;kh&aacute;ch h&agrave;ng chọn Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>L&yacute; do số 01</strong>: Lu&ocirc;n đặt kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, thường xuy&ecirc;n lắng nghe &yacute; kiến v&agrave; phản hồi của kh&aacute;ch h&agrave;ng</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>L&yacute; do số 02</strong>: Sản phẩm chất lượng, c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n.</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>L&yacute; do số 03</strong>: Sẵn s&agrave;ng ho&agrave;n tiền nếu chất lượng sản phẩm kh&ocirc;ng đ&uacute;ng y&ecirc;u cầu.</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>L&yacute; do số 04</strong>: Giao h&agrave;ng nhanh v&agrave; Shipcode to&agrave;n quốc.</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>L&yacute; do số 05</strong>: Cam kết h&agrave;ng tận gốc, gi&aacute; tốt nhất thị trường.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/slide/banner-tinh-bot-tinh-dau-sieu-thi-thien-nhien.jpg\" /></span></p>\r\n', 'slides21.jpg', '2022-05-07 15:11:50', '1', '2022-05-07 15:11:50', '1', 1, 1),
(8, 'Thực phẩm dinh dưỡng', 'thuc-pham-dinh-duong', '', '<p>Với mong muốn gi&uacute;p cho người thưởng&nbsp;tr&agrave; c&oacute; được những giấc ngủ ngon,&nbsp;tinh thần thoải m&aacute;i, tăng cường sức khỏe. Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n cho ra mắt sản phẩm&nbsp;<strong>Tr&agrave; dưỡng t&acirc;m</strong>, tr&agrave;&nbsp;được l&agrave;m 100% từ&nbsp;thi&ecirc;n&nbsp;nhi&ecirc;n, l&agrave; sự h&ograve;a quyện tinh tế&nbsp;của 3&nbsp;loại thảo mộc long nh&atilde;n, t&aacute;o đỏ, kỷ tử&nbsp;gi&uacute;p tạo th&agrave;nh hương thơm v&agrave; vị ngọt dịu nhẹ.&nbsp;H&atilde;y c&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;t&igrave;m hiểu về&nbsp;<strong>tr&agrave; dưỡng t&acirc;m&nbsp;mộc sắc</strong>&nbsp;nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/duong-tam-112.jpg?v=1.0.2\" /></p>\r\n\r\n<p><strong>Th&agrave;nh phần tr&agrave; dưỡng t&acirc;m</strong></p>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh phần:&nbsp;<strong>Long nh&atilde;n, t&aacute;o đỏ, kỷ tử</strong></li>\r\n	<li>M&ugrave;i vị: thơm, ngọt&nbsp;thảo mộc</li>\r\n	<li>Ph&ugrave; hợp với tất cả mọi người</li>\r\n	<li>Đ&oacute;ng g&oacute;i: Hộp 30 g&oacute;i, tặng b&igrave;nh 600ml</li>\r\n	<li>Bảo quản: Nơi tho&aacute;ng m&aacute;t, kh&ocirc; gi&aacute;o</li>\r\n	<li>Hạn sử dụng: Được in trực tiếp tr&ecirc;n bao b&igrave;</li>\r\n</ul>\r\n\r\n<h2>Gi&aacute; Tr&agrave; Dưỡng T&acirc;m</h2>\r\n\r\n<p><strong>Tr&agrave; dưỡng t&acirc;m</strong>&nbsp;l&agrave; sự kết hợp của nhiều loại thảo dược tự nhi&ecirc;n, được sản xuất với nhiều&nbsp;quy tr&igrave;nh sấy kh&ocirc; bằng c&aacute;c m&aacute;y m&oacute;c hiện đại nhất hiện nay&nbsp;để đảm bảo vẫn giữ được tinh t&uacute;y từ trong tr&agrave;.&nbsp;<strong>Tr&agrave; dưỡng t&acirc;m mộc sắc</strong>&nbsp;đang được Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n ph&acirc;n phối tr&ecirc;n to&agrave;n thị trường v&agrave; được h&agrave;ng trăm ngh&igrave;n người tin tưởng sử dụng.</p>\r\n\r\n<table align=\"center\" border=\"2\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Trọng Lượng</strong></td>\r\n			<td><strong>Gi&aacute; Khuyến M&atilde;i</strong></td>\r\n			<td><strong>Ph&iacute; Vận Chuyển</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;1 Set tr&agrave; dưỡng t&acirc;m</td>\r\n			<td>299.000vnđ</td>\r\n			<td>Miễn Ph&iacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch sẽ được&nbsp;<strong>miễn ph&iacute; vận chuyển</strong>&nbsp;trong ng&agrave;y&nbsp;<strong>h&ocirc;m nay</strong>, nhanh tay&nbsp;<strong>đăng k&yacute; nhận ưu đ&atilde;i</strong>&nbsp;để được miễn ph&iacute; vận chuyển nh&eacute;.</p>\r\n\r\n<p>ĐĂNG K&Yacute; NHẬN ƯU Đ&Atilde;I</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/duong-tam-81.jpg?v=1.0.2\" /></p>\r\n\r\n<h2>Mua Tr&agrave; Dưỡng T&acirc;m&nbsp;Ở Đ&acirc;u</h2>\r\n\r\n<p>Để mua được sản phẩm&nbsp;<strong>tr&agrave;&nbsp;dưỡng t&acirc;m</strong>&nbsp;mộc sắc ch&iacute;nh h&atilde;ng qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể đặt online ngay tr&ecirc;n ch&iacute;nh website của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n. Ngo&agrave;i ra qu&yacute; kh&aacute;ch c&oacute; thể đến bất kỳ đại l&yacute; n&agrave;o thuộc hệ thống của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n để mua sản phẩm.</p>\r\n\r\n<p><strong>Một số h&igrave;nh ảnh tại cửa h&agrave;ng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/mot-so-hinh-anh-tai-cua-hang.jpg?v=1.0.0\" /></strong></p>\r\n\r\n<p><strong>5 cam kết khi mua h&agrave;ng tại Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></p>\r\n\r\n<ol>\r\n	<li>Sản phẩm đ&uacute;ng chất lượng, kh&ocirc;ng chất bảo quản.</li>\r\n	<li>Được kiểm tra sản phẩm trước khi thanh to&aacute;n.</li>\r\n	<li>Chỉ phải thanh to&aacute;n tiền khi ưng sản phẩm.</li>\r\n	<li>Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.</li>\r\n	<li>Miễn ph&iacute; Ship khi mua từ 250k trở l&ecirc;n</li>\r\n</ol>\r\n\r\n<p><strong>Hướng dẫn sử dụng tr&agrave; dưỡng t&acirc;m</strong></p>\r\n\r\n<p>- Chuẩn bị: 1 t&uacute;i&nbsp;<strong>tr&agrave; dưỡng t&acirc;m</strong>, 600 ml nước</p>\r\n\r\n<p>- Tiến h&agrave;nh Tr&aacute;ng b&igrave;nh v&agrave; hoa kh&ocirc; bằng nước s&ocirc;i trong khoảng 30s &ndash; 1 ph&uacute;t. Tr&uacute;t th&ecirc;m nước s&ocirc;i v&agrave; đợi khoảng 5 ph&uacute;t cho tr&agrave; ngậm nước v&agrave; thưởng thức.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin v&ocirc; c&ugrave;ng hữu &iacute;ch về loại tr&agrave; gi&uacute;p dưỡng t&acirc;m&nbsp;an thần ngủ ngon , để biết th&ecirc;m th&ocirc;ng tin về sản phẩm của h&atilde;y li&ecirc;n hệ ngay với Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n theo số hotline 0982.716.617 &ndash; 0982.715.517 để được tư vấn.</p>\r\n', 'botnghematong1.jpg', '2022-05-13 12:23:29', '67', '2022-05-13 12:23:54', '67', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Hiệp gà', 'hiep1998', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', 'vanhiepp1998@gmail.com', '2019-05-24 22:10:08', 1, 1),
(9, 'Nguyễn Đức Lương', 'luong1998', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'luong@gmail.com', '2019-06-11 17:15:12', 1, 1),
(39, 'Bảo bự', '', '', '', '052244141', 'baobu@gmail.com', '2019-06-16 23:19:45', 1, 1),
(46, 'Dương Minh Trí', '', '', '', '0908030405', '', '2019-06-22 23:11:42', 1, 1),
(47, 'Trần Thanh Tuy', '', '', '', '090305146', '', '2019-06-22 23:16:45', 0, 1),
(48, 'Xuân Thịnh', '', '', '', '090640316', '', '2019-06-25 22:52:27', 1, 1),
(49, 'Minh Sang', '', '', '', '0913164136', '', '2019-06-25 22:58:22', 1, 1),
(50, 'Hoàng Dũng', '', '', '', '096323646', '', '2019-06-25 23:09:57', 1, 1),
(51, 'Nguyễn Văn Trường', '', '', '', '0357646765', '', '2019-06-26 13:17:30', 1, 1),
(52, 'Hiệp Ngô', '', '', '', '076613166', '', '2019-06-26 16:26:19', 1, 1),
(53, 'Thanh Sơn', '', '', '', '0903121564', '', '2019-06-28 15:57:50', 0, 1),
(55, 'Lương 21', '', '', '', '03056451', '', '2019-06-29 15:02:46', 1, 1),
(57, 'Tiến Đạt', '', '', '', '032133234', '', '2019-07-05 23:01:51', 1, 1),
(66, 'Hiệp 2019', 'hiep2019', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'vanhiepp19988@gmail.com', '2019-07-06 00:00:00', 1, 1),
(67, 'phuong', 'phuong', '25f9e794323b453885f5181f1b624d0b', '', '0969667459', 'phuong@gmail.com', '2022-05-03 00:00:00', 1, 1),
(68, 'Nguyễn Thị Hoa', 'Hoa123', '25d55ad283aa400af464c76d713c07ad', '', '0214536789', 'hoa12@gmail.com', '2022-06-12 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2019-09-29', 500000, 'Giam 100000', '2019-06-10', 1, 1, 0),
(2, 'VANHIEP', 200000, 20, 3, '2019-06-12', 500000, 'Giam 200k', '2019-06-10', 1, 0, 1),
(3, 'VANHIEP123', 200000, 300, 103, '2019-07-20', 300000, 'giảm 200k', '2019-06-25', 1, 1, 0),
(4, 'MAHETHAN', 150000, 68, 23, '2019-06-30', 500000, 'giảm 300k', '2019-06-25', 1, 1, 0),
(13, 'CAOTHANG', 150000, 200, 2, '2022-05-13', 100000, 'Giảm 150k', '2019-07-06', 1, 1, 1),
(18, 'UVDID9F5YLRR', 100000, 1, 0, '2022-06-03', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-05-03', 0, 1, 0),
(19, 'YJY4GTI5S0I9', 100000, 1, 0, '2022-07-12', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-06-12', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(81, 'oMjudmXl', 67, '2023-05-08 21:41:40', 'phuong', '0969667459', 150000, 30000, 150000, 31, 313, 'Thanh Xuân', 1, 2),
(82, 'dgRBtFkl', 67, '2022-05-09 10:30:19', 'phuong', '0969667459', 1470000, 30000, 0, 74, 720, 'Thanh Xuân', 1, 2),
(83, 'VzsC9Frm', 67, '2022-05-12 17:32:38', 'phuong', '0969667459', 300000, 30000, 0, 60, 598, 'Thanh Xuân', 1, 2),
(84, '0IoG1VNf', 67, '2022-05-13 12:30:27', 'phuong', '0969667459', 7830000, 30000, 0, 70, 693, 'Thanh Xuân', 1, 2),
(85, 'SO8jDCcU', 67, '2022-06-03 14:32:16', 'phuong', '0969667459', 750000, 30000, 0, 60, 601, 'Thanh Xuân', 1, 0),
(86, 'PSte6Ocq', 67, '2022-06-03 14:33:40', 'phuong', '0969667459', 390000, 30000, 0, 4, 48, 'Thanh Xuân', 1, 2),
(87, 'c8imBpz1', 67, '2022-06-03 15:10:36', 'phuong', '0969667459', 530000, 30000, 0, 70, 694, 'Thanh Xuân', 1, 0),
(88, '8cD0iO36', 67, '2022-06-03 15:14:13', 'phuong', '0969667459', 390000, 30000, 0, 60, 599, 'Thanh Xuân', 1, 0),
(89, 'sPbrMz9x', 67, '2022-06-03 15:15:01', 'phuong', '0969667459', 3405000, 30000, 0, 74, 720, 'Thanh Xuân', 1, 2),
(95, 'oIqYOVPs', 67, '2022-06-08 10:47:42', 'phuong', '0969667459', 2730000, 30000, 0, 70, 693, 'Thanh Xuân', 1, 2),
(96, 'X5Ec92fe', 67, '2022-06-12 14:26:54', 'phuong', '0969667459', 640000, 30000, 0, 74, 720, 'Thanh Xuân', 1, 0),
(97, 'XA6lgMze', 67, '2022-06-12 14:27:57', 'phuong', '0969667459', 390000, 30000, 0, 74, 720, 'Thanh Xuân', 1, 0),
(98, 'OJ3XdGMv', 67, '2022-06-12 14:29:06', 'phuong', '0969667459', 300000, 30000, 0, 96, 971, 'Thanh Xuân', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(110, 85, 52, 2, 360000, 1, 1),
(111, 86, 53, 2, 180000, 1, 1),
(112, 87, 44, 1, 500000, 1, 1),
(113, 88, 52, 1, 360000, 1, 1),
(114, 89, 51, 15, 225000, 1, 1),
(115, 95, 45, 10, 270000, 1, 1),
(116, 81, 52, 1, 360000, 1, 1),
(117, 81, 46, 1, 250000, 1, 1),
(118, 81, 39, 1, 360000, 1, 1),
(119, 81, 45, 1, 270000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(4, 'Công ty TNHH Hưng Thịnh', '112233', 'tra, tinhbot', '2022-05-03 12:01:20', 1, '2022-05-06 09:49:49', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(39, 18, 'Tinh dầu dừa mộc sắc', 'tinh-dau-dua-moc-sac', '', 'dcda9b0f22ee8799f5caa00e10b13e91.jpg', 'Hiện nay làm đẹp là nhu cầu thiết yếu của từng người, nhưng việc lựa chọn sản phẩm tự nhiên thì lại khó khăn. Hãy cùng Siêu Thị Thiên Nhiên tìm hiểu tinh dầu dừa và các phương pháp làm đẹp với tinh dầu dừa.', '<h1><strong>Tinh Dầu Dừa Mộc Sắc 1 L&iacute;t</strong></h1>\r\n\r\n<p><strong>Tinh Dầu Dừa</strong>&nbsp;&ndash; Từ xưa đến nay loại dầu từ thi&ecirc;n nhi&ecirc;n nhi&ecirc;n n&agrave;y đ&atilde; được biết đến như một loại thần được l&agrave;m đẹp đối với tất cả mọi người. Từ da mặt, l&ocirc;ng mi, l&ocirc;ng m&agrave;y cho đến t&oacute;c đều c&oacute; thể chăm s&oacute;c từ loại dầu đặc biệt n&agrave;y. Đặc biệt l&agrave; thời khắc trời đang trở Đ&ocirc;ng th&igrave;&nbsp;<strong>Tinh Dầu Dừa</strong>&nbsp;ch&iacute;nh l&agrave; cứu tinh cho l&agrave;n da c&oacute; nguy cơ nứt nẻ của bạn. C&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;t&igrave;m hiểu kỹ hơn về sản phẩm n&agrave;y nh&eacute;!&nbsp;</p>\r\n\r\n<h2><strong>C&ocirc;ng dụng v&agrave; c&aacute;ch sử dụng dầu dừa</strong></h2>\r\n\r\n<p><em><strong>Dưỡng t&oacute;c</strong></em></p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng dụng: Gi&uacute;p t&oacute;c xơ, kh&ocirc; trở n&ecirc;n b&oacute;ng mượt d&agrave;y hơn v&agrave; kh&ocirc;ng bị rụng t&oacute;c.&nbsp;</li>\r\n	<li>C&aacute;ch sử dụng: Sau khi gội đầu xong, lấy 4-5 giọt tinh dầu vuốt v&agrave;o phần ngọn t&oacute;c. Ki&ecirc;n tr&igrave; sử dụng tinh dầu dừa c&oacute; thể gi&uacute;p t&oacute;c bạn mượt hơn m&agrave; kh&ocirc;ng cần d&ugrave;ng dầu ủ đắt đỏ nh&eacute;!</li>\r\n</ul>\r\n\r\n<p><em><strong>Dưỡng ẩm cho da</strong></em></p>\r\n\r\n<ul>\r\n	<li>Lấy 3-4 giọt dầu v&agrave;o l&ograve;ng b&agrave;n tay. Xoa đều hai l&ograve;ng b&agrave;n tay đến khi ấm ấm.&nbsp;</li>\r\n	<li>Thoa hai l&ograve;ng b&agrave;n tay l&ecirc;n da mặt m&aacute;t xa nh&egrave; nhẹ cho dầu thẩm thấu v&agrave;o da.&nbsp;</li>\r\n	<li>Sau đ&oacute; rửa lại với nước.</li>\r\n</ul>\r\n', 4, 10, 0, 10, 400000, 360000, '2022-05-06 08:52:41', '1', '2022-05-06 08:52:41', '1', 1, 1),
(40, 19, 'Hạt nhân rang chín', 'hat-nhan-rang-chin', '149ec92d4601c7198bea88801d327bcf.jpg', '049109e29833d8004c496ab579eee93f.jpg', 'Hạnh nhân là một loại hạt được sử dụng trong các dịp tết đến, giờ đây hạnh nhân đã trở thành một đồ ăn hằng ngày của chúng ta. Với nhiều tác dụng tốt cho sức khỏe, hạnh nhân được nhiều người tin tưởng sử dụng', '<p><span style=\"font-size:14px\"><strong>Hạnh Nh&acirc;n</strong>&nbsp;&ndash; l&agrave; một trong những loại hạt được săn đ&oacute;n nhiều nhất mỗi độ Tết đến Xu&acirc;n về. Phải chăng đ&oacute; chỉ l&agrave; một sở th&iacute;ch th&ocirc;ng thường hay vốn dĩ loại hạt n&agrave;y đ&atilde; mang nhiều gi&aacute; trị cần thiết cho ch&uacute;ng ta? V&acirc;ng đ&uacute;ng vậy trong Hạnh Nh&acirc;n c&oacute; chứa nhiều protein v&agrave; lượng chất xơ dồi d&agrave;o gi&uacute;p cung cấp năng lượng cho cơ thể. Đ&acirc;y cũng l&agrave; một trong những loại hạt mang lại rất nhiều c&ocirc;ng dụng bất ngờ. V&agrave; b&acirc;y giờ c&ugrave;ng Si&ecirc;u thị thi&ecirc;n nhi&ecirc;n t&igrave;m hiểu nh&eacute;!&nbsp;</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Th&agrave;nh phần dinh dưỡng của Hạnh Nh&acirc;n</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Trong 10 hạt hạnh nh&acirc;n th&ocirc;ng thường c&oacute; chứa khoảng 164 kalo năng lượng v&agrave; 7Gm protein. Kh&ocirc;ng chỉ vậy&nbsp; trong 100g chứa rất nhiều th&agrave;nh phần dinh dưỡng c&oacute; lợi cho sức khỏe cụ thể như:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">H&agrave;m lượng calo:&nbsp;575 cal</span></li>\r\n	<li><span style=\"font-size:14px\">H&agrave;m lượng Protein:&nbsp;21 g</span></li>\r\n	<li><span style=\"font-size:14px\">Cholesterol:&nbsp;0 g</span></li>\r\n	<li><span style=\"font-size:14px\">Cacbohydrat:&nbsp;22 g</span></li>\r\n	<li><span style=\"font-size:14px\">Đường:&nbsp;3.9 g</span></li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i v&agrave; C&aacute;ch bảo quản</strong></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Khối lượng tịnh: 500g hoặc 1 KG</span></li>\r\n	<li><span style=\"font-size:14px\">H&igrave;nh thức: C&oacute; 2 loại c&ograve;n vỏ v&agrave; đ&atilde; t&aacute;ch vỏ</span></li>\r\n	<li><span style=\"font-size:14px\">Kh&ocirc;ng chất bảo quản, kh&ocirc;ng h&oacute;a chất độc hại, kh&ocirc;ng hương liệu</span></li>\r\n	<li><span style=\"font-size:14px\">Bảo quản ở nơi tho&aacute;ng m&aacute;t kh&ocirc; r&aacute;o, kh&ocirc;ng để hở kh&ocirc;ng kh&iacute;. Khi mở t&uacute;i n&ecirc;n đ&oacute;ng m&eacute;p kĩ sau mỗi lần sử dụng, bảo quản tốt nhất ở ngăn m&aacute;t tủ lạnh.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Hạn sử dụng: 06 th&aacute;ng kể từ ng&agrave;y sản xuất</span></li>\r\n	<li><span style=\"font-size:14px\">D&ugrave;ng ăn trực tiếp</span></li>\r\n</ul>\r\n', 4, 20, 0, 10, 450000, 420000, '2022-05-06 09:06:25', '1', '2022-05-06 09:48:23', '1', 1, 1),
(42, 17, 'Trà hoa cúc khô', 'tra-hoa-cuc-kho', '', '', 'Sản phẩm khô', '<p>Tr&agrave; hoa c&uacute;c kh&ocirc; kkkhjhf</p>\r\n', 4, 10, 0, 10, 350000, 300000, '2022-05-07 09:57:44', '1', '2022-05-07 09:57:44', '1', 0, 1),
(43, 17, 'Trà thảo dược', 'tra-thao-duoc', '', 'da1c7bb4d18b29df08abde6bfb24433a.jpg', 'Trà hoa cúc khô ', '<p>Tr&agrave; hoa c&uacute;c kh&ocirc; kkhhjjs</p>\r\n', 4, 10, 0, 10, 300000, 270000, '2022-05-07 09:59:22', '1', '2022-05-07 09:59:22', '1', 1, 1),
(44, 17, 'Tinh bột nghệ', 'tinh-bot-nghe', '2a4c2cff04d018811460eb885cb0141b.jpg', '0c2ad59a7593faf0cc2d391a31b835ce.jpg', 'Tinh bột nghệ là sản phẩm được triết xuất 100% từ củ nghệ tươi sạch trồng tự nhiên, có nhiều tác dụng tốt trong sức khỏe và làm đẹp. Mua tinh bột nghệ chất lượng với giá rẻ nhất tại Siêu Thị Thiên Nhiên.', '<h2><span style=\"font-size:16px\"><strong>Tinh Bột Nghệ Nguy&ecirc;n Chất</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tinh Bột Nghệ</strong>&nbsp;l&agrave; sản phẩm c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n, được tinh suất từ những củ nghệ tươi chọn lọc c&oacute; chứa chất&nbsp;<strong>Curcumin</strong>. T&aacute;c dụng của Tinh Bột Nghệ được v&iacute; như loại thần dược thi&ecirc;n nhi&ecirc;n với sức khỏe cũng như việc l&agrave;m đẹp. Sử dụng&nbsp;<strong>tinh bột nghệ nguy&ecirc;n chất</strong>&nbsp;để l&agrave;m da th&ecirc;m phần mịn m&agrave;ng, s&aacute;ng &ndash; trắng, tăng độ ẩm, hỗ trợ&nbsp;trị mụn hiệu quả. Tinh Bột Nghệ vừa c&oacute; thể d&ugrave;ng để đắp mặt v&agrave; d&ugrave;ng để uống phụ thuộc v&agrave;o từng mục đ&iacute;ch của người d&ugrave;ng.</span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Th&agrave;nh phần của tinh bột nghệ</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Th&agrave;nh phần:&nbsp;<strong>100% tinh bột nghệ sấy kh&ocirc;</strong></span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Nguồn gốc:&nbsp;<strong>Việt Nam</strong></span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Ph&ugrave; hợp cho người c&oacute; vấn đề dạ d&agrave;y</span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">M&ugrave;i vị:&nbsp;<strong>C&oacute; m&ugrave;i thơm nhẹ, dễ uống</strong></span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Đ&oacute;ng g&oacute;i t&uacute;i zip: 500gam</span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Bảo quản: Nơi tho&aacute;ng m&aacute;t, kh&ocirc; gi&aacute;o</span></span></li>\r\n	<li><span style=\"color:#3498db\"><span style=\"font-size:14px\">Hạn sử dụng: Được in trực tiếp tr&ecirc;n bao b&igrave;</span></span>\r\n	<h2><span style=\"font-size:16px\">Bảng gi&aacute; của&nbsp;tinh bột nghệ</span></h2>\r\n\r\n	<p><span style=\"font-size:14px\"><strong>Tinh bột nghệ</strong>&nbsp;l&agrave; th&agrave;nh phẩm của củ nghệ sau nhiều qu&aacute; tr&igrave;nh sản xuất phức tạp với c&aacute;c m&aacute;y m&oacute;c hiện đại để loại bỏ c&aacute;c tạp chất kh&ocirc;ng cần thiết. Được đ&oacute;ng g&oacute;i cẩn thận v&agrave; ph&acirc;n phối đến người ti&ecirc;u dung theo từng hộp c&oacute; trọng lượng&nbsp;<strong>0.5kg</strong>&nbsp;hoặc&nbsp;<strong>1kg</strong>. Hiện nay tinh bột nghệ được ph&acirc;n phối tại&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;với gi&aacute; khuyến m&atilde;i chỉ c&ograve;n 265.000vnđ cho hộp 0.5kg</span></p>\r\n\r\n	<table align=\"center\" border=\"2\" cellpadding=\"1\" cellspacing=\"2\">\r\n		<tbody>\r\n			<tr>\r\n				<td><strong>Trọng Lượng</strong></td>\r\n				<td><strong>Gi&aacute; Khuyến M&atilde;i</strong></td>\r\n				<td><strong>Ph&iacute; Vận Chuyển</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td>&nbsp;Tinh bột nghệ - 0.5kg</td>\r\n				<td>265.000vnđ</td>\r\n				<td>30.000vnđ</td>\r\n			</tr>\r\n			<tr>\r\n				<td>&nbsp;Tinh bột nghệ - 1kg</td>\r\n				<td>530.000vnđ KM c&ograve;n&nbsp;<strong>500.000vnđ</strong></td>\r\n				<td>miễn ph&iacute;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n', 4, 20, 0, 10, 550000, 500000, '2022-05-07 12:02:30', '1', '2022-05-07 12:05:48', '1', 1, 1),
(45, 17, 'Bột trà xanh', 'bot-tra-xanh', 'f61c4dc71e0b18e58bee52bc25631e11.jpg', '109aa1393af686cfd580b2db7e9a946f.jpg', 'Hiện nay bột trà xanh mộc sắc là sản phẩm đang được ưa chuộng, có nguồn gốc 100% từ thiên nhiên với nhiều công dụng nổi bật để trong lĩnh vực làm đẹp. Bột trà xanh đang được nhiều chị em tin tưởng và sử dụng.', '<h2><span style=\"font-size:16px\"><strong>Bột Tr&agrave; Xanh Nguy&ecirc;n Chất</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bột Tr&agrave; Xanh</strong>&nbsp;l&agrave; một trong những phương thức l&agrave;m đẹp từ thi&ecirc;n nhi&ecirc;n được c&aacute;c chị em tin d&ugrave;ng nhất hiện nay. C&ocirc;ng dụng nổi trội của&nbsp;<a href=\"https://sieuthithiennhien.vn/san-pham/bot-tra-xanh-hai-lua-100g/\">Bột Tr&agrave; Xanh</a>&nbsp;đ&oacute; l&agrave; đắp mặt gi&uacute;p l&agrave;n da trắng mịn khỏe khoắn, loại bỏ c&aacute;c loại mụn bọc, đầu đen, mụn thịt. Ngo&agrave;i ra&nbsp;<strong>Bột Tr&agrave; Xanh</strong>&nbsp;c&ograve;n l&agrave; nguy&ecirc;n liệu l&agrave;m b&aacute;nh, đồ uống được nhiều người y&ecirc;u th&iacute;ch. Xu hướng l&agrave;m đẹp của phụ nữ hiện đại ch&iacute;nh l&agrave; lựa chọn c&aacute;c sản phẩm tinh bột, tinh dầu c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n vừa hiệu quả lại an to&agrave;n. H&atilde;y c&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;tiếp tục kh&aacute;m ph&aacute; c&aacute;c t&aacute;c dụng tuyệt vời m&agrave; Bột Tr&agrave; Xanh mang lại cho l&agrave;n da nh&eacute;!</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Th&agrave;nh phần của bột tr&agrave; xanh</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Th&agrave;nh phần:&nbsp;<strong>100% bột tr&agrave; xanh nguy&ecirc;n chất</strong></span></li>\r\n	<li><span style=\"font-size:14px\">Nguồn gốc:&nbsp;<strong>Việt Nam</strong></span></li>\r\n	<li><span style=\"font-size:14px\">Đ&oacute;ng g&oacute;i t&uacute;i zip: 500gam</span></li>\r\n	<li><span style=\"font-size:14px\">Bảo quản: Nơi tho&aacute;ng m&aacute;t, kh&ocirc; gi&aacute;o</span></li>\r\n	<li><span style=\"font-size:14px\">Hạn sử dụng: Được in trực tiếp tr&ecirc;n bao b&igrave;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bột tr&agrave; xanh</strong>&nbsp;tr&ecirc;n thị trường hiện nay c&oacute; rất nhiều cơ sở sản xuất kh&aacute;c nhau, c&ugrave;ng với đ&oacute; l&agrave; gi&aacute; th&agrave;nh cũng kh&aacute;c nhau l&agrave;m cho người ti&ecirc;u d&ugrave;ng kh&ocirc;ng biết mua ở đ&acirc;u được gi&aacute; tốt. Nếu điều đ&oacute; l&agrave;m bạn băn khoăn th&igrave; thật tốt khi bạn đ&atilde; t&igrave;m đến đ&acirc;y, dưới đ&acirc;y l&agrave; bảng gi&aacute;&nbsp;<strong>bột tr&agrave; xanh loại 1</strong>&nbsp;của&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;để bạn tham khảo.</span></p>\r\n\r\n<h2><strong><span style=\"font-size:16px\">Mua bột tr&agrave; xanh ở đ&acirc;u</span></strong></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;với hơn 05 năm hoạt động cung cấp, ph&acirc;n phối&nbsp;<strong>bột tr&agrave; xanh</strong>&nbsp;v&agrave; c&aacute;c sản phẩm thi&ecirc;n nhi&ecirc;n kh&aacute;c cho h&agrave;ng triệu kh&aacute;ch h&agrave;ng trong nước v&agrave; ngo&agrave;i nước. C&oacute; đầy đủ giấy tờ cũng như th&ocirc;ng tin xuất xứ sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Một số h&igrave;nh ảnh tại cửa h&agrave;ng</strong></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/hinh-anh-tai-cua-hang.jpg?v=1.0.22\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/hinh-tanh-tai-cua-hang-4.jpg?v=1.0.22\" /></p>\r\n\r\n<p><span style=\"font-size:14px\">Tất cả sản phẩm&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;ph&acirc;n phối đều được lựa chọn chất lượng kỹ c&agrave;ng, ngo&agrave;i ra c&oacute; những ch&iacute;nh s&aacute;ch hỗ trợ, đổi trả hợp l&yacute; nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng. Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; thương hiệu được mọi người tin tưởng v&agrave; sử dụng.</span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:14px\"><strong>Qu&yacute; kh&aacute;ch c&oacute; thể mua tại cửa h&agrave;ng v&agrave; đại l&yacute; của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Qu&yacute; kh&aacute;ch c&oacute; thể đặt online ngay tr&ecirc;n website</strong>&nbsp;(chỉ phải thanh to&aacute;n khi nhận được sản phẩm,&nbsp;<strong>miễn ph&iacute; ship</strong>&nbsp;khi đăng k&yacute; nhận ưu đ&atilde;i tại đ&acirc;y.)</span></li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/hinh-anh-tai-cua-hang-2.jpg?v=1.0.22\" /></p>\r\n', 4, 30, 12, 12, 350000, 270000, '2022-05-07 12:23:43', '1', '2022-05-07 12:23:43', '1', 1, 1),
(46, 17, 'Bột sắn dây', 'bot-san-day', 'e8c70a91096e4c933f8fc5c772ab63e5.jpg', '16a75fa2b4f07d50186ca71b95437c61.jpg', 'Bột sắn dây vị ngọt, có tác dụng thanh nhiệt, uống bột sắn giúp bạn giải nhiệt, làm mát cơ thể. Ngoài ra bột sắn dây còn là lựa chọn của nhiều chị em trong việc làm đẹp, chăm sóc làn da, vóc dáng của mình.', '<p><span style=\"font-size:14px\"><strong>Bột Sắn D&acirc;y</strong>&nbsp;theo như một số nghi&ecirc;n cứu trong&nbsp;Đ&ocirc;ng Y c&oacute; vị ngọt, m&aacute;t c&oacute; t&aacute;c dụng thanh nhiệt. Ch&iacute;nh với những đặc điểm đ&oacute; ch&uacute;ng được ứng dụng rất nhiều trong cuộc sống đặc biệt trong việc l&agrave;m đẹp của chị em phụ nữ. Loại bột n&agrave;y cũng l&agrave; người bạn đồng h&agrave;nh kh&ocirc;ng thể thiếu của mỗi người phụ nữ hiện đại. Bột sắn d&acirc;y trị mụn, x&oacute;a t&agrave;n nhang, tẩy da chết v&agrave; chống l&atilde;o hoa da rất hiệu quả. Vậy sắn d&acirc;y c&oacute; những th&agrave;nh phần h&oacute;a học g&igrave;? T&aacute;c dụng ch&iacute;nh bao gồm những g&igrave;? C&aacute;ch sử dụng ch&uacute;ng ra sao? C&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;trả lời những c&acirc;u hỏi đ&oacute; ngay b&acirc;y giờ nh&eacute;!&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em><strong>Th&agrave;nh phần dinh dưỡng của Bột Sắn D&acirc;y</strong></em></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Trước khi bắt đầu t&igrave;m hiểu về t&aacute;c dụng, c&aacute;ch sử dụng chắc hẳn một vấn đề m&agrave; ch&uacute;ng ta c&ugrave;ng quan t&acirc;m hơn cả đ&oacute; ch&iacute;nh l&agrave; th&agrave;nh phần dinh dưỡng của loại bột n&agrave;y phải kh&ocirc;ng? Tại sao ch&uacute;ng lại được ứng dụng rộng r&atilde;i đến thế trong cuộc sống? Một phần cũng l&agrave; nhờ những<strong>&nbsp;th&agrave;nh phần dinh dưỡng</strong>&nbsp;đặc biệt sau đ&acirc;y. C&ugrave;ng Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n c&ugrave;ng kh&aacute;m ph&aacute; ngay sau đ&acirc;y nh&eacute;!&nbsp;</span></p>\r\n\r\n<table align=\"center\">\r\n	<caption>\r\n	<p>Bảng th&agrave;nh phần dinh dưỡng của 100g Sắn D&acirc;y</p>\r\n	</caption>\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"row\">&nbsp; &nbsp; &nbsp; &nbsp;</th>\r\n			<th scope=\"col\">&nbsp; &nbsp; &nbsp;&nbsp;Th&agrave;nh phần&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</th>\r\n			<th scope=\"col\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; H&agrave;m lượng&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">1</th>\r\n			<td>Năng lượng</td>\r\n			<td>340 Kcal</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">2</th>\r\n			<td>Đạm&nbsp;</td>\r\n			<td>700mg</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">3</th>\r\n			<td>Tinh bột&nbsp;</td>\r\n			<td>84.3g</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">4</th>\r\n			<td>Canxi&nbsp;</td>\r\n			<td>18mg</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">5</th>\r\n			<td>Sắt</td>\r\n			<td>1.5mg</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">6</th>\r\n			<td>Nước</td>\r\n			<td>14.2g</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">7</th>\r\n			<td>Chất xơ&nbsp;</td>\r\n			<td>800mg</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">8</th>\r\n			<td>Photpho</td>\r\n			<td>20mg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong><img alt=\"Tác dụng của Bột Sắn Dây\" src=\"https://sieuthithiennhien.vn/photo/bot-san-day-5.JPG?v=1.0.2\" /></strong></em></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>T&aacute;c dụng của Bột Sắn D&acirc;y</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Nếu bạn đang băn khoăn rằng&nbsp;bột sắn d&acirc;y c&oacute; t&aacute;c dụng g&igrave; th&igrave; c&acirc;u trả lời cho c&acirc;u hỏi n&agrave;y sẽ được bật m&iacute; ngay sau đ&acirc;y. Nhắc đến Sắn d&acirc;y đầu ti&ecirc;n Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n phải đề cập đến những t&aacute;c dụng li&ecirc;n quan đến sức khỏe ch&uacute;ng ta như sau:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Thanh nhiệt cơ thể đặc biệt l&agrave; những ai đang c&oacute; vấn đề về mụn nhọt hay r&ocirc;m sảy.</span></li>\r\n	<li><span style=\"font-size:14px\">Giải kh&aacute;t đặc biệt v&agrave;o những m&ugrave;a nắng n&oacute;ng</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Ph&iacute;a tr&ecirc;n l&agrave; những t&aacute;c dụng thần kỳ của sắn d&acirc;y đối với cơ th. Vậy loại bột n&agrave;y c&oacute; t&aacute;c dụng như thế n&agrave;o trong c&ocirc;ng cuộc l&agrave;m đẹp của chị em phụ nữ? Ngay sau đ&acirc;y ch&uacute;ng t&ocirc;i sẽ bật m&iacute; cho c&aacute;c bạn những&nbsp;<strong>t&aacute;c dụng tuyệt vời cho da mặt</strong>&nbsp;đ&oacute;:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Ngo&agrave;i ra, khi bạn&nbsp; uống bột sắn d&acirc;y đẹp da sẽ gi&uacute;p cho l&agrave;n da của bạn trở n&ecirc;n mịn m&agrave;ng hơn bao giờ hết. Mụn nhọt sẽ lặn nhanh hơn v&agrave; trị mụn hiệu quả hơn nhờ t&iacute;nh vị m&aacute;t thanh lọc cơ thể vốn c&oacute; của n&oacute;. Vậy bạn c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng rinh về nh&agrave; một em bột sắn n&agrave;y để c&oacute; được l&agrave;n da ưng &yacute; tức th&igrave; nhỉ?</span></p>\r\n\r\n<h2><span style=\"font-size:14px\"><em><strong>Mặt nạ Bột Sắn D&acirc;y&nbsp;</strong></em></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Kết hợp với mật ong</strong></u></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Chuẩn bị: 20g bột đậu xanh, 20g bột sắn d&acirc;y, 1 th&igrave;a cafe&nbsp;<strong>mật ong nguy&ecirc;n chất</strong></span></li>\r\n	<li><span style=\"font-size:14px\">Sử dụng ch&eacute;n nhỏ hoặc dụng cụ đắp mặt trộn đều hỗn hợp tr&ecirc;n đến khi thu được hỗn hợp dạng sệt.</span></li>\r\n	<li><span style=\"font-size:14px\">Đắp hỗn hợp l&ecirc;n da mặt massage nhẹ nh&agrave;ng trong v&ograve;ng 2-3 ph&uacute;t. Sau đ&oacute; đợi 10 ph&uacute;t sau th&igrave; rửa mặt với nước lạnh.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Ch&uacute; &yacute; lớp mặt nạ phải đạt độ mỏng th&iacute;ch hợp để gi&uacute;p da vừa hấp thụ dưỡng chất vừa kh&ocirc;ng bị qu&aacute; b&iacute;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Kết hợp với c&agrave; chua</strong></u></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Chuẩn bị: Bột sắn d&acirc;y lượng vừa đủ, nửa ch&eacute;n nhỏ nước &eacute;p c&agrave; chua nguy&ecirc;n chất.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Lượng bột vừa đủ l&agrave; khi trộn với nước &eacute;p c&agrave; chua thu được hỗn hợp dạng sệt đủ b&aacute;m tr&ecirc;n da mặt.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Đắp hỗn hợp l&ecirc;n da mặt massage nhẹ nh&agrave;ng trong v&ograve;ng 2-3 ph&uacute;t. Sau đ&oacute; đợi 10 ph&uacute;t sau th&igrave; rửa mặt với nước lạnh.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Ch&uacute; &yacute; lớp mặt nạ phải đạt độ mỏng th&iacute;ch hợp để gi&uacute;p da vừa hấp thụ dưỡng chất vừa kh&ocirc;ng bị qu&aacute; b&iacute;.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Kết hợp với sữa tươi</strong></u></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Chuẩn bị nguy&ecirc;n liệu mặt nạ bột sắn d&acirc;y với sữa tươi.</span></li>\r\n	<li><span style=\"font-size:14px\">Đắp hỗn hợp l&ecirc;n da mặt massage nhẹ nh&agrave;ng trong v&ograve;ng 2-3 ph&uacute;t. Sau đ&oacute; đợi 10 ph&uacute;t sau th&igrave; rửa mặt với nước lạnh.&nbsp;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Ch&uacute; &yacute; lớp mặt nạ phải đạt độ mỏng th&iacute;ch hợp để gi&uacute;p da vừa hấp thụ dưỡng chất vừa kh&ocirc;ng bị qu&aacute; b&iacute;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em><strong>C&aacute;ch pha Bột Sắn D&acirc;y</strong></em></span></p>\r\n\r\n<p><span style=\"font-size:14px\">C&aacute;ch pha bột sắn d&acirc;y như thế n&agrave;o kết hợp ch&uacute;ng với những nguy&ecirc;n liệu g&igrave; để mang lại những c&ocirc;ng dụng nhất định? V&acirc;ng đ&oacute; ch&iacute;nh l&agrave; nội dung tiếp theo m&agrave; Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n muốn giới thiệu đến c&aacute;c bạn. Mỗi loại bệnh kh&aacute;c nhau lại c&oacute; những c&aacute;ch kết hợp ri&ecirc;ng để tạo n&ecirc;n một hỗn hợp chữa bệnh hiệu quả:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Chuẩn bị:&nbsp;Bột sắn d&acirc;y 12g, đường trắng&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Cho bột h&ograve;a c&ugrave;ng đường v&agrave; nước đun s&ocirc;i để nguội l&agrave;m đồ uống h&agrave;ng ng&agrave;y.&nbsp;</span></li>\r\n</ul>\r\n', 4, 15, 0, 10, 290000, 250000, '2022-05-07 12:32:36', '1', '2022-05-07 12:32:36', '1', 1, 1),
(47, 21, 'Đèn xông tinh dầu', 'den-xong-tinh-dau', '622510e998c3214a1e13df78247ecb44.jpg', '0551b769c8e3a9e80d902bd7ca0645af.jpg', 'Đèn xông tinh dầu STTN 01 được làm bằng chất liệu sứ cao cấp màu trắng, dày chắc chắn, có độ bền cao. Đèn xông Siêu Thị Thiên Nhiên hoạt động bằng cách cắm điện, tỏa nhiệt, xông hương rất tiện lợi trong quá trình sử dụng.', '<p><span style=\"font-size:14px\"><strong>Đ&egrave;n x&ocirc;ng tinh dầu</strong>&nbsp;l&agrave; sản phẩm d&ugrave;ng để khuếch t&aacute;n hương thơm của c&aacute;c loại tinh dầu từ thi&ecirc;n nhi&ecirc;n, được nhiều người lựa chọn sử dụng trong gia đ&igrave;nh, văn ph&ograve;ng.&nbsp;<strong>Đ&egrave;n x&ocirc;ng</strong>&nbsp;c&oacute; t&aacute;c dụng khử m&ugrave;i, xua đuổi c&ocirc;n tr&ugrave;ng, thanh lọc kh&ocirc;ng kh&iacute; hay gi&uacute;p giảm stress mệt mỏi, tạo kh&ocirc;ng gian thư gi&atilde;n thoải m&aacute;i rất tốt cho sức khỏe, t&ugrave;y thuộc v&agrave;o loại tinh dầu. Với thiết kế thuần Việt,&nbsp;sản phẩm đ&egrave;n x&ocirc;ng tinh dầu tại&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;được rất nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch</span>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-khia-to-2.JPG?v=1.0.2\" /></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Hướng d&acirc;̃n sử dụng đ&egrave;n x&ocirc;ng tinh dầu</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bước 1</strong>: Cắm điện v&agrave; bật chiết &aacute;p&nbsp;bằng c&aacute;ch vặn nut xoay về ph&iacute;a ON.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bước 2:</strong>&nbsp;Cho 1 &iacute;t nước ấm l&ecirc;n chỗ trũng của đ&egrave;n (đĩa đ&egrave;n).</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bước 3</strong>: Cho 5-7 giọt tinh dầu v&agrave;o chỗ trũng (đĩa) của đ&egrave;n (bạn c&oacute; thể cho th&ecirc;m &iacute;t nước hoặc kh&ocirc;ng). C&oacute; thể t&ugrave;y theo kh&ocirc;ng gian, độ đậm m&ugrave;i của tinh dầu bạn c&oacute; thể nhỏ &iacute;t hoặc nhiều hơn t&ugrave;y v&agrave;o sở th&iacute;ch, v&agrave; tận hưởng kh&ocirc;ng gian thơm m&aacute;t của tinh dầu.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bước 4</strong>: Trước khi r&uacute;t điện bạn n&ecirc;n vặn chỉnh về n&uacute;t OFF để bảo vệ b&oacute;ng đ&egrave;n bền hơn.</span></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-tron-den-khia-1.JPG?v=1.0.2\" /></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Lưu &yacute; khi sử dụng đ&egrave;n x&ocirc;ng tinh dầu</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">1. Tr&aacute;nh xa tầm tay trẻ em.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">2. Kh&ocirc;ng n&ecirc;n sử dụng nước lạnh v&igrave; sẽ l&agrave;m giảm t&aacute;c dụng của tinh dầu.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">3. Kh&ocirc;ng chạm v&agrave;o b&ecirc;n trong đ&egrave;n khi đang hoạt động. Kh&ocirc;ng để đ&egrave;n gần c&aacute;c vật dễ ch&aacute;y nổ.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">4. N&ecirc;n điều chỉnh đ&egrave;n ở độ s&aacute;ng vừa phải, kh&ocirc;ng chỉnh đ&egrave;n ở mức s&aacute;ng cao nhất qu&aacute; 1 giờ li&ecirc;n tục để n&acirc;ng cao tuổi thọ của b&oacute;ng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>1 số h&igrave;nh ảnh đ&egrave;n x&ocirc;ng tinh dầu</strong></span></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-tron-to-7.JPG?v=1.0.2\" /><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-tron-to-5.JPG?v=1.0.2\" /><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-tron-nho-1.JPG?v=1.0.2\" /></strong></p>\r\n', 4, 5, 8, 0, 180000, 180000, '2022-05-07 14:53:05', '1', '2022-05-11 16:43:28', '67', 0, 1),
(48, 21, 'Máy khuếch tán tinh dầu 1', 'may-khuech-tan-tinh-dau-1', '0d8d85c49755fd1a3b731eaea23f547c.jpg', '2dead5c307f5b5d5e8984c3c4dd6394b.jpg', 'Máy khuếch tán tinh dầu sử dụng công nghệ khuếch tán siêu âm phân tách hỗn hợp nước và tinh dầu thành những phần tử cực nhỏ tạo thành cột hơi bay lên.', '<h2 style=\"text-align:center\"><span style=\"font-size:18px\"><strong>M&aacute;y Khuếch T&aacute;n Tinh Dầu</strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Được thiết kế giống h&igrave;nh hoa tulip,<strong>&nbsp;m&aacute;y&nbsp;khu&ecirc;ch t&aacute;n tinh dầu</strong>&nbsp;l&agrave; sản phẩm d&ugrave;ng để khuếch t&aacute;n hương thơm của c&aacute;c loại tinh dầu từ thi&ecirc;n nhi&ecirc;n, được nhiều người lựa chọn sử dụng trong gia đ&igrave;nh, văn ph&ograve;ng. M&aacute;y&nbsp;x&ocirc;ng tinh dầu&nbsp;c&oacute; t&aacute;c dụng khử m&ugrave;i, xua đuổi c&ocirc;n tr&ugrave;ng, thanh lọc kh&ocirc;ng kh&iacute; hay gi&uacute;p giảm stress mệt mỏi, tạo kh&ocirc;ng gian thư gi&atilde;n thoải m&aacute;i rất tốt cho sức khỏe, t&ugrave;y thuộc v&agrave;o loại tinh dầu. Với thiết kế thuần Việt,&nbsp;sản phẩm m&aacute;y&nbsp;x&ocirc;ng tinh dầu tại&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;được rất nhiều kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch.</span></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/den-tuy-lip-2.JPG?v=1.0.2\" /></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hướng d&acirc;̃n sử dụng m&aacute;y x&ocirc;ng tinh dầu</strong></span></h3>\r\n\r\n<p><span style=\"font-size:14px\">1. Mở nắp m&aacute;y, cho nước v&agrave;o trong khay chứa nước đến Vạch MAX<br />\r\n2. Nhỏ từ 5-7 giọt tinh dầu thi&ecirc;n nhi&ecirc;n v&agrave;o b&ecirc;n trong nước<br />\r\n3. Đậy nắp lại, cắm điện v&agrave; bấm v&agrave;o n&uacute;t MIST để m&aacute;y bắt đầu phun sương khuếch t&aacute;n tinh dầu, Bấm n&uacute;t LIGHT để chỉnh đ&egrave;n LED theo &yacute; muốn.</span></p>\r\n\r\n<p><img alt=\"/may-xong-tinh-dau\" src=\"https://sieuthithiennhien.vn/photo/may-xong-tinh-dau1.jpg?v=1.0.0\" /></p>\r\n\r\n<p><em>C&aacute;ch sử dụng m&aacute;y khuếch t&aacute;n tinh dầu</em></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Lưu &yacute;:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Khoảng 1 &ndash; 2 tuần d&ugrave;ng khăn mềm, kh&ocirc; lau nhẹ b&ecirc;n trong m&aacute;y để vệ sinh tinh dầu b&aacute;m d&iacute;nh</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kh&ocirc;ng để nước lọt v&ocirc; c&aacute;c bộ phận điện/điện tử của m&aacute;y sẽ g&acirc;y nguy hiểm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>M&aacute;y khuếch t&aacute;n tinh dầu</strong>&nbsp;sử dụng c&ocirc;ng nghệ khuếch t&aacute;n si&ecirc;u &acirc;m ph&acirc;n t&aacute;ch hỗn hợp nước v&agrave; tinh dầu th&agrave;nh những phần tử cực nhỏ tạo th&agrave;nh cột hơi bay l&ecirc;n cao ở dạng sương m&ugrave;, l&agrave;m ẩm kh&ocirc;ng kh&iacute; nhưng kh&ocirc;ng ướt đồ xung quanh.</span></p>\r\n\r\n<p><img alt=\"may-khuech-tan-tinh-dau\" src=\"https://sieuthithiennhien.vn/photo/den-tuy-lip-4.JPG?v=1.0.2\" /></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng tinh dầu</em></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>5 cam kết khi mua h&agrave;ng tại Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:14px\">Sản phẩm đ&uacute;ng chất lượng.</span></li>\r\n	<li><span style=\"font-size:14px\">Được kiểm tra sản phẩm trước khi thanh to&aacute;n.</span></li>\r\n	<li><span style=\"font-size:14px\">Chỉ phải thanh to&aacute;n tiền khi ưng sản phẩm.</span></li>\r\n	<li><span style=\"font-size:14px\">Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.</span></li>\r\n	<li><span style=\"font-size:14px\">Miễn ph&iacute; khi đạt gi&aacute; trị đơn h&agrave;ng tr&ecirc;n 280k</span></li>\r\n</ol>\r\n', 4, 14, 20, 20, 480000, 390000, '2022-05-07 14:58:01', '1', '2022-05-11 16:47:31', '1', 0, 1),
(49, 17, '$Sản phẩm', 'san-pham', '81526fefcdf1a8786b13534b5c32aaee.jpg', 'fac10cd4c4337fe2b54d562bbf4fbb54.jpg', 'kjahshgf', '<p>kjahfhfri</p>\r\n', 4, 10, 0, 2, 200000, 3000, '2022-05-11 13:59:49', '1', '2022-05-11 13:59:49', '1', 0, 1),
(50, 20, 'Tinh dầu hoa nhài', 'tinh-dau-hoa-nhai', 'fa194ad026619d92c47b6917d2826793.jpg', '1b0b52c684cf376dee5600966f72b942.jpg', 'Tinh dầu hoa nhài nguyên chất 100% từ tự nhiên, không hương liệu, không chất bảo quản. Với hương thơm thuần khiết, tạo không gian thư giãn, thoải mái', '<p><span style=\"font-size:14px\">Chưa bao giờ tr&ecirc;n thị trường tinh dầu lại n&oacute;ng hổi như b&acirc;y giờ, v&agrave;&nbsp;<strong>tinh dầu hoa nh&agrave;i</strong>&nbsp;đang l&agrave; t&acirc;m điểm ch&uacute; &yacute; của rất nhiều người. Giải th&iacute;ch cho hiện tượng n&agrave;y kh&ocirc;ng g&igrave; ngo&agrave;i l&iacute; do tinh dầu nh&agrave;i đ&atilde; mang lại nhiều lợi &iacute;ch từ việc mang lại hương thơm dễ chịu, gi&uacute;p cho kh&ocirc;ng gian trở n&ecirc;n thoải m&aacute;i. H&atilde;y&nbsp;c&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;t&igrave;m hiểu kĩ hơn về sản phẩm n&agrave;y nh&eacute;!</span></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/tinh-dau-hoa-nhai-2.JPG?v=1.0.2\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Tinh dầu hoa nh&agrave;i</em></p>\r\n\r\n<h2><span style=\"font-size:16px\">Mua tinh dầu hoa nh&agrave;i ở đ&acirc;u</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Để mua được sản phẩm&nbsp;<strong>tinh dầu hoa nh&agrave;i</strong>&nbsp;ch&iacute;nh h&atilde;ng qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng online ngay tr&ecirc;n ch&iacute;nh&nbsp;<strong>website</strong>&nbsp;của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n hoặc đến bất k&igrave; đại l&iacute; n&agrave;o thuộc hệ thống tr&ecirc;n to&agrave;n quốc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;với 06 năm hoạt động ph&acirc;n phối c&aacute;c loại tinh dầu nguy&ecirc;n chất tr&ecirc;n to&agrave;n quốc. C&ugrave;ng đ&oacute; l&agrave; những ch&iacute;nh s&aacute;ch đảm bảo v&agrave; gi&aacute; cả cạnh tranh nhất tr&ecirc;n thị trường hiện nay. Chắn chắn bạn sẽ kh&ocirc;ng phải thất vọng khi đặt ch&acirc;n đến&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>5 cam kết khi mua h&agrave;ng tại Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></span></p>\r\n\r\n<ol>\r\n	<li>Sản phẩm đ&uacute;ng chất lượng, kh&ocirc;ng chất bảo quản.</li>\r\n	<li>Được kiểm tra sản phẩm trước khi thanh to&aacute;n.</li>\r\n	<li>Chỉ phải thanh to&aacute;n tiền khi ưng sản phẩm.</li>\r\n	<li>Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.</li>\r\n	<li>Miễn ph&iacute; Ship khi mua từ 100mil trở l&ecirc;n.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthithiennhien.vn/photo/tinh-dau-hoa-nhai-2.JPG?v=1.0.2\" /><em>Tinh dầu hoa nh&agrave;i</em></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Hướng dẫn sử dụng tinh dầu hoa nh&agrave;i</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">L&agrave; tinh dầu thi&ecirc;n nhi&ecirc;n 100% kh&ocirc;ng chất bảo quản, việc sử dụng tinh dầu lại v&ocirc; c&ugrave;ng dễ d&agrave;ng. C&aacute;ch sử dụng được&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;hướng dẫn rất chi tiết tr&ecirc;n bao b&igrave; của sản phẩm&nbsp;<em><strong>Tinh Dầu Hoa Nh&agrave;i</strong></em></span></p>\r\n', 4, 12, 0, 0, 200000, 200000, '2022-06-03 12:31:42', '1', '2022-06-03 12:31:42', '1', 1, 1),
(51, 25, 'Tinh dầu ngọc lan tây', 'tinh-dau-ngoc-lan-tay', '04a26ca440845346ed7555f58269452e.jpg', 'c5c4358b73a747c2befe33ba518f1536.jpg', 'Tinh dầu ngọc lan tây nguyên chất 100% từ tự nhiên, không hương liệu, không chất bảo quản. Với hương thơm ngọt ngào tạo không gian lãng mạn.', '<p><span style=\"font-size:14px\"><strong>Tinh dầu ngọc lan t&acirc;y</strong>&nbsp;c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; tinh dầu Ylang Ylang được sản xuất tại Madagascar. Tinh dầu được biết đến với hương thơm l&atilde;ng mạn tự nhi&ecirc;n, gi&uacute;p kh&ocirc;ng kh&iacute; trở n&ecirc;n trong l&agrave;nh, thoải m&aacute;i, dễ chịu.&nbsp;Với những c&ocirc;ng dụng tuyệt vời n&agrave;y h&atilde;y c&ugrave;ng&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;t&igrave;m hiểu về gi&aacute; v&agrave; địa điểm mua tinh dầu lan ngọc t&acirc;y uy t&iacute;n ở đ&acirc;u nh&eacute;!</span></p>\r\n\r\n<p><img alt=\"tinh-dau-ngoc-lan-tay\" src=\"https://sieuthithiennhien.vn/photo/tinh-dau-ngoc-lan-tay-1.jpg?v=1.0.22\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Tinh dầu ngọc lan t&acirc;y Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</em></p>\r\n\r\n<h2><span style=\"font-size:16px\">Mua tinh dầu ngọc lan t&acirc;y ở đ&acirc;u</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">T&igrave;m được địa chỉ b&aacute;n&nbsp;<strong>tinh dầu ngọc lan t&acirc;y</strong>&nbsp;kh&ocirc;ng hề kh&oacute; nhưng để t&igrave;m được nơi b&aacute;n uy t&iacute;n th&igrave; kh&ocirc;ng phải ai cũng biết. H&atilde;y đến với&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>, với ch&iacute;nh s&aacute;ch đảm bảo bảo vệ người ti&ecirc;u d&ugrave;ng v&agrave; gi&aacute; cả cạnh tranh chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn thất vọng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch c&oacute; thể đặt online ngay tr&ecirc;n ch&iacute;nh&nbsp;<strong>website</strong>&nbsp;của&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;hoặc đến bất kỳ đại l&yacute; n&agrave;o tr&ecirc;n to&agrave;n quốc thuộc hệ thống của Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n để mua sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>5 cam kết khi mua h&agrave;ng tại Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">1.&nbsp;&nbsp; &nbsp;Sản phẩm đ&uacute;ng chất lượng, kh&ocirc;ng chất bảo quản.<br />\r\n2.&nbsp;&nbsp; &nbsp;Được kiểm tra sản phẩm trước khi thanh to&aacute;n.<br />\r\n3.&nbsp;&nbsp; &nbsp;Chỉ phải thanh to&aacute;n tiền khi ưng sản phẩm.<br />\r\n4.&nbsp;&nbsp; &nbsp;Giao h&agrave;ng tại nh&agrave; tr&ecirc;n to&agrave;n quốc.<br />\r\n5.&nbsp;&nbsp; &nbsp;Miễn ph&iacute; Ship khi mua từ 100mil trở l&ecirc;n.</span></p>\r\n\r\n<p><img alt=\"tinh-dau-ngoc-lan-tay\" src=\"https://sieuthithiennhien.vn/photo/tinh-dau-ngoc-lan-tay.jpg?v=1.0.22\" /></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng tinh dầu ngọc lan t&acirc;y</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">L&agrave; tinh dầu thi&ecirc;n nhi&ecirc;n 100% kh&ocirc;ng chất bảo quản với nhiều t&aacute;c dụng tốt cho sức khỏe, việc sử dụng tinh dầu lại v&ocirc; c&ugrave;ng dễ d&agrave;ng. C&aacute;ch sử dụng được&nbsp;<strong>Si&ecirc;u Thị Thi&ecirc;n Nhi&ecirc;n</strong>&nbsp;hướng dẫn rất chi tiết tr&ecirc;n bao b&igrave; của sản phẩm&nbsp;<em><strong>Tinh Dầu Ngọc Lan T&acirc;y</strong></em>.</span></p>\r\n', 4, 15, 15, 10, 250000, 225000, '2022-06-03 12:34:57', '1', '2022-06-03 12:34:57', '1', 1, 1),
(52, 23, 'Đèn xông tinh dầu nến TN05', 'den-xong-tinh-dau-nen-tn05', 'cec5264426ebc8ffb5fd05e969f080e8.jpg', '9f60ebaedd76c6b1e7cb8ce5b67d3cf1.jpg', 'Đèn nến đốt tinh dầu hình ấm trà TN05 được thiết kế rất độc đáo với hình ấm trà có họa tiết lá trúc và nắp đỏ. Mang đến sự lãng mạng, ấm áp, giúp ngôi nhà của bạn thêm đẹp và thơm hơn.', '<p><strong>Đ&egrave;n nến đốt tinh dầu h&igrave;nh ấm tr&agrave; TN05</strong>&nbsp;của tinh dầu Hương Sắc Việt&nbsp;được thiết kế rất độc đ&aacute;o với kiểu d&aacute;ng ấm tr&agrave; lạ mắt, đ&egrave;n c&ograve;n được thiết kế với chất liệu gốm cao cấp độ bền cao.&nbsp;<a href=\"https://tinhdaulachampa.net/den-xong-tinh-dau.html\">Đ&egrave;n x&ocirc;ng tinh dầu nến</a>&nbsp;gi&uacute;p hương tinh dầu bay xa, thơm, thanh lọc kh&ocirc;ng kh&iacute; tốt, tạo kh&ocirc;ng gian ấm &aacute;p, l&atilde;ng mạng&hellip;<br />\r\n&nbsp;</p>\r\n\r\n<h2>Th&ocirc;ng Số Kỹ Thuật Đ&egrave;n Đốt Tinh Dầu H&igrave;nh Ấm Tr&agrave; TN05</h2>\r\n\r\n<p><br />\r\n- Chiều cao (t&iacute;nh cả ch&eacute;n đ&egrave;n): 13cm<br />\r\n- Đường k&iacute;nh miệng ch&eacute;n đ&egrave;n: 5cm<br />\r\n- Dung t&iacute;ch chứa: 50ml<br />\r\n- C&acirc;n nặng: 0.3kg<br />\r\n- Chất liệu: Gốm b&aacute;t tr&agrave;ng sơn đen<br />\r\n- Th&acirc;n đ&egrave;n v&agrave; ch&eacute;n đ&egrave;n t&aacute;ch rời<br />\r\n- Sử dụng&nbsp;<a href=\"https://tinhdaulachampa.net/127-nen-tealight-%E2%80%93-nen-dot-tinh-dau-ntl10.html\">nến Tealight kh&ocirc;ng m&ugrave;i kh&ocirc;ng kh&oacute;i</a></p>\r\n\r\n<h2>Điểm Nổi Bật Của Đ&egrave;n Đốt Tinh Dầu H&igrave;nh Ấm Tr&agrave; TN05:<br />\r\n&nbsp;</h2>\r\n\r\n<p>- M&ocirc; phỏng theo kiến tr&uacute;c l&ograve; để nấu tr&agrave; thời xưa đ&egrave;n kh&ocirc;ng chỉ sang trọng m&agrave; c&ograve;n rất gần gũi.<br />\r\n- Ấm tr&ecirc;n đ&egrave;n c&oacute; họa tiết l&aacute; tre kết hợp với những mảng m&agrave;u ấn tượng.<br />\r\n- Kiểu d&aacute;ng sang trọng, cổ điển, ph&ugrave; hợp với mọi kh&ocirc;ng gian trong ng&ocirc;i nh&agrave;, kh&aacute;ch sạn, spa..<br />\r\n- Chất liệu gốm tr&aacute;ng men b&oacute;ng, đẹp, dẫn nhiệt tốt, gi&uacute;p nước v&agrave; tinh dầu nhanh bay hơi, tỏa hương mạnh.<br />\r\n- Ph&aacute;t huy tốt hơn những t&aacute;c dụng của&nbsp;<a href=\"https://tinhdaulachampa.net/tinh-dau-nguyen-chat.html\">tinh dầu nguy&ecirc;n chất</a>.<br />\r\n- Thanh lọc, diệt khuẩn, l&agrave;m mới kh&ocirc;ng kh&iacute;. Giảm nguy cơ mắc một số bệnh.<br />\r\n- X&ocirc;ng&nbsp;<a href=\"https://tinhdaulachampa.net/detail/128-6-loai-tinh-dau-giam-lo-au,-cang-thang.html\">tinh dầu gi&uacute;p giảm stress căng thẳng</a>, thư gi&atilde;n tinh thần.<br />\r\n- Gi&aacute; th&agrave;nh rẻ, chỉ v&agrave;i chục ngh&igrave;n một chiếc.<br />\r\n- C&oacute; thể tự tắt sau v&agrave;i tiếng sử dụng khi hết nến.<br />\r\n- Gi&uacute;p ng&ocirc;i nh&agrave; th&ecirc;m phần ấm &aacute;p, l&atilde;ng mạng.<br />\r\n<br />\r\nCh&uacute;ng ta đ&atilde; c&ugrave;ng nhau t&igrave;m hiểu qua một số th&ocirc;ng tin cũng như ưu điểm của&nbsp;<strong>đ&egrave;n x&ocirc;ng tinh dầu bằng nến ấn tr&agrave; TN05&nbsp;</strong>rồi. Mong rằng qua b&agrave;i viết n&agrave;y,&nbsp;<a href=\"https://tinhdaulachampa.net/\">tinh dầu Hương Sắc Việt</a>&nbsp;đ&atilde; gi&uacute;p bạn dễ d&agrave;ng chọn lựa cho m&igrave;nh một chiếc đ&egrave;n x&ocirc;ng tinh dầu ph&ugrave; hợp với kh&ocirc;ng gian v&agrave; sở th&iacute;ch.</p>\r\n', 4, 1, 0, 10, 400000, 360000, '2022-06-03 12:38:58', '1', '2022-06-03 12:38:58', '1', 1, 1),
(53, 22, 'Đèn xông tinh dầu gốm', 'den-xong-tinh-dau-gom', 'bce42ea1ccd0cdc827053cd6c82b7b43.jpg', '2ad184f8371a4d7117393b4a91e2b900.jpg', 'Đèn xông tinh dầu gốm mini TN34 có kích cỡ nhỏ gọn, tiết kiệm diện tích. Thân đèn là gốm màu nâu đất với họa tiết lá me. Khi bật đèn lên, ánh sáng tỏa ra từ những chiếc lá mang đến cảm giác lãng mạn và ấm áp.', '<p>Tinh dầu l&agrave; liệu ph&aacute;p hương thơm được nhiều nước tr&ecirc;n thế giới ưa chuộng từ những năm đầu thế kỉ 19. V&igrave; thế những sản phẩm&nbsp;<a href=\"https://tinhdaulachampa.net/den-xong-tinh-dau.html\">đ&egrave;n x&ocirc;ng tinh dầu</a>, m&aacute;y khuyếch t&aacute;n gi&uacute;p đưa hương thơm tinh dầu bay xa hơn cũng rất được quan t&acirc;m. V&iacute; dụ như:&nbsp;<strong>Đ&egrave;n điện x&ocirc;ng tinh dầu gốm mini TN34</strong>.<br />\r\n<br />\r\nH&atilde;y c&ugrave;ng&nbsp;<a href=\"https://tinhdaulachampa.net/detail/8-huong-sac-viet---dia-chi-ban-tinh-dau-tot-va-uy-tin-tai-tp-hcm.html\">Tinh dầu Hương Sắc Việt</a>&nbsp;t&igrave;m hiểu kỹ hơn về sản phẩm&nbsp;n&agrave;y nh&eacute;!<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Đèn xông tinh dầu mini gốm nâu họa tiết lá me TN34\" src=\"https://tinhdaulachampa.net/upload/201702/PR0121_den-xong-tinh-dau-34-200.jpg\" title=\"Đèn xông tinh dầu mini gốm nâu họa tiết lá me TN34\" /><br />\r\n&nbsp;</p>\r\n\r\n<h2>Th&ocirc;ng Số Kỹ Thuật Đ&egrave;n X&ocirc;ng Tinh Dầu Gốm Mini TN34:</h2>\r\n\r\n<p><br />\r\n-&nbsp;<strong>Điện &aacute;p:&nbsp;</strong>220V<br />\r\n-&nbsp;<strong>Chất liệu th&acirc;n đ&egrave;n:</strong>&nbsp;gốm m&agrave;u n&acirc;u kết hợp với những đường nứt v&agrave;ng v&agrave; họa tiết l&aacute; me<br />\r\n-&nbsp;<strong>Chất liệu đế đ&egrave;n:</strong>&nbsp;nhựa đen được tạo h&igrave;nh 4 ch&acirc;n đế<br />\r\n-&nbsp;<strong>K&iacute;ch thước (D&agrave;i x Rộng x Cao):&nbsp;</strong>9 x 9x 13cm<br />\r\n-&nbsp;<strong>Trọng lượng:</strong>&nbsp;300 gr<br />\r\n-&nbsp;<strong>D&acirc;y nguồn d&agrave;i:&nbsp;</strong>1m<br />\r\n-&nbsp;<strong>Bộ đ&egrave;n gồm</strong>: th&acirc;n đ&egrave;n, đế đ&egrave;n, b&oacute;ng đ&egrave;n, đĩa thủy tinh v&agrave; d&acirc;y chiết &aacute;p<br />\r\n&nbsp;</p>\r\n\r\n<h2>Điểm Nổi Bật Của Đ&egrave;n X&ocirc;ng Tinh Dầu Mini TN34</h2>\r\n\r\n<p><br />\r\n- Chất gốm mịn, bền cản nhiệt tốt. &Aacute;nh s&aacute;ng tỏa ra dễ chịu, c&oacute; thể d&ugrave;ng thay đ&egrave;n ngủ.<br />\r\n- Những đường nứt m&agrave;u n&acirc;u ấn tượng tạo cảm gi&aacute;c sang trọng.<br />\r\n- Họa tiết l&aacute; đơn giản nhẹ nh&agrave;ng, thanh lịch.<br />\r\n- Gi&uacute;p&nbsp;<a href=\"https://tinhdaulachampa.net/may-khuyech-tan-tinh-dau.html\">khuếch t&aacute;n tinh dầu</a>&nbsp;hiệu quả trong ph&ograve;ng ngủ, spa, kh&aacute;ch sạn.<br />\r\n- Thanh lọc, l&agrave;m mới, ti&ecirc;u diệt một số vi khuẩn c&oacute; hại trong kh&ocirc;ng kh&iacute;<br />\r\n- C&aacute;ch sử dụng đ&egrave;n x&ocirc;ng đơn giản, an to&agrave;n.<br />\r\n- C&oacute; thể d&ugrave;ng để trang tr&iacute; nh&agrave; cửa, ph&ugrave; hợp với mọi kh&ocirc;ng gian.<br />\r\n- Sử dụng trong liệu ph&aacute;p hương thơm aromatherapy.<br />\r\n- C&oacute; thể d&ugrave;ng l&agrave;m qu&agrave; tặng cho người th&acirc;n, bạn b&egrave;<br />\r\n- K&iacute;ch cỡ nhỏ gọn, gi&aacute; cả phải chăng.<br />\r\n- Kết hợp với c&aacute;c loại&nbsp;<a href=\"https://tinhdaulachampa.net/tinh-dau-nguyen-chat.html\">tinh dầu nguy&ecirc;n chất</a>&nbsp;c&oacute; thể hỗ trợ h&ocirc; hấp, ti&ecirc;u h&oacute;a v&agrave; giảm nguy cơ mắc bệnh.</p>\r\n', 4, 4, 2, 10, 200000, 180000, '2022-06-03 12:50:06', '67', '2022-06-03 14:34:46', '67', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(10, 'Trang chủ 1', 'trang-chu-1', 'slides1.jpg', '2022-05-04 09:25:40', '1', '2022-05-04 09:25:40', '1', 1, 0),
(11, 'slide 2', 'slide-2', 'slides23.jpg', '2022-05-04 15:39:50', '1', '2022-05-04 15:39:50', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2019-04-23 09:20:41', 1, 1),
(4, 'Nguyễn Văn A', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0985657410', 'Gò vấp 1', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2019-04-25 22:08:18', 1, 1),
(6, 'Nguyễn Văn B', 'nhanvienb', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 0, '09876543532', 'Gò vấp', 'user.png', '2019-04-23 09:18:18', 1, 1),
(7, 'Nguyễn Đức Lương', 'luong', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'luong@gmail.com', 0, '23523523423', 'Gò vấp', '5eab74ad301795ffdfaa82f52579f71d.png', '2019-06-13 22:15:15', 0, 1),
(8, 'Ngô Văn Hiệp', 'hiep1998', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'vanhiepp1998@gmail.com', 0, '981643651', 'Gò vấp', 'default.png', '2019-06-13 22:30:03', 0, 1),
(9, 'Ngô Văn Hiệp test 22223', '', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 2, '', 0, '', 'Lê đức thọ 2', 'default.png', '2019-06-13 22:59:14', 0, 1),
(10, 'Nguyễn Văn Sỹ', 'sy', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'sy@gmail.com', 1, '0969667459', 'Cần Thơ', 'f82962590067052b24a37502258187f4.jpg', '2022-05-06 10:12:41', 1, 1),
(11, 'Nguyễn Thị Phượng', 'Phuong', '7c222fb2927d828af22f592134e8932480637c0d', 2, 'phuongnt2920@gmail.com', 0, '0236547891', 'bắc ninh', '8de19cdcce1d3e507b77f4a9f7b2a576.jpg', '2022-06-03 15:19:47', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
