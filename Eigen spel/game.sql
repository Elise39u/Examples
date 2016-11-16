-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 16 nov 2016 om 15:33
-- Serverversie: 5.7.9
-- PHP-versie: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `choices`
--

DROP TABLE IF EXISTS `choices`;
CREATE TABLE IF NOT EXISTS `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `title` varchar(254) NOT NULL,
  `need_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=latin1 COMMENT='Choice';

--
-- Gegevens worden geëxporteerd voor tabel `choices`
--

INSERT INTO `choices` (`id`, `from_id`, `to_id`, `title`, `need_item_id`) VALUES
(1, 1, 2, 'Start The Game', NULL),
(2, 2, 3, 'The bed room ', NULL),
(3, 2, 4, 'Garden', NULL),
(4, 2, 5, 'Kichten', NULL),
(5, 2, 6, 'Outside ', NULL),
(6, 3, 2, 'Living room', NULL),
(7, 3, 5, 'Kichten', NULL),
(8, 4, 2, 'The living room', NULL),
(9, 5, 2, 'The living room', NULL),
(10, 5, 3, 'The bed room ', NULL),
(11, 6, 2, 'Back inside', NULL),
(12, 6, 7, 'The pass', NULL),
(13, 7, 6, 'Go back inside ', NULL),
(14, 6, 8, 'Outside the wood store ', NULL),
(15, 8, 6, 'Go back', NULL),
(16, 8, 9, 'Inside the wood store', NULL),
(17, 9, 8, 'Go back outside', NULL),
(18, 6, 10, 'Outside the electro store', NULL),
(19, 10, 6, 'GO back on the street', NULL),
(20, 10, 11, 'Go inside the electro store', NULL),
(21, 11, 10, 'Go back outside ', NULL),
(22, 6, 12, 'The sandpath', NULL),
(23, 12, 13, 'TO the river ', NULL),
(24, 12, 6, 'Go back ?', NULL),
(25, 13, 12, 'Go back on the path', NULL),
(44, 9, 22, 'Pick up Paddle ', NULL),
(27, 6, 14, 'Go futher on ', NULL),
(28, 14, 6, 'Go back ', NULL),
(29, 14, 15, 'to the right', NULL),
(30, 15, 14, 'Go back to the street', NULL),
(31, 14, 16, 'TO the bridge ', NULL),
(32, 16, 14, 'Go back as warning', NULL),
(33, 16, 17, 'Go the army ', NULL),
(34, 17, 16, 'NO', NULL),
(35, 14, 18, 'GO futher on', NULL),
(36, 18, 14, 'GO back', NULL),
(37, 18, 19, 'To the grage ', NULL),
(38, 19, 18, 'Go back outside', NULL),
(40, 18, 20, 'To the metal store', NULL),
(41, 20, 21, 'Inside the metal store', NULL),
(42, 20, 18, 'GO back', NULL),
(43, 21, 20, 'go back outside\r\n', NULL),
(45, 9, 23, 'Pick up Basebalbat', NULL),
(46, 9, 24, 'Pick up a Axe', NULL),
(48, 22, 9, 'Go back', NULL),
(49, 23, 9, 'Go back', NULL),
(50, 24, 9, 'Go back', NULL),
(51, 13, 25, 'Escape the city ', 4),
(52, 25, 1, 'Start over', NULL),
(53, 9, 26, 'Pick up a hammer', NULL),
(54, 26, 9, 'Go back', NULL),
(55, 13, 27, 'Load the boat', 6),
(56, 27, 7, 'Drive to the pass', 6),
(57, 7, 28, 'GO on the river ', 7),
(58, 28, 7, 'Row Back to the city', 7),
(59, 17, 29, 'Yes', 12),
(60, 29, 1, 'Start over', NULL),
(61, 28, 30, 'Continu rowining', 7),
(62, 30, 28, 'row back', 7),
(63, 30, 31, 'Walk down the road', NULL),
(64, 31, 30, 'Walk back', NULL),
(65, 31, 32, 'Go to the store ', NULL),
(66, 32, 31, 'Go back', NULL),
(69, 31, 34, 'GO to the big building ', NULL),
(70, 34, 31, 'GO back', NULL),
(71, 11, 50, 'Back room???', NULL),
(72, 50, 11, 'Go back in the store', NULL),
(73, 50, 39, 'The roof', NULL),
(74, 39, 50, 'Go back in the building ', NULL),
(75, 39, 40, 'Build the Antenne ', 37),
(76, 40, 41, 'Army', 37),
(77, 40, 42, 'Who is this??', 37),
(78, 40, 43, 'The News', 37),
(79, 41, 39, 'End 3 Start', NULL),
(80, 42, 39, 'End 4 Start', NULL),
(81, 43, 39, 'End 2 Continu ', NULL),
(82, 34, 35, 'Go to the station', NULL),
(83, 35, 34, 'Go back on the road', NULL),
(84, 35, 36, 'Go inside', 9),
(85, 36, 35, 'Go back outside ', NULL),
(86, 36, 37, 'Weapon Cache ', 33),
(87, 37, 36, 'Go back or not', NULL),
(88, 36, 38, 'Go to the roof', NULL),
(89, 38, 53, 'Signal the flare', 38),
(90, 53, 51, 'GAME OVER', 38),
(91, 34, 97, 'Go on walking ', NULL),
(92, 44, 97, 'Go back on the road ', NULL),
(93, 44, 45, 'Go inside the bank', NULL),
(94, 45, 44, 'No Key??', NULL),
(95, 45, 46, 'GO inside ', 10),
(96, 46, 45, 'Go outside', NULL),
(97, 46, 47, 'The vault', NULL),
(98, 47, 46, 'Go back', NULL),
(99, 18, 48, 'Continu Maby?', NULL),
(100, 48, 18, 'Go back', NULL),
(101, 48, 49, 'Go inside', 8),
(102, 49, 54, 'Signal Mr s ', 38),
(103, 54, 52, 'GAME OVER', 38),
(104, 51, 1, 'Start Over', NULL),
(105, 52, 1, 'Start over', NULL),
(106, 38, 36, 'GO back inside', NULL),
(111, 58, 59, 'SVD dragounv??', NULL),
(125, 9, 72, 'Nail gun', NULL),
(126, 72, 9, 'Go back', NULL),
(139, 32, 81, 'Silencer?', NULL),
(140, 81, 32, 'Go back', NULL),
(196, 46, 98, 'The counter', NULL),
(195, 32, 33, 'Go inside the store ', NULL),
(153, 19, 56, 'Take the car', NULL),
(154, 19, 65, 'A jerrycan', NULL),
(155, 56, 13, 'Go get the boat', 11),
(156, 56, 19, 'Go back', NULL),
(157, 65, 56, 'Fill the car', NULL),
(158, 39, 67, 'A key ???', NULL),
(159, 67, 39, 'Go back with the key', NULL),
(160, 38, 66, 'A key??', NULL),
(161, 66, 38, 'Go back with this??', NULL),
(162, 47, 68, 'a Key ??', NULL),
(163, 68, 47, 'GO back with it?', NULL),
(164, 47, 64, 'GOLD !!!!!!!', NULL),
(165, 64, 47, 'Take 10 stafes with you', NULL),
(166, 2, 77, 'REcvier', NULL),
(167, 77, 2, 'Go back ', NULL),
(168, 50, 80, 'Card??', NULL),
(169, 80, 50, 'Ehhheee ???', NULL),
(170, 21, 87, 'Versterker', NULL),
(171, 87, 21, 'Go back', NULL),
(172, 49, 55, 'Antenne', NULL),
(173, 55, 49, 'Now what?', NULL),
(174, 37, 63, 'A flare', NULL),
(175, 63, 37, 'Go look for more', NULL),
(176, 37, 89, 'Sniper', NULL),
(177, 89, 37, 'Look Around', NULL),
(178, 37, 90, 'M4', NULL),
(179, 90, 37, 'Look around more', NULL),
(180, 37, 91, 'M4a1-s', NULL),
(181, 91, 37, 'A Step Back', NULL),
(182, 37, 92, 'SVD Sniper', NULL),
(183, 92, 37, 'BACK BACK', NULL),
(184, 37, 93, 'Scar', NULL),
(185, 93, 37, 'Back BAck', NULL),
(186, 37, 94, 'SPASIE', NULL),
(187, 94, 37, '360 or not', NULL),
(188, 37, 95, 'Usps-s', NULL),
(189, 95, 37, 'Back', NULL),
(190, 49, 48, 'Go back', NULL),
(191, 96, 1, 'Fill something normal in ', NULL),
(193, 180, 98, 'Go swap weapons', NULL);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inventory`
--

INSERT INTO `inventory` (`id`, `player_id`, `item_id`, `space`) VALUES
(1, '1', 34, 35),
(2, '1', 1, 34),
(3, '1', 11, 33),
(4, '1', 6, 32),
(5, '1', 7, 31),
(6, '1', 36, 30),
(7, '1', 35, 29),
(8, '1', 18, 28);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `type` enum('Weapon','Armor','Usable','Drop','Potion') DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `items`
--

INSERT INTO `items` (`id`, `name`, `type`, `price`) VALUES
(1, 'Baseballbat', 'Weapon', 50),
(2, 'Sword', 'Weapon', 500),
(3, 'Axe', 'Weapon', 150),
(4, 'Paddle', 'Usable', 50),
(5, 'Hammer', 'Weapon', 200),
(6, 'Car', 'Usable', 50),
(7, 'Boat', 'Usable', 50),
(8, 'KeyGV', 'Usable', 50),
(9, 'KeyPS', 'Usable', 50),
(10, 'KeyBK', 'Usable', 50),
(11, 'Jerrycan', 'Usable', 50),
(12, 'Gold', 'Usable', 50),
(13, 'M4', 'Weapon', 500),
(14, 'Scar', 'Weapon', 500),
(15, 'DRS50', 'Weapon', 750),
(16, 'Spas', 'Weapon', 350),
(17, 'Usp-s', 'Weapon', 150),
(18, 'Silincer', 'Usable', 50),
(19, 'Dragounv', 'Weapon', 750),
(20, 'PSG1', 'Weapon', 750),
(21, 'XM1014', 'Weapon', 350),
(22, 'Ranger', 'Weapon', 350),
(23, 'Striker', 'Weapon', 650),
(24, 'Five-Seven', 'Weapon', 250),
(25, 'Tec-9', 'Weapon', 250),
(26, 'P250', 'Weapon', 150),
(27, 'Tar-21', 'Weapon', 550),
(28, 'Fal', 'Weapon', 550),
(29, 'RPG', 'Weapon', 1250),
(30, 'M27-Law', 'Weapon', 1250),
(31, 'Javelin', 'Weapon', 1750),
(32, 'Crossbow', 'Weapon', 850),
(33, 'SecurityCard', 'Usable', 50),
(34, 'Nailgun', 'Weapon', 100),
(35, 'Versterker', 'Usable', 50),
(36, 'Receiver', 'Usable', 50),
(37, 'Antenne', 'Usable', 50),
(38, 'Flare', 'Usable', 50),
(39, 'M4A1-s', 'Weapon', 450),
(40, 'DragounvSVD', 'Weapon', 950),
(41, 'PSG1SVD', 'Weapon', 950),
(42, 'Light Red Potion', 'Potion', 550),
(43, 'Dark Red Potion ', 'Potion', 450),
(44, 'Light Purple Potion ', 'Potion', 850),
(45, 'Purple Potion', 'Potion', 1500),
(46, 'Dark Purple Potion', 'Potion', 650),
(47, 'Light Cyan Potion', 'Potion', 780),
(48, 'Dark Cyan Potion', 'Potion', 390),
(49, 'Light Orange Potion', 'Potion', 680),
(50, 'Dark Orange Potion', 'Potion', 340),
(51, 'Light Yellow Potion', 'Potion', 220),
(52, 'Dark Yellow Potion', 'Potion', 110),
(53, 'Light Green Potion', 'Potion', 45),
(54, 'Green Potion', 'Potion', 120),
(55, 'Dark Green Potion', 'Potion', 980),
(56, 'Rainbow Potion', 'Potion', 25000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items(backup)`
--

DROP TABLE IF EXISTS `items(backup)`;
CREATE TABLE IF NOT EXISTS `items(backup)` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(254) NOT NULL,
  `Attack` varchar(254) NOT NULL,
  `Defense` varchar(254) NOT NULL,
  `type` enum('Armor','Weapon','Usable','Tradebel','Delete') NOT NULL,
  `Number` varchar(127) NOT NULL,
  `Place` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `items(backup)`
--

INSERT INTO `items(backup)` (`id`, `Name`, `Attack`, `Defense`, `type`, `Number`, `Place`) VALUES
(1, 'Basebalbat', '5', '0', 'Weapon', '100', 'Woodstore'),
(2, 'Sword', '200', '50', 'Weapon', '5', 'Metal store'),
(3, 'Axe', '50', '10', 'Weapon', '20', 'Woodstore'),
(4, 'Paddle', '5', '0', 'Usable', '1', 'Woodstore'),
(5, 'Hammer', '85', '45', 'Weapon', '5', 'Woodstore\r\n'),
(6, 'Car', 'Insta Dead', '100000', 'Usable', '1', 'Garage'),
(7, 'Boat', '0', '1500', 'Usable', '1', 'The river\r\n'),
(8, 'Key (Graveyard)', '0', '0', 'Usable', '1', 'Bank'),
(9, 'Key (Police Station) ', '0', '0', 'Usable', '1', 'Roof Electro Store'),
(10, 'key (Bank)', '0', '0', 'Usable', '1', 'Roof of the Police Station'),
(11, 'JerryCan', '50', '0', 'Usable', '1', 'Garage'),
(12, 'Gold', '0', '0', 'Usable', '1000000000', 'Bank'),
(13, 'M4', '60', '0', 'Weapon', '10', 'Gun store And Police Station '),
(14, 'Scar', '48', '0', 'Weapon', '8', 'Gun store and Police Station'),
(15, 'DRS 50', '95', '0', 'Weapon', '7', 'Gun store and Police Station '),
(16, 'Spas', '80', '0', 'Weapon', '10', 'Gun store and Police Station '),
(17, 'Usp-s', '30', '5', 'Weapon', '25', 'Gun store and Police Station'),
(18, 'Silncer ', '-5', '20', 'Usable', '20', 'Gun store '),
(19, 'Dragounv', '65', '0', 'Weapon', '5', 'Gun store '),
(20, 'PSG1', '85', '0', 'Weapon', '5', 'Gun Store'),
(21, 'XM1014', '60', '0', 'Weapon', '5', 'Gun Store'),
(22, 'Ranger', '75', '0', 'Weapon', '5', 'Gun store '),
(23, 'Striker', '90', '0', 'Weapon', '5', 'Gun Store'),
(24, 'Five-Seven', '45', '0', 'Weapon', '5', 'Gun Store'),
(25, 'Tec9', '40', '0', 'Weapon', '5', 'Gun store'),
(26, 'P250', '30', '0', 'Weapon', '5', 'Gun Store'),
(27, 'Tar-21', '55', '0', 'Weapon', '5', 'Gun store'),
(28, 'Fal', '60', '0', 'Weapon', '5', 'Gun store'),
(29, 'Rpg', '250', '0', 'Weapon', '5', 'Gun Store '),
(30, 'M27-Law', '250', '0', 'Weapon', '5', 'Gun Store'),
(31, 'Javelin', '400', '-10', 'Weapon', '5', 'Gun store'),
(32, 'CrossBow', '150', '0', 'Weapon', '5', 'Gun store'),
(33, 'Security Card Weapon Cache', '0', '0', 'Weapon', '1', 'Back room of the electro store '),
(34, 'Nail gun', '10', '0', 'Weapon', '5', 'Wood store'),
(35, 'Versterker', '0', '0', 'Usable', '1', 'Metal store'),
(36, 'Receiver ', '0', '0', 'Usable', '1', 'Spawned er mee '),
(37, 'Antenne', '0', '5000', 'Usable', '1', 'Graveyard'),
(38, 'Flare', '40', '0', 'Usable', '4', 'Weapon Cache'),
(39, 'M4A1-s', '45', '0', 'Weapon', '10', 'Weapon Cache and Gun Store'),
(40, 'Silenced Dragounv', '55', '0', 'Weapon', '5', 'Gun store'),
(41, 'SVD psg1', '65', '0', 'Weapon', '10', 'Gun store and Weapon Cache ');

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
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

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
(25, 13, 1, '60'),
(26, 13, 2, '0'),
(27, 14, 1, '48'),
(28, 14, 2, '0'),
(29, 15, 1, '95'),
(30, 15, 2, '0'),
(31, 16, 1, '80'),
(32, 16, 2, '0'),
(33, 17, 1, '30'),
(34, 17, 2, '0'),
(35, 18, 1, '-5'),
(36, 18, 2, '0'),
(37, 19, 1, '65'),
(38, 19, 2, '0'),
(39, 20, 1, '85'),
(40, 20, 2, '0'),
(41, 21, 1, '60'),
(42, 21, 2, '0'),
(43, 22, 1, '75'),
(44, 22, 2, '0'),
(45, 23, 1, '90'),
(46, 23, 2, '0'),
(47, 24, 1, '45'),
(48, 24, 2, '0'),
(49, 18, 1, '40'),
(50, 18, 2, '0'),
(51, 26, 1, '30'),
(52, 26, 2, '0'),
(53, 27, 1, '55'),
(54, 27, 2, '0'),
(55, 28, 1, '60'),
(56, 28, 2, '0'),
(57, 29, 1, '250'),
(58, 29, 2, '0'),
(59, 30, 1, '250'),
(60, 30, 2, '0'),
(61, 31, 1, '400'),
(62, 31, 2, '-10'),
(63, 32, 1, '150'),
(64, 32, 2, '0'),
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
(77, 39, 1, '45'),
(78, 39, 2, '0'),
(79, 40, 1, '55'),
(80, 40, 2, '0'),
(81, 41, 1, '65'),
(82, 41, 2, '0'),
(83, 100, 1, '0'),
(84, 25, 1, '0'),
(85, 50, 1, '0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(254) NOT NULL,
  `Foto_url` varchar(254) NOT NULL,
  `Story` varchar(1024) NOT NULL,
  `modhealth` varchar(254) NOT NULL,
  `modfire` varchar(254) DEFAULT NULL,
  `item_id` int(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`id`, `Title`, `Foto_url`, `Story`, `modhealth`, `modfire`, `item_id`) VALUES
(1, 'Start The game', 'http://localhost/Eigen%20spel/img/image-3747618.jpg', 'Welcome to my internet game.\r\nDo you want to escape this abonded city?<br>\r\nSo yes click the button below <br>\r\nNo then i say close the page', '100', 'Nothing', NULL),
(2, 'Home', 'http://localhost/Eigen%20spel/img/woonkamer.png', 'You`re standing in the living room of your home in New York. \r\nSuddenly you hear a message on the radio about:\r\n"The city has been evacuated because of a deadly virus."\r\nBut you were too late.\r\nThe message has been broadcasted a half hour ago. \r\nSo how you are gonna escape the city now.\r\nYou`re were thinking about it.', '100', '0', NULL),
(3, 'Bedroom ', 'http://localhost/Eigen%20spel/img/BT11_ModernSerenity_Slaapkamer.jpg', 'You`re thinking about what you''re taking on your trip. \r\nYou''re thinking about getting out of town. \r\nAnd the road to freedom is a long journey.', '100', NULL, NULL),
(4, 'Garden', 'http://localhost/Eigen%20spel/img/download.jpg', 'You`re standing in the garden of your home \r\nThere is a little bit to see. \r\nBecause almost everthing has grown as a jungel.\r\nWhat wil you do.', '100', '-5', NULL),
(5, 'Kichten', 'http://localhost/Eigen%20spel/img/modern-kitchen.jpg', 'You`re standing in the Kichten of your home. \r\nYou`re looking around \r\nYou see that the fridge and stove are a little bit open\r\nAre we gonna take a look inside.\r\nOr do we go on?', '100', NULL, NULL),
(6, 'Outside', 'http://localhost/Eigen%20spel/img/montage.jpg', 'You`re out on the street.\r\na little bit futher you see some stores. \r\nto the left you see a sand path. \r\nand right you see that road goes on. \r\nWhich way wil you go.', '100', NULL, NULL),
(7, 'The pass', 'http://localhost/Eigen%20spel/img/river1.jpg', 'You`re standing near a river \r\nYou can see a police station on the other side. \r\nYou even see a shop.\r\nBut you dont now how to cross.', '100', NULL, NULL),
(8, 'Outside wood', 'http://localhost/Eigen%20spel/img/shop.png', 'There you`re standing in front of the wood store.\r\nand you`re think should i go in.\r\nYou dont now what is in the store present.\r\nBut do you want to go inside.\r\nWhat should i do now.', '100', NULL, NULL),
(9, 'Inside the wood store', 'http://localhost/Eigen%20spel/img/houtwinkel.png', 'There you`re standing inside th wood store.\r\nyou see a paddle lying around \r\nBut you see some wooden planks and weapons.\r\nWhat should i do now.', '100', NULL, NULL),
(10, 'Outside the electro store', 'http://localhost/Eigen%20spel/img/electro.jpg', 'There you`re standing in front of the elctro store.\r\nand you`re think should i go in.\r\nYou dont now what is in the store present.\r\nBut do you want to go inside.\r\nWhat should i do now', '100', NULL, NULL),
(11, 'inside the electro store', 'http://localhost/Eigen%20spel/img/electro.png', 'There you`re standing inside the elctro store.\r\nyou see a backroom.\r\nand a way to the roof.\r\nBut what wil you do.', '100', NULL, NULL),
(12, 'Sand path', 'http://localhost/Eigen%20spel/img/sand.jpg', 'You`re walking down this sandy road. \r\nSuddenly you see in the distance a river.\r\nYou`re thinking by your self \r\nshould i continue walking\r\nor do i go back', '100', NULL, NULL),
(13, 'The end', 'http://localhost/Eigen%20spel/img/river2.jpg', 'There you`re standing in front of the river. \r\nYou look around and see a little boat \r\nYou think yes this is my chane to escape\r\nBut you see there a no paddles \r\nAnd now you think were can i find this paddels?', '100', NULL, NULL),
(14, 'Out on the street ', 'http://localhost/Eigen%20spel/img/street.png', 'And there you`re standing on the middle of the street.\r\nYou look down to the left and see nothing. \r\nTo the right you see almost a bridge.\r\nAnd futher on you see the garage and a store. \r\nWhich way wil you go.', '100', NULL, NULL),
(15, 'Dead end', 'http://localhost/Eigen%20spel/img/street3.png', 'You`re walking down the street.\r\nSuddenly you have reached the end. \r\nAnd you look around. \r\nYou`re thinking nothing. \r\nWhat to do now.', '80', NULL, NULL),
(16, 'Near the bridge ', 'http://localhost/Eigen%20spel/img/nbridge.png', 'You`re walking down the street to the bridge.\r\nSuddenly you hear a voice telling you to stop. \r\nyou stop. \r\nThey say. \r\n"If you not have been infected and you can deliver us the following things we wil help you.\r\n-New weapons\r\n-1000 gold coins"\r\nSo what wil you do now?', '100', NULL, NULL),
(17, 'The end 2', 'http://localhost/Eigen%20spel/img/escape2.png', 'There You`re Standing.\r\nSuddenly a officer comes to you and ask do you have the stuff we asked for it. \r\nyou stop and check your bag.', '100', NULL, NULL),
(18, 'The street agian', 'http://localhost/Eigen%20spel/img/street4.png', 'And there you`re standing at the end of the street.\r\nYou look down to the left and see a store. \r\nTo the right you see grage.\r\nAnd futher on you road goes on. \r\nWhich way wil you go.', '100', '-20', NULL),
(19, 'the Grage', 'http://localhost/Eigen%20spel/img/garage.png', 'And there you`re standing inside the garage .\r\nYou see a car. \r\nTo the right you see a jerrycan.\r\nYou`re thinking should i take the car or leave the building. \r\nAnd you`re thinking by yourself with the car i can take the boat to the other side.\r\nWhat wil we do.', '100', NULL, NULL),
(20, 'Outside the metal store', 'http://localhost/Eigen%20spel/img/metal.png', 'And there you`re standing in front of the metal store.\r\nYou look down through the window. \r\nYou see nothing what now.\r\nGo in to the store or wait outside or turn back.', '100', NULL, NULL),
(21, 'Inside the metal store', 'http://localhost/Eigen%20spel/img/metaal.jpg', 'And there you`re standing inside the mental store.\r\nYou look around. \r\nYou see nothing.\r\nSo should i go back outide.', '100', NULL, NULL),
(22, 'Paddle', 'http://localhost/Eigen%20spel/img/Paddle.png', 'you`re picking up the paddle', '0', NULL, 4),
(23, 'Baseballbat', 'http://localhost/Eigen%20spel/img/Baseballbat.png', 'You`re pickng up a basebalbat', '0', NULL, 1),
(24, 'Axe', 'http://localhost/Eigen%20spel/img/Axe.png', 'You`re pickng up a Axe', '0', NULL, 3),
(25, 'THE END IS NEAR', 'http://localhost/Eigen%20spel/img/download5.jpg', 'You have escape the city. But this was the quicky way ou there are more do you wwant to try it agian', '100', NULL, NULL),
(26, 'Hammer', 'http://localhost/Eigen%20spel/img/hammer.png', 'You have picked up a hammer', '100\r\n', NULL, 5),
(27, 'Take the boat', 'http://localhost/Eigen%20spel/img/boot2.jpg', 'WE are loading the boat on to the car', '100', '-5', 7),
(28, 'On the way to the other side', 'http://localhost/Eigen%20spel/img/Rivier.png', 'There you are on the middle of the river. you look around and see only both sites but should i go back or continu ', '100', NULL, NULL),
(29, 'In the truck', 'http://localhost/Eigen%20spel/img/Back.png', 'There you go. as you enter the truck i need to tell something. There are 2 more serect endings would you go back and find them or not', '100', NULL, NULL),
(30, 'The other side', 'http://localhost/Eigen%20spel/img/Docks.png', 'There you`re standing on a empty docks and you look ahead you see a big buliding. But the road doenst go that way wat now.', '100', NULL, NULL),
(31, 'Futher on the road', 'http://localhost/Eigen%20spel/img/Futher.png', 'As you walking down the road you see a lot of cars. Was this village so popular. But it doenst matter anymore fronm here you see the big bulding  and a anthor store wich way would you go', '100', NULL, NULL),
(32, 'Oustide the Weapon Store', 'http://localhost/Eigen%20spel/img/OutsideWS.png', 'There you standing oustide the weapon store. you could go in but wich dangers are hidden within ', '100', NULL, NULL),
(33, 'Inside The Weapon Store ', 'http://localhost/Eigen%20spel/img/InsideWS.png', 'There you standing. You could get the next weapons but would you risk the inventory space', '100', NULL, NULL),
(34, 'Outside The Station ', 'http://localhost/Eigen%20spel/img/OutsidePS.png', 'There you standing. A little bit futher is the station but the road goes on Curious to see what lies behind ', '100', NULL, NULL),
(35, 'A door?? ', 'http://localhost/Eigen%20spel/img/DoorPS.png', 'There you are knoking on the door but no respone and you think were is the key', '100', NULL, NULL),
(36, 'Inside the Police Station', 'http://localhost/Eigen%20spel/img/InsidePS.png', 'There you are inside the Station you see a good saled locked room. and some stairs going somewehere what what to do now', '100', NULL, NULL),
(37, 'Weapon Cache ', 'http://localhost/Eigen%20spel/img/WeaponCache.png', 'You have made it in to the cache and you see some guns lying around what do you take with you', '100', NULL, NULL),
(38, 'Roof of the Station ', 'http://localhost/Eigen%20spel/img/RoofPS.png', 'There you standing looking over the village but you see a chopper flying around. You`re thinking did they know i am here ', '100', NULL, NULL),
(39, 'Roof of the electro store ', 'http://localhost/Eigen%20spel/img/RoofEl.png', 'As you standing lookng over the city you`re thinking wat can i do here ', '100', NULL, NULL),
(40, 'like wut????', 'http://localhost/Eigen%20spel/img/Message.png', 'As you build you`re Antenne you recvie the folowwing messages <br>\r\n\r\nMessage 1:\r\nFor any ..... Out ....! If you`re still .... and not .... come to the roof of the police .... and we ... pick ... with one of our choppers. The ... needed is a flare ... signal Greeting the Army <br>\r\n\r\nMessage 2:\r\nWe want to that you follow the next steps friend:\r\n1. Go to the graveyard\r\n2. Find us weapons\r\n3. Signal a flare \r\n4. in exchange you can ride with us\r\n\r\nOnly if you make the promisis you can find redemption \r\nGreetings \r\nMr. S\r\n<br>\r\nWhat wil you do now the 2nd message was so clear if it came out of space but wait you recevie a anthor message.<br>\r\n\r\nMessage 3:\r\n... Citziten of New york ... We ... conformation ... Army .. Will .... ... the City.. in case of the outbreak.... to all Citziten ... still ...  ... evac at the bridige... ... luck  ... all ... ... Channel 6 <br>\r\n\r\nAnd now thinking who shoud i message back to escape this god damm city', '100', NULL, NULL),
(41, 'Message From the army', 'http://localhost/Eigen%20spel/img/ArmyM.png', 'As you have send you`re message you wil get this back <br>\r\n\r\nPlease meet with us on the roof of the Police Station and strike a flare so we now its safe until then the army ', '100', NULL, NULL),
(42, 'Messagge From the Unknown ', 'http://localhost/Eigen%20spel/img/AliensM.png', 'You sned the Following message: <br>\nWho are you and why do you want the things from me. <br><br>\nOn answer you get this <br> \nWe nethurgast from place to place. Try to urgnar koroth and lorozzeth to open the arknaoth just follow mine rules and astorr to us but you have limted eourg or you wil swim in you`re own shoth', '100', NULL, NULL),
(43, 'Message from outside', 'http://localhost/Eigen%20spel/img/MessageC.png', 'You send a message back but you dindt get anything and suddenly you`re rember what they asked for ', '100', NULL, NULL),
(44, 'Outside the bank', 'http://localhost/Eigen%20spel/img/OustideB.png', 'As you walk towards the bank you are thinking<br> besides looking for gold what can i find here ', '1oo', NULL, NULL),
(45, 'The bank Door', 'http://localhost/Eigen%20spel/img/BankDoor.png', '<b> Knock Knock </b> No respone <br> so what now wait for someone or go look for a key', '100', NULL, NULL),
(46, 'Inside the bank', 'http://localhost/Eigen%20spel/img/InsideB.png', 'As you walking thourg the bank you come across a vault <br> Should you check inside and maby get something or only evil <br> Choice is on you', '', NULL, NULL),
(47, 'Vault', 'http://localhost/Eigen%20spel/img/vault.png', 'As you standing inside the vault you are looking around. <br> You see gold but futher only empty. <br> What to Do now ', '', NULL, NULL),
(48, 'Graveyard Door', 'http://localhost/Eigen%20spel/img/DoorGrave.png', '<b> Knock Shakes the door </b> <br>\r\nOn lock what now wallk around and look for a way up <br> \r\nMaby a key so i can unlock this ', '100', NULL, NULL),
(49, 'On the Graveyard ', 'http://localhost/Eigen%20spel/img/Graveyard.png', 'as you look around you see a anntene. <br> futher there is nothing but did you rember a message that you found', '100', NULL, NULL),
(50, 'A Back room ', 'http://localhost/Eigen%20spel/img/BackRoomE.png', 'There you standing. <br>\r\n<b> You hear wind coming in to the room </b> <br>\r\nSuddenly you see a way to the roof but wil you go', '100', NULL, NULL),
(51, 'Goodbye', 'http://localhost/Eigen%20spel/img/End3.png', 'As you fly away with the chopper i need to tell something. <br> Have you tried following the <b> Apothicans </b> <br> <b> escapd by boat </b> <br> <b> go away by the bridge </b>', '100', NULL, NULL),
(52, 'Portals ?', 'http://localhost/Eigen%20spel/img/End4.png', 'As you enter Agartah i need to tell something<br> Have you tried following the <b> The army </b> <br> <b> escapd by boat </b> <br> <b> go away by the bridge </b>', '100', NULL, NULL),
(53, 'SIGNAL ', 'http://localhost/Eigen%20spel/img/FlareSignal.png', 'As you strike the flare you hear the folowwing thing <br>\r\nStay there we wil come and rescue you', '100', NULL, NULL),
(54, 'Mr S ?? i am Here', 'http://localhost/Eigen%20spel/img/FlareSignal.png', 'As you wait you see him apper and say: <br>\r\nYou have maked you`re promise <b> Now its time to enter Argatha </b> <br> and  let us consume this demonson <b> YOU FOOL </b>', '100', NULL, NULL),
(55, 'Antenne ???', 'http://localhost/Eigen%20spel/img/Antenne.png', 'What can i do with this ???', '100', NULL, 37),
(56, 'Car', 'http://localhost/Eigen%20spel/img/Car.png', 'Is the fuel tank empty?? <br> where was that <b>jerrycan </b> ', '100', NULL, 6),
(57, 'Crossbow', 'http://localhost/Eigen%20spel/img/Crossbow.png', 'A nice weapon are you thinking <br> but are this arrows <b> Explosive? </b>', '100', NULL, 32),
(58, 'Dragounv ', 'http://localhost/Eigen%20spel/img/Dragounv.png', 'Snipers powerfull but need time to aim is that smart??', '100', NULL, 19),
(59, 'SVD Dragonouv', 'http://localhost/Eigen%20spel/img/DragounvSVD.png', 'A silneced sniper is handy but the aim isthe problem', '100', NULL, 40),
(60, 'Drs 50', 'http://localhost/Eigen%20spel/img/Drs50.png', 'Bolt snipers ;-; not so handy ', '100', NULL, 15),
(61, 'Fal (Semi)', 'http://localhost/Eigen%20spel/img/Fal.png', 'Riffels are handy <br> but a semi is accrute <b> so what now whit this </b>', '100', NULL, 28),
(62, 'Five-Seven', 'http://localhost/Eigen%20spel/img/Five-Seven.png', 'A hand weapon is always use full', '100', NULL, 24),
(63, 'A Flare???', 'http://localhost/Eigen%20spel/img/Flare.png', 'Where is this flare for needed <br>\r\n<b> Suddenly you rember </b>', '100', NULL, 38),
(64, '0.0 Gold ', 'http://localhost/Eigen%20spel/img/Gold.png', 'You look around all that gold <br> You think how much should i take <br> <ul>\r\n<li> 1 </li> <li> 5 </li> or even <li> 10 </li>', '100', '-5 power', 12),
(65, 'A jerrycan ', 'http://localhost/Eigen%20spel/img/Jerrycan.png', 'This is a quit heavy jerrycan <br> At lest means that it is filled ', '100', '-10 stamina ', 11),
(66, 'A key ???', 'http://localhost/Eigen%20spel/img/KeyB.png', 'A key but for what <br>\r\n<b> the bank </b> <br> <b> The station? </b> or even <br> <b> the graveyard </b>', '100', NULL, 10),
(67, 'A key ???', 'http://localhost/Eigen%20spel/img/KeyPS.png', 'A key but for what <br>\r\n<b> the bank </b> <br> <b> The station? </b> or even <br> <b> the graveyard </b>', '100', NULL, 9),
(68, 'A key ???', 'http://localhost/Eigen%20spel/img/KeyGY.png', 'A key but for what <br>\r\n<b> the bank </b> <br> <b> The station? </b> or even <br> <b> the graveyard </b>', '100', NULL, 8),
(69, 'M4 Rifle', 'http://localhost/Eigen%20spel/img/M4.png', 'Nice a rifle <br> But full auto or semi??', '100', NULL, 13),
(70, 'M4 Silneced ??? ', 'http://localhost/Eigen%20spel/img/M4a1-s.png', 'Silnced rifles are better !! ', '100', NULL, 39),
(71, 'm27 Law', 'http://localhost/Eigen%20spel/img/m27Law.png', 'A rocket launcher <br> Deadly and good for killing a entire horde but the the noise its make ', '100', NULL, 30),
(72, 'Nail gun Srs??', 'http://localhost/Eigen%20spel/img/NailGun.png', 'Why do i wantt this anyway if this holds them nailed down then i gusse i take this', '100', NULL, 34),
(73, 'a pistol?', 'http://localhost/Eigen%20spel/img/p250.png', 'A pistol with a small mag <br> in video games its good but here too ', '100', NULL, 26),
(74, 'Snipers -__-', 'http://localhost/Eigen%20spel/img/Psg1.png', 'I hate snipers but this one kan be fired real quick take the try?', '100', NULL, 20),
(75, 'SVD sniper 0.0', 'http://localhost/Eigen%20spel/img/Psg1SVD.png', 'This silenced is a way better choice ', '100', NULL, 41),
(76, 'Shoties ', 'http://localhost/Eigen%20spel/img/Ranger.png', 'A doubble barreld Shotgun nice close en powerfull ', '100', NULL, 22),
(77, 'Recevier', 'http://localhost/Eigen%20spel/img/Recevier.png', 'This is you`re raido <br> it wil be always here but neede for some thing else and that is question', '100', NULL, 36),
(78, 'RPG!!!!', 'http://localhost/Eigen%20spel/img/Rpg.png', 'Rpg or M27 good question ??', '100', NULL, 29),
(79, 'Rifels X.X', 'http://localhost/Eigen%20spel/img/Scar.png', 'Rifles Rifles Rifles <br> Good chocie but the magizine on this one risk it or not ', '100', NULL, 14),
(80, 'A Card?', 'http://localhost/Eigen%20spel/img/SecurityCard.png', 'You see a card and think <br> is that the card for the weapon cache ??', '', NULL, 33),
(81, 'Silencer >>', 'http://localhost/Eigen%20spel/img/Silencer.png', 'Question what you want to do whit this ?', '100', NULL, 18),
(82, 'SHOTIES 0..0', 'http://localhost/Eigen%20spel/img/Spas.png', 'Good pumped action shotgun', '100', NULL, 16),
(83, 'STRIKER OR DO I MEAN STRIKE', 'http://localhost/Eigen%20spel/img/Striker.png', 'Strike to all the zombies', '', NULL, 23),
(84, 'A tar', 'http://localhost/Eigen%20spel/img/tar21.png', 'This gun is simpel and silenced ', '100', NULL, 27),
(85, 'Pistol or Smg?', 'http://localhost/Eigen%20spel/img/Tec9.png', 'Sometimes this gun is a <b> pistol </b><br>\r\nAnd then a <b> smg </b> <br> so what is it now', '100', NULL, 25),
(86, 'Usps', 'http://localhost/Eigen%20spel/img/Usps.png', 'As a quick choice by the police <br> does it means the standards for surive ', '100', NULL, 17),
(87, 'Versterker', 'http://localhost/Eigen%20spel/img/Versterkerer.png', 'This is a machine to make the messages from you`re recvirer stronger so', '100', NULL, 35),
(88, 'XM1014 SHOTTIE AGIAN ', 'http://localhost/Eigen%20spel/img/XM1014.png', 'A powerfull auto shotgun but the risk worth it', '100', NULL, 21),
(89, 'Drs 50 Cache', 'http://localhost/Eigen%20spel/img/Drs50.png', 'Bolt snipers ;-; not so handy ', '100', NULL, 15),
(90, 'M4 Rifle (Cache)', 'http://localhost/Eigen%20spel/img/M4.png', 'Nice a rifle <br> But full auto or semi??', '100', NULL, 13),
(91, 'M4 Silneced ??? (Cache)\r\n', 'http://localhost/Eigen%20spel/img/M4a1-s.png', 'Silnced rifles are better !! ', '100', NULL, 39),
(92, 'SVD sniper 0.0 (Cache)', 'http://localhost/Eigen%20spel/img/Psg1SVD.png', 'This silenced is a way better choice ', '100', NULL, 41),
(93, 'Rifels X.X (Cache)', 'http://localhost/Eigen%20spel/img/Scar.png', 'Rifles Rifles Rifles <br> Good chocie but the magizine on this one risk it or not ', '100', NULL, 14),
(94, 'SHOTIES 0..0 (Cache)', 'http://localhost/Eigen%20spel/img/Spas.png', 'Good pumped action shotgun', '100', NULL, 16),
(95, 'Usps (Cache)', 'http://localhost/Eigen%20spel/img/Usps.png', 'As a quick choice by the police <br> does it means the standards for surive ', '100', NULL, 17),
(96, 'Password to damm short', 'http://localhost/Eigen%20spel/img/password.png', 'Go back and fill a normal password in', '0', '0', NULL),
(97, 'You''ve encountered a  monster!', 'http://localhost/Eigen%20spel/img/Monster.jpg', '\r\n		', '100', NULL, NULL),
(98, 'Depoist or WithDraw?', 'http://localhost/Eigen%20spel/img/Bank2.png', '', '100', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `monsters`
--

DROP TABLE IF EXISTS `monsters`;
CREATE TABLE IF NOT EXISTS `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monsters`
--

INSERT INTO `monsters` (`id`, `name`) VALUES
(1, 'Crazy Eric'),
(2, 'Insane Baker'),
(3, 'Walker'),
(4, 'Floater'),
(5, 'Gang Member'),
(6, 'Hard Hitting Louis'),
(7, 'Tank'),
(8, 'Smoker'),
(9, 'Breeder'),
(10, 'Panzer Soldat'),
(11, 'Fire Margawa'),
(12, 'Shadow Margawa'),
(13, 'Margawa'),
(14, 'Ancestor'),
(15, 'Goliath'),
(16, 'Posion Zombie');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monster_items`
--

INSERT INTO `monster_items` (`id`, `monster_id`, `item_id`, `rarity`) VALUES
(1, 1, 5, 80),
(2, 2, 11, 30),
(3, 16, 5, 65),
(4, 16, 1, 80),
(5, 16, 24, 10);

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
) ENGINE=MyISAM AUTO_INCREMENT=1975 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `monster_stats`
--

INSERT INTO `monster_stats` (`id`, `monster_id`, `stat_id`, `content`) VALUES
(1, 1, 1, '2'),
(2, 1, 2, '2'),
(3, 1, 4, '8'),
(4, 1, 3, '5'),
(5, 2, 1, '250'),
(6, 2, 2, '200'),
(7, 2, 4, '800'),
(8, 2, 3, '5000'),
(9, 3, 1, '2'),
(10, 3, 2, '5'),
(11, 3, 3, '10'),
(12, 3, 4, '15'),
(13, 4, 1, '50'),
(14, 4, 2, '100'),
(15, 4, 3, '75'),
(16, 4, 4, '150'),
(17, 5, 1, '15'),
(18, 5, 2, '50'),
(19, 5, 3, '40'),
(20, 5, 4, '100'),
(21, 6, 1, '200'),
(22, 6, 2, '450'),
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
(33, 9, 1, '250'),
(34, 9, 2, '1000'),
(35, 9, 3, '20000'),
(36, 9, 4, '2500'),
(37, 10, 1, '450'),
(38, 10, 2, '1000'),
(39, 10, 3, '35000'),
(40, 10, 4, '2500'),
(41, 11, 1, '350'),
(42, 11, 2, '400'),
(43, 11, 3, '10000'),
(44, 11, 4, '1500'),
(45, 12, 1, '250'),
(46, 12, 2, '400'),
(47, 12, 3, '10000'),
(48, 12, 4, '1500'),
(49, 13, 1, '150'),
(50, 13, 2, '400'),
(51, 13, 3, '10000'),
(52, 13, 4, '1500'),
(53, 14, 1, '100'),
(54, 14, 2, '1800'),
(55, 14, 3, '18000'),
(56, 14, 4, '2000'),
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
(1968, 1, 11, '100'),
(1974, 1, 8, '100'),
(1973, 1, 10, '100');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `player`
--

INSERT INTO `player` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `Username`) VALUES
(1, 'Justin', 'Van de Laar', 'justin555@live.nl', 'lololololo', 'juju125');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
(10, 'Item Use Token', 'token'),
(11, 'Gold In Bank', 'bankgc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_stats`
--

DROP TABLE IF EXISTS `user_stats`;
CREATE TABLE IF NOT EXISTS `user_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `stat_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `user_stats`
--

INSERT INTO `user_stats` (`id`, `user_id`, `stat_id`, `content`) VALUES
(1, 1, 5, '25'),
(2, 1, 1, '80'),
(3, 1, 2, '100'),
(4, 1, 3, '134550'),
(5, 1, 4, '300'),
(6, 1, 7, '50'),
(7, 1, 6, '25'),
(506, 1, 8, '13'),
(496, 1, 10, ''),
(495, 1, 9, '21'),
(510, 1, 11, '21615');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
