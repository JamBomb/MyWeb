-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2018-11-25 07:16:15
-- 服务器版本： 5.5.60-MariaDB
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `NELab`
--

-- --------------------------------------------------------

--
-- 表的结构 `DeviceIP`
--

CREATE TABLE `DeviceIP` (
  `ID` int(11) NOT NULL,
  `IP` varchar(32) COLLATE utf8_bin NOT NULL,
  `Type` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `DeviceIP`
--

INSERT INTO `DeviceIP` (`ID`, `IP`, `Type`) VALUES
(1, '172.29.99.101', 'mTera'),
(2, '172.29.99.102', 'mTera'),
(3, '172.29.99.103', 'mTera'),
(4, '172.29.99.104', 'mTera'),
(5, '172.29.99.105', 'mTera'),
(6, '172.29.99.119', 'mTera8'),
(7, '172.29.99.201', 'Nano'),
(8, '172.29.99.202', 'Nano'),
(9, '172.29.99.50', 'Nano'),
(10, '172.29.99.54', 'Nano'),
(11, '172.29.99.55', 'Nano'),
(12, '172.29.99.56', 'Nano'),
(13, '172.29.99.108', 'Keystone'),
(14, '172.29.99.109', 'Keystone'),
(15, '172.29.99.107', 'Keystone'),
(16, '172.29.99.208', 'Keystone'),
(17, '172.29.99.210', 'Keystone'),
(18, '172.29.99.219', 'Keystone');

-- --------------------------------------------------------

--
-- 表的结构 `Devices`
--

CREATE TABLE `Devices` (
  `ID` tinyint(8) NOT NULL,
  `Type` varchar(128) COLLATE utf8_bin NOT NULL,
  `Slots` tinyint(8) NOT NULL,
  `Image` varchar(256) COLLATE utf8_bin NOT NULL,
  `Content` varchar(128) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `Devices`
--

INSERT INTO `Devices` (`ID`, `Type`, `Slots`, `Image`, `Content`) VALUES
(1, 'mTera', 20, '../netlab/image/mTera.jpg', NULL),
(2, 'mTera8', 12, '', NULL),
(3, 'Nano', 6, '', NULL),
(4, 'Keystone', 1, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `DeviceUsage`
--

CREATE TABLE `DeviceUsage` (
  `ID` int(10) UNSIGNED NOT NULL,
  `IP` varchar(32) COLLATE utf8_bin NOT NULL,
  `Slot` int(10) UNSIGNED NOT NULL,
  `Reserved` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `DeviceUsage`
--

INSERT INTO `DeviceUsage` (`ID`, `IP`, `Slot`, `Reserved`) VALUES
(1, '172.29.99.101', 1, 'Kaikun Luo'),
(2, '172.29.99.101', 2, 'Jack Chen'),
(3, '172.29.99.101', 3, 'Available'),
(4, '172.29.99.101', 4, 'Available'),
(5, '172.29.99.101', 5, 'Available'),
(6, '172.29.99.101', 6, 'Available'),
(7, '172.29.99.101', 7, 'Available'),
(8, '172.29.99.101', 8, 'Available'),
(9, '172.29.99.101', 9, 'Available'),
(10, '172.29.99.101', 10, 'Available'),
(11, '172.29.99.101', 11, 'Available'),
(12, '172.29.99.101', 12, 'Available'),
(13, '172.29.99.101', 13, 'Available'),
(14, '172.29.99.101', 14, 'Available'),
(15, '172.29.99.101', 15, 'Available'),
(16, '172.29.99.101', 16, 'Available'),
(17, '172.29.99.101', 17, 'Available'),
(18, '172.29.99.101', 18, 'Available'),
(19, '172.29.99.101', 19, 'Available'),
(20, '172.29.99.101', 20, 'Available'),
(21, '172.29.99.102', 1, 'Available'),
(22, '172.29.99.102', 2, 'Available'),
(23, '172.29.99.102', 3, 'Available'),
(24, '172.29.99.102', 4, 'Available'),
(25, '172.29.99.102', 5, 'Available'),
(26, '172.29.99.102', 6, 'Available'),
(27, '172.29.99.102', 7, 'Available'),
(28, '172.29.99.102', 8, 'Available'),
(29, '172.29.99.102', 9, 'Available'),
(30, '172.29.99.102', 10, 'Available'),
(31, '172.29.99.102', 11, 'Available'),
(32, '172.29.99.102', 12, 'Available'),
(33, '172.29.99.102', 13, 'Available'),
(34, '172.29.99.102', 14, 'Available'),
(35, '172.29.99.102', 15, 'Available'),
(36, '172.29.99.102', 16, 'Available'),
(37, '172.29.99.102', 17, 'Available'),
(38, '172.29.99.102', 18, 'Available'),
(39, '172.29.99.102', 19, 'Available'),
(40, '172.29.99.102', 20, 'Available'),
(41, '172.29.99.103', 1, 'Available'),
(42, '172.29.99.103', 2, 'Available'),
(43, '172.29.99.103', 3, 'Jack Chen'),
(44, '172.29.99.103', 4, 'Available'),
(45, '172.29.99.103', 5, 'Available'),
(46, '172.29.99.103', 6, 'Available'),
(47, '172.29.99.103', 7, 'Available'),
(48, '172.29.99.103', 8, 'Available'),
(49, '172.29.99.103', 9, 'Available'),
(50, '172.29.99.103', 10, 'Available'),
(51, '172.29.99.103', 11, 'Available'),
(52, '172.29.99.103', 12, 'Available'),
(53, '172.29.99.103', 13, 'Available'),
(54, '172.29.99.103', 14, 'Available'),
(55, '172.29.99.103', 15, 'Available'),
(56, '172.29.99.103', 16, 'Available'),
(57, '172.29.99.103', 17, 'Available'),
(58, '172.29.99.103', 18, 'Available'),
(59, '172.29.99.103', 19, 'Available'),
(60, '172.29.99.103', 20, 'Available'),
(61, '172.29.99.104', 1, 'Available'),
(62, '172.29.99.104', 2, 'Available'),
(63, '172.29.99.104', 3, 'Available'),
(64, '172.29.99.104', 4, 'Available'),
(65, '172.29.99.104', 5, 'Available'),
(66, '172.29.99.104', 6, 'Available'),
(67, '172.29.99.104', 7, 'Available'),
(68, '172.29.99.104', 8, 'Available'),
(69, '172.29.99.104', 9, 'Available'),
(70, '172.29.99.104', 10, 'Available'),
(71, '172.29.99.104', 11, 'Available'),
(72, '172.29.99.104', 12, 'Available'),
(73, '172.29.99.104', 13, 'Available'),
(74, '172.29.99.104', 14, 'Available'),
(75, '172.29.99.104', 15, 'Available'),
(76, '172.29.99.104', 16, 'Available'),
(77, '172.29.99.104', 17, 'Available'),
(78, '172.29.99.104', 18, 'Available'),
(79, '172.29.99.104', 19, 'Available'),
(80, '172.29.99.104', 20, 'Available'),
(81, '172.29.99.105', 1, 'Available'),
(82, '172.29.99.105', 2, 'Available'),
(83, '172.29.99.105', 3, 'Available'),
(84, '172.29.99.105', 4, 'Available'),
(85, '172.29.99.105', 5, 'Available'),
(86, '172.29.99.105', 6, 'Available'),
(87, '172.29.99.105', 7, 'Available'),
(88, '172.29.99.105', 8, 'Available'),
(89, '172.29.99.105', 9, 'Available'),
(90, '172.29.99.105', 10, 'Available'),
(91, '172.29.99.105', 11, 'Available'),
(92, '172.29.99.105', 12, 'Available'),
(93, '172.29.99.105', 13, 'Available'),
(94, '172.29.99.105', 14, 'Available'),
(95, '172.29.99.105', 15, 'Available'),
(96, '172.29.99.105', 16, 'Available'),
(97, '172.29.99.105', 17, 'Available'),
(98, '172.29.99.105', 18, 'Available'),
(99, '172.29.99.105', 19, 'Available'),
(100, '172.29.99.105', 20, 'Available'),
(101, '172.29.99.50', 1, 'Available'),
(102, '172.29.99.50', 2, 'Available'),
(103, '172.29.99.50', 3, 'Available'),
(104, '172.29.99.50', 4, 'Available'),
(105, '172.29.99.50', 5, 'Available'),
(106, '172.29.99.50', 6, 'Available'),
(107, '172.29.99.52', 1, 'Available'),
(108, '172.29.99.52', 2, 'Available'),
(109, '172.29.99.52', 3, 'Available'),
(110, '172.29.99.52', 4, 'Available'),
(111, '172.29.99.52', 5, 'Available'),
(112, '172.29.99.52', 6, 'Available'),
(113, '172.29.99.53', 1, 'Available'),
(114, '172.29.99.53', 2, 'Available'),
(115, '172.29.99.53', 3, 'Available'),
(116, '172.29.99.53', 4, 'Available'),
(117, '172.29.99.53', 5, 'Available'),
(118, '172.29.99.53', 6, 'Available'),
(119, '172.29.99.54', 1, 'Available'),
(120, '172.29.99.54', 2, 'Available'),
(121, '172.29.99.54', 3, 'Available'),
(122, '172.29.99.54', 4, 'Available'),
(123, '172.29.99.54', 5, 'Available'),
(124, '172.29.99.54', 6, 'Available'),
(125, '172.29.99.55', 1, 'Available'),
(126, '172.29.99.55', 2, 'Available'),
(127, '172.29.99.55', 3, 'Available'),
(128, '172.29.99.55', 4, 'Available'),
(129, '172.29.99.55', 5, 'Available'),
(130, '172.29.99.55', 6, 'Available'),
(131, '172.29.99.56', 1, 'Available'),
(132, '172.29.99.56', 2, 'Available'),
(133, '172.29.99.56', 3, 'Available'),
(134, '172.29.99.56', 4, 'Available'),
(135, '172.29.99.56', 5, 'Available'),
(136, '172.29.99.56', 6, 'Available'),
(137, '172.29.99.57', 1, 'Available'),
(138, '172.29.99.57', 2, 'Available'),
(139, '172.29.99.57', 3, 'Available'),
(140, '172.29.99.57', 4, 'Available'),
(141, '172.29.99.57', 5, 'Available'),
(142, '172.29.99.57', 6, 'Available'),
(143, '172.29.99.58', 1, 'Available'),
(144, '172.29.99.58', 2, 'Available'),
(145, '172.29.99.58', 3, 'Available'),
(146, '172.29.99.58', 4, 'Available'),
(147, '172.29.99.58', 5, 'Available'),
(148, '172.29.99.58', 6, 'Available'),
(149, '172.29.99.119', 1, 'Available'),
(150, '172.29.99.119', 2, 'Available'),
(151, '172.29.99.119', 3, 'Available'),
(152, '172.29.99.119', 4, 'Available'),
(153, '172.29.99.119', 5, 'Available'),
(154, '172.29.99.119', 6, 'Available'),
(155, '172.29.99.119', 7, 'Available'),
(156, '172.29.99.119', 8, 'Available'),
(157, '172.29.99.119', 9, 'Available'),
(158, '172.29.99.119', 10, 'Available'),
(159, '172.29.99.119', 11, 'Available'),
(160, '172.29.99.119', 12, 'Available');

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

CREATE TABLE `User` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(128) COLLATE utf8_bin NOT NULL,
  `Email` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `User`
--

INSERT INTO `User` (`ID`, `Name`, `Email`) VALUES
(1, 'Cheng, Ruliang', 'Ruliang.Cheng@coriant.com'),
(2, ' Cheng, Zhaoxiang', 'Zhaoxiang.Cheng@coriant.com'),
(3, ' He, Maoqi', 'maoqi.he@coriant.com'),
(4, ' Heng, Zhide', 'zhide.heng@coriant.com'),
(5, ' Kaikun, Luo', 'Luo.Kaikun@coriant.com'),
(6, ' Liang, Yong', 'Yong.Liang@coriant.com'),
(7, ' Liu, Geoff', 'Geoff.Liu@coriant.com'),
(8, ' Liu, Meng', 'meng.liu@coriant.com'),
(9, ' Liu, Rui', 'rui.liu@coriant.com'),
(10, ' Liu, Zhigang', 'zhigang.liu@coriant.com'),
(11, ' Ma, Dehuan', 'dehuan.ma@coriant.com'),
(12, ' Malsawmtluangi, Lucy', 'Lucy.Malsawmtluangi@coriant.com'),
(13, ' Ni, Peng', 'Peng.Ni@coriant.com'),
(14, ' Ni, Weiguo', 'weiguo.ni@coriant.com'),
(15, ' Pareta, Lokesh', 'Lokesh.Pareta@coriant.com'),
(16, ' Qin, Xiangyu', 'Xiangyu.Qin@coriant.com'),
(17, ' Rana, Rohit', 'Rohit.Rana@coriant.com'),
(18, ' Tong, Wenxing', 'Wenxing.Tong@coriant.com'),
(19, ' Wang, Xiaoqiang', 'Xiaoqiang.Wang@coriant.com'),
(20, ' Wang, Xinmei', 'xinmei.wang@coriant.com'),
(21, ' Wang, Yanfen', 'Yanfen.Wang@coriant.com'),
(22, ' Wang, Ying', 'arynn.wang@coriant.com'),
(23, ' Wei, Haiyang', 'Haiyang.Wei@coriant.com'),
(24, ' Wu, Chen', 'chen.wu@coriant.com'),
(25, ' Wu, Qi', 'Qi.Wu@coriant.com'),
(26, ' Xi, Tianrong', 'Tianrong.Xi@coriant.com'),
(27, ' Xia, Ji Sheng', 'jisheng.xia@coriant.com'),
(28, ' Xia, Walter (Sihua)', 'walter.xia@coriant.com'),
(29, ' Xiang, Yin', 'Yin.Xiang@coriant.com'),
(30, ' Xiao, Yan', 'Yan.Xiao@coriant.com'),
(31, ' Yu, Guangjie', 'Guangjie.Yu@coriant.com'),
(32, ' Zhen, Liwei', 'liwei.zhen@coriant.com'),
(33, ' Zhenbao, Bao', 'Bao.Zhenbao@coriant.com'),
(34, ' Zhou, Benny', 'Benny.Zhou@coriant.com'),
(35, ' Zhu, Baobao', 'Baobao.Zhu@coriant.com');

--
-- 转储表的索引
--

--
-- 表的索引 `DeviceIP`
--
ALTER TABLE `DeviceIP`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IP` (`IP`);

--
-- 表的索引 `Devices`
--
ALTER TABLE `Devices`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `DeviceUsage`
--
ALTER TABLE `DeviceUsage`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `DeviceIP`
--
ALTER TABLE `DeviceIP`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `Devices`
--
ALTER TABLE `Devices`
  MODIFY `ID` tinyint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `DeviceUsage`
--
ALTER TABLE `DeviceUsage`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- 使用表AUTO_INCREMENT `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
