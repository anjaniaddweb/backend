-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2021 at 01:52 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` bigint(10) NOT NULL,
  `a_name` varchar(30) NOT NULL,
  `a_email` varchar(20) NOT NULL,
  `a_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_email`, `a_password`) VALUES
(2, 'Anjani', 'anjani@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` bigint(10) NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(8, 'Men'),
(9, 'Women'),
(10, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `p_id` bigint(10) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` bigint(50) NOT NULL,
  `p_desc` text NOT NULL,
  `p_image` varchar(100) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `is_active` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`p_id`, `p_name`, `p_price`, `p_desc`, `p_image`, `c_name`, `is_active`) VALUES
(18, 'Slim Fit Casual Shirt ', 70, 'Soft and Breathable Cotton Fabric', '../images/men-1.jpg', 'Men', 1),
(19, 'Dennis Lingo Shirt', 64, 'Regular Machine Wash with like colors\r\n', '../images/men-2.jpg', 'Men', 1),
(20, 'Cotton Checkered Casual Slim Fit Shirt', 90, 'Care Instructions Machine Wash Slim Fit\r\nNeck Style Collared', '../images/men-3.jpg', 'Men', 1),
(21, 'Carrot Slim Jeans', 30, 'Care Instructions Machine Wash\r\nFit Type Slim\r\nCotton Stretch Jeans\r\nSlim Fit\r\n5 Pocket Jeans\r\nMid Rise\r\nMachine Wash', '../images/men-4.jpg', 'Men', 1),
(22, 'Pleat Front Formal Trousers', 50, 'Care Instructions Machine Wash\r\nFit Type Slim\r\nMachine wash', '../images/men-5.jpg', 'Men', 1),
(23, 'Van Heusen Men Formal Trousers', 80, 'Care Instructions Machine Wash\r\nFit Type Slim\r\nZip fly with button closure', '../images/men-6.jpg', 'Men', 1),
(24, 'Knot front mini dress', 80, 'Machine Wash The range of casual dress are trendy & perfect for all seasons ', '../images/product-7.jpg', 'Women', 1),
(25, 'Knee Length Dress', 40, 'Care Instructions Machine Wash It is long lasting Easy to wash', '../images/women-2.jpg', 'Women', 1),
(26, 'One Piece Dress', 40, 'Comfortable in its make and breathable Aesthetic design This will be an ideal pick for you', '../images/women-3.jpg', 'Women', 1),
(27, 'Black Dress', 70, 'Care Instructions Dry Clean Only\r\n', '../images/women-4.jpg', 'Women', 1),
(28, 'Orange One Piece with Jacket', 60, 'OMFORTABLE FABRIC Skin friendly fabric is soft and comfortable it is also light and breathable Comfortable in its make and breathable Aesthetic design This will be an ideal pick for you', '../images/women-5.jpg', 'Women', 1),
(29, 'Blue Dress', 80, 'Length Knee Length', '../images/women-6.jpg', 'Women', 1),
(30, 'Baby Boy Girl Clothing Set', 90, 'Dress up your young boy girl in this cool funky sky blue and grey colored full length set by bold n elegant', '../images/kids-1.jpg', 'Kids', 1),
(31, 'Printed Regular T Shirt', 50, 'Care Instructions Machine Wash\r\nFit Type Regular\r\nColor Name Multicolor', '../images/kids-2.jpg', 'Kids', 1),
(32, '3 Piece Dress for Boys', 40, 'Fit Type Regular', '../images/kids-3.jpg', 'Kids', 1),
(33, 'Mickey Mouse Bunny Printed Pinny Pinafore Midi Dress', 40, 'Care Instructions Machine Wash\r\nFabric Cotton\r\n', '../images/kids-4.jpg', 'Kids', 1),
(34, 'Regular Fit T Shirt', 50, 'Colour Multi Coloured material Cotton Sleeve type half sleeve neck Type round neck', '../images/kids-5.jpg', 'Kids', 1),
(35, 'Bumzee Full Length Ribbed Pajamas for Baby', 60, 'Care Instructions Machine Wash\r\nMachine wash', '../images/kids-6.jpg', 'Kids', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `p_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
