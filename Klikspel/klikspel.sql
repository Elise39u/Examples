-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 18 jan 2017 om 15:24
-- Serverversie: 5.7.9
-- PHP-versie: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klikspel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `areas`
--

INSERT INTO `areas` (`id`, `name`) VALUES
(1, 'Sandpath'),
(2, 'Station'),
(3, 'Boat'),
(4, 'Caves\r\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `area_monsters`
--

DROP TABLE IF EXISTS `area_monsters`;
CREATE TABLE IF NOT EXISTS `area_monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT NULL,
  `monster` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `area_monsters`
--

INSERT INTO `area_monsters` (`id`, `area`, `monster`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 3),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 16),
(8, 1, 20),
(9, 1, 22),
(10, 1, 23),
(11, 1, 24),
(12, 1, 25),
(13, 1, 26),
(14, 1, 27),
(15, 1, 37),
(16, 2, 1),
(17, 2, 2),
(18, 2, 3),
(19, 2, 4),
(20, 2, 5),
(21, 2, 6),
(22, 2, 7),
(23, 2, 8),
(24, 2, 9),
(25, 2, 10),
(26, 2, 11),
(27, 2, 12),
(28, 2, 13),
(29, 2, 14),
(30, 2, 15),
(31, 2, 16),
(32, 2, 17),
(33, 2, 18),
(34, 2, 19),
(35, 2, 20),
(36, 2, 21),
(37, 2, 22),
(38, 2, 23),
(39, 2, 24),
(40, 2, 25),
(41, 2, 26),
(42, 2, 27),
(43, 2, 28),
(44, 2, 29),
(45, 2, 31),
(46, 2, 36),
(47, 2, 34),
(48, 3, 31),
(49, 3, 32),
(50, 3, 33),
(51, 3, 34),
(52, 3, 35),
(53, 3, 37),
(54, 3, 30),
(55, 3, 24),
(56, 4, 38),
(57, 4, 39),
(58, 4, 40),
(59, 4, 41),
(60, 4, 42),
(61, 4, 43),
(62, 4, 45),
(63, 4, 44);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(127) NOT NULL,
  `item_id` int(127) NOT NULL,
  `space` int(254) NOT NULL,
  `quantity` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inventory`
--

INSERT INTO `inventory` (`id`, `player_id`, `item_id`, `space`, `quantity`) VALUES
(66, '3', 54, 50, 100);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `type` enum('Weapon','Armor','Usable','Drop','Potion','Flare','SeaMonster') DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `items`
--

INSERT INTO `items` (`id`, `name`, `type`, `price`) VALUES
(1, 'Baseballbat', 'Weapon', 50),
(2, 'Sword', 'Weapon', 500),
(3, 'Axe', 'Weapon', 150),
(4, 'Paddle', NULL, 50),
(5, 'Hammer', 'Weapon', 200),
(6, 'Car', 'Usable', 10000),
(7, 'Boat', 'Usable', 15000),
(8, 'KeyGV', 'Usable', 360),
(9, 'KeyPS', 'Usable', 360),
(10, 'KeyBK', 'Usable', 360),
(11, 'Jerrycan', 'Usable', 8000),
(12, 'Gold', NULL, 50),
(13, 'M4', 'Weapon', 2350),
(14, 'Scar', 'Weapon', 2350),
(15, 'DRS50', 'Weapon', 4350),
(16, 'Spas', 'Weapon', 3500),
(17, 'Usp-s', 'Weapon', 1500),
(18, 'Silincer', 'Usable', 150),
(19, 'Dragounv', 'Weapon', 3880),
(20, 'PSG1', 'Weapon', 3980),
(21, 'XM1014', 'Weapon', 2870),
(22, 'Ranger', 'Weapon', 2870),
(23, 'Striker', 'Weapon', 3240),
(24, 'Five-Seven', 'Weapon', 250),
(25, 'Tec-9', 'Weapon', 250),
(26, 'P250', 'Weapon', 1500),
(27, 'Tar-21', 'Weapon', 2780),
(28, 'Fal', 'Weapon', 3230),
(29, 'RPG', 'Weapon', 4580),
(30, 'M27-Law', 'Weapon', 4970),
(31, 'Javelin', 'Weapon', 5500),
(32, 'Crossbow', 'Weapon', 1400),
(33, 'SecurityCard', 'Usable', 5500),
(34, 'Nailgun', 'Weapon', 100),
(35, 'Versterker', 'Usable', 3800),
(36, 'Receiver', 'Usable', 3800),
(37, 'Antenne', 'Usable', 25000),
(38, 'Flare', 'Flare', 50),
(39, 'M4A1-s', 'Weapon', 2570),
(40, 'DragounvSVD', 'Weapon', 1890),
(41, 'PSG1SVD', 'Weapon', 1980),
(42, 'Light Red Potion', 'Potion', 550),
(43, 'Dark Red Potion ', 'Potion', 450),
(44, 'Light Purple Potion ', 'Potion', 850),
(45, 'Purple Potion', 'Potion', 1500),
(46, 'Dark Purple Potion', 'Potion', 650),
(47, 'Light Cyan Potion', 'Potion', 45800),
(48, 'Dark Cyan Potion', 'Potion', 390),
(49, 'Light Orange Potion', 'Potion', 680),
(50, 'Dark Orange Potion', 'Potion', 340),
(51, 'Light Yellow Potion', 'Potion', 450),
(52, 'Dark Yellow Potion', 'Potion', 110),
(53, 'Light Green Potion', 'Potion', 45),
(54, 'Green Potion', 'Potion', 120),
(55, 'Dark Green Potion', 'Potion', 980),
(56, 'Rainbow Potion', 'Potion', 125000),
(57, 'Light Pink Potion', 'Potion', 1200),
(58, 'Dark Pink Potion', 'Potion', 350),
(59, 'Stinger', 'Weapon', 25000),
(60, 'Dischord', 'Weapon', 350000),
(61, 'Thundergun', 'Weapon', 800000),
(62, 'Ray Gun', 'Weapon', 125000),
(63, 'Facemelter', 'Weapon', 350000),
(64, 'Fire Staff', 'Weapon', 450000),
(65, 'Ice Staff', 'Weapon', 450000),
(66, 'Wind Staff', 'Weapon', 450000),
(67, 'Thunder Staff', 'Weapon', 450000),
(68, 'Ray Gun Mk3', 'Weapon', 225000),
(69, 'Winter Howl', 'Weapon', 125000),
(70, 'Aso50', 'Weapon', 1375),
(71, 'MSR', 'Weapon', 1675),
(72, 'Typ95', 'Weapon', 1200),
(73, 'Ak47', 'Weapon', 1200),
(74, 'M14EBR', 'Weapon', 2200),
(75, 'RPD', 'Weapon', 2700),
(76, 'Vector', 'Weapon', 880),
(77, 'Peackeeper', 'Weapon', 1180),
(78, 'M27', 'Weapon', 2250),
(79, 'Ripper', 'Weapon', 1250),
(80, 'MSMC', 'Weapon', 1700),
(81, 'Mini-UZI', 'Weapon', 1700),
(82, 'Ump45', 'Weapon', 1550),
(83, 'G11', 'Weapon', 2145),
(84, 'Stakeout', 'Weapon', 4500),
(85, 'Commando', 'Weapon', 2345),
(86, 'L4 siege', 'Weapon', 11000),
(87, 'Plunger', 'Weapon', 250),
(88, 'Dagger', 'Weapon', 450),
(89, 'Falchion Knife', 'Weapon', 375),
(90, 'Shadow Daggers', 'Weapon', 450),
(91, 'Bayonet', 'Weapon', 450),
(92, 'Crowbar', 'Weapon', 780),
(93, 'Wrench', 'Weapon', 650),
(94, 'spoon', 'SeaMonster', 150),
(95, 'KeyCH', 'SeaMonster', 1500),
(96, 'KeyKI', 'SeaMonster', 1500),
(97, 'Flesh', 'SeaMonster', 250),
(98, 'Bullet', 'SeaMonster', 750),
(99, 'LightGreenPotion', 'SeaMonster', 25),
(100, 'DarkCyanPotion', 'SeaMonster', 650),
(101, 'Black Potion', 'Potion', 10000),
(102, 'SerectPotion', 'Potion', 500),
(103, 'PickAxe', 'Usable', 100000),
(104, 'TomaHawk', NULL, 43253223),
(105, 'Navy Shell', NULL, 43253232),
(106, 'PowerSwicht', NULL, 10000),
(107, 'Gray Potion', 'Potion', 24500);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `item_stats`
--

DROP TABLE IF EXISTS `item_stats`;
CREATE TABLE IF NOT EXISTS `item_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `stat_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `item_stats`
--

INSERT INTO `item_stats` (`id`, `item_id`, `stat_id`, `content`) VALUES
(1, 1, 1, '5'),
(2, 1, 2, '0'),
(3, 2, 1, '200'),
(4, 2, 2, '50'),
(5, 3, 1, '50'),
(6, 3, 2, '10'),
(7, 4, 1, '5'),
(8, 4, 2, '0'),
(9, 5, 1, '85'),
(10, 5, 2, '45'),
(11, 6, 1, '10000'),
(12, 6, 2, '10000'),
(13, 7, 1, '5'),
(14, 7, 2, '0'),
(15, 8, 1, '0'),
(16, 8, 2, '0'),
(17, 9, 1, '0'),
(18, 9, 2, '0'),
(19, 10, 1, '0'),
(20, 10, 2, '0'),
(21, 11, 1, '50'),
(22, 11, 2, '0'),
(23, 12, 1, '0'),
(24, 12, 2, '0'),
(25, 13, 1, '180'),
(26, 13, 2, '20'),
(27, 14, 1, '188'),
(28, 14, 2, '50'),
(29, 15, 1, '870'),
(30, 15, 2, '100'),
(31, 16, 1, '450'),
(32, 16, 2, '25'),
(33, 17, 1, '125'),
(34, 17, 2, '0'),
(35, 18, 1, '-5'),
(36, 18, 2, '0'),
(37, 19, 1, '230'),
(38, 19, 2, '110'),
(39, 20, 1, '455'),
(40, 20, 2, '110'),
(41, 21, 1, '340'),
(42, 21, 2, '20'),
(43, 22, 1, '280'),
(44, 22, 2, '80'),
(45, 23, 1, '450'),
(46, 23, 2, '100'),
(47, 24, 1, '120'),
(48, 24, 2, '25'),
(49, 18, 1, '40'),
(50, 18, 2, '0'),
(51, 26, 1, '140'),
(52, 26, 2, '60'),
(53, 27, 1, '233'),
(54, 27, 2, '100'),
(55, 28, 1, '210'),
(56, 28, 2, '150'),
(57, 29, 1, '1100'),
(58, 29, 2, '150'),
(59, 30, 1, '1560'),
(60, 30, 2, '100'),
(61, 31, 1, '1600'),
(62, 31, 2, '-100'),
(63, 32, 1, '220'),
(64, 32, 2, '200'),
(65, 33, 1, '0'),
(66, 33, 2, '0'),
(67, 34, 1, '10'),
(68, 34, 2, '0'),
(69, 35, 1, '0'),
(70, 35, 2, '0'),
(71, 36, 1, '0'),
(72, 36, 2, '0'),
(73, 37, 1, '0'),
(74, 37, 2, '5000'),
(75, 38, 1, '40'),
(76, 38, 2, '0'),
(77, 39, 1, '280'),
(78, 39, 2, '100'),
(79, 40, 1, '155'),
(80, 40, 2, '100'),
(81, 41, 1, '155'),
(82, 41, 2, '100'),
(83, 100, 1, '0'),
(84, 25, 1, '180'),
(85, 50, 1, '0'),
(86, 59, 1, '650'),
(87, 59, 2, '250'),
(88, 55, 10, '0'),
(125, 37, 12, 'item'),
(124, 36, 12, 'item'),
(121, 18, 12, 'item'),
(120, 12, 12, 'item'),
(119, 11, 12, 'item'),
(118, 10, 12, 'item'),
(123, 35, 12, 'item'),
(122, 33, 12, 'item'),
(113, 4, 12, 'item'),
(114, 6, 12, 'item'),
(115, 7, 12, 'item'),
(116, 8, 12, 'item'),
(117, 9, 12, 'item'),
(126, 38, 12, 'item'),
(127, 42, 12, 'L_Red_potion'),
(128, 43, 12, 'D_Red_potion'),
(129, 44, 12, 'L_Purple_potion'),
(130, 45, 12, 'Purple_potion'),
(131, 46, 12, 'D_Purple_potion'),
(132, 47, 12, 'L_Cyan_potion'),
(133, 48, 12, 'D_Cyan_potion'),
(134, 49, 12, 'L_Orange_potion'),
(135, 50, 12, 'D_Orange_potion'),
(136, 51, 12, 'L_Yellow_potion'),
(137, 52, 12, 'D_Yellow_potion'),
(139, 53, 12, 'L_Green_potion'),
(140, 54, 12, 'Green_potion'),
(141, 55, 12, 'D_Green_potion'),
(142, 56, 12, 'Rainbow_potion'),
(143, 57, 12, 'L_Pink_potion'),
(144, 58, 12, 'D_Pink_potion'),
(149, 60, 2, '100'),
(148, 60, 1, '2200'),
(150, 61, 1, '12000'),
(151, 61, 2, '25'),
(152, 62, 1, '1000'),
(153, 62, 2, '150'),
(154, 63, 1, '2000'),
(155, 63, 2, '125'),
(156, 64, 1, '2500'),
(157, 64, 2, '225'),
(158, 66, 1, '2500'),
(159, 66, 2, '225'),
(160, 65, 1, '2500'),
(161, 65, 2, '225'),
(162, 67, 1, '2500'),
(163, 67, 2, '225'),
(164, 68, 1, '2500'),
(165, 68, 2, '75'),
(166, 69, 1, '250'),
(167, 69, 2, '25'),
(168, 70, 1, '245'),
(169, 70, 2, '10'),
(170, 71, 1, '250'),
(171, 71, 2, '25'),
(172, 72, 1, '180'),
(173, 72, 2, '75'),
(174, 73, 1, '265'),
(175, 73, 2, '90'),
(176, 75, 1, '120'),
(177, 75, 2, '100'),
(178, 74, 1, '325'),
(179, 74, 2, '10'),
(180, 76, 1, '180'),
(181, 76, 2, '55'),
(182, 77, 1, '175'),
(183, 77, 2, '60'),
(184, 78, 1, '245'),
(185, 78, 2, '100'),
(186, 79, 1, '230'),
(187, 79, 2, '75'),
(188, 80, 1, '195'),
(189, 80, 2, '80'),
(190, 81, 1, '250'),
(191, 81, 2, '5'),
(192, 83, 1, '310'),
(193, 83, 2, '75'),
(194, 84, 1, '450'),
(195, 84, 2, '10'),
(196, 82, 1, '235'),
(197, 82, 2, '100'),
(198, 85, 1, '310'),
(199, 85, 2, '100'),
(200, 86, 1, '975'),
(201, 86, 2, '45'),
(202, 87, 1, '200'),
(203, 87, 2, '50'),
(204, 88, 1, '250'),
(205, 88, 2, '50'),
(206, 89, 1, '200'),
(207, 89, 2, '50'),
(208, 90, 1, '250'),
(209, 90, 2, '50'),
(210, 91, 1, '200'),
(211, 91, 2, '50'),
(212, 92, 1, '450'),
(213, 92, 2, '200'),
(214, 93, 1, '250'),
(215, 93, 2, '50'),
(216, 22, 12, '0'),
(217, 5, 12, '0'),
(218, 1, 12, '0'),
(219, 2, 12, '0'),
(220, 28, 12, '0'),
(221, 101, 12, 'Blackpotion'),
(222, 16, 12, '0'),
(223, 40, 12, '0'),
(224, 94, 12, '0'),
(225, 97, 12, '0'),
(226, 99, 12, '0'),
(227, 95, 12, '0'),
(228, 102, 12, 'SerectPotion'),
(229, 96, 12, '0'),
(230, 100, 12, '0'),
(231, 107, 12, 'GrayPotion');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `monsters`
--

DROP TABLE IF EXISTS `monsters`;
CREATE TABLE IF NOT EXISTS `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monsters`
--

INSERT INTO `monsters` (`id`, `name`, `image_url`) VALUES
(1, 'Crazy Eric', 'http://localhost/Eigen%20spel/img/Eric.png'),
(2, 'Insane Baker', ''),
(3, 'Walker', ''),
(4, 'Floater', ''),
(5, 'Gang Member', ''),
(6, 'Hard Hitting Louis', ''),
(7, 'Tank', ''),
(8, 'Smoker', ''),
(9, 'Breeder', ''),
(10, 'Panzer Soldat', ''),
(11, 'Fire Margawa', ''),
(12, 'Shadow Margawa', ''),
(13, 'Margawa', ''),
(14, 'Ancestor', ''),
(15, 'Goliath', ''),
(16, 'Posion Zombie', ''),
(17, 'Alien', ''),
(18, 'Brute', ''),
(19, 'Brutus', ''),
(20, 'Clown', ''),
(21, 'Cosmunat', ''),
(22, 'Grenadier', ''),
(23, 'Prison Zombie', ''),
(24, 'Ram', ''),
(25, 'Spiker', ''),
(26, 'Thrasher', ''),
(27, 'Wresteler', ''),
(28, 'Orge', ''),
(29, 'Dragon', ''),
(30, 'Fishmen', ''),
(31, 'Gargoyle', ''),
(32, 'Jumpfish', ''),
(33, 'Kraken', ''),
(34, 'Scorpion', ''),
(35, 'Spewer', ''),
(36, 'Avogadro', ''),
(37, 'Denizen', ''),
(38, 'CaveGuard', ''),
(39, 'GiantTroll', ''),
(40, 'CaveRat', ''),
(41, 'Lizard', ''),
(42, 'Mutant', ''),
(43, 'Spider', ''),
(44, 'Troll', ''),
(45, 'SmallSpider', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `monster_items`
--

DROP TABLE IF EXISTS `monster_items`;
CREATE TABLE IF NOT EXISTS `monster_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monster_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monster_items`
--

INSERT INTO `monster_items` (`id`, `monster_id`, `item_id`, `rarity`) VALUES
(1, 1, 5, 100),
(2, 2, 11, 100),
(3, 16, 5, 100),
(4, 16, 1, 80),
(5, 16, 24, 10),
(6, 3, 8, 100),
(7, 3, 9, 55),
(8, 4, 51, 25),
(9, 4, 1, 100),
(10, 4, 9, 25),
(11, 4, 10, 25),
(12, 5, 1, 60),
(13, 5, 11, 100),
(14, 6, 2, 20),
(15, 6, 10, 100),
(16, 7, 51, 50),
(17, 7, 33, 100),
(18, 8, 51, 100),
(19, 9, 51, 100),
(20, 9, 2, 25),
(21, 10, 5, 100),
(22, 11, 44, 100),
(23, 11, 6, 25),
(24, 12, 36, 33),
(25, 12, 35, 33),
(26, 12, 33, 33),
(27, 12, 2, 100),
(28, 17, 45, 100),
(29, 13, 51, 100),
(30, 13, 1, 50),
(31, 14, 6, 100),
(32, 15, 6, 45),
(33, 15, 2, 100),
(34, 18, 40, 100),
(35, 18, 31, 25),
(36, 19, 1, 100),
(37, 20, 51, 100),
(38, 21, 2, 100),
(39, 22, 51, 100),
(40, 22, 6, 20),
(41, 23, 44, 100),
(42, 24, 6, 45),
(43, 24, 2, 100),
(44, 25, 28, 100),
(45, 26, 22, 100),
(46, 27, 9, 100),
(47, 27, 1, 45),
(48, 28, 8, 33),
(49, 28, 9, 33),
(50, 28, 10, 33),
(51, 28, 46, 100),
(52, 29, 100, 94),
(53, 30, 97, 99),
(54, 30, 96, 3),
(55, 31, 100, 98),
(56, 31, 99, 2),
(57, 32, 94, 100),
(58, 33, 95, 100),
(59, 34, 94, 25),
(60, 34, 99, 98),
(61, 35, 96, 100),
(62, 37, 4, 100),
(63, 36, 12, 100),
(64, 38, 59, 100),
(65, 39, 2, 100),
(66, 40, 92, 100),
(67, 41, 41, 100),
(68, 42, 16, 100),
(69, 43, 101, 100),
(70, 44, 8, 100),
(71, 45, 32, 100);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `monster_stats`
--

DROP TABLE IF EXISTS `monster_stats`;
CREATE TABLE IF NOT EXISTS `monster_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monster_id` int(11) NOT NULL,
  `stat_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2470 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monster_stats`
--

INSERT INTO `monster_stats` (`id`, `monster_id`, `stat_id`, `content`) VALUES
(1, 1, 1, '2'),
(2, 1, 2, '2'),
(3, 1, 4, '8'),
(4, 1, 3, '15'),
(5, 2, 1, '225'),
(6, 2, 2, '450'),
(7, 2, 4, '800'),
(8, 2, 3, '5000'),
(9, 3, 1, '2'),
(10, 3, 2, '5'),
(11, 3, 3, '10'),
(12, 3, 4, '30'),
(13, 4, 1, '70'),
(14, 4, 2, '100'),
(15, 4, 3, '50'),
(16, 4, 4, '150'),
(17, 5, 1, '60'),
(18, 5, 2, '100'),
(19, 5, 3, '75'),
(20, 5, 4, '100'),
(21, 6, 1, '450'),
(22, 6, 2, '1000'),
(23, 6, 3, '10000'),
(24, 6, 4, '1500'),
(25, 7, 1, '5'),
(26, 7, 2, '50'),
(27, 7, 3, '3500'),
(28, 7, 4, '150'),
(29, 8, 1, '1'),
(30, 8, 2, '50'),
(31, 8, 3, '15'),
(32, 8, 4, '20'),
(33, 9, 1, '800'),
(34, 9, 2, '1500'),
(35, 9, 3, '38000'),
(36, 9, 4, '2750'),
(37, 10, 1, '450'),
(38, 10, 2, '1000'),
(39, 10, 3, '35000'),
(40, 10, 4, '2500'),
(41, 11, 1, '550'),
(42, 11, 2, '1250'),
(43, 11, 3, '10000'),
(44, 11, 4, '2250'),
(45, 12, 1, '750'),
(46, 12, 2, '1400'),
(47, 12, 3, '10000'),
(48, 12, 4, '2250'),
(49, 13, 1, '750'),
(50, 13, 2, '1400'),
(51, 13, 3, '10000'),
(52, 13, 4, '2250'),
(53, 14, 1, '250'),
(54, 14, 2, '1450'),
(55, 14, 3, '36000'),
(56, 14, 4, '3000'),
(57, 15, 1, '450'),
(58, 15, 2, '1980'),
(59, 15, 3, '28000'),
(60, 15, 4, '2350'),
(61, 16, 1, '35'),
(62, 16, 2, '10'),
(63, 16, 3, '50'),
(64, 16, 4, '25'),
(67, 1, 6, '100'),
(68, 1, 7, '100'),
(69, 1, 5, '100'),
(1763, 1, 9, '100'),
(2099, 4, 11, '100'),
(2098, 4, 7, '100'),
(2097, 4, 5, '100'),
(2088, 2, 9, '100'),
(2087, 35, 3, '12500'),
(2086, 35, 4, '4500'),
(2085, 35, 2, '3000'),
(2084, 35, 1, '760'),
(2083, 34, 3, '850'),
(2082, 34, 4, '250'),
(2081, 34, 2, '180'),
(2080, 34, 1, '55'),
(2089, 36, 1, '1250'),
(2090, 36, 2, '7500'),
(2091, 36, 4, '3500'),
(2092, 36, 3, '50000'),
(2093, 37, 1, '750'),
(2094, 37, 2, '1250'),
(2095, 37, 4, '1000'),
(2096, 37, 3, '5000'),
(2071, 34, 1, '55'),
(2070, 33, 3, '100000'),
(2069, 33, 4, '25000'),
(2068, 33, 2, '12500'),
(2067, 33, 1, '2500'),
(2066, 32, 3, '500'),
(2065, 32, 4, '100'),
(2064, 32, 2, '75'),
(2063, 32, 1, '45'),
(2062, 31, 3, '1250'),
(2061, 31, 4, '450'),
(2060, 31, 2, '300'),
(2059, 31, 1, '125'),
(2058, 30, 3, '500'),
(2057, 30, 4, '100'),
(2056, 30, 2, '75'),
(2055, 30, 1, '45'),
(2054, 29, 3, '5000'),
(2053, 29, 4, '1000'),
(2052, 29, 2, '300'),
(2051, 29, 1, '450'),
(2050, 3, 11, '100'),
(2049, 3, 7, '100'),
(2048, 3, 5, '100'),
(2047, 2, 8, '100'),
(2046, 9, 11, '100'),
(2045, 9, 7, '100'),
(2044, 9, 5, '100'),
(2043, 8, 11, '100'),
(2042, 8, 7, '100'),
(2041, 8, 5, '100'),
(2040, 2, 11, '100'),
(2039, 2, 7, '100'),
(2038, 2, 5, '100'),
(2037, 28, 3, '18000'),
(2036, 28, 4, '1000'),
(2035, 28, 2, '350'),
(2034, 28, 1, '800'),
(2033, 27, 3, '1500'),
(2032, 27, 4, '150'),
(2031, 27, 2, '10'),
(2030, 27, 1, '275'),
(2029, 26, 3, '250'),
(2028, 26, 4, '150'),
(2027, 26, 2, '35'),
(2026, 26, 1, '40'),
(2025, 25, 3, '180'),
(2024, 25, 4, '100'),
(2023, 25, 2, '35'),
(2022, 25, 1, '80'),
(2021, 24, 3, '800'),
(2020, 24, 4, '1000'),
(2019, 24, 2, '700'),
(2018, 24, 1, '5'),
(2017, 23, 3, '80'),
(2016, 23, 4, '100'),
(2015, 23, 2, '35'),
(2014, 23, 1, '40'),
(2013, 22, 3, '250'),
(2012, 22, 4, '180'),
(2011, 22, 2, '100'),
(2010, 22, 1, '75'),
(2001, 19, 3, '10000'),
(2000, 19, 4, '2850'),
(1999, 19, 2, '280'),
(1998, 19, 1, '150'),
(1997, 18, 3, '2500'),
(1996, 18, 4, '750'),
(1995, 18, 2, '250'),
(1994, 18, 1, '100'),
(1993, 17, 3, '50000'),
(1992, 17, 4, '3500'),
(1991, 17, 2, '300'),
(1990, 17, 1, '450'),
(2009, 21, 3, '1875'),
(2008, 21, 4, '1800'),
(2007, 21, 2, '750'),
(2006, 21, 1, '50'),
(2005, 20, 3, '150'),
(2004, 20, 4, '100'),
(2003, 20, 2, '30'),
(2002, 20, 1, '20'),
(1968, 1, 11, '100'),
(1974, 1, 8, '100'),
(1973, 1, 10, '100'),
(2100, 6, 5, '100'),
(2101, 6, 7, '100'),
(2102, 6, 11, '100'),
(2103, 38, 1, '4000'),
(2104, 38, 2, '50000'),
(2105, 38, 4, '1000000'),
(2106, 38, 3, '120000'),
(2107, 39, 1, '1500'),
(2108, 39, 2, '5000'),
(2109, 39, 4, '10000'),
(2110, 39, 3, '12000'),
(2111, 40, 1, '400'),
(2112, 40, 2, '1250'),
(2113, 40, 4, '1000'),
(2114, 40, 3, '12000'),
(2115, 41, 1, '650'),
(2116, 41, 2, '1800'),
(2117, 41, 4, '1300'),
(2118, 41, 3, '14500'),
(2119, 42, 1, '850'),
(2120, 42, 2, '1000'),
(2121, 42, 4, '10000'),
(2122, 42, 3, '12000'),
(2123, 43, 1, '1850'),
(2124, 43, 2, '12500'),
(2125, 43, 4, '100000'),
(2126, 43, 3, '1200000'),
(2127, 44, 1, '240'),
(2128, 44, 2, '900'),
(2129, 44, 4, '1300'),
(2130, 44, 3, '14500'),
(2131, 45, 1, '450'),
(2132, 45, 2, '900'),
(2133, 45, 4, '1100'),
(2134, 45, 3, '11000'),
(2135, 3, 8, '100'),
(2136, 3, 9, '100'),
(2137, 5, 5, '100'),
(2138, 5, 7, '100'),
(2139, 5, 11, '100'),
(2140, 18, 5, '100'),
(2141, 18, 7, '100'),
(2142, 18, 11, '100'),
(2143, 19, 5, '100'),
(2144, 19, 7, '100'),
(2145, 19, 11, '100'),
(2146, 20, 5, '100'),
(2147, 20, 7, '100'),
(2148, 20, 11, '100'),
(2149, 21, 5, '100'),
(2150, 21, 7, '100'),
(2151, 21, 11, '100'),
(2152, 22, 5, '100'),
(2153, 22, 7, '100'),
(2154, 22, 11, '100'),
(2155, 23, 5, '100'),
(2156, 23, 7, '100'),
(2157, 23, 11, '100'),
(2158, 24, 5, '100'),
(2159, 24, 7, '100'),
(2160, 24, 11, '100'),
(2161, 25, 5, '100'),
(2162, 25, 7, '100'),
(2163, 25, 11, '100'),
(2164, 26, 5, '100'),
(2165, 26, 7, '100'),
(2166, 26, 11, '100'),
(2167, 27, 5, '100'),
(2168, 27, 7, '100'),
(2169, 27, 11, '100'),
(2170, 28, 5, '100'),
(2171, 28, 7, '100'),
(2172, 28, 11, '100'),
(2173, 30, 5, '100'),
(2174, 30, 7, '100'),
(2175, 30, 11, '100'),
(2176, 32, 5, '100'),
(2177, 32, 7, '100'),
(2178, 32, 11, '100'),
(2179, 33, 5, '100'),
(2180, 33, 7, '100'),
(2181, 33, 11, '100'),
(2182, 34, 5, '100'),
(2183, 34, 7, '100'),
(2184, 34, 11, '100'),
(2185, 35, 5, '100'),
(2186, 35, 7, '100'),
(2187, 35, 11, '100'),
(2188, 38, 5, '100'),
(2189, 38, 7, '100'),
(2190, 38, 11, '100'),
(2191, 39, 5, '100'),
(2192, 39, 7, '100'),
(2193, 39, 11, '100'),
(2194, 40, 5, '100'),
(2195, 40, 7, '100'),
(2196, 40, 11, '100'),
(2197, 41, 5, '100'),
(2198, 41, 7, '100'),
(2199, 41, 11, '100'),
(2200, 42, 5, '100'),
(2201, 42, 7, '100'),
(2202, 42, 11, '100'),
(2203, 43, 5, '100'),
(2204, 43, 7, '100'),
(2205, 43, 11, '100'),
(2206, 44, 5, '100'),
(2207, 44, 7, '100'),
(2208, 44, 11, '100'),
(2209, 45, 5, '100'),
(2210, 45, 7, '100'),
(2211, 45, 11, '100'),
(2212, 46, 5, '100'),
(2213, 46, 1, '100'),
(2214, 46, 7, '100'),
(2215, 46, 2, '100'),
(2216, 46, 3, '100'),
(2217, 46, 11, '100'),
(2218, 46, 4, '100'),
(2219, 47, 5, '100'),
(2220, 47, 1, '100'),
(2221, 47, 7, '100'),
(2222, 47, 2, '100'),
(2223, 47, 3, '100'),
(2224, 47, 11, '100'),
(2225, 47, 4, '100'),
(2226, 48, 5, '100'),
(2227, 48, 1, '100'),
(2228, 48, 7, '100'),
(2229, 48, 2, '100'),
(2230, 48, 3, '100'),
(2231, 48, 11, '100'),
(2232, 48, 4, '100'),
(2233, 49, 5, '100'),
(2234, 49, 1, '100'),
(2235, 49, 7, '100'),
(2236, 49, 2, '100'),
(2237, 49, 3, '100'),
(2238, 49, 11, '100'),
(2239, 49, 4, '100'),
(2240, 50, 5, '100'),
(2241, 50, 1, '100'),
(2242, 50, 7, '100'),
(2243, 50, 2, '100'),
(2244, 50, 3, '100'),
(2245, 50, 11, '100'),
(2246, 50, 4, '100'),
(2247, 51, 5, '100'),
(2248, 51, 1, '100'),
(2249, 51, 7, '100'),
(2250, 51, 2, '100'),
(2251, 51, 3, '100'),
(2252, 51, 11, '100'),
(2253, 51, 4, '100'),
(2254, 29, 5, '100'),
(2255, 29, 7, '100'),
(2256, 29, 11, '100'),
(2257, 53, 5, '100'),
(2258, 53, 1, '100'),
(2259, 53, 7, '100'),
(2260, 53, 2, '100'),
(2261, 53, 3, '100'),
(2262, 53, 11, '100'),
(2263, 53, 4, '100'),
(2264, 54, 5, '100'),
(2265, 54, 1, '100'),
(2266, 54, 7, '100'),
(2267, 54, 2, '100'),
(2268, 54, 3, '100'),
(2269, 54, 11, '100'),
(2270, 54, 4, '100'),
(2271, 55, 5, '100'),
(2272, 55, 1, '100'),
(2273, 55, 7, '100'),
(2274, 55, 2, '100'),
(2275, 55, 3, '100'),
(2276, 55, 11, '100'),
(2277, 55, 4, '100'),
(2278, 56, 5, '100'),
(2279, 56, 1, '100'),
(2280, 56, 7, '100'),
(2281, 56, 2, '100'),
(2282, 56, 3, '100'),
(2283, 56, 11, '100'),
(2284, 56, 4, '100'),
(2285, 57, 1, '100'),
(2286, 57, 7, '100'),
(2287, 57, 2, '100'),
(2288, 57, 3, '100'),
(2289, 57, 11, '100'),
(2290, 57, 5, '100'),
(2291, 57, 4, '100'),
(2292, 58, 5, '100'),
(2293, 58, 1, '100'),
(2294, 58, 7, '100'),
(2295, 58, 2, '100'),
(2296, 58, 3, '100'),
(2297, 58, 11, '100'),
(2298, 58, 4, '100'),
(2299, 59, 5, '100'),
(2300, 59, 1, '100'),
(2301, 59, 7, '100'),
(2302, 59, 2, '100'),
(2303, 59, 3, '100'),
(2304, 59, 11, '100'),
(2305, 59, 4, '100'),
(2306, 60, 5, '100'),
(2307, 60, 1, '100'),
(2308, 60, 7, '100'),
(2309, 60, 2, '100'),
(2310, 60, 3, '100'),
(2311, 60, 11, '100'),
(2312, 60, 4, '100'),
(2313, 65, 5, '100'),
(2314, 65, 1, '100'),
(2315, 65, 7, '100'),
(2316, 65, 2, '100'),
(2317, 65, 3, '100'),
(2318, 65, 11, '100'),
(2319, 65, 4, '100'),
(2320, 66, 1, '100'),
(2321, 66, 7, '100'),
(2322, 66, 2, '100'),
(2323, 66, 3, '100'),
(2324, 66, 11, '100'),
(2325, 66, 5, '100'),
(2326, 66, 4, '100'),
(2327, 67, 1, '100'),
(2328, 67, 7, '100'),
(2329, 67, 2, '100'),
(2330, 67, 3, '100'),
(2331, 67, 11, '100'),
(2332, 67, 5, '100'),
(2333, 67, 4, '100'),
(2334, 68, 1, '100'),
(2335, 68, 7, '100'),
(2336, 68, 2, '100'),
(2337, 68, 3, '100'),
(2338, 68, 11, '100'),
(2339, 68, 5, '100'),
(2340, 68, 4, '100'),
(2341, 77, 3, '100'),
(2342, 77, 1, '100'),
(2343, 77, 7, '100'),
(2344, 77, 2, '100'),
(2345, 77, 11, '100'),
(2346, 77, 5, '100'),
(2347, 77, 4, '100'),
(2348, 78, 5, '100'),
(2349, 78, 1, '100'),
(2350, 78, 7, '100'),
(2351, 78, 2, '100'),
(2352, 78, 3, '100'),
(2353, 78, 11, '100'),
(2354, 78, 4, '100'),
(2355, 80, 3, '100'),
(2356, 80, 1, '100'),
(2357, 80, 7, '100'),
(2358, 80, 2, '100'),
(2359, 80, 11, '100'),
(2360, 80, 5, '100'),
(2361, 80, 4, '100'),
(2362, 82, 1, '100'),
(2363, 82, 7, '100'),
(2364, 82, 2, '100'),
(2365, 82, 3, '100'),
(2366, 82, 11, '100'),
(2367, 82, 5, '100'),
(2368, 82, 4, '100'),
(2369, 83, 1, '100'),
(2370, 83, 7, '100'),
(2371, 83, 2, '100'),
(2372, 83, 3, '100'),
(2373, 83, 11, '100'),
(2374, 83, 5, '100'),
(2375, 83, 4, '100'),
(2376, 87, 1, '100'),
(2377, 87, 7, '100'),
(2378, 87, 2, '100'),
(2379, 87, 3, '100'),
(2380, 87, 11, '100'),
(2381, 87, 5, '100'),
(2382, 87, 4, '100'),
(2383, 88, 1, '100'),
(2384, 88, 7, '100'),
(2385, 88, 2, '100'),
(2386, 88, 3, '100'),
(2387, 88, 5, '100'),
(2388, 88, 4, '100'),
(2389, 88, 11, '100'),
(2390, 91, 1, '100'),
(2391, 91, 7, '100'),
(2392, 91, 2, '100'),
(2393, 91, 3, '100'),
(2394, 91, 11, '100'),
(2395, 91, 5, '100'),
(2396, 91, 4, '100'),
(2397, 92, 1, '100'),
(2398, 92, 7, '100'),
(2399, 92, 2, '100'),
(2400, 92, 3, '100'),
(2401, 92, 11, '100'),
(2402, 92, 5, '100'),
(2403, 92, 4, '100'),
(2404, 93, 1, '100'),
(2405, 93, 7, '100'),
(2406, 93, 2, '100'),
(2407, 93, 3, '100'),
(2408, 93, 11, '100'),
(2409, 93, 5, '100'),
(2410, 93, 4, '100'),
(2411, 94, 5, '100'),
(2412, 94, 1, '100'),
(2413, 94, 7, '100'),
(2414, 94, 2, '100'),
(2415, 94, 3, '100'),
(2416, 94, 11, '100'),
(2417, 94, 4, '100'),
(2418, 36, 5, '100'),
(2419, 36, 7, '100'),
(2420, 36, 11, '100'),
(2421, 73, 1, '100'),
(2422, 73, 7, '100'),
(2423, 73, 2, '100'),
(2424, 73, 3, '100'),
(2425, 73, 11, '100'),
(2426, 73, 5, '100'),
(2427, 73, 4, '100'),
(2428, 75, 1, '100'),
(2429, 75, 7, '100'),
(2430, 75, 2, '100'),
(2431, 75, 3, '100'),
(2432, 75, 11, '100'),
(2433, 75, 5, '100'),
(2434, 75, 4, '100'),
(2435, 129, 3, '100'),
(2436, 129, 5, '100'),
(2437, 129, 4, '100'),
(2438, 129, 1, '100'),
(2439, 129, 7, '100'),
(2440, 129, 2, '100'),
(2441, 129, 11, '100'),
(2442, 130, 3, '100'),
(2443, 130, 5, '100'),
(2444, 130, 4, '100'),
(2445, 130, 1, '100'),
(2446, 130, 7, '100'),
(2447, 130, 2, '100'),
(2448, 130, 11, '100'),
(2449, 131, 3, '100'),
(2450, 131, 5, '100'),
(2451, 131, 4, '100'),
(2452, 131, 1, '100'),
(2453, 131, 7, '100'),
(2454, 131, 2, '100'),
(2455, 131, 11, '100'),
(2456, 132, 3, '100'),
(2457, 132, 5, '100'),
(2458, 132, 4, '100'),
(2459, 132, 1, '100'),
(2460, 132, 7, '100'),
(2461, 132, 2, '100'),
(2462, 132, 11, '100'),
(2463, 137, 3, '100'),
(2464, 137, 5, '100'),
(2465, 137, 4, '100'),
(2466, 137, 1, '100'),
(2467, 137, 7, '100'),
(2468, 137, 2, '100'),
(2469, 137, 11, '100');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc`
--

DROP TABLE IF EXISTS `npc`;
CREATE TABLE IF NOT EXISTS `npc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(1024) NOT NULL,
  `Place` varchar(1024) NOT NULL,
  `Bio` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `npc`
--

INSERT INTO `npc` (`id`, `Name`, `Place`, `Bio`) VALUES
(1, 'John', 'Street.php', 'BIO: I am John <br>" +\n        "i lived here for years and nothing would stop me <br> " +\n        "And i will  never leave the city <br>" +\n        "Not even by a zombie out break'),
(2, 'Soldier Kane', 'SubDocks.php\r\n', 'BIO: I am Kane i served the army for 2 decades  <br>               i never thougt i would be a guard for a evac base'),
(3, 'Widow Marjo', 'SubAhed.php', 'BIO: I am Marjolein but people call me marjo   <br> " +\n        "i lost mine husband on the blink of escape <br> " +\n        "And now i am very Depression'),
(4, 'Icter Peter', 'SubNear.php', 'BIO: I am Peter i am a software developer for 15 years now   <br> " +\n        "And a ao teacher for 5 years <br> " +\n        "But when the city was infected i did straight go to here'),
(5, 'Explorer Arya ', 'SubNear.php', 'BIO: I am Arya and i am in the deep shit of my life  <br> " +\n        "Kicked of stage, Trouble with school enzv. <br> " +\n        "I was on holliday here with my friends but when the outbreak started i never heard of them again'),
(6, 'Wachter Nina', 'SubNear.php', 'BIO: I am Nina I hold a look on the one that come here  <br> " +\n        "I keep the order and make sure it safe here <br> " +\n        "And for sure there walking a few soldier around here'),
(7, 'Beuaty King Lauren', 'SubYard.php', 'BIO: I am Lauren I hold a beauty blog and beauty insta en pinterset  <br> " +\n        "it was so delux life but yeah then the outbreak came <br> " +\n        "A i want back to my old life'),
(8, 'photographer Mike', 'SubYard.php', 'BIO: I am Mike I used to photograph the nature  <br> " +\n        "But with the outbreak that was kind of difficult <br> " +\n        "So i ran away to here with some other people'),
(9, 'Teacher Berna', 'SubYard.php', 'BIO: I am Berna after teaching for 12 years on the davinci i moved to new york  <br> " +\n        "This is because i got a job offer to teach english en ducht here <br> " +\n        "As you think why i did this is because of the view <br>" +\n        "Only not nowing of a outbreak'),
(10, 'Coach Jeroen', 'SubYard.php', 'BIO: I am Jeroen and i was on holliyday with Coach Marieke here in new york  <br> " +\n        "After we left davinci we said together lets go on a trip <br> " +\n        "so we went to londen, Tortno and now we are here <br>" +\n        "We have regrat that we went to new york at this time'),
(11, 'Coach Marieke', 'SubYard.php', 'BIO: I am Marieke and i was on holliyday with Coach Jeroen here in new york  <br> " +\n        "After we left davinci we said together lets go on a trip <br> " +\n        "so we went to londen, Tortno and now we are here <br>" +\n        "We have regrat that we went to new york at this time'),
(12, 'Mother Lieke', 'SubYard.php', 'BIO: I am Lieke i am mother of 2 kids  <br> " +\n        "There are my only thing lefr now so <br> " +\n        "But they are thisrty and i cant do anything <br>" +\n        "I loved new yoerk but the outbreak was a pain in the ass'),
(13, 'Data tracker Harmes', 'SubYard.php', 'BIO: I am Harrems i teach DataIt on davinci  <br> " +\n        "I was here only on holiday but never thought of this <br> " +\n        "Will we get home sometimes'),
(14, 'Monsternon', 'SubYard.php', 'BIO: Well i am famous youtuber Monsternon  <br> " +\n        "I was here on holliyday and that was afwull i tell you <br> " +\n        "Well maby you are one day join BAKFIEST and dont forget JUSTINNNNNNNNNNNNNNN'),
(15, 'Sales Expert Elsie', 'SubYard.php', 'BIO: Hi there i am Elsie and i am 21 years old  <br> " +\n        "I have completed my master in salesand lived in Breda <br> " +\n        "I moved to new york because of my new study but i wished i never would'),
(16, 'Student Ariëlle', 'SubYard.php', 'BIO: Hi there i am Ariëlle and i am 18 years old  <br> " +\n        "I study graphic desing on davinci in holland but was here on holliyday <br> " +\n        "I now wished i never went to here on holliyday <br>" +\n        "Maby my friends had better luck'),
(17, 'watcher of the kids Maxine', 'SubBack.php', 'BIO: Hi there i am Maxine and i am 19 years old  <br> " +\n        "I moved to new york because of my new study english study <br> " +\n        "I loved New york  sso i choose this place as study <br>" +\n        "Well i wished i never had done that'),
(18, 'Econoom Tim ', 'SubBack.php', 'BIO: Well i am tim and i worked on the New york stock exchange  <br> " +\n        "Well working there is quite a disater that is what i can tell you <br> " +\n        "Well its was fun seeing al the people running around when a bunissis shut down after a bank rupt <br>" +\n        "So it was quite a diaster and fun at the same time'),
(19, 'Guard Paul', 'SubDoor.php\r\n', 'BIO: Well a stranger, Hi there i am paul  <br> " +\n        "I worked for 15 years in the police deparment for god sake <br> " +\n        "And now i am here stuck by a door that i needs to guard <br>" +\n        "Because the other side of the subbase is not secure <br>" +\n        "Maby we can make a deal friend'),
(20, 'Bakfiest Group', 'SubSchool.php\r\n', 'BIO: Well We are Bakfiest <br>" +\n        "We started teh group because ...... wat it was doenst mather <br>" +\n        "And rember #Justinlifematters'),
(21, 'Pregnant Emma', 'AgianStreet.php', 'BIO: I am Emma and for god sake i choose the wrong time to be pregnant <br> " +\n        " I grew up in New york studied here and even had a job here  <br> " +\n        " I met my husband Jurgen when is was 24 and we married at the age of 29 <br>" +\n        " Three months later We were happy that i finally was pregnant <br>" +\n        " But now 7,5 months later here we stand the worst time to be pregnant";'),
(22, 'Electrician Erik', 'OMetal.php', 'BIO: I am Erik and worked here for 8 years now <br> " +\n        " Well not in the store but the bunnsis right to it  <br> " +\n        " And so here i standing staring at the bulding  <br>" +\n        " Well at least i dont have to do my job here  <br>" +\n        " Well at least i can retire now'),
(23, 'Hotel Owner Anna', 'HotelE.php', 'BIO: Hi there i am Anna <br> " +\n        " I strted this hotel 18 years ago and it growed to the biggest one in the city  <br> " +\n        " I refuse to leave my city <br>" +\n        "So you can leave unless you have something to as'),
(24, 'Singer Gorden en geer', 'HotelStair.php\r\n', 'BIO: We are SIngers Geer en Goor  <br> " +\n        " At least not so goor as you  <br> " +\n        " Wahahahahhahh  <br>" +\n        "So we stayed at the hotel for a concert in the city'),
(25, 'Chef Hans', 'HotelD.php\r\n', 'BIO: Well Well a stranger <br> " +\n        " Hi i am chef of the kitchen and my name is hans  <br> " +\n        " I served this hotel sinds it has been build and i am close with Anna  <br>" +\n        "We are deep friends when we stared this hotel'),
(26, 'Teacher Imre', 'SchoolClass1.php', 'BIO: Well Well a new slaf <br> " +\n        " Hi i am teacher Imre And i teach kids all albout russia  <br> " +\n        " Form swearing to squad like a true slaf my friend  <br>" +\n        " So are you here to for the lesson take place then'),
(27, 'Coach Corine', 'SchoolClass1.php', 'Well i am Corine <br>" +\n        "I started Coaching on davinci so about a year ago <br>" +\n        " Well i loved to help pepole evole in there own skill <br>" +\n        "But get on holliday with Coach Marieke and Jeroen was a bad idea <br>" +\n        "i wonder how they are doining'),
(28, 'Student Dylan', 'SchoolClass1.php', 'BIO: Well i am Dylan and i am 21 years old <br>" +\n        "I started at davinci college in 2016 Setpmber and almost finshed <br>" +\n        "I was here in New york for my last gratute stage so this is unforantly'),
(29, 'Students Sanne en Robin', 'SchoolClass2.php', 'BIO: Well We are Sanne and Robin and both are we 22 years old <br>" +\n        " We studied on the davinci college in holland in the  place gorinchm <br>" +\n        " it was a mehhhhh school but what did you expect'),
(30, 'electrician teacher Edwin', 'SchoolClass2.php', 'BIO: Hi There i am Edwin and i am a teacher <br>" +\n        "I teached Kids For Electrician for a decaeed of 2,5  <br>" +\n        "Now i am stuck here well the world is great here he '),
(31, 'Art teacher Christina', 'SchoolAula.php\r\n', 'BIO: Well a stranger come along i dont bite <br>" +\n        "I am the Art teacher on this school and my name is Christina  <br>" +\n        " Well with the outbreak there is not my Art left in the city <br>" +\n        "So i try to keep it alive but thats gonna get diffcult'),
(32, 'Gothic Kids', 'SchoolStair.php', 'BIO: Well we are the Gothic kids <br>" +\n        "We just want the world black and black only <br>" +\n        "So go away'),
(33, 'Director Kees', 'SchoolClass3.php', 'BIO: Hi there Stranger i am Kees <br>" +\n        "I am The director of this school for over 15 years now <br>" +\n        "I saw people go and saw people elove so i have seen much<br>" +\n        "Not everything but this even.'),
(34, 'Teacher Hans', 'SchoolClass3.php', 'BIO: So new fresh Blood <br>" +\n        "Just kidding i am techer Hans and do this al over 10 years now <br>" +\n        "I dissagree on one way lesson i tell you how but if you do it better go on. <br>" +\n        "I started a project last year with some students from it to give lesson about tools <br>" +\n        "Well i regrat going on holiyday to new york'),
(35, 'Teacher Eduwan', 'SchoolClass5.php\r\n', 'BIO: Well Well Are you here for class <br>" +\n        "Well Just a Joke i am Eduwan And i am a teacher for 5 years now <br> " +\n        " So what are you doing here if i can ask?'),
(36, 'Student Jos', 'SchoolClass6.php', 'BIO: Well stranger i am Jos  <br>" +\n        "I studied It in holland IT for over 5 years <br>" +\n        "After i finshed that i went to studie It here in new york but yeah'),
(37, 'Student Brain', 'SchoolClass6.php', 'BIO: Well stranger i am brain  <br>" +\n        "I studied It in holland IT for over 3 years <br>" +\n        "After i finshed that i went to studied It here in new york but yeah <br>" +\n        "i was almost done with my study here so i could go back'),
(38, 'programmer Youri and Pieter', 'SchoolClass7.php', 'BIO: Hi there We are Youri and Pieter <br>" +\n        "We studied software development and for a job moved to new york <br>" +\n        "So we went togther on work search to new york and found a job" +\n        "Never nowing that would end this bad'),
(39, 'teacher Ingrit', 'SchoolClass7.php', 'BIO: Well hi i am Ingrit <br>" +\n        "I teach here for at least 12,5 years now <br>" +\n        "Wat i teach are It and some lanuguge <br>" +\n        "Maby i did need a holliyday after all');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc_stats`
--

DROP TABLE IF EXISTS `npc_stats`;
CREATE TABLE IF NOT EXISTS `npc_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npc_id` int(11) NOT NULL,
  `stat_id` int(11) NOT NULL,
  `content` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `npc_stats`
--

INSERT INTO `npc_stats` (`id`, `npc_id`, `stat_id`, `content`) VALUES
(1, 1, 13, NULL),
(2, 2, 13, NULL),
(3, 3, 13, NULL),
(4, 4, 13, NULL),
(5, 5, 13, NULL),
(6, 6, 13, NULL),
(7, 7, 13, NULL),
(8, 8, 13, NULL),
(9, 9, 13, NULL),
(10, 10, 13, NULL),
(11, 11, 14, NULL),
(12, 12, 13, NULL),
(13, 13, 13, NULL),
(14, 14, 13, NULL),
(15, 15, 13, NULL),
(16, 16, 13, NULL),
(17, 17, 13, NULL),
(18, 18, 13, NULL),
(19, 19, 13, NULL),
(20, 20, 13, NULL),
(21, 21, 13, NULL),
(22, 22, 13, NULL),
(23, 23, 13, NULL),
(24, 24, 13, NULL),
(25, 25, 13, NULL),
(26, 26, 13, NULL),
(27, 27, 13, NULL),
(28, 28, 13, NULL),
(29, 29, 13, NULL),
(30, 30, 13, NULL),
(31, 31, 13, NULL),
(32, 32, 13, NULL),
(33, 33, 13, NULL),
(34, 34, 13, NULL),
(35, 35, 13, NULL),
(36, 36, 13, NULL),
(37, 37, 13, NULL),
(38, 38, 13, NULL),
(39, 39, 13, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `party`
--

INSERT INTO `party` (`id`, `player_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `party_members`
--

DROP TABLE IF EXISTS `party_members`;
CREATE TABLE IF NOT EXISTS `party_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_id` int(11) NOT NULL,
  `npc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `party_members`
--

INSERT INTO `party_members` (`id`, `party_id`, `npc_id`) VALUES
(5, 1, 11);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(1024) NOT NULL,
  `LastName` varchar(1024) NOT NULL,
  `Email` varchar(1024) NOT NULL,
  `Password` varchar(1024) NOT NULL,
  `Username` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `player`
--

INSERT INTO `player` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `Username`) VALUES
(1, 'Ellen', 'Van de Laar', 'EllenLaar@hotmail,com', 'lololololo', 'EllenJustin'),
(2, 'Justin', 'Van de Laar', 'justin555@live.nl', 'lololololo', 'juju125'),
(3, 'Marieke', 'Van Zante', 'mvanzante@davinci.nl', 'Marieke999', 'Marieke43');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
CREATE TABLE IF NOT EXISTS `player_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `stat_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=572 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `player_stats`
--

INSERT INTO `player_stats` (`id`, `user_id`, `stat_id`, `content`) VALUES
(1, 1, 5, '175'),
(2, 1, 1, '80'),
(3, 1, 2, '100'),
(4, 1, 3, '250'),
(5, 1, 4, '300'),
(6, 1, 7, '50'),
(7, 1, 6, '25'),
(545, 2, 9, '63'),
(571, 3, 9, ''),
(570, 3, 8, ''),
(544, 2, 8, '67'),
(569, 3, 11, '5000'),
(506, 1, 8, ''),
(568, 3, 3, '5260'),
(496, 1, 10, ''),
(495, 1, 9, ''),
(567, 3, 7, '50'),
(566, 3, 2, '100'),
(563, 3, 4, '300'),
(564, 3, 6, '25'),
(562, 3, 5, '300'),
(529, 2, 11, '655360000'),
(528, 2, 3, '140595'),
(527, 2, 7, '50'),
(526, 2, 2, '24780'),
(525, 2, 1, '263420'),
(524, 2, 6, '25'),
(523, 2, 4, '11700'),
(522, 2, 5, '11700'),
(565, 3, 1, '1080'),
(510, 1, 11, '5000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quest`
--

DROP TABLE IF EXISTS `quest`;
CREATE TABLE IF NOT EXISTS `quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(1024) NOT NULL,
  `Npc_id` int(11) DEFAULT NULL,
  `Gold` int(11) DEFAULT NULL,
  `Reward` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `quest`
--

INSERT INTO `quest` (`id`, `Name`, `Npc_id`, `Gold`, `Reward`) VALUES
(1, 'Healing', 1, 175, 'PowerSwicht'),
(2, 'Wacht Time', 17, 500, 'NULL'),
(3, 'Helping Hand', 11, 1250, 'Npc 11 as buddy'),
(4, 'Coaching a Book', 10, 2250, 'NULL'),
(5, 'Data is a Nut', 13, 4500, 'Laptop'),
(6, 'Learning Why?', 9, 1000, '+50 Def'),
(7, 'Guns And Roses  ', 2, 2500, 'Info About a serect place'),
(8, 'happiness', 3, 150, 'NULL'),
(9, 'Girl Dreams', 7, 6000, 'NULL'),
(10, 'Recording', 7, 1250, 'NULL'),
(11, 'Picture Smile', 8, 250, 'KeySP (Rest of the ship)'),
(12, 'On the Hunt', 8, 3750, 'NULL'),
(13, 'Thurst nope', 12, 2350, 'NULL'),
(14, 'Treat time', 17, 675, 'Info about a serect place '),
(15, 'Math time :(', 18, 1780, 'Info About a serect place'),
(16, 'Something to do', 19, 375, 'Access futher in the base '),
(17, '#Bakfiest For Leader', 14, 2650, 'NULL'),
(18, 'Help on the way', 10, 2450, 'Npc10 is now in the schoolhall'),
(19, 'Lost Friends', 5, 1250, 'NULL'),
(20, 'A blink for a eye', 6, 550, 'NULL'),
(21, 'Saftey first', 21, 450, 'Npc 21 --> Subdocks'),
(22, 'Hey Appel KNIFE', 25, 2670, 'NULL'),
(23, 'Restarting Coaching', 27, 4500, 'NULL'),
(24, 'Art Skills?', 31, 1250, 'M4a1-s, M4, Rpg'),
(25, 'Connecting', 34, 1900, 'Light Cyan Potion');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stats`
--

DROP TABLE IF EXISTS `stats`;
CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(1024) NOT NULL,
  `short_name` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `stats`
--

INSERT INTO `stats` (`id`, `display_name`, `short_name`) VALUES
(1, 'Attack', 'atk'),
(2, 'Defense', 'def'),
(3, 'Gold', 'gc'),
(4, 'Maximum HP', 'maxhp'),
(5, 'Current HP', 'curhp'),
(6, 'Set Default HP Values', 'sethp'),
(7, 'Magic Defence', 'mdef'),
(8, 'Primary Hand Weapon', 'phand'),
(9, 'Secondery Hand Weapon', 'shand'),
(11, 'Gold In Bank', 'bankgc'),
(12, 'Item Use Token', 'token'),
(13, 'Postion', 'pos'),
(14, 'InParty', 'par');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
