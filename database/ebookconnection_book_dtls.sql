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
-- Table structure for table `book_dtls`
--

DROP TABLE IF EXISTS `book_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dtls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `isbn_no` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3i2nn4lvhl659d1xgwe7roobm` (`category_id`),
  CONSTRAINT `FK3i2nn4lvhl659d1xgwe7roobm` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dtls`
--

LOCK TABLES `book_dtls` WRITE;
/*!40000 ALTER TABLE `book_dtls` DISABLE KEYS */;
INSERT INTO `book_dtls` VALUES (1,'Doug Lowe','Java All In One','If you\'re new to Java, an all-in-one book can be a great way to get started. Such books typically cover all the major aspects of the language, from the basics of programming to more advanced topics like object-oriented programming','java_all_in_one.jpg','9876543657','English',2130,1),(2,'Yashwant Kanetkar','Let Us Java','\"Let Us Java\" is a book that provides a comprehensive guide to the Java programming language. The book is aimed at beginners who want to learn Java from scratch and is widely regarded as one of the best books for learning Java.','java_let_us.jpg','2345678369','English',1200,1),(3,'Mark Loy ,Patric and Daniel','Learning Java','Learning Java\" is a book written by Patrick Niemeyer and Daniel Leuck that serves as a comprehensive guide to the Java programming language. The book is aimed at beginners who have little or no experience in programming and want to learn Java from scratch','learn_java.jpeg','5654356537','English',2100,1),(4,'Joyce Farrell','Java Programming','Java Programming\" is a book written by Joyce Farrell that provides a comprehensive guide to Java programming language. The book is aimed at beginners who want to learn Java from scratch and is widely regarded as one of the best books for learning Java','java_programming.jpg','3456765429','English',900,1),(5,' Cay S. Horstmann and Gary Cornell','Core java','\"Core Java\" is a book written by Cay S. Horstmann and Gary Cornell that provides a comprehensive guide to Java programming language. The book is aimed at both beginners and experienced programmers who want to gain a deeper understanding of Java.','java_book.jpeg','7654345638','English',750,1),(6,'Cay S. Horstmann,Gary Cornell','The Computing Universe','\"Core Java\" is a book written by Cay S. Horstmann and Gary Cornell that provides a comprehensive guide to Java programming language. The book is aimed at both beginners and experienced programmers who want to gain a deeper understanding of Java.','the_computing_universe.jpg','7654567376','English',1200,2),(7,'Satish Sahani','Introduction to Computers','\"Introduction to Computers\" is a book written by Peter Norton that provides a comprehensive introduction to the world of computers. The book is aimed at beginners who want to learn about computers and their applications.','intro_to_computers.jpg','6545676546','English',1100,2),(8,'christopher lampton','Programming in BASIC','\"Programming in BASIC\" is a book that provides an introduction to computer programming using the BASIC language. The book is aimed at beginners who want to learn programming concepts and apply them to simple projects.','programming_in_basic.jpg','6437865438','English',1200,2);
/*!40000 ALTER TABLE `book_dtls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 10:05:49
