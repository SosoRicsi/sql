-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 05. 11:45
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fb_chalange`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `pfp` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `post`
--

INSERT INTO `post` (`ID`, `username`, `Date`, `content`, `userid`, `pfp`) VALUES
(60, 'Admin', '22-11-03 01:18', 'Valami', '35937', 'nopicture.png'),
(67, 'Agresszív Kismalac (Flóra)', '22-11-03 02:11', 'Valami Kismalac', '637', 'makeitmeme_dYLgr.png'),
(68, 'Ricsike', '22-11-03 02:16', 'Poszt', '9305', 'nopicture.png'),
(75, 'Admin', '22-11-04 05:10', 'Ahjj', '35937', 'nopicture.png'),
(76, 'Admin', '22-11-04 05:46', 'Ha van krumpli', '35937', 'nopicture.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reactions`
--

CREATE TABLE `reactions` (
  `ID` int(11) NOT NULL,
  `postid` varchar(500) NOT NULL,
  `posterid` varchar(500) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `userid` varchar(5000) NOT NULL,
  `password` varchar(500) NOT NULL,
  `registered` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `pfp` varchar(3072) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `username`, `userid`, `password`, `registered`, `role`, `pfp`) VALUES
(26, 'Ricsike', '9305', '8a97dc9deefa91be2c85a62d7a7276bd', '0000-00-00 00:00:00', 'user', 'nopicture.png'),
(27, 'Admin', '35937', 'e3afed0047b08059d0fada10f400c1e5', '0000-00-00 00:00:00', 'admin', 'nopicture.png'),
(53, 'Teszt', '42903', 'a92b60ddc579a73936574438aa1112cf', '2022-11-03 01:22>pm', 'user', 'Képernyőkép 2022-09-12 214812.png'),
(58, 'Nyanya', '19148', '24e4b3ecb6310d47d38c68da297c5c5b', '2022-11-03 01:41>pm', 'user', '16674792473647878740868684823899.jpg'),
(59, 'Agresszív Kismalac (Flóra)', '637', '95cc64dd2825f9df13ec4ad683ecf339', '2022-11-03 01:42>pm', 'user', 'makeitmeme_dYLgr.png');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT a táblához `reactions`
--
ALTER TABLE `reactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
