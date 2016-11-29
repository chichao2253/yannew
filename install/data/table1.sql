-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 07 月 15 日 17:29
-- 服务器版本: 5.5.40
-- PHP 版本: 5.4.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `table`
--

-- --------------------------------------------------------

--
-- 表的结构 `bao_activity`
--

CREATE TABLE IF NOT EXISTS `bao_activity` (
  `activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT '0',
  `shop_id` int(10) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `area_id` smallint(5) unsigned DEFAULT '0',
  `business_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `thumb` text,
  `details` text,
  `price` decimal(32,0) DEFAULT NULL,
  `bg_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `sign_end` date DEFAULT NULL,
  `addr` varchar(1024) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `audit` tinyint(2) DEFAULT '0',
  `closed` tinyint(2) DEFAULT '0',
  `sign_num` int(10) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `template` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_activity_cate`
--

CREATE TABLE IF NOT EXISTS `bao_activity_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` tinyint(3) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_activity_sign`
--

CREATE TABLE IF NOT EXISTS `bao_activity_sign` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ad`
--

CREATE TABLE IF NOT EXISTS `bao_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` smallint(6) DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `code` varchar(1024) DEFAULT NULL,
  `bg_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_admin`
--

CREATE TABLE IF NOT EXISTS `bao_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `role_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ad_site`
--

CREATE TABLE IF NOT EXISTS `bao_ad_site` (
  `site_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(32) DEFAULT NULL,
  `site_name` varchar(64) DEFAULT NULL,
  `site_type` tinyint(1) DEFAULT NULL,
  `site_place` smallint(5) DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `bao_ad_site`
--

INSERT INTO `bao_ad_site` (`site_id`, `theme`, `site_name`, `site_type`, `site_place`) VALUES
(1, 'default', 'PC首页轮播图片广告位', 2, 1),
(2, 'default', 'PC首页优惠券顶部图片广告位', 2, 1),
(3, 'default', 'PC活动首页轮播图片广告位', 2, 3),
(4, 'default', 'PC上门服务图片广告位', 2, 4),
(5, 'default', 'PC同城优购主页图片广告位', 2, 5),
(6, 'default', 'PC同城优购优惠专区左侧图片广告位', 2, 5),
(7, 'default', 'PC同城优购优惠专区右侧图片广告位', 2, 5),
(8, 'default', 'PC同城优购主页1楼图片广告', 2, 5),
(9, 'default', 'PC同城优购主页2楼图片广告', 2, 5),
(10, 'default', 'PC同城优购主页3楼图片广告', 2, 5),
(11, 'default', 'PC同城优购主页4楼图片广告', 2, 5),
(12, 'default', 'PC同城优购主页5楼图片广告', 2, 5),
(13, 'default', 'PC同城优购主页6楼图片广告', 2, 5),
(14, 'default', 'PC外卖首页轮播图片广告位', 2, 6),
(15, 'default', 'PC订座首页右侧轮播图片广告', 2, 7),
(16, 'default', 'PC订座列表右侧轮播图片广告', 2, 7),
(17, 'default', 'PC订座新单右侧轮播图片广告', 2, 7),
(18, 'default', 'PC订座热门右侧轮播图片广告', 2, 7),
(19, 'default', 'PC同城信息主页头部轮播图片广告位', 2, 8),
(20, 'default', 'PC同城信息主页右侧轮播图片广告位', 2, 8),
(21, 'default', 'PC同城信息主页底部轮播图片广告位', 2, 8),
(22, 'default', 'PC同城信息首页右侧轮播图片广告位', 2, 8),
(23, 'default', 'PC优惠券首页轮播图片广告位', 2, 9),
(24, 'default', 'PC积分商城首页轮播图片广告位', 2, 11),
(25, 'default', 'PC专题1首页图片广告位', 2, 13),
(26, 'default', 'PC专题2首页图片广告位', 2, 13),
(27, 'default', 'PC专题3首页图片广告位', 2, 13),
(28, 'default', 'PC专题4首页图片广告位', 2, 13),
(29, 'default', 'PC专题5首页图片广告位', 2, 13),
(30, 'default', '手机同城优购首页轮播广告位', 2, 18),
(31, 'default', '手机家政首页图片广告位', 2, 19),
(32, 'default', '手机优惠券首页轮播图片广告位', 2, 23),
(33, 'default', '手机社区详情页轮播图片广告位', 2, 24),
(34, 'default', '手机卖场首页轮播图片广告位', 2, 25),
(35, 'default', '手机微店列表页轮播图片广告位', 2, 29),
(36, 'default', '手机附近工作图片广告位', 2, 32),
(37, 'default', '手机APP首页轮播图片广告位', 2, 33),
(38, 'default', 'PC首页活动图片广告位', 2, 1),
(39, 'default', '手机首页轮播图片广告位', 2, 14),
(40, 'default', '手机社区通告页面图片轮播广告位', 2, 24),
(41, 'default', 'PC贴吧首页和详情页轮播图片广告位', 2, 34),
(42, 'default', 'PC新闻首页轮播广告位', 2, 35),
(43, 'default', 'PC一元云购首页轮播广告位', 2, 36),
(44, 'default', '新模板PC抢购左', 2, 2),
(45, 'default', '新模板PC抢购右', 2, 2),
(46, 'default', 'PC首页本地商城左侧图片广告位', 2, 1),
(47, 'default', 'PC首页外卖左侧图片广告位', 2, 1),
(48, 'default', 'PC首页外卖中间图片轮播广告位', 2, 1),
(49, 'default', '手机订座首页轮播广告位', 2, 21),
(50, 'default', 'PC部落首页轮播广告位', 2, 37),
(51, 'default', '手机头条轮播平台资讯广告位', 2, 38),
(52, 'default', '手机部落话题详情页面图片广告位', 2, 39),
(53, 'default', '手机头条轮播商家新闻广告位', 2, 38);

-- --------------------------------------------------------

--
-- 表的结构 `bao_app_user`
--

CREATE TABLE IF NOT EXISTS `bao_app_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `app_type` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_area`
--

CREATE TABLE IF NOT EXISTS `bao_area` (
  `area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT '0',
  `area_name` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_around`
--

CREATE TABLE IF NOT EXISTS `bao_around` (
  `around_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `name` varchar(128) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`around_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_article`
--

CREATE TABLE IF NOT EXISTS `bao_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT '0',
  `source` varchar(32) DEFAULT NULL,
  `keywords` varchar(256) DEFAULT NULL,
  `desc` varchar(256) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `details` text,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_article_cate`
--

CREATE TABLE IF NOT EXISTS `bao_article_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_award`
--

CREATE TABLE IF NOT EXISTS `bao_award` (
  `award_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `type` enum('shark','scratch','lottery') DEFAULT NULL,
  `explain` varchar(1024) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_award_goods`
--

CREATE TABLE IF NOT EXISTS `bao_award_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `award_name` varchar(32) DEFAULT NULL,
  `goods_name` varchar(64) DEFAULT NULL,
  `prob` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `surplus` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `award_id` (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_award_share`
--

CREATE TABLE IF NOT EXISTS `bao_award_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `is_used` tinyint(4) DEFAULT '0',
  `ip` varchar(15) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`,`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_award_winning`
--

CREATE TABLE IF NOT EXISTS `bao_award_winning` (
  `winning_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `goods_id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `randstr` varchar(6) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`winning_id`),
  KEY `award_id` (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_billboard`
--

CREATE TABLE IF NOT EXISTS `bao_billboard` (
  `list_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `cate_id` int(10) DEFAULT NULL,
  `looknum` int(11) DEFAULT '0',
  `orderby` int(10) DEFAULT '100',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT NULL,
  `is_chose` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_bill_cate`
--

CREATE TABLE IF NOT EXISTS `bao_bill_cate` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(128) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `photo` varchar(128) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_bill_shop`
--

CREATE TABLE IF NOT EXISTS `bao_bill_shop` (
  `bill_id` int(10) NOT NULL AUTO_INCREMENT,
  `list_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `votenum` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_bill_vote`
--

CREATE TABLE IF NOT EXISTS `bao_bill_vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bill_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_breaks_order`
--

CREATE TABLE IF NOT EXISTS `bao_breaks_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `amount` decimal(8,2) DEFAULT '0.00',
  `exception` decimal(8,2) DEFAULT '0.00',
  `need_pay` decimal(8,2) DEFAULT '0.00',
  `status` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_business`
--

CREATE TABLE IF NOT EXISTS `bao_business` (
  `business_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(32) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`business_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_city`
--

CREATE TABLE IF NOT EXISTS `bao_city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `pinyin` varchar(32) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `theme` varchar(32) DEFAULT 'default',
  `orderby` tinyint(3) DEFAULT '100',
  `first_letter` char(1) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bao_city`
--

INSERT INTO `bao_city` (`city_id`, `name`, `pinyin`, `is_open`, `lng`, `lat`, `theme`, `orderby`, `first_letter`) VALUES
(1, '合肥', 'hefei', 1, '117.235384', '31.826939', 'default', 1, 'H'),
(2, '安庆', 'anqing', 0, '117.070091', '30.548547', 'newthree', 2, 'A'),
(3, '上海', 'shanghai', 1, '121.48074', '31.236629', 'newone', 3, 'S'),
(4, '北京', 'beijing', 1, '', '', 'default', 100, 'B');

-- --------------------------------------------------------

--
-- 表的结构 `bao_cloud_goods`
--

CREATE TABLE IF NOT EXISTS `bao_cloud_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `title` varchar(64) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `details` text,
  `join` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `max` int(10) DEFAULT '0',
  `settlement_price` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  `thumb` text,
  `status` tinyint(4) DEFAULT '0',
  `win_user_id` int(10) DEFAULT '0',
  `win_number` int(10) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `lottery_time` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  `adress` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_cloud_logs`
--

CREATE TABLE IF NOT EXISTS `bao_cloud_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `microtime` varchar(3) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community`
--

CREATE TABLE IF NOT EXISTS `bao_community` (
  `community_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `property` varchar(128) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(4) DEFAULT '100',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`community_id`),
  KEY `city_id` (`city_id`,`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_ad`
--

CREATE TABLE IF NOT EXISTS `bao_community_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `title` varchar(64) DEFAULT '',
  `link_url` varchar(128) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `orderby` tinyint(1) DEFAULT '100',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_news`
--

CREATE TABLE IF NOT EXISTS `bao_community_news` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `details` text,
  `views` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_order`
--

CREATE TABLE IF NOT EXISTS `bao_community_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `order_date` char(7) DEFAULT '2015-10',
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_order_logs`
--

CREATE TABLE IF NOT EXISTS `bao_community_order_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `money` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_order_products`
--

CREATE TABLE IF NOT EXISTS `bao_community_order_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
  `money` int(10) DEFAULT '0',
  `bg_date` char(10) DEFAULT NULL,
  `end_date` char(10) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_community_owner`
--

CREATE TABLE IF NOT EXISTS `bao_community_owner` (
  `owner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `name` varchar(32) DEFAULT '',
  `number` int(10) DEFAULT '0',
  `location` varchar(64) DEFAULT '',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_connect`
--

CREATE TABLE IF NOT EXISTS `bao_connect` (
  `connect_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('weibo','test','weixin','qq') DEFAULT 'qq',
  `open_id` varchar(32) DEFAULT NULL,
  `wx_unionid` varchar(100) DEFAULT NULL,
  `token` varchar(512) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`connect_id`),
  UNIQUE KEY `type` (`type`,`open_id`),
  KEY `wx_unionid` (`wx_unionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_convenient_phone`
--

CREATE TABLE IF NOT EXISTS `bao_convenient_phone` (
  `phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `orderby` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_convenient_phone_maps`
--

CREATE TABLE IF NOT EXISTS `bao_convenient_phone_maps` (
  `phone_id` int(11) DEFAULT NULL,
  `community_id` smallint(6) DEFAULT NULL,
  UNIQUE KEY `phone_id` (`phone_id`,`community_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_coupon`
--

CREATE TABLE IF NOT EXISTS `bao_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` smallint(6) DEFAULT NULL,
  `city_id` smallint(6) DEFAULT '0',
  `area_id` smallint(6) DEFAULT '0',
  `business_id` smallint(6) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `downloads` int(11) DEFAULT '0',
  `intro` varchar(1024) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `num` int(11) DEFAULT '9999999',
  `limit_num` tinyint(3) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `cate_id` (`cate_id`,`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_coupon_download`
--

CREATE TABLE IF NOT EXISTS `bao_coupon_download` (
  `download_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `mobile` char(11) DEFAULT NULL,
  `code` char(8) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `branch_id` int(11) DEFAULT '0',
  `used_time` int(11) DEFAULT NULL,
  `used_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`download_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_delivery`
--

CREATE TABLE IF NOT EXISTS `bao_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL,
  `uid` int(10) NOT NULL,
  `idcardpic` varchar(150) DEFAULT NULL,
  `idcardpic2` varchar(150) DEFAULT NULL,
  `idcardpic3` varchar(150) DEFAULT NULL,
  `audit` int(5) DEFAULT '0',
  `city_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_delivery_cashlog`
--

CREATE TABLE IF NOT EXISTS `bao_delivery_cashlog` (
  `cashlog_id` int(50) NOT NULL,
  `delivery_id` int(50) NOT NULL,
  `money` int(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`cashlog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_delivery_order`
--

CREATE TABLE IF NOT EXISTS `bao_delivery_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `type_order_id` int(10) unsigned NOT NULL,
  `delivery_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `city_id` int(10) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_addr` varchar(64) NOT NULL DEFAULT '',
  `shop_mobile` varchar(64) DEFAULT '',
  `user_name` varchar(64) NOT NULL DEFAULT '',
  `user_addr` varchar(64) NOT NULL DEFAULT '',
  `user_mobile` varchar(11) DEFAULT '',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL,
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele`
--

CREATE TABLE IF NOT EXISTS `bao_ele` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(64) DEFAULT NULL,
  `city_id` smallint(5) unsigned DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `cate` varchar(64) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  `is_pay` tinyint(1) DEFAULT '0',
  `is_fan` tinyint(1) DEFAULT '0',
  `fan_money` int(10) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `full_money` int(10) DEFAULT '0',
  `new_money` int(10) DEFAULT '0',
  `logistics` int(10) DEFAULT '0',
  `since_money` int(10) DEFAULT NULL,
  `sold_num` int(10) DEFAULT NULL,
  `month_num` int(10) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `distribution` tinyint(3) DEFAULT '30',
  `audit` tinyint(3) unsigned DEFAULT '0',
  `rate` int(11) DEFAULT '60',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_cate`
--

CREATE TABLE IF NOT EXISTS `bao_ele_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cate_name` varchar(32) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`cate_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_ele_dianping` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `speed` tinyint(3) unsigned DEFAULT '0',
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_dianping_pics`
--

CREATE TABLE IF NOT EXISTS `bao_ele_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_order`
--

CREATE TABLE IF NOT EXISTS `bao_ele_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `addr_id` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `logistics` int(11) DEFAULT '0',
  `need_pay` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `new_money` int(11) DEFAULT '0',
  `fan_money` int(11) DEFAULT '0',
  `settlement_price` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `is_pay` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `audit_time` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `month` int(11) DEFAULT '201501',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_order_product`
--

CREATE TABLE IF NOT EXISTS `bao_ele_order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_ele_product`
--

CREATE TABLE IF NOT EXISTS `bao_ele_product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(32) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `settlement_price` int(11) unsigned DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT '0',
  `is_hot` tinyint(1) DEFAULT '0',
  `is_tuijian` tinyint(1) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `month_num` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_email`
--

CREATE TABLE IF NOT EXISTS `bao_email` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_key` varchar(32) DEFAULT NULL,
  `email_explain` varchar(1024) DEFAULT NULL,
  `email_tmpl` text,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_key` (`email_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bao_email`
--

INSERT INTO `bao_email` (`email_id`, `email_key`, `email_explain`, `email_tmpl`, `is_open`) VALUES
(1, 'email_rz', '邮件认证模版支持标签：\r\n{link}', '<p>尊敬的用户：</p><p>&nbsp; &nbsp; &nbsp;您复制以下链接即可完成邮件认证！</p><p>&nbsp; &nbsp; &nbsp;{link}</p><p>&nbsp; &nbsp; &nbsp;成为认证客户后可以申请更多的推广机会！</p><p>&nbsp; &nbsp; &nbsp;<strong>{sitename}</strong>祝您在本平台获得更多客户！客服联系电话：{tel}</p>', 1),
(2, 'email_newpwd', '找回密码：\r\n1、{newpwd}新密码', '<p>尊敬的用户：您好，您再{sitename}的密码被重置成{newpwd}您可以使用{newpwd}重新登录！【{sitename}】</p>', 1),
(3, 'email_tuancode', '抢购码', '<p>本次的抢购码为{code}，请及时使用。遇到问题请咨询TEL：{<span style="color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 12px; line-height: normal; white-space: normal; float: none;">tel</span>}。<span style="color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: normal; white-space: normal; float: none;">{sitename}</span></p>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bao_express`
--

CREATE TABLE IF NOT EXISTS `bao_express` (
  `express_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `city_id` int(10) DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `from_name` varchar(32) DEFAULT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `from_mobile` varchar(11) DEFAULT NULL,
  `to_name` varchar(32) DEFAULT NULL,
  `to_addr` varchar(255) DEFAULT NULL,
  `to_mobile` varchar(11) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`express_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm`
--

CREATE TABLE IF NOT EXISTS `bao_farm` (
  `farm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0',
  `farm_name` varchar(32) DEFAULT '',
  `intro` varchar(128) DEFAULT '',
  `tel` varchar(20) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `addr` varchar(128) DEFAULT '',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `business_id` int(10) DEFAULT '0',
  `orders` int(10) DEFAULT '0',
  `comments` int(10) DEFAULT '0',
  `good_comments` int(10) DEFAULT '0',
  `score` int(10) DEFAULT '0',
  `lat` varchar(15) DEFAULT '',
  `lng` varchar(15) DEFAULT '',
  `business_time` varchar(64) DEFAULT '',
  `details` text,
  `notice` text,
  `environmental` text,
  `update_time` int(10) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT '',
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  `have_room` tinyint(1) DEFAULT '0',
  `have_washchange` tinyint(1) DEFAULT '0',
  `have_wifi` tinyint(1) DEFAULT '0',
  `have_shower` tinyint(1) DEFAULT '0',
  `have_tv` tinyint(1) DEFAULT '0',
  `have_ticket` tinyint(1) DEFAULT '0',
  `have_toiletries` tinyint(1) DEFAULT '0',
  `have_hotwater` tinyint(1) DEFAULT '0',
  `price` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`farm_id`,`shop_id`),
  UNIQUE KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_comment`
--

CREATE TABLE IF NOT EXISTS `bao_farm_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `farm_id` int(10) DEFAULT '0',
  `score` tinyint(1) DEFAULT '0',
  `have_photo` tinyint(1) DEFAULT '0',
  `content` varchar(1024) DEFAULT '',
  `reply` varchar(1024) DEFAULT '',
  `reply_time` int(10) DEFAULT '0',
  `reply_ip` varchar(15) DEFAULT '',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_comment_pics`
--

CREATE TABLE IF NOT EXISTS `bao_farm_comment_pics` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_group_attr`
--

CREATE TABLE IF NOT EXISTS `bao_farm_group_attr` (
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_order`
--

CREATE TABLE IF NOT EXISTS `bao_farm_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `farm_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned DEFAULT '0',
  `jiesuan_amount` int(10) unsigned DEFAULT '0',
  `name` varchar(32) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `note` text,
  `gotime` int(10) unsigned DEFAULT '0',
  `order_status` tinyint(1) DEFAULT '0',
  `comment_status` tinyint(1) unsigned DEFAULT '0',
  `create_time` int(10) unsigned DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  `closed` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_package`
--

CREATE TABLE IF NOT EXISTS `bao_farm_package` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `farm_id` int(10) unsigned DEFAULT '0',
  `title` varchar(128) DEFAULT '',
  `price` int(10) unsigned DEFAULT '0',
  `jiesuan_price` int(10) unsigned DEFAULT '0',
  `intro` varchar(128) DEFAULT '',
  `intro2` varchar(128) DEFAULT '',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_pics`
--

CREATE TABLE IF NOT EXISTS `bao_farm_pics` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `farm_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_farm_play_attr`
--

CREATE TABLE IF NOT EXISTS `bao_farm_play_attr` (
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_feedback`
--

CREATE TABLE IF NOT EXISTS `bao_feedback` (
  `feed_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content` text,
  `reply` text,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `reply_time` int(11) DEFAULT NULL,
  `reply_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_format`
--

CREATE TABLE IF NOT EXISTS `bao_format` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_format_value`
--

CREATE TABLE IF NOT EXISTS `bao_format_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `format_id` int(10) DEFAULT '0',
  `name` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_found`
--

CREATE TABLE IF NOT EXISTS `bao_found` (
  `found_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`found_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_function`
--

CREATE TABLE IF NOT EXISTS `bao_function` (
  `func_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `is_index` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`func_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `bao_function`
--

INSERT INTO `bao_function` (`func_id`, `photo`, `title`, `url`, `is_index`, `orderby`, `create_time`, `create_ip`) VALUES
(1, '2016/01/12/5694b97d6c3c6.png', '抢购', 'tuan/index', 1, 1, 1452587413, '127.0.0.1'),
(2, '2016/01/12/5694b9c6ccb84.png', '外卖', 'ele/index', 1, 2, 1452587479, '127.0.0.1'),
(3, '2016/01/12/5694b9efaec5e.png', '购物', 'mall/index', 1, 3, 1452587506, '127.0.0.1'),
(4, '2016/01/12/5694ba09d4bc6.png', '家政', 'housekeeping/main', 1, 12, 1452736885, '127.0.0.1'),
(5, '2016/01/12/5694ba7bc348a.png', '订座', 'ding/index', 1, 5, 1452587647, '127.0.0.1'),
(6, '2016/01/12/5694ba962c0a7.png', '约会', 'hdmobile/index', 1, 6, 1452587673, '127.0.0.1'),
(7, '2016/01/12/5694bab6bff50.png', '优惠券', 'coupon/index', 1, 7, 1452587710, '127.0.0.1'),
(8, '2016/01/12/5694badcbe88d.png', '逛街', 'market/index', 1, 8, 1452587744, '127.0.0.1'),
(10, '2016/01/12/5694bb3609686.png', '微店', 'mart/index', 0, 10, 1452587832, '127.0.0.1'),
(11, '2016/01/12/5694bba89f33a.png', '生活信息', 'life/index', 1, 11, 1452587960, '127.0.0.1'),
(12, '2016/01/12/5694bbd03ed4b.png', '商家服务', 'shop/index', 1, 4, 1452736900, '127.0.0.1'),
(13, '2016/01/12/5694bbfb258d1.png', '积分商城', 'jifen/index', 1, 13, 1452588071, '127.0.0.1'),
(14, '2016/01/12/5694bc3c63bdd.png', '全民推广', 'extend/index', 1, 14, 1452588103, '127.0.0.1'),
(15, '2016/01/12/5694bc76a4469.png', '活动', 'huodong/index', 1, 15, 1452588160, '127.0.0.1'),
(16, '2016/01/12/5694bc957363b.png', '榜单', 'billboard/index', 1, 16, 1452588189, '127.0.0.1'),
(17, '2016/01/12/5694bcb75a3a6.png', '附近工作', 'nearwork/index', 1, 17, 1452588217, '127.0.0.1'),
(18, '2016/01/14/569778c2d2532.png', '贴吧', 'post/index', 1, 5, 1452767429, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods`
--

CREATE TABLE IF NOT EXISTS `bao_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `type` enum('goods','crowd') DEFAULT 'goods',
  `cate_id` int(11) DEFAULT NULL,
  `shopcate_id` int(11) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `business_id` smallint(5) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `city_id` varchar(64) DEFAULT NULL,
  `branch_id` varchar(64) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `wei_pic` varchar(256) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `mall_price` int(11) DEFAULT NULL,
  `settlement_price` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT '0',
  `use_integral` int(11) DEFAULT '0',
  `kucun` int(11) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `instructions` text,
  `details` text,
  `end_date` date DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `ltime` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `is_mall` tinyint(3) DEFAULT '0',
  `commission` int(11) DEFAULT '0',
  `share` int(11) DEFAULT '0',
  `rush_ltime` int(11) DEFAULT NULL,
  `rush_kucun` smallint(6) DEFAULT NULL,
  `rush_price` int(11) DEFAULT NULL,
  `max_buy` smallint(6) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `orderby` tinyint(4) DEFAULT '100',
  `attr` varchar(256) DEFAULT '',
  `thumb` text,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_ask`
--

CREATE TABLE IF NOT EXISTS `bao_goods_ask` (
  `ask_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL,
  `ask_c` text,
  `answer_c` text,
  `goods_id` mediumint(8) DEFAULT NULL,
  `answer_time` int(11) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`ask_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_cate`
--

CREATE TABLE IF NOT EXISTS `bao_goods_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `rate` int(11) DEFAULT '60',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_crowd`
--

CREATE TABLE IF NOT EXISTS `bao_goods_crowd` (
  `goods_id` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(200) DEFAULT NULL,
  `follow_num` smallint(6) DEFAULT '0',
  `zan_num` smallint(6) DEFAULT '0',
  `img` varchar(225) DEFAULT NULL,
  `all_price` int(11) DEFAULT NULL,
  `details` text,
  `instructions` text,
  `have_price` int(11) DEFAULT '0',
  `ltime` int(11) DEFAULT NULL,
  `have_num` smallint(6) DEFAULT '0',
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_goods_dianping` (
  `dianping_id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `score` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_dianping_pics`
--

CREATE TABLE IF NOT EXISTS `bao_goods_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0',
  `dianping_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_follow`
--

CREATE TABLE IF NOT EXISTS `bao_goods_follow` (
  `zan_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` enum('follow','zan') DEFAULT NULL,
  `uid` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`zan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_format`
--

CREATE TABLE IF NOT EXISTS `bao_goods_format` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `mall_price` int(10) DEFAULT NULL,
  `store` int(10) DEFAULT NULL,
  `format_title` varchar(128) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `content` (`content`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_list`
--

CREATE TABLE IF NOT EXISTS `bao_goods_list` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL,
  `type_id` mediumint(8) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `addr` varchar(500) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `is_zhong` tinyint(1) DEFAULT '0',
  `goods_id` mediumint(8) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_project`
--

CREATE TABLE IF NOT EXISTS `bao_goods_project` (
  `project_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) DEFAULT NULL,
  `content` text,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_shopcate`
--

CREATE TABLE IF NOT EXISTS `bao_goods_shopcate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `format` varchar(150) DEFAULT '',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_goods_type`
--

CREATE TABLE IF NOT EXISTS `bao_goods_type` (
  `type_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `max_num` mediumint(8) DEFAULT NULL,
  `have_num` mediumint(8) DEFAULT '0',
  `content` text,
  `img` varchar(200) DEFAULT NULL,
  `yunfei` smallint(3) DEFAULT '0',
  `choujiang` tinyint(1) DEFAULT NULL,
  `fahuo` smallint(3) DEFAULT '30',
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel`
--

CREATE TABLE IF NOT EXISTS `bao_hotel` (
  `hotel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `hotel_name` varchar(32) DEFAULT '',
  `tel` varchar(20) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `addr` varchar(128) DEFAULT '',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `business_id` int(10) DEFAULT '0',
  `star` tinyint(1) DEFAULT '0',
  `cate_id` tinyint(1) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `sold_num` int(10) DEFAULT '0',
  `comments` int(10) DEFAULT '0',
  `score` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `is_wifi` tinyint(1) DEFAULT '0',
  `is_kt` tinyint(1) DEFAULT '0',
  `is_nq` tinyint(1) DEFAULT '0',
  `is_xyj` tinyint(1) DEFAULT '0',
  `is_tv` tinyint(1) DEFAULT '0',
  `is_ly` tinyint(1) DEFAULT '0',
  `is_bx` tinyint(1) DEFAULT '0',
  `is_base` tinyint(1) DEFAULT '0',
  `is_rsh` tinyint(1) DEFAULT '0',
  `lat` varchar(15) DEFAULT '',
  `lng` varchar(15) DEFAULT '',
  `details` text,
  `update_time` int(10) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT '',
  `audit` tinyint(1) DEFAULT '0',
  `reason` varchar(256) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_brand`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_brand` (
  `type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  `orderby` tinyint(3) DEFAULT '100',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_comment`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `hotel_id` int(10) DEFAULT '0',
  `score` tinyint(1) DEFAULT '0',
  `have_photo` tinyint(1) DEFAULT '0',
  `content` varchar(1024) DEFAULT '',
  `reply` varchar(1024) DEFAULT '',
  `reply_time` int(10) DEFAULT '0',
  `reply_ip` varchar(15) DEFAULT '',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_comment_pics`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_comment_pics` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_order`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT '0',
  `room_id` int(10) DEFAULT '0',
  `amount` int(10) DEFAULT '0',
  `jiesuan_amount` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `num` smallint(5) DEFAULT '0',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT '',
  `note` text,
  `order_status` tinyint(1) DEFAULT '0',
  `comment_status` tinyint(1) DEFAULT '0',
  `online_pay` tinyint(1) DEFAULT '0',
  `last_time` varchar(15) DEFAULT '',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_pics`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_pics` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_hotel_room`
--

CREATE TABLE IF NOT EXISTS `bao_hotel_room` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) DEFAULT '0',
  `title` varchar(32) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `type` tinyint(1) DEFAULT '0',
  `area` smallint(5) DEFAULT '0',
  `is_zc` tinyint(1) DEFAULT '0',
  `is_kd` tinyint(1) DEFAULT '0',
  `is_cancel` tinyint(1) DEFAULT '0',
  `sku` smallint(5) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `settlement_price` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_housework`
--

CREATE TABLE IF NOT EXISTS `bao_housework` (
  `housework_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `svc_id` tinyint(3) DEFAULT '0',
  `svctime` varchar(20) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `buy_num` tinyint(3) DEFAULT '0',
  `contents` varchar(1024) DEFAULT NULL,
  `is_real` tinyint(1) DEFAULT '0',
  `num` tinyint(3) DEFAULT '0',
  `gold` tinyint(3) DEFAULT '0',
  `city_id` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`housework_id`),
  KEY `svc_id` (`svc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_housework_look`
--

CREATE TABLE IF NOT EXISTS `bao_housework_look` (
  `look_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `housework_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`look_id`),
  UNIQUE KEY `housework_id` (`housework_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_housework_setting`
--

CREATE TABLE IF NOT EXISTS `bao_housework_setting` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT '0',
  `unit` varchar(32) DEFAULT NULL,
  `gongju` varchar(64) DEFAULT NULL,
  `biz_time` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `contents` text,
  `yuyue_num` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_huodong`
--

CREATE TABLE IF NOT EXISTS `bao_huodong` (
  `huodong_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `city_id` int(10) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `traffic` tinyint(1) DEFAULT '0',
  `limit_num` int(10) DEFAULT '0',
  `time` datetime DEFAULT '0000-00-00 00:00:00',
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `addr` varchar(1024) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '3',
  `photo` varchar(128) DEFAULT NULL,
  `sign_num` int(11) DEFAULT '0',
  `ping_num` int(10) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `lat` varchar(15) DEFAULT '',
  `lng` varchar(15) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`huodong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_huodong_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_huodong_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `huodong_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `contents` text,
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_huodong_looks`
--

CREATE TABLE IF NOT EXISTS `bao_huodong_looks` (
  `look_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `huodong_id` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`look_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_huodong_sign`
--

CREATE TABLE IF NOT EXISTS `bao_huodong_sign` (
  `sign_id` int(10) NOT NULL AUTO_INCREMENT,
  `huodong_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_integral_exchange`
--

CREATE TABLE IF NOT EXISTS `bao_integral_exchange` (
  `exchange_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `addr_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`exchange_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_integral_goods`
--

CREATE TABLE IF NOT EXISTS `bao_integral_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `face_pic` varchar(64) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT '0',
  `integral` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `limit_num` int(11) DEFAULT '0',
  `exchange_num` int(11) DEFAULT '0',
  `details` text,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(255) DEFAULT NULL,
  `audit` tinyint(4) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_keyword`
--

CREATE TABLE IF NOT EXISTS `bao_keyword` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL,
  `type` tinyint(2) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_life`
--

CREATE TABLE IF NOT EXISTS `bao_life` (
  `life_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `is_shop` tinyint(1) DEFAULT '0',
  `text1` varchar(64) DEFAULT NULL,
  `text2` varchar(64) DEFAULT NULL,
  `text3` varchar(64) DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `select1` int(11) DEFAULT NULL,
  `select2` int(11) DEFAULT NULL,
  `select3` int(11) DEFAULT NULL,
  `select4` int(11) DEFAULT NULL,
  `select5` int(11) DEFAULT NULL,
  `urgent_date` date DEFAULT '0000-00-00',
  `top_date` date DEFAULT '0000-00-00',
  `photo` varchar(64) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`life_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_cate`
--

CREATE TABLE IF NOT EXISTS `bao_life_cate` (
  `cate_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` tinyint(3) DEFAULT '0',
  `cate_name` varchar(32) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `text1` varchar(32) DEFAULT NULL,
  `text2` varchar(32) DEFAULT NULL,
  `text3` varchar(32) DEFAULT NULL,
  `num1` varchar(32) DEFAULT NULL,
  `num2` varchar(32) DEFAULT NULL,
  `unit1` varchar(32) DEFAULT NULL,
  `unit2` varchar(32) DEFAULT NULL,
  `select1` varchar(32) DEFAULT NULL,
  `select2` varchar(32) DEFAULT NULL,
  `select3` varchar(32) DEFAULT NULL,
  `select4` varchar(32) DEFAULT NULL,
  `select5` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- 转存表中的数据 `bao_life_cate`
--

INSERT INTO `bao_life_cate` (`cate_id`, `channel_id`, `cate_name`, `num`, `text1`, `text2`, `text3`, `num1`, `num2`, `unit1`, `unit2`, `select1`, `select2`, `select3`, `select4`, `select5`, `orderby`, `is_hot`) VALUES
(1, 1, '手机及配件', 0, '新旧程度', '', '', '原价', '现价', '元', '元', '供求', '品牌', '价格', '', '', 100, 1),
(2, 1, '数码产品', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '分类', '价格', '', '', 100, 1),
(3, 1, '门票卡券', 0, '', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(4, 1, '家用电器', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '分类', '价格', '', '', 100, 1),
(5, 1, '日常用品', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 1),
(8, 1, '运动/图书/乐器', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(6, 1, '办公经营设备', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(7, 1, '服装/配饰/鞋包', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(9, 1, '笔记本', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '品牌', '价格', '', '', 100, 1),
(10, 1, '家具/办公家具', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 1),
(11, 1, '手机号码', 0, '', '', '', '价格', '', NULL, NULL, '供求', '类型', '价格', '', '', 100, 1),
(12, 1, '母婴/玩具', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 1),
(13, 1, '工艺品/收藏品', 0, '商品描述', '', '', '价格', '', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(14, 1, '台式电脑及配件', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '品牌', '价格', '', '', 100, 1),
(15, 1, '食品/农产品', 0, '商品描述', '', '', '价格', '', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(16, 1, '设备租赁', 0, '设备功能描述', '', '', '价格', '', NULL, NULL, '供求', '服务内容', '价格', '', '', 100, 0),
(17, 1, '平板电脑', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '供求', '品牌', '价格', '', '', 100, 1),
(18, 1, '工业设备', 0, '功能描述', '', '', '原价', '现价', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(19, 1, '其他物品', 0, '商品描述', '', '', '价格', '', NULL, NULL, '供求', '价格', '', '', '', 100, 0),
(20, 1, '物品回收', 0, '', '', '', '', '', NULL, NULL, '', '类型', '', '', '', 100, 0),
(21, 2, '二手轿车', 0, '新旧程度', '', '', '原价', '现价', '', '', '价格', '车型级别', '品牌', '', '', 100, 1),
(23, 2, '个人车源', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '价格', '车型级别', '品牌', '', '', 100, 0),
(24, 2, '电动车', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '分类', '品牌', '价格', '', '', 100, 1),
(25, 2, '自行车', 0, '新旧描述', '', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 1),
(26, 2, '二手货车', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 1),
(27, 2, '摩托车/燃气车', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 1),
(28, 2, '拼车/顺风车', 0, '', '', '', '', '', NULL, NULL, '车辆情况', '类型', '', '', '', 100, 0),
(29, 2, '汽车用品/配件', 0, '商品描述', '', '', '价格', '', NULL, NULL, '供求', '类型', '价格', '', '', 100, 0),
(30, 2, '新车优惠/4S店', 0, '', '', '', '价格', '', NULL, NULL, '品牌', '价格', '', '', '', 100, 0),
(31, 2, '汽修保养', 0, '服务描述', '', '', '', '', NULL, NULL, '服务类型', '', '', '', '', 100, 0),
(32, 2, '二手工程车', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 0),
(33, 2, '过户/验车', 0, '', '', '', '', '', NULL, NULL, '类型', '', '', '', '', 100, 0),
(34, 2, '面包车/客车', 0, '', '新旧程度', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 0),
(35, 2, '拖拉机/收割机', 0, '新旧程度', '', '', '原价', '现价', NULL, NULL, '类型', '品牌', '价格', '', '', 100, 0),
(36, 2, '本地下线车', 0, '', '', '', '价格', '', NULL, NULL, '车辆级别', '品牌', '价格', '', '', 100, 0),
(37, 2, '车辆收购/评估', 0, '', '', '', '', '', NULL, NULL, '分类', '', '', '', '', 100, 0),
(38, 3, '全职求职意向', 0, '', '', '', '', '', NULL, NULL, '求职意向', '性别', '学历', '', '', 100, 0),
(39, 3, '兼职求职意向', 0, '', '', '', '', '', NULL, NULL, '求职意向', '性别', '', '', '', 100, 0),
(40, 4, '结伴活动', 0, '', '', '', '', '', NULL, NULL, '类型', '性别', '', '', '', 100, 1),
(41, 4, '征婚', 0, '', '', '', '', '', NULL, NULL, '性别', '年龄', '', '', '', 100, 1),
(42, 4, '找女友/找男友', 0, '', '', '', '', '', NULL, NULL, '性别', '年龄', '', '', '', 100, 1),
(43, 4, '婚介服务', 0, '', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(44, 4, '技能交流', 0, '', '', '', '', '', NULL, NULL, '我会', '', '', '', '', 100, 0),
(45, 4, '找人/寻物', 0, '', '', '', '', '', NULL, NULL, '类型', '', '', '', '', 100, 0),
(46, 4, '拼车/顺风车', 0, '', '', '', '', '', NULL, NULL, '车辆情况', '类型', '', '', '', 100, 1),
(47, 5, '租房/出租', 0, '', '', '', '', '', NULL, NULL, '租房类型', '租金', '房型', '', '', 100, 1),
(48, 5, '个人租房', 0, '', '', '', '', '', NULL, NULL, '租房类型', '租金', '房型', '', '', 100, 1),
(49, 5, '二手房出售', 0, '', '', '', '原价', '现价', NULL, NULL, '面积', '价格', '房型', '', '', 100, 1),
(50, 5, '商铺出售', 0, '', '', '', '', '', NULL, NULL, '类型', '面积', '价格', '', '', 100, 0),
(51, 5, '店铺转让/出租', 0, '', '', '', '', '', NULL, NULL, '类型', '面积', '租金', '', '', 100, 0),
(52, 5, '求租/求购', 0, '', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 1),
(53, 5, '写字楼出租', 0, '', '', '', '', '', NULL, NULL, '类型', '面积', '价格', '', '', 100, 0),
(54, 5, '日租/短租', 0, '', '', '', '', '', NULL, NULL, '类型', '出租形式', '租金', '', '', 100, 0),
(55, 5, '厂房/仓库/土地', 0, '', '', '', '', '', NULL, NULL, '面积', '价格', '', '', '', 100, 0),
(56, 5, '写字楼出售', 0, '', '', '', '', '', NULL, NULL, '类型', '面积', '价格', '', '', 100, 0),
(57, 5, '新房出售', 0, '', '', '', '', '', NULL, NULL, '面积', '价格', '房型', '', '', 100, 0),
(58, 6, '中小学教育', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(59, 6, '职业技能', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(60, 6, '学历教育', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(61, 6, '电脑培训', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(62, 6, '艺术培训', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 0),
(63, 6, '外语培训', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(64, 6, '设计培训', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 1),
(65, 6, '婴幼儿教育', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 0),
(66, 6, '体育培训', 0, '', '', '', '', '', NULL, NULL, '培训类型', '课程费用', '', '', '', 100, 0),
(67, 7, '工人/技工', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(68, 7, '销售/金融', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(69, 7, '保健按摩', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(70, 7, '美工/设计', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(71, 7, '人事/行政/文员', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(72, 7, '营业员/促销/零售', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '工作时间', '', '', 100, 1),
(73, 7, '服务员/收银员', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(74, 7, '厨师/切配', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(75, 7, '送货/快递/仓管', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(76, 7, '保安', 0, '', '', '', '', '', NULL, NULL, '薪资水平', '', '', '', '', 100, 0),
(77, 7, '家政/保洁', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(78, 7, '司机/驾驶员', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(79, 7, '老师/培训师', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(80, 7, '财务/会计', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(81, 7, '淘宝招聘', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '工作时间', '', '', 100, 0),
(82, 7, '客服', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 1),
(83, 7, '美容美发', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(84, 7, '计算机/网络/通信', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '经验要求', '', '', 100, 1),
(85, 7, '市场/公关/媒介', 0, '', '', '', '', '', NULL, NULL, '职位类别', '薪资水平', '', '', '', 100, 0),
(86, 7, '人才招聘会', 0, '地点、时间', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(87, 7, '翻译', 0, '', '', '', '', '', NULL, NULL, '翻译语种', '薪资水平', '', '', '', 100, 0),
(88, 7, '出国劳务', 0, '工作描述', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(89, 7, '其他招聘', 0, '工作描述', '', '', '', '', NULL, NULL, '薪资水平', '', '', '', '', 100, 0),
(90, 8, '招商加盟', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 1),
(91, 8, '担保/贷款', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(92, 8, '家电维修', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(93, 8, '建材装饰', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(94, 8, '公司注册', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(95, 8, '房屋装修', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 1),
(96, 8, '投资理财', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(97, 8, '会计/审计', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(98, 8, '电脑维修', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(99, 8, '快递/物流', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(100, 8, '农林牧副渔', 0, '', '', '', '', '', NULL, NULL, '类别', '', '', '', '', 100, 0),
(101, 8, '设计策划', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(102, 8, '管道疏通', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(103, 8, '租车服务', 0, '', '', '', '', '', NULL, NULL, '服务内容', '价格/天', '', '', '', 100, 0),
(104, 8, '旅游度假', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(105, 8, '摄像摄影', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(106, 8, '保洁/清洗', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(107, 8, '陪驾/代驾', 0, '', '', '', '', '', NULL, NULL, '价格', '', '', '', '', 100, 0),
(108, 8, '搬家服务', 0, '搬家说明', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(109, 8, '驾校服务', 0, '', '', '', '', '', NULL, NULL, '驾驶证类型', '价格', '', '', '', 100, 0),
(110, 8, '开锁/修锁', 0, '', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(111, 8, '休闲娱乐', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(112, 8, '印刷/喷绘', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(113, 8, '机票/签证', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(114, 8, '礼品定制', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(115, 8, '家具维修', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(116, 8, '美容纤体', 0, '', '', '', '', '', NULL, NULL, '服务内容', '价格', '', '', '', 100, 0),
(117, 8, '保姆/月嫂', 0, '', '', '', '', '', NULL, NULL, '发布人', '服务内容', '', '', '', 100, 0),
(118, 8, '网站建设', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(119, 8, '鲜花/盆景', 0, '说明', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(120, 8, '婚庆/化妆', 0, '', '', '', '', '', NULL, NULL, '服务内容', '价格', '', '', '', 100, 0),
(121, 8, '庆典/演出', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(122, 8, '律师服务', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(123, 8, '外卖/送水', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(124, 8, '酒店/宾馆', 0, '', '', '', '', '', NULL, NULL, '服务内容', '价格/天', '', '', '', 100, 0),
(125, 8, '本地名站', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(126, 8, '翻译/速记', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(127, 8, '整形美容', 0, '', '', '', '', '', NULL, NULL, '服务类别', '', '', '', '', 100, 0),
(128, 8, '医疗健康', 0, '', '', '', '', '', NULL, NULL, '服务内容', '', '', '', '', 100, 0),
(129, 8, '其他服务', 0, '服务描述', '', '', '', '', NULL, NULL, '', '', '', '', '', 100, 0),
(130, 9, '其他兼职', 0, '', '', '', '', '', NULL, NULL, '兼职类型', '工资/天', '', '', '', 100, 0),
(131, 9, '家教/老师', 0, '', '', '', '', '', NULL, NULL, '类型', '工资/小时', '', '', '', 100, 0),
(132, 9, '派发/促销', 0, '', '', '', '', '', NULL, NULL, '类型', '工资/小时', '', '', '', 100, 0),
(133, 9, '模特/礼仪', 0, '', '', '', '', '', NULL, NULL, '类型', '工资/小时', '', '', '', 100, 0),
(134, 9, '学生兼职', 0, '', '', '', '', '', NULL, NULL, '工资/小时', '', '', '', '', 100, 0),
(135, 9, '餐厅/服务员', 0, '', '', '', '', '', NULL, NULL, '工资/小时', '工作时间', '', '', '', 100, 0),
(136, 9, '网站/设计', 0, '', '', '', '', '', NULL, NULL, '类型', '工资/天', '', '', '', 100, 0),
(137, 9, '会计/财务', 0, '', '', '', '', '', NULL, NULL, '工资/天', '', '', '', '', 100, 0),
(138, 9, '客服', 0, '', '', '', '', '', NULL, NULL, '工资/天', '', '', '', '', 100, 0),
(139, 9, '市场调查', 0, '', '', '', '', '', NULL, NULL, '工资/天', '', '', '', '', 100, 0),
(140, 9, '充场/座谈会', 0, '', '', '', '', '', NULL, NULL, '工资/天', '', '', '', '', 100, 0),
(141, 9, '演员', 0, '', '', '', '', '', NULL, NULL, '工资/天', '', '', '', '', 100, 0),
(142, 10, '狗狗', 0, '狗狗描述', '', '', '', '', NULL, NULL, '品种', '价格', '公母', '', '', 100, 1),
(143, 10, '其它宠物', 0, '描述', '', '', '', '', NULL, NULL, '分类', '价格', '', '', '', 100, 1),
(144, 10, '宠物免费赠送', 0, '', '', '', '', '', NULL, NULL, '供求', '类型', '', '', '', 100, 0),
(145, 10, '猫猫', 0, '猫猫描述', '', '', '', '', NULL, NULL, '品种', '价格', '公母', '', '', 100, 0),
(146, 10, '宠物服务/配种', 0, '需求描述', '', '', '', '', NULL, NULL, '服务类别', '', '', '', '', 100, 0),
(147, 10, '宠物用品/食品', 0, '说明', '', '', '', '', NULL, NULL, '类型', '供求', '', '', '', 100, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_cate_attr`
--

CREATE TABLE IF NOT EXISTS `bao_life_cate_attr` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(5) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `attr_name` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2681 ;

--
-- 转存表中的数据 `bao_life_cate_attr`
--

INSERT INTO `bao_life_cate_attr` (`attr_id`, `cate_id`, `type`, `attr_name`, `orderby`) VALUES
(1, 1, 'select1', '供应', 1),
(2, 1, 'select1', '求购', 2),
(3, 1, 'select2', '苹果', 2),
(4, 1, 'select2', '三星', 3),
(5, 1, 'select2', '魅族', 4),
(6, 1, 'select2', 'htc', 5),
(7, 1, 'select3', '500元以下', 2),
(8, 1, 'select3', '500-1000元', 3),
(9, 1, 'select3', '1000-2000元', 4),
(10, 1, 'select3', '2000-3000元', 5),
(11, 1, 'select3', '3000-4000元', 6),
(12, 1, 'select3', '4000-5000元', 7),
(13, 1, 'select3', '5000元以上', 8),
(1705, 67, 'select2', '2000元以下', 2),
(15, 2, 'select1', '供应', 1),
(16, 2, 'select1', '求购', 2),
(36, 2, 'select2', 'MP3/MP4', 4),
(37, 2, 'select2', '镜头/配件', 5),
(38, 2, 'select2', '其他', 6),
(34, 2, 'select2', '相机', 2),
(35, 2, 'select2', '手机及其配件', 3),
(24, 3, 'select1', '供应', 1),
(25, 3, 'select1', '求购', 2),
(26, 3, 'select3', '50以下', 2),
(27, 3, 'select3', '50—150', 3),
(28, 3, 'select3', '150—300', 4),
(29, 3, 'select3', '300—500', 5),
(30, 3, 'select3', '500—1000', 6),
(31, 3, 'select3', '1000以上', 7),
(32, 4, 'select1', '供应', 1),
(33, 4, 'select1', '求购', 2),
(39, 2, 'select3', '200以下', 2),
(40, 2, 'select3', '200—500', 3),
(41, 2, 'select3', '500—1000', 4),
(42, 2, 'select3', '1000—2000', 5),
(43, 2, 'select3', '2000以上', 6),
(44, 4, 'select2', '空调', 2),
(45, 4, 'select2', '冰箱/冰柜', 3),
(46, 4, 'select2', '厨房电器', 4),
(47, 4, 'select2', '电视机', 5),
(48, 4, 'select2', '居家电器', 6),
(49, 4, 'select2', '洗衣机', 7),
(50, 4, 'select2', '卫浴/护理器', 8),
(51, 4, 'select2', '音响电器', 9),
(52, 4, 'select2', '其它', 10),
(53, 4, 'select3', '200以下', 2),
(54, 4, 'select3', '200—500', 3),
(55, 4, 'select3', '500—800', 4),
(56, 4, 'select3', '800—1200', 5),
(57, 4, 'select3', '1200—1600', 6),
(58, 4, 'select3', '1600—2200', 7),
(59, 4, 'select3', '2200—3000', 8),
(60, 4, 'select3', '3000以上', 9),
(61, 3, 'select2', '健身/游泳', 2),
(62, 3, 'select2', '旅游/景点/酒店', 3),
(63, 3, 'select2', '演出/电影', 4),
(64, 3, 'select2', '超市', 5),
(65, 3, 'select2', '美食', 6),
(66, 3, 'select2', '月饼券', 7),
(91, 3, 'select2', '其它', 8),
(68, 5, 'select1', '供应', 1),
(69, 5, 'select1', '求购', 2),
(70, 5, 'select2', '家居用品', 2),
(71, 5, 'select2', '化妆品', 3),
(72, 5, 'select2', '家纺', 4),
(73, 5, 'select2', '烟酒', 5),
(74, 5, 'select2', '其它', 6),
(75, 5, 'select3', '50以下', 2),
(76, 5, 'select3', '50—150', 3),
(77, 5, 'select3', '150—350', 4),
(78, 5, 'select3', '350—600', 5),
(79, 5, 'select3', '600—1000', 6),
(80, 5, 'select3', '1000—2000', 7),
(81, 5, 'select3', '2000以上', 8),
(82, 1, 'select2', '小米', 6),
(83, 1, 'select2', '诺基亚', 7),
(84, 1, 'select2', '华为', 8),
(85, 1, 'select2', '联想', 9),
(86, 1, 'select2', '中兴', 10),
(87, 1, 'select2', 'oppo', 11),
(88, 1, 'select2', '步步高', 12),
(89, 1, 'select2', '金立', 13),
(90, 1, 'select2', '其它', 14),
(92, 6, 'select1', '供应', 1),
(93, 6, 'select1', '求购', 2),
(94, 6, 'select2', '打印机', 2),
(95, 6, 'select2', '复印/扫描/投影', 3),
(96, 6, 'select2', '文具', 4),
(97, 6, 'select2', '其它', 5),
(98, 6, 'select3', '50以下', 2),
(99, 6, 'select3', '50—150', 3),
(100, 6, 'select3', '150—300', 4),
(101, 6, 'select3', '300—500', 5),
(102, 6, 'select3', '500—800', 6),
(103, 6, 'select3', '800—1200', 7),
(104, 6, 'select3', '1200以上', 8),
(105, 7, 'select1', '供应', 1),
(106, 7, 'select1', '求购', 2),
(120, 7, 'select2', '女装', 2),
(121, 7, 'select2', '男装', 3),
(122, 7, 'select2', '鞋子', 4),
(123, 7, 'select2', '手表', 5),
(124, 7, 'select2', '配饰', 6),
(125, 7, 'select2', '羽绒服', 7),
(126, 7, 'select2', '其他', 8),
(128, 7, 'select3', '30以下', 2),
(129, 7, 'select3', '30—50', 3),
(130, 7, 'select3', '50—100', 4),
(131, 7, 'select3', '100—150', 5),
(132, 7, 'select3', '150—200', 6),
(133, 7, 'select3', '200—300', 7),
(134, 7, 'select3', '300—500', 8),
(135, 7, 'select3', '500以上', 9),
(136, 8, 'select1', '供应', 1),
(137, 8, 'select1', '求购', 2),
(139, 8, 'select2', '运动器材', 2),
(140, 8, 'select2', '图书/音响', 3),
(141, 8, 'select2', '器材', 4),
(142, 8, 'select2', '其它', 5),
(144, 8, 'select3', '300以下', 2),
(145, 8, 'select3', '300—500', 3),
(146, 8, 'select3', '500—800', 4),
(147, 8, 'select3', '800—1200', 5),
(148, 8, 'select3', '1200—1600', 6),
(149, 8, 'select3', '1600以上', 6),
(150, 9, 'select1', '供应', 1),
(151, 9, 'select1', '求购', 2),
(153, 9, 'select2', 'Gateway/捷威', 2),
(154, 9, 'select2', 'QHTF/清华同方', 3),
(155, 9, 'select2', 'Toshiba/东芝', 4),
(156, 9, 'select2', 'ASUS/华硕', 5),
(157, 9, 'select2', 'Dell/戴尔', 6),
(158, 9, 'select2', 'Lenovo/联想', 7),
(159, 9, 'select2', 'Acer/宏碁', 8),
(160, 9, 'select2', 'SAMSUNG/三星', 9),
(161, 9, 'select2', 'Apple/苹果', 10),
(162, 9, 'select2', 'HP/惠普', 11),
(163, 9, 'select2', '联想ThinkPad/IBMA', 12),
(164, 9, 'select2', 'Fujitsu/富士通', 13),
(165, 9, 'select2', '山寨/高仿', 14),
(166, 9, 'select2', 'Haier/海尔', 15),
(167, 9, 'select2', 'BENQ/明基', 16),
(168, 9, 'select2', '日立', 17),
(169, 9, 'select2', 'NEC', 18),
(170, 9, 'select2', 'HASEE/神舟', 19),
(171, 9, 'select2', '方正', 20),
(172, 9, 'select2', '其它', 21),
(174, 9, 'select3', '500以下', 2),
(175, 9, 'select3', '500—800', 3),
(176, 9, 'select3', '800—1200', 4),
(177, 9, 'select3', '1200—1600', 5),
(178, 9, 'select3', '1600—2000', 6),
(179, 9, 'select3', '2000—3000', 7),
(180, 9, 'select3', '3000以上', 8),
(181, 10, 'select1', '供应', 1),
(182, 10, 'select1', '求购', 2),
(184, 10, 'select2', '桌子/椅子/凳子', 2),
(185, 10, 'select2', '床/床垫', 3),
(186, 10, 'select2', '沙发/茶几', 4),
(187, 10, 'select2', '架子', 5),
(188, 10, 'select2', '柜橱', 6),
(189, 10, 'select2', '其它', 7),
(191, 10, 'select3', '100以下', 2),
(192, 10, 'select3', '100—200', 3),
(193, 10, 'select3', '200—400', 4),
(194, 10, 'select3', '400—600', 5),
(195, 10, 'select3', '600—800', 6),
(196, 10, 'select3', '800—1200', 7),
(197, 10, 'select3', '1200以上', 8),
(198, 11, 'select1', '供应', 1),
(199, 11, 'select1', '求购', 2),
(200, 11, 'select2', '移动', 2),
(201, 11, 'select2', '联通', 3),
(202, 11, 'select2', '电信', 4),
(203, 11, 'select2', '小灵通/固话', 5),
(204, 11, 'select2', 'QQ/微信', 6),
(206, 11, 'select2', '流量卡', 7),
(207, 11, 'select2', '游戏帐号', 8),
(208, 11, 'select2', '其它', 9),
(210, 11, 'select3', '20以下', 2),
(211, 11, 'select3', '20—50', 3),
(212, 11, 'select3', '50—100', 4),
(213, 11, 'select3', '100—200', 5),
(214, 11, 'select3', '200—500', 6),
(215, 11, 'select3', '500以上', 7),
(216, 12, 'select1', '供应', 1),
(217, 12, 'select1', '求购', 2),
(219, 12, 'select2', '婴孩服饰', 2),
(220, 12, 'select2', '食品/奶粉', 3),
(221, 12, 'select2', '玩具', 4),
(222, 12, 'select2', '母婴用品', 5),
(223, 12, 'select2', '婴儿床', 6),
(224, 12, 'select2', '婴儿车', 7),
(225, 12, 'select2', '其它', 8),
(227, 12, 'select3', '50以下', 2),
(228, 12, 'select3', '50—100', 3),
(229, 12, 'select3', '100—200', 4),
(230, 12, 'select3', '200—300', 5),
(231, 12, 'select3', '300—500', 6),
(232, 12, 'select3', '500以上', 7),
(233, 13, 'select1', '供应', 1),
(234, 13, 'select1', '求购', 2),
(236, 13, 'select2', '十字绣', 2),
(237, 13, 'select2', '珠宝/玉器/名石', 3),
(238, 13, 'select2', '书画', 4),
(239, 13, 'select2', '钱币/邮票/票证', 5),
(240, 13, 'select2', '古玩', 6),
(241, 13, 'select2', '钟表', 7),
(242, 13, 'select2', '瓷器', 8),
(243, 13, 'select2', '其它', 9),
(245, 13, 'select3', '300以下', 2),
(246, 13, 'select3', '300—500', 3),
(247, 13, 'select3', '500—1000', 4),
(248, 13, 'select3', '1000—2000', 5),
(249, 13, 'select3', '2000—4000', 6),
(250, 13, 'select3', '4000—8000', 7),
(251, 13, 'select3', '8000—12000', 8),
(252, 13, 'select3', '12000—20000', 9),
(253, 13, 'select3', '20000以上', 10),
(254, 14, 'select1', '供应', 1),
(255, 14, 'select1', '求购', 2),
(257, 14, 'select2', 'Gateway/捷威', 2),
(258, 14, 'select2', 'QHTF/清华同方', 3),
(259, 14, 'select2', 'Toshiba/东芝', 4),
(260, 14, 'select2', 'ASUS/华硕', 5),
(261, 14, 'select2', 'Dell/戴尔', 6),
(262, 14, 'select2', 'Lenovo/联想', 7),
(263, 14, 'select2', 'Acer/宏碁', 8),
(264, 14, 'select2', 'SAMSUNG/三星', 9),
(265, 14, 'select2', 'Apple/苹果', 10),
(266, 14, 'select2', 'HP/惠普', 11),
(267, 14, 'select2', '联想ThinkPad/IBMA', 12),
(268, 14, 'select2', 'Fujitsu/富士通', 13),
(269, 14, 'select2', '山寨/高仿', 14),
(270, 14, 'select2', 'Haier/海尔', 15),
(271, 14, 'select2', 'BENQ/明基', 16),
(272, 14, 'select2', '日立', 17),
(273, 14, 'select2', 'NEC', 18),
(274, 14, 'select2', 'HASEE/神舟', 19),
(275, 14, 'select2', '方正', 20),
(276, 14, 'select2', '其它', 21),
(278, 14, 'select3', '300以下', 2),
(279, 14, 'select3', '300—500', 3),
(280, 14, 'select3', '500—1000', 4),
(281, 14, 'select3', '1000—2000', 5),
(282, 14, 'select3', '2000—3000', 6),
(283, 14, 'select3', '3000—5000', 7),
(284, 14, 'select3', '5000以上', 8),
(285, 15, 'select1', '供应', 1),
(286, 15, 'select1', '求购', 2),
(288, 15, 'select2', '苗木/种子', 2),
(289, 15, 'select2', '茶叶/饮品', 3),
(290, 15, 'select2', '肉蛋禽/生鲜', 4),
(291, 15, 'select2', '休闲/保健食品', 5),
(292, 15, 'select2', '粮油/蔬果', 6),
(293, 15, 'select2', '其它', 7),
(295, 15, 'select3', '20以下', 2),
(296, 15, 'select3', '20—50', 3),
(297, 15, 'select3', '50—200', 4),
(298, 15, 'select3', '200—500', 5),
(299, 15, 'select3', '500以上', 6),
(300, 16, 'select1', '供应', 1),
(301, 16, 'select1', '强哥', 2),
(303, 16, 'select2', '机械设备', 2),
(304, 16, 'select2', '工程车械', 3),
(305, 16, 'select2', '物品租赁', 4),
(306, 16, 'select2', '灯光影响', 5),
(307, 16, 'select2', '场地租赁', 6),
(308, 16, 'select2', '服装租赁', 7),
(309, 16, 'select2', '办公用品租赁', 8),
(310, 16, 'select2', '家具租赁', 9),
(311, 16, 'select2', '汽车租赁', 10),
(312, 16, 'select2', '脚手架租赁', 11),
(313, 16, 'select2', '其它', 12),
(315, 16, 'select3', '200以下', 2),
(316, 16, 'select3', '200—500', 3),
(317, 16, 'select3', '500—1000', 4),
(318, 16, 'select3', '1000—2000', 5),
(319, 16, 'select3', '2000—5000', 6),
(320, 16, 'select3', '5000以上', 7),
(321, 17, 'select1', '供应', 1),
(322, 17, 'select1', '求购', 2),
(324, 17, 'select2', '纽曼', 2),
(325, 17, 'select2', '摩托罗拉', 3),
(326, 17, 'select2', 'ThinkPad', 4),
(327, 17, 'select2', '索尼', 5),
(328, 17, 'select2', '戴尔', 6),
(329, 17, 'select2', '华硕', 7),
(330, 17, 'select2', '宏碁', 8),
(331, 17, 'select2', '汉王', 9),
(332, 17, 'select2', '爱可视', 10),
(333, 17, 'select2', 'e途', 11),
(334, 17, 'select2', 'HTC', 12),
(335, 17, 'select2', 'KindleFire', 13),
(336, 17, 'select2', '山寨/高仿', 14),
(337, 17, 'select2', '华为', 15),
(338, 17, 'select2', '三星', 16),
(339, 17, 'select2', '优派', 17),
(340, 17, 'select2', 'Google', 18),
(341, 17, 'select2', 'iPad', 19),
(342, 17, 'select2', '联想', 20),
(343, 17, 'select2', '其它', 21),
(345, 17, 'select3', '200以下', 2),
(346, 17, 'select3', '200—500', 3),
(347, 17, 'select3', '500—800', 4),
(348, 17, 'select3', '800—1200', 5),
(349, 17, 'select3', '1200—1800', 6),
(350, 17, 'select3', '1800—2500', 7),
(351, 17, 'select3', '2500以上', 8),
(352, 18, 'select1', '供应', 1),
(353, 18, 'select1', '求购', 2),
(355, 18, 'select2', '械仪器仪表', 2),
(356, 18, 'select2', '印刷/塑料机', 3),
(357, 18, 'select2', '发电/化工设备', 4),
(358, 18, 'select2', '纺织/农业/木工', 5),
(359, 18, 'select2', '食品机械', 6),
(360, 18, 'select2', '工程机械机床', 7),
(361, 18, 'select2', '其它', 8),
(363, 18, 'select3', '300以下', 2),
(364, 18, 'select3', '300—600', 3),
(365, 18, 'select3', '600—1000', 4),
(366, 18, 'select3', '1000—1800', 5),
(367, 18, 'select3', '1800—3000', 6),
(368, 18, 'select3', '3000以上', 7),
(369, 19, 'select1', '供应', 1),
(370, 19, 'select1', '求购', 2),
(372, 19, 'select2', '50以下', 2),
(373, 19, 'select2', '50—200', 3),
(374, 19, 'select2', '200—500', 4),
(375, 19, 'select2', '500—1000', 5),
(376, 19, 'select2', '1000以上', 6),
(378, 20, 'select2', '礼品回收', 2),
(379, 20, 'select2', '卡券回收', 3),
(380, 20, 'select2', '办公耗材回收', 4),
(381, 20, 'select2', '数码产品回收', 5),
(382, 20, 'select2', '设备机械回收', 6),
(383, 20, 'select2', '家具回收', 7),
(384, 20, 'select2', '黄金回收', 8),
(385, 20, 'select2', '家电回收', 9),
(386, 20, 'select2', '电脑回收', 10),
(387, 20, 'select2', '废旧物品回收', 11),
(389, 21, 'select1', '2万以下', 2),
(390, 21, 'select1', '2万—5万', 3),
(391, 21, 'select1', '5万—8万', 4),
(392, 21, 'select1', '8万—12万', 5),
(393, 21, 'select1', '12万—18万', 6),
(394, 21, 'select1', '18万—25万', 7),
(395, 21, 'select1', '25万以上', 8),
(397, 21, 'select2', '跑车', 2),
(398, 21, 'select2', 'MPV/商务车', 3),
(399, 21, 'select2', '豪华车', 4),
(400, 21, 'select2', '中型车', 5),
(401, 21, 'select2', 'SUV/越野车', 6),
(402, 21, 'select2', '小型车', 7),
(404, 21, 'select2', '其它', 8),
(406, 21, 'select3', '东风', 2),
(407, 21, 'select3', '奔驰', 3),
(408, 21, 'select3', '标致', 4),
(409, 21, 'select3', '福田', 5),
(410, 21, 'select3', '马自达', 6),
(411, 21, 'select3', '比亚迪', 7),
(412, 21, 'select3', '瑞麒', 8),
(413, 21, 'select3', '长安', 9),
(414, 21, 'select3', '起亚', 10),
(415, 21, 'select3', '福特', 11),
(416, 21, 'select3', '宝马', 12),
(417, 21, 'select3', '奥迪', 13),
(418, 21, 'select3', '丰田', 14),
(419, 21, 'select3', '雪佛兰', 15),
(420, 21, 'select3', '日产', 16),
(421, 21, 'select3', '江淮', 17),
(422, 21, 'select3', '本田', 18),
(423, 21, 'select3', '别克', 19),
(424, 21, 'select3', '现代', 20),
(425, 21, 'select3', '大众', 21),
(426, 21, 'select3', '奇瑞', 22),
(427, 21, 'select3', '长城   ', 23),
(428, 21, 'select3', ' 雪铁龙   ', 24),
(429, 21, 'select3', '中华  ', 25),
(430, 21, 'select3', ' 荣威  ', 26),
(431, 21, 'select3', ' 铃木 ', 27),
(432, 21, 'select3', ' MG ', 42),
(433, 21, 'select3', ' 开瑞   ', 43),
(434, 21, 'select3', '一汽   ', 44),
(435, 21, 'select3', '沃尔沃   ', 45),
(436, 21, 'select3', '金杯', 46),
(437, 21, 'select3', '三菱', 47),
(438, 21, 'select3', '莲花   ', 48),
(439, 21, 'select3', '凯迪拉克    ', 49),
(440, 21, 'select3', '海马   ', 50),
(441, 21, 'select3', '哈飞   ', 51),
(442, 21, 'select3', '长丰     ', 52),
(443, 21, 'select3', '东南    ', 41),
(444, 21, 'select3', '吉利    ', 40),
(445, 21, 'select3', '斯柯达    ', 39),
(446, 21, 'select3', '夏利    ', 28),
(447, 21, 'select3', '昌河   ', 29),
(448, 21, 'select3', '双环   ', 30),
(449, 21, 'select3', '双龙   ', 31),
(450, 21, 'select3', '西安奥拓   ', 32),
(451, 21, 'select3', '斯巴鲁    ', 33),
(452, 21, 'select3', '萨博    ', 34),
(453, 21, 'select3', '中兴   ', 35),
(454, 21, 'select3', '宝骏    ', 36),
(455, 21, 'select3', '众泰   ', 37),
(456, 21, 'select3', 'MINI(迷你)   ', 38),
(457, 21, 'select3', '解放    ', 53),
(458, 21, 'select3', '保时捷    ', 54),
(459, 21, 'select3', '北汽制造    ', 55),
(460, 21, 'select3', '宾利    ', 56),
(461, 21, 'select3', '奔腾   ', 57),
(462, 21, 'select3', '英菲尼迪         ', 58),
(463, 21, 'select3', '吉利英伦   ', 59),
(464, 21, 'select3', '新凯   ', 60),
(465, 21, 'select3', '东风风神     ', 61),
(466, 21, 'select3', '江铃   ', 62),
(467, 21, 'select3', '东风风行    ', 63),
(468, 21, 'select3', '捷豹    ', 64),
(469, 21, 'select3', '菲亚特   ', 65),
(470, 21, 'select3', '克莱斯勒    ', 66),
(471, 21, 'select3', '吉普   ', 67),
(472, 21, 'select3', '吉奥  ', 68),
(473, 21, 'select3', '红旗    ', 69),
(474, 21, 'select3', '华普    ', 70),
(475, 21, 'select3', '华泰   ', 71),
(476, 21, 'select3', '黄海   ', 72),
(477, 21, 'select3', '雷克萨斯    ', 73),
(478, 21, 'select3', '雷诺    ', 74),
(479, 21, 'select3', '欧宝   ', 75),
(480, 21, 'select3', '吉利帝豪   ', 76),
(481, 21, 'select3', '道奇   ', 77),
(482, 21, 'select3', '大迪    ', 78),
(483, 21, 'select3', '讴歌    ', 79),
(484, 21, 'select3', '路虎    ', 80),
(485, 21, 'select3', '力帆     ', 81),
(486, 21, 'select3', '林肯    ', 82),
(487, 21, 'select3', '法拉利    ', 83),
(488, 21, 'select3', '陆风川汽  ', 84),
(489, 21, 'select3', ' 野马   ', 85),
(490, 21, 'select3', '玛莎拉蒂', 86),
(491, 21, 'select3', '兰博基尼', 87),
(492, 21, 'select3', '其他', 88),
(494, 22, 'select1', '2万以下', 2),
(495, 22, 'select1', '2万—4万', 3),
(496, 22, 'select1', '4万—8万', 4),
(497, 22, 'select1', '8万—12万', 5),
(498, 22, 'select1', '12万—18万', 6),
(499, 22, 'select1', '18万—25万', 7),
(500, 22, 'select1', '25万—50万', 8),
(501, 22, 'select1', '50万以上', 9),
(503, 22, 'select2', '小型车', 2),
(504, 22, 'select2', '中型车', 3),
(505, 22, 'select2', 'SUV/越野车', 4),
(506, 22, 'select2', '豪华车', 5),
(507, 22, 'select2', 'MPV/商务车', 6),
(508, 22, 'select2', '跑车', 7),
(509, 22, 'select2', '其它', 8),
(511, 22, 'select3', '奇瑞   ', 46),
(512, 22, 'select3', '大众   ', 55),
(513, 22, 'select3', '现代   ', 56),
(514, 22, 'select3', '别克   ', 58),
(515, 22, 'select3', '本田   ', 59),
(516, 22, 'select3', '江淮   ', 60),
(517, 22, 'select3', '日产   ', 61),
(518, 22, 'select3', '雪佛兰   ', 64),
(519, 22, 'select3', '丰田   ', 54),
(520, 22, 'select3', '奥迪   ', 66),
(521, 22, 'select3', '宝马   ', 65),
(522, 22, 'select3', '福特  ', 62),
(523, 22, 'select3', '起亚  ', 47),
(524, 22, 'select3', '长安   ', 48),
(525, 22, 'select3', '瑞麒   ', 49),
(526, 22, 'select3', '比亚迪    ', 50),
(527, 22, 'select3', '马自达   ', 51),
(528, 22, 'select3', '福田    ', 52),
(529, 22, 'select3', '标致    ', 53),
(530, 22, 'select3', '奔驰   ', 67),
(531, 22, 'select3', '东风   ', 79),
(532, 22, 'select3', '长城   ', 72),
(533, 22, 'select3', '雪铁龙   ', 80),
(534, 22, 'select3', '中华  ', 81),
(535, 22, 'select3', '荣威  ', 82),
(536, 22, 'select3', '铃木  ', 83),
(537, 22, 'select3', 'MG  ', 57),
(538, 22, 'select3', '开瑞   ', 84),
(539, 22, 'select3', '一汽   ', 85),
(540, 22, 'select3', '沃尔沃   ', 86),
(541, 22, 'select3', '金杯   ', 87),
(542, 22, 'select3', '三菱   ', 78),
(543, 22, 'select3', '莲花   ', 77),
(544, 22, 'select3', '凯迪拉克   ', 68),
(545, 22, 'select3', ' 海马  ', 63),
(546, 22, 'select3', ' 哈飞   ', 70),
(547, 22, 'select3', '长丰     ', 71),
(548, 22, 'select3', '东南    ', 73),
(549, 22, 'select3', '吉利    ', 74),
(550, 22, 'select3', '斯柯达    ', 75),
(551, 22, 'select3', '夏利    ', 69),
(552, 22, 'select3', '昌河  ', 44),
(553, 22, 'select3', ' 双环   ', 76),
(554, 22, 'select3', '双龙   ', 45),
(555, 22, 'select3', '西安奥拓   ', 13),
(556, 22, 'select3', '斯巴鲁   ', 14),
(557, 22, 'select3', ' 萨博    ', 15),
(558, 22, 'select3', '中兴   ', 16),
(559, 22, 'select3', '宝骏    ', 17),
(560, 22, 'select3', '众泰   ', 18),
(561, 22, 'select3', 'MINI(迷你)   ', 19),
(562, 22, 'select3', '解放    ', 20),
(563, 22, 'select3', '保时捷    ', 21),
(564, 22, 'select3', '北汽制造    ', 12),
(565, 22, 'select3', '宾利    ', 11),
(566, 22, 'select3', '奔腾   ', 2),
(567, 22, 'select3', '英菲尼迪         ', 3),
(568, 22, 'select3', '吉利英伦   ', 4),
(569, 22, 'select3', '新凯   ', 5),
(570, 22, 'select3', '东风风神     ', 6),
(571, 22, 'select3', '江铃   ', 7),
(572, 22, 'select3', '东风风行    ', 8),
(573, 22, 'select3', '捷豹    ', 9),
(574, 22, 'select3', '菲亚特   ', 10),
(575, 22, 'select3', '克莱斯勒    ', 22),
(576, 22, 'select3', '吉普   ', 23),
(577, 22, 'select3', '吉奥  ', 24),
(578, 22, 'select3', '红旗    ', 36),
(579, 22, 'select3', '华普    ', 37),
(580, 22, 'select3', '华泰   ', 38),
(581, 22, 'select3', '黄海   ', 39),
(582, 22, 'select3', '雷克萨斯    ', 40),
(583, 22, 'select3', '雷诺    ', 41),
(584, 22, 'select3', '欧宝   ', 42),
(585, 22, 'select3', '吉利帝豪   ', 43),
(586, 22, 'select3', '道奇   ', 35),
(587, 22, 'select3', '大迪    ', 34),
(588, 22, 'select3', '讴歌    ', 33),
(589, 22, 'select3', '路虎    ', 25),
(590, 22, 'select3', '力帆     ', 26),
(591, 22, 'select3', '林肯    ', 27),
(592, 22, 'select3', '法拉利   ', 28),
(593, 22, 'select3', ' 陆风川汽   ', 29),
(594, 22, 'select3', '野马   ', 30),
(595, 22, 'select3', '玛莎拉蒂', 31),
(596, 22, 'select3', '拉博基尼', 32),
(597, 22, 'select3', '其它', 88),
(599, 23, 'select1', '2万以下', 2),
(600, 23, 'select1', '2万—5万', 3),
(601, 23, 'select1', '5万—10万', 4),
(602, 23, 'select1', '10万—20万', 5),
(603, 23, 'select1', '20万—30万', 6),
(604, 23, 'select1', '30万以上', 7),
(607, 23, 'select2', '小型车   ', 2),
(608, 23, 'select2', 'SUV/越野车      ', 3),
(609, 23, 'select2', '中型车      ', 4),
(610, 23, 'select2', '豪华车    ', 5),
(611, 23, 'select2', 'MPV/商务车     ', 6),
(612, 23, 'select2', '跑车    ', 7),
(613, 23, 'select2', '其他', 8),
(614, 23, 'select3', '奇瑞    ', 2),
(615, 23, 'select3', '大众   ', 3),
(616, 23, 'select3', '现代   ', 4),
(617, 23, 'select3', '别克   ', 5),
(618, 23, 'select3', '本田   ', 6),
(619, 23, 'select3', '江淮   ', 7),
(620, 23, 'select3', '日产   ', 8),
(621, 23, 'select3', '雪佛兰   ', 9),
(622, 23, 'select3', '丰田   ', 10),
(623, 23, 'select3', '奥迪   ', 11),
(624, 23, 'select3', '宝马   ', 12),
(625, 23, 'select3', '福特  ', 13),
(626, 23, 'select3', '起亚  ', 14),
(627, 23, 'select3', '长安   ', 15),
(628, 23, 'select3', '瑞麒   ', 16),
(629, 23, 'select3', '比亚迪    ', 17),
(630, 23, 'select3', '马自达   ', 18),
(631, 23, 'select3', '福田    ', 19),
(632, 23, 'select3', '标致    ', 20),
(633, 23, 'select3', '奔驰   ', 21),
(634, 23, 'select3', '东风   ', 22),
(635, 23, 'select3', '长城   ', 23),
(636, 23, 'select3', '雪铁龙   ', 24),
(637, 23, 'select3', '中华  ', 25),
(638, 23, 'select3', '荣威  ', 26),
(639, 23, 'select3', '铃木  ', 27),
(640, 23, 'select3', 'MG  ', 28),
(641, 23, 'select3', '开瑞   ', 29),
(642, 23, 'select3', '一汽   ', 30),
(643, 23, 'select3', '沃尔沃   ', 31),
(644, 23, 'select3', '金杯   ', 32),
(645, 23, 'select3', '三菱   ', 33),
(646, 23, 'select3', '莲花   ', 34),
(647, 23, 'select3', '凯迪拉克    ', 35),
(648, 23, 'select3', '海马   ', 36),
(649, 23, 'select3', '哈飞   ', 37),
(650, 23, 'select3', '长丰     ', 38),
(651, 23, 'select3', '东南    ', 39),
(652, 23, 'select3', '吉利    ', 40),
(653, 23, 'select3', '斯柯达    ', 41),
(654, 23, 'select3', '夏利    ', 42),
(655, 23, 'select3', '昌河   ', 43),
(656, 23, 'select3', '双环   ', 44),
(657, 23, 'select3', '双龙   ', 45),
(658, 23, 'select3', '西安奥拓   ', 46),
(659, 23, 'select3', '斯巴鲁    ', 47),
(660, 23, 'select3', '萨博    ', 48),
(661, 23, 'select3', '中兴   ', 49),
(662, 23, 'select3', '宝骏    ', 50),
(663, 23, 'select3', '众泰   ', 51),
(664, 23, 'select3', 'MINI(迷你)   ', 52),
(665, 23, 'select3', '解放    ', 53),
(666, 23, 'select3', '保时捷    ', 54),
(667, 23, 'select3', '北汽制造    ', 55),
(668, 23, 'select3', '宾利    ', 56),
(669, 23, 'select3', '奔腾   ', 57),
(670, 23, 'select3', '英菲尼迪         ', 58),
(671, 23, 'select3', '吉利英伦   ', 59),
(672, 23, 'select3', '新凯   ', 60),
(673, 23, 'select3', '东风风神     ', 61),
(674, 23, 'select3', '江铃   ', 62),
(675, 23, 'select3', '东风风行    ', 63),
(676, 23, 'select3', '捷豹    ', 64),
(677, 23, 'select3', '菲亚特   ', 65),
(678, 23, 'select3', '克莱斯勒    ', 66),
(679, 23, 'select3', '吉普   ', 67),
(680, 23, 'select3', '吉奥  ', 68),
(681, 23, 'select3', '红旗    ', 69),
(682, 23, 'select3', '华普    ', 70),
(683, 23, 'select3', '华泰   ', 71),
(684, 23, 'select3', '黄海   ', 72),
(685, 23, 'select3', '雷克萨斯    ', 73),
(686, 23, 'select3', '雷诺    ', 74),
(687, 23, 'select3', '欧宝   ', 75),
(688, 23, 'select3', '吉利帝豪   ', 76),
(689, 23, 'select3', '道奇   ', 77),
(690, 23, 'select3', '大迪    ', 78),
(691, 23, 'select3', '讴歌    ', 79),
(692, 23, 'select3', '路虎    ', 80),
(693, 23, 'select3', '力帆     ', 81),
(694, 23, 'select3', '林肯    ', 82),
(695, 23, 'select3', '法拉利    ', 83),
(696, 23, 'select3', '陆风川汽   ', 84),
(697, 23, 'select3', '野马   ', 85),
(698, 23, 'select3', '玛莎拉蒂', 86),
(699, 23, 'select3', '兰博基尼', 87),
(700, 23, 'select3', '其他', 88),
(702, 24, 'select1', '电动摩托车', 2),
(703, 24, 'select1', '电动自行车', 3),
(704, 24, 'select1', '电动三轮车', 4),
(705, 24, 'select1', '其它', 5),
(707, 24, 'select2', '爱玛', 2),
(708, 24, 'select2', '新日', 3),
(709, 24, 'select2', '绿源', 4),
(710, 24, 'select2', '立马', 5),
(711, 24, 'select2', '雅迪', 6),
(712, 24, 'select2', '小刀', 7),
(713, 24, 'select2', '其它', 8),
(715, 24, 'select3', '300元以下', 2),
(716, 24, 'select3', '300元—600元', 3),
(717, 24, 'select3', '600元—1000元', 4),
(718, 24, 'select3', '1000元—1500元', 5),
(719, 24, 'select3', '1500元—2000元', 6),
(720, 24, 'select3', '2000元以上', 7),
(722, 25, 'select1', '山地车 ', 2),
(723, 25, 'select1', '死飞    ', 3),
(724, 25, 'select1', '普通车    ', 4),
(725, 25, 'select1', '公路车    ', 5),
(726, 25, 'select1', '折叠车    ', 6),
(727, 25, 'select1', '休闲车    ', 7),
(728, 25, 'select1', '三轮车    ', 8),
(729, 25, 'select1', '折叠童车', 9),
(730, 25, 'select1', '其他', 10),
(732, 25, 'select2', '捷安特   ', 2),
(733, 25, 'select2', '美利达   ', 3),
(734, 25, 'select2', '凤凰   ', 4),
(735, 25, 'select2', '永久   ', 5),
(736, 25, 'select2', '富士达    ', 6),
(737, 25, 'select2', '喜德盛    ', 7),
(738, 25, 'select2', '捷马   ', 8),
(739, 25, 'select2', '飞鸽    ', 9),
(740, 25, 'select2', '飞跃   ', 10),
(741, 25, 'select2', '英克莱  ', 11),
(742, 25, 'select2', '其他', 12),
(744, 25, 'select3', '100元以下', 2),
(745, 25, 'select3', '100元—200元', 3),
(746, 25, 'select3', '200元—500元', 4),
(747, 25, 'select3', '500元—1000元', 5),
(748, 25, 'select3', '1000以上', 6),
(750, 26, 'select1', '自卸车   ', 2),
(751, 26, 'select1', '厢式货车    ', 3),
(752, 26, 'select1', '平板车    ', 4),
(753, 26, 'select1', '半挂车    ', 5),
(754, 26, 'select1', '油罐车    ', 6),
(755, 26, 'select1', '水泥罐车   ', 7),
(756, 26, 'select1', '牵引车  ', 8),
(757, 26, 'select1', '随车吊   ', 9),
(758, 26, 'select1', '其他', 10),
(760, 26, 'select2', '瑞沃奥威   ', 2),
(761, 26, 'select2', '欧曼   ', 3),
(762, 26, 'select2', '解放    ', 4),
(763, 26, 'select2', '江淮   ', 5),
(764, 26, 'select2', '时代金刚   ', 6),
(765, 26, 'select2', '东风天龙   ', 7),
(766, 26, 'select2', '高栏   ', 8),
(767, 26, 'select2', '东风   ', 9),
(768, 26, 'select2', '福田   ', 10),
(769, 26, 'select2', '陕汽德龙       ', 11),
(770, 26, 'select2', '斯太尔   ', 12),
(771, 26, 'select2', '豪沃      ', 13),
(772, 26, 'select2', '红岩    ', 14),
(773, 26, 'select2', '陕汽奥龙   ', 15),
(774, 26, 'select2', '康明斯   ', 16),
(775, 26, 'select2', '悍威   ', 17),
(776, 26, 'select2', '新大威    ', 18),
(777, 26, 'select2', '解放赛龙    ', 19),
(778, 26, 'select2', '跃进   ', 20),
(779, 26, 'select2', '威铃    ', 21),
(780, 26, 'select2', '凯马   ', 22),
(781, 26, 'select2', '中国重汽    ', 23),
(782, 26, 'select2', '江铃   ', 24),
(783, 26, 'select2', '中国重汽豪运   ', 25),
(784, 26, 'select2', '其他', 26),
(786, 26, 'select3', '5万以下', 2),
(787, 26, 'select3', '5万—8万', 3),
(788, 26, 'select3', '8万—12万', 4),
(789, 26, 'select3', '12万—18万', 5),
(790, 26, 'select3', '18万—25万', 6),
(791, 26, 'select3', '25万以上', 7),
(793, 27, 'select1', '踏板', 2),
(794, 27, 'select1', '轻骑', 3),
(795, 27, 'select1', '跑车', 4),
(796, 27, 'select1', '越野', 5),
(797, 27, 'select1', '其它', 6),
(799, 27, 'select2', '建设    ', 2),
(800, 27, 'select2', '雅马哈    ', 3),
(801, 27, 'select2', '本田   ', 4),
(802, 27, 'select2', '铃木  ', 5),
(803, 27, 'select2', '轻骑   ', 6),
(804, 27, 'select2', '豪爵   ', 7),
(805, 27, 'select2', '钱江   ', 8),
(806, 27, 'select2', '光阳   ', 9),
(807, 27, 'select2', '宗申  ', 10),
(808, 27, 'select2', '金城   ', 11),
(809, 27, 'select2', '隆鑫   ', 12),
(810, 27, 'select2', '踏板   ', 13),
(811, 27, 'select2', '巧格   ', 14),
(812, 27, 'select2', '力帆   ', 15),
(813, 27, 'select2', '迅鹰   ', 16),
(814, 27, 'select2', '三阳   ', 17),
(815, 27, 'select2', '川崎   ', 18),
(816, 27, 'select2', '新大洲    ', 19),
(817, 27, 'select2', '林海   ', 20),
(818, 27, 'select2', '凌鹰   ', 21),
(819, 27, 'select2', '哈雷   ', 22),
(820, 27, 'select2', '春风   ', 23),
(821, 27, 'select2', '飞鹰   ', 24),
(822, 27, 'select2', '街车   ', 25),
(823, 27, 'select2', '劲隆       ', 26),
(824, 27, 'select2', '小帅哥    ', 27),
(825, 27, 'select2', '呈捷    ', 28),
(826, 27, 'select2', '大地鹰王    ', 29),
(827, 27, 'select2', '钻豹   ', 30),
(828, 27, 'select2', '龟王   ', 31),
(829, 27, 'select2', '天剑   ', 32),
(830, 27, 'select2', '越野    ', 33),
(831, 27, 'select2', '大阳    ', 34),
(832, 27, 'select2', '祖玛   ', 35),
(833, 27, 'select2', '重庆大运         ', 36),
(834, 27, 'select2', '马杰斯特   ', 37),
(835, 27, 'select2', '公主   ', 38),
(836, 27, 'select2', '大帅哥   ', 39),
(837, 27, 'select2', '太子   ', 40),
(838, 27, 'select2', '高赛   ', 41),
(839, 27, 'select2', '南方   ', 42),
(840, 27, 'select2', '铁马   ', 43),
(841, 27, 'select2', '猎鹰   ', 44),
(842, 27, 'select2', '五羊   ', 45),
(843, 27, 'select2', '邦德   ', 46),
(844, 27, 'select2', '巡洋舰   ', 47),
(845, 27, 'select2', '福喜  ', 48),
(846, 27, 'select2', '小未战    ', 49),
(847, 27, 'select2', '大未战   ', 50),
(848, 27, 'select2', '海王星    ', 51),
(849, 27, 'select2', '幸福   ', 52),
(850, 27, 'select2', '大绵羊    ', 53),
(851, 27, 'select2', '长江   ', 54),
(852, 27, 'select2', '其他', 55),
(854, 27, 'select3', '500元以下', 2),
(855, 27, 'select3', '500元—1000元', 3),
(856, 27, 'select3', '1000元—2000元', 4),
(857, 27, 'select3', '2000元—3000元', 5),
(858, 27, 'select3', '3000元以上', 6),
(861, 28, 'select1', '没车', 2),
(862, 28, 'select1', '有车', 3),
(863, 28, 'select2', '长途拼车', 2),
(864, 28, 'select2', '上下班拼车', 3),
(865, 28, 'select2', '上下学拼车', 4),
(866, 28, 'select2', '其它拼车', 5),
(867, 29, 'select1', '供应', 1),
(868, 29, 'select1', '求购', 2),
(870, 29, 'select2', '配件   ', 2),
(871, 29, 'select2', '影音电器    ', 3),
(872, 29, 'select2', '清洁保养   ', 4),
(873, 29, 'select2', 'GPS   ', 5),
(874, 29, 'select2', '外饰    ', 6),
(875, 29, 'select2', '内饰', 7),
(876, 29, 'select2', '坐垫/脚垫   ', 8),
(877, 29, 'select2', ' 轮胎/轮毂    ', 9),
(878, 29, 'select2', '其他', 10),
(880, 29, 'select3', '50元以下', 2),
(881, 29, 'select3', '50元—150元', 3),
(882, 29, 'select3', '150元—300元', 4),
(883, 29, 'select3', '300元—500元', 5),
(884, 29, 'select3', '500元—1000元', 6),
(885, 29, 'select3', '1000元以上', 7),
(887, 30, 'select1', '吉利   ', 2),
(888, 30, 'select1', '比亚迪    ', 3),
(889, 30, 'select1', '吉利帝豪    ', 4),
(890, 30, 'select1', '奇瑞    ', 5),
(891, 30, 'select1', '大众    ', 6),
(892, 30, 'select1', '荣威    ', 7),
(893, 30, 'select1', 'MG   ', 8),
(894, 30, 'select1', '东风   ', 9),
(895, 30, 'select1', '东风风神    ', 10),
(896, 30, 'select1', '别克        ', 11),
(897, 30, 'select1', '起亚     ', 12),
(898, 30, 'select1', '宝马    ', 13),
(899, 30, 'select1', '福特    ', 14),
(900, 30, 'select1', '现代    ', 15),
(901, 30, 'select1', '铃木    ', 16),
(902, 30, 'select1', '本田    ', 17),
(903, 30, 'select1', '雪佛兰    ', 18),
(904, 30, 'select1', '奥迪   ', 19),
(905, 30, 'select1', '江铃   ', 20),
(906, 30, 'select1', '沃尔沃    ', 21),
(907, 30, 'select1', '解放    ', 22),
(908, 30, 'select1', '开瑞   ', 23),
(909, 30, 'select1', '奔驰    ', 24),
(910, 30, 'select1', '雪铁龙    ', 25),
(911, 30, 'select1', '道奇   ', 26),
(912, 30, 'select1', '江淮    ', 27),
(913, 30, 'select1', '捷豹    ', 28),
(914, 30, 'select1', '北汽制造     ', 29),
(915, 30, 'select1', '一汽    ', 30),
(916, 30, 'select1', '标致    ', 31),
(917, 30, 'select1', '莲花   ', 32),
(918, 30, 'select1', '东风风行   ', 33),
(919, 30, 'select1', '瑞麒   ', 34),
(920, 30, 'select1', '三菱    ', 35),
(921, 30, 'select1', '斯巴鲁   ', 36),
(922, 30, 'select1', '奔腾    ', 37),
(923, 30, 'select1', '日产   ', 38),
(924, 30, 'select1', '斯柯达    ', 39),
(925, 30, 'select1', '萨博    ', 40),
(926, 30, 'select1', '双环    ', 41),
(927, 30, 'select1', '西安奥拓    ', 42),
(928, 30, 'select1', '双龙    ', 43),
(929, 30, 'select1', '保时捷  ', 44),
(930, 30, 'select1', '中兴   ', 45),
(931, 30, 'select1', '中华    ', 46),
(932, 30, 'select1', '众泰    ', 47),
(933, 30, 'select1', '宝骏   ', 48),
(934, 30, 'select1', 'MINI(迷你)   ', 49),
(935, 30, 'select1', '长丰    ', 50),
(936, 30, 'select1', '长城   ', 51),
(937, 30, 'select1', '新凯   ', 52),
(938, 30, 'select1', '英菲尼迪  ', 53),
(939, 30, 'select1', '吉利英伦   ', 54),
(940, 30, 'select1', '长安  ', 55),
(941, 30, 'select1', '夏利   ', 56),
(942, 30, 'select1', '马自达   ', 57),
(943, 30, 'select1', '华泰    ', 58),
(944, 30, 'select1', '华普   ', 59),
(945, 30, 'select1', '黄海  ', 60),
(946, 30, 'select1', '吉奥   ', 61),
(947, 30, 'select1', '大迪    ', 62),
(948, 30, 'select1', '吉普    ', 63),
(949, 30, 'select1', '红旗   ', 64),
(950, 30, 'select1', '海马   ', 65),
(951, 30, 'select1', '丰田     ', 66),
(952, 30, 'select1', '菲亚特  ', 67),
(953, 30, 'select1', '东南   ', 68),
(954, 30, 'select1', '福田   ', 69),
(955, 30, 'select1', '哈飞    ', 70),
(956, 30, 'select1', '金杯   ', 71),
(957, 30, 'select1', '川汽野马   ', 72),
(958, 30, 'select1', '路虎   ', 73),
(959, 30, 'select1', '陆风   ', 74),
(960, 30, 'select1', '法拉利    ', 75),
(961, 30, 'select1', '讴歌    ', 76),
(962, 30, 'select1', '欧宝    ', 77),
(963, 30, 'select1', '昌河    ', 78),
(964, 30, 'select1', '林肯', 79),
(965, 30, 'select1', '克莱斯勒   ', 80),
(966, 30, 'select1', '凯迪拉克    ', 81),
(967, 30, 'select1', '雷克萨斯   ', 82),
(968, 30, 'select1', '雷诺   ', 83),
(969, 30, 'select1', '力帆   ', 84),
(970, 30, 'select1', '宾利   ', 85),
(971, 30, 'select1', '玛莎拉蒂', 86),
(972, 30, 'select1', '兰博基尼', 87),
(973, 30, 'select1', '其他', 88),
(975, 30, 'select2', '10万以下', 2),
(976, 30, 'select2', '10万—20万', 3),
(977, 30, 'select2', '20万—30万', 4),
(978, 30, 'select2', '30万—50万', 5),
(979, 30, 'select2', '50万—100万', 6),
(980, 30, 'select2', '100万以上', 7),
(982, 31, 'select1', '汽车保养', 2),
(983, 31, 'select1', '汽车美容', 3),
(984, 31, 'select1', '汽车改装', 4),
(985, 31, 'select1', '汽车检修', 5),
(986, 31, 'select1', '洗车', 6),
(987, 31, 'select1', '其它', 7),
(989, 32, 'select1', '装载机', 2),
(990, 32, 'select1', '叉车', 3),
(991, 32, 'select1', '挖掘机', 4),
(992, 32, 'select1', '吊车', 5),
(993, 32, 'select1', '搅拌车', 6),
(994, 32, 'select1', '推土机', 7),
(995, 32, 'select1', '压路机', 8),
(996, 32, 'select1', '随车吊', 9),
(997, 32, 'select1', '其他', 10),
(999, 32, 'select2', '龙工', 2),
(1000, 32, 'select2', '柳工', 3),
(1001, 32, 'select2', '小松', 4),
(1002, 32, 'select2', '临工', 5),
(1003, 32, 'select2', '徐工', 6),
(1004, 32, 'select2', '玉柴', 7),
(1005, 32, 'select2', '豪沃', 8),
(1006, 32, 'select2', '日立', 9),
(1007, 32, 'select2', '山推', 10),
(1008, 32, 'select2', '现代', 11),
(1009, 32, 'select2', '山河智能', 12),
(1010, 32, 'select2', '尼桑', 13),
(1011, 32, 'select2', '东方红', 14),
(1012, 32, 'select2', '卡特', 15),
(1013, 32, 'select2', '长江', 16),
(1014, 32, 'select2', '宣化', 17),
(1015, 32, 'select2', '三一重工', 18),
(1016, 32, 'select2', '其他', 19),
(1018, 32, 'select3', '2万以下', 2),
(1019, 32, 'select3', '2万—5万', 3),
(1020, 32, 'select3', '5万—8万', 4),
(1021, 32, 'select3', '8万—12万', 5),
(1022, 32, 'select3', '12万—18万', 6),
(1023, 32, 'select3', '18万—25万', 7),
(1024, 32, 'select3', '25万以上', 8),
(1026, 33, 'select1', '过户上牌', 2),
(1027, 33, 'select1', '年检验车', 3),
(1028, 33, 'select1', '车辆保险', 4),
(1030, 34, 'select1', '面包车', 2),
(1031, 34, 'select1', '小巴车', 3),
(1032, 34, 'select1', '中巴车', 4),
(1033, 34, 'select1', '大客车', 5),
(1035, 34, 'select2', '五菱', 2),
(1036, 34, 'select2', '长安', 3),
(1037, 34, 'select2', '东风小康', 4),
(1038, 34, 'select2', '江淮', 5),
(1039, 34, 'select2', '开瑞', 6),
(1040, 34, 'select2', '哈飞', 7),
(1041, 34, 'select2', '金杯', 8),
(1042, 34, 'select2', '金龙', 9),
(1043, 34, 'select2', '东南', 10),
(1044, 34, 'select2', '依维柯', 11),
(1045, 34, 'select2', '佳宝', 12),
(1046, 34, 'select2', '昌河', 13),
(1047, 34, 'select2', '松花江', 14),
(1048, 34, 'select2', '宇通', 15),
(1049, 34, 'select2', '福田', 16),
(1050, 34, 'select2', '少林', 17),
(1051, 34, 'select2', '全顺', 18),
(1052, 34, 'select2', '丰田', 19),
(1053, 34, 'select2', '江铃', 20),
(1054, 34, 'select2', '其他', 21),
(1056, 34, 'select3', '2万以下', 2),
(1057, 34, 'select3', '2万—3万', 3),
(1058, 34, 'select3', '3万—5万', 4),
(1059, 34, 'select3', '5万—8万', 5),
(1060, 34, 'select3', '8万—12万', 6),
(1061, 34, 'select3', '12万—20万', 7),
(1062, 34, 'select3', '20万以上', 8),
(1064, 35, 'select1', '拖拉机', 2),
(1065, 35, 'select1', '收割机', 3),
(1066, 35, 'select1', '旋耕/微耕机', 4),
(1067, 35, 'select1', '插秧机', 5),
(1068, 35, 'select1', '抽水机', 6),
(1069, 35, 'select1', '其他', 7),
(1072, 35, 'select2', '常林', 2),
(1073, 35, 'select2', '常发', 3),
(1074, 35, 'select2', '五征', 4),
(1075, 35, 'select2', '四方', 5),
(1076, 35, 'select2', '黄金海马', 6),
(1077, 35, 'select2', '沭河', 7),
(1078, 35, 'select2', '约翰迪尔', 8),
(1079, 35, 'select2', '福田雷沃', 9),
(1080, 35, 'select2', '东风', 10),
(1081, 35, 'select2', '纽荷兰', 11),
(1082, 35, 'select2', '时风', 12),
(1083, 35, 'select2', '东方红', 13),
(1084, 35, 'select2', '其他', 14),
(1085, 35, 'select3', '1万以下', 2),
(1086, 35, 'select3', '1万—2万', 3),
(1087, 35, 'select3', '2万—4万', 4),
(1088, 35, 'select3', '4万—6万', 5),
(1089, 35, 'select3', '6万—8万', 6),
(1090, 35, 'select3', '8万以上', 7),
(1092, 36, 'select1', '小型车', 2),
(1093, 36, 'select1', 'SUV/越野车', 3),
(1094, 36, 'select1', '中型车', 4),
(1095, 36, 'select1', '豪华车', 5),
(1096, 36, 'select1', 'MPV/商务车', 6),
(1097, 36, 'select1', '跑车', 7),
(1098, 36, 'select1', '面包车', 8),
(1101, 36, 'select1', '其它', 9),
(1102, 36, 'select2', '奇瑞   ', 2),
(1103, 36, 'select2', '大众    ', 3),
(1104, 36, 'select2', '现代   ', 4),
(1105, 36, 'select2', '别克   ', 5),
(1106, 36, 'select2', '本田   ', 6),
(1107, 36, 'select2', '江淮   ', 7),
(1108, 36, 'select2', '日产   ', 8),
(1109, 36, 'select2', '雪佛兰   ', 9),
(1110, 36, 'select2', '丰田   ', 10),
(1111, 36, 'select2', '奥迪   ', 11),
(1112, 36, 'select2', '宝马   ', 12),
(1113, 36, 'select2', '福特  ', 13),
(1114, 36, 'select2', '起亚  ', 14),
(1115, 36, 'select2', '长安   ', 15),
(1116, 36, 'select2', '瑞麒   ', 16),
(1117, 36, 'select2', '比亚迪    ', 17),
(1118, 36, 'select2', '马自达   ', 18),
(1119, 36, 'select2', '福田    ', 19),
(1120, 36, 'select2', '标致    ', 20),
(1121, 36, 'select2', '奔驰   ', 21),
(1122, 36, 'select2', '东风   ', 22),
(1123, 36, 'select2', '长城   ', 23),
(1124, 36, 'select2', '雪铁龙   ', 24),
(1125, 36, 'select2', '中华  ', 25),
(1126, 36, 'select2', '荣威  ', 26),
(1127, 36, 'select2', '铃木  ', 27),
(1128, 36, 'select2', 'MG  ', 28),
(1129, 36, 'select2', '开瑞   ', 29),
(1130, 36, 'select2', '一汽   ', 30),
(1131, 36, 'select2', '沃尔沃   ', 31),
(1132, 36, 'select2', '金杯   ', 32),
(1133, 36, 'select2', '三菱   ', 33),
(1134, 36, 'select2', '莲花   ', 34),
(1135, 36, 'select2', '凯迪拉克    ', 35),
(1136, 36, 'select2', '海马   ', 36),
(1137, 36, 'select2', '哈飞   ', 37),
(1138, 36, 'select2', '长丰     ', 38),
(1139, 36, 'select2', '东南    ', 39),
(1140, 36, 'select2', '吉利    ', 40),
(1141, 36, 'select2', '斯柯达    ', 41),
(1142, 36, 'select2', '夏利    ', 42),
(1143, 36, 'select2', '昌河   ', 43),
(1144, 36, 'select2', '双环   ', 44),
(1145, 36, 'select2', '双龙   ', 45),
(1146, 36, 'select2', '西安奥拓   ', 46),
(1147, 36, 'select2', '斯巴鲁    ', 47),
(1148, 36, 'select2', '萨博    ', 48),
(1149, 36, 'select2', '中兴   ', 49),
(1150, 36, 'select2', '宝骏    ', 50),
(1151, 36, 'select2', '众泰   ', 51),
(1152, 36, 'select2', 'MINI(迷你)   ', 52),
(1153, 36, 'select2', '解放    ', 53),
(1154, 36, 'select2', '保时捷    ', 54),
(1155, 36, 'select2', '北汽制造    ', 55),
(1156, 36, 'select2', '宾利    ', 56),
(1157, 36, 'select2', '奔腾   ', 57),
(1158, 36, 'select2', '英菲尼迪         ', 58),
(1159, 36, 'select2', '吉利英伦   ', 59),
(1160, 36, 'select2', '新凯   ', 60),
(1161, 36, 'select2', '东风风神     ', 61),
(1162, 36, 'select2', '江铃   ', 62),
(1163, 36, 'select2', '东风风行    ', 63),
(1164, 36, 'select2', '捷豹    ', 64),
(1165, 36, 'select2', '菲亚特   ', 65),
(1166, 36, 'select2', '克莱斯勒    ', 66),
(1167, 36, 'select2', '吉普   ', 67),
(1168, 36, 'select2', '吉奥  ', 68),
(1169, 36, 'select2', '红旗    ', 69),
(1170, 36, 'select2', '华普    ', 70),
(1171, 36, 'select2', '华泰   ', 71),
(1172, 36, 'select2', '黄海   ', 72),
(1173, 36, 'select2', '雷克萨斯    ', 73),
(1174, 36, 'select2', '雷诺    ', 74),
(1175, 36, 'select2', '欧宝   ', 75),
(1176, 36, 'select2', '吉利帝豪   ', 76),
(1177, 36, 'select2', '道奇   ', 77),
(1178, 36, 'select2', '大迪    ', 78),
(1179, 36, 'select2', '讴歌    ', 79),
(1180, 36, 'select2', '路虎    ', 80),
(1181, 36, 'select2', '力帆     ', 81),
(1182, 36, 'select2', '林肯    ', 82),
(1183, 36, 'select2', '法拉利    ', 83),
(1184, 36, 'select2', '陆风川汽   ', 84),
(1185, 36, 'select2', '野马   ', 85),
(1186, 36, 'select2', '玛莎拉蒂', 86),
(1187, 36, 'select2', '兰博基尼', 87),
(1188, 36, 'select2', '其他', 88),
(1189, 36, 'select3', '1万以下', 2),
(1190, 36, 'select3', '1万—2万', 3),
(1191, 36, 'select3', '2万—4万', 4),
(1192, 36, 'select3', '4万以上', 5),
(1194, 37, 'select1', '车辆收购', 2),
(1195, 37, 'select1', '车辆评估', 3),
(1199, 38, 'select1', '快递员', 2),
(1200, 38, 'select1', '送货员', 3),
(1201, 38, 'select1', '保安', 4),
(1202, 38, 'select1', '编辑', 5),
(1203, 38, 'select1', '前台', 6),
(1204, 38, 'select1', '收银员', 7),
(1205, 38, 'select1', '店长', 8),
(1206, 38, 'select1', '摄影/影视', 9),
(1207, 38, 'select1', '广告/美工/设计', 10),
(1208, 38, 'select1', '保健按摩', 11),
(1209, 38, 'select1', 'KTV/酒吧', 12),
(1210, 38, 'select1', '美容美发', 13),
(1211, 38, 'select1', '网管', 14),
(1212, 38, 'select1', '翻译', 15),
(1213, 38, 'select1', '仓管', 16),
(1214, 38, 'select1', '切配', 17),
(1215, 38, 'select1', '厨师', 18),
(1216, 38, 'select1', '司机', 19),
(1217, 38, 'select1', '文员', 20),
(1218, 38, 'select1', '人事', 21),
(1219, 38, 'select1', '客服', 22),
(1220, 38, 'select1', '服务员', 23),
(1221, 38, 'select1', '营业员', 24),
(1222, 38, 'select1', '工人/技工', 25),
(1223, 38, 'select1', '行政', 26),
(1224, 38, 'select1', '房产经纪人', 27),
(1225, 38, 'select1', '助理', 28),
(1226, 38, 'select1', '教育/培训/咨询', 29),
(1227, 38, 'select1', '金融/银行/保险', 30),
(1228, 38, 'select1', '财务/会计/出纳', 31),
(1229, 38, 'select1', '家政', 32),
(1230, 38, 'select1', '保洁', 33),
(1231, 38, 'select1', '销售/业务员', 34),
(1232, 38, 'select1', '程序工程师', 35),
(1233, 38, 'select1', '其他', 36),
(1234, 38, 'select2', '女', 2),
(1235, 38, 'select2', '男', 3),
(1236, 38, 'select3', '本科及以上', 2),
(1237, 38, 'select3', '大专', 3),
(1238, 38, 'select3', '高中/中专', 4),
(1239, 38, 'select3', '初中及以下', 5),
(1241, 39, 'select1', '翻译', 2),
(1242, 39, 'select1', '演员', 3),
(1243, 39, 'select1', '客服', 4),
(1244, 39, 'select1', '充场/座谈会', 5),
(1245, 39, 'select1', '摄影', 6),
(1246, 39, 'select1', '网站', 7),
(1247, 39, 'select1', '会计', 8),
(1248, 39, 'select1', '模特', 9),
(1249, 39, 'select1', '礼仪', 10),
(1250, 39, 'select1', '设计', 11),
(1251, 39, 'select1', '家教', 12),
(1252, 39, 'select1', '服务员', 13),
(1253, 39, 'select1', '场地布置', 14),
(1254, 39, 'select1', '其他', 15),
(1256, 39, 'select2', '女', 2),
(1257, 39, 'select2', '男', 3),
(1259, 40, 'select1', '旅游', 2),
(1260, 40, 'select1', '运动', 3),
(1261, 40, 'select1', '唱歌/泡吧', 4),
(1262, 40, 'select1', '创业', 5),
(1263, 40, 'select1', '做公益', 6),
(1264, 40, 'select1', '逛街', 7),
(1265, 40, 'select1', '学习', 8),
(1266, 40, 'select1', '玩桌游', 9),
(1267, 40, 'select1', '看演出', 10),
(1268, 40, 'select1', '晨跑', 11),
(1269, 40, 'select1', '广场活动', 12),
(1270, 40, 'select1', '其他', 13),
(1272, 40, 'select2', '女', 2),
(1273, 40, 'select2', '男', 3),
(1275, 41, 'select1', '女', 2),
(1276, 41, 'select1', '男', 3),
(1278, 41, 'select2', '25岁以下', 2),
(1279, 41, 'select2', '25岁—30岁', 3),
(1280, 41, 'select2', '30岁—40岁', 4),
(1281, 41, 'select2', '40岁—50岁', 5),
(1282, 41, 'select2', '50岁—60岁', 6),
(1283, 41, 'select2', '60岁以上', 7),
(1285, 42, 'select1', '女', 2),
(1286, 42, 'select1', '男', 3),
(1288, 42, 'select2', '20岁以下', 2),
(1289, 42, 'select2', '20岁—25岁', 3),
(1290, 42, 'select2', '25岁—30岁岁', 4),
(1291, 42, 'select2', '30岁—40岁', 5),
(1292, 42, 'select2', '40岁—50岁', 6),
(1293, 42, 'select2', '50岁以上', 7),
(1295, 44, 'select1', '魔术', 17),
(1296, 44, 'select1', '古玩鉴赏', 18),
(1297, 44, 'select1', '电器维修', 19),
(1298, 44, 'select1', '唱歌', 20),
(1299, 44, 'select1', '方言', 21),
(1300, 44, 'select1', '理财/金融', 22),
(1301, 44, 'select1', '数理化', 23),
(1302, 44, 'select1', '武术', 24),
(1303, 44, 'select1', '电工', 25),
(1304, 44, 'select1', '象棋/围棋', 26),
(1305, 44, 'select1', '中医', 27),
(1306, 44, 'select1', '平面设计', 28),
(1307, 44, 'select1', '服装设计', 29),
(1308, 44, 'select1', '会计/财务', 16),
(1309, 44, 'select1', '乐器', 15),
(1310, 44, 'select1', '美容/按摩', 2),
(1311, 44, 'select1', '外语', 3),
(1312, 44, 'select1', '开车', 4),
(1313, 44, 'select1', '电脑', 5),
(1314, 44, 'select1', '体育/打球', 6),
(1315, 44, 'select1', '跳舞', 7),
(1316, 44, 'select1', '室内设计', 8),
(1317, 44, 'select1', '摄影', 9),
(1318, 44, 'select1', '销售', 10),
(1319, 44, 'select1', '书法绘画', 11),
(1320, 44, 'select1', '烹饪', 12),
(1321, 44, 'select1', '投资/开店', 13),
(1322, 44, 'select1', '电脑程序', 14),
(1323, 44, 'select1', '其他', 30),
(1325, 45, 'select1', '寻人启事', 2),
(1326, 45, 'select1', '寻物启事', 3),
(1327, 45, 'select1', '寻宠物启事', 4),
(1328, 45, 'select1', '老乡', 5),
(1329, 45, 'select1', '其他', 6),
(1331, 46, 'select1', '没车', 2),
(1332, 46, 'select1', '有车', 3),
(1334, 46, 'select2', '长途拼车', 2),
(1335, 46, 'select2', '上下班拼车', 3),
(1336, 46, 'select2', '上下学拼车', 4),
(1337, 46, 'select2', '其他拼车', 5),
(1339, 47, 'select1', '整套出租', 2),
(1340, 47, 'select1', '单间出租', 3),
(1341, 47, 'select1', '床位出租', 4),
(1343, 47, 'select2', '500元以下', 2),
(1344, 47, 'select2', '500元—1000元', 3),
(1345, 47, 'select2', '1000元—1500元', 4),
(1346, 47, 'select2', '1500元—2500元', 5),
(1347, 47, 'select2', '2500元—3500元', 6),
(1348, 47, 'select2', '3500元以上', 7),
(1350, 47, 'select3', '4室及以上', 2),
(1351, 47, 'select3', '3室', 3),
(1352, 47, 'select3', '2室', 4),
(1353, 47, 'select3', '1室', 5),
(1355, 48, 'select1', '整套出租', 2),
(1356, 48, 'select1', '单间出租', 3),
(1357, 48, 'select1', '床位出租', 4),
(1359, 48, 'select2', '500元以下', 2),
(1360, 48, 'select2', '500元—1000元', 3),
(1361, 48, 'select2', '1000元—1500元', 4),
(1362, 48, 'select2', '1500元—2500元', 5),
(1363, 48, 'select2', '2500元—3500元', 6),
(1364, 48, 'select2', '3500元以上', 7),
(1366, 48, 'select3', '4室及以上', 2),
(1367, 48, 'select3', '3室', 3),
(1368, 48, 'select3', '2室', 4),
(1369, 48, 'select3', '1室', 5),
(1371, 49, 'select1', '限70平米以下', 2),
(1372, 49, 'select1', '70平米—90平米', 3),
(1373, 49, 'select1', '90平米—110平米', 4),
(1374, 49, 'select1', '110平米—150平米', 5),
(1375, 49, 'select1', '150平米以上', 6),
(1377, 49, 'select2', '30万以下', 2),
(1378, 49, 'select2', '30万—40万', 3),
(1379, 49, 'select2', '40万—50万', 4),
(1380, 49, 'select2', '50万—70万', 5),
(1381, 49, 'select2', '70万—90万', 6),
(1382, 49, 'select2', '90万—120万', 7),
(1383, 49, 'select2', '120万以上', 8),
(1385, 49, 'select3', '4室及以上', 2),
(1386, 49, 'select3', '3室2厅2卫', 3),
(1387, 49, 'select3', '3室2厅1卫', 4),
(1388, 49, 'select3', '3室1厅1卫', 5),
(1389, 49, 'select3', '2室2厅2卫', 6),
(1390, 49, 'select3', '1室1厅1卫', 7),
(1391, 49, 'select3', '2室1厅1卫', 8),
(1392, 49, 'select3', '2室2厅1卫', 9),
(1393, 49, 'select3', '1室0厅1卫', 10),
(1394, 49, 'select3', '其它', 11),
(1396, 50, 'select1', '临街店铺', 2),
(1397, 50, 'select1', '购物中心', 3),
(1398, 50, 'select1', '住宅底商摊位/柜台', 4),
(1399, 50, 'select1', '写字楼底商', 5),
(1400, 50, 'select1', '其他', 6),
(1402, 50, 'select2', '50平米以下', 2),
(1403, 50, 'select2', '50平米—100平米', 3),
(1404, 50, 'select2', '100平米—150平米', 4),
(1405, 50, 'select2', '150平米—250平米', 5),
(1406, 50, 'select2', '250平米以上', 6),
(1408, 50, 'select3', '30万以下', 2),
(1409, 50, 'select3', '30万—50万', 3),
(1410, 50, 'select3', '50万—80万', 4),
(1411, 50, 'select3', '80万—120万', 5),
(1412, 50, 'select3', '120万—300万', 6),
(1413, 50, 'select3', '300万—500万', 7),
(1414, 50, 'select3', '500万以上', 8),
(1418, 51, 'select1', '餐饮美食', 2),
(1419, 51, 'select1', '空铺转让', 3),
(1420, 51, 'select1', '服饰鞋包', 4),
(1421, 51, 'select1', '休闲娱乐', 5),
(1422, 51, 'select1', '美容美发', 6),
(1423, 51, 'select1', '酒店宾馆', 7),
(1424, 51, 'select1', '超市零售', 8),
(1425, 51, 'select1', '生活服务', 9),
(1426, 51, 'select1', '汽修美容', 10),
(1427, 51, 'select1', '家居建材', 11),
(1428, 51, 'select1', '电子通讯', 12),
(1429, 51, 'select1', '教育培训', 13),
(1430, 51, 'select1', '专柜转让', 14),
(1431, 51, 'select1', '医药保健', 15),
(1432, 51, 'select1', '其它', 16),
(1433, 51, 'select2', '50平米以下', 2),
(1434, 51, 'select2', '50平米—80平米', 3),
(1435, 51, 'select2', '80平米—120平米', 4),
(1436, 51, 'select2', '120平米—200平米', 5),
(1437, 51, 'select2', '200平米以上', 6),
(1438, 51, 'select3', '2000元/月以下', 2),
(1439, 51, 'select3', '2000元/月—3000元/月', 3);
INSERT INTO `bao_life_cate_attr` (`attr_id`, `cate_id`, `type`, `attr_name`, `orderby`) VALUES
(1440, 51, 'select3', '3000元/月—5000元/月', 4),
(1441, 51, 'select3', '5000元/月—8000元/月', 5),
(1442, 51, 'select3', '8000元/月—15000元/月', 6),
(1443, 51, 'select3', '15000元/月以上', 7),
(1447, 53, 'select1', '纯写字楼', 2),
(1448, 53, 'select1', '商务中心', 3),
(1449, 53, 'select1', '商住楼', 4),
(1450, 53, 'select1', '园区办公', 5),
(1451, 53, 'select1', '其他', 6),
(1452, 53, 'select2', '50平米以下', 2),
(1453, 53, 'select2', '50平米—100平米', 3),
(1454, 53, 'select2', '100平米—150平米', 4),
(1455, 53, 'select2', '150平米—200平米', 5),
(1456, 53, 'select2', '200平米—300平米', 6),
(1457, 53, 'select2', '300平米以上', 7),
(1458, 53, 'select3', '50元/平米/天以下', 2),
(1459, 53, 'select3', '50—100元/平米/天', 3),
(1460, 53, 'select3', '100—200元/平米/天', 4),
(1461, 53, 'select3', '200—400元/平米/天', 5),
(1462, 53, 'select3', '400以上元/平米/天', 6),
(1466, 54, 'select1', '家庭旅馆', 2),
(1467, 54, 'select1', '宾馆酒店', 3),
(1468, 54, 'select1', '高档公寓', 4),
(1469, 54, 'select1', '其他', 5),
(1470, 54, 'select2', '床位', 2),
(1471, 54, 'select2', '单间', 3),
(1472, 54, 'select2', '整套', 4),
(1473, 54, 'select3', '20元/天以下', 2),
(1474, 54, 'select3', '20元/天—50元/天', 3),
(1475, 54, 'select3', '50元/天—100元/天', 4),
(1476, 54, 'select3', '100元/天—200元/天', 5),
(1477, 54, 'select3', '200元/天—400元/天', 6),
(1478, 54, 'select3', '400元/天以上', 7),
(1480, 55, 'select1', '50平米以下', 2),
(1481, 55, 'select1', '50平米—150平米', 3),
(1482, 55, 'select1', '150平米—300平米', 4),
(1483, 55, 'select1', '300平米—500平米', 5),
(1484, 55, 'select1', '500平米—1000平米', 6),
(1485, 55, 'select1', '1000平米—3000平米', 7),
(1486, 55, 'select1', '3000平米以上', 8),
(1488, 55, 'select2', '50元/平米/天以下', 2),
(1489, 55, 'select2', '50—100元/平米/天', 3),
(1490, 55, 'select2', '100—200元/平米/天', 4),
(1491, 55, 'select2', '200—400元/平米/天', 5),
(1492, 55, 'select2', '400元/平米/天以上', 6),
(1496, 56, 'select1', '纯写字楼', 2),
(1497, 56, 'select1', '商务中心', 3),
(1498, 56, 'select1', '商住楼', 4),
(1499, 56, 'select1', '园区办公', 5),
(1500, 56, 'select1', '其他', 6),
(1501, 56, 'select2', '50平米以下', 2),
(1502, 56, 'select2', '50平米—80平米', 3),
(1503, 56, 'select2', '80平米—120平米', 4),
(1504, 56, 'select2', '120平米—180平米', 5),
(1505, 56, 'select2', '180平米—250平米', 6),
(1506, 56, 'select2', '250平米以上', 7),
(1507, 56, 'select3', '30万元以下', 2),
(1508, 56, 'select3', '30万元—50万元', 3),
(1509, 56, 'select3', '50万元—100万元', 4),
(1510, 56, 'select3', '100万元—200万元', 5),
(1511, 56, 'select3', '200万元—300万元', 6),
(1512, 56, 'select3', '300万元—500万元', 7),
(1513, 56, 'select3', '500万元以上', 8),
(1515, 57, 'select1', '50平米以下', 2),
(1516, 57, 'select1', '50平米—80平米', 3),
(1517, 57, 'select1', '80平米—120平米', 4),
(1518, 57, 'select1', '120平米—150平米', 5),
(1519, 57, 'select1', '150平米—250平米', 6),
(1520, 57, 'select1', '250平米以上', 7),
(1522, 57, 'select2', '30万元以下', 2),
(1523, 57, 'select2', '30万元—50万元', 3),
(1524, 57, 'select2', '50万元—80万元', 4),
(1525, 57, 'select2', '80万元—120万元', 5),
(1526, 57, 'select2', '120万元—200万元', 6),
(1527, 57, 'select2', '200万元以上', 7),
(1529, 57, 'select3', '4室及以上', 2),
(1530, 57, 'select3', '3室2厅2卫', 3),
(1531, 57, 'select3', '3室2厅1卫', 4),
(1532, 57, 'select3', '3室1厅1卫', 5),
(1533, 57, 'select3', '2室2厅2卫', 6),
(1534, 57, 'select3', '1室1厅1卫', 7),
(1535, 57, 'select3', '2室1厅1卫', 8),
(1536, 57, 'select3', '2室2厅1卫1', 9),
(1537, 57, 'select3', '室0厅1卫', 10),
(1538, 57, 'select3', '其它', 11),
(1540, 58, 'select1', '初中', 2),
(1541, 58, 'select1', '高中', 3),
(1542, 58, 'select1', '小学', 4),
(1543, 58, 'select1', '小升初', 5),
(1544, 58, 'select1', '初升高', 6),
(1545, 58, 'select1', '其他', 7),
(1547, 58, 'select2', '30元/小时以下', 2),
(1548, 58, 'select2', '30元/小时—50元/小时', 3),
(1549, 58, 'select2', '50元/小时—100元/小时', 4),
(1550, 58, 'select2', '100元/小时—200元/小时', 5),
(1551, 58, 'select2', '200元/小时以上', 6),
(1553, 59, 'select1', '财会/金融', 2),
(1554, 59, 'select1', '建筑', 3),
(1555, 59, 'select1', '公务员', 4),
(1556, 59, 'select1', '美容美发', 5),
(1557, 59, 'select1', '经营/管理', 6),
(1558, 59, 'select1', '技工', 7),
(1559, 59, 'select1', '教师', 8),
(1560, 59, 'select1', '心理/医疗/保健', 9),
(1561, 59, 'select1', '厨师', 10),
(1562, 59, 'select1', '外贸/采购/物流', 11),
(1563, 59, 'select1', '司法考试', 12),
(1564, 59, 'select1', '网络技术', 13),
(1565, 59, 'select1', '面点', 14),
(1566, 59, 'select1', '其他', 15),
(1568, 59, 'select2', '200元以下', 2),
(1569, 59, 'select2', '200元—500元', 3),
(1570, 59, 'select2', '500元—1000元', 4),
(1571, 59, 'select2', '1000元—3000元', 5),
(1572, 59, 'select2', '3000元—7000元', 6),
(1573, 59, 'select2', '7000元以上', 7),
(1575, 60, 'select1', '自考', 2),
(1576, 60, 'select1', '专科/本科', 3),
(1577, 60, 'select1', '网络/远程', 4),
(1578, 60, 'select1', '成人高考', 5),
(1579, 60, 'select1', '在职研究生', 6),
(1580, 60, 'select1', '出国留学', 7),
(1581, 60, 'select1', '考研', 8),
(1582, 60, 'select1', '其他', 9),
(1584, 60, 'select2', '500元以下', 2),
(1585, 60, 'select2', '500元—2000元', 3),
(1586, 60, 'select2', '2000元—5000元', 4),
(1587, 60, 'select2', '5000元—10000元', 5),
(1588, 60, 'select2', '10000元以上', 6),
(1591, 61, 'select1', '办公自动化', 2),
(1592, 61, 'select1', '网络营销', 3),
(1593, 61, 'select1', '认证培训', 4),
(1594, 61, 'select1', '网络工程/管理', 5),
(1595, 61, 'select1', '硬件技术/维修', 6),
(1596, 61, 'select1', '影视动画', 7),
(1597, 61, 'select1', '软件开发', 8),
(1598, 61, 'select1', '数据库培训', 9),
(1599, 61, 'select1', '计算机等级考试', 10),
(1600, 61, 'select1', '计算机软考', 11),
(1601, 61, 'select1', 'app开发', 12),
(1602, 61, 'select1', '游戏开发', 13),
(1603, 61, 'select1', '其他', 14),
(1604, 61, 'select2', '500元以下', 2),
(1605, 61, 'select2', '500元—1000元', 3),
(1606, 61, 'select2', '1000元—3000元', 4),
(1607, 61, 'select2', '3000元—7000元', 5),
(1608, 61, 'select2', '7000元以上', 6),
(1611, 62, 'select1', '书法', 2),
(1612, 62, 'select1', '美术', 3),
(1613, 62, 'select1', '舞蹈', 4),
(1614, 62, 'select1', '乐器', 5),
(1615, 62, 'select1', '声乐', 6),
(1616, 62, 'select1', '表演/礼仪', 7),
(1617, 62, 'select1', '其他', 8),
(1618, 62, 'select2', '500元以下', 2),
(1619, 62, 'select2', '500—1000', 3),
(1620, 62, 'select2', '1000—2000', 4),
(1621, 62, 'select2', '2000—4000', 5),
(1622, 62, 'select2', '4000—7000', 6),
(1623, 62, 'select2', '7000以上', 7),
(1626, 63, 'select1', '韩语', 2),
(1627, 63, 'select1', '英语', 3),
(1628, 63, 'select1', '日语', 4),
(1629, 63, 'select1', '俄语', 5),
(1630, 63, 'select1', '考试类英语', 6),
(1631, 63, 'select1', '西班牙语', 7),
(1632, 63, 'select1', '法语', 8),
(1633, 63, 'select1', '德语', 9),
(1634, 63, 'select1', '其他语种', 10),
(1635, 63, 'select2', '500元以下', 2),
(1636, 63, 'select2', '500元—1000元', 3),
(1637, 63, 'select2', '1000元—2000元', 4),
(1638, 63, 'select2', '2000元—3000元', 5),
(1639, 63, 'select2', '3000元以上', 6),
(1642, 64, 'select1', '室内设计', 2),
(1643, 64, 'select1', '平面设计', 3),
(1644, 64, 'select1', '模具设计', 4),
(1645, 64, 'select1', '网页设计', 5),
(1646, 64, 'select1', '广告设计', 6),
(1647, 64, 'select1', '建筑设计', 7),
(1648, 64, 'select1', '景观/园林设计', 8),
(1649, 64, 'select1', '家具设计', 9),
(1650, 64, 'select1', '形象设计', 10),
(1651, 64, 'select1', '动漫设计', 11),
(1652, 64, 'select1', '包装设计', 12),
(1653, 64, 'select1', '服装设计', 13),
(1654, 64, 'select1', '其他', 14),
(1655, 64, 'select2', '500元以下', 2),
(1656, 64, 'select2', '500元—1000元', 3),
(1657, 64, 'select2', '1000元—3000元', 4),
(1658, 64, 'select2', '3000元—5000元', 5),
(1659, 64, 'select2', '5000元—8000元', 6),
(1660, 64, 'select2', '8000元以上', 7),
(1662, 65, 'select1', '学前教育', 2),
(1663, 65, 'select1', '亲子教育', 3),
(1664, 65, 'select1', '胎教', 4),
(1665, 65, 'select1', '母婴护理', 5),
(1666, 65, 'select1', '其他', 6),
(1668, 65, 'select2', '500元以下', 2),
(1669, 65, 'select2', '500元—1000元', 3),
(1670, 65, 'select2', '1000元—3000元', 4),
(1671, 65, 'select2', '3000元—5000元', 5),
(1672, 65, 'select2', '5000元以上', 6),
(1674, 66, 'select1', '跆拳道', 2),
(1675, 66, 'select1', '球类', 3),
(1676, 66, 'select1', '游泳', 4),
(1677, 66, 'select1', '健身', 5),
(1678, 66, 'select1', '武术', 6),
(1679, 66, 'select1', '瑜伽', 7),
(1680, 66, 'select1', '棋类', 8),
(1681, 66, 'select1', '其他', 9),
(1683, 66, 'select2', '500元以下', 2),
(1684, 66, 'select2', '500元—1000元', 3),
(1685, 66, 'select2', '1000元—3000元', 4),
(1686, 66, 'select2', '3000元以上', 5),
(1688, 67, 'select1', '普工', 2),
(1689, 67, 'select1', '安装/维修工', 3),
(1690, 67, 'select1', '焊工', 4),
(1691, 67, 'select1', '电工', 5),
(1692, 67, 'select1', '装卸/搬运工', 6),
(1693, 67, 'select1', '建筑/装修工', 7),
(1694, 67, 'select1', '缝纫/制衣工', 8),
(1695, 67, 'select1', '车工/铣工/钳工', 9),
(1696, 67, 'select1', '模具工', 10),
(1697, 67, 'select1', '油漆工', 11),
(1698, 67, 'select1', '木工', 12),
(1699, 67, 'select1', '生产主管/组长', 13),
(1700, 67, 'select1', '钳工', 14),
(1701, 67, 'select1', '车间主任', 15),
(1702, 67, 'select1', '厂长/副厂长', 16),
(1703, 67, 'select1', '其他', 17),
(1706, 67, 'select2', '2000元—3000元', 3),
(1707, 67, 'select2', '3000元—5000元', 4),
(1708, 67, 'select2', '5000元—8000元', 5),
(1709, 67, 'select2', '8000元—12000元', 6),
(1710, 67, 'select2', '12000元以上', 7),
(1712, 68, 'select1', '销售专员', 2),
(1713, 68, 'select1', '电话销售', 3),
(1714, 68, 'select1', '销售经理/主管', 4),
(1715, 68, 'select1', '保险/金融顾问', 5),
(1716, 68, 'select1', '跟单员/助理', 6),
(1717, 68, 'select1', '网络销售', 7),
(1718, 68, 'select1', '房产经纪人', 8),
(1719, 68, 'select1', '保险经纪人', 9),
(1720, 68, 'select1', '证券/期货/外汇经纪人', 10),
(1721, 68, 'select1', '信用卡/银行卡业务', 11),
(1722, 68, 'select1', '股票/期货操盘手', 12),
(1723, 68, 'select1', '银行会计/柜员', 13),
(1724, 68, 'select1', '证券经理/总监', 14),
(1725, 68, 'select1', '银行经理/主任', 15),
(1726, 68, 'select1', '其他', 16),
(1728, 68, 'select2', '2000元以下', 2),
(1729, 68, 'select2', '2000元—3000元', 3),
(1730, 68, 'select2', '3000元—5000元', 4),
(1731, 68, 'select2', '5000元—8000元', 5),
(1732, 68, 'select2', '8000元—12000元', 6),
(1733, 68, 'select2', '12000元以上', 7),
(1735, 69, 'select1', '足疗师', 2),
(1736, 69, 'select1', '按摩师', 3),
(1737, 69, 'select1', '保健师', 4),
(1738, 69, 'select1', '其他', 5),
(1740, 69, 'select2', '2000元以下', 2),
(1741, 69, 'select2', '2000元—3000元', 3),
(1742, 69, 'select2', '3000元—5000元', 4),
(1743, 69, 'select2', '5000元—8000元', 5),
(1744, 69, 'select2', '8000元—12000元', 6),
(1745, 69, 'select2', '12000元以上', 7),
(1747, 70, 'select1', '室内设计', 2),
(1748, 70, 'select1', '平面设计', 3),
(1749, 70, 'select1', '广告设计', 4),
(1750, 70, 'select1', 'CAD制图', 5),
(1751, 70, 'select1', '网页设计', 6),
(1752, 70, 'select1', '店面/陈列设计', 7),
(1753, 70, 'select1', '摄影师', 8),
(1754, 70, 'select1', '包装设计', 9),
(1755, 70, 'select1', '服装设计', 10),
(1756, 70, 'select1', '其它', 11),
(1758, 70, 'select2', '2000元以下', 2),
(1759, 70, 'select2', '2000元—3000元', 3),
(1760, 70, 'select2', '3000元—5000元', 4),
(1761, 70, 'select2', '5000元—8000元', 5),
(1762, 70, 'select2', '8000元—12000元', 6),
(1763, 70, 'select2', '12000元以上', 7),
(1765, 71, 'select1', '文员', 2),
(1766, 71, 'select1', '行政专员/助理', 3),
(1767, 71, 'select1', '前台/总机/接待', 4),
(1768, 71, 'select1', '人事专员/助理', 5),
(1769, 71, 'select1', '秘书/助理', 6),
(1770, 71, 'select1', '编辑/文案', 7),
(1771, 71, 'select1', '后勤', 8),
(1772, 71, 'select1', '招聘经理/主管', 9),
(1773, 71, 'select1', '招聘专员/助理', 10),
(1774, 71, 'select1', '行政经理/主管', 11),
(1775, 71, 'select1', '人事经理/主管', 12),
(1776, 71, 'select1', '记者/采编', 13),
(1777, 71, 'select1', '猎头', 14),
(1778, 71, 'select1', '行政总监', 15),
(1779, 71, 'select1', '总编/副总编/主编', 16),
(1780, 71, 'select1', '其他', 17),
(1782, 71, 'select2', '2000元以下', 2),
(1783, 71, 'select2', '2000元—3000元', 3),
(1784, 71, 'select2', '3000元—5000元', 4),
(1785, 71, 'select2', '5000元—8000元', 5),
(1786, 71, 'select2', '8000元—12000元', 6),
(1787, 71, 'select2', '12000元以上', 7),
(1789, 72, 'select1', '营业员', 2),
(1790, 72, 'select1', '导购员', 3),
(1791, 72, 'select1', '促销员', 4),
(1792, 72, 'select1', '店长', 5),
(1793, 72, 'select1', '理货员', 6),
(1794, 72, 'select1', '其他', 7),
(1797, 72, 'select2', '2000元以下', 2),
(1798, 72, 'select2', '2000元—3000元', 3),
(1799, 72, 'select2', '3000元—5000元', 4),
(1800, 72, 'select2', '5000元—8000元', 5),
(1801, 72, 'select2', '8000元—12000元', 6),
(1802, 72, 'select2', '12000元以上', 7),
(1803, 72, 'select3', '做六休一', 2),
(1804, 72, 'select3', '做二休一', 3),
(1805, 72, 'select3', '做五休二', 4),
(1806, 72, 'select3', '做一休一', 5),
(1807, 72, 'select3', '其他', 6),
(1809, 73, 'select1', '餐厅服务员', 2),
(1810, 73, 'select1', '收银员', 3),
(1811, 73, 'select1', '大堂服务员', 4),
(1812, 73, 'select1', '客房服务员', 5),
(1813, 73, 'select1', '大堂经理/领班', 6),
(1814, 73, 'select1', '迎宾/接待', 7),
(1815, 73, 'select1', '其他', 8),
(1817, 73, 'select2', '2000元以下', 2),
(1818, 73, 'select2', '2000元—3000元', 3),
(1819, 73, 'select2', '3000元—5000元', 4),
(1820, 73, 'select2', '5000元—8000元', 5),
(1821, 73, 'select2', '8000元—12000元', 6),
(1822, 73, 'select2', '12000元以上', 7),
(1824, 74, 'select1', '厨师', 2),
(1825, 74, 'select1', '切配/厨工', 3),
(1826, 74, 'select1', '面点师', 4),
(1827, 74, 'select1', '洗碗工', 5),
(1828, 74, 'select1', '其他', 6),
(1830, 74, 'select2', '2000元以下', 2),
(1831, 74, 'select2', '2000元—3000元', 3),
(1832, 74, 'select2', '3000元—5000元', 4),
(1833, 74, 'select2', '5000元—8000元', 5),
(1834, 74, 'select2', '8000元—12000元', 6),
(1835, 74, 'select2', '12000元以上', 7),
(1837, 75, 'select1', '送货员', 2),
(1838, 75, 'select1', '快递员', 3),
(1839, 75, 'select1', '仓库管理员', 4),
(1840, 75, 'select1', '跟单员', 5),
(1841, 75, 'select1', '送餐员', 6),
(1842, 75, 'select1', '调度员', 7),
(1843, 75, 'select1', '其它', 8),
(1845, 75, 'select2', '2000元以下', 2),
(1846, 75, 'select2', '2000元—3000元', 3),
(1847, 75, 'select2', '3000元—5000元', 4),
(1848, 75, 'select2', '5000元—8000元', 5),
(1849, 75, 'select2', '8000元—12000元', 6),
(1850, 75, 'select2', '12000元以上', 7),
(1852, 76, 'select1', '900元以下', 2),
(1853, 76, 'select1', '900元—2000元', 3),
(1854, 76, 'select1', '2000元—3000元', 4),
(1855, 76, 'select1', '3000元以上', 5),
(1857, 77, 'select1', '保洁', 2),
(1858, 77, 'select1', '保姆', 3),
(1859, 77, 'select1', '钟点工', 5),
(1860, 77, 'select1', '陪护', 6),
(1861, 77, 'select1', '育婴师', 6),
(1862, 77, 'select1', '月嫂', 7),
(1863, 77, 'select1', '其它', 8),
(1865, 77, 'select2', '900元以下', 2),
(1866, 77, 'select2', '900元—2000元', 3),
(1867, 77, 'select2', '2000元—3000元', 4),
(1868, 77, 'select2', '3000元以上', 5),
(1870, 78, 'select1', '货车', 2),
(1871, 78, 'select1', '出租车', 3),
(1872, 78, 'select1', '轿车', 4),
(1873, 78, 'select1', '面包车', 5),
(1874, 78, 'select1', '客车', 6),
(1875, 78, 'select1', '挖掘机', 7),
(1876, 78, 'select1', '叉车/铲车/吊车', 8),
(1877, 78, 'select1', '驾校教练/陪驾', 9),
(1878, 78, 'select1', '其他', 10),
(1880, 78, 'select2', '2000元以下', 2),
(1881, 78, 'select2', '2000元—3000元', 3),
(1882, 78, 'select2', '3000元—5000元', 4),
(1883, 78, 'select2', '5000元—8000元', 5),
(1884, 78, 'select2', '8000元—12000元', 6),
(1885, 78, 'select2', '12000元以上', 7),
(1887, 79, 'select1', '中小学教师', 2),
(1888, 79, 'select1', '家教', 3),
(1889, 79, 'select1', '早教', 4),
(1890, 79, 'select1', '文艺/体育教师', 5),
(1891, 79, 'select1', '企业培训', 6),
(1892, 79, 'select1', '运动/健身教练', 7),
(1893, 79, 'select1', '校长', 8),
(1894, 79, 'select1', '瑜伽/舞蹈老师', 9),
(1895, 79, 'select1', '其他', 10),
(1897, 79, 'select2', '2000元以下', 2),
(1898, 79, 'select2', '2000元—3000元', 3),
(1899, 79, 'select2', '3000元—5000元', 4),
(1900, 79, 'select2', '5000元—8000元', 5),
(1901, 79, 'select2', '8000元—12000元', 6),
(1902, 79, 'select2', '12000元以上', 7),
(1904, 80, 'select1', '会计', 2),
(1905, 80, 'select1', '财务', 3),
(1906, 80, 'select1', '出纳', 4),
(1907, 80, 'select1', '统计员', 5),
(1908, 80, 'select1', '审计', 6),
(1909, 80, 'select1', '税务', 7),
(1910, 80, 'select1', '其他', 8),
(1912, 80, 'select2', '2000元以下', 2),
(1913, 80, 'select2', '2000元—3000元', 3),
(1914, 80, 'select2', '3000元—5000元', 4),
(1915, 80, 'select2', '5000元—8000元', 5),
(1916, 80, 'select2', '8000元—12000元', 6),
(1917, 80, 'select2', '12000元以上', 7),
(1919, 81, 'select1', '淘宝美工', 2),
(1920, 81, 'select1', '淘宝客服', 3),
(1921, 81, 'select1', '网店店长', 4),
(1922, 81, 'select1', '店铺运营/推广', 5),
(1923, 81, 'select1', '其它', 6),
(1925, 81, 'select2', '2000元以下', 2),
(1926, 81, 'select2', '2000元—3000元', 3),
(1927, 81, 'select2', '3000元—5000元', 4),
(1928, 81, 'select2', '5000元—8000元', 5),
(1929, 81, 'select2', '8000元—12000元', 6),
(1930, 81, 'select2', '12000元以上', 7),
(1932, 81, 'select3', '做六休一', 2),
(1933, 81, 'select3', '做二休一', 3),
(1934, 81, 'select3', '做五休二', 4),
(1935, 81, 'select3', '做一休一', 5),
(1936, 81, 'select3', '其他', 6),
(1938, 82, 'select1', '客服专员/助理', 2),
(1939, 82, 'select1', '客服经理/主管', 3),
(1940, 82, 'select1', '其他', 4),
(1942, 82, 'select2', '2000元以下', 2),
(1943, 82, 'select2', '2000元—3000元', 3),
(1944, 82, 'select2', '3000元—5000元', 4),
(1945, 82, 'select2', '5000元以上', 5),
(1947, 83, 'select1', '美发师', 2),
(1948, 83, 'select1', '化妆师', 3),
(1949, 83, 'select1', '美容师', 4),
(1950, 83, 'select1', '美发助理/学徒', 5),
(1951, 83, 'select1', '美容助理/学徒', 6),
(1952, 83, 'select1', '美甲师', 7),
(1953, 83, 'select1', '洗头工', 8),
(1954, 83, 'select1', '其它', 9),
(1956, 83, 'select2', '2000元以下', 2),
(1957, 83, 'select2', '2000元—3000元', 3),
(1958, 83, 'select2', '3000元—5000元', 4),
(1959, 83, 'select2', '5000元—8000元', 5),
(1960, 83, 'select2', '8000元—12000元', 6),
(1961, 83, 'select2', '12000元以上', 7),
(1963, 84, 'select1', '技术支持/维护', 2),
(1964, 84, 'select1', '游戏设计/开发', 3),
(1965, 84, 'select1', '网络工程师', 4),
(1966, 84, 'select1', '网站运营', 5),
(1967, 84, 'select1', '网站编辑', 6),
(1968, 84, 'select1', '技术专员/助理', 7),
(1969, 84, 'select1', '程序员', 8),
(1970, 84, 'select1', '网络管理员', 9),
(1971, 84, 'select1', '硬件工程师', 10),
(1972, 84, 'select1', '技术总监/经理', 11),
(1973, 84, 'select1', '软件工程师', 12),
(1974, 84, 'select1', '产品经理/专员', 13),
(1975, 84, 'select1', '测试员', 14),
(1976, 84, 'select1', '通信工程师', 15),
(1977, 84, 'select1', '架构师', 16),
(1978, 84, 'select1', '数据库管理', 17),
(1979, 84, 'select1', '其他', 18),
(1981, 84, 'select2', '2000元以下', 2),
(1982, 84, 'select2', '2000元—3000元', 3),
(1983, 84, 'select2', '3000元—5000元', 4),
(1984, 84, 'select2', '5000元—8000元', 5),
(1985, 84, 'select2', '8000元—12000元', 6),
(1986, 84, 'select2', '12000元以上', 7),
(1988, 84, 'select3', '无经验', 2),
(1989, 84, 'select3', '一年经验', 3),
(1990, 84, 'select3', '二年经验', 4),
(1991, 84, 'select3', '三年经验', 5),
(1992, 84, 'select3', '三年以上经验', 6),
(1994, 85, 'select1', '市场专员/助理', 2),
(1995, 85, 'select1', '营销经理', 3),
(1996, 85, 'select1', '市场经理/主管', 4),
(1997, 85, 'select1', '客户经理/主管', 5),
(1998, 85, 'select1', '公关专员/助理', 6),
(1999, 85, 'select1', '公关经理/主管', 7),
(2000, 85, 'select1', '大客户经理', 8),
(2001, 85, 'select1', '其他', 9),
(2003, 85, 'select2', '2000元以下', 2),
(2004, 85, 'select2', '2000元—3000元', 3),
(2005, 85, 'select2', '3000元—5000元', 4),
(2006, 85, 'select2', '5000元—8000元', 5),
(2007, 85, 'select2', '8000元—12000元', 6),
(2008, 85, 'select2', '12000元以上', 7),
(2010, 87, 'select1', '德语', 2),
(2011, 87, 'select1', '英语', 3),
(2012, 87, 'select1', '韩语', 4),
(2013, 87, 'select1', '日语', 5),
(2014, 87, 'select1', '俄语', 6),
(2015, 87, 'select1', '西班牙语', 7),
(2016, 87, 'select1', '法语', 8),
(2017, 87, 'select1', '其它', 9),
(2019, 87, 'select2', '2000元以下', 2),
(2020, 87, 'select2', '2000元—3000元', 3),
(2021, 87, 'select2', '3000元—5000元', 4),
(2022, 87, 'select2', '5000元—8000元', 5),
(2023, 87, 'select2', '8000元—12000元', 6),
(2024, 87, 'select2', '12000元以上', 7),
(2026, 89, 'select1', '2000元以下', 2),
(2027, 89, 'select1', '2000元—3000元', 3),
(2028, 89, 'select1', '3000元—5000元', 4),
(2029, 89, 'select1', '5000元—8000元', 5),
(2030, 89, 'select1', '8000元—12000元', 6),
(2031, 89, 'select1', '12000元以上', 7),
(2033, 90, 'select1', '产品代理', 2),
(2034, 90, 'select1', '服装箱包', 3),
(2035, 90, 'select1', '餐饮加盟', 4),
(2036, 90, 'select1', '教育培训', 5),
(2037, 90, 'select1', '建材家居', 6),
(2038, 90, 'select1', '干洗加盟', 7),
(2039, 90, 'select1', '美容保健', 8),
(2040, 90, 'select1', '快递物流', 9),
(2041, 90, 'select1', '礼品饰品', 10),
(2042, 90, 'select1', '农业养殖', 11),
(2043, 90, 'select1', '母婴用品', 12),
(2044, 90, 'select1', '其他', 13),
(2046, 91, 'select1', '无抵押贷款', 2),
(2047, 91, 'select1', '企业/个体户贷款', 3),
(2048, 91, 'select1', '汽车抵押贷款', 4),
(2049, 91, 'select1', '房产抵押贷款', 5),
(2050, 91, 'select1', '买房贷款', 6),
(2051, 91, 'select1', '买车贷款', 7),
(2052, 91, 'select1', '其它', 8),
(2054, 92, 'select1', '空调维修', 2),
(2055, 92, 'select1', '热水器维修', 3),
(2056, 92, 'select1', '空调移机', 4),
(2057, 92, 'select1', '洗衣机维修', 5),
(2058, 92, 'select1', '冰箱维修', 6),
(2059, 92, 'select1', '电视机维修', 7),
(2060, 92, 'select1', '饮水机维修', 8),
(2061, 92, 'select1', '电饭煲维修', 9),
(2062, 92, 'select1', '抽油烟机维修', 10),
(2063, 92, 'select1', '电磁炉维修', 11),
(2064, 92, 'select1', '其他', 12),
(2066, 93, 'select1', '吊顶', 2),
(2067, 93, 'select1', '门窗', 3),
(2068, 93, 'select1', '涂料', 4),
(2069, 93, 'select1', '钢材', 5),
(2070, 93, 'select1', '五金', 6),
(2071, 93, 'select1', '墙纸', 7),
(2072, 93, 'select1', '地板', 8),
(2073, 93, 'select1', '油漆', 9),
(2074, 93, 'select1', '卫浴洁具', 10),
(2075, 93, 'select1', '玻璃', 11),
(2076, 93, 'select1', '瓷砖', 12),
(2077, 93, 'select1', '窗帘', 13),
(2078, 93, 'select1', '灯具', 14),
(2079, 93, 'select1', '水泥', 15),
(2080, 93, 'select1', '橱柜', 16),
(2081, 93, 'select1', '厨卫电器', 17),
(2082, 93, 'select1', '暖气地暖', 18),
(2083, 93, 'select1', '其它', 19),
(2085, 94, 'select1', '公司注册', 2),
(2086, 94, 'select1', '工商年检', 3),
(2087, 94, 'select1', '商标注册', 4),
(2088, 94, 'select1', '公司转让', 5),
(2089, 94, 'select1', '专利注册', 6),
(2090, 94, 'select1', '海外公司注册', 7),
(2091, 94, 'select1', '专项审批', 8),
(2092, 94, 'select1', '香港公司注册', 9),
(2093, 94, 'select1', '公司注销', 10),
(2094, 94, 'select1', '验资开户', 11),
(2095, 94, 'select1', '资质认证', 12),
(2096, 94, 'select1', '外资公司注册', 13),
(2097, 94, 'select1', '其它', 14),
(2099, 95, 'select1', '新房装修', 2),
(2100, 95, 'select1', '店铺装修', 3),
(2101, 95, 'select1', '办公室/写字楼装修', 4),
(2102, 95, 'select1', '二手房装修', 5),
(2103, 95, 'select1', '厂房装修', 6),
(2104, 95, 'select1', '拆旧', 7),
(2105, 95, 'select1', '学校/幼儿园装修', 8),
(2106, 95, 'select1', '商场/超市装修', 9),
(2107, 95, 'select1', '酒店装修', 10),
(2108, 95, 'select1', '其他', 11),
(2110, 96, 'select1', '理财产品', 2),
(2111, 96, 'select1', '期货', 3),
(2112, 96, 'select1', '股票', 4),
(2113, 96, 'select1', '黄金', 5),
(2114, 96, 'select1', '证券', 6),
(2115, 96, 'select1', '信用卡', 7),
(2116, 96, 'select1', '基金', 8),
(2117, 96, 'select1', '外汇', 9),
(2118, 96, 'select1', '保险', 10),
(2119, 96, 'select1', '其它', 11),
(2121, 97, 'select1', '会计', 2),
(2122, 97, 'select1', '审计', 3),
(2124, 98, 'select1', '电脑维修', 2),
(2125, 98, 'select1', '笔记本维修', 3),
(2126, 98, 'select1', '网络布线', 4),
(2127, 98, 'select1', 'IT外包', 5),
(2128, 98, 'select1', '打印机维修', 6),
(2129, 98, 'select1', '数据恢复', 7),
(2130, 98, 'select1', '传真机维修', 8),
(2131, 98, 'select1', '安防监控', 9),
(2132, 98, 'select1', 'ipad/平板电脑维修', 10),
(2133, 98, 'select1', '机房建设', 11),
(2134, 98, 'select1', '其它', 12),
(2136, 99, 'select1', '货运', 2),
(2137, 99, 'select1', '快递', 3),
(2138, 99, 'select1', '仓储', 4),
(2139, 99, 'select1', '行李托运', 5),
(2140, 99, 'select1', '进出口报关', 6),
(2141, 99, 'select1', '其它', 7),
(2143, 100, 'select1', '农产品加工/代理', 2),
(2144, 100, 'select1', '农作物', 3),
(2145, 100, 'select1', '畜禽养殖', 4),
(2146, 100, 'select1', '水产', 5),
(2147, 100, 'select1', '园林花卉', 6),
(2148, 100, 'select1', '动植物种苗', 7),
(2149, 100, 'select1', '农机具/设备', 8),
(2150, 100, 'select1', '饲料/兽药', 9),
(2151, 100, 'select1', '农药/肥料', 10),
(2152, 100, 'select1', '其它', 11),
(2154, 101, 'select1', '活动策划', 12),
(2155, 101, 'select1', '广告策划', 11),
(2156, 101, 'select1', '平面设计', 10),
(2157, 101, 'select1', '网页设计', 9),
(2158, 101, 'select1', 'Logo设计/VI设计', 8),
(2159, 101, 'select1', '工业设计', 7),
(2160, 101, 'select1', '景观设计', 6),
(2161, 101, 'select1', '影视/动画制作', 5),
(2162, 101, 'select1', '室内设计', 4),
(2163, 101, 'select1', '名片设计', 3),
(2164, 101, 'select1', '服装设计', 2),
(2165, 101, 'select1', '其它', 13),
(2167, 102, 'select1', '管道疏通', 2),
(2168, 102, 'select1', '下水道疏通', 3),
(2169, 102, 'select1', '马桶疏通', 4),
(2170, 102, 'select1', '化粪池疏通', 5),
(2171, 102, 'select1', '管道清淤', 6),
(2172, 102, 'select1', '打捞', 7),
(2174, 103, 'select1', '带司机租车', 2),
(2175, 103, 'select1', '商务租车', 3),
(2176, 103, 'select1', '旅游租车', 4),
(2177, 103, 'select1', '婚车', 5),
(2178, 103, 'select1', '豪华车', 6),
(2179, 103, 'select1', '货车', 7),
(2180, 103, 'select1', '其他', 8),
(2182, 103, 'select2', '100元以下', 2),
(2183, 103, 'select2', '200元—300元', 3),
(2184, 103, 'select2', '300元—500元', 4),
(2185, 103, 'select2', '500元—800元', 5),
(2186, 103, 'select2', '800元—1200元', 6),
(2187, 103, 'select2', '1200元以上', 7),
(2189, 104, 'select1', '周边游', 2),
(2190, 104, 'select1', '农家乐', 3),
(2191, 104, 'select1', '旅行社', 4),
(2192, 104, 'select1', '导游', 5),
(2193, 104, 'select1', '港澳台游', 6),
(2194, 104, 'select1', '温泉', 7),
(2195, 104, 'select1', '出国游', 8),
(2196, 104, 'select1', '其它', 9),
(2198, 105, 'select1', '婚纱摄影', 2),
(2199, 105, 'select1', '艺术照', 3),
(2200, 105, 'select1', '写真', 4),
(2201, 105, 'select1', '摄像', 5),
(2202, 105, 'select1', '商业摄影', 6),
(2203, 105, 'select1', '儿童摄影', 7),
(2204, 105, 'select1', '其他', 8),
(2206, 106, 'select1', '日常保洁', 2),
(2207, 106, 'select1', '擦玻璃', 3),
(2208, 106, 'select1', '开荒保洁', 4),
(2209, 106, 'select1', '抽油烟机清洗', 5),
(2210, 106, 'select1', '地毯清洗', 6),
(2211, 106, 'select1', '外墙清洗', 7),
(2212, 106, 'select1', '干洗', 8),
(2213, 106, 'select1', '石材翻新/养护', 9),
(2214, 106, 'select1', '地板打蜡', 10),
(2215, 106, 'select1', '沙发清洗', 11),
(2216, 106, 'select1', '空调清洗', 12),
(2217, 106, 'select1', '灯具清洗', 13),
(2218, 106, 'select1', '空气净化', 14),
(2219, 106, 'select1', '瓷砖美缝', 15),
(2220, 106, 'select1', '其他', 16),
(2222, 107, 'select1', '100元以下', 2),
(2223, 107, 'select1', '100元—200元', 3),
(2224, 107, 'select1', '200元—300元', 4),
(2225, 107, 'select1', '300元—500元', 5),
(2226, 107, 'select1', '500元以上', 6),
(2228, 109, 'select1', 'C1(手动档汽车)', 2),
(2229, 109, 'select1', 'C2(自动挡汽车)', 3),
(2230, 109, 'select1', 'B1(中型客车)', 4),
(2231, 109, 'select1', 'B2(大型货车)', 5),
(2232, 109, 'select1', 'E(二轮摩托车)', 6),
(2233, 109, 'select1', 'F(轻便摩托车)', 7),
(2234, 109, 'select1', 'D(三轮摩托车)', 8),
(2235, 109, 'select1', 'A2(牵引车)', 9),
(2236, 109, 'select1', 'C3(载货汽车)', 10),
(2237, 109, 'select1', 'C4(三轮汽车)', 11),
(2238, 109, 'select1', 'C5(残疾人专用)', 12),
(2239, 109, 'select1', 'A(大型客车)', 13),
(2240, 109, 'select1', 'A3(城市公交车)', 14),
(2242, 109, 'select2', '2000元以下', 2),
(2243, 109, 'select2', '2000元—5000元', 3),
(2244, 109, 'select2', '5000元—8000元', 4),
(2245, 109, 'select2', '8000元以上', 5),
(2247, 111, 'select1', '健身', 2),
(2248, 111, 'select1', '瑜伽', 3),
(2249, 111, 'select1', '按摩', 4),
(2250, 111, 'select1', '足疗', 5),
(2251, 111, 'select1', '会所', 6),
(2252, 111, 'select1', 'KTV', 7),
(2253, 111, 'select1', '洗浴', 8),
(2254, 111, 'select1', '酒吧', 9),
(2255, 111, 'select1', '桌游', 10),
(2256, 111, 'select1', '演唱会', 11),
(2257, 111, 'select1', '演出票务', 12),
(2258, 111, 'select1', '电影票', 13),
(2259, 111, 'select1', '其他', 14),
(2261, 112, 'select1', '印刷', 2),
(2262, 112, 'select1', '喷绘', 3),
(2263, 112, 'select1', '名片', 4),
(2264, 112, 'select1', '制卡', 5),
(2265, 112, 'select1', '灯箱', 6),
(2266, 112, 'select1', '易拉宝', 7),
(2267, 112, 'select1', '其他', 8),
(2269, 113, 'select1', '签证', 2),
(2270, 113, 'select1', '机票', 3),
(2271, 113, 'select1', '移民', 4),
(2273, 114, 'select1', '礼品定制', 2),
(2274, 114, 'select1', '商务礼品', 3),
(2275, 114, 'select1', '其它', 4),
(2277, 115, 'select1', '水电维修', 2),
(2278, 115, 'select1', '马桶维修', 3),
(2279, 115, 'select1', '防水补漏', 4),
(2280, 115, 'select1', '淋浴房维修', 5),
(2281, 115, 'select1', '家具维修', 6),
(2282, 115, 'select1', '门窗维修', 7),
(2283, 115, 'select1', '沙发维修', 8),
(2284, 115, 'select1', '其他', 9),
(2286, 116, 'select1', '美容', 10),
(2287, 116, 'select1', '减肥瘦身', 9),
(2288, 116, 'select1', '祛痘/祛斑', 8),
(2289, 116, 'select1', 'spa', 7),
(2290, 116, 'select1', '丰胸', 6),
(2291, 116, 'select1', '美发', 5),
(2292, 116, 'select1', '除皱', 4),
(2293, 116, 'select1', '脱毛', 3),
(2294, 116, 'select1', '美甲', 2),
(2297, 116, 'select2', '100元以下', 2),
(2298, 116, 'select2', '100元—200元', 3),
(2299, 116, 'select2', '200元—400元', 4),
(2300, 116, 'select2', '400元—800元', 5),
(2301, 116, 'select2', '800元—1200元', 6),
(2302, 116, 'select2', '1200元—1500元', 7),
(2303, 116, 'select2', '1500元以上', 8),
(2305, 117, 'select1', '家政公司', 2),
(2306, 117, 'select1', '保姆', 3),
(2307, 117, 'select1', '东家', 4),
(2308, 117, 'select1', '其它', 5),
(2310, 117, 'select2', '钟点工', 2),
(2311, 117, 'select2', '做饭', 3),
(2312, 117, 'select2', '保姆', 4),
(2313, 117, 'select2', '照顾孩子', 5),
(2314, 117, 'select2', '住家阿姨', 6),
(2315, 117, 'select2', '照顾老人', 7),
(2316, 117, 'select2', '育婴师/育儿嫂', 8),
(2317, 117, 'select2', '月嫂', 9),
(2318, 117, 'select2', '催乳师', 10),
(2319, 117, 'select2', '护工/陪护', 11),
(2320, 117, 'select2', '其它', 12),
(2322, 118, 'select1', '网站建设', 2),
(2323, 118, 'select1', '网站推广', 3),
(2324, 118, 'select1', '网站维护/外包', 4),
(2325, 118, 'select1', '域名注册', 5),
(2326, 118, 'select1', '服务器', 6),
(2327, 118, 'select1', '企业邮箱', 7),
(2328, 118, 'select1', '其它', 8),
(2330, 119, 'select1', '绿植/盆栽', 2),
(2331, 119, 'select1', '园艺用品', 3),
(2332, 119, 'select1', '鲜花', 4),
(2333, 119, 'select1', '其它', 5),
(2335, 120, 'select1', '新娘化妆', 2),
(2336, 120, 'select1', '婚车租赁', 3),
(2337, 120, 'select1', '婚庆公司', 4),
(2338, 120, 'select1', '婚礼跟拍', 5),
(2339, 120, 'select1', '婚纱礼服', 6),
(2340, 120, 'select1', '司仪', 7),
(2341, 120, 'select1', '婚礼用品', 8),
(2342, 120, 'select1', '婚宴', 9),
(2343, 120, 'select1', '喜糖', 10),
(2344, 120, 'select1', '婚戒首饰', 11),
(2345, 120, 'select1', '其他', 12),
(2347, 120, 'select2', '500元以下', 2),
(2348, 120, 'select2', '500元—1000元', 3),
(2349, 120, 'select2', '1000元—2000元', 4),
(2350, 120, 'select2', '2000元—4000元', 5),
(2351, 120, 'select2', '4000元以上', 6),
(2353, 121, 'select1', '庆典公司', 2),
(2354, 121, 'select1', '场地布置', 3),
(2355, 121, 'select1', '灯光音响', 4),
(2356, 121, 'select1', '礼仪模特', 5),
(2357, 121, 'select1', '乐队演出', 6),
(2358, 121, 'select1', '司仪', 7),
(2359, 121, 'select1', '化妆', 8),
(2360, 121, 'select1', '其它', 9),
(2362, 122, 'select1', '债务纠纷', 2),
(2363, 122, 'select1', '合同纠纷', 3),
(2364, 122, 'select1', '交通事故', 4),
(2365, 122, 'select1', '离婚', 5),
(2366, 122, 'select1', '刑事辩护', 6),
(2367, 122, 'select1', '知识产权', 7),
(2368, 122, 'select1', '房产纠纷', 8),
(2369, 122, 'select1', '法律援助', 9),
(2370, 122, 'select1', '劳动纠纷', 10),
(2371, 122, 'select1', '其它', 11),
(2373, 123, 'select1', '快餐', 2),
(2374, 123, 'select1', '送水', 3),
(2375, 123, 'select1', '食材配送', 4),
(2376, 123, 'select1', '宴会外卖', 5),
(2377, 123, 'select1', '承包食堂', 6),
(2378, 123, 'select1', '其它', 7),
(2380, 124, 'select1', '星级酒店', 2),
(2381, 124, 'select1', '经济型酒店', 3),
(2382, 124, 'select1', '宾馆', 4),
(2383, 124, 'select1', '青年旅舍', 5),
(2384, 124, 'select1', '中等', 6),
(2385, 124, 'select1', '度假村', 7),
(2386, 124, 'select1', '连锁酒店', 8),
(2387, 124, 'select1', '其它', 9),
(2389, 124, 'select2', '100元以下', 2),
(2390, 124, 'select2', '100元—200元', 3),
(2391, 124, 'select2', '200元—300元', 4),
(2392, 124, 'select2', '300元—500元', 5),
(2393, 124, 'select2', '500元—800元', 6),
(2394, 124, 'select2', '800元以上', 7),
(2396, 125, 'select1', '购物', 2),
(2397, 125, 'select1', '休闲娱乐', 3),
(2398, 125, 'select1', '论坛', 4),
(2399, 125, 'select1', '新闻', 5),
(2400, 125, 'select1', '交通地图', 6),
(2401, 125, 'select1', '游戏', 7),
(2402, 125, 'select1', 'KTV', 8),
(2403, 125, 'select1', '会所', 9),
(2404, 125, 'select1', '茶庄', 10),
(2405, 125, 'select1', '其他', 11),
(2407, 126, 'select1', '笔译', 2),
(2408, 126, 'select1', '口译', 3),
(2409, 126, 'select1', '速记', 4),
(2410, 126, 'select1', '同声传译', 5),
(2411, 126, 'select1', '其它', 6),
(2413, 127, 'select1', '面部整形', 2),
(2414, 127, 'select1', '眼部整形', 3),
(2415, 127, 'select1', '鼻部整形', 4),
(2416, 127, 'select1', '唇部整形', 5),
(2417, 127, 'select1', '牙齿美容', 6),
(2418, 127, 'select1', '皮肤美容', 7),
(2419, 127, 'select1', '胸部整形', 8),
(2420, 127, 'select1', '微整形', 9),
(2421, 127, 'select1', '吸脂溶脂减肥', 10),
(2422, 127, 'select1', '私密整形', 11),
(2423, 127, 'select1', '激光脱毛', 12),
(2424, 127, 'select1', '假体取出', 13),
(2425, 127, 'select1', '其他', 14),
(2427, 128, 'select1', '肾病科', 2),
(2428, 128, 'select1', '皮肤病科', 3),
(2429, 128, 'select1', '风湿科', 4),
(2430, 128, 'select1', '眼科', 5),
(2431, 128, 'select1', '骨科', 6),
(2432, 128, 'select1', '儿科', 7),
(2433, 128, 'select1', '泌尿科', 8),
(2434, 128, 'select1', '肝病科', 9),
(2435, 128, 'select1', '不孕不育', 10),
(2436, 128, 'select1', '妇科', 11),
(2437, 128, 'select1', '性交障碍', 12),
(2438, 128, 'select1', '性病科', 13),
(2439, 128, 'select1', '内分泌科', 14),
(2440, 128, 'select1', '肿瘤科', 15),
(2441, 128, 'select1', '男科', 16),
(2442, 128, 'select1', '其它', 17),
(2444, 130, 'select1', '摄影', 2),
(2445, 130, 'select1', '翻译', 3),
(2446, 130, 'select1', '装卸工', 4),
(2447, 130, 'select1', '地勤', 5),
(2448, 130, 'select1', '杂务', 6),
(2449, 130, 'select1', '其他', 7),
(2451, 130, 'select2', '100元以下', 2),
(2452, 130, 'select2', '100元—200元', 3),
(2453, 130, 'select2', '200元—300元', 4),
(2454, 130, 'select2', '300元—500元', 5),
(2455, 130, 'select2', '500元以上', 6),
(2457, 131, 'select1', '中学理科', 2),
(2458, 131, 'select1', '小学英语', 3),
(2459, 131, 'select1', '中学文科', 4),
(2460, 131, 'select1', '文艺体育', 5),
(2461, 131, 'select1', '奥数', 6),
(2462, 131, 'select1', '其他', 7),
(2464, 131, 'select2', '30元以下', 2),
(2465, 131, 'select2', '30元—50元', 3),
(2466, 131, 'select2', '50元—70元', 4),
(2467, 131, 'select2', '70元—100元', 5),
(2468, 131, 'select2', '100元—150元', 6),
(2469, 131, 'select2', '150元以上', 7),
(2471, 132, 'select1', '派发', 2),
(2472, 132, 'select1', '促销', 3),
(2473, 132, 'select1', '其它 ', 4),
(2475, 132, 'select2', '10元以下', 2),
(2476, 132, 'select2', '10元—20元', 3),
(2477, 132, 'select2', '20元—30元', 4),
(2478, 132, 'select2', '30元—70元', 5),
(2479, 132, 'select2', '70元以上', 6),
(2481, 133, 'select1', '礼仪', 2),
(2482, 133, 'select1', '模特', 3),
(2483, 133, 'select1', '其它', 4),
(2485, 133, 'select2', '20元以下', 2),
(2486, 133, 'select2', '20元—30元', 3),
(2487, 133, 'select2', '30元—60元', 4),
(2488, 133, 'select2', '60元—100元', 5),
(2489, 133, 'select2', '100元—150元', 6),
(2490, 133, 'select2', '150元以上', 7),
(2492, 134, 'select1', '10元以下', 2),
(2493, 134, 'select1', '10元—20元', 3),
(2494, 134, 'select1', '20元—40元', 4),
(2495, 134, 'select1', '40元—70元', 5),
(2496, 134, 'select1', '70元以上', 6),
(2498, 135, 'select1', '10元以下', 2),
(2499, 135, 'select1', '10元—20元', 3),
(2500, 135, 'select1', '20元—30元', 4),
(2501, 135, 'select1', '30元以上', 5),
(2503, 135, 'select2', '上午', 2),
(2504, 135, 'select2', '中午', 3),
(2505, 135, 'select2', '下午', 4),
(2506, 135, 'select2', '晚间', 5),
(2507, 135, 'select2', '晚9点以后', 6),
(2508, 135, 'select2', '其它', 7),
(2510, 136, 'select1', '设计', 2),
(2511, 136, 'select1', '网站', 3),
(2512, 136, 'select1', '其它', 4),
(2514, 136, 'select2', '50元以下', 2),
(2515, 136, 'select2', '50—100', 3),
(2516, 136, 'select2', '100—200', 4),
(2517, 136, 'select2', '200以上', 5),
(2519, 137, 'select1', '50元以下', 2),
(2520, 137, 'select1', '50元—100元', 3),
(2521, 137, 'select1', '100元—200元', 4),
(2522, 137, 'select1', '200元以上', 5),
(2524, 138, 'select1', '50元以下', 2),
(2525, 138, 'select1', '50元—100元', 3),
(2526, 138, 'select1', '100元—200元', 4),
(2527, 138, 'select1', '200元以上', 5),
(2529, 139, 'select1', '50元以下', 2),
(2530, 139, 'select1', '50元—100元', 3),
(2531, 139, 'select1', '100元—200元', 4),
(2532, 139, 'select1', '200元—500元', 5),
(2533, 139, 'select1', '500元以上', 6),
(2535, 140, 'select1', '50元以下', 2),
(2536, 140, 'select1', '50元—100元', 3),
(2537, 140, 'select1', '100元—200元', 4),
(2538, 140, 'select1', '200元以上', 5),
(2540, 141, 'select1', '50元以下', 2),
(2541, 141, 'select1', '50元—100元', 3),
(2542, 141, 'select1', '100元—200元', 5),
(2543, 141, 'select1', '200元以上', 6),
(2545, 142, 'select1', '泰迪', 2),
(2546, 142, 'select1', '金毛', 3),
(2547, 142, 'select1', '比熊', 4),
(2548, 142, 'select1', '萨摩耶', 5),
(2549, 142, 'select1', '阿拉斯加', 6),
(2550, 142, 'select1', '博美', 7),
(2551, 142, 'select1', '哈士奇', 8),
(2552, 142, 'select1', '拉布拉多', 9),
(2553, 142, 'select1', '德国牧羊犬', 10),
(2554, 142, 'select1', '松狮', 11),
(2555, 142, 'select1', '秋田犬', 12),
(2556, 142, 'select1', '吉娃娃', 13),
(2557, 142, 'select1', '藏獒', 14),
(2558, 142, 'select1', '雪纳瑞', 15),
(2559, 142, 'select1', '贵宾', 16),
(2560, 142, 'select1', '边境牧羊犬', 17),
(2561, 142, 'select1', '巴哥犬', 18),
(2562, 142, 'select1', '古牧', 19),
(2563, 142, 'select1', '罗威纳', 20),
(2564, 142, 'select1', '银狐犬', 21),
(2565, 142, 'select1', '杜宾犬', 22),
(2566, 142, 'select1', '京巴', 23),
(2567, 142, 'select1', '比特', 24),
(2568, 142, 'select1', '苏格兰牧羊犬', 25),
(2569, 142, 'select1', '高加索犬', 26),
(2570, 142, 'select1', '灵缇犬', 27),
(2571, 142, 'select1', '西高地', 28),
(2572, 142, 'select1', '马犬', 29),
(2573, 142, 'select1', '喜乐蒂', 30),
(2574, 142, 'select1', '牛头梗', 31),
(2575, 142, 'select1', '雪橇犬', 32),
(2576, 142, 'select1', '西施犬', 33),
(2577, 142, 'select1', '大白熊', 34),
(2578, 142, 'select1', '卡斯罗', 35),
(2579, 142, 'select1', '沙皮犬', 36),
(2580, 142, 'select1', '蝴蝶犬', 37),
(2581, 142, 'select1', '伯恩山犬', 38),
(2582, 142, 'select1', '斗牛犬', 39),
(2583, 142, 'select1', '万能梗', 40),
(2584, 142, 'select1', '小鹿犬', 41),
(2585, 142, 'select1', '猎狐梗', 42),
(2586, 142, 'select1', '威玛烈犬', 43),
(2587, 142, 'select1', '柴犬', 44),
(2588, 142, 'select1', '斑点狗', 45),
(2589, 142, 'select1', '巴吉度猎犬', 46),
(2590, 142, 'select1', '阿富汗猎犬', 47),
(2591, 142, 'select1', '格力犬', 48),
(2592, 142, 'select1', '比格犬', 49),
(2593, 142, 'select1', '大丹犬', 50),
(2594, 142, 'select1', '腊肠犬', 51),
(2595, 142, 'select1', '可卡犬', 52),
(2596, 142, 'select1', '柯基犬', 53),
(2597, 142, 'select1', '圣伯纳', 54),
(2598, 142, 'select1', '其他', 55),
(2600, 142, 'select2', '100元以下', 2),
(2601, 142, 'select2', '100元—300元', 3),
(2602, 142, 'select2', '300元—500元', 4),
(2603, 142, 'select2', '500元—800元', 5),
(2604, 142, 'select2', '800元—1200元', 6),
(2605, 142, 'select2', '1200元—2000元', 7),
(2606, 142, 'select2', '2000元以上', 8),
(2608, 142, 'select3', '公', 2),
(2609, 142, 'select3', '牧', 3),
(2611, 143, 'select1', '其他水族', 2),
(2612, 143, 'select1', '奇石盆景', 3),
(2613, 143, 'select1', '玩赏鸟', 4),
(2614, 143, 'select1', '观赏鱼', 5),
(2615, 143, 'select1', '其他', 6),
(2617, 143, 'select2', '100元以下', 2),
(2618, 143, 'select2', '100元—300元', 3),
(2619, 143, 'select2', '300元—500元', 4),
(2620, 143, 'select2', '500元—800元', 5),
(2621, 143, 'select2', '800元—1200元', 6),
(2622, 143, 'select2', '1200元—2000元', 7),
(2623, 143, 'select2', '2000元以上', 8),
(2625, 144, 'select1', '赠送', 2),
(2626, 144, 'select1', '求赠', 3),
(2628, 144, 'select2', '狗', 2),
(2629, 144, 'select2', '猫', 3),
(2630, 144, 'select2', '鼠', 4),
(2631, 144, 'select2', '兔', 5),
(2632, 144, 'select2', '鸟', 6),
(2633, 144, 'select2', '水族', 7),
(2634, 144, 'select2', '蛇', 8),
(2635, 144, 'select2', '猪', 9),
(2636, 144, 'select2', '其他', 10),
(2638, 145, 'select1', '蓝猫', 2),
(2639, 145, 'select1', '短毛猫', 3),
(2640, 145, 'select1', '折耳猫', 4),
(2641, 145, 'select1', '加菲猫', 5),
(2642, 145, 'select1', '虎斑猫', 6),
(2643, 145, 'select1', '金吉拉', 7),
(2644, 145, 'select1', '波斯猫', 8),
(2645, 145, 'select1', '暹罗猫', 9),
(2646, 145, 'select1', '豹猫', 10),
(2647, 145, 'select1', '其他', 11),
(2649, 145, 'select2', '100元以下', 2),
(2650, 145, 'select2', '100元—300元', 3),
(2651, 145, 'select2', '300元—500元', 4),
(2652, 145, 'select2', '500元—800元', 5),
(2653, 145, 'select2', '800元—1200元', 6),
(2654, 145, 'select2', '1200元—2000元', 7),
(2655, 145, 'select2', '2000元以上', 8),
(2657, 145, 'select3', '公', 2),
(2658, 145, 'select3', '母', 3),
(2660, 146, 'select1', '配种', 2),
(2661, 146, 'select1', '训练', 3),
(2662, 146, 'select1', '寄养', 4),
(2663, 146, 'select1', '医院', 5),
(2664, 146, 'select1', '美容', 6),
(2665, 146, 'select1', '托运', 7),
(2666, 146, 'select1', '临时照看', 8),
(2667, 146, 'select1', '其他', 9),
(2669, 147, 'select1', '宠物衣服', 2),
(2670, 147, 'select1', '宠物除毛器', 3),
(2671, 147, 'select1', '宠物粮', 4),
(2672, 147, 'select1', '宠物链', 5),
(2673, 147, 'select1', '宠物鞋', 6),
(2674, 147, 'select1', '宠物配饰', 7),
(2675, 147, 'select1', '宠物其它应用', 8),
(2676, 147, 'select1', '宠物其它食品', 9),
(2677, 147, 'select1', '其它', 10),
(2679, 147, 'select2', '供应', 2),
(2680, 147, 'select2', '求购', 3);

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_details`
--

CREATE TABLE IF NOT EXISTS `bao_life_details` (
  `life_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  PRIMARY KEY (`life_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_love`
--

CREATE TABLE IF NOT EXISTS `bao_life_love` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `life_id` (`life_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_photos`
--

CREATE TABLE IF NOT EXISTS `bao_life_photos` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_life_report`
--

CREATE TABLE IF NOT EXISTS `bao_life_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_links`
--

CREATE TABLE IF NOT EXISTS `bao_links` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(32) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bao_links`
--

INSERT INTO `bao_links` (`link_id`, `link_name`, `link_url`, `orderby`) VALUES
(1, 'baocms', 'http://www.baocms.com', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bao_lock`
--

CREATE TABLE IF NOT EXISTS `bao_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `t` char(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market`
--

CREATE TABLE IF NOT EXISTS `bao_market` (
  `market_id` int(11) NOT NULL AUTO_INCREMENT,
  `market_name` varchar(64) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `logo` varchar(64) DEFAULT '0',
  `photo` varchar(64) DEFAULT '0',
  `type1` tinyint(1) DEFAULT '0',
  `type2` tinyint(1) DEFAULT NULL,
  `type3` tinyint(1) DEFAULT NULL,
  `type4` tinyint(1) DEFAULT NULL,
  `type5` tinyint(1) DEFAULT NULL,
  `type6` tinyint(1) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `summary` text,
  `orderby` int(11) DEFAULT '100',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `tags` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `views` int(10) DEFAULT NULL,
  `fans_num` int(11) DEFAULT '0',
  `city_isd` smallint(5) DEFAULT '0',
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_activity`
--

CREATE TABLE IF NOT EXISTS `bao_market_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` text,
  `views` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_details`
--

CREATE TABLE IF NOT EXISTS `bao_market_details` (
  `market_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  `business_time` varchar(32) DEFAULT '9:00-18:00',
  `near` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_enter`
--

CREATE TABLE IF NOT EXISTS `bao_market_enter` (
  `enter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` int(10) DEFAULT '0',
  `floor` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`enter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_favorites`
--

CREATE TABLE IF NOT EXISTS `bao_market_favorites` (
  `favorites_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_floor`
--

CREATE TABLE IF NOT EXISTS `bao_market_floor` (
  `floor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(10) DEFAULT '0',
  `floor_name` varchar(32) DEFAULT '',
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`floor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_market_pic`
--

CREATE TABLE IF NOT EXISTS `bao_market_pic` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_menu`
--

CREATE TABLE IF NOT EXISTS `bao_menu` (
  `menu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) DEFAULT NULL,
  `menu_action` varchar(64) DEFAULT NULL,
  `parent_id` smallint(5) DEFAULT '0',
  `orderby` tinyint(3) unsigned DEFAULT '100',
  `is_show` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=679 ;

--
-- 转存表中的数据 `bao_menu`
--

INSERT INTO `bao_menu` (`menu_id`, `menu_name`, `menu_action`, `parent_id`, `orderby`, `is_show`) VALUES
(1, '系统', NULL, 0, 1, 1),
(2, '设置', NULL, 0, 2, 1),
(3, '商家', NULL, 0, 3, 1),
(4, '会员', NULL, 0, 4, 1),
(5, '商城', NULL, 0, 5, 1),
(203, '支付方式', 'payment/index', 202, 1, 1),
(7, '功能', NULL, 0, 6, 1),
(8, '运营', NULL, 0, 10, 1),
(9, '管理员管理', NULL, 1, 2, 1),
(11, '后台菜单管理', NULL, 1, 1, 1),
(12, '菜单列表', 'menu/index', 11, 2, 1),
(13, '新增菜单', 'menu/create', 11, 3, 0),
(14, '编辑菜单', 'menu/edit', 11, 1, 0),
(15, '删除菜单', 'menu/delete', 11, 3, 0),
(16, '更新菜单', 'menu/update', 11, 4, 0),
(17, '批量菜单', 'menu/action', 11, 1, 0),
(18, '角色管理', 'role/index', 9, 2, 1),
(25, '新增角色', 'role/create', 9, 7, 0),
(26, '编辑角色', 'role/edit', 9, 1, 0),
(27, '删除角色', 'role/delete', 9, 2, 0),
(28, '角色授权', 'role/auth', 9, 8, 0),
(29, '管理员管理', 'admin/index', 9, 1, 1),
(30, '新增管理员', 'admin/create', 9, 2, 0),
(31, '编辑管理员', 'admin/edit', 9, 2, 0),
(32, '删除管理员', 'admin/delete', 9, 4, 0),
(33, '会员管理', NULL, 4, 1, 1),
(34, '会员管理', 'user/index', 33, 3, 1),
(35, '新增会员', 'user/create', 33, 2, 0),
(36, '编辑会员', 'user/edit', 33, 6, 0),
(37, '删除会员', 'user/delete', 33, 4, 0),
(60, '预约订座', NULL, 3, 4, 1),
(39, '缓存管理', NULL, 8, 6, 1),
(40, '清空缓存', 'clean/cache', 39, 1, 1),
(41, '审核会员', 'user/audit', 33, 3, 0),
(42, '商家分类', NULL, 3, 1, 1),
(43, '商家管理', NULL, 3, 2, 1),
(44, '分类列表', 'shopcate/index', 42, 1, 1),
(45, '新增分类', 'shopcate/create', 42, 2, 0),
(46, '编辑分类', 'shopcate/edit', 42, 3, 0),
(47, '删除分类', 'shopcate/delete', 42, 4, 0),
(48, '更新排序', 'shopcate/update', 42, 5, 0),
(49, '基本设置', NULL, 2, 1, 1),
(50, '区域设置', NULL, 2, 3, 1),
(51, '区域管理', 'area/index', 50, 11, 1),
(52, '新增区域', 'area/create', 50, 12, 0),
(53, '编辑区域', 'area/edit', 50, 13, 0),
(54, '删除区域', 'area/delete', 50, 14, 0),
(55, '商圈管理', 'business/index', 50, 15, 0),
(56, '新增商圈', 'business/create', 50, 19, 0),
(57, '编辑商圈', 'business/edit', 50, 18, 0),
(58, '删除商圈', 'business/delete', 50, 17, 0),
(277, '审核商家', 'shop/audit', 43, 100, 0),
(61, '文章内容', NULL, 7, 2, 1),
(62, '抢购', NULL, 5, 3, 1),
(65, '友情链接', NULL, 8, 4, 1),
(66, '广告管理', NULL, 8, 1, 1),
(202, '支付设置', NULL, 2, 2, 1),
(215, '微信', NULL, 0, 9, 1),
(70, '友情链接', 'links/index', 65, 100, 1),
(71, '添加友情', 'links/create', 65, 100, 0),
(72, '修改友情', 'links/edit', 65, 100, 0),
(73, '删除友情', 'links/delete', 65, 100, 0),
(278, '积分兑换', 'integralexchange/index', 234, 2, 1),
(279, '设为已完成兑换', 'integralexchange/audit', 234, 2, 0),
(280, '设为热门分类', 'shopcate/hots', 42, 6, 0),
(80, '站点设置', 'setting/site', 49, 1, 1),
(81, '附件设置', 'setting/attachs', 49, 2, 1),
(270, '选择分类', 'activitycate/select', 244, 100, 0),
(85, '商家列表', 'shop/index', 43, 2, 1),
(86, '新增商家', 'shop/create', 43, 100, 0),
(87, '修改商家', 'shop/edit', 43, 100, 0),
(88, '删除商家', 'shop/delete', 43, 100, 0),
(90, '异步选择会员', 'user/select', 33, 2, 0),
(91, '异步查询商圈', 'business/child', 50, 20, 0),
(95, '预定合作', 'shop/yuyue', 43, 100, 0),
(96, '商家新闻', 'shopnews/index', 228, 2, 1),
(97, '发布新闻', 'shopnews/create', 228, 1, 1),
(98, '修改新闻', 'shopnews/edit', 228, 3, 0),
(99, '删除新闻', 'shopnews/delete', 228, 4, 0),
(100, '审核新闻', 'shopnews/audit', 228, 5, 0),
(101, '商家异步查询', 'shop/select', 43, 100, 0),
(102, '商家图片', 'shoppic/index', 43, 41, 1),
(103, '删除图片', 'shoppic/delete', 43, 42, 0),
(104, '异步查询', 'articlecate/child', 61, 3, 0),
(105, '更新排序', 'articlecate/update', 61, 4, 0),
(106, '删除分类', 'articlecate/delete', 61, 5, 0),
(107, '编辑分类', 'articlecate/edit', 61, 6, 0),
(108, '新增分类', 'articlecate/create', 61, 7, 0),
(109, '分类列表', 'articlecate/index', 61, 1, 1),
(110, '文章管理', 'article/index', 61, 2, 1),
(111, '新增文章', 'article/create', 61, 8, 0),
(112, '编辑文章', 'article/edit', 61, 9, 0),
(113, '删除文章', 'article/delete', 61, 10, 0),
(114, '消费分享', NULL, 7, 2, 1),
(115, '敏感词过滤', 'sensitive/index', 49, 3, 1),
(116, '新增敏感词', 'sensitive/create', 49, 4, 0),
(117, '编辑敏感词', 'sensitive/edit', 49, 5, 0),
(118, '删除敏感词', 'sensitive/delete', 49, 6, 0),
(119, '消费分享', 'post/index', 114, 1, 1),
(120, '新增分享', 'post/create', 114, 2, 0),
(121, '编辑分享', 'post/edit', 114, 3, 0),
(122, '删除分享', 'post/delete', 114, 4, 0),
(123, '审核分享', 'post/audit', 114, 5, 0),
(509, '会员提现', NULL, 4, 100, 1),
(125, '抢购列表', 'tuan/index', 62, 1, 1),
(126, '新增抢购', 'tuan/create', 62, 14, 0),
(127, '编辑抢购', 'tuan/edit', 62, 11, 0),
(128, '删除抢购', 'tuan/delete', 62, 12, 0),
(129, '审核抢购', 'tuan/audit', 62, 13, 0),
(130, '订单管理', 'tuanorder/index', 62, 20, 1),
(206, '支付日志', 'paymentlogs/index', 202, 4, 1),
(134, '优惠券', NULL, 5, 5, 1),
(135, '优惠券管理', 'coupon/index', 134, 1, 1),
(136, '新增优惠券', 'coupon/create', 134, 2, 0),
(137, '编辑优惠券', 'coupon/edit', 134, 3, 0),
(138, '删除优惠券', 'coupon/delete', 134, 4, 0),
(139, '审核优惠券', 'coupon/audit', 134, 5, 0),
(140, '优惠券下载', 'coupondownload/index', 134, 6, 1),
(142, '回复帖子', 'postreply/index', 114, 11, 1),
(143, '新增回复', 'postreply/create', 114, 12, 0),
(144, '编辑回复', 'postreply/edit', 114, 13, 0),
(145, '删除回复', 'postreply/delete', 114, 14, 0),
(146, '审核回复', 'postreply/audit', 114, 15, 0),
(156, '短信设置', 'setting/sms', 49, 11, 1),
(157, '邮件设置', 'setting/mail', 49, 12, 1),
(158, '模版管理', NULL, 2, 4, 1),
(159, '短信模版', 'sms/index', 158, 11, 1),
(160, '新增短信模版', 'sms/create', 158, 12, 0),
(161, '编辑短信模版', 'sms/edit', 158, 13, 0),
(162, '关闭短信模版', 'sms/delete', 158, 14, 0),
(163, '邮件模版', 'email/index', 158, 21, 1),
(164, '新增邮件模版', 'email/create', 158, 22, 0),
(165, '编辑邮件模版', 'email/edit', 158, 23, 0),
(166, '关闭邮件模版', 'email/delete', 158, 24, 0),
(167, 'SEO模版', 'seo/index', 158, 31, 1),
(168, '新增SEO模版', 'seo/create', 158, 100, 0),
(169, '编辑SEO模版', 'seo/edit', 158, 100, 0),
(170, '删除SEO模版', 'seo/delete', 158, 100, 0),
(171, '网站风格', 'template/index', 158, 40, 1),
(172, '安装风格', 'template/install', 158, 42, 0),
(173, '卸载风格', 'template/uninstall', 158, 41, 0),
(174, '配置风格', 'template/setting', 158, 43, 0),
(175, '批量开启短信', 'sms/audit', 158, 15, 0),
(176, '开启邮件模版', 'email/audit', 158, 25, 0),
(177, '商家点评', 'shopdianping/index', 230, 22, 1),
(178, '发布点评', 'shopdianping/create', 230, 21, 1),
(179, '编辑点评', 'shopdianping/edit', 230, 23, 0),
(180, '删除点评', 'shopdianping/delete', 230, 24, 0),
(181, '商家预约', 'shopyuyue/index', 60, 31, 1),
(182, '新增预约', 'shopyuyue/create', 60, 32, 0),
(183, '编辑预约', 'shopyuyue/edit', 60, 33, 0),
(184, '删除预约', 'shopyuyue/delete', 60, 34, 0),
(185, '系统文章', 'systemcontent/index', 61, 21, 1),
(186, '新增系统文章', 'systemcontent/create', 61, 22, 0),
(187, '编辑系统文章', 'systemcontent/edit', 61, 23, 0),
(188, '删除系统文章', 'systemcontent/delete', 61, 24, 0),
(189, '广告位设置', 'adsite/index', 66, 1, 1),
(494, '人才招聘', NULL, 487, 10, 1),
(495, '人才招聘', 'work/index', 494, 1, 1),
(193, '广告管理', 'ad/index', 66, 11, 0),
(194, '新增广告', 'ad/create', 66, 12, 0),
(195, '编辑广告', 'ad/edit', 66, 13, 0),
(196, '删除广告', 'ad/delete', 66, 14, 0),
(197, '设为默认模版', 'template/df', 158, 44, 0),
(198, '新增挂件', 'template/add', 158, 45, 0),
(199, '编辑挂件', 'template/edit', 158, 46, 0),
(200, '删除挂件', 'template/delete', 158, 47, 0),
(201, '更新模版', 'template/update', 158, 48, 0),
(204, '安装支付', 'payment/install', 202, 2, 0),
(205, '卸载支付', 'payment/uninstall', 202, 3, 0),
(259, '积分设置', 'setting/integral', 49, 13, 1),
(441, '资金记录', 'shopmoney/index', 440, 1, 1),
(209, '抢购券管理', 'tuancode/index', 62, 33, 1),
(210, '删除抢购券', 'tuancode/delete', 62, 34, 0),
(211, '积分日志', 'userintegrallogs/index', 291, 40, 1),
(212, '增加积分', 'user/integral', 33, 8, 0),
(213, '金块日志', 'usergoldlogs/index', 291, 42, 1),
(214, '增加金块', 'user/gold', 33, 9, 0),
(216, '微信O2O', NULL, 215, 1, 1),
(217, '商家微信', NULL, 215, 2, 1),
(218, '微信配置', 'setting/weixin', 216, 1, 1),
(219, '微信关键字', 'weixinkeyword/index', 216, 2, 1),
(220, '新增关键字', 'weixinkeyword/create', 216, 3, 0),
(221, '编辑关键字', 'weixinkeyword/edit', 216, 4, 0),
(222, '删除关键字', 'weixinkeyword/delete', 216, 5, 0),
(223, '商家商品', 'goods/index', 231, 51, 1),
(224, '新增商品', 'goods/create', 231, 52, 0),
(225, '编辑商品', 'goods/edit', 231, 53, 0),
(226, '删除商品', 'goods/delete', 231, 54, 0),
(227, '审核商品', 'goods/audit', 231, 55, 0),
(228, '商家新闻', NULL, 3, 6, 1),
(230, '商家点评', NULL, 3, 5, 1),
(231, '商家产品', NULL, 5, 1, 1),
(486, '榜单分类', 'billcate/index', 483, 1, 1),
(234, '积分商城', NULL, 335, 6, 1),
(235, '商品列表', 'integralgoods/index', 234, 1, 1),
(236, '新增商品', 'integralgoods/create', 234, 1, 0),
(237, '修改商品', 'integralgoods/edit', 234, 1, 0),
(238, '删除商品', 'integralgoods/delete', 234, 1, 0),
(239, '审核商品', 'integralgoods/audit', 234, 1, 0),
(240, '会员等级', 'userrank/index', 33, 21, 1),
(241, '新增等级', 'userrank/create', 33, 22, 0),
(242, '编辑等级', 'userrank/edit', 33, 23, 0),
(243, '删除等级', 'userrank/delete', 33, 24, 0),
(244, '活动管理', NULL, 7, 5, 1),
(245, '活动列表', 'activity/index', 244, 2, 1),
(246, '活动添加', 'activity/create', 244, 100, 0),
(247, '活动审核', 'activity/audit', 244, 100, 0),
(248, '活动编辑', 'activity/edit', 244, 100, 0),
(249, '活动删除', 'activity/delete', 244, 100, 0),
(262, '新增地址', 'useraddr/create', 260, 2, 0),
(260, '收货地址', NULL, 4, 4, 1),
(261, '收货地址', 'useraddr/index', 260, 1, 1),
(255, '分类列表', 'activitycate/index', 244, 1, 1),
(256, '添加分类', 'activitycate/create', 244, 100, 0),
(257, '编辑分类', 'activitycate/edit', 244, 100, 0),
(258, '删除分类', 'activitycate/delete', 244, 100, 0),
(263, '编辑地址', 'useraddr/edit', 260, 3, 0),
(264, '删除地址', 'useraddr/delete', 260, 4, 0),
(265, '商品类别', 'goodscate/index', 231, 1, 1),
(266, '新增分类', 'goodscate/create', 231, 2, 0),
(267, '编辑分类', 'goodscate/edit', 231, 3, 0),
(268, '更新分类', 'goodscate/update', 231, 4, 0),
(269, '删除分类', 'goodscate/delete', 231, 5, 0),
(271, '添加子分类', 'activitycate/child', 244, 100, 0),
(274, '微信消息列表', 'weixinmsg/index', 216, 11, 1),
(275, '第三方登录', 'setting/connect', 33, 10, 1),
(281, '热门商圈', 'business/hots', 50, 16, 0),
(282, '统计报表', NULL, 8, 5, 1),
(283, '团购数分析', 'tongji/index', 282, 11, 1),
(621, '删除功能', 'pcfunction/delete', 618, 100, 0),
(624, '功能隐藏', 'pcfunction/closed', 618, 100, 0),
(296, '抢购券退款', 'tuancode/refund', 62, 34, 1),
(289, '团购金额', 'tongji/money', 282, 12, 1),
(290, '威望设置', 'setting/prestige', 49, 14, 1),
(291, '会员日志', NULL, 4, 5, 1),
(292, '余额日志', 'usermoneylogs/index', 291, 43, 1),
(297, '抢购券退款操作', 'tuancode/refunding', 62, 35, 0),
(298, '抢购券过期', 'tuancode/overdue', 62, 35, 1),
(299, '抢购券过期退款操作', 'tuancode/overdueing', 62, 35, 0),
(303, '手机功能', NULL, 487, 7, 1),
(305, '新增发现', 'found/create', 303, 2, 0),
(306, '编辑发现', 'found/edit', 303, 3, 0),
(307, '删除发现', 'found/delete', 303, 4, 0),
(308, '审核发现', 'found/audit', 303, 5, 0),
(309, '消息管理', 'msg/index', 303, 6, 1),
(310, '新增消息', 'msg/create', 303, 7, 0),
(311, '编辑消息', 'msg/edit', 303, 8, 0),
(312, '删除消息', 'msg/delete', 303, 9, 0),
(313, '报名管理', 'activitysign/index', 244, 3, 1),
(314, '商城订单', NULL, 5, 7, 1),
(315, '订单汇总', 'order/index', 314, 1, 1),
(316, '等待捡货', 'order/wait', 314, 2, 1),
(317, '捡货单管理', 'order/picks', 314, 4, 1),
(318, '发货管理', 'order/delivery', 314, 5, 1),
(319, '加入捡货单', 'order/pick', 314, 100, 0),
(320, '清空拣货单', 'order/clean', 314, 100, 0),
(321, '创建捡货单', 'order/create', 314, 100, 0),
(322, '捡货单详情', 'order/pickdetail', 314, 100, 0),
(324, '打印配送单', 'order/send', 314, 100, 0),
(325, '订单发货', 'order/distribution', 314, 100, 0),
(326, '增加余额', 'user/money', 33, 100, 0),
(327, '新增商家资金', 'shopmoney/create', 43, 100, 0),
(328, '商家审核列表', 'shop/apply', 43, 3, 1),
(329, '分类列表', 'sharecate/index', 114, 1, 1),
(330, '添加分类', 'sharecate/create', 114, 100, 0),
(331, '选择分类', 'sharecate/select', 114, 100, 0),
(332, '添加子分类', 'sharecate/child', 114, 100, 0),
(333, '编辑分类', 'sharecate/edit', 114, 100, 0),
(334, '删除分类', 'sharecate/delete', 114, 100, 0),
(335, '频道', NULL, 0, 8, 1),
(336, '自定义菜单', 'setting/weixinmenu', 216, 6, 1),
(337, '删除微信消息', 'weixinmsg/delete', 216, 12, 0),
(338, '分类信息', NULL, 335, 1, 1),
(339, '分类管理', 'lifecate/index', 338, 1, 1),
(340, '新增分类', 'lifecate/create', 338, 2, 0),
(341, '编辑分类', 'lifecate/edit', 338, 3, 0),
(342, '删除分类', 'lifecate/delete', 338, 4, 0),
(343, '属性设置', 'lifecate/setting', 338, 5, 0),
(541, '全民经纪人', 'tongji/quanming', 282, 20, 1),
(345, '抢购分类', 'tuancate/index', 62, 1, 1),
(346, '添加分类', 'tuancate/create', 62, 100, 0),
(347, '添加子分类', 'tuancate/child', 62, 100, 0),
(348, '删除分类', 'tuancate/delete', 62, 100, 0),
(349, '编辑分类', 'tuancate/edit', 62, 100, 0),
(350, '选择分类', 'tuancate/select', 62, 100, 0),
(351, '删除属性', 'lifecate/delattr', 338, 6, 0),
(352, '信息列表', 'life/index', 338, 11, 1),
(353, '新增信息', 'life/create', 338, 12, 0),
(354, '编辑信息', 'life/edit', 338, 13, 0),
(355, '删除信息', 'life/delete', 338, 14, 0),
(356, '审核信息', 'life/audit', 338, 15, 0),
(357, '分类异步查询', 'lifecate/ajax', 338, 7, 0),
(537, '审核菜单', 'eleorder/audit', 416, 100, 0),
(359, '抢购点评', 'tuandianping/index', 62, 20, 1),
(360, '发布点评', 'tuandianping/create', 62, 100, 0),
(361, '删除点评', 'tuandianping/delete', 62, 100, 0),
(362, '编辑点评', 'tuandianping/edit', 62, 100, 0),
(547, '添加分类', 'weidiancate/create', 231, 100, 0),
(548, '编辑分类', 'weidiancate/edit', 231, 100, 0),
(549, '删除分类', 'weidiancate/delete', 231, 100, 0),
(517, '新增站点', 'city/create', 50, 2, 0),
(519, '删除站点', 'city/delete', 50, 4, 0),
(518, '编辑站点', 'city/edit', 50, 3, 0),
(550, '更新分类', 'weidiancate/update', 231, 100, 0),
(499, '家政配置', 'setting/housework', 498, 1, 1),
(527, '微信模板消息', 'weixintmpl/index', 216, 13, 1),
(609, '贴吧管理', NULL, 335, 100, 1),
(387, '关键字列表', 'shopweixinkeyword/index', 217, 100, 1),
(388, '新增关键字', 'shopweixinkeyword/create', 217, 100, 0),
(389, '编辑关键字', 'shopweixinkeyword/edit', 217, 100, 0),
(390, '删除关键字', 'shopweixinkeyword/delete', 217, 100, 0),
(392, '货到付款捡货', 'order/wait2', 314, 3, 1),
(626, '首页隐藏', 'pcfunction/navoff', 618, 100, 0),
(617, '删除服务', 'service/delete', 613, 100, 0),
(616, '编辑服务', 'service/edit', 613, 100, 0),
(615, '添加服务', 'service/create', 613, 100, 0),
(614, '服务列表', 'service/index', 613, 1, 1),
(613, '服务中心', NULL, 7, 3, 1),
(610, '贴吧列表', 'tieba/index', 609, 100, 1),
(611, '升级检测', 'upgrade/index', 39, 100, 1),
(612, '功能列表', 'function/index', 303, 1, 1),
(408, '关键字管理', NULL, 8, 3, 1),
(410, '关键字列表', 'keyword/index', 408, 1, 1),
(411, '添加关键字', 'keyword/create', 408, 100, 0),
(412, '编辑关键字', 'keyword/edit', 408, 100, 0),
(413, '删除关键字', 'keyword/delete', 408, 100, 0),
(414, '手机配置', 'setting/mobile', 303, 10, 1),
(418, '设置热门分类', 'life/hots', 338, 4, 0),
(416, '外卖', NULL, 5, 3, 1),
(516, '城市站点', 'city/index', 50, 1, 1),
(419, '举报信息', 'lifereport/index', 338, 20, 1),
(498, '家政服务', NULL, 487, 11, 1),
(421, '商家列表', 'ele/index', 416, 2, 1),
(422, '新增商家', 'ele/create', 416, 2, 0),
(423, '编辑商家', 'ele/edit', 416, 3, 0),
(424, '删除商家', 'ele/delete', 416, 4, 0),
(425, '打样管理', 'ele/opened', 416, 4, 0),
(538, '家政项目配置', 'housework/setting', 498, 2, 1),
(487, '手机', NULL, 0, 9, 1),
(430, '菜单管理', 'eleproduct/index', 416, 12, 1),
(431, '新增菜单', 'eleproduct/create', 416, 12, 0),
(432, '编辑菜单', 'eleproduct/edit', 416, 12, 0),
(433, '删除菜单', 'eleproduct/delete', 416, 12, 0),
(434, '进入商家中心', 'shop/login', 43, 100, 0),
(435, '卡密管理', 'rechargecard/index', 202, 5, 1),
(436, '添加充值卡', 'rechargecard/create', 202, 100, 0),
(437, '删除充值卡', 'rechargecard/delete', 202, 100, 0),
(438, '餐饮订单管理', 'eleorder/index', 416, 22, 1),
(439, '删除订单', 'eleorder/delete', 416, 100, 0),
(440, '销售流水', NULL, 3, 3, 1),
(545, '年订单汇总', 'shopmoney/tjyear', 440, 4, 1),
(544, '日订单汇总', 'shopmoney/tjday', 440, 3, 1),
(543, '月订单汇总', 'shopmoney/tjmonth', 440, 2, 1),
(445, '商场管理', NULL, 7, 8, 1),
(446, '商场列表', 'market/index', 445, 1, 1),
(447, '添加商场', 'market/create', 445, 100, 0),
(448, '编辑商场', 'market/edit', 445, 100, 0),
(449, '删除商场', 'market/delete', 445, 100, 0),
(450, '商家入驻', 'market/enter', 445, 100, 0),
(451, '入驻列表', 'market/enterlist', 445, 100, 0),
(452, '撤销入驻', 'market/cancle', 445, 100, 0),
(453, '商场活动', 'marketactivity/index', 445, 2, 1),
(454, '添加活动', 'marketactivity/create', 445, 100, 0),
(455, '编辑活动', 'marketactivity/edit', 445, 100, 0),
(456, '删除活动', 'marketactivity/delete', 445, 100, 0),
(458, '小区管理', 'community/index', 50, 21, 1),
(459, '新增小区', 'community/create', 50, 22, 0),
(460, '编辑小区', 'community/edit', 50, 23, 0),
(461, '删除小区', 'community/delete', 50, 24, 0),
(463, '便民电话', NULL, 487, 9, 1),
(464, '便民电话列表', 'convenientphone/index', 463, 1, 1),
(465, '添加便民电话', 'convenientphone/create', 463, 100, 0),
(466, '删除便民电话', 'convenientphone/delete', 463, 100, 0),
(467, '编辑便民电话', 'convenientphone/edit', 463, 100, 0),
(468, '推广配置', 'tui/index', 282, 1, 1),
(469, '新增推广', 'tui/create', 282, 2, 0),
(470, '编辑推广', 'tui/edit', 282, 3, 0),
(471, '删除推广', 'tui/delete', 282, 4, 0),
(472, '来源分析', 'tongji/laiyuan', 282, 13, 1),
(473, '推广效果分析', 'tongji/tuiguan', 282, 14, 1),
(477, '手机约会', NULL, 487, 6, 1),
(475, '关键词分析', 'tongji/keyword', 282, 16, 1),
(476, '来源金额', 'tongji/lmoney', 282, 13, 1),
(478, '手机约会', 'hdmobile/index', 477, 1, 1),
(482, '报名管理', 'hdmobilesign/index', 477, 2, 0),
(483, '上榜榜单', NULL, 7, 10, 1),
(484, '榜单列表', 'billboard/index', 483, 2, 1),
(485, '榜单管理', 'billshop/index', 483, 100, 1),
(539, '设置项目配置', 'housework/setting2', 498, 3, 0),
(540, '全民经纪人', 'setting/quanming', 33, 1, 1),
(496, '审核招聘', 'work/audit', 494, 2, 0),
(497, '删除招聘', 'work/delete', 494, 3, 0),
(500, '家政列表', 'housework/index', 498, 10, 1),
(501, '删除家政', 'housework/delete', 498, 14, 0),
(502, '修改家政', 'housework/edit', 498, 15, 0),
(618, 'PC功能', NULL, 7, 4, 1),
(619, '功能列表', 'pcfunction/index', 618, 1, 1),
(620, '更新功能', 'pcfunction/update', 618, 100, 0),
(510, '提现管理', 'usercash/index', 509, 100, 1),
(520, '微店审核列表', 'weidian/index', 43, 100, 1),
(521, '开通订座', 'shop/ding', 43, 100, 0),
(515, '微店分类', 'weidiancate/index', 231, 55, 1),
(522, '专题管理', 'zhuanti/index', 62, 41, 1),
(523, '配送员管理', NULL, 335, 100, 1),
(524, '配送员列表', 'delivery/index', 523, 100, 1),
(525, '添加配送员', 'delivery/create', 523, 100, 0),
(526, '配送记录', 'delivery/lists', 523, 100, 0),
(623, '功能显示', 'pcfunction/show', 618, 100, 0),
(625, '首页显示', 'pcfunction/navon', 618, 100, 0),
(542, '全民推广明细', 'quanming/index', 33, 2, 1),
(546, '检查系统', 'check/index', 9, 100, 1),
(551, '推广金奖励', 'user/fzmoney', 33, 25, 1),
(552, '批准推广金奖励', 'user/fzmoneyyes', 33, 26, 0),
(553, '商场楼层', 'market/floor', 445, 100, 0),
(554, '添加楼层', 'market/flooradd', 445, 100, 0),
(555, '编辑楼层', 'market/flooredit', 445, 100, 0),
(556, '删除楼层', 'market/floordel', 445, 100, 0),
(558, '物业资金', NULL, 335, 100, 1),
(559, '资金记录', 'logs/index', 558, 1, 1),
(560, '一元云购', NULL, 335, 100, 1),
(561, '商品列表', 'cloudgoods/index', 560, 1, 1),
(562, '添加商品', 'cloudgoods/create', 560, 100, 0),
(563, '编辑商品', 'cloudgoods/edit', 560, 100, 0),
(564, '删除商品', 'cloudgoods/delete', 560, 100, 0),
(565, 'UC整合', 'setting/ucenter', 49, 15, 1),
(566, '微信应用', NULL, 215, 100, 1),
(567, '砸金蛋', 'weixingoldegg/index', 566, 10, 1),
(569, '选择商场', 'market/select', 445, 100, 0),
(570, '删除榜单', 'billshop/delete', 483, 100, 0),
(571, '新增约会', 'hdmobile/create', 477, 100, 0),
(572, '修改约会', 'hdmobile/edit', 477, 100, 0),
(573, '删除约会', 'hdmobile/delete', 477, 100, 0),
(574, '审核约会', 'hdmobile/audit', 477, 100, 0),
(575, '开通配送', 'shop/pei', 43, 100, 0),
(576, '审核图片', 'shoppic/audit', 43, 100, 0),
(577, '微店修改', 'weidian/edit', 43, 100, 0),
(578, '微店审核', 'weidian/audit', 43, 100, 0),
(622, '添加功能', 'pcfunction/create', 618, 100, 0),
(579, '删除订单', 'tuanorder/delete', 62, 100, 0),
(580, '检查配送员', 'delivery/check', 523, 100, 0),
(581, '删除配送员', 'delivery/del', 523, 100, 0),
(582, '砸金蛋删除', 'weixingoldegg/delete', 566, 100, 0),
(583, '砸金蛋查看', 'weixingoldegg/detail', 566, 50, 0),
(584, '大转盘', 'weixinlottery/index', 566, 10, 1),
(585, '大转盘删除', 'weixinlottery/delete', 566, 100, 0),
(586, '大转盘查看', 'weixinlottory/detail', 566, 50, 0),
(587, '摇一摇', 'weixinshake/index', 566, 10, 1),
(588, '刮刮乐', 'weixinscratch/index', 566, 10, 1),
(597, '刮刮卡查看', 'weixinscratch/detail', 566, 50, 0),
(591, '微接力', 'weixinrelay/index', 566, 10, 1),
(592, '微助力', 'weixinhelp/index', 566, 10, 1),
(593, '优惠券', 'weixincoupon/index', 566, 10, 1),
(594, '红包', 'weixinpacket/index', 566, 10, 1),
(598, '刮刮卡删除', 'weixinscratch/delete', 566, 100, 0),
(599, '摇一摇查看', 'weixinshake/detail', 566, 50, 0),
(600, '摇一摇删除', 'weixinshake/delete', 566, 100, 0),
(601, '微接力查看', 'weixinrelaydetail', 566, 50, 0),
(602, '微接力删除', 'weixinrelaydelete', 566, 100, 0),
(603, '微助力查看', 'weixinhelp/detail', 566, 50, 0),
(604, '微助力删除', 'weixinhelp/delete', 566, 100, 0),
(605, '优惠券查看', 'weixincoupon/detail', 566, 50, 0),
(606, '优惠券删除', 'weixincoupon/delete', 566, 100, 0),
(607, '红包查看', 'weixinpacket/detail', 566, 50, 0),
(608, '红包删除', 'weixinpacket/delete', 566, 100, 0),
(627, '设为系统功能', 'pcfunction/system', 618, 100, 0),
(628, '取消系统功能', 'pcfunction/cancel', 618, 100, 0),
(629, '微信绑定管理 ', 'user/weixin', 33, 100, 1),
(630, '删除微信绑定', 'user/weixin_delete', 33, 100, 0),
(631, '团购过期设置', 'setting/tuantime', 49, 100, 1),
(632, '回收站', NULL, 4, 100, 1),
(633, '会员列表', 'user/rindex', 632, 100, 1),
(634, '酒店管理', NULL, 3, 7, 1),
(635, '酒店品牌', 'hotelbrand/index', 634, 1, 1),
(636, '添加品牌', 'hotelbrand/create', 634, 100, 0),
(637, '编辑品牌', 'hotelbrand/edit', 634, 100, 0),
(638, '删除品牌', 'hotelbrand/delete', 634, 100, 0),
(639, '酒店列表', 'hotel/index', 634, 2, 1),
(640, '待审核酒店', 'hotel/noaudit', 634, 3, 1),
(641, '编辑酒店', 'hotel/edit', 634, 100, 0),
(642, '删除酒店', 'hotel/delete', 634, 100, 0),
(643, '审核酒店', 'hotel/audit', 634, 100, 0),
(648, '众筹删除', 'crowd/delete', 231, 100, 0),
(647, '众筹管理', 'crowd/index', 231, 100, 1),
(649, '众筹购买列表', 'crowd/lists', 231, 100, 0),
(650, '众筹审核', 'crowd/audit', 231, 100, 0),
(651, '订座管理', NULL, 3, 10, 1),
(652, '订座列表', 'ding/index', 651, 1, 1),
(653, '待审核列表', 'ding/noaudit', 651, 3, 1),
(654, '审核商家', 'ding/audit', 651, 100, 0),
(655, '添加订座商家', 'ding/create', 651, 100, 0),
(656, '编辑订座商家', 'ding/edit', 651, 100, 0),
(657, '删除商家', 'ding/delete', 651, 100, 0),
(658, '订单管理', 'ding/order', 651, 2, 1),
(659, '农家乐管理', NULL, 3, 100, 1),
(660, '农家乐列表', 'farm/index', 659, 100, 1),
(661, '待审核列表', 'farm/noaudit', 659, 100, 1),
(662, '部落', NULL, 335, 10, 1),
(663, '部落分类', 'tribecate/index', 662, 1, 1),
(664, '添加分类', 'tribecate/create', 662, 100, 0),
(665, '编辑分类', 'tribecate/edit', 662, 100, 0),
(666, '删除分类', 'tribecate/delete', 662, 100, 0),
(667, '部落列表', 'tribe/index', 662, 2, 1),
(668, '添加部落', 'tribe/create', 662, 100, 0),
(669, '编辑部落', 'tribe/edit', 662, 100, 0),
(670, '删除部落', 'tribe/delete', 662, 100, 0),
(671, '部落帖子', 'tribepost/index', 662, 3, 1),
(672, '审核帖子', 'tribepost/audit', 662, 100, 0),
(673, '删除帖子', 'tribepost/delete', 662, 100, 0),
(674, '编辑帖子', 'tribepost/edit', 662, 100, 0),
(675, '发帖', 'tribepost/create', 662, 100, 0),
(676, '订单完成', 'ding/complete', 651, 100, 0),
(677, '订单取消', 'ding/cancel', 651, 100, 0),
(678, '订单删除', 'ding/orderdelete', 651, 100, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bao_msg`
--

CREATE TABLE IF NOT EXISTS `bao_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` enum('gift','coupon','movie','message') DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_msg_read`
--

CREATE TABLE IF NOT EXISTS `bao_msg_read` (
  `read_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`read_id`),
  UNIQUE KEY `msg_id` (`msg_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_order`
--

CREATE TABLE IF NOT EXISTS `bao_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addr_id` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT '0',
  `use_integral` int(11) DEFAULT '0',
  `can_use_integral` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0.0.0.0',
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `is_daofu` tinyint(1) DEFAULT '0',
  `is_shop` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_order_goods`
--

CREATE TABLE IF NOT EXISTS `bao_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `mobile_fan` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT NULL,
  `js_price` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `is_daofu` tinyint(1) DEFAULT '0',
  `tui_uid` int(11) DEFAULT '0',
  `format_id` varchar(255) DEFAULT '',
  `vid` int(10) DEFAULT '0',
  `spec_name` varchar(100) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `title` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_order_pick`
--

CREATE TABLE IF NOT EXISTS `bao_order_pick` (
  `pick_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `order_ids` text,
  PRIMARY KEY (`pick_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_payment`
--

CREATE TABLE IF NOT EXISTS `bao_payment` (
  `payment_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `logo` varchar(32) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `mobile_logo` varchar(32) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `setting` text,
  `is_mobile_only` tinyint(1) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `bao_payment`
--

INSERT INTO `bao_payment` (`payment_id`, `name`, `logo`, `code`, `mobile_logo`, `contents`, `setting`, `is_mobile_only`, `is_open`) VALUES
(1, '支付宝', 'alipay.png', 'alipay', 'alipay_mobile.png', '支付宝（中国）网络技术有限公司是国内领先的第三方支付平台，致力于提供“简单、安全、快速”的支付解决方案。支付宝公司从2004年建立开始，始终以“信任”作为产品和服务的核心。作为中国主流的第三方支付平台，我们不仅从产品上确保用户在线支付的安全，同时致力于通过担保交易等创新让用户通过支付宝在网络间建立信任的关系，去帮助建设更纯净的互联网环境。', '', 0, 1),
(2, '财付通', 'tenpay.png', 'tenpay', 'tenpay_mobile.png', '财付通（https://www.tenpay.com/v2/）是腾讯集团旗下中国领先的第三方支付平台，一直致力于为互联网用户和企业提供安全、便捷、专业的在线支付服务。自2005年成立伊始，财付通就以“安全便捷”作为产品和服务的核心，不仅为个人用户创造200多种便民服务和应用场景，还为40多万大中型企业提供专业的资金结算解决方案。', 'a:2:{s:14:"tenpay_account";s:4:"1111";s:10:"tenpay_key";s:3:"111";}', 0, 1),
(3, '微信支付', 'weixin.png', 'weixin', 'weixin_mobile.png', '微信支付是由腾讯公司知名移动社交通讯软件微信及第三方支付平台财付通联合推出的移动支付创新产品，旨在为广大微信用户及商户提供更优质的支付服务，微信的支付和安全系统由腾讯财付通提供支持。财付通是持有互联网支付牌照并具备完备的安全体系的第三方支付平台。', 'a:4:{s:5:"appid";s:18:"";s:9:"appsecret";s:0:"";s:5:"mchid";s:10:"1234311202";s:6:"appkey";s:32:"";}', 1, 1),
(4, '余额支付', 'money.png', 'money', 'money_mobile.png', '余额支付是最方便快捷的', '{s:5:"appid";s:0:"";s:10:"paysignkey";s:0:"";s:9:"appsecret";s:0:"";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}', 0, 1),
(5, '银联支付', 'chinapay.png', 'chinapay', 'chinapay_mobile.png', '银联在线支付是中国银联推出的网上支付平台，支持多家发卡银行，涵盖借记卡和信用卡等，包含认证支付、快捷支付和网银支付多种方式，其中认证和快捷支付无需开通网银，仅需一张银行卡，即可享受安全、快捷的网上支付服务！www.chinapay.com', 'a:3:{s:16:"chinapay_merabbr";s:0:"";s:16:"chinapay_account";s:0:"";s:12:"chinapay_key";s:0:"";}', 0, 1),
(6, '网银在线', 'chinabank.png', 'chinabank', 'chinabank_mobile.png', '网银在线（www.chinabank.com.cn）与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。', 'a:2:{s:17:"chinabank_account";s:0:"";s:13:"chinabank_key";s:0:"";}', 0, 1),
(7, 'paypal', 'paypal.png', 'paypal', 'paypal_mobile.png', 'PayPal（www.paypal.com） 是在线付款解决方案的全球领导者，在全世界有超过七千一百六十万个帐户用户。PayPal 可在 56 个市场以 7 种货币（加元、欧元、英镑、美元、日元、澳元、港元）使用。', 'a:4:{s:18:"paypal_ec_username";s:80:"AV0qxvfeZbpF7Alqv1Z0o-SsoLPWuuEw9afV_pFFIqeq4yFZWDVWb310FmiyCFsDGcXjbEiyXciMpB_5";s:18:"paypal_ec_password";s:80:"EM6ceM5x8r_W-7LXHrudQCVqp1yd52-huzMYOBSP5wHOJDKWb1DR_HqQNw1pcTonIyDtnTA199Azu5HV";s:19:"paypal_ec_signature";s:0:"";s:18:"paypal_ec_currency";s:3:"USD";}', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bao_payment_logs`
--

CREATE TABLE IF NOT EXISTS `bao_payment_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` enum('tuan','gold','money','ele','ding','fzmoney','breaks','hotel','farm','goods') DEFAULT 'tuan',
  `order_id` int(11) DEFAULT '0',
  `order_ids` text,
  `code` varchar(32) DEFAULT NULL,
  `need_pay` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `pay_ip` varchar(15) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_pc_function`
--

CREATE TABLE IF NOT EXISTS `bao_pc_function` (
  `function_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT '',
  `url` varchar(64) DEFAULT '',
  `is_show` tinyint(1) DEFAULT '0',
  `is_nav` tinyint(1) DEFAULT '0',
  `is_system` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '50',
  PRIMARY KEY (`function_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `bao_pc_function`
--

INSERT INTO `bao_pc_function` (`function_id`, `title`, `url`, `is_show`, `is_nav`, `is_system`, `is_new`, `orderby`) VALUES
(1, '首页', 'pchome/index/index', 1, 1, 1, 0, 1),
(2, '商家', 'pchome/shop/index', 1, 1, 1, 0, 2),
(3, '抢购', 'pchome/tuan/index', 1, 1, 1, 0, 3),
(4, '活动', 'pchome/huodong/index', 1, 0, 1, 0, 4),
(5, '上门服务', 'pchome/lifeservice/index', 1, 1, 1, 0, 5),
(6, '本地商城', 'pchome/mall/index', 1, 1, 1, 0, 6),
(7, '外卖', 'pchome/ele/index', 1, 1, 1, 0, 7),
(8, '订座', 'pchome/ding/index', 1, 1, 1, 1, 8),
(9, '同城信息', 'pchome/life/main', 1, 0, 1, 0, 9),
(10, '优惠券', 'pchome/coupon/index', 1, 0, 1, 0, 10),
(11, '积分商城', 'pchome/jifen/index', 1, 0, 1, 0, 11),
(12, '贴吧', 'pchome/post/index', 1, 0, 1, 0, 12),
(13, '商家榜单', 'pchome/billboard/index', 1, 0, 1, 0, 13),
(14, '商家新闻', 'pchome/news/index', 1, 0, 1, 0, 14),
(16, '文章资讯', 'pchome/sarticle/index', 1, 0, 1, 0, 16),
(17, '酒店', 'pchome/hotel/index', 1, 1, 1, 1, 4),
(18, '农家乐', 'pchome/farm/index', 1, 1, 1, 1, 9),
(19, '更多&gt;&gt;', 'pchome/more/index', 1, 1, 1, 0, 17),
(20, '部落', 'pchome/tribe/index', 1, 0, 1, 0, 12),
(21, '一元云购', 'pchome/cloud/index', 1, 0, 1, 0, 11);

-- --------------------------------------------------------

--
-- 表的结构 `bao_post`
--

CREATE TABLE IF NOT EXISTS `bao_post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `cate_id` smallint(6) DEFAULT '0',
  `details` text,
  `views` int(11) DEFAULT '0',
  `reply_num` int(11) DEFAULT '0',
  `zan_num` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `last_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `is_fine` tinyint(1) DEFAULT '0',
  `city_id` int(11) DEFAULT '0',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_post_pics`
--

CREATE TABLE IF NOT EXISTS `bao_post_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) DEFAULT '0',
  `pic` varchar(128) DEFAULT '',
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_post_reply`
--

CREATE TABLE IF NOT EXISTS `bao_post_reply` (
  `reply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contents` text,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`reply_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_post_zan`
--

CREATE TABLE IF NOT EXISTS `bao_post_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`zan_id`),
  UNIQUE KEY `post_id` (`post_id`,`create_ip`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_push_history`
--

CREATE TABLE IF NOT EXISTS `bao_push_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sendtype` int(1) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned DEFAULT '0',
  `contents` varchar(1024) NOT NULL,
  `type` enum('android','ios','all') NOT NULL DEFAULT 'android',
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_qrcode_census`
--

CREATE TABLE IF NOT EXISTS `bao_qrcode_census` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `year` smallint(5) DEFAULT '0',
  `month` tinyint(2) DEFAULT '0',
  `day` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_quanming`
--

CREATE TABLE IF NOT EXISTS `bao_quanming` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `buy_uid` int(11) DEFAULT '0',
  `rank` tinyint(4) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `commission` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_recharge_card`
--

CREATE TABLE IF NOT EXISTS `bao_recharge_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '0',
  `card_key` char(32) DEFAULT '0',
  `value` int(10) DEFAULT '0',
  `end_date` date DEFAULT '0000-00-00',
  `is_used` tinyint(3) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `used_time` int(11) DEFAULT '0',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_role`
--

CREATE TABLE IF NOT EXISTS `bao_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bao_role`
--

INSERT INTO `bao_role` (`role_id`, `role_name`) VALUES
(1, '系统管理员'),
(2, '管理员'),
(3, '分站管理员');

-- --------------------------------------------------------

--
-- 表的结构 `bao_role_maps`
--

CREATE TABLE IF NOT EXISTS `bao_role_maps` (
  `role_id` smallint(5) DEFAULT NULL,
  `menu_id` smallint(5) DEFAULT NULL,
  UNIQUE KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bao_role_maps`
--

INSERT INTO `bao_role_maps` (`role_id`, `menu_id`) VALUES
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 40),
(2, 41),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 80),
(2, 81),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 90),
(2, 91),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 129),
(2, 130),
(2, 135),
(2, 136),
(2, 137),
(2, 138),
(2, 139),
(2, 140),
(2, 142),
(2, 143),
(2, 144),
(2, 145),
(2, 146),
(2, 157),
(2, 159),
(2, 160),
(2, 161),
(2, 162),
(2, 163),
(2, 164),
(2, 165),
(2, 166),
(2, 167),
(2, 168),
(2, 169),
(2, 170),
(2, 171),
(2, 172),
(2, 173),
(2, 174),
(2, 175),
(2, 176),
(2, 177),
(2, 178),
(2, 179),
(2, 180),
(2, 181),
(2, 182),
(2, 183),
(2, 184),
(2, 185),
(2, 186),
(2, 187),
(2, 188),
(2, 189),
(2, 193),
(2, 194),
(2, 195),
(2, 196),
(2, 197),
(2, 198),
(2, 199),
(2, 200),
(2, 201),
(2, 203),
(2, 206),
(2, 209),
(2, 210),
(2, 211),
(2, 212),
(2, 213),
(2, 214),
(2, 219),
(2, 220),
(2, 221),
(2, 222),
(2, 223),
(2, 224),
(2, 225),
(2, 226),
(2, 227),
(2, 235),
(2, 236),
(2, 237),
(2, 238),
(2, 239),
(2, 240),
(2, 241),
(2, 242),
(2, 243),
(2, 245),
(2, 246),
(2, 247),
(2, 248),
(2, 249),
(2, 255),
(2, 256),
(2, 257),
(2, 258),
(2, 259),
(2, 261),
(2, 262),
(2, 263),
(2, 264),
(2, 265),
(2, 266),
(2, 267),
(2, 268),
(2, 269),
(2, 270),
(2, 271),
(2, 274),
(2, 275),
(2, 277),
(2, 278),
(2, 279),
(2, 280),
(2, 281),
(2, 283),
(2, 289),
(2, 290),
(2, 292),
(2, 296),
(2, 297),
(2, 298),
(2, 299),
(2, 305),
(2, 306),
(2, 307),
(2, 308),
(2, 309),
(2, 310),
(2, 311),
(2, 312),
(2, 313),
(2, 315),
(2, 316),
(2, 317),
(2, 318),
(2, 319),
(2, 320),
(2, 321),
(2, 322),
(2, 324),
(2, 325),
(2, 326),
(2, 327),
(2, 328),
(2, 329),
(2, 330),
(2, 331),
(2, 332),
(2, 333),
(2, 334),
(2, 336),
(2, 337),
(2, 339),
(2, 340),
(2, 341),
(2, 342),
(2, 343),
(2, 345),
(2, 346),
(2, 347),
(2, 348),
(2, 349),
(2, 350),
(2, 351),
(2, 352),
(2, 353),
(2, 354),
(2, 355),
(2, 356),
(2, 357),
(2, 359),
(2, 360),
(2, 361),
(2, 362),
(2, 365),
(2, 366),
(2, 367),
(2, 368),
(2, 375),
(2, 387),
(2, 388),
(2, 389),
(2, 390),
(2, 391),
(2, 392),
(2, 395),
(2, 396),
(2, 397),
(2, 398),
(2, 399),
(2, 400),
(2, 401),
(2, 402),
(2, 403),
(2, 404),
(2, 405),
(2, 406),
(2, 407),
(2, 410),
(2, 411),
(2, 412),
(2, 413),
(2, 414),
(2, 418),
(2, 419),
(2, 421),
(2, 422),
(2, 423),
(2, 424),
(2, 425),
(2, 430),
(2, 431),
(2, 432),
(2, 433),
(2, 434),
(2, 435),
(2, 436),
(2, 437),
(2, 438),
(2, 439),
(2, 441),
(2, 442),
(2, 443),
(2, 444),
(2, 446),
(2, 447),
(2, 448),
(2, 449),
(2, 450),
(2, 451),
(2, 452),
(2, 453),
(2, 454),
(2, 455),
(2, 456),
(2, 458),
(2, 459),
(2, 460),
(2, 461),
(2, 464),
(2, 465),
(2, 466),
(2, 467),
(2, 468),
(2, 469),
(2, 470),
(2, 471),
(2, 472),
(2, 473),
(2, 475),
(2, 476),
(2, 478),
(2, 482),
(2, 484),
(2, 485),
(2, 486),
(2, 489),
(2, 490),
(2, 491),
(2, 492),
(2, 493),
(2, 495),
(2, 496),
(2, 497),
(2, 499),
(2, 500),
(2, 501),
(2, 502),
(2, 503),
(2, 510),
(2, 515),
(2, 516),
(2, 517),
(2, 518),
(2, 519),
(2, 520),
(2, 521),
(2, 522),
(2, 524),
(2, 525),
(2, 526),
(2, 527),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 40),
(3, 41),
(3, 51),
(3, 52),
(3, 53),
(3, 54),
(3, 55),
(3, 56),
(3, 57),
(3, 58),
(3, 85),
(3, 86),
(3, 87),
(3, 88),
(3, 90),
(3, 91),
(3, 95),
(3, 96),
(3, 97),
(3, 98),
(3, 99),
(3, 100),
(3, 101),
(3, 102),
(3, 103),
(3, 104),
(3, 105),
(3, 110),
(3, 111),
(3, 112),
(3, 113),
(3, 119),
(3, 120),
(3, 121),
(3, 122),
(3, 123),
(3, 125),
(3, 126),
(3, 127),
(3, 128),
(3, 129),
(3, 130),
(3, 135),
(3, 136),
(3, 137),
(3, 138),
(3, 139),
(3, 140),
(3, 142),
(3, 143),
(3, 144),
(3, 145),
(3, 146),
(3, 177),
(3, 178),
(3, 179),
(3, 180),
(3, 181),
(3, 182),
(3, 183),
(3, 184),
(3, 185),
(3, 186),
(3, 187),
(3, 188),
(3, 189),
(3, 193),
(3, 194),
(3, 195),
(3, 196),
(3, 209),
(3, 210),
(3, 211),
(3, 212),
(3, 213),
(3, 214),
(3, 223),
(3, 224),
(3, 225),
(3, 226),
(3, 227),
(3, 235),
(3, 236),
(3, 237),
(3, 238),
(3, 239),
(3, 245),
(3, 246),
(3, 247),
(3, 248),
(3, 249),
(3, 261),
(3, 262),
(3, 263),
(3, 264),
(3, 270),
(3, 277),
(3, 278),
(3, 279),
(3, 281),
(3, 292),
(3, 296),
(3, 297),
(3, 298),
(3, 299),
(3, 305),
(3, 306),
(3, 307),
(3, 308),
(3, 309),
(3, 311),
(3, 312),
(3, 313),
(3, 315),
(3, 316),
(3, 317),
(3, 318),
(3, 319),
(3, 320),
(3, 321),
(3, 322),
(3, 324),
(3, 325),
(3, 326),
(3, 327),
(3, 328),
(3, 350),
(3, 352),
(3, 353),
(3, 354),
(3, 355),
(3, 356),
(3, 359),
(3, 360),
(3, 361),
(3, 362),
(3, 392),
(3, 395),
(3, 396),
(3, 397),
(3, 398),
(3, 399),
(3, 400),
(3, 401),
(3, 402),
(3, 403),
(3, 404),
(3, 405),
(3, 406),
(3, 407),
(3, 414),
(3, 419),
(3, 421),
(3, 422),
(3, 423),
(3, 424),
(3, 425),
(3, 430),
(3, 431),
(3, 432),
(3, 433),
(3, 434),
(3, 438),
(3, 439),
(3, 441),
(3, 446),
(3, 447),
(3, 448),
(3, 449),
(3, 450),
(3, 451),
(3, 452),
(3, 453),
(3, 454),
(3, 455),
(3, 456),
(3, 458),
(3, 459),
(3, 460),
(3, 461),
(3, 464),
(3, 465),
(3, 466),
(3, 467),
(3, 478),
(3, 482),
(3, 495),
(3, 496),
(3, 497),
(3, 499),
(3, 500),
(3, 501),
(3, 502),
(3, 510),
(3, 520),
(3, 521),
(3, 522),
(3, 524),
(3, 525),
(3, 526),
(3, 537),
(3, 538),
(3, 539),
(3, 540),
(3, 542),
(3, 543),
(3, 544),
(3, 545),
(3, 553),
(3, 554),
(3, 555),
(3, 556),
(3, 559),
(3, 561),
(3, 562),
(3, 563),
(3, 564),
(3, 567),
(3, 569),
(3, 571),
(3, 572),
(3, 573),
(3, 574),
(3, 575),
(3, 576),
(3, 577),
(3, 578),
(3, 579),
(3, 580),
(3, 581),
(3, 582),
(3, 583),
(3, 584),
(3, 585),
(3, 586),
(3, 587),
(3, 588),
(3, 591),
(3, 592),
(3, 593),
(3, 594);

-- --------------------------------------------------------

--
-- 表的结构 `bao_sensitive_words`
--

CREATE TABLE IF NOT EXISTS `bao_sensitive_words` (
  `words_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `words` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`words_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_seo`
--

CREATE TABLE IF NOT EXISTS `bao_seo` (
  `seo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seo_key` varchar(32) DEFAULT NULL,
  `seo_explain` varchar(1024) DEFAULT NULL,
  `seo_title` varchar(1024) DEFAULT NULL,
  `seo_keywords` varchar(1024) DEFAULT NULL,
  `seo_desc` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`seo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `bao_seo`
--

INSERT INTO `bao_seo` (`seo_id`, `seo_key`, `seo_explain`, `seo_title`, `seo_keywords`, `seo_desc`) VALUES
(1, 'index_index', '首页SEO配置\r\n\r\n暂时没有其他可以用的标签!', '{sitename}是最好的PHP微信O2O本地宝门户系统！咨询电话{tel}', 'PHP本地生活门户系统，PHP本地电商门户系统,O2O电商门户系统', 'PHP本地生活门户系统，PHP本地电商门户系统,O2O电商门户系统'),
(2, 'article_index', '文章列表\r\n可使用的标签有：\r\n1、{cate_name}', '{sitename}{cate_name}文章频道聚集了合肥最好的生活内容！让您的生活更精彩', '{sitename}{cate_name}文章频道聚集了合肥最好的生活内容！让您的生活更精彩', '{sitename}{cate_name}文章频道聚集了合肥最好的生活内容！让您的生活更精彩'),
(3, 'article_detail', '文章详情\r\n1、{title}标题\r\n2、{keywords}关键字\r\n3、{desc}描述\r\n4、{cate_name}分类', '{title}-{sitename}', '{keywords}', '{desc}'),
(4, 'article_system', '系统文章\r\n1、{title}标题', '{title}-{sitename}', '{title}-{sitename}', '{title}-{sitename}'),
(5, 'coupon_index', '优惠券列表\r\n1、{area_name}地区\r\n2、{cate_name}', '{area_name}{cate_name}商户哪家好？{sitename}', '{area_name}{cate_name}商户哪家好？{sitename}', '{area_name}{cate_name}商户哪家好？{sitename}'),
(6, 'coupon_detail', '优惠券详情\r\n1、{shop_name}商家名称\r\n2、{title}优惠券标题\r\n', '商户{shop_name}的优惠券“{title}”', '商户{shop_name}的优惠券“{title}”', '商户{shop_name}的优惠券“{title}”'),
(7, 'tuan_detail', '生活团购详情\r\n1、{shop_name}商家名称\r\n2、{title}优惠券标题', '商户{shop_name}的商品“{title}”', '商户{shop_name}的商品“{title}”', '商户{shop_name}的商品“{title}”'),
(8, 'tuan_index', '团购列表\r\n1、{area_name}地区\r\n2、{cate_name}\r\n3、{business_name}', '合肥{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！', '合肥{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！', '合肥{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！'),
(9, 'news_index', '新闻列表\r\n1、{cate_name} 分类', '{cate_name}商家新闻列表-{sitename}', '{cate_name}商家新闻列表-{sitename}', '{cate_name}商家新闻列表-{sitename}'),
(10, 'news_detail', '新闻详情\r\n1、{title}标题', '{title}', '{title}', '{title}'),
(11, 'share_index', '消费分享\r\n1、{cate_name}分类', '{cate_name}消费分享-{sitename}', '{cate_name}消费分享-{sitename}', '{cate_name}消费分享-{sitename}'),
(12, 'share_detail', '消费分享详情\r\n1、{title}标题', '{title}', '{title}', '{title}'),
(13, 'shop_index', '商家列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{area_name}{cate_name}{business_name}商家列表', '{area_name}{cate_name}{business_name}商家列表', '{area_name}{cate_name}{business_name}商家列表'),
(14, 'shop_detail', '商家详情\r\n1、{shop_name}\r\n2、{shop_tel}', '{shop_name}{shop_tel}', '{shop_name}{shop_tel}', '{shop_name}{shop_tel}'),
(15, 'app_index', 'APP页面', 'PHP微信O2O生活宝门户系统手机客户端下载', 'PHP微信O2O生活宝门户系统手机客户端下载', 'PHP微信O2O生活宝门户系统手机客户端下载'),
(16, 'recommend_index', '暂无可用标签', '打造合肥全城最实惠的消费方式！消费享受折扣就上{sitename}', '打造合肥全城最实惠的消费方式！消费享受折扣就上{sitename}', '打造合肥全城最实惠的消费方式！消费享受折扣就上{sitename}'),
(17, 'blog_index', '用户博客\r\n1、{nickname}用户昵称', '{nickname}的博客', '{nickname}的博客', '{nickname}的博客'),
(18, 'huodong_index', '活动类型：1、{cate_name} 2、{area_name}', '合肥{area_name}最全的{cate_name}活动', '合肥{area_name}最全的{cate_name}活动', '合肥{area_name}最全的{cate_name}活动'),
(19, 'huodong_detail', '活动详情\r\n1、{title}标题\r\n2、{shop_name}商家名称', '{title}-{shop_name}', '{title}-{shop_name}', '{title}-{shop_name}'),
(20, 'ele_ding', '订座列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{area_name}{cate_name}{business_name}订座列表', '{area_name}{cate_name}{business_name}订座列表', '{area_name}{cate_name}{business_name}订座列表'),
(21, 'mall_main', '购物列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{area_name}{cate_name}{business_name}购物列表', '{area_name}{cate_name}{business_name}购物列表', '{area_name}{cate_name}{business_name}购物列表'),
(22, 'mall_detail', '购物详情\r\n1、{shop_name}商家名称\r\n2、{title}商品标题', '商户{shop_name}的商品“{title}”', '商户{shop_name}的商品“{title}”', '商户{shop_name}的商品“{title}”'),
(23, 'vip_index', 'VIP列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{area_name}{cate_name}{business_name}会员卡列表', '{area_name}{cate_name}{business_name}会员卡列表', '{area_name}{cate_name}{business_name}会员卡列表'),
(24, 'mall_index', '购物首页{cate_name}', '{cate_name}购物首页', '{cate_name}购物首页', '{cate_name}购物首页'),
(25, 'jifen_index', '积分兑换列表', '积分兑换列表', '积分兑换列表', '积分兑换列表'),
(26, 'jifen_detail', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情'),
(27, 'ele_detail', '订餐详情\r\n1、{shop_name}商家名称\r\n2、{shop_tel}订餐电话', '商户{shop_name}的订餐电话“{shop_tel}”', '商户{shop_name}的订餐电话“{shop_tel}”', '商户{shop_name}的订餐电话“{shop_tel}”'),
(28, 'ele_shop', '订餐详情', '订餐详情', '订餐详情', '订餐详情'),
(29, 'ele_index', '餐饮美食首页', '餐饮美食首页', '餐饮美食首页', '餐饮美食首页'),
(30, 'life_index', '生活信息首页', '生活信息首页', '生活信息首页', '生活信息首页'),
(31, 'life_detail', '生活信息详情\r\n1、{title}', '{title}', '{title}', '{title}'),
(32, 'life_main', '生活信息主页{area_name}{business_name}', '生活信息主页{area_name}{business_name}', '生活信息主页{area_name}{business_name}', '生活信息主页{area_name}{business_name}'),
(33, 'life_fabu', '发布生活信息', '发布生活信息', '发布生活信息', '发布生活信息'),
(34, 'shop_apply', '商家入驻申请', '商家入驻申请', '商家入驻申请', '商家入驻申请'),
(36, 'ele_main', '餐饮美食主页', '餐饮美食主页', '餐饮美食主页', '餐饮美食主页'),
(37, 'ele_takeout', '外卖点餐', '外卖点餐', '外卖点餐', '外卖点餐'),
(38, 'ele_pay', '订单支付页面', '订单支付页面', '订单支付页面', '订单支付页面'),
(39, 'tuan_main', '团购主页', '团购主页', '团购主页', '团购主页'),
(40, 'mall_shop', '商家店铺页面的SEO\r\n1、{shop_name}商家店铺', '{shop_name}的店铺', '{shop_name}的店铺', '{shop_name}的店铺'),
(41, 'billboard_index', '{sitename}榜单首页', '{sitename}榜单首页', '{sitename}榜单首页', '{sitename}榜单首页'),
(42, 'billboard_bdlist', '1、{cate_name} 榜单内容', '{cate_name} 榜单内容', '{cate_name} 榜单内容', '{cate_name} 榜单内容'),
(43, 'billborder_bddetails', '榜单详情 1、{title}', '{title}', '{title}', '{title}'),
(44, 'jifen_main', '积分主页：1、{sitename}一卡通全城', '{sitename}一卡通全城', '{sitename}一卡通全城', '{sitename}一卡通全城'),
(45, 'jifen_shop', '商家联盟：1、{shop_name}', '联盟商家{shop_name}的详情', '联盟商家{shop_name}的详情', '联盟商家{shop_name}的详情');

-- --------------------------------------------------------

--
-- 表的结构 `bao_service`
--

CREATE TABLE IF NOT EXISTS `bao_service` (
  `service_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  `intro` text,
  `orderby` tinyint(3) DEFAULT '100',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_session`
--

CREATE TABLE IF NOT EXISTS `bao_session` (
  `session_id` char(32) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `bao_session`
--

INSERT INTO `bao_session` (`session_id`, `session_expire`, `session_data`) VALUES
('tdkcb1plnhua940rt7dm6e8c55', 1468569894, 0x76657269667925374373253341342533412532325247554425323225334261646d696e253743612533413132253341253742732533413825334125323261646d696e5f69642532322533427325334131253341253232312532322533427325334138253341253232757365726e616d65253232253342732533413525334125323261646d696e253232253342732533413825334125323270617373776f726425323225334273253341333225334125323265313061646333393439626135396162626535366530353766323066383833652532322533427325334137253341253232726f6c655f69642532322533427325334131253341253232312532322533427325334137253341253232636974795f69642532322533424e25334273253341362533412532326d6f62696c6525323225334273253341313125334125323231353030303030303030302532322533427325334131312533412532326372656174655f74696d652532322533427325334131302533412532323134363835363538353225323225334273253341392533412532326372656174655f697025323225334273253341332533412532322533412533413125323225334273253341392533412532326c6173745f74696d65253232253342692533413134363835363633363825334273253341372533412532326c6173745f69702532322533427325334137253341253232302e302e302e302532322533427325334136253341253232636c6f7365642532322533427325334131253341253232302532322533427325334139253341253232726f6c655f6e616d65253232253342732533413135253341253232254537254233254242254537254242253946254537254145254131254537253930253836254535253931253938253232253342253744);

-- --------------------------------------------------------

--
-- 表的结构 `bao_setting`
--

CREATE TABLE IF NOT EXISTS `bao_setting` (
  `k` varchar(255) DEFAULT NULL,
  `v` text,
  UNIQUE KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bao_setting`
--

INSERT INTO `bao_setting` (`k`, `v`) VALUES
('site', 'a:23:{s:8:"sitename";s:15:"生活宝网络";s:4:"host";s:20:"http://www.baocms.cn";s:6:"imgurl";s:20:"http://www.baocms.cn";s:7:"android";s:31:"http://www.baocms.cn/BaoApp.apk";s:3:"ios";s:39:"javascript:alert(''苹果正在审核'');";s:4:"logo";s:28:"2016/01/21/56a03dbcda4da.png";s:6:"wxcode";s:28:"2016/01/25/56a5bdd0d8af0.jpg";s:2:"qq";s:10:"1442211698";s:3:"tel";s:13:"0551-63641901";s:5:"email";s:13:"0551-63641901";s:7:"ucenter";s:1:"0";s:9:"postaudit";s:1:"0";s:3:"icp";s:20:"皖ICP备09014003号";s:5:"title";s:33:"php微信O2O生活宝门户系统";s:7:"keyword";s:33:"php微信O2O生活宝门户系统";s:8:"headinfo";s:0:"";s:11:"description";s:33:"php微信O2O生活宝门户系统";s:6:"tongji";s:0:"";s:7:"city_id";s:1:"1";s:3:"lng";s:10:"117.292041";s:3:"lat";s:8:"31.86731";s:5:"goods";s:2:"15";s:3:"ele";s:1:"3";}'),
('attachs', 'a:36:{s:5:"water";s:28:"2014/09/16/541827480b2f1.png";s:8:"shoplogo";a:1:{s:5:"thumb";s:7:"150X150";}s:10:"marketlogo";a:1:{s:5:"thumb";s:7:"150X150";}s:6:"market";a:1:{s:5:"thumb";s:7:"480X240";}s:9:"marketpic";a:1:{s:5:"thumb";s:7:"600X400";}s:8:"sitelogo";a:1:{s:5:"thumb";s:6:"180X55";}s:8:"shopnews";a:1:{s:5:"thumb";s:7:"260X260";}s:11:"lifeservice";a:2:{s:5:"thumb";s:7:"240X170";s:4:"icon";s:6:"120X80";}s:8:"activity";a:1:{s:5:"thumb";s:7:"640X480";}s:6:"coupon";a:1:{s:5:"thumb";s:7:"577X430";}s:5:"cloud";a:1:{s:5:"thumb";s:7:"410X380";}s:7:"huodong";a:1:{s:5:"thumb";s:7:"320X240";}s:9:"billboard";a:1:{s:5:"thumb";s:7:"640X480";}s:8:"billcate";a:1:{s:5:"thumb";s:5:"60X60";}s:7:"article";a:1:{s:5:"thumb";s:7:"260X260";}s:13:"integralgoods";a:1:{s:5:"thumb";s:7:"350X350";}s:4:"dian";a:1:{s:5:"thumb";s:7:"340X270";}s:8:"dingroom";a:1:{s:5:"thumb";s:7:"340X270";}s:12:"shopdianping";a:1:{s:5:"thumb";s:7:"380X260";}s:5:"found";a:1:{s:5:"thumb";s:7:"640X300";}s:4:"user";a:1:{s:5:"thumb";a:3:{s:5:"thumb";s:7:"200X200";s:6:"middle";s:7:"120X120";s:5:"small";s:5:"60X60";}}s:9:"shopphoto";a:1:{s:5:"thumb";s:7:"300X300";}s:9:"recommend";a:1:{s:5:"thumb";s:7:"180X180";}s:4:"tuan";a:1:{s:5:"thumb";s:7:"545X305";}s:4:"life";a:1:{s:5:"thumb";s:7:"320X320";}s:7:"lifepic";a:1:{s:5:"thumb";s:7:"600X400";}s:7:"votepic";a:1:{s:5:"thumb";s:7:"150X150";}s:6:"weixin";a:1:{s:5:"thumb";s:7:"320X120";}s:10:"votebanner";a:1:{s:5:"thumb";s:7:"640X300";}s:5:"goods";a:1:{s:5:"thumb";s:7:"450X280";}s:10:"shopbanner";a:1:{s:5:"thumb";s:7:"320X120";}s:11:"shopbanner1";a:1:{s:5:"thumb";s:8:"1000X300";}s:10:"eleproduct";a:1:{s:5:"thumb";s:7:"300X300";}s:8:"dingmenu";a:1:{s:5:"thumb";s:7:"600X450";}s:4:"mall";a:1:{s:5:"thumb";s:7:"300X140";}s:6:"editor";a:2:{s:5:"thumb";s:7:"600X600";s:5:"water";s:1:"1";}}'),
('ucenter', 'a:15:{s:7:"charset";s:1:"0";s:10:"UC_CONNECT";s:5:"mysql";s:9:"UC_DBHOST";s:9:"localhost";s:9:"UC_DBUSER";s:4:"root";s:7:"UC_DBPW";s:6:"123456";s:9:"UC_DBNAME";s:6:"ultrax";s:12:"UC_DBCHARSET";s:4:"utf8";s:13:"UC_DBTABLEPRE";s:19:"ultrax.pre_ucenter_";s:12:"UC_DBCONNECT";s:1:"0";s:6:"UC_KEY";s:39:"9ee6F9YQ0bzQof9b9RTbUIORIvL2f8DQEmakk6Q";s:6:"UC_API";s:29:"http://www.test.com/uc_server";s:10:"UC_CHARSET";s:5:"utf-8";s:5:"UC_IP";s:0:"";s:8:"UC_APPID";s:1:"2";s:6:"UC_PPP";s:2:"20";}'),
('mail', 'a:5:{s:4:"smtp";s:11:"smtp.qq.com";s:4:"port";s:2:"25";s:8:"username";s:11:"18752080287";s:8:"password";s:11:"18752080287";s:4:"from";s:11:"18752080287";}'),
('integral', 'a:6:{s:5:"share";s:1:"5";s:5:"reply";s:1:"1";s:6:"mobile";s:3:"100";s:5:"email";s:3:"100";s:4:"sign";s:1:"5";s:9:"firstsign";s:2:"50";}'),
('prestige', 'a:7:{s:5:"login";s:1:"1";s:8:"dianping";s:1:"5";s:5:"share";s:1:"2";s:5:"reply";s:1:"1";s:4:"tuan";s:2:"10";s:6:"mobile";s:3:"100";s:5:"email";s:3:"100";}'),
('shop', 'a:5:{s:6:"weixin";s:2:"30";s:5:"yuyue";s:2:"30";s:4:"card";s:2:"30";s:3:"bao";s:2:"30";s:4:"life";a:2:{s:3:"top";s:1:"1";s:6:"urgent";s:1:"1";}}'),
('mobile', 'a:5:{s:8:"guaguale";s:1:"2";s:9:"choujiang";s:1:"1";s:8:"yaoyiyao";s:1:"3";s:3:"ios";s:39:"javascript:alert(''苹果正在审核'');";s:7:"android";s:31:"http://www.baocms.cn/BaoApp.apk";}'),
('ele', 'a:2:{s:4:"shop";a:13:{i:0;s:2:"42";i:1;s:2:"45";i:2;s:2:"47";i:3;s:2:"52";i:4;s:2:"51";i:5;s:1:"2";i:6;s:2:"43";i:7;s:2:"44";i:8;s:2:"48";i:9;s:2:"49";i:10;s:2:"50";i:11;s:2:"66";i:12;s:2:"54";}s:4:"tuan";a:30:{i:0;s:1:"4";i:1;s:1:"3";i:2;s:1:"5";i:3;s:1:"6";i:4;s:1:"7";i:5;s:1:"8";i:6;s:1:"9";i:7;s:2:"10";i:8;s:2:"11";i:9;s:2:"12";i:10;s:2:"13";i:11;s:2:"14";i:12;s:2:"16";i:13;s:2:"17";i:14;s:2:"18";i:15;s:2:"19";i:16;s:2:"20";i:17;s:2:"21";i:18;s:2:"22";i:19;s:2:"23";i:20;s:2:"24";i:21;s:2:"25";i:22;s:2:"26";i:23;s:2:"27";i:24;s:2:"28";i:25;s:2:"29";i:26;s:2:"30";i:27;s:2:"31";i:28;s:2:"32";i:29;s:2:"33";}}'),
('housework', 'a:2:{s:4:"gold";s:1:"1";s:3:"num";s:1:"3";}'),
('weidian', 'a:5:{s:10:"bianlidian";s:2:"16";s:11:"xianhuadian";s:2:"33";s:13:"shengxiandian";s:2:"44";s:9:"kaoyadian";s:1:"2";s:10:"dangaodian";s:2:"43";}'),
('mall', 'a:20:{s:5:"ming1";s:9:"烤鸭店";s:5:"dian1";s:1:"1";s:5:"ming2";s:9:"蛋糕店";s:5:"dian2";s:1:"2";s:5:"ming3";s:9:"鲜花店";s:5:"dian3";s:1:"3";s:5:"ming4";s:9:"水果店";s:5:"dian4";s:1:"4";s:5:"ming5";s:9:"便利店";s:5:"dian5";s:1:"5";s:5:"ming6";s:9:"坚果店";s:5:"dian6";s:1:"6";s:5:"ming7";s:9:"奶茶店";s:5:"dian7";s:1:"7";s:5:"ming8";s:9:"茶叶店";s:5:"dian8";s:1:"8";s:5:"ming9";s:0:"";s:5:"dian9";s:0:"";s:6:"ming10";s:0:"";s:6:"dian10";s:0:"";}'),
('quanming', 'a:21:{s:7:"content";s:159:"1、全民推广是网站营销的利器，会员拉会员能享受别人消费我拿佣金！\r\n2、只需要分享到QQ空间或者微信朋友圈就可以了";s:5:"intro";s:188:"1、分享出去每个会员可以获得子会员以级子会员的子会员等6级的消费佣金！\r\n2、分享连接后该用户访问连接注册的时候就回产生子会员关系！";s:7:"is_tuan";s:1:"1";s:7:"is_mall";s:1:"1";s:6:"is_ele";s:1:"1";s:8:"is_money";s:1:"1";s:5:"money";s:3:"0.1";s:9:"money_day";s:3:"120";s:6:"money1";s:1:"0";s:6:"money2";s:1:"0";s:6:"money3";s:1:"0";s:6:"money4";s:1:"5";s:6:"money5";s:1:"5";s:6:"money6";s:2:"10";s:4:"rate";s:2:"20";s:5:"rate1";s:2:"12";s:5:"rate2";s:2:"12";s:5:"rate3";s:2:"12";s:5:"rate4";s:2:"12";s:5:"rate5";s:2:"12";s:5:"rate6";s:2:"40";}');

-- --------------------------------------------------------

--
-- 表的结构 `bao_share_cate`
--

CREATE TABLE IF NOT EXISTS `bao_share_cate` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop`
--

CREATE TABLE IF NOT EXISTS `bao_shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  `type_id` char(20) DEFAULT '0',
  `business_id` smallint(5) DEFAULT NULL,
  `shop_name` varchar(64) DEFAULT NULL,
  `logo` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `extension` varchar(8) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT '0',
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `score` tinyint(3) DEFAULT '0',
  `score_num` int(11) DEFAULT '0',
  `fans_num` int(11) DEFAULT '0',
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0',
  `orderby` int(11) DEFAULT '100',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `ding_num` int(10) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `is_pei` tinyint(1) DEFAULT '0',
  `is_ding` tinyint(1) DEFAULT '0',
  `is_breaks` tinyint(1) DEFAULT '0',
  `is_ele` tinyint(1) DEFAULT '0',
  `is_tuan` tinyint(1) DEFAULT '0',
  `is_mart` tinyint(1) DEFAULT '0',
  `is_coupon` tinyint(1) DEFAULT '0',
  `tags` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `tui_uid` int(11) DEFAULT '0',
  `is_farm` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`shop_id`),
  KEY `cate_id` (`cate_id`,`area_id`,`business_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_banner`
--

CREATE TABLE IF NOT EXISTS `bao_shop_banner` (
  `banner_id` int(10) NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `is_mobile` tinyint(1) DEFAULT '1',
  `photo` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_branch`
--

CREATE TABLE IF NOT EXISTS `bao_shop_branch` (
  `branch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `score` tinyint(3) DEFAULT '0',
  `password` varchar(32) DEFAULT '',
  `shop_id` int(11) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `addr` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `telephone` varchar(11) NOT NULL DEFAULT '',
  `business_time` varchar(64) DEFAULT NULL,
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0',
  `score_num` int(10) unsigned NOT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_cate`
--

CREATE TABLE IF NOT EXISTS `bao_shop_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  `d1` varchar(32) DEFAULT '价格',
  `d2` varchar(32) DEFAULT '环境',
  `d3` varchar(32) DEFAULT '服务',
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `bao_shop_cate`
--

INSERT INTO `bao_shop_cate` (`cate_id`, `cate_name`, `parent_id`, `orderby`, `is_hot`, `d1`, `d2`, `d3`, `title`) VALUES
(1, '餐饮美食', 0, 1, 1, '价格', '环境', '服务', '吃尽天下美食'),
(2, '小吃快餐', 1, 11, 0, '口味', '环境', '服务', NULL),
(59, '四星级酒店', 13, 33, 0, '价格', '环境', '服务', NULL),
(41, '驾校', 8, 72, 0, '价格', '环境', '服务', NULL),
(6, '结婚', 0, 4, 0, '价格', '环境', '服务', '一辈子的大事'),
(7, '家居', 0, 6, 0, '价格', '环境', '服务', '家居是一种生活'),
(14, '生活服务', 0, 10, 0, '价格', '环境', '服务', '生活服务尽在附近'),
(8, '汽车', 0, 7, 0, '价格', '环境', '服务', '买车去旅游'),
(9, '丽人', 0, 8, 0, '价格', '环境', '服务', '美丽就在这里开始'),
(10, '母婴', 0, 5, 0, '价格', '环境', '服务', '关爱孕妇及婴儿'),
(11, '教育培训', 0, 9, 0, '价格', '环境', '服务', '一年之计在于春'),
(12, '休闲娱乐', 0, 2, 1, '价格', '环境', '服务', '生活需要享受'),
(13, '酒店', 0, 3, 0, '价格', '环境', '服务', '住最好的地方'),
(15, '医院', 14, 102, 0, '价格', '环境', '服务', NULL),
(16, '便利店', 14, 101, 0, '价格', '环境', '服务', NULL),
(17, 'KTV', 12, 21, 0, '价格', '环境', '服务', NULL),
(18, '足疗按摩', 12, 22, 0, '价格', '环境', '服务', NULL),
(19, '经济型酒店', 13, 31, 0, '价格', '环境', '服务', NULL),
(20, '五星级酒店', 13, 32, 0, '价格', '环境', '服务', NULL),
(21, '幼儿', 11, 91, 0, '价格', '环境', '服务', NULL),
(22, '小学', 11, 92, 0, '价格', '环境', '服务', NULL),
(23, '高中', 11, 94, 0, '价格', '环境', '服务', NULL),
(24, '初中', 11, 93, 0, '价格', '环境', '服务', NULL),
(25, '计算机', 11, 95, 0, '价格', '环境', '服务', NULL),
(26, '其他', 11, 97, 0, '价格', '环境', '服务', NULL),
(27, '外语', 11, 96, 0, '价格', '环境', '服务', NULL),
(28, '婚庆公司', 6, 41, 0, '价格', '环境', '服务', NULL),
(29, '婚纱摄影', 6, 42, 0, '价格', '环境', '服务', NULL),
(30, '新娘跟妆', 6, 43, 0, '价格', '环境', '服务', NULL),
(31, '司仪服务', 6, 44, 0, '价格', '环境', '服务', NULL),
(32, '装修公司', 7, 61, 0, '价格', '环境', '服务', NULL),
(33, '建材商', 7, 62, 0, '价格', '环境', '服务', NULL),
(34, '家具', 7, 63, 0, '价格', '环境', '服务', NULL),
(35, '软装布艺', 7, 64, 0, '价格', '环境', '服务', NULL),
(36, '4S店', 8, 71, 0, '价格', '环境', '服务', NULL),
(42, '江浙菜', 1, 11, 0, '口味', '环境', '服务', NULL),
(38, '母婴用品', 10, 51, 0, '价格', '环境', '服务', NULL),
(40, 'SPA', 9, 81, 0, '价格', '环境', '服务', NULL),
(43, '面包糕点', 1, 12, 0, '口味', '环境', '服务', NULL),
(44, '海鲜', 1, 13, 0, '口味', '环境', '服务', ''),
(45, '火锅', 1, 11, 1, '口味', '环境', '服务', NULL),
(46, '川菜', 1, 11, 1, '口味', '环境', '服务', NULL),
(47, '徽菜', 1, 11, 0, '口味', '环境', '服务', NULL),
(48, '东北菜', 1, 17, 0, '口味', '环境', '服务', NULL),
(49, '西餐', 1, 18, 0, '口味', '环境', '服务', NULL),
(50, '粤菜', 1, 19, 0, '口味', '环境', '服务', NULL),
(51, '日本料理', 1, 11, 1, '口味', '环境', '服务', NULL),
(52, '韩国菜', 1, 11, 0, '口味', '环境', '服务', NULL),
(53, '其他', 1, 22, 0, '口味', '环境', '服务', NULL),
(54, '电影', 12, 2, 1, '价格', '环境', '服务', NULL),
(55, '酒吧', 12, 24, 1, '价格', '环境', '服务', NULL),
(56, '咖啡厅', 12, 25, 0, '价格', '环境', '服务', NULL),
(57, '温泉', 12, 26, 0, '价格', '环境', '服务', NULL),
(58, '棋牌室', 12, 27, 0, '价格', '环境', '服务', NULL),
(60, '三星级酒店', 13, 34, 0, '价格', '环境', '服务', NULL),
(61, '度假村', 13, 35, 0, '价格', '环境', '服务', NULL),
(62, '婚戒首饰', 6, 45, 0, '价格', '环境', '服务', NULL),
(63, '亲子摄影', 10, 52, 0, '价格', '环境', '服务', NULL),
(64, '加油站', 14, 101, 0, '价格', '环境', '服务', NULL),
(65, '旅游', 0, 1, 0, '号', '坏', '很好', '国内外旅游'),
(66, '国内', 65, 1, 1, '好', '坏', '很好', '海南');

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_details`
--

CREATE TABLE IF NOT EXISTS `bao_shop_details` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  `theme_id` int(11) DEFAULT '0',
  `theme_expir_time` int(11) DEFAULT NULL,
  `discounts` varchar(32) DEFAULT NULL,
  `business_time` varchar(32) DEFAULT '9:00-18:00',
  `price` int(10) DEFAULT NULL,
  `near` varchar(64) DEFAULT NULL,
  `wei_pic` varchar(256) DEFAULT NULL,
  `delivery_time` tinyint(3) DEFAULT '30',
  `is_dingyue` tinyint(1) DEFAULT '0',
  `app_id` varchar(32) DEFAULT NULL,
  `app_key` varchar(256) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `weixin_msg` text,
  `menus` text,
  `seo_title` varchar(32) DEFAULT NULL,
  `seo_keywords` varchar(32) DEFAULT NULL,
  `seo_description` varchar(32) DEFAULT NULL,
  `icp` varchar(32) DEFAULT NULL,
  `sitelogo` varchar(64) DEFAULT NULL,
  `bank` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_shop_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `evaluate` tinyint(1) DEFAULT '0',
  `score` tinyint(3) DEFAULT NULL,
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0',
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dianping_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_dianping_pics`
--

CREATE TABLE IF NOT EXISTS `bao_shop_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `dianping_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding` (
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shop_name` varchar(32) DEFAULT '',
  `tel` varchar(15) DEFAULT '',
  `mobile` varchar(15) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `addr` varchar(128) DEFAULT '',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `business_id` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `deposit` int(10) DEFAULT '0',
  `orders` int(10) DEFAULT '0',
  `comments` int(10) DEFAULT '0',
  `score` float(2,1) DEFAULT '0.0',
  `kw_score` float(2,1) DEFAULT '0.0',
  `hj_score` float(2,1) DEFAULT '0.0',
  `fw_score` float(2,1) DEFAULT '0.0',
  `lat` varchar(15) DEFAULT '',
  `lng` varchar(15) DEFAULT '',
  `stime` varchar(10) DEFAULT '',
  `ltime` varchar(10) DEFAULT '',
  `is_open` tinyint(1) DEFAULT '1',
  `details` text,
  `update_time` int(10) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT '',
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_attr`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_attr` (
  `type_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_cate`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_cate` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `cate_name` varchar(64) DEFAULT '',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_dianping` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `have_photo` tinyint(1) DEFAULT '0',
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_dianping_pic`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_dianping_pic` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_menu`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) DEFAULT '',
  `shop_id` int(11) DEFAULT '0',
  `cate_id` int(11) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  `price` int(11) DEFAULT '0',
  `ding_price` int(11) DEFAULT '0',
  `sold_num` int(10) DEFAULT '0',
  `is_tuijian` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  `is_sale` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_order`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_order` (
  `order_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `comment_status` tinyint(1) DEFAULT '0',
  `order_status` tinyint(1) DEFAULT '0',
  `ding_date` date DEFAULT NULL,
  `ding_time` varchar(20) DEFAULT '',
  `ding_num` varchar(20) DEFAULT '',
  `ding_type` tinyint(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `amount` int(10) DEFAULT '0',
  `menu_amount` int(10) DEFAULT '0',
  `user_id` mediumint(8) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '1',
  `note` mediumtext,
  `update_time` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_order_menu`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_order_menu` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT '0',
  `menu_id` int(10) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `menu_name` varchar(32) DEFAULT '',
  `num` int(10) DEFAULT '0',
  `amount` int(10) DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_pics`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_pics` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_room`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_room` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `intro` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `last_date` date DEFAULT NULL,
  `last_t` tinyint(3) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`room_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_setting`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_setting` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT '0',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_ding_yuyue`
--

CREATE TABLE IF NOT EXISTS `bao_shop_ding_yuyue` (
  `ding_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `room_id` mediumint(8) NOT NULL,
  `shop_id` mediumint(8) DEFAULT NULL,
  `last_date` date NOT NULL,
  `last_t` tinyint(3) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `user_id` mediumint(8) DEFAULT NULL,
  `number` int(3) DEFAULT NULL,
  `order_no` int(10) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ding_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_expand`
--

CREATE TABLE IF NOT EXISTS `bao_shop_expand` (
  `expand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `expand` tinyint(3) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`expand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_favorites`
--

CREATE TABLE IF NOT EXISTS `bao_shop_favorites` (
  `favorites_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `last_news_id` int(11) DEFAULT '0',
  `read_id` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`),
  UNIQUE KEY `user_id` (`user_id`,`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_life_service`
--

CREATE TABLE IF NOT EXISTS `bao_shop_life_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `cate_id` smallint(5) unsigned NOT NULL,
  `area_id` smallint(5) unsigned NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `business_id` smallint(5) unsigned NOT NULL,
  `shop_name` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `extension` varchar(8) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `create_ip` varchar(15) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_logs`
--

CREATE TABLE IF NOT EXISTS `bao_shop_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `type` enum('yuyue','card','wei','bao') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_money`
--

CREATE TABLE IF NOT EXISTS `bao_shop_money` (
  `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `type` enum('tuan','ele','ding','breaks','goods') DEFAULT 'tuan',
  `order_id` int(11) DEFAULT '0',
  `intro` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`money_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_news`
--

CREATE TABLE IF NOT EXISTS `bao_shop_news` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  `cate_id` smallint(5) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `details` text,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `orderby` tinyint(1) DEFAULT '50',
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`news_id`),
  KEY `shop_id` (`shop_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_pic`
--

CREATE TABLE IF NOT EXISTS `bao_shop_pic` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_setting`
--

CREATE TABLE IF NOT EXISTS `bao_shop_setting` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `apiKey` varchar(64) DEFAULT '',
  `mKey` varchar(32) DEFAULT '',
  `partner` int(10) DEFAULT '0',
  `machine_code` varchar(32) DEFAULT '',
  `auto_print` tinyint(1) DEFAULT '0',
  `num` tinyint(3) DEFAULT '1',
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_weixin_access`
--

CREATE TABLE IF NOT EXISTS `bao_shop_weixin_access` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `access_token` varchar(256) DEFAULT NULL,
  `expir_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_weixin_keyword`
--

CREATE TABLE IF NOT EXISTS `bao_shop_weixin_keyword` (
  `keyword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `keyword` varchar(32) DEFAULT NULL,
  `type` enum('news','text') DEFAULT 'text',
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`),
  UNIQUE KEY `shop_id` (`shop_id`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_youhui`
--

CREATE TABLE IF NOT EXISTS `bao_shop_youhui` (
  `yh_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(1) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `discount` decimal(5,1) DEFAULT '0.0',
  `min_amount` decimal(8,2) DEFAULT '0.00',
  `amount` decimal(8,2) DEFAULT '0.00',
  `is_open` tinyint(1) DEFAULT '0',
  `use_count` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`yh_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_shop_yuyue`
--

CREATE TABLE IF NOT EXISTS `bao_shop_yuyue` (
  `yuyue_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT '0',
  `shop_id` int(11) unsigned DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `yuyue_date` date DEFAULT NULL,
  `yuyue_time` varchar(32) DEFAULT NULL,
  `number` smallint(5) unsigned DEFAULT '0',
  `code` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `used` tinyint(1) DEFAULT '0',
  `used_time` int(11) DEFAULT '0',
  `used_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`yuyue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_sms`
--

CREATE TABLE IF NOT EXISTS `bao_sms` (
  `sms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sms_key` varchar(32) DEFAULT NULL,
  `sms_explain` varchar(1024) DEFAULT NULL,
  `sms_tmpl` varchar(2048) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`sms_id`),
  UNIQUE KEY `sms_key` (`sms_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `bao_sms`
--

INSERT INTO `bao_sms` (`sms_id`, `sms_key`, `sms_explain`, `sms_tmpl`, `is_open`) VALUES
(1, 'sms_code', '可用标签：\r\n1、验证码 :{code}', '尊敬的用户：您在{sitename}手机认证的验证码是{code}千万别告诉别人！【{sitename}】', 1),
(4, 'sms_shop_yuyue', '1、{shop_name}商家\r\n2、{shop_tel}商家电话\r\n3、{code}电子预约券\r\n4、{shop_addr}商家地址', '尊敬的用户您好,您预约了{shop_name}的电子优惠券：{code},亲可以前往{shop_name}进行消费;商家地址:{shop_addr},电话{shop_tel};【{sitename}】', 1),
(3, 'sms_coupon_downloads', '可使用标签：\r\n1、{coupon_title} 优惠券标题\r\n2、{shop_name}商家\r\n3、{code}电子优惠券\r\n4、{expire_date}有效期', '尊敬的用户您好，您下载了商家{shop_name}的电子优惠券{coupon_title}，电子优惠券为{code}，你可以在{expire_date}之前使用该优惠券！【{sitename}】', 1),
(5, 'sms_tuan', '团购后发送短信给用户！\r\n1、{nickname}用户昵称\r\n2、{tuan}团购产品\r\n3、{code}团购电子券', '尊敬的{nickname}您在{sitename}订购的{tuan}的电子券是{code}；千万别告诉其他人！【{sitename}】', 1),
(6, 'sms_newpwd', '找回密码：\r\n1、{newpwd}新密码', '尊敬的用户：您好，您再{sitename}的密码被重置成{newpwd}您可以使用{newpwd}重新登录！【{sitename}】', 1),
(7, 'sms_shop_mall', '商城通知商家短信模板', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(8, 'sms_shop_tuan', '团购通知商家信息模板', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(24, 'sms_ele', '订餐后发送短信给用户！ 1、{nickname}用户昵称 2、{shopname}外卖商家', '尊敬的{nickname}您在{shopname}点的外卖订单已经生成，请耐心等待美食的到来。【{sitename}】', 1),
(25, 'sms_shop_ele', '订餐通知商家短信模版', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(27, 'sms_breaks', '优惠买单通知商家短信模版', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(28, 'sms_hotel', '1、{hotel_name}酒店名称\r\n2、{tel}酒店电话\r\n3、{stime}入住时间\r\n4、{ltime}退房时间\r\n5、{addr}酒店地址', '尊敬的用户您好,您预订了{hotel_name}的房间：{title}；预订时间为：{stime} -- {ltime}；亲请准时前往{hotel_name}入住；酒店地址:{addr},电话{tel};【{sitename}】', 1),
(29, 'sms_shop_hotel', '酒店预订通知商家短信模版', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(30, 'sms_shop_farm', '农家乐预订通知商家短信模版', '您好，您在{sitename}有新的订单！【{sitename}】', 1),
(31, 'sms_farm', '1、{farm_name}农家乐名称\r\n2、{tel}农家乐电话\r\n3、{gotime}预订时间\r\n4、{addr}农家乐地址', '尊敬的用户您好,您预订了{farm_name}的农家乐：{title}；预订时间为：{gotime}；亲请准时前往{farm_name}入住；农家乐地址:{addr},电话{tel};【{sitename}】', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bao_system_content`
--

CREATE TABLE IF NOT EXISTS `bao_system_content` (
  `content_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `contents` text,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(255) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_template`
--

CREATE TABLE IF NOT EXISTS `bao_template` (
  `template_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `theme` varchar(32) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `theme` (`theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `bao_template`
--

INSERT INTO `bao_template` (`template_id`, `name`, `theme`, `photo`, `is_default`) VALUES
(4, '默认模版', 'default', 'index.jpg', 1),
(8, '模板1', 'newone', 'index.jpg', 0),
(9, '模板2', 'newtwo', 'index.jpg', 0),
(12, '玫红', 'color_rose', 'index.jpg', 0),
(10, '模板3', 'newthree', 'index.jpg', 0),
(11, '儋州生活网', 'dz_danzhou', 'index.jpg', 0),
(13, '模板3橙色', 'newthree_color_orange', 'index.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bao_template_setting`
--

CREATE TABLE IF NOT EXISTS `bao_template_setting` (
  `theme` varchar(32) DEFAULT NULL,
  `setting` text,
  UNIQUE KEY `theme` (`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tongji`
--

CREATE TABLE IF NOT EXISTS `bao_tongji` (
  `tongji_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(12) DEFAULT NULL,
  `keyword` varchar(32) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `money` int(11) DEFAULT NULL,
  `year` smallint(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  `date` date DEFAULT '2015-03-24',
  `is_mobile` tinyint(1) DEFAULT '0',
  `is_weixin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`tongji_id`),
  KEY `from` (`from`),
  KEY `keyword` (`keyword`),
  KEY `type` (`type`),
  KEY `year` (`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe`
--

CREATE TABLE IF NOT EXISTS `bao_tribe` (
  `tribe_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT '0',
  `tribe_name` varchar(32) DEFAULT '',
  `intro` varchar(256) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `banner` varchar(128) DEFAULT '',
  `posts` int(10) DEFAULT '0',
  `fans` int(10) DEFAULT '0',
  `is_hot` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`tribe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_cate`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT '',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `bao_tribe_cate`
--

INSERT INTO `bao_tribe_cate` (`cate_id`, `cate_name`, `orderby`) VALUES
(1, '游戏', 1),
(2, '明星', 2),
(3, '电影', 3),
(4, '动漫', 4),
(5, '电视剧', 5),
(6, '生活', 6),
(7, '运动健身', 7),
(8, '体育竞技', 8),
(9, '小说', 9),
(10, '互联网', 10),
(11, '幽默', 11),
(12, '星座', 12),
(13, '亲子', 13),
(14, '旅行', 14),
(15, '饮食', 15),
(16, '健康养生', 16),
(17, '网络红人', 17),
(18, '媒体', 18),
(19, '数码', 19),
(20, '其他', 21),
(21, '汽车', 22),
(22, '婚礼', 23);

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_collect`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_collect` (
  `tribe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tribe_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_comments_photo`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_comments_photo` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_donate`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_donate` (
  `donate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `money` decimal(10,1) DEFAULT '0.0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`donate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_post`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  `tribe_id` int(10) DEFAULT '0',
  `cate_id` int(10) DEFAULT '0',
  `details` text,
  `user_id` int(10) DEFAULT '0',
  `donate_num` int(10) DEFAULT '0',
  `reply_num` int(10) DEFAULT '0',
  `zan_num` int(10) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `last_id` int(10) DEFAULT '0',
  `last_time` int(10) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_post_comments`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_post_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `contents` text,
  `user_id` int(10) DEFAULT '0',
  `reply_comment_id` int(10) DEFAULT '0',
  `reply_user_id` int(10) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_post_photo`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_post_photo` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tribe_post_zan`
--

CREATE TABLE IF NOT EXISTS `bao_tribe_post_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`zan_id`),
  UNIQUE KEY `post_id` (`post_id`,`create_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan`
--

CREATE TABLE IF NOT EXISTS `bao_tuan` (
  `tuan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `cate_id` smallint(6) DEFAULT NULL,
  `area_id` smallint(6) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  `business_id` smallint(6) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `thumb` text,
  `price` int(11) DEFAULT NULL,
  `tuan_price` int(11) DEFAULT NULL,
  `settlement_price` int(11) DEFAULT '0',
  `use_integral` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `tao_num` tinyint(2) DEFAULT '0',
  `wei_pic` varchar(256) DEFAULT NULL,
  `bg_date` datetime DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime DEFAULT '0000-00-00 00:00:00',
  `fail_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(2) DEFAULT '0',
  `is_new` tinyint(2) DEFAULT '0',
  `is_chose` tinyint(2) DEFAULT '0',
  `is_multi` tinyint(1) DEFAULT '0',
  `freebook` tinyint(2) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `is_return_cash` tinyint(2) DEFAULT '0',
  `is_seckill` tinyint(1) DEFAULT '0',
  `kill_bg` date DEFAULT NULL,
  `kill_end` date DEFAULT NULL,
  `kill_num` int(11) DEFAULT '0',
  `kill_price` int(11) DEFAULT '0',
  `limit` tinyint(4) unsigned DEFAULT '1',
  PRIMARY KEY (`tuan_id`),
  KEY `cate_id` (`cate_id`,`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_cate`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_cate` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `is_hot` tinyint(2) DEFAULT NULL,
  `rate` int(11) DEFAULT '60',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- 转存表中的数据 `bao_tuan_cate`
--

INSERT INTO `bao_tuan_cate` (`cate_id`, `cate_name`, `parent_id`, `orderby`, `is_hot`, `rate`) VALUES
(1, '美食', 0, 1, 0, 60),
(2, '电影/在线选座', 0, 99, 0, 60),
(3, '自助餐', 1, 12, 1, 60),
(4, '火锅', 1, 11, 0, 150),
(5, '午市套餐', 1, 13, 0, 60),
(6, '下午茶', 1, 14, 0, 60),
(7, '日韩料理', 1, 15, 1, 60),
(8, '江浙菜', 1, 16, 0, 60),
(9, '西餐', 1, 17, 0, 60),
(10, '蛋糕', 1, 18, 0, 60),
(11, '甜品饮料', 1, 19, 0, 60),
(12, '烤鱼', 1, 20, 1, 60),
(13, '烧烤/烤肉', 1, 21, 0, 60),
(14, '海鲜', 1, 22, 0, 60),
(16, '小吃快餐', 1, 24, 0, 60),
(17, '汤/粥/炖菜', 1, 25, 0, 60),
(18, '聚餐宴请', 1, 26, 1, 60),
(19, ' 8-10人套餐', 1, 27, 0, 60),
(20, '川湘菜', 1, 28, 0, 60),
(21, '粤菜/茶餐厅', 1, 29, 0, 60),
(22, '西北/新疆菜', 1, 30, 1, 60),
(23, '东北菜', 1, 31, 0, 60),
(24, '云贵菜', 1, 32, 0, 60),
(25, '清真', 1, 33, 0, 60),
(26, '台湾菜', 1, 34, 0, 60),
(27, '特色菜', 1, 35, 0, 60),
(28, '咖啡茶馆', 1, 36, 0, 60),
(29, '东南亚菜', 1, 37, 1, 60),
(30, '京菜/鲁菜', 1, 38, 1, 60),
(31, '蟹宴', 1, 39, 0, 60),
(32, '农家土菜', 1, 40, 0, 60),
(33, '其他美食', 1, 41, 0, 60),
(34, '休闲娱乐', 0, 2, 0, 60),
(35, '酒店', 0, 3, 0, 60),
(36, '丽人', 0, 7, 1, 60),
(37, '购物', 0, 5, 1, 60),
(38, '旅游', 0, 50, 1, 60),
(39, '生活服务', 0, 6, 1, 60),
(40, '亲子', 0, 8, 0, 60),
(41, '结婚', 0, 10, 0, 60),
(42, '热映电影', 2, 100, 0, 60),
(43, '电影团购', 2, 100, 0, 60),
(44, '找电影院', 2, 100, 0, 60),
(45, 'KTV', 34, 1, 0, 60),
(46, '温泉', 34, 12, 0, 60),
(47, '滑雪', 34, 13, 0, 60),
(48, '公园/游乐园', 34, 14, 0, 60),
(49, '景点/郊游', 34, 15, 1, 60),
(50, '密室逃脱', 34, 16, 1, 60),
(51, '桌游/电玩/网吧', 34, 17, 1, 60),
(52, '酒吧', 34, 18, 0, 60),
(53, '足疗按摩', 34, 19, 0, 60),
(54, '洗浴/汗蒸', 34, 20, 0, 60),
(55, '电影', 34, 21, 0, 60),
(56, '私人影院', 34, 22, 0, 60),
(57, '4D/5D电影', 34, 23, 0, 60),
(58, '演出/赛事/展览', 34, 24, 0, 60),
(59, 'DIY手工', 34, 25, 0, 60),
(60, '真人CS/卡丁车', 34, 26, 0, 60),
(61, '农家乐/采摘', 34, 27, 1, 60),
(62, '运动健身', 34, 28, 1, 60),
(63, '游泳', 34, 29, 1, 60),
(64, '轰趴馆', 34, 30, 1, 60),
(65, '水上乐园', 34, 31, 0, 60),
(66, '亲子游玩', 34, 32, 0, 60),
(67, '更多', 34, 33, 0, 60),
(68, '经济/客栈', 35, 20, 0, 60),
(69, '三星/舒适', 35, 21, 0, 60),
(70, '四星/精品', 35, 22, 0, 60),
(71, '五星/豪华', 35, 23, 0, 60),
(72, '美发', 36, 20, 0, 60),
(74, '美容/SPA', 36, 22, 1, 60),
(75, '个性写真', 36, 23, 1, 60),
(76, '瘦身纤体', 36, 24, 0, 60),
(77, '瑜珈/舞蹈', 36, 25, 0, 60),
(78, '其他', 36, 26, 0, 60),
(79, '服饰鞋包', 37, 20, 0, 60),
(80, '生活家居', 37, 21, 0, 60),
(81, '食品饮料', 37, 22, 0, 60),
(82, '母婴用品', 37, 23, 0, 60),
(83, '数码家电', 37, 24, 0, 60),
(84, '个护化妆', 37, 25, 0, 60),
(85, '钟表眼镜', 37, 26, 0, 60),
(86, '水果生鲜', 37, 27, 0, 60),
(87, '影音书刊', 37, 28, 0, 60),
(88, '珠宝饰品', 37, 29, 0, 60),
(89, '其他', 37, 30, 0, 60),
(90, '景点门票', 38, 20, 0, 60),
(91, '当地/周边游', 38, 21, 0, 60),
(92, '国内游', 38, 22, 0, 60),
(93, '出境游', 38, 23, 0, 60),
(94, '汽车服务', 39, 20, 0, 60),
(95, '体检保健', 39, 21, 0, 60),
(96, '培训课程', 39, 22, 0, 60),
(97, '鲜花婚庆', 39, 23, 0, 60),
(98, '照片冲印', 39, 24, 0, 60),
(99, '家具建材', 39, 25, 0, 60),
(100, '装修设计', 39, 26, 0, 60),
(101, '婚纱摄影', 39, 27, 0, 60),
(102, '个性写真', 39, 28, 0, 60),
(103, '儿童摄影', 39, 29, 0, 60),
(104, '母婴亲子', 39, 30, 0, 60),
(105, '服装洗护', 39, 31, 0, 60),
(106, '宠物服务', 39, 32, 0, 60),
(107, '家政服务', 39, 33, 0, 60),
(108, '配眼镜', 39, 34, 0, 60),
(109, '商场购物券', 39, 35, 0, 60),
(110, '孕产护理', 40, 20, 0, 60),
(111, '亲子购物', 40, 21, 0, 60),
(112, '亲子游乐', 40, 22, 0, 60),
(113, '幼儿教育', 40, 23, 0, 60),
(114, '亲子摄影', 40, 24, 0, 60),
(115, '其他亲子', 40, 25, 0, 60),
(116, '婚纱摄影', 41, 20, 0, 60),
(117, '旅游婚纱照', 41, 21, 0, 60),
(118, '婚纱礼服', 41, 22, 0, 60),
(119, '成衣定制', 41, 23, 0, 60),
(120, '婚庆公司', 41, 24, 0, 60),
(121, '婚戒首饰', 41, 25, 0, 60),
(122, '婚礼小商品', 41, 26, 0, 60),
(123, '彩妆造型', 41, 27, 0, 60),
(124, '司仪主持', 41, 28, 0, 60),
(125, '婚礼跟拍', 41, 29, 0, 60),
(126, '其他结婚', 41, 30, 0, 60);

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_code`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(8) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT '0',
  `branch_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `settlement_price` int(11) DEFAULT NULL,
  `real_money` int(11) DEFAULT '0',
  `real_integral` int(11) DEFAULT '0',
  `fail_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `used_time` int(11) DEFAULT '0',
  `used_ip` varchar(15) DEFAULT '0.0.0.0',
  `is_used` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`code_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_details`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_details` (
  `tuan_id` int(10) NOT NULL,
  `details` text,
  `instructions` text,
  PRIMARY KEY (`tuan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_dianping`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_dianping` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_dianping_pics`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_dianping_pics` (
  `pic_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_meal`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_meal` (
  `tuan_id` int(11) unsigned DEFAULT '0',
  `id` int(11) unsigned DEFAULT '0',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_order`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT NULL,
  `use_integral` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT '0',
  `need_pay` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `is_mobile` tinyint(1) DEFAULT '0',
  `is_dianping` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tuan_view`
--

CREATE TABLE IF NOT EXISTS `bao_tuan_view` (
  `view_id` int(10) NOT NULL AUTO_INCREMENT,
  `tuan_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_tui`
--

CREATE TABLE IF NOT EXISTS `bao_tui` (
  `tui_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tui_name` varchar(64) DEFAULT NULL,
  `tui_link` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users`
--

CREATE TABLE IF NOT EXISTS `bao_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `face` varchar(128) DEFAULT NULL,
  `ext0` varchar(15) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `integral` int(11) DEFAULT '0',
  `prestige` int(11) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `rank_id` tinyint(4) DEFAULT '1',
  `gold` int(11) DEFAULT '0',
  `reg_time` int(11) DEFAULT '0',
  `reg_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `uc_id` int(11) DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `ping_num` int(11) DEFAULT '0',
  `post_num` int(11) DEFAULT '0',
  `invite1` int(11) DEFAULT NULL,
  `invite2` int(11) DEFAULT NULL,
  `invite3` int(11) DEFAULT NULL,
  `invite4` int(11) DEFAULT NULL,
  `invite5` int(11) DEFAULT NULL,
  `invite6` int(11) DEFAULT '0',
  `token` char(32) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users_cash`
--

CREATE TABLE IF NOT EXISTS `bao_users_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `reason` text,
  `account` varchar(64) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `bank_num` varchar(32) DEFAULT NULL,
  `bank_branch` varchar(128) DEFAULT NULL,
  `bank_realname` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`cash_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users_ex`
--

CREATE TABLE IF NOT EXISTS `bao_users_ex` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `last_uid` int(11) DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `bank_num` varchar(32) DEFAULT NULL,
  `bank_branch` varchar(128) DEFAULT NULL,
  `bank_realname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '0',
  `job` varchar(32) DEFAULT '',
  `star_id` tinyint(2) DEFAULT '0',
  `born_year` smallint(4) DEFAULT '0',
  `born_month` tinyint(2) DEFAULT '0',
  `born_day` tinyint(2) DEFAULT '0',
  `frozen_money` int(11) DEFAULT '0',
  `frozen_date` int(11) DEFAULT '0',
  `is_tui_money` tinyint(1) DEFAULT '0',
  `is_no_frozen` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users_goods`
--

CREATE TABLE IF NOT EXISTS `bao_users_goods` (
  `record_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `goods_id` int(10) DEFAULT NULL,
  `record_time` int(11) DEFAULT NULL,
  `record_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users_look`
--

CREATE TABLE IF NOT EXISTS `bao_users_look` (
  `look_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`look_id`),
  UNIQUE KEY `user_id` (`user_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_users_visitors`
--

CREATE TABLE IF NOT EXISTS `bao_users_visitors` (
  `visitors_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`visitors_id`),
  UNIQUE KEY `uid` (`uid`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_addr`
--

CREATE TABLE IF NOT EXISTS `bao_user_addr` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `city_id` int(11) DEFAULT '0',
  `area_id` int(11) DEFAULT '0',
  `business_id` int(11) DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `addr` varchar(1024) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`addr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_card`
--

CREATE TABLE IF NOT EXISTS `bao_user_card` (
  `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_num` (`card_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_gold_logs`
--

CREATE TABLE IF NOT EXISTS `bao_user_gold_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_integral_logs`
--

CREATE TABLE IF NOT EXISTS `bao_user_integral_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_message`
--

CREATE TABLE IF NOT EXISTS `bao_user_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `from_id` int(10) DEFAULT '0',
  `content` text,
  `is_read` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_money_logs`
--

CREATE TABLE IF NOT EXISTS `bao_user_money_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_rank`
--

CREATE TABLE IF NOT EXISTS `bao_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(32) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `icon1` varchar(64) DEFAULT NULL,
  `prestige` int(11) DEFAULT '0',
  `rebate` int(10) DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `bao_user_rank`
--

INSERT INTO `bao_user_rank` (`rank_id`, `rank_name`, `icon`, `icon1`, `prestige`, `rebate`) VALUES
(1, 'VIP1', 'usericon0', '', 0, 1),
(2, 'VIP2', 'usericon1', 'usericon1', 100, 2),
(3, 'VIP3', 'usericon0', 'usericon1', 500, 3),
(4, 'VIP4', 'usericon0', 'usericon1', 1000, 5),
(5, 'VIP5', 'usericon0', 'usericon0', 5000, 10),
(6, 'VIP6', 'usericon0', 'usericon1', 10000, 15);

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_sign`
--

CREATE TABLE IF NOT EXISTS `bao_user_sign` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `day` int(11) DEFAULT '0',
  `is_first` tinyint(4) DEFAULT '1',
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bao_user_weixin`
--

CREATE TABLE IF NOT EXISTS `bao_user_weixin` (
  `wx_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `unionid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`wx_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_vote`
--

CREATE TABLE IF NOT EXISTS `bao_vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `is_select` tinyint(2) DEFAULT '0',
  `is_pic` tinyint(2) DEFAULT '0',
  `banner` varchar(64) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_work` tinyint(2) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_vote_option`
--

CREATE TABLE IF NOT EXISTS `bao_vote_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_vote_result`
--

CREATE TABLE IF NOT EXISTS `bao_vote_result` (
  `result_id` int(10) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `vote_option` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `vote_id` (`vote_id`,`create_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weidian_cate`
--

CREATE TABLE IF NOT EXISTS `bao_weidian_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT '',
  `orderby` tinyint(2) DEFAULT '50',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weidian_details`
--

CREATE TABLE IF NOT EXISTS `bao_weidian_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weidian_name` varchar(64) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `business_time` varchar(32) NOT NULL,
  `details` text NOT NULL,
  `pic` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `area_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_coupon`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(30) DEFAULT '',
  `title` varchar(50) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `photo` varchar(150) DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) DEFAULT '',
  `end_tips` varchar(1024) DEFAULT '',
  `end_photo` varchar(150) DEFAULT '',
  `num` mediumint(8) DEFAULT '0',
  `max_count` mediumint(8) DEFAULT '0',
  `down_count` mediumint(8) DEFAULT '0',
  `use_count` mediumint(8) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `follower_condtion` tinyint(1) DEFAULT '0',
  `member_condtion` tinyint(1) DEFAULT NULL,
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_couponsn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_couponsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_goldegg`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_goldegg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(60) NOT NULL,
  `use_tips` varchar(200) NOT NULL,
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `info` varchar(200) NOT NULL,
  `aginfo` varchar(200) NOT NULL,
  `end_tips` varchar(60) NOT NULL,
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL,
  `fistnums` int(4) NOT NULL,
  `fistlucknums` int(1) NOT NULL,
  `second` varchar(50) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL,
  `parssword` int(15) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL,
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_goldeggsn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_goldeggsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `egg_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(11) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `isegg` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_help`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_help` (
  `help_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `intro` varchar(1024) NOT NULL DEFAULT '',
  `photo` varchar(150) NOT NULL DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) NOT NULL DEFAULT '',
  `end_tips` varchar(1204) NOT NULL,
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `end_photo` varchar(150) NOT NULL DEFAULT '',
  `lastupdate` int(10) NOT NULL DEFAULT '0',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`help_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_helplist`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_helplist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `help_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `zhuliid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_helpprize`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_helpprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `help_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `photo` varchar(225) NOT NULL,
  `shop_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_helpsn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_helpsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `help_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `zhuanfa` mediumint(8) DEFAULT '0',
  `zhuli` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_keyword`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_keyword` (
  `keyword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL,
  `type` enum('news','text') DEFAULT 'text',
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_lottery`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `title` varchar(60) NOT NULL,
  `txt` varchar(60) NOT NULL,
  `use_tips` varchar(200) NOT NULL,
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `info` varchar(200) NOT NULL,
  `aginfo` varchar(200) NOT NULL,
  `end_tips` varchar(60) NOT NULL,
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL,
  `fistnums` int(4) NOT NULL,
  `fistlucknums` int(1) NOT NULL,
  `second` varchar(50) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` varchar(30) NOT NULL DEFAULT '',
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL,
  `parssword` int(15) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL,
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_lotterysn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_lotterysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lottery_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `islottery` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_msg`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FromUserName` varchar(64) DEFAULT NULL,
  `ToUserName` varchar(64) DEFAULT NULL,
  `Content` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_packet`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  `item_min` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_packetling`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_packetling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_packetling_copy`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_packetling_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_packetsn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_packetsn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `open_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_prize`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scratch_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `photo` varchar(225) NOT NULL,
  `shop_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_qrcode`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_qrcode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `soure_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_relay`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_relay` (
  `relay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `intro` varchar(1024) NOT NULL DEFAULT '',
  `photo` varchar(150) NOT NULL DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) NOT NULL DEFAULT '',
  `end_tips` varchar(1204) NOT NULL,
  `relay_num` int(10) unsigned NOT NULL DEFAULT '0',
  `max_num` int(10) unsigned NOT NULL DEFAULT '0',
  `max_gold` mediumint(8) DEFAULT NULL,
  `min_gold` mediumint(8) DEFAULT '30',
  `time` mediumint(8) DEFAULT '30',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `end_photo` varchar(150) NOT NULL DEFAULT '',
  `lastupdate` int(10) NOT NULL DEFAULT '0',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `owner_maxgold` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`relay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_relaylist`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_relaylist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `relay_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `jieliid` varchar(50) DEFAULT NULL,
  `gold` mediumint(8) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_relayprize`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_relayprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relay_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `photo` varchar(225) NOT NULL,
  `shop_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_relaysn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_relaysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relay_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `cishu` mediumint(8) DEFAULT '0',
  `gold` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_scratch`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_scratch` (
  `scratch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `intro` varchar(1024) NOT NULL DEFAULT '',
  `photo` varchar(150) NOT NULL DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) NOT NULL DEFAULT '',
  `end_tips` varchar(1204) NOT NULL,
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `end_photo` varchar(150) NOT NULL DEFAULT '',
  `lastupdate` int(10) NOT NULL DEFAULT '0',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scratch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_scratchsn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_scratchsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scratch_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_shake`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_shake` (
  `shake_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `intro` varchar(1024) NOT NULL DEFAULT '',
  `photo` varchar(150) NOT NULL DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) NOT NULL DEFAULT '',
  `end_tips` varchar(1204) NOT NULL,
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `end_photo` varchar(150) NOT NULL DEFAULT '',
  `lastupdate` int(10) NOT NULL DEFAULT '0',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shake_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_shakeprize`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_shakeprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shake_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `photo` varchar(225) NOT NULL,
  `shop_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_shakesn`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_shakesn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shake_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` varchar(30) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_weixin_tmpl`
--

CREATE TABLE IF NOT EXISTS `bao_weixin_tmpl` (
  `tmpl_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `bao_weixin_tmpl`
--

INSERT INTO `bao_weixin_tmpl` (`tmpl_id`, `title`, `serial`, `template_id`, `info`, `sort`, `status`, `create_time`, `update_time`) VALUES
(1, '下单成功通知', 'OPENTM202297555', 'py5I84ROmNrKiRov38VABwCZodsViqhUPv7PbhvoHQE', NULL, 0, 1, NULL, 1441014941),
(4, '订单支付成功', 'OPENTM201490080', 'JiQxtUoAPMlITLdXuO2Tv8WF_9w8US3PdR2ooMQNoSs', NULL, 0, 1, 1440472398, 1441014941),
(2, '商家订单确认', 'OPENTM203940481', 'IlRBcBh7SzcLzBn8fnts5f57QvkYkfrfsDG97ngCvh0', NULL, 0, 1, 1440464265, 1441014941),
(3, '账户余额变动通知', 'OPENTM205454780', 'O5NVYKENwXQ5pTbNkWiq8ZaT9VJkli26xEDjC0GezTQ', NULL, 0, 1, 1440464265, 1441014941),
(5, '订单发货通知', 'OPENTM202297614', 'BR4VuyjJXLCB-JqfiFNUDJmwCxWamEprK1lhUKVIb5w', NULL, 0, 1, 1440483587, 1441014941),
(6, '订单确认收货', 'OPENTM202314085', 'Cq0fFfmKHg5R9xlNHZL6AJAr3MqXD0Q1zxaRibQlKt8', NULL, 0, 1, 1440483697, 1441014941),
(7, '订单取消', 'TM00850', 'pLOVjvvhnVDKxImL3BsVuOXh60wMxClvkbPPB5qfPhY', NULL, 0, 1, 1440483772, 1441014941),
(8, '下单成功测试模板', 'OPENTM202297558', 'uZnd6yYJjWRa4cE_yfzYOBano3ZdmiPY9kNxrPIapvM', NULL, 0, 1, 1441009657, 1441014941),
(9, '订单支付成功测试模板', 'OPENTM201490088', 'A3KOzKjLZ1yzMrCVwbu_TLAVBHW9t8sFPoxJwcB4Uvs', NULL, 0, 1, 1441011383, 1441014941),
(10, '订单取消通知测试模板', 'TM9990998', '3gm3EcUp0RG0ID3Y_lZ7Vnr5U2AmQkBNsX_7CnV9Czs', NULL, 0, 1, 1441011704, 1441014941),
(11, '卖家接收订单', 'OPENTM201495678', 'JNVOX9fS18vfcp-kxxcGE3XhIjZ1mAhIM61a7h44uiI', NULL, 0, 1, 1441012762, 1441014941),
(12, '商家发货通知', 'OPENTM201495888', 'AyLqbNwJYd6yUKTFEADDJzU0y7PhebVlhC9J3w7eJhw', NULL, 0, 1, 1441013266, 1441014941),
(13, '账户余额变动通知', 'OPENTM201495900', 'MQVYQzLc_AcRjIHaAoR-1Qm9WVvP9b9pf6LmOORzQT4', NULL, 0, 1, 1441014046, 1441014941),
(14, '订单收货确认测试模板', 'TM99900000', 'S5WHJCVChmwvBE3QLJzFWx2Yr07Jn65FstHGri2rAk0', NULL, 0, 1, 1441014941, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bao_work`
--

CREATE TABLE IF NOT EXISTS `bao_work` (
  `work_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `money1` int(11) DEFAULT '0',
  `money2` int(11) DEFAULT '0',
  `num` tinyint(4) DEFAULT '0',
  `intro` varchar(1024) DEFAULT NULL,
  `work_time` varchar(32) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `expir_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`work_id`),
  KEY `shop_id` (`shop_id`),
  KEY `lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_zhuan`
--

CREATE TABLE IF NOT EXISTS `bao_zhuan` (
  `zhuan_id` int(10) NOT NULL AUTO_INCREMENT,
  `map_id` tinyint(4) DEFAULT NULL,
  `goods_id` int(10) NOT NULL,
  `floor_id` tinyint(4) NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `deadline` int(10) NOT NULL,
  PRIMARY KEY (`zhuan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_zhuan_config`
--

CREATE TABLE IF NOT EXISTS `bao_zhuan_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) DEFAULT NULL,
  `color_title` varchar(10) DEFAULT NULL,
  `color_bg` varchar(10) DEFAULT NULL,
  `color_mtitle` varchar(10) DEFAULT NULL,
  `color_mbg` varchar(10) DEFAULT NULL,
  `pc_banner` varchar(255) DEFAULT NULL,
  `mobile_banner` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_zhuan_floor`
--

CREATE TABLE IF NOT EXISTS `bao_zhuan_floor` (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`floor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bao_zhuan_map`
--

CREATE TABLE IF NOT EXISTS `bao_zhuan_map` (
  `map_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`map_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
