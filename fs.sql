-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2020 at 10:05 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `totprice` float NOT NULL,
  `biilno` int(30) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`biilno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`item_id`, `item_name`, `quantity`, `price`, `totprice`, `biilno`, `date`) VALUES
('ft4', 'ammonia', 7, 700, 4900, 41, '2018-10-28 21:54:53'),
('ft4', 'ammonia', 4, 700, 2800, 42, '2018-10-28 21:57:27'),
('sd2', 'rice ', 4, 500, 2000, 43, '2018-10-28 22:19:38'),
('ft6', 'groundnut', 6, 400, 2400, 44, '2018-10-29 00:08:16'),
('ft6', 'groundnut', 5, 400, 2000, 45, '2018-10-29 00:10:22'),
('ft2', 'ammonia', 5, 150, 750, 46, '2018-10-29 01:29:37'),
('ft3', 'NH4', 5, 700, 3500, 47, '2018-10-29 01:34:45'),
('ft3', 'NH4', 5, 700, 3500, 48, '2018-10-29 10:34:47'),
('ft1', 'urea', 2, 200, 400, 49, '2018-10-29 19:48:20'),
('ft1', 'urea', 2, 200, 400, 50, '2018-10-29 20:11:42'),
('ft5', 'sulphate', 2, 900, 1800, 51, '2020-02-27 15:18:26'),
('ft5', 'sulphate', 2, 900, 1800, 52, '2020-02-27 15:19:24'),
('ft1', 'urea', 2, 200, 400, 53, '2020-03-03 15:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `totprice` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` float NOT NULL,
  `mfd` varchar(30) NOT NULL,
  `exp` varchar(30) NOT NULL,
  `batchno` varchar(30) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_id`, `item_name`, `quantity`, `price`, `mfd`, `exp`, `batchno`) VALUES
('ft5', 'sulphate', 70, 900, '5/10/2017', '6/10/2018', 'h789'),
('ft4', 'ammonia', 39, 700, '03/10/2017', '03/10/2018', 't200'),
('ft3', 'NH4', 40, 700, '22/11/2017', '22/11/2018', 'b85'),
('ft2', 'ammonia', 85, 150, '20/08/2018', '11/12/2019', 'am123'),
('ft1', 'urea', 370, 200, '20/10/2018', '20/11/2019', 'asdc1'),
('sd1', 'Grounnuts', 400, 300, '4/5/2016', '4/3/2018', 'h78'),
('sd2', 'rice ', 66, 500, '4/6/2017', '3/8/2108', 'g77'),
('sd3', 'chilli', 80, 500, '3/5/2017', '5/7/2019', 'g67'),
('sd4', 'wheat', 90, 300, '7/2/2017', '5/5/2019', 'h67'),
('sd5', 'corn', 50, 900, '8/7/2017', '7/5/2019', 'hf6'),
('ft6', 'groundnut', 49, 400, '4/5/2017', '4/4/2019', 'h23'),
('12', 'one', 500, 5, '29-02-2019', '29-02-2020', '45');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `biilno` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(30) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` double NOT NULL,
  `totprice` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`biilno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`biilno`, `item_id`, `item_name`, `quantity`, `price`, `totprice`, `date`) VALUES
(9, 'ft5', 'sulphate', 5, 900, 4450, '2020-02-27 15:21:12'),
(8, 'ft1', 'urea', 20, 200, 3800, '2018-10-29 20:16:01'),
(7, 'ft1', 'urea', 10, 200, 1900, '2018-10-29 19:51:05'),
(10, 'ft1', 'urea', 6, 200, 1140, '2020-03-03 15:21:22');
