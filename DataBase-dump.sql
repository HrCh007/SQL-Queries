-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: office
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Hrithik','Gurgaon'),(2,'Sidharth','Noida'),(3,'Pawan','Delhi'),(4,'Tom','Noida'),(5,'John','Delhi'),(6,'Hank','Gurgaon'),(7,'Tim','Gurgaon'),(8,'Tina','Noida'),(9,'Jack','Delhi'),(10,'Hardik','Gurgaon'),(11,'Ken','Gurgaon'),(12,'Kevin','Noida');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Swipes`
--

DROP TABLE IF EXISTS `Swipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Swipes` (
  `ID` int NOT NULL,
  `Swipe_Date` date DEFAULT NULL,
  `Swipe_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Swipes`
--

LOCK TABLES `Swipes` WRITE;
/*!40000 ALTER TABLE `Swipes` DISABLE KEYS */;
INSERT INTO `Swipes` VALUES (1,'2022-06-20','08:50:45'),(2,'2022-06-20','08:30:45'),(4,'2022-06-20','09:43:45'),(3,'2022-06-20','08:55:45'),(7,'2022-06-20','10:50:45'),(6,'2022-06-20','09:20:45'),(5,'2022-06-20','07:50:45'),(5,'2022-06-20','17:50:45'),(3,'2022-06-20','16:50:45'),(2,'2022-06-20','18:50:45'),(6,'2022-06-20','17:50:45'),(7,'2022-06-20','19:50:45'),(1,'2022-06-20','17:50:45'),(4,'2022-06-20','19:50:45'),(2,'2022-06-21','08:55:45'),(4,'2022-06-21','09:50:45'),(6,'2022-06-21','07:52:45'),(1,'2022-06-21','10:34:45'),(3,'2022-06-21','11:11:45'),(5,'2022-06-21','07:52:45'),(7,'2022-06-21','08:20:45'),(2,'2022-06-21','18:50:45'),(3,'2022-06-21','17:50:45'),(4,'2022-06-21','16:50:45'),(7,'2022-06-21','19:50:45'),(5,'2022-06-21','17:50:45'),(1,'2022-06-21','20:50:45'),(6,'2022-06-21','15:50:45'),(8,'2022-06-22','08:50:45'),(10,'2022-06-22','08:30:45'),(4,'2022-06-22','09:43:45'),(11,'2022-06-22','08:55:45'),(7,'2022-06-22','10:50:45'),(2,'2022-06-22','09:20:45'),(5,'2022-06-22','07:50:45'),(10,'2022-06-22','18:50:45'),(11,'2022-06-22','17:50:45'),(4,'2022-06-22','16:50:45'),(8,'2022-06-22','19:50:45'),(5,'2022-06-22','17:50:45'),(2,'2022-06-22','20:50:45'),(7,'2022-06-22','15:50:45');
/*!40000 ALTER TABLE `Swipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 16:52:42
