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
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `nature_of_business` enum('LARGE_SCALE','MEDIUM_SCALE','SMALL_SCALE') DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'TechMoulds','Mumbai','SMALL_SCALE','http://techmoulds.com'),(2,'3D Innovations','Bangalore','SMALL_SCALE','http://3dinnovations.com'),(3,'CastCraft','Chennai','MEDIUM_SCALE','http://castcraft.com'),(4,'CoatMasters','Delhi','LARGE_SCALE','http://coatmasters.com'),(5,'ProtoPrint','Pune','SMALL_SCALE','http://protoprint.com'),(6,'MegaCasting','Hyderabad','LARGE_SCALE','http://megacasting.com'),(7,'UrbanMoulds','Mumbai','MEDIUM_SCALE','http://urbanmoulds.com'),(8,'PrecisionCoats','Bangalore','MEDIUM_SCALE','http://precisioncoats.com'),(9,'ABC Manufacturing','Mumbai','SMALL_SCALE','http://abcmanufacturing.com'),(10,'XYZ Innovations','Mumbai','MEDIUM_SCALE','http://xyzinnovations.com'),(11,'Global Castings','USA','LARGE_SCALE','http://globalcastings.com'),(12,'Precision Coaters','Germany','SMALL_SCALE','http://precisioncoaters.com'),(13,'Tech 3D Prints','China','MEDIUM_SCALE','http://tech3dprints.com'),(14,'Innovative Castings','Mumbai','LARGE_SCALE','http://innovativecastings.com'),(15,'Mould Masters','Brazil','SMALL_SCALE','http://mouldmasters.com'),(16,'Coat & Mould','Italy','MEDIUM_SCALE','http://coatandmould.com'),(17,'EcoMould Ltd.','Mumbai','SMALL_SCALE','http://ecomould.com'),(18,'GreenTech Co.','Mumbai','SMALL_SCALE','http://greentech.com'),(19,'MoldMasters Inc.','Mumbai','SMALL_SCALE','http://moldmasters.com'),(20,'IndusCasting Pvt. Ltd.','Mumbai','SMALL_SCALE','http://induscasting.com'),(21,'CastPro Solutions','Mumbai','SMALL_SCALE','http://castprosolutions.com'),(22,'MicroMould Tech','Mumbai','SMALL_SCALE','http://micromouldtech.com'),(23,'India CastWorks','Mumbai','SMALL_SCALE','http://indiacastworks.com'),(24,'PrecisionMoulds','Mumbai','SMALL_SCALE','http://precisionmoulds.com'),(25,'CastPlus Industries','Mumbai','SMALL_SCALE','http://castplusindustries.com'),(26,'EcoCast Technologies','Mumbai','SMALL_SCALE','http://ecocasttech.com');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
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
