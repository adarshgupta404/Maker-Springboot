-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nsecdemo
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
-- Table structure for table `supplier_manufacturing_processes`
--

DROP TABLE IF EXISTS `supplier_manufacturing_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_manufacturing_processes` (
  `supplier_supplier_id` bigint NOT NULL,
  `manufacturing_processes` enum('CASTING','COATING','MOULDING','THREE_D_PRINTING') DEFAULT NULL,
  KEY `FKrym6tfcm8hrg66jd1wd9stoea` (`supplier_supplier_id`),
  CONSTRAINT `FKrym6tfcm8hrg66jd1wd9stoea` FOREIGN KEY (`supplier_supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_manufacturing_processes`
--

LOCK TABLES `supplier_manufacturing_processes` WRITE;
/*!40000 ALTER TABLE `supplier_manufacturing_processes` DISABLE KEYS */;
INSERT INTO `supplier_manufacturing_processes` VALUES (2,'THREE_D_PRINTING'),(1,'MOULDING'),(3,'CASTING'),(4,'COATING'),(5,'THREE_D_PRINTING'),(6,'CASTING'),(7,'MOULDING'),(7,'COATING'),(8,'COATING'),(8,'MOULDING'),(9,'MOULDING'),(9,'CASTING'),(10,'THREE_D_PRINTING'),(10,'COATING'),(11,'CASTING'),(11,'MOULDING'),(12,'COATING'),(12,'MOULDING'),(13,'THREE_D_PRINTING'),(13,'CASTING'),(14,'CASTING'),(14,'THREE_D_PRINTING'),(15,'MOULDING'),(16,'COATING'),(17,'CASTING'),(18,'CASTING'),(19,'CASTING'),(20,'CASTING'),(21,'CASTING'),(22,'CASTING'),(23,'CASTING'),(24,'CASTING'),(25,'CASTING'),(26,'CASTING');
/*!40000 ALTER TABLE `supplier_manufacturing_processes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-22  1:23:43
