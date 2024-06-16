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
-- Structure for view `btsProject_User_Patient`
--

CREATE VIEW `btsProject_User_Patient`  AS SELECT `btsProject_User`.`idUser` AS `idUser`, `btsProject_User`.`firstName` AS `firstName`, `btsProject_User`.`lastName` AS `lastName`, `btsProject_User`.`age` AS `age`, `btsProject_User`.`mail` AS `mail`, `btsProject_User`.`address` AS `address`, `btsProject_User`.`password` AS `password`, `btsProject_User`.`role` AS `role` FROM `btsProject_User` WHERE (`btsProject_User`.`role` = 'patient') ;

--
-- VIEW `btsProject_User_Patient`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
