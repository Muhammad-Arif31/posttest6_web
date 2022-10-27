-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `komputer`
--

CREATE TABLE `komputer` (
  `id` int(11) NOT NULL,
  `namaproduk` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `kodebarang` int(20) NOT NULL,
  `stock` int(3) NOT NULL,
  `harga` int(9) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komputer`
--

INSERT INTO `komputer` (`id`, `namaproduk`, `category`, `kodebarang`, `stock`, `harga`, `gambar`) VALUES
(4, 'ROG', 'laptop', 222222, 10, 20000000, 'speed-img.jpg'),
(8, 'ram 64 gb', 'hardisk', 815661, 80, 450000, 'intel-i9-bg.jpg'),
(9, 'MSI', 'laptop', 123456, 5, 15000000, 'oled-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komputer`
--
ALTER TABLE `komputer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komputer`
--
ALTER TABLE `komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
