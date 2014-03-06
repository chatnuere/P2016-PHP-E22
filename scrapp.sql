# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Hôte: 127.0.0.1 (MySQL 5.6.15-log)
# Base de données: scrapp
# Temps de génération: 2014-03-06 19:07:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table badges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `badges`;

CREATE TABLE `badges` (
  `id_badge` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` tinyint(4) DEFAULT NULL,
  `nuage` tinyint(1) DEFAULT NULL,
  `coeur` tinyint(1) DEFAULT NULL,
  `goutte` tinyint(1) DEFAULT NULL,
  `souris` tinyint(1) DEFAULT NULL,
  `check` tinyint(1) DEFAULT NULL,
  `fleur` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_badge`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;

INSERT INTO `badges` (`id_badge`, `user_id`, `date`, `nuage`, `coeur`, `goutte`, `souris`, `check`, `fleur`)
VALUES
	(1,1,0,1,0,1,0,1,0),
	(2,2,0,0,0,1,1,1,1),
	(3,3,1,1,1,1,0,0,0);

/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id_photo` int(11) NOT NULL AUTO_INCREMENT,
  `chemin` varchar(300) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `ardt` int(11) DEFAULT NULL,
  `pollution` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `statut` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`id_photo`),
  KEY `id_user_idx` (`user_id`),
  CONSTRAINT `id_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;

INSERT INTO `photos` (`id_photo`, `chemin`, `longitude`, `latitude`, `ardt`, `pollution`, `user_id`, `statut`, `time`)
VALUES
	(1,'3D_Landscape_wallpaper_HD_0006.gif',2.352,48.855,3,5,1,0,'2014-01-24 12:00:00'),
	(2,'a1GsaiFIQdlS.gif',2.253,48.755,17,4,3,1,'0000-00-00 00:00:00'),
	(3,'LCzu6leGqisYU.gif',2.233,48.643,1,3,2,2,'0000-00-00 00:00:00'),
	(4,'L29fiOMSDhhvi.gif',2.333,48.822,2,2,1,0,'2013-12-23 15:00:00'),
	(5,'Ix9BzgfuZSlLG.gif',2.222,48.888,3,1,2,1,'0000-00-00 00:00:00'),
	(6,'QBtzAnMFO5i9O.gif',2.333,48.777,4,5,3,2,'0000-00-00 00:00:00'),
	(7,'CHc9dLQVQOAXm.gif',2.321,48.765,5,4,1,0,'2014-01-01 00:00:01'),
	(8,'ODy29v7YAJrck.gif',2.123,48.567,6,3,2,1,'0000-00-00 00:00:00'),
	(9,'knoyQk1X5Dfwc.gif',2.252,48.855,7,2,3,2,'0000-00-00 00:00:00'),
	(10,'BFViVbnD8mlqM.gif',2.152,48.876,8,1,1,0,'0000-00-00 00:00:00'),
	(11,'msiKDBvF2mOzK.gif',2.234,48.834,9,5,2,1,'0000-00-00 00:00:00'),
	(12,'TanVv1ZFb8BCE.gif',2.278,48.734,10,4,3,2,'0000-00-00 00:00:00'),
	(13,'zQ1XuapnXFmEM.gif',2.369,48.817,11,3,1,0,'0000-00-00 00:00:00'),
	(14,'Z8RCE3DdWfxE4.gif',2.364,48.835,12,2,2,1,'0000-00-00 00:00:00'),
	(15,'sDolZxlEp3QVG.gif',2.348,48.799,13,1,3,2,'0000-00-00 00:00:00'),
	(16,'rAhTwAuhuqCRy.gif',2.265,48.734,14,5,1,0,'0000-00-00 00:00:00'),
	(17,'ZrYuMwm6wKOoo.gif',2.333,48.888,15,4,2,1,'0000-00-00 00:00:00'),
	(18,'ZDMr1eBWTJHKE.gif',2.354,48.834,16,3,3,2,'0000-00-00 00:00:00'),
	(19,'n2EMxTY9P3DJ6.gif',2.362,48.812,17,2,1,0,'0000-00-00 00:00:00'),
	(20,'yLgHIG7JJXyqk.gif',2.326,48.888,18,1,3,1,'0000-00-00 00:00:00'),
	(21,'zbzZ9gdmODQQM.gif',2.356,48.856,19,5,2,2,'0000-00-00 00:00:00'),
	(22,'b3rbghhoMrhII.gif',2.341,48.822,20,4,1,0,'0000-00-00 00:00:00'),
	(23,'diplome.gif',2.357,48.855,3,2,2,1,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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



# Affichage de la table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL DEFAULT '',
  `tel` int(11) NOT NULL,
  `anniversaire` date DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id_user`, `pseudo`, `mdp`, `mail`, `adresse`, `tel`, `anniversaire`, `picture`)
VALUES
	(1,'laura','mdp01','test@gmail.com','22 rue du colonel chaponerie, 75 003',678412795,'1987-09-06','guy.jpg'),
	(2,'justine','mdp02','bele@gmail.com','22 rue du colonel bost, 75 003',678412795,'1976-07-23','pierce.jpg'),
	(3,'','mdp03','','',0,'0000-00-00','profile.jpg');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
