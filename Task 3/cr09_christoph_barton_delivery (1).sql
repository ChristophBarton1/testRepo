-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Jul 2020 um 00:38
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
-- Datenbank: `cr09_christoph_barton_delivery`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `adress_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `adress_name`) VALUES
(1, 'Clint', 'Barton', 'Avengersstreet 1'),
(2, 'Christoph', 'Barton', 'Wehlistraße 16'),
(3, 'Darth', 'Vader', 'Space Galaxy Street'),
(4, 'Chander', 'Bing', 'YemenStreet'),
(5, 'Anakin', 'Skywalker', 'Space Street 17');

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

INSERT INTO `delivery_service_company` (`package_id`, `employee_first_name`, `employee_last_name`, `package_processing_date`, `fk_employee_id`) VALUES
(1, 'Sophie', 'Bauer', '2020-05-01', 1),
(2, 'Sarah', 'Schneider', '2020-04-01', 2),
(3, 'Daniel', 'Kasal', '2020-03-01', 3),
(4, 'Martin', 'Ali', '2020-02-01', 4);

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

INSERT INTO `processingsystem` (`package_id`, `package_mail_deposited_date`, `package_mail_delivered_date`, `adress_name`) VALUES
(1, '2020-05-01', '2020-05-02', 'Avengersstreet 1'),
(2, '2020-04-01', '2020-05-01', 'Wehlistraße 16'),
(3, '2020-03-01', '2020-05-01', 'Space Galaxy Street'),
(4, '2020-02-01', '2020-05-01', 'Yemen Street'),
(5, '2020-05-04', '2020-05-04', 'Space Street 17');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `fk_post_code` int(15) DEFAULT NULL,
  `adress` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `city_name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `first_name`, `last_name`, `fk_post_code`, `adress`, `country`, `city_name`) VALUES
(1, 'Ross', 'Geller', 1200, 'Wehlistraße 16', 'Austria', 'Vienna'),
(2, 'Joe', 'Tribiani', 10001, 'NewYorkStreet2', 'USA', 'NewYork'),
(3, 'Monica', 'Geller', 1200, 'Space Galaxy St', 'Austria', 'Vienna'),
(4, 'Rachel', 'Green', 1200, 'Friedrich Straß', 'Austria', 'Vienna');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `delivery_service_company`
--
ALTER TABLE `delivery_service_company`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `fk_employee_id` (`fk_employee_id`);

--
-- Indizes für die Tabelle `processingsystem`
--
ALTER TABLE `processingsystem`
  ADD PRIMARY KEY (`package_id`);

--
-- Indizes für die Tabelle `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`),
  ADD KEY `fk_post_code` (`fk_post_code`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `delivery_service_company`
--
ALTER TABLE `delivery_service_company`
  ADD CONSTRAINT `delivery_service_company_ibfk_1` FOREIGN KEY (`fk_employee_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `delivery_service_company_ibfk_2` FOREIGN KEY (`fk_employee_id`) REFERENCES `processingsystem` (`package_id`);

--
-- Constraints der Tabelle `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`fk_post_code`) REFERENCES `processingsystem` (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
