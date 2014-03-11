-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2014 at 08:38 AM
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
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `category_id` int(10) unsigned NOT NULL COMMENT 'Category ID',
  `outer_id` varchar(45) DEFAULT NULL,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `min_number` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最少订货量',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `currency` varchar(20) NOT NULL COMMENT '币种',
  `props` longtext NOT NULL COMMENT '商品属性 格式：pid:vid;pid:vid',
  `props_name` longtext NOT NULL COMMENT '商品属性名称。标识着props内容里面的pid和vid所对应的名称。格式为：pid1:vid1:pid_name1:vid_name1;pid2:vid2:pid_name2:vid_name2……(注：属性名称中的冒号":"被转换为："#cln#"; 分号";"被转换为："#scln#" )',
  `desc` longtext NOT NULL COMMENT '描述',
  `shipping_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否促销',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热销',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否精品',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `wish_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `review_count` int(10) NOT NULL,
  `deal_count` int(10) NOT NULL,
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `language` varchar(45) NOT NULL,
  `country` int(10) unsigned NOT NULL,
  `state` int(10) unsigned NOT NULL,
  `city` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_item_category1_idx` (`category_id`),
  KEY `fk_item_area1_idx` (`country`),
  KEY `fk_item_area2_idx` (`state`),
  KEY `fk_item_area3_idx` (`city`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `category_id`, `outer_id`, `title`, `stock`, `min_number`, `price`, `currency`, `props`, `props_name`, `desc`, `shipping_fee`, `is_show`, `is_promote`, `is_new`, `is_hot`, `is_best`, `click_count`, `wish_count`, `review_count`, `deal_count`, `create_time`, `update_time`, `language`, `country`, `state`, `city`) VALUES
(31, 110, '123456', '2012进口面料新品柔倍尔 天丝磨毛面料 四件套', 1000, 1, '123.00', '$', '{"1":"1:1","2":["2:5","2:6"],"3":["3:8","3:9"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:XL","\\u5c3a\\u5bf8:XXL"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ec4\\u8272","\\u989c\\u8272:\\u84dd\\u8272"]}', '<p>sadfasdfxczxczxc</p>\r\n', '0.01', 1, 1, 1, 1, 1, 508, 0, 0, 1, 1388133378, 1394437507, 'zh_cn', 100000, 130000, 130700),
(35, 129, '123456789', 'GXG男士长款大衣', 123, 1, '1299.00', '￥', '{"4":["4:10","4:11"],"5":["5:16","5:17"],"6":["6:20","6:21"],"7":["7:22","7:23"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:GXG","\\u54c1\\u724c:gxg.jeans"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:L","\\u5c3a\\u5bf8:XL"],"\\u989c\\u8272":["\\u989c\\u8272:\\u767d\\u8272","\\u989c\\u8272:\\u7c73\\u8272"],"test":["test:1","test:2"]}', '<p>22222</p>\r\n', '0.01', 1, 1, 1, 1, 1, 384, 0, 0, 5, 1388394491, 1394010168, 'zh_cn', 100000, 220000, 220500),
(37, 129, '', 'GXG男士长款大衣2', 10000, 1, '243.00', '$', '{"4":["4:10","4:11","4:12"],"5":["5:15","5:16"],"6":["6:19","6:20"],"7":["7:23"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:GXG","\\u54c1\\u724c:gxg.jeans","\\u54c1\\u724c:jackjones"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M","\\u5c3a\\u5bf8:L"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ed1\\u8272","\\u989c\\u8272:\\u767d\\u8272"],"test":["test:2"]}', '<p>哦哈哈哈哈哈哈哈哈</p>\r\n', '0.00', 1, 1, 1, 1, 1, 10, 0, 0, 4, 1390455802, 1394438066, 'zh_cn', 100000, 130000, 130700),
(38, 129, '', 'GXG男士长款大衣3', 10000, 1, '1299.00', '$', '{"4":["4:10","4:11","4:14"],"5":["5:15"],"6":["6:19"],"7":["7:22"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:GXG","\\u54c1\\u724c:gxg.jeans","\\u54c1\\u724c:\\u96c5\\u6208\\u5c14"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ed1\\u8272"],"\\u9886\\u5e26":["\\u9886\\u5e26:1"]}', '<p>按时打算</p>\r\n', '5.00', 1, 1, 1, 1, 1, 12, 0, 0, 1, 1390456979, 1394439707, 'zh_cn', 100000, 110000, 110100),
(39, 129, '', 'GXG男士长款大衣4', 10000, 1, '243.00', '$', '{"4":["4:10","4:11"],"5":["5:15","5:16"],"6":["6:20","6:21"],"7":["7:23"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:GXG","\\u54c1\\u724c:gxg.jeans"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M","\\u5c3a\\u5bf8:L"],"\\u989c\\u8272":["\\u989c\\u8272:\\u767d\\u8272","\\u989c\\u8272:\\u7c73\\u8272"],"\\u9886\\u5e26":["\\u9886\\u5e26:2"]}', '<p>141</p>\r\n', '0.00', 1, 1, 1, 1, 1, 12, 0, 0, 2, 1390457069, 1394438033, 'zh_cn', 100000, 420000, 429006),
(40, 129, '', 'GXG男士长款大衣5', 10000, 1, '1299.00', '$', '{"4":["4:10"],"5":["5:15"],"6":["6:19"],"7":["7:22"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:GXG"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ed1\\u8272"],"\\u9886\\u5e26":["\\u9886\\u5e26:1"]}', '<p>1</p>\r\n', '0.00', 1, 1, 1, 1, 1, 1, 0, 0, 1, 1390457291, 1394438055, 'zh_cn', 100000, 120000, 120100),
(41, 129, '', 'GXG男士长款大衣6', 10000, 1, '123.00', '$', '{"4":["4:11"],"5":["5:16"],"6":["6:20"],"7":["7:23"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:gxg.jeans"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:L"],"\\u989c\\u8272":["\\u989c\\u8272:\\u767d\\u8272"],"\\u9886\\u5e26":["\\u9886\\u5e26:2"]}', '<p>312</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 1, 1390457329, 1394439707, 'zh_cn', 100000, 420000, 429006),
(42, 129, '', 'GXG男士长款大衣7', 10000, 1, '1123.00', '$', '{"4":["4:12"],"5":["5:18"],"6":["6:21"],"7":["7:23"]}', '{"\\u54c1\\u724c":["\\u54c1\\u724c:jackjones"],"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:XXL"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7c73\\u8272"],"\\u9886\\u5e26":["\\u9886\\u5e26:2"]}', '<p>1234</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 1, 1390457367, 1394437981, 'zh_cn', 100000, 110000, 110100),
(43, 130, '', '女士大衣', 10000, 1, '12354.00', '$', '[]', '[]', '<p>uioyu</p>\r\n', '0.00', 1, 1, 1, 1, 1, 11, 0, 0, 0, 1390457554, 1394071683, 'zh_cn', 100000, 420000, 429005),
(44, 130, '', '女士大衣2', 10000, 1, '243.00', '$', '{"8":["8:24","8:25"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:X","\\u5c3a\\u5bf8:XL"]}', '<p>sdf</p>\r\n', '0.00', 0, 0, 0, 0, 0, 2, 0, 0, 0, 1390457903, 1394071473, 'zh_cn', 100000, 430000, 431300),
(45, 130, '', '女士大衣2', 10000, 1, '243.00', '$', '{"8":["8:24","8:25"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:X","\\u5c3a\\u5bf8:XL"]}', '<p>asda</p>\r\n', '0.00', 1, 1, 1, 1, 1, 11, 0, 0, 0, 1390457981, 1394071586, 'zh_cn', 100000, 420000, 421100),
(46, 130, '', '女士大衣3', 10000, 1, '1299.00', '$', '{"8":["8:24"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:X"]}', '<p>we</p>\r\n', '0.00', 1, 1, 1, 1, 1, 3, 0, 0, 0, 1390458029, 1394071688, 'zh_cn', 100000, 110000, 110100),
(47, 130, '', '女士大衣4', 10000, 1, '243.00', '$', '{"8":["8:24"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:X"]}', '<p>啊</p>\r\n', '0.00', 1, 1, 1, 1, 1, 1, 0, 0, 0, 1390458065, 1392800468, 'zh_cn', 100000, 420000, 429021),
(48, 130, '', '女士大衣5', 10000, 1, '1299.00', '$', '{"8":["8:25"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:XL"]}', '<p>收到发送到</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458106, 1390458106, 'zh_cn', 100000, 430000, 431200),
(49, 110, '', '天丝磨毛面料 四件套1', 10000, 1, '1299.00', '$', '{"1":"1:2","2":["2:3","2:4"],"3":["3:8"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:jackjones","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M","\\u5c3a\\u5bf8:L"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ec4\\u8272"]}', '<p>fds</p>\r\n', '0.00', 1, 1, 1, 1, 1, 9, 0, 0, 1, 1390458341, 1394437927, 'zh_cn', 100000, 120000, 120100),
(50, 110, '', '2012四件套', 10000, 1, '110.00', '$', '{"1":"1:2","2":["2:3"],"3":["3:7"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:jackjones","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7ea2\\u8272"]}', '<p>czxcds</p>\r\n', '0.00', 1, 1, 1, 1, 1, 4, 0, 0, 0, 1390458577, 1393835725, 'zh_cn', 100000, 130000, 130200),
(51, 112, '', '2012四件套2', 10000, 1, '1299.00', '$', '{"9":["9:26"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:X"]}', '<p>eqweq</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458653, 1390458653, 'zh_cn', 100000, 110000, 110100),
(52, 110, '', '2012四件套3', 10000, 1, '243.00', '$', '{"1":"1:1","2":["2:5"],"3":["3:7"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:GXG","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:XL"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7ea2\\u8272"]}', '<p>sdwas</p>\r\n', '0.00', 1, 1, 1, 1, 1, 3, 0, 0, 0, 1390458724, 1392800159, 'zh_cn', 100000, 150000, 150400),
(53, 110, '', '2012四件套4', 10000, 1, '1123.00', '$', '{"1":"1:1","2":["2:3"],"3":["3:7"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:GXG","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7ea2\\u8272"]}', '<p>dsadw</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458756, 1390458756, 'zh_cn', 100000, 130000, 130500),
(54, 110, '', '2012四件套5', 10000, 1, '243.00', '$', '{"1":"1:1","2":["2:3"],"3":["3:7"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:GXG","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7ea2\\u8272"]}', '<p>dasd</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458809, 1390458809, 'zh_cn', 100000, 230000, 230200),
(55, 110, '', '2012四件套6', 10000, 1, '243.00', '$', '{"1":"1:1","2":["2:5"],"3":["3:8"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:GXG","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:XL"],"\\u989c\\u8272":["\\u989c\\u8272:\\u9ec4\\u8272"]}', '<p>rwerwe</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458840, 1390458840, 'zh_cn', 100000, 120000, 120100),
(56, 110, '', '2012四件套7', 10000, 1, '243.00', '$', '{"1":"1:1","2":["2:3"],"3":["3:7"]}', '{"\\u54c1\\u724c":"\\u54c1\\u724c:GXG","\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:M"],"\\u989c\\u8272":["\\u989c\\u8272:\\u7ea2\\u8272"]}', '<p>eqweqwe</p>\r\n', '0.00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 1390458904, 1390458904, 'zh_cn', 100000, 120000, 120100),
(57, 111, '', '枕头1号', 10000, 1, '1299.00', '$', '{"10":["10:28"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:18cm"]}', '<p>121</p>\r\n', '0.00', 1, 1, 1, 1, 1, 8, 0, 0, 1, 1390460239, 1394070654, 'zh_cn', 100000, 110000, 110100),
(58, 111, '', '枕头1号2', 10000, 1, '1299.00', '$', '{"10":["10:29"]}', '{"\\u5c3a\\u5bf8":["\\u5c3a\\u5bf8:50cm"]}', '<p>trete</p>\r\n', '0.00', 1, 1, 1, 1, 1, 6, 0, 0, 0, 1390460360, 1394070660, 'zh_cn', 100000, 360000, 360300),
(59, 126, '', 'XX手机', 10000, 1, '1299.00', '$', '{"11":["11:30","11:31"]}', '{"\\u5206\\u8fa8\\u7387":["\\u5206\\u8fa8\\u7387:1200x800","\\u5206\\u8fa8\\u7387:780x400"]}', '<p>sadasd</p>\r\n', '0.00', 1, 1, 1, 1, 1, 12, 0, 0, 0, 1390460489, 1393905205, 'zh_cn', 100000, 360000, 360300),
(61, 127, '', 'Lenovo Y720', 300, 1, '5600.00', '$', '[]', '[]', '<p>egwes</p>\r\n', '0.00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1394440450, 1394440450, 'zh_cn', 100000, 360000, 360400);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_area1` FOREIGN KEY (`country`) REFERENCES `area` (`area_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_area2` FOREIGN KEY (`state`) REFERENCES `area` (`area_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_area3` FOREIGN KEY (`city`) REFERENCES `area` (`area_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
