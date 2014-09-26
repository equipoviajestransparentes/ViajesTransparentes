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
-- Table structure for table `detalleviaje`
--

DROP TABLE IF EXISTS `detalleviaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleviaje` (
  `idDetalleViaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del deltalle del viaje',
  `EVENTO` varchar(100) DEFAULT NULL COMMENT 'Campo que describe  el evento o actividad a la que asiste el funcionario en su comisión',
  `URL_EVENTO` varchar(150) DEFAULT NULL COMMENT 'Campo que indica la liga de internet relacionada con el evento al cual el funcionario asiste como objeto de la comisión, pudiendo ser un micrositio, programa, convocatoria, etc.',
  `FECHAINICIO_PART` datetime DEFAULT NULL COMMENT 'Campo que indica la Fecha en la que inicia la participación del funcionario en la comisión',
  `FECHAFIN_PART` datetime DEFAULT NULL COMMENT 'Campo que indica la Fecha en la que finaliza la participación del funcionario en la comisión',
  `ANTECEDENTE` varchar(200) DEFAULT NULL COMMENT 'Campo que describe los antecedentes relacionados con la comisión a la que fue enviado el funcionario y del evento al que asistió',
  `ACTIVIDAD` varchar(500) DEFAULT NULL COMMENT 'Campo que indica una breve descripción de las actividades realizadas por el funcionario en la comisión, contemplando el programa y su agenda de trabajo.',
  `CONTRIBUCION_IFAI` varchar(200) DEFAULT NULL COMMENT 'Campo que indica una breve descripción de las contribuciones que la comisión y la participación del funcionario generan para el IFAI',
  `URL_COMUNICADO` varchar(50) DEFAULT NULL COMMENT 'Campo que indica la URL que vincula a una nota, blog o comunicado oficial ya sea generada por la institución convocante o por el IFAI para reportar los resultados de la actividad realizada durante la comisión',
  `CUBRE_PASAJE` varchar(45) DEFAULT NULL COMMENT 'Campo que indica la institución que cubre el costo del viaje, puede ser el IFAI o la institución que invita al funcionario público',
  `idTipo_pasaje` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo del tipo de pasaje',
  `INST_HOSPEDAJE` varchar(50) DEFAULT NULL COMMENT 'Campo que indica la institución que cubre el costo del hospedaje, puede ser el IFAI o la institución que invita al funcionario público',
  `HOTEL` varchar(30) DEFAULT NULL COMMENT 'Campo que describe el nombre del hotel o recinto en donde se hospeda el funcionario durante su comisión',
  `FECHAINICIO_HOTEL` datetime DEFAULT NULL COMMENT 'Campo que indica la Fecha en la que el funcionario se registra en el hotel descrito en el campo anterior',
  `FECHAFIN_HOTEL` datetime DEFAULT NULL COMMENT 'Campo que indica la Fecha en la que el funcionario registra su salida del hotel descrito previamente',
  `idTema_viaje` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo de temas de viaje',
  `LATITUD_ORIGEN` varchar(50) DEFAULT NULL COMMENT 'Campo que describe la coordenada de latitud del origen del viaje',
  `LONGITUD_ORIGEN` varchar(50) DEFAULT NULL COMMENT 'Campo que describe la coordenada de longitud del origen del viaje',
  `LATITUD_DESTINO` varchar(50) DEFAULT NULL COMMENT 'Campo que describe la coordenada de latitud del destino del viaje',
  `LONGITUD_DESTINO` varchar(50) DEFAULT NULL COMMENT 'Campo que describe la coordenada de longitud del destino del viaje',
  PRIMARY KEY (`idDetalleViaje`),
  KEY `fk_viajes_tipo_pasaje_idx` (`idTipo_pasaje`),
  KEY `fk_detalleViaje_tema_de_viaje_catalogo1_idx` (`idTema_viaje`),
  CONSTRAINT `fk_viajes_tipo_pasaje` FOREIGN KEY (`idTipo_pasaje`) REFERENCES `tipo_pasaje_catalogo` (`idTipoPasaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleViaje_tema_de_viaje_catalogo1` FOREIGN KEY (`idTema_viaje`) REFERENCES `tema_de_viaje_catalogo` (`idTema_de_viaje`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleviaje`
--

LOCK TABLES `detalleviaje` WRITE;
/*!40000 ALTER TABLE `detalleviaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleviaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-25 20:20:39
