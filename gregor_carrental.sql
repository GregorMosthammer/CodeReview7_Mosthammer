-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Sep 2017 um 15:23
-- Server-Version: 10.1.26-MariaDB
-- PHP-Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `gregor_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fuel` varchar(55) DEFAULT NULL,
  `horsepower` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_id`, `name`, `price`, `fuel`, `horsepower`) VALUES
(1, 'Audi A3', 70, 'petrol', 125),
(2, 'Vw Golf', 60, 'diesel', 80),
(3, 'Vw Beatle', 55, 'diesel', 110),
(4, 'BMW M3', 110, 'petrol', 160),
(5, 'Seat Ibiza', 77, 'diesel', 80),
(6, 'alfa romeo', 98, 'petrol', 83),
(7, 'Honda', 55, 'diesel', 78),
(8, 'Masarati Levante', 210, 'petrol', 199),
(9, 'porsche 911', 218, 'petrol', 221);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `paying`
--

CREATE TABLE `paying` (
  `paying_id` int(11) NOT NULL,
  `payment_method` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `paying`
--

INSERT INTO `paying` (`paying_id`, `payment_method`) VALUES
(1, 'credit card'),
(2, 'Paypal'),
(3, 'cash'),
(4, 'bitcoin'),
(5, 'skrill'),
(6, 'cash'),
(7, 'litcoin'),
(8, 'credit card'),
(9, 'credit card');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pick_up_location`
--

CREATE TABLE `pick_up_location` (
  `pick_up_location_id` int(11) NOT NULL,
  `pickup_address` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `pick_up_location`
--

INSERT INTO `pick_up_location` (`pick_up_location_id`, `pickup_address`) VALUES
(1, 'Votivpark-Garage'),
(2, 'Votivpark-Garage'),
(3, 'Votivpark-Garage'),
(4, 'Votivpark-Garage'),
(5, 'Votivpark-Garage'),
(6, 'Votivpark-Garage'),
(7, 'Votivpark-Garage'),
(8, 'Votivpark-Garage'),
(9, 'Votivpark-Garage');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `second_name` varchar(55) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `second_name`, `address`, `email`) VALUES
(1, 'Gregor', 'Mosthammer', 'Kellerberg 7', 'g.mosthammer@gmail.com'),
(2, 'Max', 'Mustermann', 'Test Straße 2', 'max.mustermann@gmail.com'),
(3, 'Susi', 'Kaiser', 'Kaiser Allee 13', 'kaiser.susi@yahoo.de'),
(4, 'Mathias', 'Herz', 'Hauptstraße 1', 'alfi12@gmx.at'),
(5, 'Judith', 'Stamm', 'Getreidegasse 87', NULL),
(6, 'Josef', 'Stamm', 'Getreidegasse 87', 'josef.stamm@aon.at'),
(7, 'Florian', 'Mach', 'Ottakringerstraße 192', NULL),
(8, 'Mathias', 'Böhler', 'Lassalle Straße 2', NULL),
(9, 'Valentin', 'Rutar', 'Ritter Zoppelstraße 6', 'v.rutar94@hotmail.com');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `webside`
--

CREATE TABLE `webside` (
  `webside_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `webside`
--

INSERT INTO `webside` (`webside_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indizes für die Tabelle `paying`
--
ALTER TABLE `paying`
  ADD PRIMARY KEY (`paying_id`);

--
-- Indizes für die Tabelle `pick_up_location`
--
ALTER TABLE `pick_up_location`
  ADD PRIMARY KEY (`pick_up_location_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indizes für die Tabelle `webside`
--
ALTER TABLE `webside`
  ADD PRIMARY KEY (`webside_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `paying`
--
ALTER TABLE `paying`
  MODIFY `paying_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `pick_up_location`
--
ALTER TABLE `pick_up_location`
  MODIFY `pick_up_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `webside`
--
ALTER TABLE `webside`
  MODIFY `webside_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `webside` (`webside_id`);

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `car` (`car_id`);

--
-- Constraints der Tabelle `paying`
--
ALTER TABLE `paying`
  ADD CONSTRAINT `paying_ibfk_1` FOREIGN KEY (`paying_id`) REFERENCES `user` (`user_id`);

--
-- Constraints der Tabelle `pick_up_location`
--
ALTER TABLE `pick_up_location`
  ADD CONSTRAINT `pick_up_location_ibfk_1` FOREIGN KEY (`pick_up_location_id`) REFERENCES `paying` (`paying_id`);

--
-- Constraints der Tabelle `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `orders` (`orders_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
