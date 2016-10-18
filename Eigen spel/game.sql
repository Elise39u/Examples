-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 18 okt 2016 om 08:49
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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COMMENT='Choice';

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
(39, 19, 13, 'Alter end', 6),
(40, 18, 20, 'To the metal store', NULL),
(41, 20, 21, 'Inside the metal store', NULL),
(42, 20, 18, 'GO back', NULL),
(43, 21, 20, 'go back outside\r\n', NULL),
(45, 9, 23, 'Pick up Basebalbat', NULL),
(46, 9, 24, 'Pick up a Axe', NULL),
(48, 22, 9, 'Go back', 4),
(49, 23, 9, 'Go back', 1),
(50, 24, 9, 'Go back', 3),
(51, 13, 25, 'Escape the city ', 4),
(52, 25, 1, 'Start over', NULL),
(53, 9, 26, 'Pick up a hammer', NULL),
(54, 26, 9, 'Go back', NULL),
(55, 13, 27, 'Load the boat', 6),
(56, 27, 7, 'Drive to the pass', 6),
(57, 7, 28, 'GO on the river ', 7),
(58, 28, 7, 'Row Back to the city', 7),
(59, 17, 29, 'Yes', 12),
(60, 29, 1, 'Start over', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(127) NOT NULL,
  `item_id` int(127) NOT NULL,
  `space` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inventory`
--

INSERT INTO `inventory` (`id`, `player_id`, `item_id`, `space`) VALUES
(1, '1', 4, 30),
(3, '1', 9, 28),
(2, '1', 1, 29);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(254) NOT NULL,
  `Attack` varchar(254) NOT NULL,
  `Defense` varchar(254) NOT NULL,
  `Number` varchar(127) NOT NULL,
  `Place` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `items`
--

INSERT INTO `items` (`id`, `Name`, `Attack`, `Defense`, `Number`, `Place`) VALUES
(1, 'Basebalbat', '5', '0', '100', 'Woodstore'),
(2, 'Sword', '200', '50', '5', 'Metal store'),
(3, 'Axe', '50', '10', '20', 'Woodstore'),
(4, 'Paddle', '5', '0', '1', 'Woodstore'),
(5, 'Hammer', '85', '45', '5', 'Woodstore\r\n'),
(6, 'Car', 'Insta Dead', '100000', '1', 'Garage'),
(7, 'Boat', '0', '1500', '1', 'The river\r\n'),
(8, 'Key (Graveyard)', '0', '0', '1', 'Bank'),
(9, 'Key (Police Station) ', '0', '0', '1', 'Roof Electro Store'),
(10, 'key (Bank)', '0', '0', '1', 'Roof of the Police Station'),
(11, 'JerryCan', '50', '0', '1', 'Garage'),
(12, 'Gold', '0', '0', '1000000000', 'Bank'),
(13, 'M4', '60', '0', '10', 'Gun store And Police Station '),
(14, 'Scar', '48', '0', '8', 'Gun store and Police Station'),
(15, 'DRS 50', '95', '0', '7', 'Gun store and Police Station '),
(16, 'Spas', '80', '0', '10', 'Gun store and Police Station '),
(17, 'Usp-s', '30', '5', '25', 'Gun store and Police Station'),
(18, 'Silncer ', '-5', '20', '20', 'Gun store '),
(19, 'Dragounv', '65', '0', '5', 'Gun store '),
(20, 'PSG1', '85', '0', '5', 'Gun Store'),
(21, 'XM1014', '60', '0', '5', 'Gun Store'),
(22, 'Ranger', '75', '0', '5', 'Gun store '),
(23, 'Striker', '90', '0', '5', 'Gun Store'),
(24, 'Five-Seven', '45', '0', '5', 'Gun Store'),
(25, 'Tec9', '40', '0', '5', 'Gun store'),
(26, 'P250', '30', '0', '5', 'Gun Store'),
(27, 'Tar-21', '55', '0', '5', 'Gun store'),
(28, 'FaL (Semi)', '60', '0', '5', 'Gun store'),
(29, 'Rpg', '250', '0', '5', 'Gun Store '),
(30, 'M27-Law', '250', '0', '5', 'Gun Store'),
(31, 'Javelin', '400', '-10', '5', 'Gun store'),
(32, 'CrossBow', '150', '0', '5', 'Gun store');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`id`, `Title`, `Foto_url`, `Story`, `modhealth`, `modfire`) VALUES
(1, 'Start The game', 'http://localhost/Eigen%20spel/img/image-3747618.jpg', 'Welcome to my internet game.\r\nDo you want to escape this abonded city?\r\nSo yes click the button below\r\nNo then i say close the page', '100', 'Nothing'),
(2, 'Home', 'http://localhost/Eigen%20spel/img/woonkamer.png', 'You`re standing in the living room of your home in New York. \r\nSuddenly you hear a message on the radio about:\r\n"The city has been evacuated because of a deadly virus."\r\nBut you were too late.\r\nThe message has been broadcasted a half hour ago. \r\nSo how you are gonna escape the city now.\r\nYou`re were thinking about it.', '100', '0'),
(3, 'Bedroom ', 'http://localhost/Eigen%20spel/img/BT11_ModernSerenity_Slaapkamer.jpg', 'You`re thinking about what you''re taking on your trip. \r\nYou''re thinking about getting out of town. \r\nAnd the road to freedom is a long journey.', '100', NULL),
(4, 'Garden', 'http://localhost/Eigen%20spel/img/download.jpg', 'You`re standing in the garden of your home \r\nThere is a little bit to see. \r\nBecause almost everthing has grown as a jungel.\r\nWhat wil you do.', '100', '-5'),
(5, 'Kichten', 'http://localhost/Eigen%20spel/img/modern-kitchen.jpg', 'You`re standing in the Kichten of your home. \r\nYou`re looking around \r\nYou see that the fridge and stove are a little bit open\r\nAre we gonna take a look inside.\r\nOr do we go on?', '100', NULL),
(6, 'Outside', 'http://localhost/Eigen%20spel/img/montage.jpg', 'You`re out on the street.\r\na little bit futher you see some stores. \r\nto the left you see a sand path. \r\nand right you see that road goes on. \r\nWhich way wil you go.', '100', NULL),
(7, 'The pass', 'http://localhost/Eigen%20spel/img/river1.jpg', 'You`re standing near a river \r\nYou can see a police station on the other side. \r\nYou even see a shop.\r\nBut you dont now how to cross.', '100', NULL),
(8, 'Outside wood', 'http://localhost/Eigen%20spel/img/shop.png', 'There you`re standing in front of the wood store.\r\nand you`re think should i go in.\r\nYou dont now what is in the store present.\r\nBut do you want to go inside.\r\nWhat should i do now.', '100', NULL),
(9, 'Inside the wood store', 'http://localhost/Eigen%20spel/img/houtwinkel.png', 'There you`re standing inside th wood store.\r\nyou see a paddle lying around \r\nBut you see some wooden planks and weapons.\r\nWhat should i do now.', '100', NULL),
(10, 'Outside the electro store', 'http://localhost/Eigen%20spel/img/electro.jpg', 'There you`re standing in front of the elctro store.\r\nand you`re think should i go in.\r\nYou dont now what is in the store present.\r\nBut do you want to go inside.\r\nWhat should i do now', '100', NULL),
(11, 'inside the electro store', 'http://localhost/Eigen%20spel/img/electro.png', 'There you`re standing inside the elctro store.\r\nyou see a backroom.\r\nand a way to the roof.\r\nBut what wil you do.', '100', NULL),
(12, 'Sand path', 'http://localhost/Eigen%20spel/img/sand.jpg', 'You`re walking down this sandy road. \r\nSuddenly you see in the distance a river.\r\nYou`re thinking by your self \r\nshould i continue walking\r\nor do i go back', '100', NULL),
(13, 'The end', 'http://localhost/Eigen%20spel/img/river2.jpg', 'There you`re standing in front of the river. \r\nYou look around and see a little boat \r\nYou think yes this is my chane to escape\r\nBut you see there a no paddles \r\nAnd now you think were can i find this paddels?', '100', NULL),
(14, 'Out on the street ', 'http://localhost/Eigen%20spel/img/street.png', 'And there you`re standing on the middle of the street.\r\nYou look down to the left and see nothing. \r\nTo the right you see almost a bridge.\r\nAnd futher on you see the garage and a store. \r\nWhich way wil you go.', '100', NULL),
(15, 'Dead end', 'http://localhost/Eigen%20spel/img/street3.png', 'You`re walking down the street.\r\nSuddenly you have reached the end. \r\nAnd you look around. \r\nYou`re thinking nothing. \r\nWhat to do now.', '80', NULL),
(16, 'Near the bridge ', 'http://localhost/Eigen%20spel/img/nbridge.png', 'You`re walking down the street to the bridge.\r\nSuddenly you hear a voice telling you to stop. \r\nyou stop. \r\nThey say. \r\n"If you not have been infected and you can deliver us the following things we wil help you.\r\n-New weapons\r\n-1000 gold coins"\r\nSo what wil you do now?', '100', NULL),
(17, 'The end 2', 'http://localhost/Eigen%20spel/img/escape2.png', 'There You`re Standing.\r\nSuddenly a officer comes to you and ask do you have the stuff we asked for it. \r\nyou stop and check your bag.', '100', NULL),
(18, 'The street agian', 'http://localhost/Eigen%20spel/img/street4.png', 'And there you`re standing at the end of the street.\r\nYou look down to the left and see a store. \r\nTo the right you see grage.\r\nAnd futher on you road goes on. \r\nWhich way wil you go.', '100', '-20'),
(19, 'the Grage', 'http://localhost/Eigen%20spel/img/garage.png', 'And there you`re standing inside the garage .\r\nYou see a car. \r\nTo the right you see a jerrycan.\r\nYou`re thinking should i take the car or leave the building. \r\nAnd you`re thinking by yourself with the car i can take the boat to the other side.\r\nWhat wil we do.', '100', NULL),
(20, 'Outside the metal store', 'http://localhost/Eigen%20spel/img/metal.png', 'And there you`re standing in front of the metal store.\r\nYou look down through the window. \r\nYou see nothing what now.\r\nGo in to the store or wait outside or turn back.', '100', NULL),
(21, 'Inside the metal store', 'http://localhost/Eigen%20spel/img/metaal.jpg', 'And there you`re standing inside the mental store.\r\nYou look around. \r\nYou see nothing.\r\nSo should i go back outide.', '100', NULL),
(22, 'Paddle', 'http://localhost/Eigen%20spel/img/Paddle.png', 'you`re picking up the paddle', '0', NULL),
(23, 'Baseballbat', 'http://localhost/Eigen%20spel/img/Baseballbat.png', 'You`re pickng up a basebalbat', '0', NULL),
(24, 'Axe', 'http://localhost/Eigen%20spel/img/Axe.png', 'You`re pickng up a Axe', '0', NULL),
(25, 'THE END IS NEAR', 'http://localhost/Eigen%20spel/img/download5.jpg', 'You have escape the city. But this was the quicky way ou there are more do you wwant to try it agian', '100', NULL),
(26, 'Hammer', 'http://localhost/Eigen%20spel/img/hammer.png', 'You have picked up a hammer', '100\r\n', NULL),
(27, 'Take the boat', 'http://localhost/Eigen%20spel/img/boot2.jpg', 'WE are loading the boat on to the car', '100', '-5'),
(28, 'On the way to the other side', 'http://localhost/Eigen%20spel/img/Rivier.png', 'There you are on the middle of the river. you look around and see only both sites but should i go back or continu ', '100', NULL),
(29, 'In the truck', 'http://localhost/Eigen%20spel/img/Back.png', 'There you go. as you enter the truck i need to tell something. There are 2 more serect endings would you go back and find them or not', '100', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(1024) NOT NULL,
  `XP` varchar(254) NOT NULL,
  `Health` varchar(254) NOT NULL,
  `Strength` varchar(254) NOT NULL,
  `Defense` varchar(254) NOT NULL,
  `Attack` varchar(254) NOT NULL,
  `Agility` varchar(254) NOT NULL,
  `Mana` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `player`
--

INSERT INTO `player` (`id`, `playername`, `XP`, `Health`, `Strength`, `Defense`, `Attack`, `Agility`, `Mana`) VALUES
(1, 'Justin_Killer', '200', '100', '250', '500', '450', '100', '260');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
