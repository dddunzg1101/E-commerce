-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 03:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `bl_id` bigint(20) UNSIGNED NOT NULL,
  `bl_id_rep` int(11) DEFAULT NULL,
  `sp_id` int(11) NOT NULL,
  `kh_id` int(11) NOT NULL,
  `bl_noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bl_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`bl_id`, `bl_id_rep`, `sp_id`, `kh_id`, `bl_noidung`, `bl_status`) VALUES
(1, NULL, 10, 5, 'Tay cầm chơi game rất tốt!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `sp_id` int(11) NOT NULL,
  `hd_id` int(11) NOT NULL,
  `cthd_dongia` double DEFAULT NULL,
  `cthd_soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`sp_id`, `hd_id`, `cthd_dongia`, `cthd_soluong`) VALUES
(1, 9, 1500000, 1),
(2, 8, 1500000, 1),
(3, 7, 2500000, 2),
(4, 10, 3450000, 1),
(5, 5, 2300000, 2),
(7, 6, 4000000, 4),
(7, 11, 4000000, 1),
(8, 12, 2300000, 1),
(10, 13, 200000, 1),
(10, 17, 200000, 2),
(11, 17, 100000, 1),
(12, 15, 20000, 2),
(12, 16, 20000, 4),
(13, 14, 50000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cuahang`
--

CREATE TABLE `cuahang` (
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `ch_ten` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_diachi` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_gioithieu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_id` bigint(20) NOT NULL,
  `ch_trangthai` int(11) NOT NULL DEFAULT 1 COMMENT '0:nghi ban; 1:con ban'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuahang`
--

INSERT INTO `cuahang` (`ch_id`, `ch_ten`, `ch_diachi`, `ch_gioithieu`, `kh_id`, `ch_trangthai`) VALUES
(1, 'Dung Shop', '114 Trần Xuân Xoạn,Q7, HCM', '', 1, 0),
(2, 'Cua hang 2', 'address test', '', 2, 0),
(3, 'Teo Shop', '114 Trần Xuân Xoạn,Q7, HCM', '', 4, 0),
(4, 'Admin Store', 'Not Found', '', 5, 0),
(5, 'Admin2 Store', 'Hà Nội', '', 7, 0),
(6, 'Shopping For Life', 'Nguyễn Khánh Toàn, Cầu Giấy, Hà Nội', '', 8, 1),
(7, 'Happy Store', 'Khu Vũ Xá, Phường Ái Quốc, TP. Hải Dương', '', 9, 1),
(8, 'TKOShop', 'Việt Hòa, TP. Hải Dương, Hải Dương', '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `dm_id` bigint(20) UNSIGNED NOT NULL,
  `dm_ten` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ch_id` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`dm_id`, `dm_ten`, `ch_id`) VALUES
(1, 'Giày Nam', 1),
(2, 'Giày Nữ', 1),
(5, 'Đồ Chơi', 4),
(6, 'Đồ Gia Dụng', 4),
(7, 'Hàng tiêu dùng', 5),
(8, 'Khác', 5),
(9, 'Bách Hóa Online', 6),
(10, 'Balo & Túi Ví Nam', 6),
(11, 'Chăm Sóc Thú Cưng', 6),
(12, 'Điện Thoại & Phụ Kiện', 6),
(13, 'Đồ Chơi', 6),
(14, 'Đồng Hồ', 6),
(15, 'Giày Dép Nam', 6),
(16, 'Giày Dép Nữ', 6),
(17, 'Giặt Giữ & Chăm Sóc Nhà Cửa', 7),
(18, 'Máy Ảnh & Máy Quay Phim', 7),
(19, 'Máy Tính & Laptop', 7),
(20, 'Mẹ & Bé', 7),
(21, 'Nhà Cửa & Đời Sống', 7),
(22, 'Nhà Sách Online', 7),
(23, 'Ô Tô & Xe Máy & Xe Đạp', 7),
(24, 'Phụ Kiện & Trang Sức Nữ', 7),
(25, 'Sắc Đẹp', 7),
(26, 'Sức Khỏe', 8),
(27, 'Thể Thao & Du Lịch', 8),
(28, 'Thiết Bị Điện Gia Dụng', 8),
(29, 'Thiết Bị Điện Tử', 8),
(30, 'Thời Trang Nam', 8),
(31, 'Thời Trang Nữ', 8),
(32, 'Thời Trang Trẻ Em', 8),
(33, 'Túi Ví Nữ', 8);

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
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `ha_id` bigint(20) UNSIGNED NOT NULL,
  `sp_id` int(11) NOT NULL,
  `ha_duongdan` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`ha_id`, `sp_id`, `ha_duongdan`) VALUES
(7, 4, '2021/20211004/OTndzpfVtXF92Oy7MX4dwKlQVj3Y7rVMEl98BbLX.jpg'),
(8, 4, '2021/20211004/laBCO29VJ1Q1oxVVeXmMBM71LTvWGqnNjxYMDF7q.jpg'),
(9, 5, '2021/20211004/2W5VgkNsV0OK6Sa2vSiZ5qrQXyacn5clWcrash3T.jpg'),
(10, 5, '2021/20211004/4vCQjUhXTxJkrJKnM8O8om4hrv061UrWtVJWqTdk.jpg'),
(11, 5, '2021/20211004/0tnHoyRKCDWerTvWxhxiArTbq9IKeoN2fcxhFiQa.jpg'),
(12, 6, '2021/20211004/l5Muwvl7SSxPIbY1eLRurcRISdl3Qr14oRq1Zod7.jpg'),
(13, 6, '2021/20211004/JBlOnNGnd49hwExo04r83GPgWvSZFT4GrrV9B3fp.jpg'),
(14, 6, '2021/20211004/V5kdHKNzRJemI3M2q6otEWVgP7O6c0BTO9DIxlMW.jpg'),
(15, 2, '2021/20211004/CVjcOBj4TrHDbv5ddmqV7LRYaJiqVw9NYoN84Kor.jpg'),
(16, 2, '2021/20211004/I0uDR7NDC4dDGF9tv6D1aapPHSaibIF30k0vzmRQ.jpg'),
(17, 1, '2021/20211004/qtP0zsD9vzvQ19z58dnEwq6AbYjWoDCwBlo2OTdD.jpg'),
(18, 1, '2021/20211004/8sNlZD5HaKFpA9H1GBi5zovz3CDEvmSKMMIEs7Gi.jpg'),
(19, 3, '2021/20211004/uwDRrFMrm90coHUtRCTOBXhKYj3ivgxy1hiWVkbv.jpg'),
(20, 3, '2021/20211004/Z0GmVqPWtsgOKLdCl9XFjErHV3d7JThWHP1IjjwX.jpg'),
(21, 7, '2021/20211004/tIPlN3uLT5gAdjcfX5ewst6hU5M0TSYwtWB7r5Fl.jpg'),
(22, 7, '2021/20211004/xLrafU3aNLdoFs5ejGvoMtPUWf3Vw70saVgA82cm.jpg'),
(23, 8, '2021/20211004/heOahihqvp5KgT0j4elAYmLmyVBGOUIgZCvg3qnQ.jpg'),
(24, 8, '2021/20211004/bHr1p0GVpXYuR6IrzLFM8lvCBJVpryuhvBHuuKXn.jpg'),
(25, 9, '2021/20211015/Xr4SBlFwyggKoHfORFQBEh66rJHQElUDofabwWU7.png'),
(26, 9, '2021/20211015/Q3sdO3Dbg6XRThWvi9ClLnqEKhtV166OT0qXhcnT.jpg'),
(27, 10, '2021/20211017/9orUYk4yFY5I6nHOm9TIZoUw6m1kx7MRu2IhzRST.jpg'),
(28, 10, '2021/20211017/KGiT7WYfacoBW1sr6JWApkZQdsC6I6fUcixrlxwL.jpg'),
(29, 11, '2021/20211017/Y7hMVsLBfWt3O53LS9t4WyWRLCMWfxUHGQ8chg7p.jpg'),
(30, 11, '2021/20211017/YWmsup6R6XwdBvw0bWUu97SE17kHZ3A2B8S9BkQn.jpg'),
(31, 12, '2021/20211017/IWJkXKyviyT1TCDxk7cwnkEb6Hz8CzrrxAcI4ho3.jpg'),
(32, 12, '2021/20211017/18F4saCtbbnI4vTfqQRvcVXocc8KQvis9EwJyyKV.jpg'),
(33, 13, '2021/20211017/hHjYdrpC6UaE0Jm1GDTyit4wWP3733ld4nlAlhXz.jpg'),
(34, 13, '2021/20211017/kOA33LYsFcUfrGyhXFL3DB8ftPSd4tcVjTBbqPU7.jpg'),
(35, 14, '2021/20211021/0QF1Idp5nZBhgYO5dduDaA1g7alLkOWCA9Kixtjo.jpg'),
(36, 14, '2021/20211021/bbsXSwOPud2FeW7sfpzqFuAIBWFpqYhiXgLF8fsB.jpg'),
(37, 15, '2021/20211021/I2g08qBLjosUIzQimtjc6wAd4VlYLdft3t7u4ipG.jpg'),
(38, 15, '2021/20211021/lYL8rEUazJiBbqc0ShdCbCPyqAGXIC0YNGI8ZXMF.jpg'),
(39, 16, '2021/20211021/zoPz7dq9OVYSNDFtmLVvjo9L5WylKERaq33e0otF.jpg'),
(40, 16, '2021/20211021/OLiGZFzEHZxNTkCMAgQDpPTEiybNt4oMVZ9BBGb8.jpg'),
(41, 17, '2021/20211021/w5CER9hQNg8rPIAkGgqbPPYbz0SXjsSAoYVcrFFc.jpg'),
(42, 17, '2021/20211021/0yXSQhOf7AtfaZhdDp4APBoJOpGnIezr6RwSD4Vy.jpg'),
(43, 18, '2021/20211021/jpkkWBbTVg5XszS93AXAWf3Xw1b1GiwMBaDgPh92.jpg'),
(44, 18, '2021/20211021/DQFMNfUa9tP9DNblRmUnaZBqIP6BQKBm5aCa5Ep0.jpg'),
(45, 19, '2021/20211021/IJZHllIQZU7NR99EXjcKZ3sl3TXBp3Dw3lZrGaHU.jpg'),
(46, 19, '2021/20211021/Y9l3F2pCJkh5xjfNWJTN8uRVdEe8VxAFGwfc1Cux.jpg'),
(47, 20, '2021/20211021/sX65GmFKNKwoMCn9jvWBHovRlvZLTXnhTXNRqF2I.jpg'),
(48, 20, '2021/20211021/KAK2O50XDCGLOAUGlrAkWXgWgofee8Xm0M63aqgL.jpg'),
(49, 21, '2021/20211021/Mu3wqWaQqsUpOk3LBeJlL0d5klTov7R3LuqRYtgp.jpg'),
(50, 21, '2021/20211021/iEkKGKIKB1M1ToekktR89FOnpbbiUT4QeDTR1fAB.jpg'),
(51, 22, '2021/20211021/bDBE1OVdvlhGwJZIakr5ebbqgszB3doTlh3L2BIO.jpg'),
(52, 22, '2021/20211021/TL6EGaC2RWthQIEZjMr9H4CSnrEwLD6zp6vEA3n8.jpg'),
(53, 23, '2021/20211021/EZMibq1QsJIxkQxJhSXZ7QNFwaegO2Xm3uWo7tak.jpg'),
(54, 23, '2021/20211021/3KUrJ8z1ceK1Yzy8raDc9KCIr3pMJQTsUNPT7s5I.jpg'),
(55, 24, '2021/20211021/RHpTH49LJ06Iz1PmXly0fSJ4l8Mxvy31Nm9MK1Ik.jpg'),
(56, 24, '2021/20211021/nyFBLSKfdwV4TBGoozyWJPkaok6acUOuX8o0azYW.jpg'),
(57, 25, '2021/20211021/Rd3XtZOu7mXulcOOL8lHsnnDPu5i5SMvdCu3EJhs.jpg'),
(58, 25, '2021/20211021/J4Ykmrgr7ZkTDcqC7uzRhcysCR2QepXgtPXpA1pT.jpg'),
(59, 26, '2021/20211021/l7wha3cSKzQz4pnyEgBsKjvKf05OjmpVCqTENQPY.jpg'),
(60, 26, '2021/20211021/yEvAbqlZtz3YrK6ltCS9lN8SLpHWkebgunqiFXdr.jpg'),
(61, 27, '2021/20211021/ScDuYPiafc9ZSaAosjnmBdpqqHQ5kIOOUQnuWCwK.jpg'),
(62, 27, '2021/20211021/kWO863IiU3YeNXeetPMU0oSHz6pwMj3I5sUYmXky.jpg'),
(63, 28, '2021/20211021/GLBUlhoeHb1lveyLTYki93BwxaMjI5wTPNf2xRa4.jpg'),
(64, 28, '2021/20211021/ogSTh5nVD2MwoGDe02ELQ0sIumJh4fOQyqCraG2g.jpg'),
(65, 29, '2021/20211021/fKjmzW0wFOEnONfUjYA5bEWTLWdVqrBsWcWW6v57.jpg'),
(66, 29, '2021/20211021/D5s4p1MRGmzAbpifMTmNFvGy5xgitTD6ksPSaAuE.jpg'),
(67, 30, '2021/20211021/aYPrVweHpw03dXOR0UCTxqsju5AJLkr2q0wmsgqm.jpg'),
(68, 30, '2021/20211021/TZ6Y2SAbrVEKddflFXXMMtctemXQSyRwMY2K8S0j.jpg'),
(69, 31, '2021/20211021/mERnc3INIf8NeObPc7VlKZQf6tlJZK5EQCbSxhXr.jpg'),
(70, 31, '2021/20211021/ngPumwnC3bt7gr6EwiVNG3jLvTvY02hEZPAMdl4i.jpg'),
(71, 32, '2021/20211021/97SVRPv9dsfATU9tqfEZRpR7rrAdasNdhH5TRUsd.jpg'),
(72, 32, '2021/20211021/CN85vOAKDyyrrodXhLsCbuOhCUqxgp2GNoQMASHa.jpg'),
(73, 33, '2021/20211021/nLqVJAVL9jbCivJPit2RqOkYbCiFwNoRYpcwSHFB.jpg'),
(74, 33, '2021/20211021/3KGe6MUC56M1s9lTqlhLjREwRMSjaMyE1LjR9WvI.jpg'),
(75, 34, '2021/20211021/77y9oo4K233DpiYHKxXs9FB7TxBoz5ENWGx9tg62.jpg'),
(76, 34, '2021/20211021/Zb2bniadOGltrDch9rklTkmaZRfzDzTNCZYAoh4o.jpg'),
(77, 35, '2021/20211023/lt6PU3r7cSR9VuRMOqkC4onglShqAypojUUBabhy.jpg'),
(78, 35, '2021/20211023/7Y7eYlkMe4qHecdFDgiWdGmBxJFswMQgK3xNtTVG.jpg'),
(79, 36, '2021/20211023/0xzU15W3TqxoRDTj4iZpiEn2NEvNdHIzOQa9uPp9.jpg'),
(80, 36, '2021/20211023/OT3OAZjNp0iVhePycnIbVHttVbjaMmMFelWMJrB6.jpg'),
(81, 37, '2021/20211023/eYpUrpVQYumzfYDM1xKtE1iPfsdKyB1DdlZFGwII.jpg'),
(82, 37, '2021/20211023/bqqRuBiC78ev9ZWSmFahEcfAMpkvBlKnsT8aZAPx.jpg'),
(83, 38, '2021/20211023/QrZNj9ETItP9XvF4Pbqu8wvpEkXUocmKs6JQdQyq.jpg'),
(84, 38, '2021/20211023/xjvhSmVbacdt9vKb4dvRZOnN6zWIvLlFUwkmjrsq.jpg'),
(85, 39, '2021/20211023/icrzqtjvC1zmHgwWHYk1Vk7pamOV4enGWVgfaG8K.jpg'),
(86, 39, '2021/20211023/1757yzMZsZMuauqlYk612bcXZ1ZSkWiutcSCAhlp.jpg'),
(87, 40, '2021/20211023/of7fyFNkrb1wIE7F7cHeV8CnUdhObNARTIDVcfGb.jpg'),
(88, 40, '2021/20211023/au1s55QS0xj5b8gqqyvHTPDvry1J9xwyMujpC3Gm.jpg'),
(89, 41, '2021/20211023/oKEboMwZnGLzJXyeHe427GtHK1C3XF1hZMrk7HgZ.jpg'),
(90, 41, '2021/20211023/ghPfz7XBzIuFTIt2ZotQZFxfO2PsnNrezEjAHFY3.jpg'),
(91, 42, '2021/20211023/gH29Vo1pGdLaXnlK2hO4HQN4UWs9fgrIJocZPW5o.jpg'),
(92, 42, '2021/20211023/LkzkWTsxNxH1IWGFERxFin8tVqNyUvdkvZ99O78B.jpg'),
(93, 43, '2021/20211023/qE6L1K9onL2EoZXwACQJVrR45geFWJqtGmSivmPL.jpg'),
(94, 43, '2021/20211023/LveFXFqhhtWFg4MjEhohgd3Ve82UnyVg6D1Sj15l.jpg'),
(95, 44, '2021/20211023/OkEaCtk3eg6Ekivwmig6b5uO9QXViAoPeCOsUIzA.jpg'),
(96, 44, '2021/20211023/0EjEm8yHQGvKBxBdU5d9XQ2b4gvxWLTiOl90Vs9X.jpg'),
(97, 45, '2021/20211023/H8yguqRXfmK0wwnN3iMYWli6OLv1uWt0q5wOLZyN.jpg'),
(98, 45, '2021/20211023/b7f3qxVQ81zDYUy0jkv2nGIrgFQQ5U0HMTKYsUTm.jpg'),
(99, 46, '2021/20211023/UpWIgjIYQlHBs6ffabddgjpKhXHFbw5jxIBS6OsV.jpg'),
(100, 46, '2021/20211023/jqDy4klYNU8QF8yZdkZeriuqdMSY6RAWdqG3T0s7.jpg'),
(101, 47, '2021/20211023/Y5Dnm3GL77yS1PZLwSFCcSwWjej5OFTrYUCmrS4t.jpg'),
(102, 47, '2021/20211023/eQccdOz38itbtmFnvSi2lbdvbBgjNg6mE81kQfsW.jpg'),
(103, 48, '2021/20211023/WwtTRWve2t3anGof2dGbCLj4KyTLkO8wohmL4ZI6.jpg'),
(104, 48, '2021/20211023/n5u88cnewSZ4VmI6GLcDoqfSuwZhlTcbXZBDUnss.jpg'),
(105, 49, '2021/20211023/NwQPRTU55cNct8s1us6mRHPIQ1fz9PC7Rk10oDsB.jpg'),
(106, 49, '2021/20211023/qRIrVlRJnPpMNMmKmafSNoxv4qC9Nd7GR8pi64b1.jpg'),
(107, 50, '2021/20211023/WBfkZL8ZrBaqnIKKZXxQ9Ck22gc6uPVDq03DnDSp.jpg'),
(108, 50, '2021/20211023/P6zFduRrDtj3RRt4NCgkxyjmaOwEcMiTC3kMLhGl.jpg'),
(109, 51, '2021/20211023/XagT3FuOYyr5vQdcuzoo1ek4IwjNJYZe2lLTIl3s.jpg'),
(110, 51, '2021/20211023/6tWiQT2EwvD0vI9PSEFfzvsHB6J8SaV8vx6gWqqQ.jpg'),
(111, 52, '2021/20211023/C8SBYCjH1NaVzgnGiiHVeUim7gTy6icpBRjenIZ6.jpg'),
(112, 52, '2021/20211023/pNWaxky3lQDTKOXXfyEqW8aVuCV6BlrlPtvkgHIA.jpg'),
(113, 53, '2021/20211023/HFQ3COpCTR0mtFJu71cj9Fce2F0aMAqYVCjLWL1D.jpg'),
(114, 53, '2021/20211023/aWLvnG1zWz6pw3s8juK5ZMUJjwET4dgZ5Acd5gB0.jpg'),
(115, 54, '2021/20211023/ljON8jOx0ywFXlOLdCzQCwGVdBJsHGHHxsl34zxU.jpg'),
(116, 54, '2021/20211023/gGzRxr9xiA8quqThZWKmBlSScD2Fy894XNqOD2fU.jpg'),
(117, 55, '2021/20211023/ZLOKGaeouiLHddONY7EcxhgdXXHfHtxWvUky0S5g.png'),
(118, 55, '2021/20211023/1ofdeZXY9LkIykpIlEnlDTA6QGdtOxGWCl3bk9ac.jpg'),
(119, 56, '2021/20211023/8owu2M5R3h6r2Pcu8XrhCuekJ2D3XH5l97n3DPiH.jpg'),
(120, 56, '2021/20211023/0idnZyEvIv7cBde9aJkzCnlZziFqDFxLDtWxfmF9.jpg'),
(121, 57, '2021/20211023/O01b0EeSExmC0Sg4BtLAWlrFn0OerQ97Hvj86dYe.jpg'),
(122, 57, '2021/20211023/1nHym76Rv856w1rmWqVVjTlhRBiqvI7SsyeJB3sx.jpg'),
(123, 58, '2021/20211023/KFkDSPoxSyaPXXliBU38w4DVdKBTJxL4e3P4jZwz.jpg'),
(124, 58, '2021/20211023/x5FfgmYSXpsRVxCtq2UBvA6SJ0b4V8f9C8lnCMrC.jpg'),
(125, 59, '2021/20211023/ypvLAr1H94U2LUZ8ZLh5OoRoMR23f0h98VjtyHMi.jpg'),
(126, 59, '2021/20211023/cR3eaKdTjGKyV92ns53EW7rhjafxKVHiNOeXVd0x.jpg'),
(127, 60, '2021/20211023/5TbsteR1oOVCldgA3sPL7t7BcqucHKnTFWHM3k3s.jpg'),
(128, 60, '2021/20211023/1lVXnQezzD0GHqqbdGpC9AekjhKgUJ5m7vYE5WBb.jpg'),
(129, 61, '2021/20211023/1itycbkzw0J4zQzibhcmpo06bxFReFnnEhvyjAFo.jpg'),
(130, 61, '2021/20211023/OcdlEsMaWSthKRENcsnMKpS5bfsAoQOhEFohMHIH.jpg'),
(131, 62, '2021/20211023/DqBuGEaXjlUkXBfGQVFxHghleauB3AENpZrXgAEC.jpg'),
(132, 62, '2021/20211023/hpbXIrZDYvmBWQkyVr2DwMpteAgcnkV7t95JCBtu.jpg'),
(133, 63, '2021/20211023/KVvd2HH1labX6UkoyTdkhIyor2QDjUJMUaxseWsA.jpg'),
(134, 63, '2021/20211023/Hr826sE0XUQ2OewUt5uXLIGPkEQNtzTWTmBZczCI.jpg'),
(135, 64, '2021/20211023/6popyn1PwnQI4YKzisO28voyCno14rARZJ6cfmB4.jpg'),
(136, 64, '2021/20211023/uyfZxEO1bZF7keX62mrfF7zPl3dtuym6ZForR86N.jpg'),
(137, 65, '2021/20211023/NScQTROiInNCRcDQuRehODd8ykuORbeOcZ735OXx.jpg'),
(138, 65, '2021/20211023/40bEtT1vY4hiU8Y0hgHvv5d4V6I6SvVbcl672kes.jpg'),
(139, 66, '2021/20211023/ckitmaoKK7zeDzaF0t01tkFMILEtBw5H1fQRKju1.jpg'),
(140, 66, '2021/20211023/VY6a5rrWArV0ZYlo2ViOUqTreMOs7JvjzQTiOEqA.jpg'),
(141, 67, '2021/20211023/nGHq9fLjUN1373BTIb9F1gtfygH8c90fp9W5fHGN.jpg'),
(142, 67, '2021/20211023/thR15pQs9OOuGK6Euq9FGKai9zjq5a4kWGiU6cDg.jpg'),
(143, 68, '2021/20211023/3GekZg1OeyCDOvLPiLT5FEw20RUUeRvDr8fmeIc0.jpg'),
(144, 68, '2021/20211023/cYUUFUIpTAyuyiFwjuWPJORijoVwSAoYuGbkTo92.jpg'),
(145, 69, '2021/20211023/8YLq2XZQuM9Ftq2siWYqsGUBn0ZSOFQ588ffh2wv.jpg'),
(146, 69, '2021/20211023/Go6Eq4vvbx1oe2Bp9htLcWU48jT7ioklKgic6q2U.jpg'),
(147, 70, '2021/20211023/doh3gsPhOZvYLOiz4RBBSZIUh85XwOR3UNColgkC.jpg'),
(148, 70, '2021/20211023/JotEaMY84L7p1h2MZVW4TNK6X1qoQaZwxRUfjGSn.jpg'),
(149, 71, '2021/20211023/REx4moScjHSKcDLsu6dzpitjQcN4LvQDMyOng8dJ.jpg'),
(150, 71, '2021/20211023/Nk8C5wXaH2gbaP0f7mYFt1MAEXiQag7xvhS36neZ.jpg'),
(151, 72, '2021/20211023/5pJgSximsu3Uk9DM6sMxHlJ2Dh7B7xGnaPX7lYAj.jpg'),
(152, 72, '2021/20211023/j5zDKuMDGHWImt8G3qAljRXsGUrLndZ529MGQVmY.jpg'),
(153, 73, '2021/20211023/eE3iRNNKEEyxW6Bz3Ooh8qTCaP2U7ZqbVllyI6TD.jpg'),
(154, 73, '2021/20211023/9ovdrgEL7aULgmQTTkYp2LQ3T68iUBdpMORXZfGM.jpg'),
(155, 74, '2021/20211023/C0AmvVVi7gtDYQvgSZHa8Afzk3FefPtpYGGECuxj.jpg'),
(156, 74, '2021/20211023/qpimuNQiWF2v6Rn8E7GU08LU5ASjryzTaHEa2DK6.jpg'),
(157, 75, '2021/20211023/j84W6YmRlt8KBWVELc7gahGl8x9galDa9RjkCgnX.jpg'),
(158, 75, '2021/20211023/ued9PdxHq0ZjEDdyJhm8rWZU9eyoIJeTDpW0TTtB.jpg'),
(159, 76, '2021/20211023/VyNHkjCn3PI1geIoYqHSLKrKNMpeKGpQKLslRiA2.jpg'),
(160, 76, '2021/20211023/t9RbtBluV1C57G6PQiO7hxPmZE6x7S8PQThLaJUS.jpg'),
(161, 77, '2021/20211023/3OGwBAvps9XgPjb6edWNUnnnBEUHphJFq8d10o1A.jpg'),
(162, 77, '2021/20211023/n94THFZ6txEN37FKomsDI49peQe6oYES1zzkSvsv.jpg'),
(163, 78, '2021/20211023/uMEaNNra8S2EgzZ6wziDNRLuktkzJIuchSo45tGc.jpg'),
(164, 78, '2021/20211023/Bd5io8ZJECccax1ze78y0W98o5zJAk3d6xhxCej2.jpg'),
(165, 79, '2021/20211023/qIria2zkX4P0I9RYYvTD5c1lZW6TtcItq4kW3dlA.jpg'),
(166, 79, '2021/20211023/MitYDfrsGYVnjgt58ZnHsb9kvO2hQ7nqiVdldhX6.jpg'),
(167, 80, '2021/20211023/XpmMlM7pB7gS6EVJmLDF1PDRn6lfG2QjZoFhwRqN.jpg'),
(168, 80, '2021/20211023/5ZXsvWvez3FHebLIWlKCuNyVZEnD6vlrmIXkgLEq.jpg'),
(169, 81, '2021/20211023/SJJNwrB53OutEVuBPdkDQlSGIzM8Brb9n78JGOO3.jpg'),
(170, 81, '2021/20211023/MKxLwCcmGGElhmD5EjYrTYxjXHcKX1PUjhBvkFk9.jpg'),
(171, 82, '2021/20211023/OAFBKIFYiyQtQIylavDuboPImWlALf52H85qgx5h.jpg'),
(172, 82, '2021/20211023/QIpyOTR0rDUPMoyXQAHtlkuwpsPgqypgcGn8zd8i.jpg'),
(173, 83, '2021/20211023/d9glQasOlxQCVAGI5YQdcjzHH8YNVWiQtQDYIueY.jpg'),
(174, 83, '2021/20211023/X4M1JmuUhwD6mFTq1mSc9OOLs7wbwqjoI6HD6rvx.jpg'),
(175, 84, '2021/20211023/Et7ijBk4rDjZMXKBsbIjTWhB4GD7Tg8Ouj9P3xl1.jpg'),
(176, 84, '2021/20211023/6iSKlu2g7aCdG5LsnH1Kmt8qhGvVBqDRLMtszJo7.jpg'),
(177, 85, '2021/20211023/W3tGRclNIhb8l1f69LlfQqLdIsxFZTw7N2072o1o.jpg'),
(178, 85, '2021/20211023/M5SyLSakrPygWHzDrENsPf6KIl7V3IKhwS44C1L0.jpg'),
(179, 86, '2021/20211023/QaXsCd7GimWcp32z7yGJGgcgV2F4XgS3qVF8oG6F.jpg'),
(180, 86, '2021/20211023/WRYsBzhpAXjM931SlQj6ar7BBnGIXodpTecYG6Um.jpg'),
(181, 87, '2021/20211023/yGmQ8IRpXCQwcQ7zMlMEFECEKa7SPPypZA0JTWtG.jpg'),
(182, 87, '2021/20211023/E6ENqCrM0cOkUff3fN7NvXvYM2dgj7pFGk2RWB5m.jpg'),
(183, 88, '2021/20211023/GMGmE2Cb3iBCqFrk6ZIshLy73hJOgSbkDBpU3uQi.jpg'),
(184, 88, '2021/20211023/nE4YlDCCcY4sgZ2Jr1axWztzWTt63rQggqdxqGmh.jpg'),
(185, 89, '2021/20211023/iUJ0gR999sCyvYUBZFtYHfnvGgYSoZWHhb5mXI32.jpg'),
(186, 89, '2021/20211023/nYOGqMbkkPBehXT5WkRmI2t66JKn7BN0N045wWPp.jpg'),
(187, 90, '2021/20211023/woYEvNZZ8mXRLhb17TMVURizLy18Swvr4V4Zw2zj.jpg'),
(188, 90, '2021/20211023/f5G3CY0ZYYF3yDku01Qsa3mhivUiGCJGGa4Ukq20.jpg'),
(189, 91, '2021/20211023/FDBmtyijyCJcnhw3E51tNlb7izWAaosgfPUOvL5n.jpg'),
(190, 91, '2021/20211023/g9AWPrwUh6VEvlG9gS72J1LvMjs6RkZwzzdenfNG.jpg'),
(191, 92, '2021/20211023/iihGD3vizfo1wyOrGP9nwtfKzjPAalVdUGCJB3Xf.jpg'),
(192, 92, '2021/20211023/9OFHftWoMevOfFCOAeUObgA6CHUhW0UgEB7rW3JS.jpg'),
(193, 93, '2021/20211023/I5REzxJjZrQAWWBQ8svDbHignO7RTHQBgsfrPdKq.jpg'),
(194, 93, '2021/20211023/zQPlQD5fDvVJesAoBeIbqHasCFzCKE0Emf96ghxG.jpg'),
(195, 94, '2021/20211023/KxW5SjP5i7adTDeEsGR6JkxoDtZ0XUdx2gNEFxDo.jpg'),
(196, 94, '2021/20211023/3tl0iJ9HOKfLjOpbvgoEJT3PZFoCxyfvjRztSLS7.jpg'),
(197, 95, '2021/20211023/D70MfVBPlEWmcHQBj8MAuPhlRIZFLELNY3syg1FL.jpg'),
(198, 95, '2021/20211023/jBA9eI4tINtM5Uh8VStLPofb7PW3Xdy7wyyy3zqY.jpg'),
(199, 96, '2021/20211023/otaBiGB5vhP2uWolxS0oasxw0IBKFSnTedNQHJdk.jpg'),
(200, 96, '2021/20211023/47LqbOqobt8C5c3EKRQbxHwasIw61xpbMbSVy5jI.jpg'),
(201, 97, '2021/20211023/kMAyoDlO2HcTt8MD3lZixB8Y8K5PbHS0eVob2lai.jpg'),
(202, 97, '2021/20211023/6SykZdPXWwVa4PHT6wtU8Os5DrDs731nHxUDvmSn.jpg'),
(203, 98, '2021/20211023/JyRa3GUCWZ5oqCW1nrm5Ieh5Kq1rGJ6Qi6gnfbOO.jpg'),
(204, 98, '2021/20211023/nKgkY3Wiud2MneDCN0uW49R7wOTuRrZyqIgKZWQL.jpg'),
(205, 99, '2021/20211023/AIwQiUj1D5e9Ss7qXuJw82fSA9JKDvObbHIJb7n4.jpg'),
(206, 99, '2021/20211023/KnrpjVdR7alsG8YstsyCn8Euf2HVSR4fnvBKQgJo.jpg'),
(207, 100, '2021/20211023/QQ4PO7P5dhCXIRFzE8kSGK99kDG1xjnwAVvaI6pj.jpg'),
(208, 100, '2021/20211023/5TtklltsUOgTNuI6YieZM4SHUkwRG7xqa7SfoaYu.jpg'),
(209, 101, '2021/20211023/a2neSeuwibW8Px33z3bb9LgVeop2G704SQXCwU1V.jpg'),
(210, 101, '2021/20211023/4ixK8S9ojzqez2W7R2nqKJHf5PKA3Sj3bv6JO8DR.jpg'),
(211, 102, '2021/20211023/bdMU25uVxwzTkZpq3HfTqxOGBWmL8XypKmoqTtoH.jpg'),
(212, 102, '2021/20211023/bHMxExUg8PAg6ArsDRpMP617XhVIXFoZy6FsvCHI.jpg'),
(213, 103, '2021/20211023/4vhn5a2FjI1QWLGOBGmHriFguBB8HMZXcuaBesHJ.jpg'),
(214, 103, '2021/20211023/mT8EuBgkYKyQbdqk7WmFXhhjrtPwy6yH7lY0u3Yr.jpg'),
(215, 104, '2021/20211023/J79JEJKM57sFZrAIxRgVjSs7flDYPDPbi4LDGD58.jpg'),
(216, 104, '2021/20211023/GCD8Gylc935bQ5Pg8l58uTDpgtr0s6rJaBbEMtUQ.jpg'),
(217, 105, '2021/20211023/MwfUxYPtKpCBCOOscO5ZeXpDYUQgrAUIcyLuVsiT.jpg'),
(218, 105, '2021/20211023/59nvTiCHLOFAPwT4gXxkQ6eAv58JegtPungVJeSQ.jpg'),
(219, 106, '2021/20211023/vTpyE1EBLFsdx3NwzaGULk20GoaJRaYosbYZkqgc.jpg'),
(220, 106, '2021/20211023/BasbDd3R56uMlMp0XpQLWEH1vFT5GQHdVSTo5pNa.jpg'),
(221, 107, '2021/20211023/zHJXAAQxOcyLHoPj18N1rV2oV6wfq5zGPCrvvPLc.jpg'),
(222, 107, '2021/20211023/NXeErK4NZsW5IYtxmGgf8CvyR7xMRhnuHLYbwuFR.jpg'),
(223, 108, '2021/20211023/Td97oHkBdimWmYnQNAp25I8X3dWupGqnDGzDZHJ5.jpg'),
(224, 108, '2021/20211023/7nZUKd9nrbp5TuR4PosR467TH5DKiZ0ROYAjsqMn.jpg'),
(225, 109, '2021/20211023/4GeSCxWadIzjNJZRLBn1Mc2nijjd1uAH1RWBVSjY.jpg'),
(226, 109, '2021/20211023/oN4ZxKqOBeCMNE1gG1ZqNawDUR41FSdV4w7mcrwO.jpg'),
(227, 110, '2021/20211023/dTZdORfWbo6bb0bJuKAXtUNLSFDqVTVOyab07aYd.jpg'),
(228, 110, '2021/20211023/NuCrhm8BKHJMsyHLQ4sgyUWKEMV2MjWZUEHXHsEO.jpg'),
(229, 111, '2021/20211023/lMGK7hg7TQY1LPiui5Tlj0TOHlsCPi1Ey5OzHO6K.jpg'),
(230, 111, '2021/20211023/w5NmBWzReLeSfk7NT4qwYDLEmVy2hcDWnnEsGXQx.jpg'),
(231, 112, '2021/20211023/defnOS3fPrbGlU4UjhASKPDTj7p69J7KufRLr0iu.jpg'),
(232, 112, '2021/20211023/C1mWWu7kYEljvxyi0XRqAmx5YyUYbHUHGVPYUuh8.jpg'),
(233, 113, '2021/20211023/Qs7PnJ5no2Sh7vyXEvzUN4hKs78mQ9vaTYfo8UlL.jpg'),
(234, 113, '2021/20211023/6S3ZVd1pOs2dcjwAtM5fzyISTu0xaem32oMTQ6pF.jpg'),
(235, 114, '2021/20211023/oQt8tLA8NCXap8NbX3yYT5TGIneKzUjZqEUiXiHa.jpg'),
(236, 114, '2021/20211023/XPJqetDCZQOFtVfryqDKixqPHCDojPNAucHtaFJb.jpg'),
(237, 115, '2021/20211023/jNoXns314N4kercNZ45RL5riNGlU3UvFO1bZGsZG.jpg'),
(238, 115, '2021/20211023/BzIpKl8lVExZd2zzOAYC5U0TiZb9BUyfOPEFpr14.jpg'),
(239, 116, '2021/20211023/I7EuAPAp8NtDqJHaIuJoSrPsDXvm76kEEEfJS1iT.jpg'),
(240, 116, '2021/20211023/uUm0IgkhuO7xDM7fN4NsoTBDlpUwyJga43uhfbvF.jpg'),
(241, 117, '2021/20211023/DookLdWuOIVjfROhQ8PIuAeN2kFLMI78kvMNIdjr.jpg'),
(242, 117, '2021/20211023/ihwTKJBiy5OOyBz7Ak7gngh5tooeIhSmocHyupKj.jpg'),
(243, 118, '2021/20211023/333dIqCbR7Jl1e8zcLpaasVOAG4QM2oI4rwzHGzj.jpg'),
(244, 118, '2021/20211023/8rWZPykcrqzVZ4R9dQh66ySNd1TGcGQeUFKMkTWd.jpg'),
(245, 119, '2021/20211023/WORxyc5clCmzZB0aAmaSjAT0O6iPWUO7gBITcN2T.jpg'),
(246, 119, '2021/20211023/M2jbTb4Tsh9nBFvXbsFLJdsMVO0r6jN58pso0Xmh.jpg'),
(247, 120, '2021/20211023/PLl1sR9EJDisNy4gjUv8MM21Qjuo46ooqr8MUini.jpg'),
(248, 120, '2021/20211023/Nve8amPpR04hyXIujkTlDt4sbT0UkScCntdsBbNk.jpg'),
(249, 121, '2021/20211023/MGLyjqmYN8d2pohTv5ci91IqiCb6bQWYJNEFMLFg.jpg'),
(250, 121, '2021/20211023/eSJJI7SCaoQQ4LmHvlV9mJW5OE0Z4V9PNE92KVTi.jpg'),
(251, 122, '2021/20211023/3CvcaBA2Shw5dZ109sYqq2hbl1FGiQc4pfU7FmMF.jpg'),
(252, 122, '2021/20211023/Xc72Mt8nsKZsaSC1n0XWDmDe9uZVAaBBD640E3Pq.jpg'),
(253, 123, '2021/20211023/KQT5zMIdExJwu74WWiF0BIt2d9IcEvjjfgx4dESG.jpg'),
(254, 123, '2021/20211023/5yp1q5hBFX7o66DoIXNN3cyantQm2PgsmWAvqULx.jpg'),
(255, 124, '2021/20211023/Oa3SdshUb9TuSwMHJlUtPe1C3LQeIpjRY8F955Rp.jpg'),
(256, 124, '2021/20211023/v9fuEbtrW6D90VV8e50yQ5U9GKqGUoWkWmqZDwRL.jpg'),
(257, 125, '2021/20211023/BWCLHi2xNDXWbwlZEc5qcIJ1R9eOYhHLEOu5SSEQ.jpg'),
(258, 125, '2021/20211023/VGZ3R4YhEWzjElQatedwpXa1y8FE4ASM6artWDnT.jpg'),
(259, 126, '2021/20211023/KiOMD4WZkFqki3kyRCNdBCG7C7vTfT4zuCttP2pH.jpg'),
(260, 126, '2021/20211023/tDJp2jy37GJ67gFKHlIIZRSl96uqjN0s8pjsZakd.jpg'),
(261, 127, '2021/20211023/3DEvVFfWIi4XbnP2c4UWk1ypcILjUEpvPfTNtxE0.jpg'),
(262, 127, '2021/20211023/ar3REC5RhhNwdVlY8KuNCfCqNBLSDta8Rt96VgbD.jpg'),
(263, 128, '2021/20211023/My1i3GLGD2G9yCuVExGoTFqrILRDYfX30OLC33Ux.jpg'),
(264, 128, '2021/20211023/GwapP6GI8jypEKwiU8HLwtTIThUKFov4egmUsQU1.jpg'),
(265, 129, '2021/20211023/GVJdjOhaTioGZH7OO3WA01ZSq19tCMwmUXVojUXt.jpg'),
(266, 129, '2021/20211023/ItgVB9vDsKdb4NZ8SsccrW7SaULev9jhtDek0GGY.jpg'),
(267, 130, '2021/20211023/wVQFHHmzX1QugZY7b7CtlOY7DvQ9xdMW355q0oPH.jpg'),
(268, 130, '2021/20211023/zVMhZTfVPDQEVQKA8mx2BhgALOS6spURezyFZjAw.jpg'),
(269, 131, '2021/20211023/d0fXUngCnui6iyNAqzXttAT3TQ7iq9msToHCXJON.jpg'),
(270, 131, '2021/20211023/RsJcmu0HHQWc8Nnvi1lYATT4UriXmYLn1jMZCTrT.jpg'),
(271, 132, '2021/20211023/YXMy6qTCMsvS1PiL9VBRNFNuZjBIqUbTWqIiJbOd.jpg'),
(272, 132, '2021/20211023/u0E3tVPZVoce0WJ3PEApMIMB7FwCjc9iQqvY4C38.jpg'),
(273, 133, '2021/20211023/wnHOk9ODJWTPLaElMGlxUCoQdomw6w9HP9Eakc12.jpg'),
(274, 133, '2021/20211023/p5jj5v7rI2YvxCh4SNvdXPkuoXHYGfRNihTgMMwc.jpg'),
(275, 134, '2021/20211023/80h4TLDWKAxLNAqyMW2QXiOy6gXY9m3m8bHivnKg.jpg'),
(276, 134, '2021/20211023/1wavv92wc6X5Cn48fQnINzmlbI21jYhaXZTOTFoM.jpg'),
(277, 135, '2021/20211023/sEwTFwsj9qeJdfTA9LSySSj5fCIoBnJZJI6yxm4F.jpg'),
(278, 135, '2021/20211023/FQZBPzaRPWbbcHZSL7m03mK3nqJRU0mapxRifUVR.jpg'),
(279, 136, '2021/20211023/QeOWsVydJbbVuVavOEQyJcWkg3KpIDq80Ww8ELjV.jpg'),
(280, 136, '2021/20211023/Z2vbSogrFpN3Zwd465KJBSgRvA3CmR4yH5nHkqpM.jpg'),
(281, 137, '2021/20211023/nGMpNoBRxGA95Uu11oIakwQa7B2APOr3cCX0rEm6.jpg'),
(282, 137, '2021/20211023/mLqPngntEBfFi02qUP0eX8cniE6WVT45LH6DNPsB.jpg'),
(283, 138, '2021/20211023/tnY3tNXyVzbVyUJTt3fFNHCqa7w7CEapBYzg3fiy.jpg'),
(284, 138, '2021/20211023/XXlTaVed6V88z9lAAneztrhFYzHMB7CskCgIdHk5.jpg'),
(285, 139, '2021/20211023/z5ydwd5rPJzrWaUWbgMNtMueKuoUD0NY6y3gO6Mg.jpg'),
(286, 139, '2021/20211023/5JfWWNTmHsMj52U8h7DPLYHdhwPSi98OOeksEzKS.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `hd_id` bigint(20) UNSIGNED NOT NULL,
  `hd_ma` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hd_tongtien` double DEFAULT NULL,
  `hd_ngaylap` date DEFAULT NULL,
  `hd_trangthai` int(11) DEFAULT NULL,
  `ch_id` bigint(20) DEFAULT NULL,
  `hd_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hd_sdt` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_id` bigint(20) NOT NULL,
  `hd_ten` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`hd_id`, `hd_ma`, `hd_tongtien`, `hd_ngaylap`, `hd_trangthai`, `ch_id`, `hd_diachi`, `hd_sdt`, `kh_id`, `hd_ten`) VALUES
(5, '39410', 4600000, '2021-10-15', 1, 1, 'Cần Thơ', '2323232323', 1, 'Lê Ngọc Đức'),
(6, '63175', 16000000, '2021-10-15', 1, 1, 'Cần Thơ', '2323232323', 1, 'Lê Ngọc Đức'),
(8, '27457', 1050000, '2021-10-15', 1, 1, 'Cần Thơ', '23131232131', 1, 'Lê Ngọc Đức'),
(9, '21894', 1050000, '2021-10-15', 1, 1, 'Cần Thơ', '21321', 1, 'Lê Ngọc Đức'),
(10, '51369', 3045000, '2021-10-15', 1, 2, 'Cần Thơ', '12312', 1, 'Lê Ngọc Đức'),
(11, '60389', 4000000, '2021-10-15', 1, 1, 'Cần Thơ', '23232', 1, 'Lê Ngọc Đức'),
(12, '59410', 2030000, '2021-10-15', 1, 1, 'Cần Thơ', '4234234', 1, 'Lê Ngọc Đức'),
(13, '94254', 20000, '2021-10-17', 1, 4, 'Not Found', '1234', 6, 'Customer'),
(14, '10880', 25000, '2021-10-17', 1, 5, 'Not Found', '1234', 6, 'Customer'),
(15, '82616', 400000, '2021-10-17', 1, 5, 'Not Found', '23323', 6, 'Customer'),
(16, '30510', 80000, '2021-10-17', 1, 5, 'Not Found', '11111', 6, 'Customer'),
(17, '87193', 500000, '2021-10-17', 1, 4, 'Not Found', '123412321', 6, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_id` bigint(20) UNSIGNED NOT NULL,
  `kh_hoten` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`kh_id`, `kh_hoten`, `kh_diachi`, `username`, `password`, `kh_email`) VALUES
(1, 'Lê Ngọc Đức', 'Cần Thơ', 'lnd2409', '$2y$10$IfLB2NvD8l/AdIbO39Zj6u0tjWgS9rbHDgOg47hJAwPBw1p2Y9cFO', 'lnd240998@gmail.com'),
(2, 'Trần Thanh Phụng', 'Cà Mau', 'phung', '$2y$10$XlubjWFEhSIosnZ1anuLMu.vLvMkafWTVf9pIVAAdyZPSGhEEpO8m', 'tranthanhphungcttv@gmail.com'),
(4, 'Nguyen Teo', 'Tra Vinh', 'teoadmin', '$2y$10$vuL.xJGuQP8JZFiXTWuDd.IRj/LdL/OI/QHBdD0A4XsFC4a1vm.im', 'test@gmail.com'),
(5, 'Admin', 'Not Found', 'admin', '$2y$10$Q4SDhZm2mLjV2PMmZeAZLuGPdatM.jOefVsjUfmVEjnClccZgnImm', 'admin@gmail.com'),
(6, 'Customer', 'Not Found', 'customer', '$2y$10$.DL62qhUWU626hZGxptTwuWQB6jnuZp8ugwKp0/ujGc2KvCDsivz.', 'customer@gmail.com'),
(7, 'Admin2', 'not found', 'admin2', '$2y$10$Vw35CT2tnu82XE07oVRoeOqJgLqwyjlTifpl1fEp3TutXr0.uaQBO', 'admin2@gmail.com'),
(8, 'AdminStore', 'Nguyễn Khánh Toàn, Cầu Giấy, Hà Nội', 'admin1', '$2y$10$lPHMwmt1ZtlfcIZ88ma5W.ggLK.xvJCy84HXPpeiuzCvGrnFGzfqK', 'adminstore@gmail.com'),
(9, 'admin12', 'Khu Vũ Xá, Phường Ái Quốc, TP. Hải Dương', 'admin12', '$2y$10$B0C0Y/5xeeVcDkhaGXydxupoAiqIi.PrgWndI.YJxUE0y5d6p1EOy', 'admin12@gmail.com'),
(10, 'admin123', 'Việt Hòa, TP. Hải Dương, Hải Dương', 'admin123', '$2y$10$34tDG7ejt6L6htiVB.15sOL3FWCb20ablI.wJdOWWBzheDlY1k11q', 'admin123@gmail.com');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_16_165411_create_binhluan_table', 1),
(6, '2021_09_16_165411_create_chitiethoadon_table', 1),
(7, '2021_09_16_165411_create_cuahang_table', 1),
(8, '2021_09_16_165411_create_danhmuc_table', 1),
(9, '2021_09_16_165411_create_hinhanh_table', 1),
(10, '2021_09_16_165411_create_hoadon_table', 1),
(11, '2021_09_16_165411_create_khachhang_table', 1),
(12, '2021_09_16_165411_create_sanpham_table', 1);

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
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `dm_id` int(11) NOT NULL,
  `sp_ten` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_soluong` int(11) DEFAULT NULL,
  `sp_mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_giaban` double DEFAULT NULL,
  `ch_id` bigint(20) DEFAULT NULL,
  `sp_trangthai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `dm_id`, `sp_ten`, `sp_soluong`, `sp_mota`, `sp_giaban`, `ch_id`, `sp_trangthai`) VALUES
(1, 1, 'Giầy MaCa', 2, 'Thương hiệu: OEM | Xem thêm sản phẩm Giày lười, mọi nữ big size của thương hiệu OEM\r\nNhà phân phối: haduong store | Xem thêm sản phẩm Giày lười, mọi nữ big size của nhà phân phối haduong store', 1500000, 1, 1),
(2, 1, 'Giầy MaCa 2', 100, 'Đế giày chính là điểm tạo nên khác biệt của giày Moccasin, ban đầu đế được làm từ da động vật. Sau này, tùy theo thời tiết mà có hai loại đế là đế mềm và đế cứng. Đế mềm được làm từ một lớp da, đế cứng thường được làm từ da bò núi cứng với nhiều lớp da chồng lên nhau.\r\n\r\nNgày nay từ cảm hứng đó người ta tạo ra 2 loại đế cao su cho dòng giày Moca. Trong đó, loại đế mềm có những hạt u nhỏ phía dưới, còn đế cứng sẽ có các tảng u to hơn ghép lại.', 1500000, 1, 1),
(3, 2, 'Giày Moccasin  MM23GT', 2, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 2500000, 2, 1),
(4, 2, 'Giày Moccasin  DACV32', 2, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 3450000, 2, 1),
(5, 1, 'Gày Nike GH45DDS', 2, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 2300000, 1, 1),
(6, 1, 'Giày CD 23GGS', 34, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 3232444, 1, 1),
(7, 2, 'Giày Mini MM23GT', 233, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 4000000, 1, 1),
(8, 2, 'Giầy MaCa 33 HH', 34, 'giày Moca được sử dụng như loại giày dùng ngoài trời, đặc biệt tại châu Âu, những thợ săn, thương nhân, người bản địa đều yêu thích. Thiết kế cũng đơn giản với các mặt được làm bởi một dải da liên tục khâu với đế mềm dẻo, dễ dùng, ôm quanh chân thoải mái.', 2300000, 1, 1),
(10, 5, 'Tay Cầm chơi Game Xbox', 15, 'Tay Cầm chơi Game Xbox', 200000, 4, 1),
(11, 6, 'Giá để đồ', 2, 'Giá để đồ', 100000, 4, 1),
(12, 7, 'Lót chuột', 9, 'Lót chuột', 20000, 5, 1),
(13, 8, 'Túi đựng đồ', 10, 'Túi đựng đồ', 50000, 5, 1),
(15, 9, 'Bánh tráng muối nhuyễn Xì ke Tỏi', 99, 'CHUYÊN SỈ LẺ BÁNH TRÁNG XÌ KE SIÊU CAY KHÔNG DẦU MỠ TẬN LÒ KHÔNG QUA TRUNG GIAN !\r\nLƯU Ý : BÁNH XÌ KE BÊN SHOP LÀ BÁNH PHƠI SƯƠNG ( MỀM DẺO KHÔNG DẦU ) !\r\nBỊCH 50gr - 70gr\r\nNHỮNG HẠT NHỎ MÀU TRẮNG LI TI LÀ NHỮNG HẠT MUỐI TÔM KHÔNG PHẢI \"\" MỐC \"\" Ạ !\r\nThành phần :\r\n- Bánh tráng phơi sương\r\n- Muối tôm Tây Ninh\r\n- Tỏi phi vàng\r\n- Gia vị\r\nHSD : 1 tháng\r\nBẢO QUẢN NƠI KHÔ RÁO THOÁNG MÁNG TRÁNH ÁNH NẮNG TRỰC TIẾP\r\nXUẤT XỨ : TÂY NINH - VIỆT NAM', 7200, 6, 0),
(16, 9, 'Bột bánh bao nguyên cám SFOOD', 99, 'Sfood ra mắt sản phẩm BỘT BÁNH BAO NGUYÊN CÁM healthy không lo béo, không lo tăng cân. \r\nCách làm tại nhà vô cùng đơn giản vì bột đã được trộn sẵn về chỉ cho sữa vào nhào bột là xong như hướng dẫn. (Cách làm tương tự bột bánh bao thường của Sfood) \r\n\r\nCách sử dụng Bột bánh bao nguyên cám: \r\nTrọng lượng : 600g. Trộn 1 túi nhỏ (men nở Pháp) vào túi bột to, đổ 250ml sữa tươi không đường đã đun ấm 30-40 độ, 4 thìa dầu ăn, 2 lòng trắng trứng,1 thìa cafe nước cốt chanh cho trộn vào chỗ bột trong túi, dùng tay bóp nhào bột cho tới khi bột mềm( 20 phút), ủ kín không để không khí lọt vào 1-2 tiếng. Nặn bánh và để bánh nghỉ 30 phút trước khi hấp.\r\nHấp 20-30 phút cho bánh chín.', 50000, 6, 0),
(17, 9, 'Sữa lúa mạch Nestlé Milo thùng 48 hộp x 180ml', 99, 'Sữa lúa mạch Nestlé Milo với chiết xuất Protomalt từ mầm lúa mạch kết hợp với vitamin cùng khoáng chất thiết yếu giúp bé yêu phát triển thể chất toàn diện và tiếp năng lượng suốt ngày dài hoạt động. Thức uống có hương vị thơm ngon, bổ dưỡng là sự lựa chọn không thể thiếu cho thực đơn \"\"năng lượng\"\" mỗi ngày dành cho nhà vô địch của mẹ.', 335000, 6, 0),
(18, 9, 'Giấm Táo Hữu Cơ Bragg - Hàng Mỹ', 99, '- Sản phẩm hữu cơ, loại bỏ mối lo táo biến đổi gen hay ô nhiễm thuốc trừ sâu!\r\n- Sản phẩm không lọc, không hấp khử trùng giúp bảo toàn các enzyme, axit amin cũng như các lợi khuẩn.\r\n- Con giấm (Mother) trong giấm táo hữu cơ Bragg là đám màng nhỏ màu nâu lắng dưới đáy chai, được xem là thứ quyết định nên những lợi ích tuyệt vời nhất của - Bragg Organic Raw - Unfiltered Apple Cider Vinegar. \r\n- Dùng chế biến thực phẩm: trộn salad, rau củ, chế biến món ăn với hàng trăm công thức khác nhau và hiện vẫn không ngừng được khám phá thêm mỗi ngày bởi người tiêu dùng khắp nơi trên thế giới.', 279000, 6, 0),
(19, 10, 'TÚI HỘP NÂU CÓ KHOÁ', 99, 'Tên sản phẩm: Mini Satchel Bag.\r\nSize: 21x19x10.\r\nChất liệu: da simili dày 100%.\r\nChỉ có màu nâu.\r\nBao gồm: thân túi + dây da có thể điều chỉnh được.\r\nSẢN PHẨM ĐƯỢC MAY THỦ CÔNG!', 150000, 6, 0),
(20, 10, 'Cặp Đựng Laptop 15.6 inch Đẹp Và Chống Sốc', 99, 'THÔNG TIN sẢN PHẨM: Balo Laptop, Cặp Đựng Laptop 15.6 inch Đẹp Và Chống Sốc Dùng Đi Làm Đi Chơi Đi Du Lịch\r\n- Kích thước: Cao 41cm - Rộng 12cm - Ngang 29cm\r\n- Màu sắc : Đen, Đỏ, Ghi, Xanh\r\n- Chất liệu vải : Oxford bền bỉ. chất lượng cao, khó phai màu. \r\n- Dễ dàng bảo quản và sử dụng được lâu dài.\r\n- Thiết kế hiện đại và thời trang, Kiểu dáng phong cách, Dễ dàng phối đồ\r\n- Đường may tỉ mỉ chắc chắn\r\n- Thiết kế chia làm nhiều ngăn tiện lợi. Các ngăn lớn để đựng các vật dụng cần thiết và nhiều ngăn nhỏ để đựng giấy tờ, tiền, ví… tiện dùng khi đi học, làm việc.', 114000, 6, 0),
(21, 10, 'Ví Nam Cao Cấp Thời Trang Da Bò Đựng Tiền', 99, 'ĐẶC ĐIỂM NỔI BẬT SẢN PHẨM\r\n- Chất liệu của ví: Da bò thật 100% \r\n- Kiểu dáng: Ví da ngang rộng rãi\r\n- Kích thước (gấp ví): Ngang 12,5 x Cao 9,5cm \r\n- Màu sắc bóp da: Đen, Nâu sang trọng.\r\n- Sức chứa: Bóp đựng tiền gồm 2 ngăn chính và 1 ngăn khóa kéo.\r\nVí có nhiều ngăn đựng thẻ, giấy cmnd, bằng lái và 1 ngăn trong suốt đựng ảnh. Ví da nam cao cấp, dễ dàng bỏ vào trong túi quần mà không lo dày cộm.', 131000, 6, 0),
(22, 10, 'Ví Da Nam Chất Đẹp Size Mini Nhiều Ngăn Để Thẻ', 99, 'Ví Da Nam Chất Đẹp Thiết Kế Nhỏ Gọn Trẻ Trung Nhiều Ngăn Tiện Dụng.\r\nVí Da Nam Chất Đẹp Da Trơn Dễ Dàng Vệ Sinh Bảo Quản.\r\nVí Da Nam Chất Đẹp Có 2 Màu: Nâu và Đen.\r\nVí Da Nam Chất Đẹp Size: 10x8x1cm\r\nVí Da Nam Chất Đẹp Giá Cả Hợp Lý Kèm Quà Tặng Của Shop.\r\nVí Da Nam Chất Đẹp Thiết Kế Từ Những Người Thợ Làm Thủ Công\r\nVí Da Nam Chất Đẹp Không Lo Bong Nổ Da.', 25000, 6, 0),
(23, 10, 'Ví Nam Da PU Nhiều Ngăn Siêu Tiện Lợi', 99, 'THÔNG SỐ SẢN PHẨM\r\n• Chất liệu : da Pu\r\n• Kích thước:  Dọc 12cm x 9,5cm \r\n• Gồm : 3 Ngăn Tiền + 1 Ngăn Khóa + 1 Ngăn Dời\r\n• Nhiều Ngăn Thẻ ATM và 1 ngăn ảnh.\r\n• Ví da thật, càng sử dụng lâu ví càng bóng đẹp\r\n• Shop cam kết sản phẩm và hình ảnh là giống nhau.\r\n• Khách nhận hàng xong có thể đổi trả ví lại shop nếu không vừa ý.', 65000, 6, 0),
(24, 9, 'Phở gạo lứt/ Bún gạo lứt đỏ/ Bún ngũ sắc', 99, 'Thành phần: Làm từ gạo lứt đỏ 100%\r\nXuất xứ: Hà Nội\r\nHạn dùng: 1 năm từ ngày sản xuất\r\nThông tin sản phẩm: Không chất tẩy trắng, không chất bảo quản\r\nThơm mùi gạo tự nhiên, không bị chua, nát giống sản phẩm thông thường\r\nDùng được cho cả trẻ em, người lớn\r\nBổ sung đầy đủ các Vitamin cần thiết cho cơ thể.\r\nPhở, bún gạo Lứt được sản xuất từ Gạo Lứt Huyết Rồng nguyên chất 100%, không có phụ gia, không chất bảo quản.', 42500, 6, 0),
(25, 11, 'TẤM LƯỚI QUÂY CHUỒNG CHÓ, MÈO, THỎ, LÀM LỒNG CHUỘT', 99, 'Khi muốn lắp theo thiết kế riêng cho Boss thì cũng nên tham khảo các mẫu ghép chuồng sẵn có trên ảnh sản phẩm để hiểu các cách có thể phối hợp các tấm ghép với nhau. Từ đó có thể thỏa sức sáng tạo chuồng theo mong muốn.\r\nCác miếng ghép bằng lưới sắt, tấm nhựa, tấm cửa có kích thước chuẩn là 45x35 cm và 35x35cm\r\nCó nhiều cách để phối hợp các tấm ghép với nhau, tấm ghép 45x35 để nằm sẽ lắp được rộng hơn', 31000, 6, 0),
(26, 11, 'VÒNG CỔ MÈO, CHÓ CÓ CHUÔNG CHẤT LIỆU DÙ ĐAN', 99, 'VÒNG CỔ MÈO, CHÓ CÓ CHUÔNG CHẤT LIỆU DÙ ĐAN', 5399, 6, 0),
(27, 11, 'Đồ chơi cho mèo kiểu gậy gắn lông vũ sáng tạo', 99, 'Đồ chơi mèo cổ điển, mèo rất thích đồ chơi này, vì mèo thích hương vị của lông tự nhiên. Đồ chơi này có thể huấn luyện bản năng tự nhiên của mèo, giữ cho mèo của bạn hành động nhanh nhẹn. Tiếng chuông nhỏ sẽ vang lên, một tiếng lắc vang lên, thu hút sự chú ý của mèo, mèo con yêu thích. Cải thiện tình cảm giữa bạn và thú cưng của bạn.', 7000, 6, 0),
(28, 11, 'Nệm chữ nhật cho thú cưng chống xê dịch', 99, 'Đệm ấm cho chó mèo lót lông có thể dùng với thảm mùa hè. Nệm chữ nhật cho thú cưng chống xê dịch\r\nĐệm ngủ cho mèo êm ái cho bé yêu của bạn những giấc ngủ say nồng.', 145000, 6, 0),
(29, 11, 'Cát vệ sinh cho mèo cát Like 15L', 99, 'Huấn luyện mèo đi vệ sinh vào đúng khay vệ sinh là 1 chuyện. Nhưng để việc dọn dẹp vệ sinh cho mèo dễ dàng hơn thì phải cần có cát vệ sinh. Các sản phẩm cát vệ sinh hiện nay đã có thể ngăn mùi hiệu quả, thậm chí còn đem lại hương thơm dễ chịu. 1 trong số đó chính là sản phẩm Cát vệ sinh cho mèo', 140000, 6, 0),
(30, 12, 'Kính cường lực iphone 21D full màn 12 Promax', 99, 'Mô tả sản phẩm Kính Cường lực Iphone\r\n- Thiết kế: Bo khít máy\r\n- Chất liệu: Kính', 50000, 6, 0),
(31, 12, 'Dây đeo Thẻ Học Sinh Sinh Viên, Đeo Điện Thoại', 99, 'Dây đeo Thẻ Học Sinh Sinh Viên, Đeo Điện Thoại Kèm Móc Treo Xinh Xắn\r\nKiểu dáng dễ thương', 14500, 6, 0),
(32, 12, 'Giá đỡ điện thoại để bàn hình chữ V', 99, 'Mô tả sản phẩm:\r\n- Kích thước: \r\n- Chất liệu: Nhựa dẻo\r\n- Xuất xứ: Việt Nam', 2000, 6, 0),
(33, 12, 'Bộ dây cáp và củ sạc nhanh 18W type C to lightning', 99, 'Sạc nhanh lP 18W là sạc nhanh lP ra đời từ năm 2019. Sạc iP 18W siêu nhanh bao gồm: \r\n+ 01 Củ Sạc Nhanh lP Chân Dẹt 18W\r\n+ 01 Cáp Type C to Lightning chuyên dụng dài 1,2m\r\n+ Sạc nhanh gấp 3 sạc thường', 137000, 6, 0),
(34, 12, 'Kẹp điện thoại gắn giá đỡ với lỗ vít cho iPhone', 99, 'Chiều rộng của kẹp điện thoại có thể được điều chỉnh để đáp ứng các nhu cầu khác nhau của bạn.\r\nTương thích cho điện thoại thông minh có chiều rộng từ khoảng 5,5cm đến 8,5cm.\r\nVới lớp xốp mềm trên giá đỡ điện thoại để bảo vệ điện thoại thân yêu của bạn một cách hiệu quả.', 30900, 6, 0),
(35, 13, 'Xe đồ chơi mô hình công trình xây dựng cho bé', 99, 'ƯU ĐIỂM :\r\n- Có đầy đủ các loại xe công trình xây dựng chất liệu nhựa an toàn cho bé\r\n- Sản phẩm thích hợp dùng làm quà tặng đồ chơi cho trẻ em hoặc để trưng bày\r\n- Tỷ lệ kích thước : 1:55 so với xe ngoài đời thực\r\n- Tăng trí tưởng tượng cho bé với các khớp chuyển động của xe\r\n- Tất cả hình ảnh là hình thực của sản phẩm\r\n- Chất liệu nhựa ABS - loại nhựa nguyên sinh, ko chứa các chất phụ gia công nghiệp và hóa chất độc hại có chứng chỉ hợp quy của bộ Khoa học và công nghệ.\r\n- Sản phẩm chống chịu va đập tốt, cứng và rắn nhưng ko giòn, các chi tiết được bo cong mềm mại không sắc nhọn\r\ngiúp tạo thuận lợi tối đa cho việc cầm nắm của trẻ.', 94000, 6, 0),
(36, 13, 'Đồ Chơi Ô Tô Trẻ Em Chạy Cót Hình Thú Dễ Thương', 99, 'THÔNG TIN:\r\n- Chất liệu: Nhựa\r\n- Kích thước: 3*3,2*3,7cm\r\n- Trọng lượng: 13g\r\n- Hình mèo, hình gấu dễ thương', 2500, 6, 0),
(37, 13, 'Gấu Bông Husky Nhồi Bông Mặt Ngáo Siêu Đẹp', 99, 'THÔNG TIN SẢN PHẨM:\r\nSản phẩm \"\"Chó Husky Nhồi Bông Mặt Ngáo\"\"  Được may bằng chất liệu vải nhung co dãn 4 chiều êm ái tạo cảm giác dễ chịu cho người dùng. ĐẶC BIỆT KHÔNG bị rụng lông, KHÔNG bị biến dạng trong khi hút chân không để vận chuyển cũng như trong quá trình sử dụng - CÓ THỂ GIẶT SẠCH trong quá trình sử dụng. Màu sắc ĐỘC LẠ, DỄ THƯƠNG, lông gấu MỀM MỊN, DÀY DẶN, đường may CHẮC CHẮN, TỈ MỈ đến từng chi tiết.', 389000, 6, 0),
(38, 13, 'Pop It Đồ Chơi Bóp Bong Bóng Giúp Giảm Căng Thẳng', 99, 'Rèn luyện khả năng: Cảm xúc, phát triển trí tuệ, thực hành trí não, phối hợp tay mắt, đồ chơi tương tác, giao tiếp giữa cha mẹ và con cái\r\nChất liệu đồ chơi: silicon\r\nPhân loại sản phẩm: Hình vuông, hình tròn, hình bát bát giác, hình trái tim màu gấu, hình ma sói chân thẳng, hình ma sói đang chạy\r\nDành cho: Không giới hạn, bé gái, bé trai\r\nKích thước: 30 * 30cm', 69000, 6, 0),
(39, 13, 'Bàn Tiệc Gia Đình 84 Chi Tiết', 99, 'Bố mẹ nên kết hợp những trò chơi như so sánh nặng nhẹ, nhiều ít to nhỏ và kết hợp dạy bé làm theo yêu cầu “đưa cho mẹ” hay nói “cảm ơn” khi nhận được món đồ chơi từ tay mẹ. Một trong những món đồ chơi được các bà mẹ ưu tiên nhất cho trẻ chơi nhất trong giai đoạn này là “thẻ hình” (Flashcard). Bằng những tấm thẻ có in hình, bé có thể nhận biết được các số, chữ, hoa quả, động vật...', 199000, 6, 0),
(40, 14, 'Đồng hồ cặp thời trang nam nữ geneva', 99, 'Sản Phẩm : Geneva\r\nTình trạng : mới\r\nĐồng hồ : nam nữ\r\nKích thước mặt: nam 38mm, nữ 30mm\r\nKích thước dây : nam 2cm , nữ 1 cm\r\nChất liệu khung đồng hồ: Thép không gỉ.\r\nChất liệu kính: Chống xước tốt.', 255000, 6, 0),
(41, 14, 'Đồng hồ đôi nam nữ đeo tay cặp chính hãng Halei', 99, 'Thông tin sản phẩm đồng hồ đôi nam nữ đeo tay chính hãng Halei dây thép viền vàng cao cấp giá rẻ thời trang\r\nKiểu máy: Quartz Nhật\r\nMặt Số: Nam 40mm Nữ 30mm - Dày: 8mm\r\nKính thước dây: Dài: 19cm - Rộng(Ngang): 14mm\r\nChấy liệu dây: Thép không gỉ (bền màu luôn sáng đẹp)', 650000, 6, 0),
(42, 14, 'ĐỒNG HỒ NAM CHÍNH HÃNG HANNAH MARTIN', 99, 'THÔNG TIN VỀ SẢN PHẨM: Là món phụ kiện không thể thiếu của cả nam lẫn nữ, chiếc đồng hồ giúp bạn khẳng định cá tính thời trang của chính mình. Đồng hồ Hannah Martin HM301 sở hữu thiết kế đơn giản với phần kim và số Khách kéo ảnh sang trái để xem video thực tế shop tự quay nhé.', 250000, 6, 0),
(43, 14, 'Đồng Hồ Nam Cao Cấp GENEVA', 99, 'Xuất xứ: JAPAN\r\nChất liệu vỏ: Thép không gỉ \r\nVới thiết kế tinh tế, ấn tượng, góp phần tạo dựng phong cách sang trọng.\r\nDây đồng hồ được làm từ chất liệu cao cấp, bền, đẹp và thời trang. \r\nMặt đồng hồ bằng kính cứng trong suốt, đẹp mắt. \r\nLà quà tặng ý nghĩa dành tặng cho người yêu, bạn bè… \r\nKích thước mặt 40mm\r\nKích thước dây 18mm', 215000, 6, 0),
(44, 14, 'Miếng dán bảo vệ màn hình đồng hồ thông minh', 99, 'Điểm nổi bật:\r\n  1. Dành cho Đồng hồ Apple iWatch 38MM 42MM 40MM 44MM\r\n  2. Chất liệu sợi carbon cao cấp, viền mềm\r\n  3. Che phủ toàn diện - Kỹ thuật uốn nhiệt 3D tạo ra các cạnh cong để bao phủ toàn bộ từ mép này sang mép kia\r\n  4. Độ nhạy cao - Siêu mỏng 0.2mm và độ rõ nét 99.99% HD', 49000, 6, 0),
(45, 15, 'Giày Da Đốc Tờ Da Bò Bảo Hành 12 Tháng', 99, 'THIẾT KẾ Giày Giày Da Đốc Tờ.Da Bò Bảo Hành 12 Tháng : Đế cao su tự nhiên giúp nâng chiều cao lên tới 4 cm.\r\nBên  ngoài Giày Da Đốc Tờ.Da Bò Bảo Hành 12 Tháng  là hệ thống da bò bao bọc giúp cho đôi chân tạo nên sự sang trọng và quý phái \r\nBên trong Giày Da Đốc Tờ.Da Bò Bảo Hành 12 Tháng  là hệ thống da hút ẩm toàn bộ đôi giày tạo nên sự êm ái và thoát khí nhanh tạo nên đôi chân luôn khô thoáng mùi hôi chân là vấn đề trở ngại lớn của quý ông sẽ không còn.\r\nTiếp giáp giữa đế giày và da là hệ thống chỉ sần được khâu chắc chắn và tinh xảo, giúp đôi giày trở nên bền bỉ theo thời gian.', 203000, 6, 0),
(46, 15, 'Hộp Đựng Giày Nắp Nhựa Cứng Trong Suốt', 99, 'Tên Sản Phẩm : Hộp Đựng Giày \r\nKích Thước : 34 x 24 x 13\r\nChất liệu : Nhựa cao cấp (Không thể hỏng trong điều kiện thường)\r\nTrọng Lượng : 200 gram', 20000, 6, 0),
(47, 15, 'Giày Bảo Hộ Lao Động Nam Thể Thao', 99, 'Giày Bảo Hộ Lao Động Nam Thể Thao - Đế Thép Mũi Thép - Siêu Bền Siêu Nhẹ - Tặng Kèm Tất (Có Video Thực Tế)\r\nShop Yến Army chuyên phân phối các mẫu giày bảo hộ lao động chính hãng, đạt tiêu chuẩn bảo hộ lao động Châu Âu (EEC). Mẫu giày BHLĐ này có đế và mũi bọc lót thép chống đinh + chống cắt rất an toàn cho người sử dụng... Phần thân giày được làm bằng vải dù thoáng tạo cảm giác thoải mái, thoáng khí cho bàn chân, các mắt gai ma sát thiết kế linh hoạt giúp giày có ma sát tốt hơn, chống trơn trượt trên mọi bề mặt tiếp xúc...', 280000, 6, 0),
(48, 15, 'Lót Khử Mùi Hương Quế Lót Giày Nam Chống Hôi Chân', 99, 'Lót quế khử mùi là phụ kiện vô cùng quan trọng cho anh em sử dụng giày da. Không chỉ giúp bạn ngăn chặn mùi hôi chân hiệu quả lót hương quế còn mang lại cho bạn trải nghiệm êm ái hơn khi di chuyển. Sản phẩm được bán rộng rãi tại shopee và mọi cơ sở của Puno\r\nNgoài ra shop còn có rất nhiều sản phẩm giày khác như giày thờ trang, giày sneaker, giày da công sở buộc dây,  giày cao cổ, giày tăng chiều cao...', 3000, 6, 0),
(49, 15, 'Dép quai ngang nam nữ In VIỀN sắc nét', 99, 'Dép làm từ chất liệu cao su eva cao cấp , chắc chắn, dẻo dai. nhẹ \r\nĐược thiết kế theo công nghệ mới, độ chống trơn trượt cao, mang đến cho người sử dụng cảm giác thoải mái và tự tin khi di chuyển.\r\nPhong cách đơn giản basic nhưng vẫn hiện đại, bắt kịp xu hướng thời trang mới.', 89000, 6, 0),
(50, 16, 'Giày cao gót bít mũi in chữ to gót vuông', 99, 'Thời trang nữ giá rẻ, thời trang QUẢNG CHÂU xuất khẩu chất lượng tốt \r\nĐơn giản chỉ với 1 đôi giày có thể làm nổi bật lên cá tính phong cách cách riêng của bạn \r\nCách mix màu sành điệu \r\nDễ phối đồ dù là trang phục bụi bặm hay váy xuông cá tính', 150000, 6, 0),
(51, 16, 'Giày bốt ullzang siêu hót', 99, 'Mẫu mới nhất hiện nay \r\nMang êm nhẹ chân \r\nPhù hợp với mọi lứa tuổi \r\nChất đẹp giã man  luôn nhé mn\r\nYên tâm khi mua đồ tại shop nhé các bạn', 103000, 6, 0),
(52, 16, 'Giày lolita đế cao nhẹ da mềm êm chân luhana', 99, 'Giày phom chuẩn chắc chắn dáng đẹp, nhẹ êm chân. không hề cục mịch nặng nề nha các nàng. đi nhẹ cực luôn êm cực luôn. \r\nDa mềm mại, ôm chân. \r\nĐủ da bóng- Da lì nha nàng. size 35-40. PHOM CHUẨN.', 195000, 6, 0),
(53, 16, 'DÉP ĐI TRONG NHÀ LOVIIECORNER', 99, 'CHẤT LIỆU ĐẾ XỐP ĐI ÊM CHÂN CÙNG VỚI 11 HOẠ TIẾT CỰC KÌ BẮT MẮT.CHẤT LIỆU NHẸ ÊM CHÂN TÔNG MÀU KHÔNG KÉM DA.THÍCH HỢP CHO NHỮNG CHIỀU DẠO PHỐ CÙNG BẠN BÈ HOẶC DẠO BIỂN', 40000, 6, 0),
(54, 16, 'Túi Vải Đựng Giày Dép - Túi Bọc Túi Xách', 99, 'Bọc vừa 1 chiếc giày. Nếu bạn muốn bọc vừa 1 đôi giày , vui lòng ib cho shop để chọn loại to hơn\r\nDài: 39cm, Ngang: 20cm\r\nĐơn vị : 1 chiếc', 1000, 6, 0),
(55, 17, 'Nước Xả Vải Em Bé Comfort Cho Da Nhạy Cảm Túi 3.8L', 99, 'Giúp áo quần khô nhanh hơn\r\n  Mùi hương dịu nhẹ \r\n  Ngừa xù lông vải và ngăn áo quần tĩnh điện mùa đông\r\n  Phù hợp cho da bé yêu 0 -2 tuổi\r\n  Chăm sóc quần áo giữ nguyên sự mềm mại. \r\n  Được Bệnh viện da liễu Trung Ương và Hiệp hội da liệu Anh quốc chứng nhận an toàn cho da.', 389000, 7, 0),
(56, 17, 'Hộp Nhựa, Hũ Nhựa Pet Nắp Nhôm Đựng Thực Phẩm', 99, 'Hộp Nhựa, Hũ Nhựa Pet Nắp Nhôm Đựng Thực Phẩm, Đồ Khô, Ngũ Côc 200ml 250ml 500ml 800ml 1000ml 1200ml 1500ml\r\n- Phù hợp cho nhiều dòng thực phẩm như bánh mứt, hạt khô, trái cây sấy, thực phẩm khô...\r\n- Nhựa PET sản xuất tại Việt Nam an toàn vệ sinh thực phẩm\r\n- An toàn hợp vệ sinh chống côn trùng nấm mốc...', 11800, 7, 0),
(57, 17, 'Đèn xông tinh dầu gốm Bát Tràng', 99, '- Tên sản phẩm: Đèn xông tinh dầu bằng điện sứ thấu quang thương hiệu Bát Tràng\r\n\r\n- Xuất xứ: Việt Nam\r\n\r\n- Chất liệu: Gốm Sứ Bát Tràng\r\n\r\n--Màu sắc: Đa dạng\r\n\r\n- Kích thước 9x12cm\r\n\r\n- Thông tin bảo hành: 1 tháng', 59000, 7, 0),
(58, 17, 'Miếng cọ rửa chén bát xanh vàng tiện dụng', 99, '-Chất liệu: mút, sợi tổng hợp.\r\n-Một mặt được gắn miếng làm ráp giúp đánh rửa xoong nồi, bồn rửa bát\r\n-Một mặt mềm giúp tạo bọt và rửa bát đĩa thông thường\r\n-Đánh bật tất cả các vết bẩn cứng đầu bám lại trên vật dụng nhà bếp của bạn', 2000, 7, 0),
(59, 17, 'Giấy ăn gấu trúc khăn giấy tre thùng 30 gói 300 tờ', 99, 'Loại sản phẩm: Giấy ăn\r\n- Thương hiệu: YCOOL\r\n- Chất liệu: Bột tre\r\n- Màu sắc : Màu vàng ngà\r\n- Thành phần: 100% bột sợi tre nguyên chất\r\n- Màu sắc: màu ngà vàng tự nhiên của tre', 109000, 7, 0),
(60, 18, 'Combo Camera IP YooSee Tiếng Việt', 99, 'Đặc tính ưu Việt của Camera Yoosee Tiếng Việt \r\n+ Camera Sử dụng chip mới nên 100 %Tiếng Việt ( từ hướng dẫn trên camera lẫn phần mềm ) kèm sách hdsd tiếng Việt giúp kết nối nhanh chóng đơn giản và dễ sử dụng.\r\n+ Độ phân giải HD 1080P cho chất lượng hình ảnh rõ nét hơn. \r\n+ Kết nối wifi không dây xem trực tiếp trên điện thoại : Mọi người có thể theo dõi nhà cửa ở bất kỳ đâu chỉ cần điện thoại có kết nối mạng Wifi 3g 4g.\r\n+ Hỗ trợ đến 11 đèn hồng ngoại giúp quan sát tốt trong bóng đêm. Tầm nhìn hồng ngoại 10m, cho thời gian hoạt động 24/24.\r\n+ Đàm thoại 2 chiều: tính năng này giúp người dùng có thể trao đổi trực tiếp thông qua camera\r\n+ Chuông chống trộm : Khi phát hiện chuyển động camera sẽ cảnh báo trực tiếp bằng việc rú chuông và gửi thông báo về điện thoại của bạn', 399000, 7, 0),
(61, 18, 'Chân máy ảnh, tripod Weifeng WT-3520', 99, 'Tripod Máy Ảnh Weifeng WT-3520 được thiết kế dành riêng cho những chiếc máy ảnh, máy quay phim gia đình với kích thước gọn nhẹ, dễ di chuyển, dễ sử dụng. Không chỉ giúp chụp ảnh dễ dàng, giảm tình trạng mờ nhòe do rung tay, chân máy ảnh WT-3520 còn đem lại cho bạn sự linh động để thoải mái sáng tạo những khung hình đẹp.', 275000, 7, 0),
(62, 18, 'Bộ đèn studio chụp ảnh, quay phim', 99, '1 Bộ bao gồm:\r\n- 01 Chân đèn cao tới 2 mét\r\n- 01 Chụp đèn kích thước 50x70cm kèm tấm vải trắng làm mềm ánh sáng\r\nBóng đèn bạn có thể lựa tại shop hoặc mua bên ngoài để tự chọn mức độ ánh sáng phù hợp với nhu cầu nhé', 350000, 7, 0),
(63, 18, 'Instax Mini 11 - Máy ảnh lấy ngay Fujifilm', 99, 'Được thiết kế theo tiêu chí: đơn giản, sáng tạo và tiết kiệm diện tích nhất. Instax Mini 11 là một chiếc máy đẹp, lạ và rất bắt mắt, luôn thu hút mọi người khi được mang ra sử dụng. Ngoài ra với ngoại hình vừa tay nhưng vẫn nhỏ gọn, Instax Mini 11 chiếm rất ít không gian trong chiếc túi của bạn, nhằm mục đích giúp Instax Mini 11 luôn luôn có mặt trong mọi dịp hangout - sẵn sàng capture the moment mọi lúc mọi nơi', 2250000, 7, 0),
(64, 17, 'Vải chụp ảnh decor vân gỗ kẻ caro', 99, 'Vải mỗi lần về chất liệu khác nhau. Các bạn đọc kỹ thông tin sản phẩm\r\nTẤT CẢ LÀ ẢNH TỰ CHỤP. VIDEO QUAY CHO CÁC BẠN XEM CẬN CHẤT VẢI.  \r\nVải chụp ảnh kẻ caro, vân gỗ kích thước 0,75*1m\r\nVải cắt ra, không phải may viền nên có chỉ thừa, các bạn cắt đi là được, không hề ảnh hưởng gì cả. Với bạn nào nghĩ vải không có sợi chỉ tua ra thì shop chịu, không cung ứng được. Mua nhiều giá sẽ rẻ hơn mua 1 tấm.\r\nKhổ vải: 1.5m. Với 1 phân loại mua n*2 miếng trở lên shop không cắt ra lẻ.', 40000, 7, 0),
(65, 19, 'Giá đỡ Laptop Giá kê MacBook Ultrabook', 99, 'Lưu ý, đây là mẫu giá rẻ các shop khác đang bán ( vẻ ngoài giống mẫu N3 ver 1 bên mình ), chất lượng gia công không tốt như các sản phẩm khác hiện shop mình đang có, nhưng bù lại giá rất rẻ và đáp ứng được nhu cầu ở mức tối thiểu - trung bình. Dù sản phẩm gốc gia công có độ hoàn thiện không quá tốt nhưng shop sẽ cố găng gia công lại trước khi giao đến khách hàng để đảm bảm không bị kênh và vênh.', 350000, 7, 0),
(66, 19, 'Chuột không dây Bluetooth tự sạc pin SIDOTECH', 99, 'ƯU ĐIỂM NỔI BẬT CHUỘT KHÔNG DÂY BLUETOOTH SẠC PIN SIDOTECH M1P\r\n• Không cần sử dụng pin tiểu AAA\r\n• Sạc trực tiếp thông qua cổng USB\r\n• Một lần sạc đầy khoảng 2h và sử dụng trong 1 tuần liên tục\r\n• Có thể vừa sạc vừa dùng như một chiếc chuột có dây thông thường\r\n• Kết nối xa 10 mét\r\n• Độ nhạy DPI 1000/1200/1600 điều chỉnh thông qua nút\r\n• 3 chế độ kết nối, dùng cổng USB, Bluetooth, cổng Sạc\r\n• Thiết kế hiện đại thoải mái sang trọng như chuột của Apple\r\n• Nhiều màu để lựa chọn', 189000, 7, 0),
(67, 19, 'Chuột Gaming Wavecom VM01 Black', 99, 'Thiết kế dẻo dai, bo nhỏ, tạo cảm giác thoải mái khi cầm chuột\r\nNhựa an toàn ABS \r\nLED viền - RGB\r\nĐộ phân giải quang học 1600 DPI\r\nFrame Rate : 3000\r\nGiao diện kết nối : Cổng USB\r\nDễ sử dụng, tương thích với mọi loại máy tính và hệ điều hành', 89000, 7, 0),
(68, 19, 'Laptop Asus VivoBook Gaming F571GT-AL851T', 99, 'Thông Số Kỹ Thuật:\r\nBộ Vi Xử Lý / CPU: Intel Core i5 9300H ( 2.4 GHz - 4.1 GHz / 8MB / 4 nhân, 8 luồng )\r\nBộ Nhớ Trong / RAM: 8GB DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ Cứng / HDD: Intel Optane 32GB , SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình / LCD: 15.6 inch FHD (1920 x 1080) 120Hz\r\nChip Đồ Họa / VGA: NVIDIA GeForce GTX 1650 4GB + UHD Graphics 620\r\nKết Nối / Network:  Intel® 802.11AC (2x2) Bluetooth v5.1\r\nGiao Tiếp Mở Rộng:  1 x USB 3.2, 2 x USB 2.0, HDMI, LAN (RJ45), USB Type-C\r\nDung Lượng Pin:  3 Cell 48Whr\r\nHệ Điều Hành / Operating System: Win 10 Bản Quyền\r\nTrọng Lượng / Weight:  2.3 kg\r\nMàu Sắc:  Black', 21790000, 7, 0),
(69, 19, 'Apple MacBook Air (2020) M1 Chip, 13.3-inch', 99, 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 7 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, giảm thiểu tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ (1) MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.', 25990000, 7, 0),
(70, 20, 'Thanh chắn giường Pakey dạng trượt', 99, 'ĐẶC ĐIỂM THANH CHẮN GIƯỜNG\r\nThanh chắn giường Parkey là một trong những thương hiệu thanh chắn giường được ưa chuộng tại Nhật Bản, được nhập khẩu trực tiếp từ công ty sản xuất, luôn đảm bảo chất lượng trong mỗi sản phẩm với mức giá tốt nhất trên thị trường hiện nay.', 239000, 7, 0),
(71, 20, 'Miếng lót thấm sữa Mameyo (Bịch 100 Miếng)', 99, 'Miếng lót thấm sữa MAMEYO (Bịch 100 miếng)\r\n\r\nLót thấm sữa MAMEYO mềm mại có khả năng thấm hút cao cho mẹ “bỉm sữa” luôn cảm thấy khô thoáng, thoải mái ở bất cứ đâu, hạn chế các bệnh viêm nhiễm đầu ti.\r\n\r\nMiếng lót mỏng, độ thấm hút tốt, chống tràn tuyệt đối giúp các mẹ hết khó chịu khi sữa chảy ra, hạn chế tối đa ẩm ướt khó chịu, làm mốc meo quần áo', 85500, 7, 0),
(72, 20, 'TẤM LÓT CHỐNG THẤM 4 LỚP CHO BÉ SƠ SINH', 99, 'Gồm 4 lớp: Bề mặt 65% sợi polyester + 35% cotton. Lớp thứ 2 lớp thoáng khí, lớp thứ 3 TPU chống thấm, lớp cuối cùng vải lưới.\r\nCông nghệ in không có thuốc nhuộm azo và formaldehyde, thấm hút cực tốt, không phai màu, không có chất huỳnh quang, chất liệu mềm mại, thoáng khí, thân thiện với làn da', 35000, 7, 0),
(73, 20, 'Tã dán Moony Natural siêu cao cấp NB63/S58/M46/L38', 99, 'Mặt bông hữu cơ\r\n\r\nBề mặt vải bông organic cao cấp\r\n\r\nThành phần từ thiên nhiên tính axit yếu\r\n\r\nBề mặt an toàn tối đa cho làn da của trẻ\r\n\r\nChiết xuất từ 3 loại dầu thực vật\r\n\r\nDầu olive, dầu Jojoba, dầu gạo giúp giữ ẩm, chống viêm, chống oxy hóa\r\n\r\nĐộc đáo 3 chỉ thị ướt', 150000, 7, 0),
(74, 20, 'MÁY TIỆT TRÙNG SẤY KHÔ HÂM SỮA ĐIỆN TỬ', 99, 'Bạn tìm kiếm lâu nay một máy tiệt trùng vừa có chức năng sấy khô lại vừa có chức năng hâm sữa, thì CAPTION 1 sẽ đáp ứng được cùng một lúc những nhu cầu thiết yếu nhất này. Khoang hâm sữa được thiết kế riêng biệt không dùng chung với khoang tiệt trùng đó là điểm nổi bật của chiếc máy nhỏ nhắn này. Bạn có thể vừa hâm sữa lại vừa tiệt trùng sấy khô cùng một lúc, tận dung tối đa triệt để các chức năng của của một chiếc máy đa năng.', 890000, 7, 0),
(75, 21, 'Bộ chăn ga cotton Tici cao cấp phong cách Hàn Quốc', 99, 'Bộ chăn ga cotton Tici cao cấp phong cách Hàn Quốc đủ size đủ màu (không kèm ruột)', 265000, 7, 0),
(76, 21, 'Kệ góc nhà tắm phun sơn tĩnh điện dán tường', 99, 'Kệ phun sơn tĩnh điện dán tường siêu dính trong nhà tắm ,nhà bếp siêu tiện dụng\r\nKệ dán tường là sản phẩm cần thiết và tiện lợi cho mọi gia đình trong việc tối ưu không gian nhà bếp cũng như nhà tắm để xếp gọn đồ đạc.\r\nSản phẩm được làm bằng Sắt mỹ thuật chất lượng cao; thân thiện môi trường.\r\nKệ dán tường đựng được rất nhiều vật dụng trong nhà tắm cũng như nhà bếp với thiếu thế 2 cạnh vuông góc\r\nKích thước kệ : Chiều dài 2 bên 27cm , cao 5cm, rộng 12cm.', 65000, 7, 0),
(77, 21, 'Rèm Cửa Dán 2 Lớp Họa Tiết Sao Không Cần Khoan', 99, 'Mô tả sản phẩm: \r\n  1. Hình ảnh chỉ để tham khảo. Giá dành cho 1 bên rèm che sáng, vui lòng chọn kích thước và kiểu dáng bạn cần\r\n  2. Được bao gồm một khóa băng gai và một sợi dây \r\n  3. Đối với toàn bộ cửa sổ, 2 tấm rèm sẽ đẹp hơn\r\n  4. Có thể giặt máy nước lạnh, độ sấy khô thấp\r\n  5. Do điều kiện ánh sáng và chế độ cài đặt màn hình nên màu sắc thực tế của sản phẩm sẽ có đôi chút khác biệt với hình chụp.', 179000, 7, 0),
(78, 21, 'móc treo quần áo bằng gỗ tam giác vàng', 99, 'Móc áo gỗ tam giác vàng\r\n- hàng nhập, đảm bảo chất lượng cho sho\r\n- đầu móc xoay được\r\n- sơn bóng chống mối mọt\r\n- Chất liệu ; Gỗ tự nhiên\r\n- Màu sắc : vàng sáng,\r\n- Kích thước : vai 43-45cm dùng đc cho cả áo nam và nữ', 10000, 7, 0),
(79, 21, 'Sét 8 Đĩa Lúa Mạch Bộ Đĩa Lúa Mạch Hót 2021', 99, 'Đĩa làm từ LÚA MẠCH\r\nsản phẩm an toàn cho người sử dụng và rất nhẹ nhàng\r\n8 màu pastel: be, hồng, cam, xanh lá, xanh biển, tím\r\nShop Giao màu ngẫu nhiên ạ, shop sẽ cố gắng mix màu đủ cho các bạn\r\nKích thước đĩa: 14,5cm \r\nĐể đồ nóng thoải mái nhé\r\nNhựa lúa mạch cao cấp', 18499, 7, 0),
(80, 22, 'Giấy refill A4 B5 A5 20 26 30 lỗ ruột sổ còng', 99, 'Đảm bảo chất lượng 100%\r\nHàng được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\r\nShop sẽ chuẩn bị hàng nhanh nhất có thể (TB là 1 ngày) nhưng vấn đề vận chuyển  sẽ phụ thuộc vào rất nhiều yếu tố khách quan và chủ quan, đơn hàng có thể đến tay khách hàng nhanh hơn hoặc chậm hơn thời gian dự kiến của shopee ( thường sẽ nhanh hơn ).\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền', 36000, 7, 0),
(81, 22, 'Bút chì bấm cơ ngòi 0.5mm tiện lợi', 99, 'Thông tin sản phẩm: Bút chì bấm cơ\r\n Chất liệu: PP\r\n Khối lượng: 10g\r\n Kích thước: 14.5cm\r\n Màu sắc ngòi chì: Đen\r\n Gói hàng bao gồm: 1 Sản phẩm', 5000, 7, 0),
(82, 22, 'Sách - Mindmap English Grammar', 99, '\"Mindmap English Grammar - Ngữ Pháp Tiếng Anh Bằng Sơ Đồ Tư Duy\" tổng những cấu trúc ngữ pháp căn bản nhất bằng những sơ đồ tư duy sinh động, hình ảnh minh họa đầy màu sắc giúp việc học tiếng anh trở nên thú vị và dễ dàng hơn bao giờ hết', 133000, 7, 0),
(83, 22, 'Dao cắt giấy mini dễ thương dành cho học sinh', 99, 'Nhỏ và sắc bén, rất tiện dụng và xinh xắn; Kích thước nhỏ, vừa vặn trong lòng bàn tay của bạn! Trọng lượng nhẹ!\r\n  Được thiết kế chủ yếu cho cắt hộp các tông, xốp, vinyl, hộp đựng, phong bì, túi thực phẩm, túi nhựa, băng quấn, v.v.', 7200, 7, 0),
(84, 22, 'Combo 3 cuốn Nuôi con không phải là cuộc chiến', 99, 'Bên cạnh những vật chất cơ bản như quần áo, tã, bình… thì những kiến thức khoa học về ăn, ngủ và an toàn cho bé cũng là những yếu tố hết sức cần thiết mà cha mẹ cần trang bị cho mình từ trước khi con chào đời. Khoa học về dinh dưỡng trẻ sơ sinh, về sữa non và dự trữ dinh dưỡng nơi cuống rốn, khoa học về giấc ngủ của trẻ và những điều kiện an toàn ăn và an toàn ngủ của bé sơ sinh là những thông tin thiết yếu mà cha mẹ thực sự cần trang bị đầy đủ để đón chào bé thơ.', 263900, 7, 0),
(85, 23, 'Mũ bảo hiểm nửa đầu chính hãng', 99, 'Thông tin sản phẩm:\r\n* Thân mũ/nón (vỏ mũ/nón) bảo hiểm: được làm từ nhựa ABS chính phẩm,nguyên sinh chưa qua sử dụng nên chất lượng cao chịu được sự va đập mạnh và đâm xuyên cao, đặc biệt không mùi nhựa khó chịu như các loại mũ chất lượng kém khác.\r\n* Lớp đệm mút xốp EPS (Foam): có độ cứng vững rất tốt, vừa vặn và bám chặt vào thân nón có tác dụng hấp thụ xung động cao giúp bảo vệ tối đa cho người dùng khi xảy ra va chạm, đặc biệt không gây cảm giác nặng và đau đầu, tạo cho người đội cảm giác thoải mái và thoáng mái khi sử dụng.\r\n* Dây đeo và khóa mũ: chắc chắn, với khóa mũ là khóa rút cao cấp, dễ dàng tháo lắp, bền với thời gian.\r\n* Nước sơn: được sơn bằng công nghệ hiện đại, tạo bề mặt sáng, bóng, nhẵn mịn, không ngả màu.\r\n* Màu sắc: màu đen, xanh lá, xanh dương, vàng, hồng, trắng, cam. \r\n* Kích thước: freesize ( vòng đầu từ 54-58cm đội vừa, thích hợp cho cả nam và nữ).\r\n* Được kiểm định độ bền và chất lượng kỹ lưỡng trước khi xuất xưởng.', 150000, 7, 0),
(86, 23, 'Sạc bình ắc quy ô tô xe máy 12V 4Ah - 100Ah', 99, 'Sạc bình ắc quy ô tô xe máy 12V 4Ah - 100Ah FOXSUR tự ngắt khi đầy chức năng bảo dưỡng phục hồi ắc quy bằng khử sunfat chống ngược cực', 168000, 7, 0),
(87, 23, 'Xe máy Honda wave rsx FI - phiên bản vành 2020', 99, '- Giá bán xe đã bao gồm thuế VAT, không bao gồm thuế trước bạ và chi phí làm giấy tờ, biển số.\r\n- Khách hàng nhận xe và làm thủ tục giấy tờ tại đại lý chính hãng.\r\n- Hàng đã nhận không được đổi trả (điều kiện đổi trả theo quy định của Honda Việt Nam). Quý khách hàng vui lòng kiểm tra kỹ sản phẩm trước khi nhận xe, Cửa hàng không chịu trách nhiệm khi có bất kỳ lỗi xảy ra do sự chủ quan trong quá trình kiểm tra và giao nhận sản phẩm.\r\n- Thông tin bảo hành: 3 năm / 30.000 km (Tùy điều kiện nào đến trước)', 26400000, 7, 0),
(88, 23, 'Xe máy Honda SH 150i ABS 2020', 99, '- Giá bán xe đã bao gồm thuế VAT, không bao gồm thuế trước bạ và chi phí làm giấy tờ, biển số.\r\n- Khách hàng nhận xe và làm thủ tục giấy tờ tại đại lý chính hãng.\r\n- Hàng đã nhận không được đổi trả (điều kiện đổi trả theo quy định của Honda Việt Nam). Quý khách hàng vui lòng kiểm tra kỹ sản phẩm trước khi nhận xe, Cửa hàng không chịu trách nhiệm khi có bất kỳ lỗi xảy ra do sự chủ quan trong quá trình kiểm tra và giao nhận sản phẩm.\r\n- Thông tin bảo hành: 3 năm / 30.000 km (Tùy điều kiện nào đến trước)', 114500000, 7, 0),
(89, 23, 'bọc chân chống xe máy dùng cho mọi loại', 99, 'Cao su bọc chân chống xe máy tặng kèm dây rút\r\n- Tránh trầy xước nền nhà bằng gạch men hoặc các vật liệu dễ trầy xước khác\r\n- Tránh tổn thương chân khi vô tình va quẹt vào chân chống\r\n- Chống lún cát khi dựng xe\r\n- Nâng cao tuổi thọ chân chống\r\n  Đặc tính kỹ thuật\r\n- Độ mài mòn: 0,7 cm3/1,61\r\n- Độ cứng: 80±5 Shore A', 4000, 7, 0),
(90, 24, 'Vòng cổ dạng chuỗi xích màu vàng phong cách punk', 99, 'Loại kim loại: Hợp kim kẽm\r\n  Dành cho: nữ\r\n  Loại dây chuyền: vòng cổ\r\n  Phong cách: thời thượng\r\n  Loại vòng cổ: chuỗi xích\r\n  Loại sản phẩm: Dây chuyền\r\n  Chất liệu: Kim loại\r\n  Hình dạng \\ mẫu: hình học', 8900, 7, 0),
(91, 24, 'Cài Tóc Dạng Bện Phong Cách Hàn Quốc Cho Nữ', 99, 'Tên sản phẩm: Cài tóc bện\r\n  Chất liệu: Vải\r\n  Phong cách: Nhật Bản và Hàn Quốc\r\n  Tình trạng: hàng mới\r\n  Phân loại phụ kiện tóc: Cài tóc', 18000, 7, 0),
(92, 24, 'Set 5 nhẫn hở mạ vàng đính ngọc trai giả xinh xắn', 99, 'Phong cách: phong cách hàn quốc \r\nMàu sắc: Vàng, bạc\r\nLoại sản phẩm: Nhẫn\r\nLoại kim loại: Hợp kim\r\nHình dạng\\ Mẫu: như hình ảnh\r\nNhân dịp: Quà tặng / Trường học / Đám cưới', 6000, 7, 0),
(93, 24, 'Nút gài điều chỉnh lưng quần cho nữ thiết kế', 99, '1. Sản phẩm này được chia thành loại vít và loại đinh, loại vít có giá rẻ hơn.\r\n2. xin vui lòng chú ý đến giá cả và thông tin hình ảnh tương ứng khi mua hàng. Sau khi đã mua, nó không thể được trả lại hoặc trao đổi.\r\n3. Đối với loại vít, vui lòng tham khảo bản vẽ lắp đặt và sử dụng tuốc nơ vít hoặc kéo để lắp đặt, đối với loại đinh, vui lòng tham khảo video trên trang sản phẩm để lắp đặt.', 13500, 7, 0),
(94, 24, 'Kẹp Tóc Cỡ Lớn Thiết Kế Đơn Giản', 99, 'Chất liệu: Acrylic\r\n  Phong cách: Hàn Quốc\r\n  Tình trạng: sản phẩm hoàn toàn mới \r\n  Phân loại phụ kiện tóc: Kẹp túm tóc', 9500, 7, 0),
(95, 25, 'Phấn phủ FOCALLURE trang điểm nền', 99, 'Thời đại của phong cách trang điểm tông màu nude, nhẹ như đôi cánh mỏng manh, mang lại cảm giác khó quên.\r\n  Phấn phủ dạng bột có đệm khí, nhẹ, khiến lớp trang điểm lâu trôi \r\n  Nhẹ và tự nhiên, giúp da trông mịn màng hơn \r\n  Chống mồ hôi, tạo ra phong cách trang điểm không sợ bóng dầu mới. \r\n  Hấp thụ dầu, duy trì cân bằng nước và dầu, trang điểm một lần, giữ được cả ngày.', 45000, 7, 0),
(96, 25, 'Son kem lì Bbia Last Velvet Lip Tint Version 5', 99, 'Son kem lỳ Bbia Last Velvet Lip Tint là dòng son lỳ với độ bám dính cực cao, hút vào môi bạn như nam châm và lên màu rõ ràng chỉ sau một lần thoa.\r\nThân son bằng nhựa trong giúp nàng dễ dàng lựa chọn màu son mỗi khi dùng. Phần nắp ánh kim màu xanh Metalic tinh tế và sang trọng.', 150000, 7, 0),
(97, 25, 'MAANGE dụng cụ vệ sinh cọ trang điểm', 99, 'Chi tiết:\r\nThương hiệu: MAANGE\r\nKích thước: 10 * 5cm\r\nKhông thấm nước: CÓ\r\nXuất xứ: Trung Quốc\r\nMàu sản phẩm: Hồng, xanh, hồng đỏ\r\nLoại da phù hợp: Mọi loại da\r\nMã sản phẩm: 5967\r\nThành phần: Bọt biển, silica', 25000, 7, 0),
(98, 25, 'Bông Tẩy Trang 3 Lớp Cotton Pads 222 miếng', 99, 'Bông tẩy trang này dùng siêu thích luôn í, dày dặn, ít xơ mà giá lại quá bèo hihi.\r\n100% bông tự nhiên.\r\nCó túi PP rút siêu tiện lợi và giữ vệ sinh. Miếng bông được viền xung quanh để tránh bị rách, hay xù bông.', 18500, 7, 0),
(99, 25, 'Nước Hoa Xịt Thơm Toàn Thân ShiMang Body Mist', 99, 'Nước hoa Body Mist ShiMang Lưu hương lâu dài dịu dàng nhẹ nhàng như giấc mơ .Mùi hương là một trong những yếu tố tạo nên sự quyến rũ khó rời của phụ nữ. Nếu như vào mùa Đông, các nàng yêu thích các mùi hương nồng nàn ấm áp thì trong mùa Hè, những nốt hương thanh mát được ưa chuộng hơn. Trong tiết trời nóng bức như hiện nay, hãy để cơ thể lưu giữ hương thơm thoảng nhẹ với sản phẩm xịt thơm toàn thân.', 23500, 7, 0),
(100, 26, 'Băng vệ sinh Diana Sensi siêu mỏng cánh', 99, 'Băng Vệ Sinh Diana Sensi Siêu Mỏng Cánh 20 được trang bị bề mặt lụa mới siêu mềm và hệ thống thấm hút độc đáo giúp thấm hút cực nhanh, chống thấm ngược tuyệt đối. Sản phẩm có đường dẫn thấm ngăn tràn và chống co dúm, cho bạn gái thêm năng động, tự tin hơn trong những ngày \"đèn đỏ\".', 42000, 8, 0),
(101, 26, 'Miếng Dán Ngải Cứu Giảm Dau Vai Cổ Gáy Hiệu Quả', 99, 'Giảm nhanh các triệu chứng đau nhức xương khớp (đau vai gáy, khớp gối, đau ở lưng, đau đầu,…).\r\nCải thiện các bệnh lý gồm đau dây thần kinh, thấp khớp,…\r\nMiếng dán ngải cứu làm giảm vết thương bầm tím, trật khớp (không bao gồm vết thương hở).\r\nĐau cổ vai gáy do ngồi văn phòng lâu, mệt mỏi do đi tàu xe, vận động nhiều hoặc mệt mỏi cơ bắp\r\nCải thiện đáng kể tình trạng mỏi cơ bắp do vận động nặng.', 12000, 8, 0),
(102, 26, 'Cao Sao Vàng Chính Hãng Giá Sỉ Hộp 3g', 99, 'Cao Sao Vàng Chính Hãng là sản phẩm Dầu Cù Là của dược phẩm TW3. \r\nTiêu chuẩn TCCS/031-Z3-3-09.\r\nCao Sao Vàng hộp 3g được điều chế từ nhiều loại tinh dầu, có tác dụng hiệp lực với thủ pháp xoa trên huyệt dùng trong các trường hợp chóng mặt, nhức đầu, đau bụng, buồn nôn và say xe rất công hiệu.', 2850, 8, 0),
(103, 26, 'Khay Đựng Lens VIVIMOON', 99, 'Bộ dụng cụ bao gồm:\r\n- 01 khay đựng lens hình gấu\r\n- 01 bộ dụng cụ gắp và lấy lens', 12000, 8, 0),
(104, 26, 'Gel bôi trơn DUREX PLAY CLASSIC 50ML (NEW BOTTLE)', 99, 'Gel bôi trơn Durex giúp cuộc yêu trở nên mặn mà và nồng nhiệt hơn. Gel giúp bôi trơn, tăng độ ẩm cho âm đạo, mang lại cảm giác mịn màng, êm ái, thoải mái cho các nàng. Sản phẩm được sản xuất theo tiêu chuẩn chất lượng quốc tế, tuyệt đối an toàn cho người sử dụng, dung tích 50ml. Gel bôi trơn Durex giúp cả hai khởi động và giữ lửa cuộc yêu, cho sự lãng mạn dài lâu.', 85000, 8, 0),
(105, 27, 'Dây nhảy thể lực đàn hồi 2.9m chính hãng TopBody', 99, '- Thiết kế nhỏ gọn, hiện đại nhưng vẫn đảm bảo được độ bền\r\n- Tay cầm chắc chắn, được bọc xốp, với phân loại dây nhảy thép bọc silicon tay cầm được thiết kế dạng đường vân tròn, tăng độ chắc chắn, cảm giác cầm nắm cho bàn tay\r\n- Sử dụng chất liệu cotton bong bóng mới, tốt cho sức khỏe, không có mùi, bám vào lòng bàn tay\r\n- Phân loại DÂY NHẢY thép bọc silicon 3m có tạ sắt tạo độ chắc chắn cho tay cầm, vừa đủ độ nặng tăng động lực cho bàn tay\r\n- Phân loại dây thay thế để đảm bảo chiếc dây nhảy của bạn có độ bền tốt nhất', 49000, 8, 0),
(106, 27, 'Đĩa xoay eo tập thể dục 360 độ bàn xoay', 99, 'Thông tin sản phẩm:\r\n- Chất liệu: nhựa cao cấp, chịu lực tốt.\r\n- Màu sắc: xanh kết hợp đen.\r\n- Đường kính: 25cm dày 3 cm\r\n- Công dụng: Tập xoay eo giúp làm giảm lượng mỡ, giúp cơ bụng săn chắc, eo gọn.\r\n- Trọng lượng: 500gr.\r\n- Xuất xứ: Trung Quốc', 48900, 8, 0),
(107, 27, 'Vỏ tạ nhựa 5kg (1 chiếc)', 99, 'Vỏ tạ nhựa màu xanh đẹp mắt. \r\nGia công chắc chắn, bền, đẹp.\r\nKèm thêm nút đạy.\r\nThoải mái nhồi bê tông, cát hoặc vật liệu tùy ý.\r\nTiết kiệm tiền ship cho khách hàng ở xa so với tạ đã nhồi\r\nGiá thành rẻ hơn nhiều so với tạ đã đúc', 9000, 8, 0),
(108, 27, 'Giày bóng chuyền cầu lông chạy bộ đá futsanl', 99, 'Giày chạy bộ,đi chơi,bóng chuyền,cầu lông,đá bóng sân gỗ\r\nChất liệu đế cao su\r\nDa mềm phối da bóng,êm chân\r\nSản xuất với công nghệ tiên tiến\r\nÉp chịu lực bốn chiều\r\nGiày đã khâu đế trước sau\r\nThiết kế miếng lót khô thoáng khi vận động\r\nGiá cả hợp lý,đến tay khách hàng chỉ có hài lòng', 159000, 8, 0),
(109, 27, 'Bao Trụ Đấm Bốc Tự Cân Bằng', 99, 'Thuận tiện cho cả Nam và Nữ, tập ngay tại nhà hay tại văn phòng giúp nâng cao sức khỏe, giảm Stress lấy lại phong độ đỉnh cao trong công việc\r\nChất liệu được làm từ da PU – da tổng hợp – Sản phẩm có 2 khoang – 1 khoang phía dưới chứa nước hoặc cát tùy vào lựa chọn của mỗi người, khoang trên chứa khí. Bên trong mỗi khoang sẽ có 1 lớp cao su non để tăng độ phạn xạ cho sản phẩm.', 176800, 8, 0),
(110, 28, 'Nồi chiên không dầu dung tích 5 lít CAMEL', 99, 'Công suất: 1350W\r\nChiên không dùng dầu, không khói\r\nBộ hẹn giờ 30 phút\r\nTự ngắt điện khi hoàn tất', 556000, 8, 0),
(111, 28, 'Lò nướng điện Comet CM6510 10L', 99, '- Lò nướng đa năng Comet CM6510 có thể thực hiện các món ăn qua quay, nướng, hâm, rã đông… đem lại hiệu quả phục vụ tối đa, cho bạn và người thân có thể tận hưởng những món ăn thơm ngon, bổ dưỡng.\r\n- Lò nướng đa năng CM6510 có dung tích vừa đủ 10L, phụ kiện đi kèm : khay hứng dầu, vỉ nướng.\r\n- Sản phẩm có khả năng nướng, đặc biệt có thể rã đông nhanh chóng, giúp bạn có thể chế biến những món ăn tươi ngon mà không cần tốn nhiều công sức.\r\n- Lò nướng đa năng CM6510 nướng bằng thanh nhiệt 3 chế độ, bạn có thể tùy chỉnh theo từng thực phẩm khác nhau. \r\n- Vỏ ngoài của lò nướng đa năng CM6510 được sơn tĩnh điện, tránh rò rỉ điện năng, đem lại sự yên tâm và thoải mái cho người sử dụng.\r\n- Lò nướng được thiết kế nắp an toàn của lò nướng thủy tinh cùng với giá đỡ và tự ngắt điện khi mở nắp sẽ đảm bảo chất lượng và mùi vị của món ăn cũng như an toàn trong sử dụng. Tay cầm inox thuận tiện sử dụng.', 399000, 8, 0),
(112, 28, 'Máy Đánh Trứng Cầm Tay Mini Cao Cấp Với 7 Tốc Độ', 99, 'Cuộc sống bận rộn, dành thời gian bên gia đình với các món ăn khoái khẩu góp phần làm ấm thêm tình cảm mọi người thân. Đối với người Việt Nam chúng ta những món trứng chiên, bánh Plan, bánh kem hay món bánh truyền thông làm từ bột luôn có mặt trong các bữa ăn, buổi tiệc sinh nhật, tiệc họp mặt. Công việc chuẩn bị nguyên liệu chế biến món ăn đó giờ đây vô cùng tiện dụng, dễ dàng và nhanh chóng với Máy Đánh Trứng 7 Tốc Độ, Thiết kế nhỏ gọn bạn không phải vất vả nhào bột, trộn trứng, rất tiết kiệm thời gian và điện năng.', 99000, 8, 0),
(113, 28, 'Nồi Lẩu Điện Mini Nấu Mì 2 Tầng', 99, 'Nồi lẩu điện mini đa năng có tay cầm được nhập khẩu với chất lượng cao cấp an toàn tuyệt đối cho sức khỏe người sử dụng. Với công nghệ đa năng cùng những tính năng thông minh, tiện ích bắt kịp xu thế thời buổi hiện đại, nồi điện đa dụng cao cấp chắc chắn có được sự hài lòng từ những khách hàng khó tính.', 129000, 8, 0),
(114, 28, 'Máy khâu mini cầm tay gia đình 202A', 99, '- Kích thước: 20x19x10cm\r\n- Màu sắc: Trắng\r\n- Chất liệu: Nhựa ABS\r\n- Xuất sứ: Trung Quốc\r\n- Bộ sản phẩm bao gồm: 1 thân máy, 1 cáp sạc, 1 bàn đạp, 4 cuộn chỉ, 1 kim may, 1 dụng cụ hỗ trợ xỏ chỉ', 249000, 8, 0),
(115, 29, 'Android Tivi Box TX3 mini - 2G Ram và 16G bộ nhớ', 99, 'TX3 mini là dòng Android TV Box do Tanix sản xuất hướng tới phân khúc phổ thông nhưng cấu hình không hề yếu với CPU Amlogic S905W, Ram 2G, Bộ nhớ trong 16GB, Cổng âm thanh Optical và màn hình hiển thị (duy nhất ở phân khúc này TX3 mini có đầy đủ option như vậy)', 550000, 8, 0),
(116, 29, 'Điều khiển Tivi SONY Smart Internet-Model TX300P', 99, 'Chất liệu: Nhựa ABS\r\nKhoảng cách điều khiển : 10m\r\nNơi sản xuất: Trung quốc\r\nTình trạng : Mới\r\nBảo hành: 1 tháng\r\nTrọng lượng : 60g\r\nKích thước: 20mm x 45 mm x 200 mm\r\nLoại sóng giao tiếp: Hồng ngoại\r\nTần số: 433 mHz\r\nMàu sắc:Đen\r\nNguồn sử dụng : 2 pin AAA', 34900, 8, 0),
(117, 29, 'Bảng Mạch Giải Mã Âm Thanh Mp3 TF card U disk MP3', 99, 'Hỗ trợ định dạng MP3, tự động bật nguồn. Khi mp3 được phát, đèn LED màu đỏ sẽ nhấp nháy\r\nHỗ trợ đĩa U (thử nghiệm 32G), chế độ chơi Thẻ TF (thử nghiệm 16G); bật chế độ thẻ TF mặc định, nếu thẻ TF không tồn tại sẽ tự động chuyển sang chế độ đĩa U và cả hai thiết bị đã được cài đặt, thì bạn có thể đặt chế độ phát theo cách thủ công. Để biết chi tiết, vui lòng xem hướng dẫn vận hành chính.\r\nCác nút có thể được điều chỉnh tăng và giảm để điều khiển bài hát, tăng giảm âm lượng, tạm dừng hoặc phát, chuyển đổi chế độ. Để biết chi tiết, vui lòng xem hướng dẫn sử dụng phím', 23400, 8, 0),
(118, 29, 'Cáp gộp audio và mic 3.5mm Jack gộp tai nghe 3.5', 99, 'Headset là kiểu tai nghe đi kèm micro nhưng chỉ sử dụng chung một jack 3.5mm duy nhất. Tương thích với nó là cổng headset 3.5mm duy nhất trên thiết bị. Cổng này rất phổ biến trên các smart phone, máy tính bảng và laptop đời mới (những laptop được sản xuất trong vòng 2 năm trở lại đây). Điều này là dễ hiểu bởi với các thiết bị cần sự nhỏ gọn như smart phone, máy tính bảng, cổng này rất phù hợp. Trên các laptop đời cũ và máy tính để bàn thường được thiết kế không có cổng này mà vẫn có 2 cổng 3.5mm riêng là headphone và micro.', 30000, 8, 0),
(119, 29, 'Bao Silicon Tay cầm Xbox Series', 99, 'Một khi mang bao/case này vào rồi thì đảm bảo anh em sẽ có một cảm giác khác ngay lập tức, phần đệm bên dưới cực êm, 2 bên má là lớp silicon dẻo chống trượt phù hợp với anh em nào tay ra nhiều mồ hôi hoặc chiến COD, BF1 trong thời gian dài.Chất lượng hơn những bọc tay silicon giá rẻ nhiều màu sắc ngoài thị trường.', 50000, 8, 0),
(120, 30, 'Áo khoác Nam Áo Blazer Nam Form Rộng', 99, 'Blazer hiểu đơn giản nhất là những chiếc áo khoác với form chung của vest, nhưng đường cắt và màu sắc lại hoàn toàn phá cách. Blazer cũng không cần lúc nào cũng phải đi kèm theo cả một bộ đồ như khi bạn diện suit, thực ra, chẳng ai đóng thùng trong sơ mi hồ cứng cổ với blazer đâu.', 265000, 8, 0),
(121, 30, 'Áo Nỉ Nam Thời Trang Trẻ Trung Chất Vải Co Dãn', 99, 'Áo nỉ là gợi ý tuyệt vời cho nam giới trong những ngày thời tiết se lạnh. Thiết kế phối bo tay áo và bo gấu đơn giản, tinh tế mang đến phong cách trẻ trung và thanh lịch.Chất liệu nỉ cao cấp dày dặn, mềm mịn, không xù, co giãn nhẹ. Nhờ đặc tính nổi trội, khả năng giữ ấm tốt, tính tiện lợi và thoải mái, áo nỉ chắc chắn sẽ làm vừa lòng các chàng. Kết hợp áo nỉ cùng áo sơ mi trắng đơn giản đều giúp bạn trở nên nổi bật và phong cách với gu thời trang tinh tế. Với bốn màu: đen, xanh than, xám đậm, xám nhạt các chàng thoải mái lựa chọn những gam màu phù hợp với sở thích.', 129000, 8, 0),
(122, 30, 'Áo hoodie nam form rộng thời trang hàn quốc', 99, 'Thông tin sản phẩm hoodie :\r\n- Tên sản phẩm: ao bomber nữ/nam\r\n- Kiểu dáng thiết kế:  rộng thoải mái\r\n- Màu sắc: đen loang\r\n- Chất liệu: lót nỉ', 238000, 8, 0),
(123, 30, 'Tất chống hôi chân phong cách Hàn Quốc cho nam', 99, 'Thích hợp với nhiều loại giày.\r\nChất liệu: Vải cotton mềm, nhẹ, thoáng khí, thấm hút mồ hôi.\r\nCo dãn 4 chiều, phù hợp với nhiều kích thước bàn chân.\r\nKhử mùi hiệu quả, kháng khuẩn.', 8000, 8, 0),
(124, 30, 'Quấn lót hàng hiệu 4 chiều', 99, '\"95%: Cotton cao cấp của hãng xuất Anh Quốc.\r\n5% Elastane (Spandex) sợi đàn hồi giúp co dãn 4 chiều thoải mái khi mặc.\"', 49000, 8, 0),
(125, 31, 'Áo Cadigan len mỏng phong cách Hàn Quốc', 99, 'Áo Khoác Nữ - Áo Khoác Len Nữ - Áo Khoác Len Cardigan - Áo Len Thời Trang là 1 món đồ không thể thiếu trong tủ đồ của chị em khi thời tiết trở nên se se lạnh. Ngày hôm nay, Shop xin giới thiệu sản phẩm Áo Khoác Len Cardigan kiểu dáng mới nhất năm 2020 tới chị em, để chị em có thêm 1 lựa chọn trong tủ đồ thu đông năm nay nhé', 99000, 8, 0),
(126, 31, 'Áo Khoác Nỉ Khóa Zip Oversize Kẻ Viền Túi', 99, '\"Áo hoodie kẻ viền túi nhà em sẵn kho sll nha các bác\r\nChất liệu cao cấp, thiết kế đơn giản, trẻ trung, thoáng mát\r\nFreesize dưới 60kg vừa đẹp\"', 72000, 8, 0),
(127, 31, 'Áo 2 Dây Cotton Croptop Sợi Bún Đệm Nâng Ngực', 99, 'Dây áo sợi bún nhẹ nhàng, xinh xắn\r\nÁo có sẵn lớp đệm mút vừa phải tiện lợi, chị em khỏi lăn tăn mặc với nội y gì cho phù hợp nha\r\nThiết kế độ dài vừa xinh, kết hợp với chân váy, quần sooc, culot,... gi gỉ gì gi cái gì cũng hợp ý.\r\nDễ Dàng phối đồ với nhiều loại quần cực sang chảnh', 35000, 8, 0),
(128, 31, 'Áo khoác len không tay cổ chữ V thời trang cổ điển', 99, '\"Chất liệu: Cotton + Polyester\r\nQuy cách: (đơn vị: cm)\r\nSIZE: free size\r\nLength: 63CM bust: 112CM shoulder width: 38CM\"', 167000, 8, 0),
(129, 31, 'Quần baggy Kaki Unisex Nữ Nam vải loại 1 co giãn', 99, '\"Chất liệu: Vải kaki\r\n(Vải kaki rất bền và thoáng mát, vải rất ít khi bị nhăn cho dù bạn có hoạt động rất nhiều)\r\nMàu sắc: quần baggy đen và be\r\nĐặc điểm thiết kế: cạp chun, có mí túi\"', 109000, 8, 0),
(130, 32, 'Áo len tăm, len gân Minky Mom bé trai bé gái', 99, '\"Chất liệu: Chất liệu len gân cao cấp mềm mịn, co dãn tốt, đường may chắc chắn, không bai dão, không xù, không phai màu khi giặt, an toàn và không gây ngứa ngáy cho bé.\r\nTiện lợi mặc từ hè thu qua mùa đông\"', 36000, 8, 0),
(131, 32, 'Giày tập đi đế mềm chống trượt đính hoa xinh xắn', 99, '\"100% hàng mới, chất lượng cao\r\nChất liệu giày: cotton, vải dệt kim\"', 45000, 8, 0);
INSERT INTO `sanpham` (`sp_id`, `dm_id`, `sp_ten`, `sp_soluong`, `sp_mota`, `sp_giaban`, `ch_id`, `sp_trangthai`) VALUES
(132, 32, 'Bodysuit Body cotton dài tay cho bé trai bé gái', 99, 'Bodysuit là sản phẩm đem lại sự thoải mái nhất và đồng thời tôn lên vẻ đáng yêu của các thiên thần bé. Đặc biệt là khi bé chưa biết đi, bodysuit đem lại sự thoải mái cho bé trong các vận động như lật, trườn, bò. Bodysuit cũng mang lại sự tiện lợi cho ba mẹ khi bế bồng hay thay tã cho bé. Bạn sẽ yên tâm khi thấy con mình không bị cấn do quần áo xộc xệch và luôn được giữ ấm ở những vùng quan trọng như bụng, lưng, ngực dù bé có lăn lê mức nào, hoặc khi bé được bế chuyền tay từ người này sang người khác.', 74000, 8, 0),
(133, 32, 'Áo cổ lọ cho bé', 99, '\"Áo cổ lọ cho bé - cổ áo cao 7p\r\nChất liệu cotton len dày dặn \r\nMàu sắc: Đen - Trắng - Ghi - Hồng - Xanh Than - Xanh dương - Vàng - Đỏ - Rêu\r\nXuất xứ: Hàng Việt Nam\"', 35000, 8, 0),
(134, 32, 'Tất trẻ em - Tất lưới cho bé sơ sinh đến 4 tuổi', 99, '\"Tất đàn hồi tốt với nhiều lỗ thoáng khí, đi dược cả 4 mùa, đi cực thích luôn ạ\r\nKhách vui lòng chọn đúng phân loại, không ghi chú hay lưu ý riêng. Shop sẽ giao màu trung tính ngẫu nhiên như hình đăng bán. Khách vui lòng mua 5 đôi để đủ màu và giá ưu đãi\"', 5000, 8, 0),
(135, 33, 'Túi kẹp nách nữ da vân cá sấu dây xích', 99, 'Túi xách là một phụ kiện thời trang không thể thiếu của các bạn trẻ dù là nam hay nữ, nó thể hiện phong cách cũng như cá tính của chủ nhân. Nếu bạn yêu thích phong cách đơn giản nhưng tinh tế thì chiếc túi xách  là một lựa chọn hoàn hảo cho bạn.Chiếc túi xách Tote 6 sở hữu thiết kế thời trang với phần nắp túi cách điệu kết hợp tông màu nổi bật, những đường may tinh tế, cùng gam màu trung tính trẻ trung năng động sẽ vô cùng hữu dụng cho bạn trong việc chứa các vật dụng cá nhân. Bên cạnh đó, túi xách còn thể hiện gu thời trang và cá tính của bạn.', 50000, 8, 0),
(136, 33, 'Ví nữ mini dễ thương ngắn cầm tay MADLEY', 99, 'Từ những cô nàng bình thường nhất cho tới những ngôi sao hàng đầu, tất cả đều chia sẻ một tình yêu vĩ đại với những chiếc ví. Chiếc ví nữ mini hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.', 16500, 8, 0),
(137, 33, 'Túi Xách Dra Hộp Nhật túi đeo chéo nhũ thời trang', 99, 'Mang tới cho các cô nàng sự thoải mái khi đi dạo phố hoặc hẹn hò bè bạn vì không phải cầm mang những vật dụng linh tinh, chiếc TÚI XÁCH NỮ CAO CẤP đã trở thành người bạn không thể thiếu các nàng. Chúng có sự đa dạng từ kiểu cách tới màu sắc, size…tùy theo nhu cầu của mình mà các nàng lựa chọn một sản phẩm thích hợp.', 190000, 8, 0),
(138, 33, 'Túi cói mini đi biển nữ đẹp đi chơi thời trang', 99, 'Túi cói đi biển là dạng túi thông dụng hàng ngày  và phù hợp với mọi hoàn cảnh. Túi cói nữ có nhiều kích thước khác nhau có thể đựng được nhiều giấy tờ, ví mini, mỹ phẩm và điện thoại. Điểm nổi bật của dòng túi cói này giúp bạn thoải mái tung tăng dạo phố với phong cách vintage cá tính dễ thương mà không hề vướng bận đôi tay.', 21000, 8, 0),
(139, 33, 'Ví nữ đẹp dáng dài cầm tay nhiều ngăn thời trang', 99, 'Ví nữ, ví cầm tay nữ dáng dài, ví tiền là dạng ví cầm tay thông dụng hàng ngày. Ví da nữ có thể đựng được nhiều giấy tờ như thẻ ATM, tiền và cả điện thoại. Ngoài ra, ví nữ cầm tay, hay còn gọi là ví wallet còn là \"cứu cánh\" cho những set đồ đơn điệu hàng ngày của các cô nàng.', 28000, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`bl_id`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`sp_id`,`hd_id`);

--
-- Indexes for table `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`dm_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`ha_id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`hd_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `sanpham_sp_ten_index` (`sp_ten`);

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
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `bl_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cuahang`
--
ALTER TABLE `cuahang`
  MODIFY `ch_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `dm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `ha_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `hd_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
