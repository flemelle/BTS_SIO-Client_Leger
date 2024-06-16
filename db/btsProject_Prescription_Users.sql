-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2024 at 09:46 PM
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
-- Structure for view `btsProject_Prescription_Users`
--

CREATE  VIEW `btsProject_Prescription_Users`  AS SELECT `btsProject_Prescription`.`idPrescription` AS `idPrescription`, `btsProject_Prescription`.`datePrescription` AS `datePrescription`, `btsProject_Prescription`.`content` AS `content`, `btsProject_User_Doctor`.`idUser` AS `idDoctor`, `btsProject_User_Doctor`.`firstName` AS `doctorFirstName`, `btsProject_User_Doctor`.`lastName` AS `doctorLastName`, `btsProject_User_Patient`.`idUser` AS `idPatient`, `btsProject_User_Patient`.`firstName` AS `patientFirstName`, `btsProject_User_Patient`.`lastName` AS `patientLastName` FROM ((`btsProject_Prescription` join `btsProject_User_Patient` on((`btsProject_User_Patient`.`idUser` = `btsProject_Prescription`.`idPatient`))) join `btsProject_User_Doctor` on((`btsProject_User_Doctor`.`idUser` = `btsProject_Prescription`.`idDoctor`))) ;

--
-- VIEW `btsProject_Prescription_Users`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
