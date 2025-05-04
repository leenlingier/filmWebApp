CREATE DATABASE  IF NOT EXISTS `video` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `video`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: video
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `filmId` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(30) DEFAULT NULL,
  `genreId` int DEFAULT NULL,
  `maatschappijId` int DEFAULT NULL,
  `voorraad` int DEFAULT NULL,
  `verhuurd` int DEFAULT NULL,
  `prijs` decimal(19,4) DEFAULT NULL,
  `totaalVerhuurd` double DEFAULT NULL,
  KEY `filmId` (`filmId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'RAIDERS OF THE LOST ARK',2,5,3,3,7.4368,213),(2,'E T',7,2,3,1,8.6763,211),(3,'LOVE STORY',11,5,11,1,8.6763,234),(4,'TWO MOON JUNCTION',4,2,8,3,13.6341,14),(5,'POLICE ACADEMY',6,4,3,2,9.9157,346),(6,'ONCE UPON A TIME IN THE WEST',3,3,2,2,6.1973,142),(7,'TRON',10,4,3,3,8.6763,523),(8,'DE SNORKELS',7,2,2,2,12.3947,243),(9,'ZORRO',2,3,2,1,8.6763,387),(10,'HECTOR',6,4,2,2,12.3947,23),(11,'HIGH NOON',3,1,4,1,6.1973,125),(12,'CAPTAIN BLOOD',9,1,2,1,9.9157,32),(13,'THE LAST EMPEROR',2,2,3,3,8.6763,387),(14,'THE DEER HUNTER',12,5,9,3,9.9157,24),(15,'THE GODS MUST BE CRAZY',6,4,6,6,12.3947,22),(16,'SILENT NIGHT, DEADLY NIGHT',13,3,4,1,11.1552,21),(17,'THE BIRDS',13,3,4,2,6.6931,285),(18,'KICKBOXER',13,2,4,1,10.9073,1),(19,'BATMAN',2,1,12,6,12.3947,21),(20,'GEVAARLIJKE VRACHT',13,2,6,5,9.1721,5),(21,'TERMS OF ENDEARMENT',11,4,8,6,7.6847,24),(22,'EMANUELLE',4,5,4,1,8.6763,355),(23,'CRAMER VS CRAMER',11,1,1,1,9.9157,156),(24,'SKINDEEP',11,1,5,4,12.3947,1),(25,'EL GRINGO',3,5,5,1,12.3947,44),(26,'THE GRADUATE',11,4,3,1,7.4368,346),(27,'HET DUEL',1,1,6,2,9.9157,12),(28,'THE OMEN',13,4,5,2,12.3947,411),(29,'SEX,LIES AND VIDEOTAPES',4,3,6,2,13.6341,12),(30,'THE ABYSS',1,2,7,3,8.6763,33),(31,'DE SMURFEN',7,5,6,4,6.1973,12),(32,'FIRST BLOOD',13,1,3,2,11.1552,200),(33,'HER ALIBI',4,5,5,1,12.3947,12),(34,'DE LANGSTE DAG',8,2,3,2,4.9579,55),(35,'THE GUNS OF NAVARONE',8,2,2,1,9.9157,234),(36,'CISKE DE RAT',2,3,6,2,7.9326,2),(37,'THE REVENGE OF JAWS',2,2,6,3,11.1552,11),(38,'LOCK UP',13,3,3,1,11.4031,3),(39,'HELLRAISER',5,5,5,2,13.6341,22),(40,'THE EXORCIST',5,4,2,2,11.1552,123),(41,'DOORNROOSJE',7,3,5,2,9.9157,2),(42,'ROAD HOUSE',13,3,5,2,9.9157,11),(43,'MATADOR',11,1,5,1,12.3947,13),(44,'MISSING IN ACTION',8,1,4,2,11.1552,4),(45,'LICENCE TO KILL',2,1,6,2,12.3947,2),(46,'test',NULL,NULL,NULL,NULL,NULL,NULL),(47,'test',1,1,2,NULL,14.0000,NULL);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genreId` int NOT NULL AUTO_INCREMENT,
  `genreCode` varchar(3) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  KEY `genreId` (`genreId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'AKT','AKTIEFILM'),(2,'AVO','AVONTUUR'),(3,'COW','COWBOYFILM'),(4,'ERO','EROTIEK'),(5,'GRI','GRIEZEL'),(6,'HUM','HUMOR'),(7,'KIN','KINDERFILM'),(8,'OOR','OORLOG'),(9,'PIR','PIRATENFILM'),(10,'SCF','SCIENCE FICTION'),(11,'SEN','SENTIMENTEEL'),(12,'SPE','SPEELFILM'),(13,'TRI','THRILLER');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klanten`
--

DROP TABLE IF EXISTS `klanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klanten` (
  `klantId` int NOT NULL AUTO_INCREMENT,
  `naam` varchar(30) DEFAULT NULL,
  `voornaam` varchar(20) DEFAULT NULL,
  `adres` varchar(30) DEFAULT NULL,
  `postcode` char(4) DEFAULT NULL,
  `woonplaats` varchar(30) DEFAULT NULL,
  `klantStatus` varchar(1) DEFAULT NULL,
  `totaalGehuurd` int DEFAULT NULL,
  `datumLid` datetime DEFAULT NULL,
  `lidgeld` int DEFAULT '0',
  KEY `klantId` (`klantId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klanten`
--

LOCK TABLES `klanten` WRITE;
/*!40000 ALTER TABLE `klanten` DISABLE KEYS */;
INSERT INTO `klanten` VALUES (1,'HEIREMANS','MARC','KOEKELBERGSTRAAT 32','9330','DENDERMONDE','1',34,'2001-11-16 00:00:00',1),(2,'GOESSENS','VERONIQUE','DIEPEWEG 1','9000','GENT','2',234,'2011-12-03 00:00:00',1),(3,'VAN DELSEN','GUY','KOUTERSTRAAT 10','9263','BAVEGEM','1',142,'2012-01-10 00:00:00',1),(4,'VAN DEN BERGHE','EDUARD','MELKERIJSTRAAT 34','8900','IEPER','1',134,'2010-06-16 00:00:00',1),(5,'VAN DEN BOSCHE','PATRICK','HEIRBAAN 34','9311','IMPE','1',125,'2011-01-09 00:00:00',1),(6,'VERBIEST','ANNIE','DORPSSTRAAT 35','9000','GENT','1',187,'2007-05-10 00:00:00',1),(7,'BOELENS','DANNY','GRAVENSTRAAT 23','9402','MEERBEKE','2',231,'2002-01-08 00:00:00',1),(8,'VERPOEST','EDDY','BEUKENSTRAAT 456','9300','AALST','1',27,'2002-01-13 00:00:00',1),(9,'VERPLANCKEN','JOHAN','KEMPELAND 3','9200','WETTEREN','1',198,'2006-02-11 00:00:00',0),(10,'MEERT','EDDY','OOSTHOEK 23','9230','MELLE','1',148,'1999-09-14 00:00:00',1),(11,'BOELENS','FREDDY','KOEKOEKSTRAAT 2','9000','GENT','2',231,'2013-10-08 00:00:00',1),(12,'DE CLERQ','RITA','MOLENSTRAAT 23','9140','ZELE','1',158,'2001-08-12 00:00:00',1),(13,'DE CONINCK','MARTINE','STATIONSTRAAT 23','9402','MEERBEKE','2',285,'2012-12-11 00:00:00',1),(14,'COUSAERT','FRANKY','STATIONSTRAAT 234','9300','AALST','2',234,'1999-01-12 00:00:00',1),(15,'DE CONINCK','MARTINE','VOGELZANG 34','9000','GENT','1',177,'2010-03-13 00:00:00',0),(16,'LOREZ','MARC','BEVERHOEKSTRAAT 23','9200','WETTEREN','1',129,'2013-02-11 00:00:00',1),(17,'HEYMAN','EDDY','DEINZESTEENWEG 2','9010','GENTBRUGGE','2',241,'2001-07-18 00:00:00',1),(18,'HUYSMAN','HENNY','HUISEPONTWEG 3','9300','AALST','2',284,'2010-08-12 00:00:00',0),(19,'GEVAERT','AN','WORTEGEMSTRAAT 3','1890','OPWIJK','2',239,'2001-02-13 00:00:00',1),(20,'NIJS','JENNY','LINDESTRAAT 23','9200','WETTEREN','2',211,'2000-11-13 00:00:00',1),(21,'COPPENS','ROBIN','DORP 6','9411','ERONDEGEM','2',277,'2001-04-16 00:00:00',1),(22,'GYSELS','ROGER','KASTEELDREEF 45','9000','GENT','2',261,'2012-03-14 00:00:00',1),(23,'JANSSENS','DANNY','BLIKSTRAAT 21','9370','LEBBEKE','2',313,'2000-12-13 00:00:00',0),(24,'GOEMAN','PHILIPPE','EIKELSTRAAT 345','9160','HAMME','2',217,'2009-08-14 00:00:00',1),(25,'VAN DE SOMPEL','GUIDO','VOERMANSTRAAT 45','9170','WAASMUNSTER','2',155,'2002-12-01 00:00:00',1),(26,'VAN DE POELE','WILLY','STATIONSTRAAT 11','9000','GENT','1',133,'2002-04-01 00:00:00',1),(27,'MATTHIJS','RUDY','STICHELDREEF 37','9140','ZELE','1',184,'2014-01-09 00:00:00',1),(28,'LEFEVER','ANNELIES','LIJSTERSTRAAT 2','9290','BERLARE','2',311,'1998-10-29 00:00:00',1),(29,'LENAERDS','JACKY','DRAGONDERWEGEL 23','9281','OVERMERE','2',273,'2001-05-09 00:00:00',1),(30,'LAMPENS','LYDIA','DRAPSTRAAT 45','9282','UITBERGEN','2',276,'2002-08-31 00:00:00',0);
/*!40000 ALTER TABLE `klanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maatschappijen`
--

DROP TABLE IF EXISTS `maatschappijen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maatschappijen` (
  `maatschappijId` int NOT NULL AUTO_INCREMENT,
  `maatschappijCode` varchar(2) DEFAULT NULL,
  `maatschappij` varchar(30) DEFAULT NULL,
  `adres` varchar(30) DEFAULT NULL,
  `postcode` char(4) DEFAULT NULL,
  `woonplaats` varchar(30) DEFAULT NULL,
  `contactPersoon` varchar(30) DEFAULT NULL,
  KEY `maatschappijId` (`maatschappijId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maatschappijen`
--

LOCK TABLES `maatschappijen` WRITE;
/*!40000 ALTER TABLE `maatschappijen` DISABLE KEYS */;
INSERT INTO `maatschappijen` VALUES (1,'HV','HOLLYWOOD VIDEO','LOUIZALAAN 144','1000','BRUSSEL','COLLINS JUDY'),(2,'VC','VIDEO-SCREEN','LANGE BEELDEKENSSTRAAT 52','2000','ANTWERPEN','PETERMANS PETER'),(3,'VF','VIDEO-FOR-PLEASURE','POTTENBAKKERSSTRAAT 16','9000','GENT','DE VRIENDT STEFANIE'),(4,'VH','VIDEO HOME ENTERTAINMENT','LANGE KOUTERSSTRAAT 14/B1','9200','WETTEREN','VAN HOVE JACKY'),(5,'VS','VIDEO-STAR','OUDE VEST 17','9330','DENDERMONDE','COPPENS ROBIN');
/*!40000 ALTER TABLE `maatschappijen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verhuringen`
--

DROP TABLE IF EXISTS `verhuringen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verhuringen` (
  `verhuringId` int NOT NULL AUTO_INCREMENT,
  `klantId` int DEFAULT NULL,
  `filmId` int DEFAULT NULL,
  `verhuurDatum` datetime DEFAULT NULL,
  KEY `verhuringId` (`verhuringId`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verhuringen`
--

LOCK TABLES `verhuringen` WRITE;
/*!40000 ALTER TABLE `verhuringen` DISABLE KEYS */;
INSERT INTO `verhuringen` VALUES (1,25,2,'2014-02-04 00:00:00'),(2,4,13,'2014-02-04 00:00:00'),(3,12,36,'2014-02-04 00:00:00'),(4,6,30,'2014-02-04 00:00:00'),(5,14,15,'2014-02-04 00:00:00'),(6,3,39,'2014-02-04 00:00:00'),(7,11,1,'2014-02-04 00:00:00'),(8,11,11,'2014-02-04 00:00:00'),(9,4,17,'2014-02-04 00:00:00'),(10,6,10,'2014-02-04 00:00:00'),(11,6,27,'2014-02-04 00:00:00'),(12,14,33,'2014-02-04 00:00:00'),(13,15,25,'2014-02-04 00:00:00'),(14,27,44,'2014-02-04 00:00:00'),(15,30,24,'2014-02-04 00:00:00'),(16,28,7,'2014-02-04 00:00:00'),(17,28,3,'2014-02-04 00:00:00'),(18,14,6,'2014-02-04 00:00:00'),(19,4,35,'2014-02-04 00:00:00'),(20,6,22,'2014-02-04 00:00:00'),(21,9,13,'2014-02-05 00:00:00'),(22,13,21,'2014-02-05 00:00:00'),(23,15,31,'2014-02-05 00:00:00'),(24,17,14,'2014-02-05 00:00:00'),(25,24,19,'2014-02-05 00:00:00'),(26,26,20,'2014-02-05 00:00:00'),(27,5,45,'2014-02-05 00:00:00'),(28,5,19,'2014-02-05 00:00:00'),(29,16,18,'2014-02-05 00:00:00'),(30,18,29,'2014-02-05 00:00:00'),(31,19,38,'2014-02-05 00:00:00'),(32,17,42,'2014-02-05 00:00:00'),(33,14,24,'2014-02-05 00:00:00'),(34,5,15,'2014-02-05 00:00:00'),(35,2,41,'2014-02-05 00:00:00'),(36,1,16,'2014-02-05 00:00:00'),(37,9,19,'2014-02-05 00:00:00'),(38,25,20,'2014-02-05 00:00:00'),(39,23,21,'2014-02-05 00:00:00'),(40,2,10,'2014-02-05 00:00:00'),(41,1,40,'2014-02-05 00:00:00'),(42,5,32,'2014-02-05 00:00:00'),(43,14,41,'2014-02-05 00:00:00'),(44,5,24,'2014-02-05 00:00:00'),(45,9,19,'2014-02-05 00:00:00'),(46,17,31,'2014-02-05 00:00:00'),(47,13,14,'2014-02-05 00:00:00'),(48,11,36,'2014-02-05 00:00:00'),(49,6,30,'2014-02-05 00:00:00'),(50,7,5,'2014-02-05 00:00:00'),(51,9,7,'2014-02-05 00:00:00'),(52,15,12,'2014-02-05 00:00:00'),(53,28,6,'2014-02-05 00:00:00'),(54,27,26,'2014-02-05 00:00:00'),(55,29,23,'2014-02-05 00:00:00'),(56,12,28,'2014-02-05 00:00:00'),(57,15,8,'2014-02-05 00:00:00'),(58,16,21,'2014-02-05 00:00:00'),(59,23,31,'2014-02-06 00:00:00'),(60,4,14,'2014-02-06 00:00:00'),(61,1,20,'2014-02-06 00:00:00'),(62,2,4,'2014-02-06 00:00:00'),(63,4,34,'2014-02-06 00:00:00'),(64,6,15,'2014-02-06 00:00:00'),(65,5,37,'2014-02-06 00:00:00'),(66,12,19,'2014-02-06 00:00:00'),(67,18,20,'2014-02-06 00:00:00'),(68,4,27,'2014-02-06 00:00:00'),(69,5,30,'2014-02-06 00:00:00'),(70,1,21,'2014-02-06 00:00:00'),(71,16,40,'2014-02-07 00:00:00'),(72,16,28,'2014-02-07 00:00:00'),(73,14,13,'2014-02-07 00:00:00'),(74,12,32,'2014-02-07 00:00:00'),(75,18,9,'2014-02-07 00:00:00'),(76,14,5,'2014-02-07 00:00:00'),(77,16,1,'2014-02-07 00:00:00'),(78,18,7,'2014-02-07 00:00:00'),(79,15,21,'2014-02-07 00:00:00'),(80,1,20,'2014-02-07 00:00:00'),(81,2,19,'2014-02-07 00:00:00'),(82,9,45,'2014-02-07 00:00:00'),(83,4,42,'2014-02-07 00:00:00'),(84,5,29,'2014-02-07 00:00:00'),(85,2,34,'2014-02-07 00:00:00'),(86,14,15,'2014-02-07 00:00:00'),(87,5,44,'2014-02-07 00:00:00'),(88,13,37,'2014-02-07 00:00:00'),(89,25,1,'2014-02-07 00:00:00'),(90,28,17,'2014-02-07 00:00:00'),(91,30,21,'2014-02-07 00:00:00'),(92,28,31,'2014-02-07 00:00:00');
/*!40000 ALTER TABLE `verhuringen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'video'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddFilm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddFilm`(IN p_titel VARCHAR(255),
    IN p_genre_id INT,
    IN p_maatschappij_id INT,
    IN p_prijs DECIMAL(10,2),
    IN p_voorraad INT)
BEGIN
INSERT INTO films (titel, genreId, maatschappijId, prijs, voorraad)
    VALUES (p_titel, p_genre_id, p_maatschappij_id, p_prijs, p_voorraad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFilms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFilms`()
BEGIN
SELECT 
     
        f.titel,
        g.genre,
        m.maatschappij,
        f.voorraad,
        f.prijs
    FROM 
        films f
    INNER JOIN 
        genres g ON f.genreId = g.genreId
    INNER JOIN 
        maatschappijen m ON f.maatschappijId = m.maatschappijId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-04 11:24:15
