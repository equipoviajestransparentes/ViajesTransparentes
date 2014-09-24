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
-- Table structure for table `costo`
--

DROP TABLE IF EXISTS `costo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costo` (
  `idCosto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del costo',
  `idViaje` int(11) NOT NULL COMMENT 'Llave foranea que referencia al identificador del viaje al que pertenece el costo',
  `idMoneda` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo de monedas en que esta representado el costo',
  `GASTO_PASAJE` decimal(2,0) DEFAULT NULL COMMENT 'Campo que describe el Monto del gasto generado por viáticos, relacionado específicamente con el transporte del funcionario.',
  `GASTO_VIATICO` decimal(2,0) DEFAULT NULL COMMENT 'Campo que describe el Monto del gasto generado por viáticos, relacionado rubros diferentes al transporte del funcionario (hospedaje y alimentación principalmente)',
  `COSTO_HOTEL` decimal(2,0) DEFAULT NULL COMMENT 'Campo que describe el Costo total del hospedaje reportado en el oficio correspondiente',
  `COMPROBADO` decimal(2,0) DEFAULT NULL COMMENT 'Campo que indica el Costo total generado durante el viaje del que se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente',
  `SIN_COMPROBAR` decimal(2,0) DEFAULT NULL COMMENT 'Campo que indica el Costo total generado durante el viaje del que no se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente',
  `VIATICO_DEVUELTO` decimal(2,0) DEFAULT NULL COMMENT 'Campo que describe el Monto devuelto por el funcionario a la cuenta del IFAI correspondiente, según lineamientos internos, reportado en el oficio correspondiente',
  `TARIFA_DIARIA` decimal(2,0) DEFAULT NULL COMMENT 'Campo que indica la Tarifa de viáticos diaria asignada al funcionario de acuerdo con su perfil y el lugar a donde viaja. ',
  PRIMARY KEY (`idCosto`,`idViaje`),
  KEY `fk_moneda_gastos_idx` (`idMoneda`),
  KEY `fk_costo_viaje_idx` (`idViaje`),
  CONSTRAINT `fk_costo_viajes` FOREIGN KEY (`idViaje`) REFERENCES `viaje` (`idDetalleViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_moneda_costo` FOREIGN KEY (`idMoneda`) REFERENCES `moneda_catalogo` (`idMoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costo`
--

LOCK TABLES `costo` WRITE;
/*!40000 ALTER TABLE `costo` DISABLE KEYS */;
/*!40000 ALTER TABLE `costo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-23 20:17:05
