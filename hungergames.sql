-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hunger_games
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `broadcasts`
--

DROP TABLE IF EXISTS `broadcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broadcasts` (
  `TribID` char(9) NOT NULL,
  `HostName` varchar(45) NOT NULL,
  `HostDOB` date NOT NULL,
  PRIMARY KEY (`TribID`,`HostName`,`HostDOB`),
  UNIQUE KEY `TribID_UNIQUE` (`TribID`),
  KEY `HostDOB` (`HostDOB`),
  KEY `HostName` (`HostName`),
  CONSTRAINT `broadcasts_ibfk_1` FOREIGN KEY (`HostDOB`) REFERENCES `tv_hosts` (`DOB`),
  CONSTRAINT `broadcasts_ibfk_2` FOREIGN KEY (`HostName`) REFERENCES `tv_hosts` (`Name`),
  CONSTRAINT `broadcasts_ibfk_3` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadcasts`
--

LOCK TABLES `broadcasts` WRITE;
/*!40000 ALTER TABLE `broadcasts` DISABLE KEYS */;
INSERT INTO `broadcasts` VALUES ('123245678','Jango','2002-09-17'),('123456789','Jango','2002-09-17'),('239097392','Jango','2002-09-17'),('987654321','Jango','2002-09-17'),('122345678','Fritz','2007-10-20'),('133557079','Fritz','2007-10-20'),('320547698','Fritz','2007-10-20'),('783009823','Fritz','2007-10-20'),('907060302','Fritz','2007-10-20');
/*!40000 ALTER TABLE `broadcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `Mayor` varchar(45) NOT NULL,
  `HeadPeaceKeeper` varchar(45) NOT NULL,
  `MainExport` varchar(45) NOT NULL,
  `Population` int NOT NULL,
  `NumPeaceKeepers` int NOT NULL,
  PRIMARY KEY (`Mayor`),
  UNIQUE KEY `Mayor_UNIQUE` (`Mayor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('Jose','Ralph','Coal',1000,670),('Ronald','Donald','Wheat',890,709),('Sanders','John','Wood',1020,1000),('Toad','Joe','Electricty',1202,980),('Wendy','George','Textiles',934,840);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift`
--

DROP TABLE IF EXISTS `gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift` (
  `ID` char(4) NOT NULL,
  `Price` int DEFAULT NULL,
  `Mayor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `gift_idx` (`Mayor`),
  CONSTRAINT `gift_ibfk_1` FOREIGN KEY (`Mayor`) REFERENCES `district` (`Mayor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift`
--

LOCK TABLES `gift` WRITE;
/*!40000 ALTER TABLE `gift` DISABLE KEYS */;
INSERT INTO `gift` VALUES ('1989',20,'Ronald'),('7029',70,'Sanders'),('7040',80,'Toad'),('8978',230,'Wendy'),('980',100,'Ronald');
/*!40000 ALTER TABLE `gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guide` (
  `Name` varchar(45) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`Name`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guide`
--

LOCK TABLES `guide` WRITE;
/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` VALUES ('Liam','2014-11-28','F'),('Linda','1997-12-10','F'),('Peter','1983-06-23','M'),('Randy','1989-08-09','M'),('Ted','1995-03-21','M');
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `GameWon` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`GameWon`),
  UNIQUE KEY `GameWon_UNIQUE` (`GameWon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (11,'Samuel','M',40),(12,'Morgan','M',58),(18,'Moana','F',28),(20,'Jackson','M',30),(21,'Maria','F',25);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentors`
--

DROP TABLE IF EXISTS `mentors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentors` (
  `GameWon` int NOT NULL,
  `TribID` varchar(45) NOT NULL,
  PRIMARY KEY (`GameWon`,`TribID`),
  KEY `TribID` (`TribID`),
  CONSTRAINT `mentors_ibfk_1` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`),
  CONSTRAINT `mentors_ibfk_2` FOREIGN KEY (`GameWon`) REFERENCES `mentor` (`GameWon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentors`
--

LOCK TABLES `mentors` WRITE;
/*!40000 ALTER TABLE `mentors` DISABLE KEYS */;
INSERT INTO `mentors` VALUES (11,'122345678'),(20,'123245678'),(12,'123456789'),(12,'133557079'),(18,'239097392'),(18,'320547698'),(20,'783009823'),(21,'907060302'),(11,'987654321');
/*!40000 ALTER TABLE `mentors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prep_team`
--

DROP TABLE IF EXISTS `prep_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prep_team` (
  `Headstylists` varchar(45) NOT NULL,
  `Beauty` varchar(45) DEFAULT NULL,
  `Make-Up` varchar(45) DEFAULT NULL,
  `HairStylists` varchar(45) DEFAULT NULL,
  `TribID` char(9) NOT NULL,
  PRIMARY KEY (`Headstylists`,`TribID`),
  KEY `TribID` (`TribID`),
  CONSTRAINT `prep_team_ibfk_1` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prep_team`
--

LOCK TABLES `prep_team` WRITE;
/*!40000 ALTER TABLE `prep_team` DISABLE KEYS */;
INSERT INTO `prep_team` VALUES ('Aiden','Emily','Mark','Braxton','907060302'),('Ava','Alyse','Henry','Pao','122345678'),('Ethan','Derrick','Eliza','Oscar','133557079'),('Harper','Daniel','Zeke','Yanet','239097392'),('Isabella','Ashley','Mason','Olivia','987654321'),('James','William','Benji','Jefferey','783009823'),('Lucas','Grace','Frank','Edgar','123245678'),('Mia','Jin','Micheal','Rosa','320547698'),('Noah','Christina','Sophia','Elijah','123456789');
/*!40000 ALTER TABLE `prep_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receives`
--

DROP TABLE IF EXISTS `receives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receives` (
  `TribID` char(9) NOT NULL,
  `GiftID` char(4) NOT NULL,
  PRIMARY KEY (`TribID`,`GiftID`),
  KEY `GiftID` (`GiftID`),
  CONSTRAINT `receives_ibfk_1` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`),
  CONSTRAINT `receives_ibfk_2` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receives`
--

LOCK TABLES `receives` WRITE;
/*!40000 ALTER TABLE `receives` DISABLE KEYS */;
INSERT INTO `receives` VALUES ('987654321','1989'),('123456789','7029'),('239097392','7040'),('783009823','8978'),('122345678','980');
/*!40000 ALTER TABLE `receives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillset`
--

DROP TABLE IF EXISTS `skillset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillset` (
  `TribID` char(9) NOT NULL,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`TribID`,`skill`),
  CONSTRAINT `skillset_ibfk_1` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillset`
--

LOCK TABLES `skillset` WRITE;
/*!40000 ALTER TABLE `skillset` DISABLE KEYS */;
INSERT INTO `skillset` VALUES ('122345678','Runner'),('123245678','Knife'),('123456789','Archery'),('133557079','Smart'),('239097392','Fencing'),('320547698','Creative'),('783009823','Runner'),('907060302','Martial Arts'),('987654321','Camouflage');
/*!40000 ALTER TABLE `skillset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `Name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`Name`,`DOB`),
  KEY `idx_dob` (`DOB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES ('Winne','2009-01-05'),('Kyro','2015-09-08'),('Miller','2019-02-14'),('Wayne','2034-06-04'),('Willow','2056-08-30');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supports` (
  `name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `TribID` char(9) NOT NULL,
  PRIMARY KEY (`name`,`DOB`,`TribID`),
  KEY `dobKEY` (`DOB`),
  KEY `TribID` (`TribID`),
  CONSTRAINT `supports_ibfk_1` FOREIGN KEY (`TribID`) REFERENCES `tribute` (`TribID`),
  CONSTRAINT `supports_ibfk_2` FOREIGN KEY (`DOB`) REFERENCES `sponsor` (`DOB`),
  CONSTRAINT `supports_ibfk_3` FOREIGN KEY (`name`) REFERENCES `sponsor` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
INSERT INTO `supports` VALUES ('Winne','2009-01-05','133557079'),('Kyro','2015-09-08','320547698'),('Miller','2019-02-14','239097392'),('Wayne','2034-06-04','907060302'),('Willow','2056-08-30','783009823');
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tribute`
--

DROP TABLE IF EXISTS `tribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tribute` (
  `TribID` char(9) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Sex` char(6) DEFAULT NULL,
  `popScore` int DEFAULT NULL,
  `TrainScore` int DEFAULT NULL,
  `KillCount` int DEFAULT NULL,
  `Mayor` varchar(45) NOT NULL,
  `GuideName` varchar(45) NOT NULL,
  PRIMARY KEY (`TribID`),
  KEY `GuideName` (`GuideName`),
  KEY `Mayor` (`Mayor`),
  CONSTRAINT `tribute_ibfk_1` FOREIGN KEY (`GuideName`) REFERENCES `guide` (`Name`),
  CONSTRAINT `tribute_ibfk_2` FOREIGN KEY (`Mayor`) REFERENCES `district` (`Mayor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tribute`
--

LOCK TABLES `tribute` WRITE;
/*!40000 ALTER TABLE `tribute` DISABLE KEYS */;
INSERT INTO `tribute` VALUES ('122345678','2003-04-25',15,'M',5,2,3,'Toad','Liam'),('123245678','1999-12-05',10,'F',3,5,5,'Toad','Liam'),('123456789','1996-11-08',12,'F',10,8,1,'Jose','Randy'),('133557079','2001-05-28',13,'M',8,7,2,'Ronald','Linda'),('239097392','2019-05-11',7,'F',6,6,0,'Wendy','Peter'),('320547698','2000-08-27',17,'M',6,5,0,'Jose','Randy'),('783009823','2010-01-23',12,'F',6,9,0,'Sanders','Ted'),('907060302','1989-12-13',11,'M',9,4,6,'Wendy','Peter'),('987654321','2004-08-12',9,'F',9,9,0,'Ronald','Linda');
/*!40000 ALTER TABLE `tribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_hosts`
--

DROP TABLE IF EXISTS `tv_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_hosts` (
  `Name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Interviewteam` varchar(45) DEFAULT NULL,
  `YearsWorked` int DEFAULT NULL,
  PRIMARY KEY (`Name`,`DOB`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  UNIQUE KEY `DOB_UNIQUE` (`DOB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_hosts`
--

LOCK TABLES `tv_hosts` WRITE;
/*!40000 ALTER TABLE `tv_hosts` DISABLE KEYS */;
INSERT INTO `tv_hosts` VALUES ('Fritz','2007-10-20','Sparkles',8),('Jango','2002-09-17','Rockstars',4);
/*!40000 ALTER TABLE `tv_hosts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 18:39:51
