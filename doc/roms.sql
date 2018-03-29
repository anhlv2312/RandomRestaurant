-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 12:09 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roms`
--

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
CREATE TABLE IF NOT EXISTS `variations` (
  `var_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `dish_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` int(11) DEFAULT NULL,
  PRIMARY KEY (`var_name`,`dish_code`),
  KEY `FK_VARIATION_DISH_CODE` (`dish_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`var_name`, `dish_code`, `price`, `description`) VALUES
('Beef', '26', 13.9, NULL),
('Beef', '27a', 13.9, NULL),
('Beef', '33', 13.9, NULL),
('Beef', '33a', 13.9, NULL),
('Beef', '34', 14.9, NULL),
('Beef', '35', 14.9, NULL),
('Beef', '35a', 14.9, NULL),
('Beef', '35b', 14.9, NULL),
('Beef', '36', 13.9, NULL),
('Beef', '39', 13.9, NULL),
('Beef', '40', 13.9, NULL),
('Beef', '41b', 12.9, NULL),
('Beef', '45', 13.9, NULL),
('Beef', '46', 13.9, NULL),
('Chicken', '10', 7, NULL),
('Chicken', '32', 13.9, NULL),
('Chicken', '33', 13.9, NULL),
('Chicken', '33a', 13.9, NULL),
('Chicken', '34', 14.9, NULL),
('Chicken', '35', 14.9, NULL),
('Chicken', '35a', 14.9, NULL),
('Chicken', '35b', 14.9, NULL),
('Chicken', '36', 13.9, NULL),
('Chicken', '39', 13.9, NULL),
('Chicken', '40', 13.9, NULL),
('Chicken', '41b', 12.9, NULL),
('Chicken', '44b', 13.9, NULL),
('Chicken', '45', 13.9, NULL),
('Chicken', '46', 13.9, NULL),
('Default', '1', 5, NULL),
('Default', '11', 6, NULL),
('Default', '12', 7, NULL),
('Default', '12a', 6, NULL),
('Default', '12c', 8, NULL),
('Default', '12d', 7, NULL),
('Default', '12e', 7, NULL),
('Default', '12f', 7, NULL),
('Default', '12g', 8.5, NULL),
('Default', '12h', 8, NULL),
('Default', '12i', 6, NULL),
('Default', '12j', 8, NULL),
('Default', '12k', 6, NULL),
('Default', '17', 15.9, NULL),
('Default', '18', 18.9, NULL),
('Default', '19', 18.8, NULL),
('Default', '1a', 5, NULL),
('Default', '2', 6, NULL),
('Default', '20', 18.9, NULL),
('Default', '21', 18.9, NULL),
('Default', '22', 18.9, NULL),
('Default', '23', 18.9, NULL),
('Default', '24', 14.9, NULL),
('Default', '24a', 14.9, NULL),
('Default', '24b', 14.8, NULL),
('Default', '25', 13.9, NULL),
('Default', '25a', 13.9, NULL),
('Default', '27', 13.9, NULL),
('Default', '27b', 13.9, NULL),
('Default', '27c', 13.9, NULL),
('Default', '28', 14.9, NULL),
('Default', '28a', 14.9, NULL),
('Default', '28b', 14.9, NULL),
('Default', '28c', 13.9, NULL),
('Default', '28d', 13.9, NULL),
('Default', '29', 13.9, NULL),
('Default', '3', 7, NULL),
('Default', '30', 13.9, NULL),
('Default', '31', 13.9, NULL),
('Default', '31a', 11.903, NULL),
('Default', '32a', 13.9, NULL),
('Default', '32b', 13.9, NULL),
('Default', '32c', 13.9, NULL),
('Default', '32d', 13.9, NULL),
('Default', '35c', 14.9, NULL),
('Default', '37', 18.9, NULL),
('Default', '4', 5, NULL),
('Default', '41', 12.9, NULL),
('Default', '41a', 12.9, NULL),
('Default', '41c', 12.9, NULL),
('Default', '42', 13.9, NULL),
('Default', '42a', 13.9, NULL),
('Default', '43', 13.9, NULL),
('Default', '44', 12.9, NULL),
('Default', '44a', 13.9, NULL),
('Default', '47', 12.9, NULL),
('Default', '47a', 12.9, NULL),
('Default', '48', 11, NULL),
('Default', '49', 11.9, NULL),
('Default', '5', 6, NULL),
('Default', '50', 11.9, NULL),
('Default', '51', 11.9, NULL),
('Default', '52', 12.9, NULL),
('Default', '53', 11.9, NULL),
('Default', '54', 10, NULL),
('Default', '55', 12.9, NULL),
('Default', '57', 11.9, NULL),
('Default', '57a', 11.9, NULL),
('Default', '58', 11.9, NULL),
('Default', '58a', 11.9, NULL),
('Default', '58b', 11.9, NULL),
('Default', '58c', 11.9, NULL),
('Default', '59', 12.9, NULL),
('Default', '6', 6, NULL),
('Default', '60', 12.9, NULL),
('Default', '60a', 13.9, NULL),
('Default', '60b', 13.9, NULL),
('Default', '60c', 14.9, NULL),
('Default', '60d', 14.9, NULL),
('Default', '60e', 14.9, NULL),
('Default', '60f', 14.9, NULL),
('Default', '60g', 14.9, NULL),
('Default', '66', 19.9, NULL),
('Default', '67', 15.9, NULL),
('Default', '68', 18.9, NULL),
('Default', '69', 18.9, NULL),
('Default', '7', 8, NULL),
('Default', '70', 19.9, NULL),
('Default', '70a', 19.9, NULL),
('Default', '70b', 19.9, NULL),
('Default', '71', 18.9, NULL),
('Default', '72', 18.9, NULL),
('Default', '73', 18.9, NULL),
('Default', '74', 18.9, NULL),
('Default', '75', 18.9, NULL),
('Default', '76', 15.9, NULL),
('Default', '77', 18.9, NULL),
('Default', '78', 18.9, NULL),
('Default', '79', 18.9, NULL),
('Default', '7a', 7, NULL),
('Default', '8', 8, NULL),
('Default', '80', 19.9, NULL),
('Default', '81', 19.9, NULL),
('Default', '82', 16.9, NULL),
('Default', '83', 16.9, NULL),
('Default', '84', 14.9, NULL),
('Default', '85', 14.9, NULL),
('Default', '86', 19.9, NULL),
('Default', '86a', 19.9, NULL),
('Default', '86c', 19.9, NULL),
('Default', '86d', 19.9, NULL),
('Default', '87', 18.9, NULL),
('Default', '88', 18.9, NULL),
('Default', '9', 7, NULL),
('King Prawn', '10', 7, NULL),
('King Prawn', '33', 18.9, NULL),
('King Prawn', '33a', 18.9, NULL),
('King Prawn', '34', 18.9, NULL),
('King Prawn', '35', 18.9, NULL),
('King Prawn', '35a', 18.9, NULL),
('King Prawn', '35b', 18.9, NULL),
('King Prawn', '36', 18.9, NULL),
('King Prawn', '39', 18.9, NULL),
('King Prawn', '40', 18.9, NULL),
('King Prawn', '41b', 18.9, NULL),
('King Prawn', '45', 18.9, NULL),
('King Prawn', '46', 18.9, NULL),
('Lamb', '26', 16.9, NULL),
('Lamb', '27a', 16.9, NULL),
('Lamb', '35b', 16.9, NULL),
('Mixed', '10', 7, NULL),
('Mixed Seafood', '38', 18.9, NULL),
('Pork', '10', 7, NULL),
('Prawn', '32', 18.9, NULL),
('Prawn', '44b', 18.9, NULL),
('Prawn', '86b', 18.9, NULL),
('Soft Shell Crab', '86b', 19.9, NULL),
('Tofu', '10', 7, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `FK_VARIATION_DISH_CODE` FOREIGN KEY (`dish_code`) REFERENCES `dishes` (`dish_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
