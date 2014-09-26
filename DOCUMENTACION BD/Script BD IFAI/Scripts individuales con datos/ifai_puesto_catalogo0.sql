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
-- Table structure for table `puesto_catalogo`
--

DROP TABLE IF EXISTS `puesto_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto_catalogo` (
  `idPuesto` varchar(10) NOT NULL COMMENT 'Llave identificadora de los puestos',
  `PUESTO` varchar(200) NOT NULL COMMENT 'Campo que describe el nombre del puesto',
  PRIMARY KEY (`idPuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto_catalogo`
--

LOCK TABLES `puesto_catalogo` WRITE;
/*!40000 ALTER TABLE `puesto_catalogo` DISABLE KEYS */;
INSERT INTO `puesto_catalogo` VALUES ('HB1',' COMISIONADO PRESIDENTE / COMISIONADOS\r');
INSERT INTO `puesto_catalogo` VALUES ('KA02',' CONTRALOR\r');
INSERT INTO `puesto_catalogo` VALUES ('KA2',' COORDINADOR\r');
INSERT INTO `puesto_catalogo` VALUES ('KB1',' DIRECTOR GENERAL\r');
INSERT INTO `puesto_catalogo` VALUES ('KB2',' DIRECTOR GENERAL\r');
INSERT INTO `puesto_catalogo` VALUES ('KB3',' DIRECTOR GENERAL\r');
INSERT INTO `puesto_catalogo` VALUES ('MB2',' SUBDIRECTOR DE PONENCIA\r');
INSERT INTO `puesto_catalogo` VALUES ('MC03',' SECRETARIO PARTICULAR DE PONENCIA\r');
INSERT INTO `puesto_catalogo` VALUES ('MC1',' DIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('MC2',' DIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('MC3',' SECRETARIO DE ACUERDOS Y PONENCIA / DIRECTOR DE PONENCIA\r');
INSERT INTO `puesto_catalogo` VALUES ('NA1',' SUBDIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('NB3',' JEFE DE DEPARTAMENTO DE PONENCIA\r');
INSERT INTO `puesto_catalogo` VALUES ('NC1',' SUBDIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('NC2',' SUBDIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('NC3',' SUBDIRECTOR DE AREA\r');
INSERT INTO `puesto_catalogo` VALUES ('OB02',' CHOFER\r');
INSERT INTO `puesto_catalogo` VALUES ('OB2',' JEFE DE DEPARTAMENTO\r');
INSERT INTO `puesto_catalogo` VALUES ('OC002',' SECRETARIA\r');
INSERT INTO `puesto_catalogo` VALUES ('OC02',' ENLACE DE PONENCIA / PROYECTISTA\r');
INSERT INTO `puesto_catalogo` VALUES ('OC1',' JEFE DE DEPARTAMENTO\r');
INSERT INTO `puesto_catalogo` VALUES ('OC2',' JEFE DE DEPARTAMENTO\r');
INSERT INTO `puesto_catalogo` VALUES ('OC3',' JEFE DE DEPARTAMENTO\r');
INSERT INTO `puesto_catalogo` VALUES ('PA1',' ENLACE\r');
INSERT INTO `puesto_catalogo` VALUES ('PA3',' ENLACE\r');
INSERT INTO `puesto_catalogo` VALUES ('PC1',' ENLACE\r');
INSERT INTO `puesto_catalogo` VALUES ('PC2',' ENLACE\r');
INSERT INTO `puesto_catalogo` VALUES ('PC3',' ENLACE\r');
/*!40000 ALTER TABLE `puesto_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-25 20:20:37
