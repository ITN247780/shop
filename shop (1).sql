-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 29. Mrz 2022 um 17:52
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `shop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `Artikelnummer` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Anzahl` int(11) NOT NULL,
  `Preis` float NOT NULL,
  `Beschreibung` text NOT NULL,
  `Thumb` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`Artikelnummer`, `Name`, `Anzahl`, `Preis`, `Beschreibung`, `Thumb`) VALUES
(100, 'Tastatur', 100, 35.99, 'LOGITECH \r\nTastatur mit 101 Tasten \r\nmit Beleuchtung', 'tast.png'),
(101, 'Maus', 100, 15.99, 'Logitech Maus mit Mausrad und schnelle', 'maus.png'),
(102, 'Stuhl', 100, 115.99, 'Bürostuhl für jedes Büro geeignet', 'büro.jpg'),
(103, 'Tisch', 100, 70.99, 'Tisch für Büro', 'bürotisch.jpg'),
(104, 'Pc', 100, 400.99, 'Highend Pc', 'pc.jpg'),
(105, 'Scanner', 150, 300.99, 'Scanner für alle Zwecke', 'scanner.jpg');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`Artikelnummer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
