-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 11:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingbaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `email`, `subject`, `msg`, `date`) VALUES
(1, 'firstpost@gmail.com', 'firstpost', 'firstpost', '2022-09-14 14:12:10'),
(13, 'subhojit.cenajr@gmail.com', 'dadffff', 'HI', '2022-09-23 17:55:19'),
(14, 'subhojit.cenajr@gmail.com', 'dadffff', 'HI', '2022-09-23 17:56:16'),
(15, 'subhojit.cenajr@gmail.com', 'dadffff', 'HI', '2022-09-23 18:09:03'),
(16, 'subhojit.cenajr@gmail.com', 'fsfg', ',da,/dma/', '2022-09-23 18:09:48'),
(17, 'subhojit.cenajr@gmail.com', 'S', 'SXSX', '2022-09-25 16:13:20'),
(18, 'subhojit.cenajr@gmail.com', 'S', 'SXSX', '2022-09-25 16:17:35'),
(19, 'subhojit.cenajr@gmail.com', 'S', 'SXSX', '2022-09-25 16:28:28'),
(20, 'subhojit.cenajr@gmail.com', 'dada', 'dadada', '2022-09-25 16:29:38'),
(21, 'subhojit.cenajr@gmail.com', 'dada', 'dadada', '2022-09-25 16:30:01'),
(22, 'subho@gmail.com', 'esjdha', 'nljndald', '2022-09-25 16:30:36'),
(23, 'subho@gmail.com', 'esjdha', 'nljndald', '2022-09-25 16:35:49'),
(24, 'subhojit.cenajr@gmail.com', 'sxsx', 'sxsxs', '2022-09-25 16:37:59'),
(25, 'subhojit.cenajr@gmail.com', 'sxsx', 'sxsxs', '2022-09-25 16:39:08'),
(26, 'subhojit.cenajr@gmail.com', 'salksj', 'dnsljdla', '2022-09-25 16:39:26'),
(27, 'subhojit.cenajr@gmail.com', 'salksj', 'dnsljdla', '2022-09-25 16:44:00'),
(28, 'subhojit.cenajr@gmail.com', 'salksj', 'dnsljdla', '2022-09-25 16:44:05'),
(29, 'subhojit.cenajr@gmail.com', 'dadffff', 'skma;kda', '2022-09-25 16:44:33'),
(30, 'subhojit.cenajr@gmail.com', 'smd.smd', 'c,zmc.,', '2022-09-25 16:51:43'),
(31, 'subhojit.cenajr@gmail.com', 'smd.smd', 'c,zmc.,', '2022-09-25 16:53:11'),
(32, 'subhojit.cenajr@gmail.com', 'smd.smd', 'c,zmc.,', '2022-09-25 16:53:19'),
(33, 'subhojit.cenajr@gmail.com', 'smd.smd', 'c,zmc.,', '2022-09-25 16:58:43'),
(34, 'subhojit.cenajr@gmail.com', 'fdjfhkdj', 'ljdhfljdshf', '2022-09-25 16:58:58'),
(35, 'subhojit.cenajr@gmail.com', 'fdjfhkdj', 'ljdhfljdshf', '2022-09-25 17:00:52'),
(36, 'subhojit.cenajr@gmail.com', 'sdljhdj', 'jkdhakfjh', '2022-09-25 17:01:07'),
(37, 'subhojit.cenajr@gmail.com', 'sdljhdj', 'jkdhakfjh', '2022-09-25 17:04:36'),
(38, 'subhojit.cenajr@gmail.com', 'sdljhdj', 'jkdhakfjh', '2022-09-25 17:04:57'),
(39, 'subhojit.cenajr@gmail.com', 'dadffff', 'dm.n.an.a', '2022-11-14 12:01:25'),
(40, 'subhojit.cenajr@gmail.com', 'dadffff', 'test', '2022-12-06 11:27:47'),
(41, 'subhojit.cenajr@gmail.com', 'test', 'test', '2022-12-06 11:28:53'),
(42, 'subhojit.cenajr@gmail.com', 'test', 'test', '2022-12-06 11:33:40'),
(43, 'subhojit.cenajr@gmail.com', 'test', 'hi etsting', '2022-12-06 11:38:06'),
(44, 'subhojit.cenajr@gmail.com', 'fsfg', ',snda', '2022-12-06 11:41:35'),
(45, 'subhojit.cenajr@gmail.com', 'dbedk3h', 'jdhljdh', '2022-12-06 11:43:13'),
(46, 'subhojit.cenajr@gmail.com', 'kjshd', 'ndksjhd', '2022-12-06 11:45:58'),
(47, 'subhojit.cenajr@gmail.com', 'hi', 'dkjahd', '2022-12-06 12:03:39'),
(48, 'subhojit.cenajr@gmail.com', 'hhd', 'jshdaj1s', '2022-12-06 13:29:32'),
(49, 'subhojit.cenajr@gmail.com', 'hjdkjsh', 'njhsd', '2022-12-06 13:30:54'),
(50, 'subhojit.cenajr@gmail.com', 'hjdkjsh', 'njhsd', '2022-12-06 13:35:15'),
(51, 'subhojit.cenajr@gmail.com', 'sjjsjs', 'ljdslds', '2022-12-06 13:35:29'),
(52, 'subhojit.cenajr@gmail.com', 'test', 'test', '2022-12-06 13:35:56'),
(53, 'subhojit.cenajr@gmail.com', 'test', 'test', '2022-12-06 13:40:52'),
(54, 'subhojit.cenajr@gmail.com', 'fsfg', 'tes', '2022-12-06 13:41:14'),
(55, 'subhojit.cenajr@gmail.com', 'kjhdksj', 'nsdjnjd', '2022-12-06 13:44:35'),
(56, 'subhojit.cenajr@gmail.com', 'test', 'kjahkjh', '2022-12-07 11:18:19'),
(57, 'subhojit.cenajr@gmail.com', 'hkgksd', 'jkshds', '2022-12-07 14:10:24'),
(58, 'subhojit.cenajr@gmail.com', 'jlskdja', 'lkdjflkdjf', '2022-12-09 13:53:09'),
(59, 'subhojit.cenajr@gmail.com', 'jlskdja', 'lkdjflkdjf', '2022-12-09 13:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `bgimage` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `bgimage`, `date`) VALUES
(2, 'I am subhojit Mondal', 'second-post', 'YO is my second post, and I am learning', 'test.jpg', '2022-12-20 15:25:53'),
(29, 'tesing new pic ', 'new pic', 'ndkajdsjl', 'pp.png', '2022-12-26 15:00:30'),
(31, '3rd post test pic', '3rd post', 'ksgdkaj.hfl.sf', 'DSCN1183.JPG', '2022-12-26 15:06:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
