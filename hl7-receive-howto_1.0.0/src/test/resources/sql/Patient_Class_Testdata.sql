# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: mysql.shared.demos.mulesoft.com (MySQL 5.1.73)
# Database: Patient
# Generation Time: 2017-08-17 00:38:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table PatientClass
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PatientClass`;

CREATE TABLE `PatientClass` (
  `input` varchar(50) DEFAULT NULL,
  `output` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `PatientClass` WRITE;
/*!40000 ALTER TABLE `PatientClass` DISABLE KEYS */;

INSERT INTO `PatientClass` (`input`, `output`)
VALUES
	('101','I'),
	('104','I'),
	('107','I'),
	('108','I'),
	('131','I'),
	('103','E'),
	('113','R'),
	('114','R'),
	('115','R'),
	('116','R'),
	('120','R'),
	('128','R'),
	('132','R'),
	('111','U'),
	('I','I'),
	('O','O'),
	('E','E'),
	('R','R'),
	('U','U');

/*!40000 ALTER TABLE `PatientClass` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
