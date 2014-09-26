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
-- Table structure for table `gasto`
--

DROP TABLE IF EXISTS `gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gasto` (
  `idGasto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del gasto',
  `idViaje` int(11) NOT NULL COMMENT 'Llave foranea que referencia al id del viaje',
  `FECHA_COMPROBANTE` datetime NOT NULL COMMENT 'Campo que describe la fecha en que se expidio el comprobante',
  `idConcepto` int(11) NOT NULL COMMENT 'Llav foranea que referencia al id del concepto',
  `IMPORTE_COMPROBANTE` int(11) NOT NULL COMMENT 'Campo que describe el importe del gasto',
  `idMoneda` int(11) NOT NULL COMMENT 'Llave foranea que referencia al tipo de moneda con que se exipide el importe del comprobante',
  `EXISTE_COMPROBANTE` char(1) NOT NULL DEFAULT 'N' COMMENT 'Campo que describe si existe un comprobante se usara el valor ''S'' cuando si exista y ''N'' cuando no exista',
  `idJustificacion` int(11) DEFAULT NULL COMMENT 'Llave foranea que refrencia al id de la justificacion en caso de NO exista comprobante',
  PRIMARY KEY (`idGasto`),
  KEY `fk_comprobante_concepto1_idx` (`idConcepto`),
  KEY `fk_comprobante_viaje1_idx` (`idViaje`),
  KEY `fk_comprobante_moneda_catalogo1_idx` (`idMoneda`),
  KEY `fk_gasto_clave_justificacion1_idx` (`idJustificacion`),
  CONSTRAINT `fk_comprobante_concepto` FOREIGN KEY (`idConcepto`) REFERENCES `concepto_catalogo` (`idConcepto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_viaje` FOREIGN KEY (`idViaje`) REFERENCES `viaje` (`idViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_moneda_catalogo` FOREIGN KEY (`idMoneda`) REFERENCES `moneda_catalogo` (`idMoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gasto_clave_justificacion` FOREIGN KEY (`idJustificacion`) REFERENCES `justificacion_catalogo` (`idJustificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasto`
--

LOCK TABLES `gasto` WRITE;
/*!40000 ALTER TABLE `gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `gasto` ENABLE KEYS */;
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
