-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2024 at 09:45 PM
-- Server version: 8.0.37-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btsProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `btsProject_Appointment`
--

CREATE TABLE `btsProject_Appointment` (
  `idAppointment` int NOT NULL,
  `dateAppointment` date DEFAULT NULL,
  `timeAppointment` time DEFAULT NULL,
  `reason` text,
  `idPatient` int DEFAULT NULL,
  `idDoctor` int DEFAULT NULL,
  `status` enum('pending','validated','canceled') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `btsProject_Appointment`
--

INSERT INTO `btsProject_Appointment` (`idAppointment`, `dateAppointment`, `timeAppointment`, `reason`, `idPatient`, `idDoctor`, `status`) VALUES
(1, '2023-12-03', NULL, 'Maux de têtes', 201, 102, 'validated'),
(2, '2023-12-05', '10:00:00', 'Nausées', 201, 102, 'canceled'),
(3, '2023-12-19', '15:50:00', 'TEST STATUS', 201, 102, 'validated'),
(4, '2023-12-15', '10:10:00', 'TEEEEEST', 201, 102, 'validated'),
(5, '2024-02-16', '10:10:00', 'Plaquette de frein', 201, 102, 'canceled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `btsProject_Appointment`
--
ALTER TABLE `btsProject_Appointment`
  ADD PRIMARY KEY (`idAppointment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `btsProject_Appointment`
--
ALTER TABLE `btsProject_Appointment`
  MODIFY `idAppointment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
