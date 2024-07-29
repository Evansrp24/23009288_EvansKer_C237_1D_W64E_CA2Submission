-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 02:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c237_snackzillaapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `Order_ItemID` int(100) NOT NULL,
  `OrderID` int(100) NOT NULL,
  `productID` int(100) NOT NULL,
  `Quantity` int(30) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`Order_ItemID`, `OrderID`, `productID`, `Quantity`, `Price`) VALUES
(1, 1, 1, 2, 10.50);

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `productID` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int(30) DEFAULT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`productID`, `name`, `Description`, `Category`, `Price`, `Stock`, `Image`) VALUES
(1, 'Ruffles Original Potato Chips', 'The salted classic. A thicker, sturdier potato chip with Ruffles® trademarked ridges.', 'Salty Snacks', 5.10, 200, 'https://i5.walmartimages.com/asr/94819053-1765-4400-8533-d4aab81d45ba_1.793879571f1726f6a55e79b6f148b8c4.jpeg'),
(2, 'OREO Chocolate Sandwich Cookies', 'Take a delicious break with OREO Chocolate Sandwich Cookies. OREO cookies sandwich a rich creme fill', 'Sweet Treats', 4.99, 300, 'https://cdn0.woolworths.media/content/wowproductimages/large/073032.jpg'),
(3, 'SKITTLES Original Fruity Candy', 'Every pack of SKITTLES Original Fruity Candy gives you the chance to Taste the Rainbow, with a varie', 'Sweet Treats', 2.20, 150, 'https://th.bing.com/th/id/OIP.Cwpw06LqieNv_NT9pzQQDAHaHa?rs=1&pid=ImgDetMain'),
(4, 'SNICKERS Chocolate Bar', '\r\nHungry and off your game? Dont let being hungry ruin your day, grab a bar of Snickers Chocolate an', 'Sweet Treats', 1.50, 80, 'https://th.bing.com/th/id/OIP.1Ks3vbrsS6S2HN5GYcBd4wHaHa?rs=1&pid=ImgDetMain'),
(5, 'Doritos Nacho Cheese Flavored Tortilla Chips', 'The Doritos brand is all about boldness.If youre up to the challenge, grab a bag of Doritos tortilla', 'Salty Snacks', 3.05, 100, 'https://i5.walmartimages.com/asr/cf16c90d-f4ae-4d5e-acfc-50840ce4a99b_1.30e4c19f0aa1564bcee2ba96d5a5b9e9.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `registration_table`
--

CREATE TABLE `registration_table` (
  `UserID` int(100) NOT NULL,
  `Username` varchar(60) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Full_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_table`
--

INSERT INTO `registration_table` (`UserID`, `Username`, `Email`, `Password`, `Address`, `Full_Name`) VALUES
(1, 'Ker Yu Le Evans', '23009288@myrp.edu.sg', '1234567', '53 Jalan Bunga Rampai 08-06', 'Evans Ker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`Order_ItemID`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `registration_table`
--
ALTER TABLE `registration_table`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `productID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration_table`
--
ALTER TABLE `registration_table`
  MODIFY `UserID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
