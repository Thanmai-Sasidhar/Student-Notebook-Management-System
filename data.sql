-- MySQL dump 10.13  Distrib 9.6.0, for macos26.4 (arm64)
--
-- Host: localhost    Database: snm
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '29de4a76-5990-11f1-a5c4-26bc400c7c4a:1-226';

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `fileid` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `filedata` longblob NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (2,'range.py',_binary '#range()\n\n#start-stop-step\n\'\'\'\nfor i in range(10):\n    print(i)\n\nfor i in range(5,15):\n    print(i)\n\'\'\'\n\n#TASK 1\n\n\'\'\'\nfor i in range(0,50,5):\n    print(i,end=\" \")\nprint()  \nfor i in range(2,20,2):\n    print(i,end=\" \")\nprint()    \nfor i in range(3,30,3):\n    print(i,end=\" \")\n\'\'\'\n\n#TASK 2\n\'\'\'\nwhile True:\n    marks=int(input(\"Enter the marks:\"))\n    if marks in range(91,101):\n        print(\"GRADE A\")\n    elif marks in range(81,91):\n        print(\"GRADE B\")\n    elif marks in range(71,81):\n        print(\"GRADE C\")\n    elif marks in range(50,71):\n        print(\"GRADE D\")\n    else:\n        print(\"Fail\")\n\'\'\'\n\n##Difference between break, continue and pass\n\n#break is used to terminate the entir loop\n\n#continue is used to skip the current iteration and rest of the code will continue\n\n#pass is a null statement as it does nothing but syntactically we need.\n\n#break\n\'\'\'\na=10\nwhile a<10:\n    print(a)\n\na=10\nwhile a>1:\n    print(a)\n    a=a-1\n    if a==5:\n        break\n\na=10\nwhile a>1:\n    a=a-1\n    if a==5:\n        break\n    print(a)\n\nfor i in range(20):\n    print(i)\n\nfor i in range(11):\n    if i==11:\n        break\n    print(i)\n\n\'\'\'\n#continue\n\'\'\'\na=30\nwhile a>5:\n    print(a)\n    a=a=1\n\'\'\'\n\n\'\'\'\na=30\nwhile a>5:\n    a=a-1           \n    print(a)\n\'\'\'\n\'\'\'\na=30\nwhile a>5:\n    print(a)\n    a=a-1\n    if a==15:\n        continue\n\'\'\'\n\'\'\'\na=30\nwhile a>5:\n    if a==15:\n        continue\n    print(a)\n    a=a-1\n\'\'\'\n\'\'\'\na=30\nwhile a>5:\n    a=a-1\n    if a==15:\n        continue\n    print(a)\n   \n\'\'\'\n#pass\n\'\'\'\na=30\nwhile a>20:\n    print(a)\n    a=a-1\n\'\'\'\n\'\'\'\na=30\nwhile a>10:\n    print(a)\n    a=a-1\n    if a==15:\n        pass\n\'\'\'        \n    \n\n\n\n\n\n\n\n\n\n\n\n\n','ATSASIDHAR@GMAIL.COM','2026-06-30 10:11:04');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `fileid` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `filedata` longblob,
  `useremail` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `note_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Me ','Hi , I\'m Thanmai Sasidhar Avanigadda','atsasidhar@gmail.com','2026-06-27 09:15:10'),(3,'range.py','File uploaded with ID: 1','ATSASIDHAR@GMAIL.COM','2026-06-30 10:09:25'),(4,'range.py','File uploaded with ID: 2','ATSASIDHAR@GMAIL.COM','2026-06-30 10:11:04');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES (5,'Thanmai Sasidhar Avanigadda','atsasidhar@gmail.com','123','7989278659');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
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

-- Dump completed on 2026-07-03 14:24:58
