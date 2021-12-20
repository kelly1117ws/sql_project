-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-12-20 12:45:03
-- 伺服器版本： 10.1.38-MariaDB
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `drinks`
--

-- --------------------------------------------------------

--
-- 資料表結構 `drinkdata`
--

CREATE TABLE `drinkdata` (
  `drink_id` int(11) NOT NULL,
  `drink_name` char(20) NOT NULL,
  `drink_cost` int(11) NOT NULL,
  `drink_type` char(20) NOT NULL,
  `Remark` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `drinkdata`
--

INSERT INTO `drinkdata` (`drink_id`, `drink_name`, `drink_cost`, `drink_type`, `Remark`) VALUES
(1, '文山包種', 20, '品好茶', NULL),
(2, '招牌青茶', 20, '品好茶', NULL),
(3, '普洱紅茶', 25, '品好茶', NULL),
(4, '桂花烏龍', 20, '品好茶', NULL),
(5, '大吉嶺紅茶', 20, '品好茶', NULL),
(6, '紅玉紅茶', 25, '品好茶', NULL),
(7, '茉莉香片', 20, '品好茶', NULL),
(8, '香桃茶心', 20, '品好茶', NULL),
(9, '龍井綠茶', 20, '品好茶', NULL),
(10, '龍眼蜜茶', 20, '懷舊口感', '固'),
(11, '烏梅洛神', 25, '懷舊口感', NULL),
(12, '稻香麥茶', 20, '懷舊口感', NULL),
(13, '檸檬洛神', 25, '懷舊口感', NULL),
(14, '冰糖冬瓜', 20, '懷舊口感', '固'),
(15, '冬瓜青茶', 25, '懷舊口感', '固'),
(16, '蜜香綠茶', 35, '特調口感', '固'),
(17, '百香QQ', 40, '特調口感', NULL),
(18, '蒙古烤奶', 45, '香醇鮮奶', '固'),
(19, '冬瓜拿鐵', 40, '香醇鮮奶', '固'),
(20, '大吉嶺拿鐵', 40, '香醇鮮奶', NULL),
(21, '巧克力拿鐵', 45, '香醇鮮奶', '固'),
(22, '手燒焦糖拿鐵', 45, '香醇鮮奶', '固'),
(23, '炒糖鮮奶霸', 50, '香醇鮮奶', '固'),
(24, '葡萄柚綠茶', 50, '鮮果茶', NULL),
(25, '冬瓜檸檬', 50, '鮮果茶', '固'),
(26, '檸檬汁', 50, '鮮果茶', '');

-- --------------------------------------------------------

--
-- 資料表結構 `drink_list`
--

CREATE TABLE `drink_list` (
  `drink_id_list` varchar(100) NOT NULL,
  `drink_name_list` varchar(100) NOT NULL,
  `cost_list` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `mid` int(11) NOT NULL,
  `m_name` char(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `drinkdata`
--
ALTER TABLE `drinkdata`
  ADD PRIMARY KEY (`drink_id`),
  ADD UNIQUE KEY `drink_name` (`drink_name`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
