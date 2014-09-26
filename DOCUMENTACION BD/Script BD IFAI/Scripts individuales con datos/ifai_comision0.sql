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
-- Table structure for table `comision`
--

DROP TABLE IF EXISTS `comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comision` (
  `idComision` int(11) NOT NULL COMMENT 'Llave identificadora de las comisiones',
  `idServidor` int(11) NOT NULL COMMENT 'Llave foranea que referencia al servidor publico al que le pertenece esta comision',
  `idMec_origen` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo de mecanismos de originacion',
  `idTipo_comision` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo del tipo de comision asignada',
  `idRepresentacion` int(11) NOT NULL COMMENT 'Llave foranea que referencia al catalogo de tipos de representacion',
  `FECHAINICIO_COM` datetime NOT NULL COMMENT 'Campo que indica la fecha inicio de la comision',
  `FECHAFIN_COM` datetime NOT NULL COMMENT 'Campo que indica la fecha fin de la comision',
  `INST_GENERA` varchar(100) NOT NULL COMMENT 'Campo que indica la Institución que invita, o en su defecto Unidad Responsable que genera la comisión para el servidor público',
  `UR` varchar(50) NOT NULL COMMENT 'Campo que indica la unidad responsable en la que se genera la nota de viaje, el oficio relacionado a la comisión a la que se envía al funcionario público, u otra información específica sobre motivo del viaje y resultados',
  `CONSECUTIVO` int(11) NOT NULL COMMENT 'Campo que indica el número de identificación único asignado por las áreas de control del IFAI para identificar la comisión',
  `ACUERDO` varchar(45) NOT NULL COMMENT 'Campo que indica el número de acuerdo o documento oficial mediante el cual se autoriza la comisión del servidor público',
  `OFICIO` varchar(45) NOT NULL COMMENT 'Campo que indica el número de oficio a través del cuál se comisiona al servidor público',
  `MOTIVO` varchar(200) NOT NULL COMMENT 'Campo que indica el motivo por el cual el funcionario público fue enviado a la comisión en cuestión',
  `COMPROBADO_TOTAL` decimal(12,2) DEFAULT NULL COMMENT 'Campo que indica el monto comprobado total de la comision asignada al servidor publico',
  `SIN_COMPROBAR_TOTAL` decimal(12,2) DEFAULT '0.00' COMMENT 'Campo que indica el monto sin comprobado total de la comision asignada al servidor publico',
  `VIATICO_DEVUELTO_TOTAL` decimal(12,2) DEFAULT '0.00' COMMENT 'Campo que indica el monto de viaticos total devuelto por el servidor publico',
  `RESULTADO` varchar(200) DEFAULT NULL COMMENT 'Campo que contiene los resultados obtenidos durante la comision',
  `OBSERVACIONES` varchar(100) DEFAULT NULL COMMENT 'Campo que contiene las observaciones realizadas durante la comision',
  `ESTATUS_COMISION` char(1) NOT NULL DEFAULT 'F' COMMENT 'Campo que indica el estatus de la comision, este puede estar con valor de ''F'' cuando la comision no ah sido reportada o confirmada aun por el servidor publico con los gastos derivados de la comision a la que asistio, una vez que esta comision es reportada adquiere el valor de ''T''',
  PRIMARY KEY (`idComision`),
  KEY `fk_comision_mecanismo_origen_catalogo1_idx` (`idMec_origen`),
  KEY `fk_comision_representacion_catalogo1_idx` (`idRepresentacion`),
  KEY `fk_comision_tipo_comision_catalogo1_idx` (`idTipo_comision`),
  KEY `fk_comision_servidores_publicos1_idx` (`idServidor`),
  CONSTRAINT `fk_comision_mecanismo_origen_catalogo` FOREIGN KEY (`idMec_origen`) REFERENCES `mecanismo_origen_catalogo` (`idMec_origen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_representacion_catalogo` FOREIGN KEY (`idRepresentacion`) REFERENCES `representacion_catalogo` (`idRepresentacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_tipo_comision_catalogo` FOREIGN KEY (`idTipo_comision`) REFERENCES `tipo_comision_catalogo` (`idTipo_comision`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_servidores_publicos` FOREIGN KEY (`idServidor`) REFERENCES `servidor_publico` (`idServidor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comision`
--

LOCK TABLES `comision` WRITE;
/*!40000 ALTER TABLE `comision` DISABLE KEYS */;
/*!40000 ALTER TABLE `comision` ENABLE KEYS */;
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
