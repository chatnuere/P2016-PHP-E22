# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Hôte: 127.0.0.1 (MySQL 5.6.15-log)
# Base de données: scrapp
# Temps de génération: 2014-03-01 12:18:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table arrondissements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `arrondissements`;

CREATE TABLE `arrondissements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `13` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `16` int(11) NOT NULL,
  `17` int(11) NOT NULL,
  `18` int(11) NOT NULL,
  `19` int(11) NOT NULL,
  `20` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Affichage de la table crimes_delits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `crimes_delits`;

CREATE TABLE `crimes_delits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `habitants` int(11) NOT NULL,
  `degradations_destructions` int(11) NOT NULL,
  `cambriolages` int(11) NOT NULL,
  `incendies` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `crimes_delits` WRITE;
/*!40000 ALTER TABLE `crimes_delits` DISABLE KEYS */;

INSERT INTO `crimes_delits` (`id`, `arrondissements`, `habitants`, `degradations_destructions`, `cambriolages`, `incendies`)
VALUES
	(1,1,17614,466,164,11),
	(2,2,22400,111,322,1),
	(3,3,35655,128,327,4),
	(4,4,28192,443,227,3),
	(5,5,61531,541,544,10),
	(6,6,43143,220,322,3),
	(7,7,57442,230,553,3),
	(8,8,40278,954,514,4),
	(9,9,60275,881,519,7),
	(10,10,95911,615,573,11),
	(11,11,152744,616,983,16),
	(12,12,142897,914,599,12),
	(13,13,182032,1018,557,28),
	(14,14,137189,960,569,29),
	(15,15,236491,1311,822,26),
	(16,16,169372,595,882,38),
	(17,17,168454,436,1042,23),
	(18,18,200631,378,987,58),
	(19,19,184787,1271,801,61),
	(20,20,197067,701,954,42);

/*!40000 ALTER TABLE `crimes_delits` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table csp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `csp`;

CREATE TABLE `csp` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `csp` WRITE;
/*!40000 ALTER TABLE `csp` DISABLE KEYS */;

INSERT INTO `csp` (`id`, `arrondissements`, `artisans`, `cadres`, `pro_intermediaires`, `employes`, `ouvriers`, `retraites`, `agriculteurs`)
VALUES
	(1,1,7,41,17,15,4,17,0),
	(2,2,5,43,17,15,7,13,0),
	(3,3,5,44,18,14,5,14,0),
	(4,4,5,41,17,14,4,19,0),
	(5,5,4,45,17,11,3,20,0),
	(6,6,6,43,14,12,3,22,0),
	(7,7,6,40,13,15,4,21,0),
	(8,8,8,41,14,17,4,16,0),
	(9,9,5,43,18,14,5,15,0),
	(10,10,4,35,20,18,8,14,0),
	(11,11,4,37,21,16,6,17,0),
	(12,12,3,34,20,16,5,21,0),
	(13,13,3,31,21,19,7,19,0),
	(14,14,3,38,19,16,4,20,0),
	(15,15,3,40,18,15,4,20,0),
	(16,16,7,38,12,15,3,25,0),
	(17,17,5,38,17,16,5,19,0),
	(18,18,4,28,21,20,9,18,0),
	(19,19,4,24,21,23,10,18,0),
	(20,20,3,26,22,21,9,18,0);

/*!40000 ALTER TABLE `csp` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table etat_matr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `etat_matr`;

CREATE TABLE `etat_matr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `celibataires` int(11) NOT NULL,
  `maries` int(11) NOT NULL,
  `veufs` int(11) NOT NULL,
  `divorces` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `etat_matr` WRITE;
/*!40000 ALTER TABLE `etat_matr` DISABLE KEYS */;

INSERT INTO `etat_matr` (`id`, `arrondissements`, `celibataires`, `maries`, `veufs`, `divorces`)
VALUES
	(1,1,52,34,5,10),
	(2,2,58,32,4,7),
	(3,3,56,33,4,8),
	(4,4,52,34,5,9),
	(5,5,52,34,6,7),
	(6,6,50,37,6,7),
	(7,7,44,42,7,7),
	(8,8,42,46,5,7),
	(9,9,53,36,5,7),
	(10,10,55,34,4,7),
	(11,11,57,31,5,7),
	(12,12,50,35,6,8),
	(13,13,50,35,6,8),
	(14,14,53,34,6,8),
	(15,15,49,37,6,7),
	(16,16,37,47,8,7),
	(17,17,37,47,8,7),
	(18,18,54,32,5,8),
	(19,19,48,39,5,8),
	(20,20,52,34,6,8);

/*!40000 ALTER TABLE `etat_matr` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `id_photo` int(11) NOT NULL AUTO_INCREMENT,
  `chemin` varchar(300) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `arrondissement` int(11) DEFAULT NULL,
  `pollution` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `statut` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id_photo`),
  KEY `id_user_idx` (`id_user`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;

INSERT INTO `photo` (`id_photo`, `chemin`, `longitude`, `latitude`, `arrondissement`, `pollution`, `id_user`, `statut`, `time`)
VALUES
	(1,'http://www.hd-wallpaper.images-fonds.com/modules/mg3/albums/Art_Digital_Wallpaper_HD/3D_Landscape/3D_Landscape_wallpaper_HD_0006.jpg',2.352,48.855,3,5,1,0,'2014-01-24 12:00:00'),
	(2,'http://media3.giphy.com/media/a1GsaiFIQdlS/giphy.gif',2.253,48.755,17,4,3,1,'0000-00-00 00:00:00'),
	(3,'http://media.giphy.com/media/LCzu6leGqisYU/giphy.gif',2.233,48.643,1,3,2,2,'0000-00-00 00:00:00'),
	(4,'http://media.giphy.com/media/L29fiOMSDhhvi/giphy.gif',2.333,48.822,2,2,1,0,'2013-12-23 15:00:00'),
	(5,'http://media3.giphy.com/media/Ix9BzgfuZSlLG/giphy.gif',2.222,48.888,3,1,2,1,'0000-00-00 00:00:00'),
	(6,'http://media3.giphy.com/media/QBtzAnMFO5i9O/giphy.gif',2.333,48.777,4,5,3,2,'0000-00-00 00:00:00'),
	(7,'http://media0.giphy.com/media/CHc9dLQVQOAXm/giphy.gif',2.321,48.765,5,4,1,0,'2014-01-01 00:00:01'),
	(8,'http://media.giphy.com/media/ODy29v7YAJrck/giphy.gif',2.123,48.567,6,3,2,1,'0000-00-00 00:00:00'),
	(9,'http://media.giphy.com/media/knoyQk1X5Dfwc/giphy.gif',2.252,48.855,7,2,3,2,'0000-00-00 00:00:00'),
	(10,'http://media.giphy.com/media/BFViVbnD8mlqM/giphy.gif',2.152,48.876,8,1,1,0,'0000-00-00 00:00:00'),
	(11,'http://media.giphy.com/media/msiKDBvF2mOzK/giphy.gif',2.234,48.834,9,5,2,1,'0000-00-00 00:00:00'),
	(12,'http://media.giphy.com/media/TanVv1ZFb8BCE/giphy.gif',2.278,48.734,10,4,3,2,'0000-00-00 00:00:00'),
	(13,'http://media.giphy.com/media/zQ1XuapnXFmEM/giphy.gif',2.369,48.817,11,3,1,0,'0000-00-00 00:00:00'),
	(14,'http://media.giphy.com/media/Z8RCE3DdWfxE4/giphy.gif',2.364,48.835,12,2,2,1,'0000-00-00 00:00:00'),
	(15,'http://media0.giphy.com/media/sDolZxlEp3QVG/giphy.gif',2.348,48.799,13,1,3,2,'0000-00-00 00:00:00'),
	(16,'http://media.giphy.com/media/rAhTwAuhuqCRy/giphy.gif',2.265,48.734,14,5,1,0,'0000-00-00 00:00:00'),
	(17,'http://media.giphy.com/media/ZrYuMwm6wKOoo/giphy.gif',2.333,48.888,15,4,2,1,'0000-00-00 00:00:00'),
	(18,'http://media1.giphy.com/media/ZDMr1eBWTJHKE/giphy.gif',2.354,48.834,16,3,3,2,'0000-00-00 00:00:00'),
	(19,'http://media2.giphy.com/media/n2EMxTY9P3DJ6/giphy.gif',2.362,48.812,17,2,1,0,'0000-00-00 00:00:00'),
	(20,'http://media0.giphy.com/media/yLgHIG7JJXyqk/giphy.gif',2.326,48.888,18,1,3,1,'0000-00-00 00:00:00'),
	(21,'http://media1.giphy.com/media/zbzZ9gdmODQQM/giphy.gif',2.356,48.856,19,5,2,2,'0000-00-00 00:00:00'),
	(22,'http://media3.giphy.com/media/b3rbghhoMrhII/giphy.gif',2.341,48.822,20,4,1,0,'0000-00-00 00:00:00'),
	(23,'http://www.mon-diplome.fr/Diplome/700-245765-Dipl%C3%B4me%20du%20agrou-agrou%20niveau%2029.jpg',2.357,48.855,3,2,2,1,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Affichage de la table rep_age
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rep_age`;

CREATE TABLE `rep_age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrondissements` int(11) NOT NULL,
  `-15` int(11) NOT NULL,
  `15-18` int(11) NOT NULL,
  `19-24` int(11) NOT NULL,
  `25-39` int(11) NOT NULL,
  `40-65` int(11) NOT NULL,
  `65` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `rep_age` WRITE;
/*!40000 ALTER TABLE `rep_age` DISABLE KEYS */;

INSERT INTO `rep_age` (`id`, `arrondissements`, `-15`, `15-18`, `19-24`, `25-39`, `40-65`, `65`)
VALUES
	(1,1,11,4,10,31,32,13),
	(2,2,12,3,11,37,29,9),
	(3,3,13,3,10,33,31,10),
	(4,4,11,3,9,29,32,14),
	(5,5,12,5,14,24,30,15),
	(6,6,11,5,13,22,31,18),
	(7,7,12,4,10,22,33,18),
	(8,8,16,5,10,24,34,13),
	(9,9,14,4,9,31,31,11),
	(10,10,15,4,9,32,30,9),
	(11,11,13,3,10,33,30,11),
	(12,12,13,4,9,27,32,15),
	(13,13,14,4,10,26,33,13),
	(14,14,13,4,11,28,31,14),
	(15,15,13,3,10,28,30,15),
	(16,16,15,5,8,19,34,19),
	(17,17,15,4,9,28,31,14),
	(18,18,15,3,9,32,30,11),
	(19,19,19,5,8,25,32,11),
	(20,20,16,4,8,27,32,12);

/*!40000 ALTER TABLE `rep_age` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '',
  `data` text,
  `csrf` text,
  `ip` varchar(40) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `stamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Affichage de la table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id_user`, `pseudo`, `mdp`, `mail`)
VALUES
	(1,'Justine','mdp01','justine@hetic.net'),
	(2,'Sam','mdp02','sam@hetic.net'),
	(3,'AnaÃ¯s','mdp03','anais@hetic.net');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`)
VALUES
	(14,'de','de'),
	(15,'test','ttt'),
	(16,'user2','fgt'),
	(17,'user3','fgt'),
	(18,'ggg','ggg'),
	(19,'lilo','stich'),
	(20,'rf','rf'),
	(21,'df','df'),
	(22,'ff','ff');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
