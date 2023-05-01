-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2023 at 04:45 AM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tagudini_patisserie`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(11, '', 2, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Cakes'),
(3, 'Cupcakes'),
(4, 'Donuts'),
(5, 'Pies'),
(6, 'Breads');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(1, 'angela', 'Tagudin', '09152967645', 'angelab@email.com', 1),
(2, 'Angela', 'Tagudin', '09152967645', 'angelab@email.com', 1),
(3, 'Angela', 'Tagudin', '09152967645', 'angelab@email.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 1, 3, 1),
(4, 1, 6, 3),
(5, 2, 1, 2),
(6, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(1, 4, 'Choco Filled', '', 30, '1674676200_20210118ç‰›å¹´ å•†å“è³‡è¨Šchocolate (1).jpg', 1),
(3, 4, 'Cinnamon Sugar', '', 30, '1674400680_16-Cinnamon Sugar.jpg', 1),
(4, 4, 'Lucky Orange', '', 30, '1674400680_202301 lucky orange.png', 1),
(5, 4, 'Matcha Stripes', '', 30, '1674401220_08-Matcha Stripes.jpg', 1),
(6, 4, 'Chocolate Glazed', '', 30, '1674401280_detail_pic16.jpg', 1),
(7, 4, 'Vanilla Glazed', '', 30, '1674401340_detail_pic17.jpg', 1),
(8, 4, 'Choco Crunch', '', 30, '1674401220_detail_pic08.jpg', 1),
(9, 4, 'White Rabbit', '', 30, '1674676260_rabbit.png', 1),
(10, 4, 'Safe Apple Sound', '', 30, '1674676320_safe apple sound.png', 1),
(11, 4, 'Salted Caramel', '', 30, '1674679020_Salted Caramel_web.jpg', 1),
(12, 6, 'Cheesy Ensaimada', '', 30, '1674679020_01-cheesy-ensaimada-res-1.png', 1),
(13, 6, 'Ube Cheesy Ensaimada', '', 30, '1674679080_02-ube-cheesy-ensaimada-res-1.png', 1),
(14, 6, 'Classic Bread', '', 30, '1674679080_08-classic-bread-res.png', 1),
(15, 6, 'Chiffon Cake Slice', '', 30, '1674679140_Chiffon-Cake-Slice.png', 1),
(16, 6, 'Choco Bread', '', 30, '1674679140_choco-bread.png', 1),
(17, 6, 'Choco Cake Slice', '', 30, '1674679200_choco-cake-slice1.png', 1),
(18, 6, 'Butter Mamon', '', 30, '1674679200_Corp-Butter_Mamon.png', 1),
(19, 6, 'Red Velvet Cake Slice', '', 30, '1674679260_Corp-redvelvet.png', 1),
(20, 6, 'Ube Slice', '', 30, '1674679320_pbd-ube-slice.png', 1),
(21, 6, 'Raisin Bread', '', 30, '1674679320_raisin-bread.png', 1),
(22, 1, 'Black Forest', '', 400, '1674679380_BlackForrest.png', 1),
(23, 6, 'Choco Heaven', '', 400, '1674679440_CHOCO-HEAVEN-min.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Patisserie', 'patisserie@email.com', '+63 915 296 7645', '1674401400_bg1.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;&lt;b style=&quot;text-align: center; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:24px;text-align: center;&quot;&gt;Those with a sweet tooth will find the Patisserie irresistable. Whether you&rsquo;re craving chocolate, whipped cream, goodness-enriched fruit or a flaky pastry, the Patisserie has got you covered.&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Admin', 'admin', '$2y$10$efDvenHYJ5Fu/xxt1ANbXuRx5/TuzNs/s4k6keUiiFvr2ueE0GmrG', 1),
(2, 'Angela', 'angela', '$2y$10$DJbGDnA6bkOiS0TW08R5FOPruw0wRW4maShgWK8k6FlEfgNjbXsvm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'gela', 'bon', 'gb@email.com', '1254737c076cf867dc53d60a0364f38e', '4756463215', 'tagudin'),
(2, 'gela', 'bon', 'gb@email.com', '$2y$10$QYX8P9KwBKXunMEE4I5hVO/hO9pxUU/aswTlf.v.Uy1CNDEabTafS', '0912365487', 'tagudin'),
(3, 'angela', 'boniol', 'angelab@gmail.com', '$2y$10$O6sBCjVxTc3OFyLRjC1tw.23veCthjlnq0FYG3Quv7q/G4SQd/UUe', '12345', 'sta. cruz ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
