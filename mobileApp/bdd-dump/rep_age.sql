-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 17 Février 2014 à 17:32
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
-- Structure de la table `rep_age`
--

CREATE TABLE IF NOT EXISTS `rep_age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `-15` int(11) NOT NULL,
  `15-18` int(11) NOT NULL,
  `19-24` int(11) NOT NULL,
  `25-39` int(11) NOT NULL,
  `40-65` int(11) NOT NULL,
  `65` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `rep_age`
--

INSERT INTO `rep_age` (`id`, `arrondissements`, `-15`, `15-18`, `19-24`, `25-39`, `40-65`, `65`) VALUES
(1, 1, 11, 4, 10, 31, 32, 13),
(2, 2, 12, 3, 11, 37, 29, 9),
(3, 3, 13, 3, 10, 33, 31, 10),
(4, 4, 11, 3, 9, 29, 32, 14),
(5, 5, 12, 5, 14, 24, 30, 15),
(6, 6, 11, 5, 13, 22, 31, 18),
(7, 7, 12, 4, 10, 22, 33, 18),
(8, 8, 16, 5, 10, 24, 34, 13),
(9, 9, 14, 4, 9, 31, 31, 11),
(10, 10, 15, 4, 9, 32, 30, 9),
(11, 11, 13, 3, 10, 33, 30, 11),
(12, 12, 13, 4, 9, 27, 32, 15),
(13, 13, 14, 4, 10, 26, 33, 13),
(14, 14, 13, 4, 11, 28, 31, 14),
(15, 15, 13, 3, 10, 28, 30, 15),
(16, 16, 15, 5, 8, 19, 34, 19),
(17, 17, 15, 4, 9, 28, 31, 14),
(18, 18, 15, 3, 9, 32, 30, 11),
(19, 19, 19, 5, 8, 25, 32, 11),
(20, 20, 16, 4, 8, 27, 32, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
