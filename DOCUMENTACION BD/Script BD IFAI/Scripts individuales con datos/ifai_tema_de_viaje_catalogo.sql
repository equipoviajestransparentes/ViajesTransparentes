CREATE DATABASE  IF NOT EXISTS `ifai` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ifai`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: ifai
-- ------------------------------------------------------
-- Server version	5.6.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tema_de_viaje_catalogo`
--

DROP TABLE IF EXISTS `tema_de_viaje_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema_de_viaje_catalogo` (
  `idTema_de_viaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del catalogo de temas de viaje',
  `TEMA` varchar(100) NOT NULL COMMENT 'Campo que describe el tema del viaje',
  PRIMARY KEY (`idTema_de_viaje`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema_de_viaje_catalogo`
--

LOCK TABLES `tema_de_viaje_catalogo` WRITE;
/*!40000 ALTER TABLE `tema_de_viaje_catalogo` DISABLE KEYS */;
INSERT INTO `tema_de_viaje_catalogo` VALUES (1,'POLITICAS DE ACCESO A LA INFORMACION\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (2,'ASUNTOS INTERNACIONALES\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (3,'NORMATIVA DE ACCESO A LA INFORMACION\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (4,'CAPACITACION Y CULTURA DE LA TRANSPARENCIA\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (5,'GESTION DOCUMENTAL DE ARCHIVOS\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (6,'INDICADORES Y EVALUACION\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (7,'NORMATIVIDAD DE DATOS PERSONALES\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (8,'SUPERVISION VIGILANCIA VERIFICACION Y SANCIONES\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (9,'TECNOLOGIAS DE LA INFORMACION\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (10,'GOBIERNO ABIERTO Y TRANSPARENCIA\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (11,'VINCULACION CON ESTADOS Y MUNICIPIOS\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (12,'VINCULACION CON NUEVOS SUJETOS OBLIGADOS\r');
INSERT INTO `tema_de_viaje_catalogo` VALUES (13,'VINCULACION Y PROMOCION DEL DERECHO\r');
/*!40000 ALTER TABLE `tema_de_viaje_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-23 20:17:02
