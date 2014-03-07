-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2014 at 02:53 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yincart-basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_img`
--

CREATE TABLE IF NOT EXISTS `item_img` (
  `item_img_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Img ID',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item ID',
  `pic` varchar(255) NOT NULL COMMENT '图片url',
  `position` tinyint(3) unsigned NOT NULL COMMENT '图片位置',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`item_img_id`),
  KEY `fk_item_img_item1_idx` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `item_img`
--

INSERT INTO `item_img` (`item_img_id`, `item_id`, `pic`, `position`, `create_time`) VALUES
(5, 34, '/yincart/basic/upload/ad/20130429/2012111993237921778027.jpg', 0, 1388133496),
(6, 28, '/yincart/basic/upload/item/manclothes/T2b5C4XqtaXXXXXXXX_!!670955966.jpg', 0, 1390351634),
(7, 28, '/yincart/basic/upload/item/manclothes/T2Bvq5Xy4XXXXXXXXX_!!670955966.jpg', 1, 1390351634),
(8, 28, '/yincart/basic/upload/item/manclothes/T2keu4XtBaXXXXXXXX_!!670955966.jpg', 2, 1390351634),
(9, 28, '/yincart/basic/upload/item/manclothes/abc.jpg', 3, 1390351634),
(10, 31, '/yincart/basic/upload/item/manclothes/01.jpg', 0, 1388365633),
(12, 31, '/yincart/basic/upload/item/manclothes/02.jpg', 1, 1388365633),
(13, 31, '/yincart/basic/upload/item/manclothes/03.jpg', 2, 1388365633),
(14, 35, '/yincart/basic/upload/item/manclothes/T1vyPGFhxeXXXXXXXX_!!0-item_pic.jpg_460x460q90.jpg', 0, 1389326380),
(15, 35, '/yincart/basic/upload/item/manclothes/T20I8eXC4aXXXXXXXX_!!454291526.jpg_460x460.jpg', 1, 1389326380),
(16, 35, '/yincart/basic/upload/item/manclothes/T2s6OgXAlaXXXXXXXX_!!454291526.jpg_460x460.jpg', 2, 1389326380),
(17, 35, '/yincart/basic/upload/item/manclothes/T2UGNdXaxOXXXXXXXX_!!454291526.jpg_460x460.jpg', 3, 1389326380),
(18, 35, '/yincart/basic/upload/item/manclothes/T2wWGPXihbXXXXXXXX_!!454291526.jpg_460x460.jpg', 4, 1389326380),
(20, 39, '/yincart/basic/upload/item/manclothes/2001.jpg', 0, 1390457069),
(21, 37, '/yincart/basic/upload/item/manclothes/1015622205-1_u_1.jpg', 0, 0),
(23, 37, '/yincart/basic/upload/item/manclothes/1015622205-2_u_1.jpg', 1, 0),
(24, 37, '/yincart/basic/upload/item/manclothes/1015622205-3_u_1.jpg', 2, 0),
(25, 37, '/yincart/basic/upload/item/manclothes/1015622205-4_u_1.jpg', 3, 0),
(26, 38, '/yincart/basic/upload/item/manclothes/T2BcmrXutaXXXXXXXX-454291526.jpg', 0, 0),
(27, 38, '/yincart/basic/upload/item/manclothes/T2OBysXq0aXXXXXXXX-454291526.jpg', 1, 0),
(28, 38, '/yincart/basic/upload/item/manclothes/T2mL5ZXjhbXXXXXXXX-454291526.jpg', 2, 0),
(29, 38, '/yincart/basic/upload/item/manclothes/T2SjCoXtBXXXXXXXXX-454291526.jpg', 3, 0),
(30, 49, '/yincart/basic/upload/item/manclothes/1.jpg', 0, 0),
(31, 49, '/yincart/basic/upload/item/manclothes/2.jpg', 0, 0),
(32, 49, '/yincart/basic/upload/item/manclothes/3.jpg', 1, 0),
(33, 49, '/yincart/basic/upload/item/manclothes/4.jpg', 1, 0),
(34, 31, '/yincart/basic/upload/item/manclothes/04.jpg', 0, 0),
(35, 50, '/yincart/basic/upload/item/manclothes/11.jpeg', 0, 0),
(36, 50, '/yincart/basic/upload/item/manclothes/12.jpeg', 0, 0),
(38, 50, '/yincart/basic/upload/item/manclothes/13.jpeg', 0, 0),
(39, 50, '/yincart/basic/upload/item/manclothes/14.jpg', 3, 0),
(41, 52, '/yincart/basic/upload/item/manclothes/21.jpg', 0, 0),
(42, 52, '/yincart/basic/upload/item/manclothes/22.jpeg', 1, 0),
(43, 52, '/yincart/basic/upload/item/manclothes/23.jpeg', 2, 0),
(44, 52, '/yincart/basic/upload/item/manclothes/24.jpg', 3, 0),
(45, 53, '/yincart/basic/upload/item/manclothes/31.jpg', 0, 0),
(46, 53, '/yincart/basic/upload/item/manclothes/32.jpeg', 1, 0),
(47, 53, '/yincart/basic/upload/item/manclothes/33.jpg', 2, 0),
(48, 53, '/yincart/basic/upload/item/manclothes/34.jpg', 3, 0),
(50, 57, '/yincart/basic/upload/item/manclothes/gi1.jpg', 0, 0),
(51, 57, '/yincart/basic/upload/item/manclothes/gi2.jpg', 1, 0),
(52, 57, '/yincart/basic/upload/item/manclothes/gi3.jpg', 2, 0),
(53, 57, '/yincart/basic/upload/item/manclothes/gi4.jpg', 3, 0),
(54, 58, '/yincart/basic/upload/item/manclothes/vi1.jpg', 0, 0),
(55, 58, '/yincart/basic/upload/item/manclothes/vi2.jpg', 1, 0),
(56, 58, '/yincart/basic/upload/item/manclothes/vi3.jpg', 2, 0),
(57, 58, '/yincart/basic/upload/item/manclothes/vi4.jpg', 3, 0),
(59, 59, '/yincart/basic/upload/item/manclothes/i.jpg', 0, 0),
(60, 59, '/yincart/basic/upload/item/manclothes/ii.jpg', 1, 0),
(61, 59, '/yincart/basic/upload/item/manclothes/iii.jpg', 2, 0),
(62, 59, '/yincart/basic/upload/item/manclothes/iiii.jpg', 3, 0),
(63, 43, '/yincart/basic/upload/item/manclothes/wi1.jpg', 0, 0),
(64, 43, '/yincart/basic/upload/item/manclothes/wi2.jpg', 1, 0),
(65, 43, '/yincart/basic/upload/item/manclothes/wi3.jpg', 2, 0),
(66, 43, '/yincart/basic/upload/item/manclothes/wi4.jpg', 3, 0),
(67, 44, '/yincart/basic/upload/item/manclothes/xi1.jpg', 0, 0),
(68, 44, '/yincart/basic/upload/item/manclothes/xi2.jpg', 1, 0),
(69, 44, '/yincart/basic/upload/item/manclothes/xi3.jpg', 2, 0),
(70, 44, '/yincart/basic/upload/item/manclothes/xi4.jpg', 3, 0),
(71, 45, '/yincart/basic/upload/item/manclothes/yi1.jpg', 0, 0),
(72, 45, '/yincart/basic/upload/item/manclothes/yi2.jpg', 1, 0),
(73, 45, '/yincart/basic/upload/item/manclothes/yi3.jpg', 2, 0),
(74, 45, '/yincart/basic/upload/item/manclothes/yi4.jpg', 3, 0),
(75, 46, '/yincart/basic/upload/item/manclothes/zi1.jpg', 0, 0),
(76, 46, '/yincart/basic/upload/item/manclothes/zi2.jpg', 1, 0),
(77, 46, '/yincart/basic/upload/item/manclothes/zi3.jpg', 2, 0),
(78, 46, '/yincart/basic/upload/item/manclothes/zi4.jpg', 3, 0),
(79, 47, '/yincart/basic/upload/item/manclothes/001.jpg', 0, 0),
(80, 47, '/yincart/basic/upload/item/manclothes/002.jpg', 1, 0),
(81, 47, '/yincart/basic/upload/item/manclothes/003.jpg', 2, 0),
(82, 47, '/yincart/basic/upload/item/manclothes/004.jpg', 3, 0),
(83, 48, '/yincart/basic/upload/item/manclothes/111.jpg', 0, 0),
(84, 48, '/yincart/basic/upload/item/manclothes/112.jpg', 1, 0),
(85, 48, '/yincart/basic/upload/item/manclothes/113.jpg', 2, 0),
(86, 48, '/yincart/basic/upload/item/manclothes/114.jpg', 3, 0),
(87, 40, '/yincart/basic/upload/item/manclothes/301.jpg', 0, 0),
(88, 40, '/yincart/basic/upload/item/manclothes/302.jpg', 1, 0),
(89, 40, '/yincart/basic/upload/item/manclothes/304.jpg', 3, 0),
(90, 40, '/yincart/basic/upload/item/manclothes/303.jpg', 2, 0),
(91, 41, '/yincart/basic/upload/item/manclothes/401.jpg', 0, 0),
(92, 41, '/yincart/basic/upload/item/manclothes/402.jpg', 1, 0),
(93, 41, '/yincart/basic/upload/item/manclothes/403.jpg', 2, 0),
(94, 41, '/yincart/basic/upload/item/manclothes/404.jpg', 3, 0),
(95, 42, '/yincart/basic/upload/item/manclothes/501.jpg', 0, 0),
(96, 42, '/yincart/basic/upload/item/manclothes/502.jpg', 1, 0),
(97, 41, '/yincart/basic/upload/item/manclothes/503.jpg', 2, 0),
(98, 42, '/yincart/basic/upload/item/manclothes/504.jpg', 3, 0),
(99, 42, '/yincart/basic/upload/item/manclothes/503.jpg', 2, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_img`
--
ALTER TABLE `item_img`
  ADD CONSTRAINT `fk_item_img_item1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
