-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2023 at 09:19 AM
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
-- Database: `WeatherApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `WeatherData`
--

CREATE TABLE `WeatherData` (
  `ID` int(11) NOT NULL,
  `CityName` varchar(255) DEFAULT NULL,
  `WeatherDate` datetime DEFAULT NULL,
  `Temperature` double DEFAULT NULL,
  `FeelsLike` double DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Pressure` int(11) DEFAULT NULL,
  `Visibility` double DEFAULT NULL,
  `WindDeg` int(11) DEFAULT NULL,
  `WindSpeed` double DEFAULT NULL,
  `MaxTemp` double DEFAULT NULL,
  `MinTemp` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `WeatherInfo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `WeatherData`
--

INSERT INTO `WeatherData` (`ID`, `CityName`, `WeatherDate`, `Temperature`, `FeelsLike`, `Humidity`, `Pressure`, `Visibility`, `WindDeg`, `WindSpeed`, `MaxTemp`, `MinTemp`, `Latitude`, `Longitude`, `WeatherInfo`) VALUES
(1, 'Prichard,USA', '2023-08-12 10:05:56', 29, 36, 83, 1010, 10, 270, 5, 31, 25, 30.7388, -88.0789, 'Clear'),
(2, 'Prichard,USA', '2023-08-12 10:05:56', 29, 36, 83, 1010, 10, 270, 5, 31, 25, 30.7388, -88.0789, 'Clear'),
(3, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(4, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(5, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(6, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(7, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(8, 'Prichard,US', '2023-08-12 17:40:51', 33.21, 40.21, 68, 1017, 10, 0, 3.09, 34.71, 32.31, 30.7388, -88.0789, 'Clear'),
(9, 'Prichard,US', '2023-08-12 18:26:39', 34.04, 41.04, 62, 1017, 10, 0, 2.57, 35.98, 32.73, 30.7388, -88.0789, 'Clear'),
(10, 'Prichard,US', '2023-08-12 18:26:39', 34.04, 41.04, 62, 1017, 10, 0, 2.57, 35.98, 32.73, 30.7388, -88.0789, 'Clear'),
(11, 'Prichard,US', '2023-08-12 18:26:39', 34.04, 41.04, 62, 1017, 10, 0, 2.57, 35.98, 32.73, 30.7388, -88.0789, 'Clear'),
(12, 'Prichard,US', '2023-08-12 18:26:39', 34.04, 41.04, 62, 1017, 10, 0, 2.57, 35.98, 32.73, 30.7388, -88.0789, 'Clear'),
(13, 'London,GB', '2023-08-12 18:19:43', 21.03, 20.94, 67, 1011, 10, 220, 7.2, 22.6, 19.76, 51.5085, -0.1257, 'Clouds'),
(17, 'Prichard,US', '2023-08-12 18:48:28', 34.61, 41.61, 60, 1017, 10, 0, 2.57, 35.98, 33.87, 30.7388, -88.0789, 'Clear'),
(18, 'London,GB', '2023-08-12 18:54:52', 20.85, 20.79, 69, 1011, 10, 220, 7.72, 21.67, 18.94, 51.5085, -0.1257, 'Clouds'),
(19, 'Prichard,US', '2023-08-12 19:00:26', 34.73, 41.73, 62, 1016, 10, 5, 0.45, 35.57, 33.31, 30.7388, -88.0789, 'Clear'),
(20, 'Prichard,US', '2023-08-13 06:21:33', 29.11, 36.11, 86, 1016, 10, 210, 2.06, 29.95, 27.08, 30.7388, -88.0789, 'Clear'),
(21, 'Bhaktapur,NP', '2023-08-13 06:21:46', 22.08, 22.95, 100, 1010, 2, 200, 2.06, 22.08, 21.54, 27.6833, 85.4167, 'Clouds'),
(22, 'Prichard,US', '2023-08-13 06:51:45', 29.13, 36.13, 85, 1016, 10, 210, 2.06, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(23, 'Prichard,US', '2023-08-13 06:51:45', 29.13, 36.13, 85, 1016, 10, 210, 2.06, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(24, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(25, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(26, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(27, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(28, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(29, 'Prichard,US', '2023-08-13 07:01:25', 29.16, 36.13, 84, 1014, 10, 150, 1.5, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(30, 'Prichard,US', '2023-08-13 07:13:47', 29.16, 36.13, 84, 1015, 10, 200, 2.57, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(31, 'Prichard,US', '2023-08-13 07:13:47', 29.16, 36.13, 84, 1015, 10, 200, 2.57, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(32, 'Prichard,US', '2023-08-13 07:13:47', 29.16, 36.13, 84, 1015, 10, 200, 2.57, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(33, 'Prichard,US', '2023-08-13 07:13:47', 29.16, 36.13, 84, 1015, 10, 200, 2.57, 29.99, 27.08, 30.7388, -88.0789, 'Clear'),
(34, 'Prichard,US', '2023-08-13 07:45:55', 29.07, 36.07, 85, 1015, 10, 200, 2.57, 29.99, 26.77, 30.7388, -88.0789, 'Clear'),
(35, 'Prichard,US', '2023-08-13 08:33:53', 28.86, 35.43, 85, 1015, 10, 220, 2.06, 29.99, 26.77, 30.7388, -88.0789, 'Clear'),
(36, 'Timi,CY', '2023-08-13 08:34:01', 28.65, 30.59, 61, 1008, 10, 250, 1.54, 29.72, 28.65, 34.7316, 32.516, 'Clear'),
(37, 'Timi,CY', '2023-08-13 08:34:01', 28.65, 30.59, 61, 1008, 10, 250, 1.54, 29.72, 28.65, 34.7316, 32.516, 'Clear'),
(38, 'Bhaktapur,NP', '2023-08-13 08:28:43', 22.08, 22.64, 88, 1011, 5, 170, 1.54, 22.08, 21.54, 27.6833, 85.4167, 'Clouds'),
(39, 'Panama,PA', '2023-08-13 08:34:28', 25.93, 27.14, 98, 1010, 10, 248, 1.27, 26.69, 22.97, 9, -80, 'Rain'),
(40, 'London,GB', '2023-08-13 08:33:52', 16.63, 16.59, 86, 1012, 10, 220, 4.12, 17.75, 15.61, 51.5085, -0.1257, 'Clouds'),
(41, 'Panama,PA', '2023-08-13 09:04:41', 26.23, 26.23, 98, 1010, 10, 248, 1.27, 26.23, 24.08, 9, -80, 'Rain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `WeatherData`
--
ALTER TABLE `WeatherData`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `WeatherData`
--
ALTER TABLE `WeatherData`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
