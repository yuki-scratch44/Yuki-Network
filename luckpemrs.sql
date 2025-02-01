Enter password: 
-- MySQL dump 10.13  Distrib 9.2.0, for Linux (x86_64)
--
-- Host: localhost    Database: luckpemrs
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `luckperms_actions`
--

DROP TABLE IF EXISTS `luckperms_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` bigint NOT NULL,
  `actor_uuid` varchar(36) NOT NULL,
  `actor_name` varchar(100) NOT NULL,
  `type` char(1) NOT NULL,
  `acted_uuid` varchar(36) NOT NULL,
  `acted_name` varchar(36) NOT NULL,
  `action` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_actions`
--

LOCK TABLES `luckperms_actions` WRITE;
/*!40000 ALTER TABLE `luckperms_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_group_permissions`
--

DROP TABLE IF EXISTS `luckperms_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `luckperms_group_permissions_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_group_permissions`
--

LOCK TABLES `luckperms_group_permissions` WRITE;
/*!40000 ALTER TABLE `luckperms_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_groups`
--

DROP TABLE IF EXISTS `luckperms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_groups` (
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_groups`
--

LOCK TABLES `luckperms_groups` WRITE;
/*!40000 ALTER TABLE `luckperms_groups` DISABLE KEYS */;
INSERT INTO `luckperms_groups` VALUES ('default');
/*!40000 ALTER TABLE `luckperms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_messenger`
--

DROP TABLE IF EXISTS `luckperms_messenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_messenger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_messenger`
--

LOCK TABLES `luckperms_messenger` WRITE;
/*!40000 ALTER TABLE `luckperms_messenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_messenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_players`
--

DROP TABLE IF EXISTS `luckperms_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_players` (
  `uuid` varchar(36) NOT NULL,
  `username` varchar(16) NOT NULL,
  `primary_group` varchar(36) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `luckperms_players_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_players`
--

LOCK TABLES `luckperms_players` WRITE;
/*!40000 ALTER TABLE `luckperms_players` DISABLE KEYS */;
INSERT INTO `luckperms_players` VALUES ('52324a8a-b387-333d-b752-d3077aee73e2','yukiscratch44','default');
/*!40000 ALTER TABLE `luckperms_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_tracks`
--

DROP TABLE IF EXISTS `luckperms_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_tracks` (
  `name` varchar(36) NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_tracks`
--

LOCK TABLES `luckperms_tracks` WRITE;
/*!40000 ALTER TABLE `luckperms_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_user_permissions`
--

DROP TABLE IF EXISTS `luckperms_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luckperms_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `luckperms_user_permissions_uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_user_permissions`
--

LOCK TABLES `luckperms_user_permissions` WRITE;
/*!40000 ALTER TABLE `luckperms_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-01  2:22:47
