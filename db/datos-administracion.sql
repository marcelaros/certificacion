CREATE DATABASE  IF NOT EXISTS `administracion` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `administracion`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: administracion
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `estadocampo`
--

DROP TABLE IF EXISTS `estadocampo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadocampo` (
  `idEstadoCampo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idEstadoCampo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocampo`
--

LOCK TABLES `estadocampo` WRITE;
/*!40000 ALTER TABLE `estadocampo` DISABLE KEYS */;
INSERT INTO `estadocampo` VALUES (1,'CREADO');
/*!40000 ALTER TABLE `estadocampo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectocultivo`
--

DROP TABLE IF EXISTS `proyectocultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectocultivo` (
  `idProyectoCultivo` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `idLote` int(11) NOT NULL,
  `idCultivo` int(11) NOT NULL,
  `idEstadoProyecto` int(11) NOT NULL,
  PRIMARY KEY (`idProyectoCultivo`),
  KEY `fk_proyectoCultivo_lote1_idx` (`idLote`),
  KEY `fk_proyectoCultivo_cultivo1_idx` (`idCultivo`),
  KEY `fk_proyectoCultivo_estadoProyecto1_idx` (`idEstadoProyecto`),
  CONSTRAINT `fk_proyectoCultivo_lote1` FOREIGN KEY (`idLote`) REFERENCES `lote` (`idLote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyectoCultivo_cultivo1` FOREIGN KEY (`idCultivo`) REFERENCES `cultivo` (`idCultivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyectoCultivo_estadoProyecto1` FOREIGN KEY (`idEstadoProyecto`) REFERENCES `estadoproyecto` (`idEstadoProyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectocultivo`
--

LOCK TABLES `proyectocultivo` WRITE;
/*!40000 ALTER TABLE `proyectocultivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectocultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campo`
--

DROP TABLE IF EXISTS `campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campo` (
  `idCampo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `superficie` double NOT NULL,
  `idEstadoCampo` int(11) NOT NULL,
  PRIMARY KEY (`idCampo`),
  KEY `fk_campos_tipoCampo_idx` (`idEstadoCampo`),
  CONSTRAINT `fk_campos_tipoCampo` FOREIGN KEY (`idEstadoCampo`) REFERENCES `estadocampo` (`idEstadoCampo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campo`
--

LOCK TABLES `campo` WRITE;
/*!40000 ALTER TABLE `campo` DISABLE KEYS */;
INSERT INTO `campo` VALUES (1,'mi campo',100,1);
/*!40000 ALTER TABLE `campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboreoparacultivo`
--

DROP TABLE IF EXISTS `laboreoparacultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboreoparacultivo` (
  `idLaboreoParaCultivo` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) NOT NULL,
  `idCultivo` int(11) NOT NULL,
  `idLaboreo` int(11) NOT NULL,
  `idMomentoDeLaboreo` int(11) NOT NULL,
  PRIMARY KEY (`idLaboreoParaCultivo`),
  KEY `fk_laboreoParaCultivo_cultivo1_idx` (`idCultivo`),
  KEY `fk_laboreoParaCultivo_laboreo1_idx` (`idLaboreo`),
  KEY `fk_laboreoParaCultivo_momentoDeLaboreo1_idx` (`idMomentoDeLaboreo`),
  CONSTRAINT `fk_laboreoParaCultivo_cultivo1` FOREIGN KEY (`idCultivo`) REFERENCES `cultivo` (`idCultivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboreoParaCultivo_laboreo1` FOREIGN KEY (`idLaboreo`) REFERENCES `laboreo` (`idLaboreo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboreoParaCultivo_momentoDeLaboreo1` FOREIGN KEY (`idMomentoDeLaboreo`) REFERENCES `momentodelaboreo` (`idMomentoDeLaboreo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboreoparacultivo`
--

LOCK TABLES `laboreoparacultivo` WRITE;
/*!40000 ALTER TABLE `laboreoparacultivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboreoparacultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cultivo`
--

DROP TABLE IF EXISTS `cultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cultivo` (
  `idCultivo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `idTipoSuelo` int(11) NOT NULL,
  PRIMARY KEY (`idCultivo`),
  KEY `fk_cultivo_tipoSuelo1_idx` (`idTipoSuelo`),
  CONSTRAINT `fk_cultivo_tipoSuelo1` FOREIGN KEY (`idTipoSuelo`) REFERENCES `tiposuelo` (`idTipoSuelo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultivo`
--

LOCK TABLES `cultivo` WRITE;
/*!40000 ALTER TABLE `cultivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoproyecto`
--

DROP TABLE IF EXISTS `estadoproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoproyecto` (
  `idEstadoProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idEstadoProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoproyecto`
--

LOCK TABLES `estadoproyecto` WRITE;
/*!40000 ALTER TABLE `estadoproyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadoproyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposuelo`
--

DROP TABLE IF EXISTS `tiposuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposuelo` (
  `idTipoSuelo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idTipoSuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposuelo`
--

LOCK TABLES `tiposuelo` WRITE;
/*!40000 ALTER TABLE `tiposuelo` DISABLE KEYS */;
INSERT INTO `tiposuelo` VALUES (1,'I'),(2,'II'),(3,'III'),(4,'IV'),(5,'V');
/*!40000 ALTER TABLE `tiposuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `momentodelaboreo`
--

DROP TABLE IF EXISTS `momentodelaboreo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momentodelaboreo` (
  `idMomentoDeLaboreo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idMomentoDeLaboreo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `momentodelaboreo`
--

LOCK TABLES `momentodelaboreo` WRITE;
/*!40000 ALTER TABLE `momentodelaboreo` DISABLE KEYS */;
/*!40000 ALTER TABLE `momentodelaboreo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboreo`
--

DROP TABLE IF EXISTS `laboreo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboreo` (
  `idLaboreo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idLaboreo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboreo`
--

LOCK TABLES `laboreo` WRITE;
/*!40000 ALTER TABLE `laboreo` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboreo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lote` (
  `idLote` int(11) NOT NULL AUTO_INCREMENT,
  `nroLote` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `superficie` double NOT NULL,
  `idTipoSuelo` int(11) NOT NULL,
  `idCampo` int(11) NOT NULL,
  PRIMARY KEY (`idLote`),
  KEY `fk_lote_tipoSuelo1_idx` (`idTipoSuelo`),
  KEY `fk_lote_campo1_idx` (`idCampo`),
  CONSTRAINT `fk_lote_tipoSuelo1` FOREIGN KEY (`idTipoSuelo`) REFERENCES `tiposuelo` (`idTipoSuelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lote_campo1` FOREIGN KEY (`idCampo`) REFERENCES `campo` (`idCampo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (1,'1',70,1,1),(2,'2',30,2,1);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'administracion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-14 12:20:19
