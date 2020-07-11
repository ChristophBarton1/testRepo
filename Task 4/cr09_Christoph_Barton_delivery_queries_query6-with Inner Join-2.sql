-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Jul 2020 um 23:27
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
-- Tabellenstruktur für Tabelle `delivery_service_company`
--

CREATE TABLE `delivery_service_company` (
  `package_id` int(11) NOT NULL,
  `employee_first_name` varchar(55) DEFAULT NULL,
  `employee_last_name` varchar(55) DEFAULT NULL,
  `package_processing_date` date DEFAULT NULL,
  `fk_employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `delivery_service_company`
--

INSERT INTO `delivery_service_company` (`adress_name`, `package_processing_date`) VALUES
('Avengersstreet 1', '2020-05-01'),
('Avengersstreet 1', '2020-04-01'),
('Avengersstreet 1', '2020-03-01'),
('Avengersstreet 1', '2020-02-01'),
('Wehlistraße 16', '2020-05-01'),
('Wehlistraße 16', '2020-04-01'),
('Wehlistraße 16', '2020-03-01'),
('Wehlistraße 16', '2020-02-01'),
('Space Galaxy Street', '2020-05-01'),
('Space Galaxy Street', '2020-04-01'),
('Space Galaxy Street', '2020-03-01'),
('Space Galaxy Street', '2020-02-01'),
('YemenStreet', '2020-05-01'),
('YemenStreet', '2020-04-01'),
('YemenStreet', '2020-03-01'),
('YemenStreet', '2020-02-01'),
('Space Street 17', '2020-05-01'),
('Space Street 17', '2020-04-01'),
('Space Street 17', '2020-03-01'),
('Space Street 17', '2020-02-01');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `delivery_service_company`
--
ALTER TABLE `delivery_service_company`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `fk_employee_id` (`fk_employee_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `delivery_service_company`
--
ALTER TABLE `delivery_service_company`
  ADD CONSTRAINT `delivery_service_company_ibfk_1` FOREIGN KEY (`fk_employee_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `delivery_service_company_ibfk_2` FOREIGN KEY (`fk_employee_id`) REFERENCES `processingsystem` (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
