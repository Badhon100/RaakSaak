-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 08:53 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slung` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slung`) VALUES
(1, 'Laptops', ''),
(2, 'Desktop PC', ''),
(3, 'Tablets', ''),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`, `total`) VALUES
(14, 9, 11, 2, 0),
(15, 9, 13, 5, 0),
(16, 9, 3, 2, 0),
(17, 9, 1, 3, 0),
(18, 10, 13, 3, 0),
(19, 10, 2, 4, 0),
(20, 10, 19, 5, 0),
(21, 13, 0, 1, 0),
(22, 13, 1, 1, 0),
(23, 14, 0, 1, 0),
(24, 14, 38, 2, 0),
(25, 15, 37, 2, 0),
(26, 19, 37, 1, 0),
(27, 20, 37, 1, 0),
(28, 21, 37, 1, 0),
(29, 22, 37, 1, 0),
(30, 25, 38, 1, 0),
(31, 26, 38, 1, 0),
(32, 27, 39, 1, 0),
(33, 28, 39, 1, 0),
(34, 29, 38, 1, 0),
(35, 32, 41, 1, 0),
(36, 32, 42, 1, 0),
(37, 33, 42, 1, 0),
(38, 34, 41, 1, 0),
(39, 35, 41, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `available` int(10) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `shopname`, `description`, `slug`, `price`, `available`, `photo`, `date_view`, `counter`, `category_id`) VALUES
(41, 'Dell Laptop', 'Domestic', '<p>Ram : 4 GB</p>\r\n\r\n<p>HDD : 1 TB.</p>\r\n\r\n<p>Core- i5 7th gen</p>\r\n', 'dell-laptop', 55000, 10, 'dell-laptop.jpg', '2019-08-27', 5, 0),
(47, 'lenovo', 'Domestic', '<p>Model&nbsp; :Lenevo ideapad 320</p>\r\n\r\n<p>proccessor : core - i5</p>\r\n\r\n<p>Ram : 4 GB</p>\r\n\r\n<p>Storage : 1 TB</p>\r\n', 'lenovo', 55000, 10, 'lenovo.jpg', '0000-00-00', 0, 0),
(48, 'apple Ipad ', 'Domestic', '<p>Model&nbsp; : apple i-pad</p>\r\n\r\n<p>Ram : 4 GB</p>\r\n\r\n<p>Storage : 512 GB</p>\r\n', 'apple-ipad', 55000, 20, 'apple-ipad.jpg', '0000-00-00', 0, 0),
(49, 'Amazon Fire-7', 'Domestic', '<p>Model&nbsp; : Amazon fire-7</p>\r\n\r\n<p>Ram : 4 GB</p>\r\n\r\n<p>Storage : 256GB</p>\r\n', 'amazon-fire-7', 40000, 15, 'amazon-fire-7.jpg', '2019-08-27', 1, 0),
(51, 'Dell xps Laptop', 'Domestic', '<p>Model&nbsp; : Dell xps-15</p>\r\n\r\n<p>proccessor : core - i5</p>\r\n\r\n<p>Ram : 4 GB</p>\r\n\r\n<p>Storage : 1 TB</p>\r\n', 'dell-xps-laptop', 63000, 5, 'dell-xps-laptop.jpg', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `shopname`, `pay_id`, `sales_date`) VALUES
(32, 31, '', '31', '2019-08-27'),
(34, 31, '', '31', '2019-08-27'),
(35, 31, '', '31', '2019-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `shopname`
--

CREATE TABLE `shopname` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sellerfname` varchar(100) NOT NULL,
  `sellerlname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopname`
--

INSERT INTO `shopname` (`id`, `name`, `sellerfname`, `sellerlname`) VALUES
(6, 'sunlight', 'Samim', 'Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `typetwo` tinyint(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `shopname` varchar(20) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `typetwo`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `shopname`, `activate_code`, `reset_code`, `created_on`, `amount`) VALUES
(14, 'badhonx3@gmail.com', '$2y$10$cHU/VLkTsh0MIakGpZZOtOs8U6XHlZLLL9VUVCzSY94JNOOcETGji', 1, 0, 'Badhon', 'Ahmed', '', '', '', 1, '', '', '', '0000-00-00', 0),
(31, 'ashik@gmail.com', '$2y$10$JP4dPjcBD4dbjEjsPeXjP.dNaB2//UNvE79GleKFRaGQL0BAZqIXa', 0, 0, 'Ashik', 'Hossain', '', '', '', 1, '', '', '', '0000-00-00', 0),
(34, 'badhonx102@gmail.com', '$2y$10$IBCP8/Yw7QoSzKJp2o2UF.ERpFnrgyiwgX.2kBKX7J3pNRAe2q.nO', 0, 1, 'Badhon', 'Ahmed', '', '', '', 1, 'Star Denim', '', '', '0000-00-00', 0),
(45, 'naeem1@gmail.com', '$2y$10$N.sw1W91ZIaBIvZu9t5NY.7mJ/EsTyoabhKAAO4RNOEPElceJ6HZe', 0, 0, 'Naeem', 'hossain', '', '', '', 1, 'Ecstasy', '', '', '0000-00-00', 0),
(49, 'royet@gmail.com', '$2y$10$ZUyawX1RHQ41BHGeT0Im8uUuGwk96jqsPpOtAIWrjQR5LVaiyo.Bm', 0, 1, 'Royet', 'Rahman', '', '', '', 1, 'Domestic', '', '', '0000-00-00', 0),
(51, 'arman@gmail.com', '$2y$10$Z2ovQ/3oq9yHL2dNs2wfx.m/mjKx9kEL3JlbfDqg9.33d9hk5Hr9e', 0, 0, 'Arman', 'Malik', '', '', '', 1, '', '', '', '0000-00-00', 0),
(52, 'naeem@gmail.com', '$2y$10$TE1rNpn8IKsxENq8j0fPDODjAqFM2qejtJ/E4GG7GG8kxf4FsopSe', 0, 1, 'Naeem', 'hossain', '', '', '', 1, 'Ecstasy', '', '', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopname`
--
ALTER TABLE `shopname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shopname`
--
ALTER TABLE `shopname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
