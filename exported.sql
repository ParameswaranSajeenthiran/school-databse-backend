-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

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
-- Table structure for table `ALResults`
--

DROP TABLE IF EXISTS `ALResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALResults` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `year` varchar(255) NOT NULL,
  `indexNumber` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `ALResults_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALResults`
--

LOCK TABLES `ALResults` WRITE;
/*!40000 ALTER TABLE `ALResults` DISABLE KEYS */;
INSERT INTO `ALResults` VALUES (1,14,'asd','asd','B','Geography','2023-12-16 17:21:36','2023-12-16 17:21:36'),(2,14,'asd','asd','B','Geography','2023-12-16 17:23:02','2023-12-16 17:23:02'),(3,14,'34','3434','B','Engineering','2023-12-16 17:23:02','2023-12-16 17:23:02'),(4,14,'3434','434','B','Law','2023-12-16 17:23:02','2023-12-16 17:23:02'),(5,14,'asd','asd','B','Geography','2023-12-16 17:23:52','2023-12-16 17:23:52'),(6,14,'34','3434','B','Engineering','2023-12-16 17:23:52','2023-12-16 17:23:52'),(7,14,'3434','434','B','Law','2023-12-16 17:23:52','2023-12-16 17:23:52'),(8,18,'asd','asd','B','Islam','2023-12-16 21:00:54','2023-12-16 21:00:54'),(9,18,'2002','210553j','C','Islam','2023-12-16 21:13:36','2023-12-16 21:13:36'),(10,18,'2002','210553j','C','Islam','2023-12-16 21:13:37','2023-12-16 21:13:37'),(11,20,'asd','asd','A','History','2023-12-16 21:19:34','2023-12-16 21:19:34'),(12,20,'asd','asd','A','History','2023-12-16 21:43:51','2023-12-16 21:43:51'),(13,20,'asd','asd','A','History','2023-12-16 21:46:13','2023-12-16 21:46:13'),(14,20,'asd','asd','A','History','2023-12-16 21:46:13','2023-12-16 21:46:13'),(15,20,'asd','asd','A','History','2023-12-16 21:48:45','2023-12-16 21:48:45'),(16,20,'asd','asd','A','History','2023-12-16 21:48:45','2023-12-16 21:48:45'),(17,20,'asd','asd','A','History','2023-12-16 21:48:45','2023-12-16 21:48:45'),(18,20,'asd','asd','A','History','2023-12-16 21:48:45','2023-12-16 21:48:45'),(21,23,'2001','3232','A','Mathematics','2023-12-16 22:53:24','2023-12-16 22:53:24'),(22,23,'2001','3232','A','Mathematics','2023-12-16 22:54:33','2023-12-16 22:54:33'),(23,23,'2001','344','A','Islam','2023-12-16 22:55:57','2023-12-16 22:55:57'),(61,24,'40','44','B','Geography','2023-12-16 23:35:15','2023-12-16 23:35:15'),(62,24,'33','44','B','Geography','2023-12-16 23:35:15','2023-12-16 23:35:15'),(70,25,'566','566','B','History','2023-12-16 23:47:53','2023-12-16 23:47:53'),(71,2,'asd','asd','A','Hinduism','2023-12-17 18:29:32','2023-12-17 18:29:32'),(72,21,'2001','2012','A','Geography','2023-12-17 18:34:05','2023-12-17 18:34:05'),(73,21,'2001','2012','A','Geography','2023-12-17 18:34:05','2023-12-17 18:34:05'),(74,21,'2001','333','B','Computer Science','2023-12-17 18:34:05','2023-12-17 18:34:05');
/*!40000 ALTER TABLE `ALResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OLResults`
--

DROP TABLE IF EXISTS `OLResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OLResults` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `year` varchar(255) NOT NULL,
  `indexNumber` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `OLResults_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OLResults`
--

LOCK TABLES `OLResults` WRITE;
/*!40000 ALTER TABLE `OLResults` DISABLE KEYS */;
INSERT INTO `OLResults` VALUES (1,14,'asd','asd','B','Economics','2023-12-16 17:23:02','2023-12-16 17:23:02'),(2,14,'asd','asd','B','Economics','2023-12-16 17:23:52','2023-12-16 17:23:52'),(3,14,'23','dew','C','Dance','2023-12-16 17:23:52','2023-12-16 17:23:52'),(4,18,'asd','asd','B','Drama','2023-12-16 21:00:54','2023-12-16 21:00:54'),(5,18,'2001','asd','A','Engineering','2023-12-16 21:13:36','2023-12-16 21:13:36'),(6,18,'2001','asd','A','Engineering','2023-12-16 21:13:37','2023-12-16 21:13:37'),(7,20,'asd','asd','A','Economics','2023-12-16 21:19:34','2023-12-16 21:19:34'),(8,20,'asd','asd','A','Economics','2023-12-16 21:43:51','2023-12-16 21:43:51'),(9,20,'asd','asd','A','Economics','2023-12-16 21:46:13','2023-12-16 21:46:13'),(10,20,'asd','asd','A','Economics','2023-12-16 21:46:13','2023-12-16 21:46:13'),(11,20,'asd','asd','A','Economics','2023-12-16 21:48:45','2023-12-16 21:48:45'),(12,20,'asd','asd','A','Economics','2023-12-16 21:48:45','2023-12-16 21:48:45'),(13,20,'asd','asd','A','Economics','2023-12-16 21:48:45','2023-12-16 21:48:45'),(14,20,'asd','asd','A','Economics','2023-12-16 21:48:45','2023-12-16 21:48:45'),(21,23,'201','232','B','Christaninity','2023-12-16 22:53:24','2023-12-16 22:53:24'),(22,23,'2017','2323','A','Art','2023-12-16 22:53:24','2023-12-16 22:53:24'),(23,23,'201','232','B','Christaninity','2023-12-16 22:54:33','2023-12-16 22:54:33'),(25,23,'4234','323','B','English','2023-12-16 22:55:57','2023-12-16 22:55:57'),(80,24,'333','50','A','Economics','2023-12-16 23:35:15','2023-12-16 23:35:15'),(81,24,'333','33','A','Economics','2023-12-16 23:35:15','2023-12-16 23:35:15'),(82,24,'333','33','A','Economics','2023-12-16 23:35:15','2023-12-16 23:35:15'),(83,24,'34','434','A','Chemistry','2023-12-16 23:35:15','2023-12-16 23:35:15'),(91,25,'565','656','B','Economics','2023-12-16 23:47:53','2023-12-16 23:47:53'),(92,2,'asd','asd','B','Drama','2023-12-17 18:29:32','2023-12-17 18:29:32'),(93,21,'2001','44','B','Drama','2023-12-17 18:34:05','2023-12-17 18:34:05'),(94,21,'asd','asd','A','Drama','2023-12-17 18:34:05','2023-12-17 18:34:05'),(95,21,'2001','asd','B','English','2023-12-17 18:34:05','2023-12-17 18:34:05');
/*!40000 ALTER TABLE `OLResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `birthregistryOffice` varchar(255) DEFAULT NULL,
  `birthCertificateNo` varchar(255) DEFAULT NULL,
  `grade5ScholarshipIndexNo` varchar(255) DEFAULT NULL,
  `achievedmarks` varchar(255) DEFAULT NULL,
  `studentId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'sdfsdf','','','',14,'2023-12-16 17:13:29','2023-12-16 17:13:29'),(2,'sdfsdf','','','',14,'2023-12-16 17:13:58','2023-12-16 17:13:58'),(3,'sdfsdf','','','',14,'2023-12-16 17:14:23','2023-12-16 17:14:23'),(4,'asd','','','',14,'2023-12-16 17:18:10','2023-12-16 17:18:10'),(5,'asd','','','',14,'2023-12-16 17:20:04','2023-12-16 17:20:04'),(6,'asd','','','',14,'2023-12-16 17:21:36','2023-12-16 17:21:36'),(7,'asd','','','',14,'2023-12-16 17:23:02','2023-12-16 17:23:02'),(8,'asd','','','',14,'2023-12-16 17:23:52','2023-12-16 17:23:52'),(9,NULL,NULL,NULL,NULL,18,'2023-12-16 21:00:43','2023-12-16 21:00:43'),(10,NULL,NULL,NULL,NULL,18,'2023-12-16 21:00:54','2023-12-16 21:00:54'),(11,'asd',NULL,NULL,NULL,18,'2023-12-16 21:13:36','2023-12-16 21:13:36'),(12,'asd',NULL,NULL,NULL,18,'2023-12-16 21:13:37','2023-12-16 21:13:37'),(13,'asd',NULL,NULL,NULL,20,'2023-12-16 21:19:34','2023-12-16 21:19:34'),(14,'asd',NULL,'324234',NULL,20,'2023-12-16 21:43:51','2023-12-16 21:43:51'),(15,'as232d','345345','23423235','34',20,'2023-12-16 21:46:13','2023-12-16 21:46:13'),(16,'asd','432423','234','344',20,'2023-12-16 21:48:45','2023-12-16 21:48:45'),(17,'piliyandala','23434','23423','44',21,'2023-12-16 21:51:12','2023-12-16 21:51:12'),(18,'piliyandala','23434','23423','44',21,'2023-12-16 21:51:36','2023-12-16 21:51:36'),(19,'chennanai','42342','325345','54',23,'2023-12-16 22:53:24','2023-12-16 22:53:24'),(20,'chennanai','42342','325345','90',23,'2023-12-16 22:54:33','2023-12-16 22:54:33'),(21,'ert','345','asdf','safd',23,'2023-12-16 22:55:57','2023-12-16 22:55:57'),(22,NULL,NULL,NULL,NULL,24,'2023-12-16 23:14:41','2023-12-16 23:35:15'),(23,NULL,NULL,NULL,NULL,25,'2023-12-16 23:38:28','2023-12-16 23:39:01'),(24,'mumbai','wer','wer','wer',2,'2023-12-17 18:29:32','2023-12-17 18:29:32');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farther`
--

DROP TABLE IF EXISTS `farther`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farther` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fartherFullName` varchar(255) DEFAULT NULL,
  `fartherDateOfBirth` date DEFAULT NULL,
  `fartherTelephoneNumber` varchar(15) DEFAULT NULL,
  `fartherWhatsappNumber` varchar(15) DEFAULT NULL,
  `fartherViberNumber` varchar(15) DEFAULT NULL,
  `fartherEmailAddress` varchar(255) DEFAULT NULL,
  `fartherOccupation` varchar(255) DEFAULT NULL,
  `fartherMonthlyIncome` decimal(10,2) DEFAULT NULL,
  `fartherAddressOfPlaceOfWork` varchar(255) DEFAULT NULL,
  `fartherNicNO` varchar(20) DEFAULT NULL,
  `fartherReasonForNoNIC` varchar(255) DEFAULT NULL,
  `studentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student` (`studentId`),
  CONSTRAINT `fk_student` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farther`
--

LOCK TABLES `farther` WRITE;
/*!40000 ALTER TABLE `farther` DISABLE KEYS */;
/*!40000 ALTER TABLE `farther` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `admissionNo` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `parentIsDivorced` varchar(255) DEFAULT NULL,
  `birthCertificateNo` varchar(255) DEFAULT NULL,
  `birthregistryOffice` varchar(255) DEFAULT NULL,
  `noOfSibilings` int DEFAULT NULL,
  `noOfSibilingWhoStudy` varchar(255) DEFAULT NULL,
  `siblingsStudentId` int DEFAULT NULL,
  `withWhom` varchar(255) DEFAULT NULL,
  `fatherId` varchar(255) DEFAULT NULL,
  `motherId` varchar(255) DEFAULT NULL,
  `guardianId` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `medicalId` varchar(255) DEFAULT NULL,
  `previousSchool` varchar(255) DEFAULT NULL,
  `homeId` varchar(255) DEFAULT NULL,
  `transportId` varchar(255) DEFAULT NULL,
  `scholarshipId` varchar(255) DEFAULT NULL,
  `admissionDate` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `permenantAdress` varchar(255) DEFAULT NULL,
  `GSName` varchar(255) DEFAULT NULL,
  `divisionNo` varchar(255) DEFAULT NULL,
  `divisionalSecretariat` varchar(255) DEFAULT NULL,
  `residentialAdress` varchar(255) DEFAULT NULL,
  `viberNumber` varchar(255) DEFAULT NULL,
  `isFartherAlive` varchar(255) DEFAULT NULL,
  `isMotherAlive` varchar(255) DEFAULT NULL,
  `nameWithInitials` varchar(255) DEFAULT NULL,
  `nameIdentifiedByInitials` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'fghf',NULL,NULL,'44',NULL,'5','fgh','fgh','fghfgh','fgh','1',NULL,NULL,NULL,'10',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-15 23:53:12','2023-12-15 23:53:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Parameswaran Sajeenthiran',NULL,NULL,'210553J',NULL,'11','fgh','0774077017','fghfgh','0772897834','1',NULL,NULL,NULL,'10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-15 23:55:59','2023-12-15 23:55:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'test2',NULL,NULL,'444',NULL,'67','test2','test2','test2test2','test2','1',NULL,NULL,NULL,'20',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 09:23:13','2023-12-16 09:23:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 09:23:16','2023-12-16 09:23:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'test2',NULL,NULL,NULL,NULL,NULL,'test2','test2','test2test2','test2','1',NULL,NULL,NULL,'10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 09:23:40','2023-12-16 09:23:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'test2',NULL,NULL,NULL,NULL,NULL,'test2','test2','test2test2','test2','1',NULL,NULL,NULL,'10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 09:23:40','2023-12-16 09:23:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 12:06:49','2023-12-16 12:06:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'sdfsdf',NULL,NULL,'asd',NULL,'dsafsdf','psajeendran','asdf','sdff','asdf','1',NULL,NULL,NULL,'10',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 12:48:08','2023-12-16 12:48:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,'sdfgdsfg',NULL,'dfg','sdf','sdf','sdfsadff','sdf','1',NULL,NULL,NULL,'30',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 13:00:13','2023-12-16 13:00:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 16:12:02','2023-12-16 16:12:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 16:13:54','2023-12-16 16:13:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 16:14:26','2023-12-16 16:14:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 16:14:29','2023-12-16 16:14:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 16:14:55','2023-12-16 16:14:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com',NULL,NULL,'0774077019','1',NULL,NULL,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 19:47:38','2023-12-16 19:47:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017',NULL,'0774077019','0',NULL,NULL,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 20:03:16','2023-12-16 20:03:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,NULL,'psajeendran@gamil.com','07774077017',NULL,NULL,'0',NULL,NULL,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 20:09:57','2023-12-16 20:09:57',NULL,'Kesbawa','10330','piliyandala',NULL,NULL,'1','1','P.Sharmelee','Parameswaran Sharmelee'),(18,NULL,NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017','09999991',NULL,'0',NULL,NULL,2,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 20:21:37','2023-12-16 20:21:37','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha',NULL,'1','1','P.Sharmelee','Parameswaran Sharmelee'),(19,NULL,NULL,NULL,'210365J',NULL,NULL,'psajeendran@gamil.com','07774077017','09999991',NULL,'0',NULL,NULL,2,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 21:14:31','2023-12-16 21:14:31','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala',NULL,'0772897834','on',NULL,'P.Sharmelee','Parameswaran Sharmelee'),(20,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017','09999991',NULL,'0',NULL,NULL,3,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 21:17:03','2023-12-16 21:17:03','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'P.Sharmelee','Parameswaran Sharmelee'),(21,'Karthegesu Kumthini',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017','09999991',NULL,'0',NULL,NULL,3,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 21:50:29','2023-12-16 22:44:37','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'KUMUTHINI','K. Kumuthini'),(22,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,'11','sharmelee@gamil.com','07774077017','No 210/B/4 Samupakara Mw ,Honnanathara North ,Piliyandala',NULL,'0',NULL,NULL,1,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 22:47:07','2023-12-16 22:47:42','no 210/B/4 samupakara Maawatha','Kesbawa','10330','dehiwala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'KUMUTHINI','Parameswaran Sharmelee'),(23,'Karthegesu Kumthini',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017','No 210/B/4 Samupakara Mw ,Honnanathara North ,Piliyandala',NULL,'0',NULL,NULL,2,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 22:52:36','2023-12-16 22:52:36','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'P.Sharmelee','Parameswaran Sharmelee'),(24,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,NULL,'psajeendran@gamil.com','07774077017','No 210/B/4 Samupakara Mw ,Honnanathara North ,Piliyandala',NULL,'0',NULL,NULL,2,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 23:14:20','2023-12-16 23:14:20','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'P.Sharmelee','Parameswaran Sharmelee'),(25,'Parameswaran Sharmelee',NULL,NULL,'210365J',NULL,'11','psajeendran@gamil.com','07774077017','09999991',NULL,'0',NULL,NULL,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-16 23:38:08','2023-12-16 23:38:08','no 210/B/4 samupakara Maawatha','Kesbawa','10330','piliyandala','no 210/B/4 samupakara Maawatha','0772897834','on',NULL,'KUMUTHINI','K. Kumuthini'),(26,'Mamta Nalalratnam',NULL,NULL,'34534',NULL,'4','psajeendran@gmail.com','0112701017','0774077017',NULL,'0',NULL,NULL,1,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 12:08:24','2023-12-17 12:08:24','no 210/B/4 samupakara mw , Honnanthara North Piliyandala','keshbawa','10300','piliyandala','no 210/B/4 samupakara mw , Honnanthara North Piliyandala','0772897834','on',NULL,'Mamta N','Mamta Nalalratnam'),(88,'Brunthavan SMS','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'772859202',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(89,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(90,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(91,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(92,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(93,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(94,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(95,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(96,'Brunthavan','FEMALE',NULL,'912804127v',NULL,NULL,NULL,'0773662494',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ghj',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(97,'jgjv','MALE',NULL,'988888758v',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','kbkvkjv',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(98,'Nanns','FEMALE',NULL,'986756456v',NULL,NULL,NULL,'077853628',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Jaffna',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'nbn','MALE',NULL,'123456789V',NULL,NULL,'hgjhjj@hghjj.lk','0705535552',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','hbhbmnm',NULL,NULL,'string',NULL,NULL,'TRUE',NULL,NULL,NULL),(100,'Angelika','NOT_SPECIFIED',NULL,'Stephenrex',NULL,NULL,'undefined','Angelika',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Stephenrex',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(101,'Mossi','MALE',NULL,'Kanna',NULL,NULL,NULL,'Mossi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kanna',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(102,'Super ','MALE',NULL,'This',NULL,NULL,NULL,'Super ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','This',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(103,'Sarujan','MALE',NULL,'Steve',NULL,NULL,'undefined','Sarujan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Steve',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(104,'Angelika','FEMALE',NULL,'Stephenrex',NULL,NULL,'undefined','Angelika',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Stephenrex',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(105,'k','MALE',NULL,'v',NULL,NULL,'string','k',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','v',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(106,'Sarujan','MALE',NULL,'Steve',NULL,NULL,'undefined','Sarujan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Steve',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(107,'testing','FEMALE',NULL,'asss',NULL,NULL,'undefined','testing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','asss',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(108,'test','MALE',NULL,'test',NULL,NULL,'undefined','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','test',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(109,'fd','MALE',NULL,'fd',NULL,NULL,'undefined','fd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','fd',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(110,'sdfsdf','FEMALE',NULL,'sdfsdf',NULL,NULL,'undefined','sdfsdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','sdfsdf',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(111,'Kokulan 123','MALE',NULL,'Kanna 123',NULL,NULL,'undefined','Kokulan 123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kanna 123',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(112,'Kokulan 2','MALE',NULL,'Kanna 2',NULL,NULL,'undefined','Kokulan 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kanna 2',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(113,'Kanna 123','MALE',NULL,'Kanna 12',NULL,NULL,'undefined','Kanna 123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kanna 12',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(114,'Name','MALE',NULL,'Hhh',NULL,NULL,'undefined','Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hhh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(115,'Will work','FEMALE',NULL,'Plz work',NULL,NULL,'undefined','Will work',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Plz work',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(116,'Hhh','MALE',NULL,'Kkk',NULL,NULL,'undefined','Hhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kkk',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(117,'Farmer 123','MALE',NULL,'Farmer 456',NULL,NULL,'undefined','Farmer 123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Farmer 456',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(118,'Kanna ko','MALE',NULL,'Kokulan ka',NULL,NULL,'undefined','Kanna ko',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kokulan ka',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(119,'Test farmer add','MALE',NULL,'Farmer add',NULL,NULL,'undefined','Test farmer add',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Farmer add',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(120,'Test test','MALE',NULL,'Test test',NULL,NULL,'undefined','Test test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Test test',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(121,'Test far','MALE',NULL,'Test far',NULL,NULL,'undefined','Test far',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Test far',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(122,'Gg','MALE',NULL,'Tg',NULL,NULL,'undefined','Gg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Tg',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(123,'Mosi','MALE',NULL,'Kannan',NULL,NULL,'undefined','Mosi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kannan',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(124,'Mosikan','MALE',NULL,'Mohan',NULL,NULL,'undefined','Mosikan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Mohan',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(125,'Mosikanan','MALE',NULL,'Gnan',NULL,NULL,'Mohanan','Mosikanan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Gnan',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(126,'Ghh','MALE',NULL,'Kkk',NULL,NULL,'undefined','Ghh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kkk',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(127,'Ghh','MALE',NULL,'Kkk',NULL,NULL,'undefined','Ghh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Kkk',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(128,'Kokulan updated','FEMALE',NULL,'Ln kk',NULL,NULL,'undefined','Kokulan updated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Ln kk',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(129,'Gghh','FEMALE',NULL,'Jjhhh',NULL,NULL,'undefined','Gghh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Jjhhh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(130,'Hhfff','FEMALE',NULL,'Lk',NULL,NULL,'undefined','Hhfff',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Lk',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(131,'Test nnm','MALE',NULL,'Test hh',NULL,NULL,'undefined','Test nnm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Test hh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(132,'Test mem','FEMALE',NULL,'Mem',NULL,NULL,'undefined','Test mem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Mem',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(133,'Test mem 2','MALE',NULL,'Mem 2',NULL,NULL,'undefined','Test mem 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Mem 2',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(134,'Fg','MALE',NULL,'Hg',NULL,NULL,'undefined','Fg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hg',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(135,'Non hh farmer','MALE',NULL,'No hh',NULL,NULL,'undefined','Non hh farmer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','No hh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(136,'Test 123','MALE',NULL,'123 test',NULL,NULL,'undefined','Test 123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','123 test',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(137,'Hh','MALE',NULL,'Hh',NULL,NULL,'undefined','Hh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(138,'Hh','FEMALE',NULL,'Gg',NULL,NULL,'undefined','Hh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Gg',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(139,'sss','NOT_SPECIFIED',NULL,'Angelika Stephenrex',NULL,NULL,'undefined','sss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Angelika Stephenrex',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(140,'Hhh','NOT_SPECIFIED',NULL,'Hhh',NULL,NULL,'undefined','Hhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hhh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(141,'Hh','MALE',NULL,'Hh',NULL,NULL,'undefined','Hh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hh',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(142,'Hh 1','MALE',NULL,'Hh 2',NULL,NULL,'undefined','Hh 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','Hh 2',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(143,'as','FEMALE',NULL,'2323534323333',NULL,NULL,'hshjjsal@jdjfsk.com','0777777777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(144,'test11','FEMALE',NULL,'4354',NULL,NULL,'rtjserj','jrtjrt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(145,'as','FEMALE',NULL,'2323534',NULL,NULL,'rtjserj','jrtjrt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(146,'test11','FEMALE',NULL,'4354',NULL,NULL,'rtjserj','jrtjrt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(147,'as','FEMALE',NULL,'2323534',NULL,NULL,'adharthaer','jrtjrt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL),(148,'test11','FEMALE',NULL,'200033800187',NULL,NULL,'tesa11@gmail.com','0241258369',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-17 15:17:56','2023-12-17 15:17:56','er',NULL,NULL,NULL,NULL,NULL,'TRUE',NULL,NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 20:52:10