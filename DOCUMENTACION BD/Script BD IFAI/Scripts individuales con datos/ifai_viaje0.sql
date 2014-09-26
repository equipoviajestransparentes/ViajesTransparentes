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
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viaje` (
  `idViaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del viaje que realizo el servidor publico',
  `idComision` int(11) NOT NULL COMMENT 'Llave foranea que referencia a la comision a la que pertenece el viaje',
  `idDetalleViaje` int(11) NOT NULL COMMENT 'Llave foranea que referencia al detalle del viaje reallizado por el servidor publico',
  `LOCALIDAD_ORIGEN` int(11) NOT NULL COMMENT 'Llave foranea que referencia a la localidad origen desde donde viajo el servidor publico',
  `LOCALIDAD_DESTINO` int(11) NOT NULL COMMENT 'Llave foranea que referencia a la localidad destino hasta donde viajo el servidor publico',
  `TIPO_VIAJE` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo con el tipo de viaje que realizo el servidor publico',
  PRIMARY KEY (`idViaje`),
  KEY `fk_viaje_localidades1_idx` (`LOCALIDAD_ORIGEN`),
  KEY `fk_viaje_localidades2_idx` (`LOCALIDAD_DESTINO`),
  KEY `fk_viaje_tipo_viaje1_idx` (`TIPO_VIAJE`),
  KEY `fk_detalleViaje_viaje_idx` (`idDetalleViaje`),
  KEY `fk_viaje_comision1_idx` (`idComision`),
  CONSTRAINT `fk_viaje_detalleviaje` FOREIGN KEY (`idDetalleViaje`) REFERENCES `detalleviaje` (`idDetalleViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_localidades1` FOREIGN KEY (`LOCALIDAD_ORIGEN`) REFERENCES `localidades_catalogo` (`idLocalidades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_localidades2` FOREIGN KEY (`LOCALIDAD_DESTINO`) REFERENCES `localidades_catalogo` (`idLocalidades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_tipo_viaje1` FOREIGN KEY (`TIPO_VIAJE`) REFERENCES `tipo_viaje_catalogo` (`idTipoViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_comision` FOREIGN KEY (`idComision`) REFERENCES `comision` (`idComision`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-25 20:20:38
