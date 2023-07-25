-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ebookconnection
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi2xp4n4k5ui6915q4jrfx9aq4` (`book_id`),
  KEY `FKhom18uhrx4lj8p8ebqdmkieos` (`user_id`),
  CONSTRAINT `FKhom18uhrx4lj8p8ebqdmkieos` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKi2xp4n4k5ui6915q4jrfx9aq4` FOREIGN KEY (`book_id`) REFERENCES `book_dtls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (1,'2023-04-02','ORD-480','Card Payment',3,'Out for delivery',2,2),(2,'2023-04-02','ORD-61','Card Payment',1,'Order Processing',4,2),(3,'2023-04-07','ORD-249','COD',1,'Order Processing',7,2),(4,'2023-05-25','ORD-939','Card Payment',1,'Order Processing',2,7);
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 10:05:50
