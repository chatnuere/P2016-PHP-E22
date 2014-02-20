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
-- Structure de la table `csp`
--

CREATE TABLE IF NOT EXISTS `csp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `artisans` int(11) NOT NULL,
  `cadres` int(11) NOT NULL,
  `pro_intermediaires` int(11) NOT NULL,
  `employes` int(11) NOT NULL,
  `ouvriers` int(11) NOT NULL,
  `retraites` int(11) NOT NULL,
  `agriculteurs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `csp`
--

INSERT INTO `csp` (`id`, `arrondissements`, `artisans`, `cadres`, `pro_intermediaires`, `employes`, `ouvriers`, `retraites`, `agriculteurs`) VALUES
(1, 1, 7, 41, 17, 15, 4, 17, 0),
(2, 2, 5, 43, 17, 15, 7, 13, 0),
(3, 3, 5, 44, 18, 14, 5, 14, 0),
(4, 4, 5, 41, 17, 14, 4, 19, 0),
(5, 5, 4, 45, 17, 11, 3, 20, 0),
(6, 6, 6, 43, 14, 12, 3, 22, 0),
(7, 7, 6, 40, 13, 15, 4, 21, 0),
(8, 8, 8, 41, 14, 17, 4, 16, 0),
(9, 9, 5, 43, 18, 14, 5, 15, 0),
(10, 10, 4, 35, 20, 18, 8, 14, 0),
(11, 11, 4, 37, 21, 16, 6, 17, 0),
(12, 12, 3, 34, 20, 16, 5, 21, 0),
(13, 13, 3, 31, 21, 19, 7, 19, 0),
(14, 14, 3, 38, 19, 16, 4, 20, 0),
(15, 15, 3, 40, 18, 15, 4, 20, 0),
(16, 16, 7, 38, 12, 15, 3, 25, 0),
(17, 17, 5, 38, 17, 16, 5, 19, 0),
(18, 18, 4, 28, 21, 20, 9, 18, 0),
(19, 19, 4, 24, 21, 23, 10, 18, 0),
(20, 20, 3, 26, 22, 21, 9, 18, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
