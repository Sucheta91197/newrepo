-- phpMyAdmin SQL Dump1111
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 11:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chasma_ghar`
--

-- --------------------------------------------------------
   
--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `department_id` varchar(900) DEFAULT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `admin_cell_no` varchar(10) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_address` longtext,
  `admin_birth_date` date DEFAULT NULL,
  `admin_anniversary_date` date DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `admin_added_ip` varchar(20) DEFAULT NULL,
  `admin_added_on` datetime DEFAULT NULL,
  `admin_role` varchar(20) DEFAULT NULL,
  `admin_photo` varchar(500) DEFAULT NULL,
  `admin_sip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `department_id`, `admin_name`, `admin_cell_no`, `admin_email`, `admin_address`, `admin_birth_date`, `admin_anniversary_date`, `admin_password`, `admin_added_ip`, `admin_added_on`, `admin_role`, `admin_photo`, `admin_sip`) VALUES
(1, 'a:7:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";}', 'Admin', '9988776655', 'nilpatil989@gmail.com', 'PUNE', NULL, NULL, '$2y$10$NmbgBL/Gl2Pr5kavRE/.mOQWf7rA6Tbn/3Uw4mM2JmfWm/qC2Hvxm', NULL, NULL, 'admin', 'default.png', '8001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` int(255) NOT NULL,
  `subcategory` int(255) NOT NULL,
  `tax_name` varchar(255) NOT NULL,
  `tax_percentage` varchar(255) NOT NULL,
  `HSN_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` int(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product_delete` int(11) NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_name`, `category`, `subcategory`, `tax_name`, `tax_percentage`, `HSN_code`, `description`, `image`, `quantity`, `size`, `price`, `created_date`, `product_delete`, `status`) VALUES
(2, 'sony', 1, 1, '1', '2', '1', '<p>dfgvdfgvdf</p>', 'login.jpg', 1, 'large', 210000, '2021-04-17 14:21:03', 0, 'N'),
(3, 'hp', 2, 2, '2', '3', '1', '<p>erter41</p>', 'ba1.jpg', 12, 'large1', 2100001, '2021-04-17 17:14:48', 0, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
