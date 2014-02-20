-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 17 Février 2014 à 17:31
-- Version du serveur: 5.6.14-log
-- Version de PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `scrapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `crimes_delits`
--

CREATE TABLE IF NOT EXISTS `crimes_delits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `habitants` int(11) NOT NULL,
  `degradations_destructions` int(11) NOT NULL,
  `cambriolages` int(11) NOT NULL,
  `incendies` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `crimes_delits`
--

INSERT INTO `crimes_delits` (`id`, `arrondissements`, `habitants`, `degradations_destructions`, `cambriolages`, `incendies`) VALUES
(1, 1, 17614, 466, 164, 11),
(2, 2, 22400, 111, 322, 1),
(3, 3, 35655, 128, 327, 4),
(4, 4, 28192, 443, 227, 3),
(5, 5, 61531, 541, 544, 10),
(6, 6, 43143, 220, 322, 3),
(7, 7, 57442, 230, 553, 3),
(8, 8, 40278, 954, 514, 4),
(9, 9, 60275, 881, 519, 7),
(10, 10, 95911, 615, 573, 11),
(11, 11, 152744, 616, 983, 16),
(12, 12, 142897, 914, 599, 12),
(13, 13, 182032, 1018, 557, 28),
(14, 14, 137189, 960, 569, 29),
(15, 15, 236491, 1311, 822, 26),
(16, 16, 169372, 595, 882, 38),
(17, 17, 168454, 436, 1042, 23),
(18, 18, 200631, 378, 987, 58),
(19, 19, 184787, 1271, 801, 61),
(20, 20, 197067, 701, 954, 42);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
