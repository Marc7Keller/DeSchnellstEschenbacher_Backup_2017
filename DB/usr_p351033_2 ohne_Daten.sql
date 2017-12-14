-- phpMyAdmin SQL Dump
-- version 4.2.13.3
-- http://www.phpmyadmin.net
--
-- Host: db4553.mydbserver.com
-- Erstellungszeit: 14. Dez 2017 um 19:28
-- Server Version: 5.6.33
-- PHP-Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `usr_p351033_2`
-- 
   DROP DATABASE IF EXISTS usr_p351033_2;
   CREATE DATABASE usr_p351033_2;
   USE usr_p351033_2;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `track_length` int(11) NOT NULL,
  `year_of_birth_start` int(11) DEFAULT NULL,
  `year_of_birth_end` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `fs_event` int(11) NOT NULL,
  `Plausch` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `number_of_students` int(11) NOT NULL,
  `school` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `fs_teacher` int(11) NOT NULL,
  `fs_event` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`event_id` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `laptimes`
--

CREATE TABLE IF NOT EXISTS `laptimes` (
`laptimes_id` int(11) NOT NULL,
  `first_lap` float DEFAULT NULL,
  `second_lap` float DEFAULT NULL,
  `fs_participant` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
`participant_id` int(11) NOT NULL,
  `fs_person` int(11) NOT NULL,
  `fs_class` int(11) DEFAULT NULL,
  `fs_category` int(11) NOT NULL,
  `fs_event` int(11) NOT NULL,
  `start_number` int(11) DEFAULT '0',
  `late_registration` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE IF NOT EXISTS `person` (
`person_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `year_of_birth` year(4) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
`teacher_id` int(11) NOT NULL,
  `fs_person` int(11) NOT NULL,
  `fs_event` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'rootdse', 1),
(2, 'Start', 'start', 5),
(3, 'Zeit', 'zeit', 4),
(4, 'Erfassung', 'erfassung', 2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indizes für die Tabelle `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`class_id`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indizes für die Tabelle `laptimes`
--
ALTER TABLE `laptimes`
 ADD PRIMARY KEY (`laptimes_id`);

--
-- Indizes für die Tabelle `participants`
--
ALTER TABLE `participants`
 ADD PRIMARY KEY (`participant_id`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`person_id`);

--
-- Indizes für die Tabelle `teacher`
--
ALTER TABLE `teacher`
 ADD PRIMARY KEY (`teacher_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `class`
--
ALTER TABLE `class`
MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `laptimes`
--
ALTER TABLE `laptimes`
MODIFY `laptimes_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT für Tabelle `participants`
--
ALTER TABLE `participants`
MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=340;
--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=396;
--
-- AUTO_INCREMENT für Tabelle `teacher`
--
ALTER TABLE `teacher`
MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
