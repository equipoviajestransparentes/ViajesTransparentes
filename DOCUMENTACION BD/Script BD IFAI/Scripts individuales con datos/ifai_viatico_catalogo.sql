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
-- Table structure for table `viatico_catalogo`
--

DROP TABLE IF EXISTS `viatico_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viatico_catalogo` (
  `idViatico` int(11) NOT NULL AUTO_INCREMENT,
  `idPuesto` varchar(10) NOT NULL,
  `idTipoViaje` int(11) NOT NULL,
  `ZONA` varchar(20) NOT NULL,
  `TARIFA_DIARIA` decimal(8,2) NOT NULL DEFAULT '0.00',
  `idMoneda` int(11) NOT NULL,
  PRIMARY KEY (`idViatico`),
  KEY `fk_viatico_puesto_catalogo1_idx` (`idPuesto`),
  KEY `fk_viatico_tipo_viaje_catalogo1_idx` (`idTipoViaje`),
  KEY `fk_viatico_moneda_catalogo1_idx` (`idMoneda`),
  CONSTRAINT `fk_viatico_puesto_catalogo` FOREIGN KEY (`idPuesto`) REFERENCES `puesto_catalogo` (`idPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viatico_tipo_viaje_catalogo` FOREIGN KEY (`idTipoViaje`) REFERENCES `tipo_viaje_catalogo` (`idTipoViaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_viatico_moneda_catalogo` FOREIGN KEY (`idMoneda`) REFERENCES `moneda_catalogo` (`idMoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viatico_catalogo`
--

LOCK TABLES `viatico_catalogo` WRITE;
/*!40000 ALTER TABLE `viatico_catalogo` DISABLE KEYS */;
INSERT INTO `viatico_catalogo` VALUES (1,'HB1',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (2,'KA02',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (3,'KA2',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (4,'KB1',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (5,'KB2',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (6,'KB3',1,'A',1650.00,1);
INSERT INTO `viatico_catalogo` VALUES (7,'MB2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (8,'MC03',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (9,'MC1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (10,'MC2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (11,'MC3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (12,'NA1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (13,'NB3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (14,'NC1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (15,'NC2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (16,'NC3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (17,'OB02',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (18,'OB2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (19,'OC002',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (20,'OC02',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (21,'OC1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (22,'OC2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (23,'OC3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (24,'PA1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (25,'PA3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (26,'PC1',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (27,'PC2',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (28,'PC3',1,'A',1250.00,1);
INSERT INTO `viatico_catalogo` VALUES (29,'HB1',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (30,'KA02',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (31,'KA2',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (32,'KB1',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (33,'KB2',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (34,'KB3',1,'B',3240.00,1);
INSERT INTO `viatico_catalogo` VALUES (35,'MB2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (36,'MC03',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (37,'MC1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (38,'MC2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (39,'MC3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (40,'NA1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (41,'NB3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (42,'NC1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (43,'NC2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (44,'NC3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (45,'OB02',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (46,'OB2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (47,'OC002',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (48,'OC02',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (49,'OC1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (50,'OC2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (51,'OC3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (52,'PA1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (53,'PA3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (54,'PC1',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (55,'PC2',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (56,'PC3',1,'B',1700.00,1);
INSERT INTO `viatico_catalogo` VALUES (57,'HB1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (58,'KA02',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (59,'KA2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (60,'KB1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (61,'KB2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (62,'KB3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (63,'MB2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (64,'MC03',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (65,'MC1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (66,'MC2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (67,'MC3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (68,'NA1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (69,'NB3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (70,'NC1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (71,'NC2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (72,'NC3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (73,'OB02',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (74,'OB2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (75,'OC002',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (76,'OC02',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (77,'OC1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (78,'OC2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (79,'OC3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (80,'PA1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (81,'PA3',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (82,'PC1',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (83,'PC2',2,'NO APLICA',450.00,2);
INSERT INTO `viatico_catalogo` VALUES (84,'PC3',2,'NO APLICA',450.00,2);
/*!40000 ALTER TABLE `viatico_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-25 20:20:36
