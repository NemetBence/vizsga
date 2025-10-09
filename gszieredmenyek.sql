-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Okt 09. 09:19
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gszieredmenyek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapatok`
--

CREATE TABLE `csapatok` (
  `csapatId` int(11) NOT NULL,
  `diakId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapat_diak_kotes`
--

CREATE TABLE `csapat_diak_kotes` (
  `evId` int(11) NOT NULL,
  `csapatId` int(11) DEFAULT NULL,
  `versenyId` int(11) NOT NULL,
  `szamId` int(11) DEFAULT NULL,
  `tipusId` int(11) DEFAULT NULL,
  `helyezes` int(11) DEFAULT NULL,
  `kcsId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `csapat_diak_kotes`
--

INSERT INTO `csapat_diak_kotes` (`evId`, `csapatId`, `versenyId`, `szamId`, `tipusId`, `helyezes`, `kcsId`) VALUES
(1, NULL, 1, 1, NULL, 1, NULL),
(1, NULL, 2, 2, NULL, 2, NULL),
(1, NULL, 1, 3, NULL, 1, NULL),
(1, NULL, 1, 4, NULL, 2, NULL),
(2, NULL, 3, 5, 1, 2, 2),
(2, NULL, 3, 6, 1, 3, NULL),
(2, NULL, 2, 2, NULL, 3, NULL),
(3, NULL, 5, 22, NULL, 3, 1),
(3, NULL, 6, 11, NULL, 3, NULL),
(3, NULL, 6, 12, NULL, 2, NULL),
(3, NULL, 6, 3, NULL, 1, NULL),
(3, NULL, 7, NULL, NULL, 3, NULL),
(3, NULL, 8, 2, NULL, 1, NULL),
(3, NULL, 9, NULL, 1, 2, NULL),
(4, NULL, 3, 15, 2, 1, NULL),
(4, NULL, 11, NULL, NULL, 3, NULL),
(4, NULL, 5, 16, NULL, 1, NULL),
(4, NULL, 12, 17, NULL, 3, NULL),
(5, NULL, 5, 16, NULL, 3, NULL),
(6, NULL, 13, 18, NULL, 2, 1),
(7, NULL, 15, NULL, NULL, 1, NULL),
(7, NULL, 16, NULL, NULL, 6, NULL),
(8, NULL, 23, NULL, NULL, 2, NULL),
(8, NULL, 23, NULL, NULL, 8, NULL),
(8, NULL, 3, 21, 1, 1, 1),
(8, NULL, 26, NULL, NULL, 1, NULL),
(8, NULL, 27, NULL, NULL, 1, NULL),
(8, NULL, 28, NULL, NULL, 2, 4),
(8, NULL, 28, NULL, NULL, 3, 5),
(8, NULL, 3, 22, 1, 3, 4),
(8, NULL, 3, 22, 1, 3, 5),
(9, NULL, 34, NULL, NULL, 3, NULL),
(9, NULL, 3, 35, 1, 2, NULL),
(9, NULL, 35, NULL, NULL, 3, NULL),
(9, NULL, 36, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diakok`
--

CREATE TABLE `diakok` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `diakok`
--

INSERT INTO `diakok` (`id`, `nev`) VALUES
(35, 'Ancsin Viktor'),
(44, 'Ardeleán László'),
(10, 'Bíró Géza'),
(11, 'Boros Péter'),
(29, 'Bukva Viktor'),
(8, 'Darabos Pál'),
(45, 'Dohány Gergely'),
(36, 'Ébellai Géza'),
(24, 'Farkas Attila'),
(15, 'Fekete Mónika'),
(54, 'Filyó Tibor'),
(37, 'Finna Sándor'),
(52, 'Furus Calix'),
(46, 'Gál Péter'),
(38, 'Gulyás Adrián'),
(34, 'Hurguly Attila'),
(1, 'Huszár Endre'),
(16, 'Jegyinák Attila'),
(7, 'Klampeczki Zsolt'),
(39, 'Kmotricza Igor'),
(48, 'Kocsis Tamás'),
(21, 'Kovács Csaba'),
(17, 'Kovács Gábor'),
(3, 'Krizsán Attila'),
(40, 'Laczkó László'),
(18, 'Laczó György'),
(32, 'Laurinyecz Gyöngyi'),
(2, 'Marton Balázs'),
(12, 'Michnay Balázs'),
(25, 'Molnár György'),
(14, 'Molnár László'),
(33, 'Molnár Sándor'),
(41, 'Nagy János'),
(42, 'Nagy Sándor'),
(19, 'Nemes Csaba'),
(49, 'Németh István'),
(23, 'Oláh Attila'),
(30, 'Palatinus László'),
(26, 'Palotai István Sándor'),
(53, 'Petró János'),
(27, 'Sajti Roland'),
(50, 'Sallai Károly'),
(43, 'Sebestyén István'),
(51, 'Skrabák Martin'),
(9, 'Somogyi Erzsébet'),
(31, 'Szabados László'),
(28, 'Szabó Lajos'),
(4, 'Szabó Tibor'),
(13, 'Szegedi Péter'),
(20, 'Szentesi Szabolcs'),
(47, 'Szilágyi Tamás'),
(5, 'Szirbik Sándor'),
(22, 'Túróczy Zoltán'),
(6, 'Vozár János');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dijak`
--

CREATE TABLE `dijak` (
  `id` int(11) NOT NULL,
  `dijNev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dijazottak`
--

CREATE TABLE `dijazottak` (
  `evId` int(11) NOT NULL,
  `dijId` int(11) NOT NULL,
  `diakId` int(11) NOT NULL,
  `leiras` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `egyebek`
--

CREATE TABLE `egyebek` (
  `id` int(11) NOT NULL,
  `tanevId` int(11) NOT NULL,
  `leiras` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `egyebek`
--

INSERT INTO `egyebek` (`id`, `tanevId`, `leiras`) VALUES
(1, 6, 'Énekkar - Magyar Kórusok és Zenekarok Szövetségének Oklevele'),
(2, 6, 'Énekkar - A legszebben megszóltatott népdalcsokor'),
(3, 6, 'Énekkar - Éneklő Ifjúság dicsérő oklevél'),
(4, 7, 'Énekkar (fiúkórus) - Éneklő Ifjúsági hangverseny ezüst minősítés és különdíj'),
(5, 7, 'Énekkar (vegyeskar) - Éneklő Ifjúsági hangverseny bronz minősítés'),
(6, 8, 'Énekkar (fiúkórus) - Fiúkórusok VI. Országos és Nemzetközi Találkozója díszoklevél'),
(7, 9, 'Énekkar - Kórusok Megyei Minősítő Versenye Aranyoklevél'),
(8, 9, 'Énekkar - Éneklő Ifjúság hangverseny arany minősítés'),
(9, 10, 'Énekkar (fiúkórus) - Éneklő Ifjúság hangverseny arany minősítés'),
(10, 13, 'GÉSZI tantestülete - Oklevél az Országos Műszaki Tanulmányi Versenyen elért eredményekért'),
(11, 32, 'Pályázat - \"Innovációs Díj 2021\" I. helyezett Kincses István, Mucha István és Paróczai Olivér, II. helyezett Magyar Balázs'),
(12, 8, 'Fekete Mónika - Arany János Balladamondó Verseny országos döntőse'),
(13, 10, 'Fekete Mónika - Szép Magyar Beszéd országos verseny Kazinczy-érem (1. hely)');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `garabonciasok`
--

CREATE TABLE `garabonciasok` (
  `evId` int(11) NOT NULL,
  `jeloltId` int(11) NOT NULL,
  `stab` varchar(255) NOT NULL DEFAULT 'nincs adat',
  `elertHely` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `garabonciasok`
--

INSERT INTO `garabonciasok` (`evId`, `jeloltId`, `stab`, `elertHely`) VALUES
(3, 3, 'nincs adat', NULL),
(5, 6, 'nincs adat', 'Diákpolgármester'),
(6, 21, 'nincs adat', 'Dik-alpolgármester'),
(7, 22, 'nincs adat', 'Diák-alpolgármester'),
(8, 23, 'nincs adat', NULL),
(9, 34, 'nincs adat', 'Diák-alpolgármester');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `korcsoportok_nemek`
--

CREATE TABLE `korcsoportok_nemek` (
  `id` int(11) NOT NULL,
  `knNev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `korcsoportok_nemek`
--

INSERT INTO `korcsoportok_nemek` (`id`, `knNev`) VALUES
(4, '(IV. kcs)'),
(5, '(V.kcs)'),
(2, 'férfi'),
(1, 'fiú'),
(3, 'lány'),
(7, 'női'),
(6, 'serdülő fiú');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanevek`
--

CREATE TABLE `tanevek` (
  `id` int(11) NOT NULL,
  `tanev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `tanevek`
--

INSERT INTO `tanevek` (`id`, `tanev`) VALUES
(1, '1989/90'),
(2, '1990/91'),
(3, '1991/92'),
(4, '1992/93'),
(5, '1993/94'),
(6, '1994/95'),
(7, '1995/96'),
(8, '1996/97'),
(9, '1997/98'),
(10, '1998/99'),
(11, '1999/2000'),
(12, '2000/01'),
(13, '2001/02'),
(14, '2002/03'),
(15, '2003/04'),
(16, '2004/05'),
(17, '2005/06'),
(18, '2006/07'),
(19, '2007/08'),
(20, '2008/09'),
(21, '2009/10'),
(22, '2010/11'),
(23, '2011/12'),
(24, '2012/13'),
(25, '2013/14'),
(26, '2014/15'),
(27, '2015/16'),
(28, '2016/17'),
(29, '2017/18'),
(30, '2018/19'),
(31, '2019/20'),
(32, '2020/21'),
(33, '2021/22'),
(34, '2022/23'),
(35, '2023/24'),
(36, '2024/25'),
(37, '2025/26'),
(38, '2026/27');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyek`
--

CREATE TABLE `versenyek` (
  `id` int(11) NOT NULL,
  `vNev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `versenyek`
--

INSERT INTO `versenyek` (`id`, `vNev`) VALUES
(34, '\"Játék időhatárok nélkül\" sportvetélkedő'),
(13, '\"Szuper kupa\"'),
(21, 'Bay Zoltán Fizika Emlékverseny'),
(20, 'Budó Ágoston Fizika Feladatmegoldó Verseny'),
(22, 'Csabai Garabonciás Napok'),
(36, 'Deák Ferenc Kézilabda Kupa'),
(3, 'Diákolimpia'),
(38, 'Dragon Kupa Taekwon-do'),
(29, 'Fehér Kupa Taekwon-do'),
(30, 'Gordiusz Matematika Tesztverseny'),
(4, 'id. Christián László emlékverseny'),
(33, 'Implom József helyesírás Verseny'),
(23, 'Informatikával a környezetért honlapkészítő verseny'),
(35, 'Játék határok nélkül'),
(24, 'Kalmár László Országos Középiskolai Számítástechnikai Verseny'),
(15, 'Környezetvédelmi vetélkedő'),
(12, 'Középiskolai Alapfokú Szuperkupa'),
(28, 'Középiskolás Megyei Kosárlabda Bajnokság'),
(27, 'Középiskolás Városi Kézilabda Bajnokság'),
(26, 'Középiskolás Városi Labdarúgó Bajnokság'),
(1, 'Megyei Fedettpályás Középiskolai Atlétika'),
(6, 'Megyei Középiskolai Atlétikai Verseny'),
(40, 'Mikes Kelemen Versmondó Verseny'),
(18, 'Nemes Tihamér Országos Középiskolai Számítástechnikai Tanulmányi Verseny'),
(7, 'Nemzetközi Diák Labdarúgó Torna'),
(19, 'Nemzetközi Informatikai Diákolimpia'),
(14, 'Neumann János Számítástechnikai Verseny'),
(37, 'Nyílt Taekwon-do OB'),
(9, 'Olimpiai Vetélkedő'),
(17, 'OMTV'),
(39, 'Országos Középiskolai Pneumatika Verseny'),
(8, 'Országos Szakmunkástanuló Teremlabdarúgó Bajnokság'),
(10, 'OSZTV'),
(11, 'Péter András Kosárlabda Torna'),
(16, 'Polgár Európa'),
(5, 'Székelyudvarhely Budvár Kupa'),
(31, 'Szép Magyar Beszéd'),
(2, 'Városi Alapfokú Bajnokság'),
(25, 'Városi József Attila Szavalóverseny'),
(32, 'Városi József Attila Versmondó Verseny');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyszam`
--

CREATE TABLE `versenyszam` (
  `id` int(11) NOT NULL,
  `szNev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `versenyszam`
--

INSERT INTO `versenyszam` (`id`, `szNev`) VALUES
(11, '100m-es futás'),
(12, '200m-es futás'),
(5, '4x50-es gyorsúszás'),
(1, '60 méter gátfutás'),
(10, 'automatika - PLC'),
(7, 'diszkoszvetés'),
(36, 'egyéni küzdelem'),
(20, 'elektronika'),
(14, 'épületgépész'),
(39, 'futás'),
(15, 'futball'),
(13, 'gépész'),
(26, 'gyorsúszás'),
(9, 'hármasugrás'),
(37, 'hárompontos'),
(38, 'hátúszás'),
(34, 'informatika'),
(23, 'karate'),
(22, 'kézilabda'),
(17, 'kispályás labdarúgás'),
(18, 'kosárlabda'),
(2, 'labdarúgás'),
(25, 'mellúszás'),
(35, 'mezei futóverseny'),
(8, 'rúdugrás'),
(21, 'sakk'),
(6, 'súlyemelés'),
(4, 'súlylökés'),
(19, 'szólóhangszer'),
(3, 'távolugrás'),
(16, 'teremfutball'),
(27, 'úszás'),
(24, 'úszás-váltó');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenytipusok`
--

CREATE TABLE `versenytipusok` (
  `id` int(11) NOT NULL,
  `tNev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `versenytipusok`
--

INSERT INTO `versenytipusok` (`id`, `tNev`) VALUES
(1, 'megyei'),
(2, 'megyei és területi'),
(5, 'megyei/körzeti'),
(3, 'országos'),
(4, 'területi');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `verseny_diak_kotes`
--

CREATE TABLE `verseny_diak_kotes` (
  `evId` int(11) NOT NULL,
  `diakId` int(11) NOT NULL,
  `versenyId` int(11) NOT NULL,
  `szamId` int(11) DEFAULT NULL,
  `tipusId` int(11) DEFAULT NULL,
  `helyezes` int(11) DEFAULT NULL,
  `kcsId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `verseny_diak_kotes`
--

INSERT INTO `verseny_diak_kotes` (`evId`, `diakId`, `versenyId`, `szamId`, `tipusId`, `helyezes`, `kcsId`) VALUES
(2, 1, 4, 7, 1, 2, NULL),
(2, 2, 4, 8, 1, 3, NULL),
(2, 2, 4, 9, 1, 3, NULL),
(3, 2, 6, 8, NULL, 2, NULL),
(4, 4, 10, 13, 3, 1, NULL),
(4, 5, 10, 14, 3, 7, NULL),
(6, 7, 14, NULL, 4, 2, NULL),
(7, 8, 17, 13, 3, 8, NULL),
(7, 8, 10, 14, 3, 10, NULL),
(7, 7, 18, NULL, 3, 5, NULL),
(7, 7, 19, NULL, NULL, 1, NULL),
(7, 9, 18, NULL, 1, 2, NULL),
(7, 9, 20, NULL, 4, 2, NULL),
(7, 10, 20, NULL, 1, 3, NULL),
(7, 11, 20, NULL, 1, 2, NULL),
(7, 11, 21, NULL, 1, 2, NULL),
(7, 7, 20, NULL, 4, 1, NULL),
(7, 7, 21, NULL, 1, 1, NULL),
(8, 12, 22, 19, NULL, 1, NULL),
(8, 8, 17, 13, 3, 3, NULL),
(8, 8, 10, 13, 3, 2, NULL),
(8, 13, 17, 20, 3, 10, NULL),
(8, 14, 24, NULL, 3, 7, NULL),
(8, 15, 25, NULL, NULL, 1, NULL),
(8, 16, 3, 23, 1, 1, NULL),
(8, 17, 3, 24, 1, 2, NULL),
(8, 17, 3, 25, 1, 2, NULL),
(8, 18, 3, 26, 1, 2, NULL),
(8, 19, 29, NULL, NULL, 1, 6),
(8, 20, 3, 27, 3, 1, NULL),
(9, 11, 10, 10, 3, 5, NULL),
(9, 24, 10, 10, 3, 9, NULL),
(9, 25, 10, 10, 3, 8, NULL),
(9, 26, 10, 14, 3, 2, NULL),
(9, 27, 17, 13, 3, 1, NULL),
(9, 27, 10, 13, 3, 7, NULL),
(9, 27, 10, 10, 3, 3, NULL),
(9, 28, 17, 13, 3, 2, NULL),
(9, 28, 10, 13, 3, 7, NULL),
(9, 28, 10, 10, 3, 4, NULL),
(9, 14, 24, NULL, 3, 1, NULL),
(9, 9, 10, 34, 3, 3, NULL),
(9, 11, 30, NULL, 5, 3, NULL),
(9, 29, 30, NULL, 5, 3, NULL),
(9, 15, 32, NULL, NULL, 1, NULL),
(9, 15, 31, NULL, 3, 3, NULL),
(9, 30, 33, NULL, 1, 4, NULL),
(9, 9, 30, NULL, 5, 2, NULL),
(9, 31, 30, NULL, 5, 1, NULL),
(9, 32, 3, 4, 3, 2, 7),
(9, 33, 3, 35, 1, 2, NULL),
(9, 33, 3, 39, 1, 2, NULL),
(9, 19, 37, NULL, NULL, 3, NULL),
(9, 19, 29, NULL, NULL, 1, 6),
(9, 19, 38, 36, NULL, 2, NULL),
(9, 19, 37, 37, NULL, 3, NULL),
(9, 20, 3, 38, 3, 1, NULL),
(10, 35, 17, 13, 3, 3, NULL),
(10, 35, 10, 13, 3, 4, NULL),
(10, 36, 17, 13, 3, 4, NULL),
(10, 36, 10, 13, 3, 7, NULL),
(10, 37, 39, NULL, 3, 6, NULL),
(10, 38, 39, NULL, 3, 6, NULL),
(10, 39, 10, 14, 3, 7, NULL),
(10, 40, 17, 13, 3, 6, NULL),
(10, 40, 10, 13, 3, 8, NULL),
(10, 41, 39, NULL, 3, 6, NULL),
(10, 42, 10, 13, 3, 10, NULL),
(10, 43, 10, 13, 3, 9, NULL),
(10, 15, 40, NULL, NULL, 1, NULL),
(10, 32, 3, 4, 3, 1, 7);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csapatok`
--
ALTER TABLE `csapatok`
  ADD KEY `CSKotes_Csapatok_FK` (`csapatId`),
  ADD KEY `Diakok_Csapatok_FK` (`diakId`);

--
-- A tábla indexei `csapat_diak_kotes`
--
ALTER TABLE `csapat_diak_kotes`
  ADD UNIQUE KEY `csapatId` (`csapatId`),
  ADD KEY `Tanevek_CSKotes_FK` (`evId`),
  ADD KEY `Versenyek_CSKotes_FK` (`versenyId`),
  ADD KEY `Versenyszamok_CSKotes_FK` (`szamId`),
  ADD KEY `VersenyTipusok_CSKotes_FK` (`tipusId`),
  ADD KEY `Csapat_KCSN_FK` (`kcsId`);

--
-- A tábla indexei `diakok`
--
ALTER TABLE `diakok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A tábla indexei `dijak`
--
ALTER TABLE `dijak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dijNev` (`dijNev`);

--
-- A tábla indexei `dijazottak`
--
ALTER TABLE `dijazottak`
  ADD KEY `Tanevek_Dijazottak_FK` (`evId`),
  ADD KEY `Dijak_Dijazottak_FK` (`dijId`),
  ADD KEY `Diakok_Dijazottak_FK` (`diakId`);

--
-- A tábla indexei `egyebek`
--
ALTER TABLE `egyebek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Egyebek_Tanevek_FK` (`tanevId`);

--
-- A tábla indexei `garabonciasok`
--
ALTER TABLE `garabonciasok`
  ADD UNIQUE KEY `evId` (`evId`),
  ADD UNIQUE KEY `jeloltId` (`jeloltId`);

--
-- A tábla indexei `korcsoportok_nemek`
--
ALTER TABLE `korcsoportok_nemek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `knNev` (`knNev`);

--
-- A tábla indexei `tanevek`
--
ALTER TABLE `tanevek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanev` (`tanev`);

--
-- A tábla indexei `versenyek`
--
ALTER TABLE `versenyek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vNev` (`vNev`);

--
-- A tábla indexei `versenyszam`
--
ALTER TABLE `versenyszam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `szNev` (`szNev`);

--
-- A tábla indexei `versenytipusok`
--
ALTER TABLE `versenytipusok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tNev` (`tNev`);

--
-- A tábla indexei `verseny_diak_kotes`
--
ALTER TABLE `verseny_diak_kotes`
  ADD KEY `Tanevek_Kotes_FK` (`evId`),
  ADD KEY `Diakok_Kotes_FK` (`diakId`),
  ADD KEY `Versenyek_Kotes_FK` (`versenyId`),
  ADD KEY `Versenyszamok_Kotes_FK` (`szamId`),
  ADD KEY `Versenytipusok_Kotes_FK` (`tipusId`),
  ADD KEY `Versenyek_KCSN_FK` (`kcsId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `diakok`
--
ALTER TABLE `diakok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT a táblához `dijak`
--
ALTER TABLE `dijak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `egyebek`
--
ALTER TABLE `egyebek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `korcsoportok_nemek`
--
ALTER TABLE `korcsoportok_nemek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `tanevek`
--
ALTER TABLE `tanevek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT a táblához `versenyek`
--
ALTER TABLE `versenyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `versenyszam`
--
ALTER TABLE `versenyszam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT a táblához `versenytipusok`
--
ALTER TABLE `versenytipusok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `csapatok`
--
ALTER TABLE `csapatok`
  ADD CONSTRAINT `CSKotes_Csapatok_FK` FOREIGN KEY (`csapatId`) REFERENCES `csapat_diak_kotes` (`csapatId`),
  ADD CONSTRAINT `Diakok_Csapatok_FK` FOREIGN KEY (`diakId`) REFERENCES `diakok` (`id`);

--
-- Megkötések a táblához `csapat_diak_kotes`
--
ALTER TABLE `csapat_diak_kotes`
  ADD CONSTRAINT `Csapat_KCSN_FK` FOREIGN KEY (`kcsId`) REFERENCES `korcsoportok_nemek` (`id`),
  ADD CONSTRAINT `Tanevek_CSKotes_FK` FOREIGN KEY (`evId`) REFERENCES `tanevek` (`id`),
  ADD CONSTRAINT `VersenyTipusok_CSKotes_FK` FOREIGN KEY (`tipusId`) REFERENCES `versenytipusok` (`id`),
  ADD CONSTRAINT `Versenyek_CSKotes_FK` FOREIGN KEY (`versenyId`) REFERENCES `versenyek` (`id`),
  ADD CONSTRAINT `Versenyszamok_CSKotes_FK` FOREIGN KEY (`szamId`) REFERENCES `versenyszam` (`id`);

--
-- Megkötések a táblához `dijazottak`
--
ALTER TABLE `dijazottak`
  ADD CONSTRAINT `Diakok_Dijazottak_FK` FOREIGN KEY (`diakId`) REFERENCES `diakok` (`id`),
  ADD CONSTRAINT `Dijak_Dijazottak_FK` FOREIGN KEY (`dijId`) REFERENCES `dijak` (`id`),
  ADD CONSTRAINT `Tanevek_Dijazottak_FK` FOREIGN KEY (`evId`) REFERENCES `tanevek` (`id`);

--
-- Megkötések a táblához `egyebek`
--
ALTER TABLE `egyebek`
  ADD CONSTRAINT `Egyebek_Tanevek_FK` FOREIGN KEY (`tanevId`) REFERENCES `tanevek` (`id`);

--
-- Megkötések a táblához `garabonciasok`
--
ALTER TABLE `garabonciasok`
  ADD CONSTRAINT `Diakok_Garabonciasok_FK` FOREIGN KEY (`jeloltId`) REFERENCES `diakok` (`id`),
  ADD CONSTRAINT `Tanevek_Garabonciasok_FK` FOREIGN KEY (`evId`) REFERENCES `tanevek` (`id`);

--
-- Megkötések a táblához `verseny_diak_kotes`
--
ALTER TABLE `verseny_diak_kotes`
  ADD CONSTRAINT `Diakok_Kotes_FK` FOREIGN KEY (`diakId`) REFERENCES `diakok` (`id`),
  ADD CONSTRAINT `Tanevek_Kotes_FK` FOREIGN KEY (`evId`) REFERENCES `tanevek` (`id`),
  ADD CONSTRAINT `Versenyek_KCSN_FK` FOREIGN KEY (`kcsId`) REFERENCES `korcsoportok_nemek` (`id`),
  ADD CONSTRAINT `Versenyek_Kotes_FK` FOREIGN KEY (`versenyId`) REFERENCES `versenyek` (`id`),
  ADD CONSTRAINT `Versenyszamok_Kotes_FK` FOREIGN KEY (`szamId`) REFERENCES `versenyszam` (`id`),
  ADD CONSTRAINT `Versenytipusok_Kotes_FK` FOREIGN KEY (`tipusId`) REFERENCES `versenytipusok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
