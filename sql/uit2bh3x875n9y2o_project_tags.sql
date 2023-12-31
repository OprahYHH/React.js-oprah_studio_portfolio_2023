CREATE DATABASE  IF NOT EXISTS `uit2bh3x875n9y2o` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uit2bh3x875n9y2o`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: t07cxyau6qg7o5nz.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: uit2bh3x875n9y2o
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `project_tags`
--

DROP TABLE IF EXISTS `project_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_tags` (
  `pt_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `t_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pt_id`),
  KEY `p_id` (`p_id`),
  KEY `t_id` (`t_id`),
  CONSTRAINT `project_tags_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `project_tags_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tags`
--

LOCK TABLES `project_tags` WRITE;
/*!40000 ALTER TABLE `project_tags` DISABLE KEYS */;
INSERT INTO `project_tags` VALUES (1,2,1,'2022-11-20 00:00:00'),(2,2,8,'2022-11-20 00:00:00'),(3,2,6,'2022-11-20 00:00:00'),(4,2,10,'2022-11-20 00:00:00'),(5,2,17,'2022-11-20 00:00:00'),(6,4,18,'2022-11-20 00:00:00'),(7,4,10,'2022-11-20 00:00:00'),(8,4,6,'2022-11-20 00:00:00'),(9,4,9,'2022-11-20 00:00:00'),(10,4,17,'2022-11-20 00:00:00'),(11,6,13,'2022-11-20 00:00:00'),(12,6,15,'2022-11-20 00:00:00'),(13,6,19,'2022-11-20 00:00:00'),(14,7,18,'2022-11-20 00:00:00'),(15,7,9,'2022-11-20 00:00:00'),(16,7,10,'2022-11-20 00:00:00'),(17,7,6,'2022-11-20 00:00:00'),(18,8,10,'2022-11-20 00:00:00'),(19,8,2,'2022-11-20 00:00:00'),(20,9,14,'2022-11-20 00:00:00'),(21,9,19,'2022-11-20 00:00:00'),(22,9,13,'2022-11-20 00:00:00'),(23,16,14,'2022-11-20 00:00:00'),(24,16,19,'2022-11-20 00:00:00'),(25,16,13,'2022-11-20 00:00:00'),(26,16,16,'2022-11-20 00:00:00'),(27,19,19,'2022-11-20 00:00:00'),(28,19,13,'2022-11-20 00:00:00'),(29,19,15,'2022-11-20 00:00:00'),(30,21,19,'2022-11-20 00:00:00'),(31,21,13,'2022-11-20 00:00:00'),(32,21,15,'2022-11-20 00:00:00'),(33,22,19,'2022-11-20 00:00:00'),(34,22,13,'2022-11-20 00:00:00'),(35,22,15,'2022-11-20 00:00:00'),(36,10,9,'2022-11-20 00:00:00'),(37,10,10,'2022-11-20 00:00:00'),(38,10,17,'2022-11-20 00:00:00'),(39,10,1,'2022-11-20 00:00:00'),(40,11,9,'2022-11-20 00:00:00'),(41,11,10,'2022-11-20 00:00:00'),(42,11,17,'2022-11-20 00:00:00'),(44,12,9,'2022-11-20 00:00:00'),(47,11,4,'2022-11-20 00:00:00'),(49,13,9,'2022-11-20 00:00:00'),(50,13,10,'2022-11-20 00:00:00'),(51,13,17,'2022-11-20 00:00:00'),(52,13,1,'2022-11-20 00:00:00'),(53,14,9,'2022-11-20 00:00:00'),(54,14,10,'2022-11-20 00:00:00'),(55,14,17,'2022-11-20 00:00:00'),(56,14,1,'2022-11-20 00:00:00'),(57,15,9,'2022-11-20 00:00:00'),(58,15,10,'2022-11-20 00:00:00'),(59,15,17,'2022-11-20 00:00:00'),(60,15,1,'2022-11-20 00:00:00'),(61,17,10,'2022-11-20 00:00:00'),(62,17,2,'2022-11-20 00:00:00'),(63,17,20,'2022-11-20 00:00:00'),(64,18,14,'2022-11-20 00:00:00'),(65,18,13,'2022-11-20 00:00:00'),(66,18,19,'2022-11-20 00:00:00'),(67,20,19,'2022-11-20 00:00:00'),(68,20,16,'2022-11-20 00:00:00'),(69,20,15,'2022-11-20 00:00:00'),(70,5,2,'2022-11-20 00:00:00'),(71,5,11,'2022-11-20 00:00:00'),(72,5,10,'2022-11-20 00:00:00'),(73,5,20,'2022-11-20 00:00:00'),(74,3,1,'2022-11-20 00:00:00'),(75,3,8,'2022-11-20 00:00:00'),(76,3,6,'2022-11-20 00:00:00'),(77,3,10,'2022-11-20 00:00:00'),(79,23,19,'2022-11-20 00:00:00'),(80,23,13,'2022-11-20 00:00:00'),(81,23,15,'2022-11-20 00:00:00'),(82,24,19,'2022-11-20 00:00:00'),(83,24,13,'2022-11-20 00:00:00'),(84,24,15,'2022-11-20 00:00:00'),(85,25,19,'2022-11-20 00:00:00'),(86,25,13,'2022-11-20 00:00:00'),(87,25,15,'2022-11-20 00:00:00'),(88,3,17,'2022-11-21 00:00:00');
/*!40000 ALTER TABLE `project_tags` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 17:19:38
