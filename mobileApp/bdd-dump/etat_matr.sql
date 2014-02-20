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
-- Structure de la table `etat_matr`
--

CREATE TABLE IF NOT EXISTS `etat_matr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `celibataires` int(11) NOT NULL,
  `maries` int(11) NOT NULL,
  `veufs` int(11) NOT NULL,
  `divorces` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `etat_matr`
--

INSERT INTO `etat_matr` (`id`, `arrondissements`, `celibataires`, `maries`, `veufs`, `divorces`) VALUES
(1, 1, 52, 34, 5, 10),
(2, 2, 58, 32, 4, 7),
(3, 3, 56, 33, 4, 8),
(4, 4, 52, 34, 5, 9),
(5, 5, 52, 34, 6, 7),
(6, 6, 50, 37, 6, 7),
(7, 7, 44, 42, 7, 7),
(8, 8, 42, 46, 5, 7),
(9, 9, 53, 36, 5, 7),
(10, 10, 55, 34, 4, 7),
(11, 11, 57, 31, 5, 7),
(12, 12, 50, 35, 6, 8),
(13, 13, 50, 35, 6, 8),
(14, 14, 53, 34, 6, 8),
(15, 15, 49, 37, 6, 7),
(16, 16, 37, 47, 8, 7),
(17, 17, 37, 47, 8, 7),
(18, 18, 54, 32, 5, 8),
(19, 19, 48, 39, 5, 8),
(20, 20, 52, 34, 6, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
