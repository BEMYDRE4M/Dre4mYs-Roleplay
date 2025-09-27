-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2025 at 08:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dre4mysroleplay`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Grund` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cardata`
--

CREATE TABLE `cardata` (
  `ID` int NOT NULL,
  `Besitzer` text NOT NULL,
  `Slot` int NOT NULL,
  `Autoid` int NOT NULL,
  `X` text NOT NULL,
  `Y` text NOT NULL,
  `Z` text NOT NULL,
  `Rotation` text NOT NULL,
  `Benzin` int NOT NULL,
  `R` int NOT NULL,
  `G` int NOT NULL,
  `B` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ganggebiete`
--

CREATE TABLE `ganggebiete` (
  `ID` int NOT NULL,
  `Besitzer` text NOT NULL,
  `Name` text NOT NULL,
  `Posx1` varchar(50) NOT NULL,
  `Posy1` varchar(50) NOT NULL,
  `Posx2` varchar(50) NOT NULL,
  `Posy2` varchar(50) NOT NULL,
  `Tkx` varchar(50) NOT NULL,
  `Tky` varchar(50) NOT NULL,
  `Tkz` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` varchar(255) NOT NULL,
  `Preis` varchar(255) DEFAULT NULL,
  `Besitzer` varchar(255) DEFAULT NULL,
  `Interior` varchar(255) DEFAULT NULL,
  `Locked` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `z` varchar(255) DEFAULT NULL,
  `INTX` varchar(255) DEFAULT NULL,
  `INTY` varchar(255) DEFAULT NULL,
  `INTZ` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kassen`
--

CREATE TABLE `kassen` (
  `ID` int NOT NULL,
  `Besitzer` int NOT NULL,
  `Geld` int NOT NULL,
  `Drogen` varchar(50) NOT NULL,
  `Materialien` varchar(50) NOT NULL,
  `Waffenpakete` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objekte`
--

CREATE TABLE `objekte` (
  `ID` int NOT NULL,
  `Model` int NOT NULL,
  `Positionx` varchar(50) NOT NULL,
  `Positiony` varchar(50) NOT NULL,
  `Positionz` varchar(50) NOT NULL,
  `Rotation` int NOT NULL,
  `Besitzer` text NOT NULL,
  `Interior` int NOT NULL,
  `Dimension` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `ID` int NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Passwort` text NOT NULL,
  `Money` int NOT NULL,
  `Autoschein` int NOT NULL,
  `Motorradschein` int NOT NULL,
  `Lkwschein` int NOT NULL,
  `Helikopterschein` int NOT NULL,
  `Flugschein` int NOT NULL,
  `Bootschein` int NOT NULL,
  `Personalausweis` int NOT NULL,
  `Arbeitsgenehmigung` int NOT NULL,
  `Bankpin` int NOT NULL,
  `Bankmoney` int NOT NULL,
  `Level` int NOT NULL,
  `Erfahrungspunkte` int NOT NULL,
  `Spielzeit` int NOT NULL,
  `Hunger` int NOT NULL,
  `Adminrang` int NOT NULL,
  `Fraktion` int NOT NULL,
  `Fraktionrang` int NOT NULL,
  `Mats` int NOT NULL,
  `Drogen` int NOT NULL,
  `Matstransporter` int NOT NULL,
  `Drogentransporter` int NOT NULL,
  `Jobgehalt` int NOT NULL,
  `Wanteds` int NOT NULL,
  `Stvo` int NOT NULL,
  `Job` varchar(30) NOT NULL,
  `Flugjobskills` int NOT NULL,
  `Knastzeit` int NOT NULL,
  `Prisontime` int NOT NULL,
  `Skin` int NOT NULL,
  `Waffenschein` int NOT NULL,
  `Motel` int NOT NULL,
  `Mute` int NOT NULL,
  `Handy` int NOT NULL,
  `Telefonnummer` int NOT NULL,
  `Infobox` int NOT NULL,
  `Pizzajobskills` int NOT NULL,
  `Status` varchar(30) NOT NULL DEFAULT 'Neuling',
  `SpawnX` varchar(50) NOT NULL,
  `SpawnY` varchar(50) NOT NULL,
  `SpawnZ` varchar(50) NOT NULL,
  `Housekey` int NOT NULL DEFAULT '0',
  `Holzjobskillpunkte` int NOT NULL,
  `Eichenholz` int NOT NULL,
  `Birkenholz` int NOT NULL,
  `Interior` varchar(50) NOT NULL,
  `AchUmgezogen` int NOT NULL,
  `AchFahrzeug` int NOT NULL,
  `Ach1Million` int NOT NULL,
  `AchKonto` int NOT NULL,
  `AchGestorben` int NOT NULL,
  `AchCarlicence` int NOT NULL,
  `AchFraktion` int NOT NULL,
  `AchLevel5` int NOT NULL,
  `AchBonusshopbuy` int NOT NULL,
  `Ach25TausendEXP` int NOT NULL,
  `AchMiniMission` int NOT NULL,
  `AchPayday` int NOT NULL,
  `Ach5Hours` int NOT NULL,
  `AchHouse` int NOT NULL,
  `AchSpawn` int NOT NULL DEFAULT '0',
  `AchHolz` int NOT NULL DEFAULT '0',
  `ImHaus` int NOT NULL DEFAULT '0',
  `Kills` int NOT NULL,
  `Tode` int NOT NULL,
  `Gwsgestartet` int NOT NULL,
  `Intro` int NOT NULL,
  `Tankwartjobskills` int NOT NULL,
  `Language` int NOT NULL,
  `Objekt1704` int NOT NULL,
  `Objekt1705` int NOT NULL,
  `Objekt1708` int NOT NULL,
  `Objekt1711` int NOT NULL,
  `Objekt1720` int NOT NULL,
  `Objekt1723` int NOT NULL,
  `Objekt1726` int NOT NULL,
  `Objekt1727` int NOT NULL,
  `Objekt1728` int NOT NULL,
  `Objekt1729` int NOT NULL,
  `Objekt1739` int NOT NULL,
  `Objekt1825` int NOT NULL,
  `Objekt1896` int NOT NULL,
  `Objekt1998` int NOT NULL,
  `Objekt2096` int NOT NULL,
  `Objekt2313` int NOT NULL,
  `Objekt1518` int NOT NULL,
  `Objekt1752` int NOT NULL,
  `Objekt1786` int NOT NULL,
  `Objekt16377` int NOT NULL,
  `Objekt638` int NOT NULL,
  `Objekt970` int NOT NULL,
  `Objekt17037` int NOT NULL,
  `Objekt2205` int NOT NULL,
  `Dimension` int NOT NULL,
  `Serial` varchar(50) NOT NULL,
  `Objekt2526` int NOT NULL,
  `Objekt2514` int NOT NULL,
  `Objekt2527` int NOT NULL,
  `Objekt2524` int NOT NULL,
  `Geldtransporter` int NOT NULL,
  `Versicherung` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cardata`
--
ALTER TABLE `cardata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ganggebiete`
--
ALTER TABLE `ganggebiete`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kassen`
--
ALTER TABLE `kassen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objekte`
--
ALTER TABLE `objekte`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardata`
--
ALTER TABLE `cardata`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ganggebiete`
--
ALTER TABLE `ganggebiete`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kassen`
--
ALTER TABLE `kassen`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objekte`
--
ALTER TABLE `objekte`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
