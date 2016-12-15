-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 15 dec 2016 om 11:17
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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

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
(55, 3, 24);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inventory`
--

INSERT INTO `inventory` (`id`, `player_id`, `item_id`, `space`, `quantity`) VALUES
(1, '1', 103, 50, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

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
(103, 'PickAxe', 'Usable', 100000);

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
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

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
(230, 100, 12, '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(37, 'Denizen', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

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
(63, 36, 12, 100);

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
) ENGINE=MyISAM AUTO_INCREMENT=2103 DEFAULT CHARSET=latin1;

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
(2102, 6, 11, '100');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `player`
--

INSERT INTO `player` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `Username`) VALUES
(1, 'Ellen', 'Van de Laar', 'EllenLaar@hotmail,com', 'lololololo', 'EllenJustin'),
(2, 'Justin', 'Van de Laar', 'justin555@live.nl', 'lololololo', 'juju125');

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
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=latin1;

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
(545, 2, 9, '65'),
(544, 2, 8, '66'),
(506, 1, 8, ''),
(496, 1, 10, ''),
(495, 1, 9, ''),
(529, 2, 11, '0'),
(528, 2, 3, '5250'),
(527, 2, 7, '50'),
(526, 2, 2, '100'),
(525, 2, 1, '80'),
(524, 2, 6, '25'),
(523, 2, 4, '300'),
(522, 2, 5, '175'),
(510, 1, 11, '5000');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 'Item Use Token', 'token');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
