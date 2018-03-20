-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2018 at 07:50 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tngf-dimensional`
--
CREATE DATABASE IF NOT EXISTS `tngf-dimensional` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tngf-dimensional`;

-- --------------------------------------------------------

--
-- Table structure for table `goalsbyplayerbymatch`
--

CREATE TABLE `goalsbyplayerbymatch` (
  `MinuteScored` int(11) NOT NULL,
  `SecondScored` int(11) NOT NULL,
  `GID` int(11) NOT NULL,
  `TeamKey` int(11) NOT NULL,
  `PlayerKey` int(11) NOT NULL,
  `LeagueKey` int(11) NOT NULL,
  `MatchKey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goalsbyplayerbymatch`
--

INSERT INTO `goalsbyplayerbymatch` (`MinuteScored`, `SecondScored`, `GID`, `TeamKey`, `PlayerKey`, `LeagueKey`, `MatchKey`) VALUES
(15, 51, 1, 1, 1, 1, 1),
(35, 11, 2, 1, 2, 1, 1),
(87, 9, 3, 2, 3, 1, 1),
(10, 55, 4, 3, 5, 2, 2),
(44, 15, 5, 3, 5, 2, 2),
(60, 36, 6, 3, 6, 2, 2),
(80, 19, 7, 4, 7, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `goalsbyteambymatch`
--

CREATE TABLE `goalsbyteambymatch` (
  `TotalGoalsScored` int(11) NOT NULL,
  `TeamKey` int(11) NOT NULL,
  `MatchKey` int(11) NOT NULL,
  `LeagueKey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goalsbyteambymatch`
--

INSERT INTO `goalsbyteambymatch` (`TotalGoalsScored`, `TeamKey`, `MatchKey`, `LeagueKey`) VALUES
(2, 1, 1, 1),
(1, 2, 1, 1),
(3, 3, 2, 2),
(1, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `LeagueKey` int(11) NOT NULL,
  `LeagueID` int(11) NOT NULL,
  `LeagueName` varchar(50) NOT NULL,
  `LeagueCountry` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`LeagueKey`, `LeagueID`, `LeagueName`, `LeagueCountry`) VALUES
(1, 1, 'Premier League', 'England'),
(2, 2, 'La Liga', 'Spain'),
(3, 3, 'Series A', 'Italy'),
(4, 4, 'Bundesliga', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `match_details`
--

CREATE TABLE `match_details` (
  `MatchKey` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `MatchDate` date NOT NULL,
  `MatchLeagueName` varchar(50) NOT NULL,
  `MatchHomeTeamName` varchar(50) NOT NULL,
  `MatchAwayTeamName` varchar(50) NOT NULL,
  `MatchDayOfWeek` int(11) NOT NULL,
  `MatchDayOfMonth` int(11) NOT NULL,
  `MatchMonth` int(11) NOT NULL,
  `MatchYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_details`
--

INSERT INTO `match_details` (`MatchKey`, `MatchID`, `MatchDate`, `MatchLeagueName`, `MatchHomeTeamName`, `MatchAwayTeamName`, `MatchDayOfWeek`, `MatchDayOfMonth`, `MatchMonth`, `MatchYear`) VALUES
(1, 1, '2017-10-25', 'Premier League', 'Manchester United', 'Chelsea', 4, 25, 10, 2017),
(2, 2, '2017-11-05', 'La Liga', 'Real Madrid', 'Barcelona', 1, 5, 11, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PlayerKey` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `PlayerFirstName` varchar(50) NOT NULL,
  `PlayerLastName` varchar(50) NOT NULL,
  `PlayerNickname` varchar(50) DEFAULT NULL,
  `PlayerNumber` int(11) NOT NULL,
  `PlayerTeamName` varchar(50) NOT NULL,
  `PlayerPosition` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PlayerKey`, `PlayerID`, `PlayerFirstName`, `PlayerLastName`, `PlayerNickname`, `PlayerNumber`, `PlayerTeamName`, `PlayerPosition`) VALUES
(1, 1, 'Paul', 'Pogba', NULL, 6, 'Manchester United', NULL),
(2, 2, 'Alexis', 'Sanchez', NULL, 7, 'Manchester United', NULL),
(3, 3, 'Eden', 'Hazard', NULL, 10, 'Chelsea', NULL),
(4, 4, 'N\'Golo', 'Kante', NULL, 7, 'Chelsea', NULL),
(5, 5, 'Lionel', 'Messi', NULL, 10, 'Barcelona', NULL),
(6, 6, 'Luis', 'Suarez', NULL, 9, 'Barcelona', NULL),
(7, 7, 'Cristiano', 'Ronaldo', NULL, 7, 'Real Madrid', NULL),
(8, 8, 'Gareth', 'Bale', NULL, 11, 'Real Madrid', NULL),
(9, 9, 'Gonzalo', 'Higuain', NULL, 9, 'Juventus', NULL),
(10, 10, 'Paulo', 'Dybala', NULL, 10, 'Juventus', NULL),
(11, 11, 'Leonardo', 'Bonucci', NULL, 19, 'AC Milan', NULL),
(12, 12, 'Gianluigi', 'Donnarumma', NULL, 99, 'AC Milan', NULL),
(13, 13, 'Robert', 'Lewandowski', NULL, 9, 'FC Bayern', NULL),
(14, 14, 'Arjen', 'Robben', NULL, 10, 'FC Bayern', NULL),
(15, 15, 'Mario', 'Gotze', NULL, 10, 'Dortmund', NULL),
(16, 16, 'Marco', 'Reus', NULL, 11, 'Dortmund', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamKey` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(50) NOT NULL,
  `TeamCity` varchar(50) NOT NULL,
  `TeamLeagueName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamKey`, `TeamID`, `TeamName`, `TeamCity`, `TeamLeagueName`) VALUES
(1, 1, 'Manchester United', 'Manchester', 'Premier League'),
(2, 2, 'Chelsea', 'London', 'Premier League'),
(3, 3, 'Barcelona', 'Barcelona', 'La Liga'),
(4, 4, 'Real Madrid', 'Madrid', 'La Liga'),
(5, 5, 'Juventus', 'Turin', 'Series A'),
(6, 6, 'AC Milan', 'Milan', 'Series A'),
(7, 7, 'FC Bayern', 'Munich', 'Bundesliga'),
(8, 8, 'Dortmund', 'Dortmund', 'Bundesliga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goalsbyplayerbymatch`
--
ALTER TABLE `goalsbyplayerbymatch`
  ADD PRIMARY KEY (`GID`,`TeamKey`,`PlayerKey`,`LeagueKey`,`MatchKey`),
  ADD KEY `TeamKey` (`TeamKey`),
  ADD KEY `PlayerKey` (`PlayerKey`),
  ADD KEY `LeagueKey` (`LeagueKey`),
  ADD KEY `MatchKey` (`MatchKey`);

--
-- Indexes for table `goalsbyteambymatch`
--
ALTER TABLE `goalsbyteambymatch`
  ADD PRIMARY KEY (`TeamKey`,`MatchKey`,`LeagueKey`),
  ADD KEY `MatchKey` (`MatchKey`),
  ADD KEY `LeagueKey` (`LeagueKey`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`LeagueKey`);

--
-- Indexes for table `match_details`
--
ALTER TABLE `match_details`
  ADD PRIMARY KEY (`MatchKey`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerKey`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goalsbyplayerbymatch`
--
ALTER TABLE `goalsbyplayerbymatch`
  MODIFY `GID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `LeagueKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `match_details`
--
ALTER TABLE `match_details`
  MODIFY `MatchKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `PlayerKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TeamKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `goalsbyplayerbymatch`
--
ALTER TABLE `goalsbyplayerbymatch`
  ADD CONSTRAINT `goalsbyplayerbymatch_ibfk_1` FOREIGN KEY (`TeamKey`) REFERENCES `team` (`TeamKey`),
  ADD CONSTRAINT `goalsbyplayerbymatch_ibfk_2` FOREIGN KEY (`PlayerKey`) REFERENCES `player` (`PlayerKey`),
  ADD CONSTRAINT `goalsbyplayerbymatch_ibfk_3` FOREIGN KEY (`LeagueKey`) REFERENCES `league` (`LeagueKey`),
  ADD CONSTRAINT `goalsbyplayerbymatch_ibfk_4` FOREIGN KEY (`MatchKey`) REFERENCES `match_details` (`MatchKey`);

--
-- Constraints for table `goalsbyteambymatch`
--
ALTER TABLE `goalsbyteambymatch`
  ADD CONSTRAINT `goalsbyteambymatch_ibfk_1` FOREIGN KEY (`TeamKey`) REFERENCES `team` (`TeamKey`),
  ADD CONSTRAINT `goalsbyteambymatch_ibfk_2` FOREIGN KEY (`MatchKey`) REFERENCES `match_details` (`MatchKey`),
  ADD CONSTRAINT `goalsbyteambymatch_ibfk_3` FOREIGN KEY (`LeagueKey`) REFERENCES `league` (`LeagueKey`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
