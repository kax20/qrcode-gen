-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 04:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `qrcode_gen`
--

CREATE TABLE `qrcode_gen` (
  `id` int(11) NOT NULL,
  `add_text` varchar(255) DEFAULT NULL,
  `barcode` blob DEFAULT NULL,
  `date_gen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qrcode_gen`
--

INSERT INTO `qrcode_gen` (`id`, `add_text`, `barcode`, `date_gen`) VALUES
(1, 'codewithkax', 0x363563386536396135373431642e706e67, '2024-02-11 16:24:10'),
(2, 'codewithkax', 0x363563386537303635383530622e706e67, '2024-02-11 16:25:58'),
(3, 'technology', 0x363563386537373165393634662e706e67, '2024-02-11 16:27:45'),
(4, 'codewithkax', 0x363563386537623038356432382e706e67, '2024-02-11 16:28:48'),
(5, 'technow', 0x363563386537646330313938382e706e67, '2024-02-11 16:29:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qrcode_gen`
--
ALTER TABLE `qrcode_gen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qrcode_gen`
--
ALTER TABLE `qrcode_gen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
