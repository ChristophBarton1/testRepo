-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Jul 2020 um 23:17
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `testcodereview`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `processingsystem`
--

CREATE TABLE `processingsystem` (
  `package_id` int(11) NOT NULL,
  `package_mail_deposited_date` date DEFAULT NULL,
  `package_mail_delivered_date` date DEFAULT NULL,
  `adress_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `processingsystem`
--

INSERT INTO `processingsystem` (`adress_name`, `first_name`) VALUES
('Avengersstreet 1', 'Ross'),
('Avengersstreet 1', 'Joe'),
('Avengersstreet 1', 'Monica'),
('Avengersstreet 1', 'Rachel'),
('Wehlistraße 16', 'Ross'),
('Wehlistraße 16', 'Joe'),
('Wehlistraße 16', 'Monica'),
('Wehlistraße 16', 'Rachel'),
('Space Galaxy Street', 'Ross'),
('Space Galaxy Street', 'Joe'),
('Space Galaxy Street', 'Monica'),
('Space Galaxy Street', 'Rachel'),
('Yemen Street', 'Ross'),
('Yemen Street', 'Joe'),
('Yemen Street', 'Monica'),
('Yemen Street', 'Rachel'),
('Space Street 17', 'Ross'),
('Space Street 17', 'Joe'),
('Space Street 17', 'Monica'),
('Space Street 17', 'Rachel');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD PRIMARY KEY (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
